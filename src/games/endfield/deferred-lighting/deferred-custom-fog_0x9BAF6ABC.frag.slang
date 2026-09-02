#include "../shared.h"
// Endfield 1.5 Vulkan shader 0x9BAF6ABC, migrated from 1.4.4 shader 0xE1F7D5C5.
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

static float3 _407 = (float3)0;
static float _408 = (float)0;
static float3 _409 = (float3)0;
static float _411 = (float)0;
static uint _412 = (uint)0;

static const int2 _364[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _365[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float _48_m34 : packoffset(c13);
    float _48_m35 : packoffset(c13.y);
    float _48_m36 : packoffset(c13.z);
    float _48_m37 : packoffset(c13.w);
    float4 _48_m38 : packoffset(c14);
    float4 _48_m39 : packoffset(c15);
    float _48_m40 : packoffset(c16);
    float _48_m41 : packoffset(c16.y);
    float _48_m42 : packoffset(c16.z);
    float _48_m43 : packoffset(c16.w);
    float _48_m44 : packoffset(c17);
    float _48_m45 : packoffset(c17.y);
    float _48_m46 : packoffset(c17.z);
    float _48_m47 : packoffset(c17.w);
    float _48_m48 : packoffset(c18);
    float _48_m49 : packoffset(c18.y);
    float _48_m50 : packoffset(c18.z);
    float _48_m51 : packoffset(c18.w);
    float _48_m52 : packoffset(c19);
    float _48_m53 : packoffset(c19.y);
    float _48_m54 : packoffset(c19.z);
    float _48_m55 : packoffset(c19.w);
    float4 _48_m56 : packoffset(c20);
    float4 _48_m57 : packoffset(c21);
    float4 _48_m58 : packoffset(c22);
    float4 _48_m59 : packoffset(c23);
    float4 _48_m60 : packoffset(c24);
    float4 _48_m61 : packoffset(c25);
    float2 _48_m62 : packoffset(c26);
    float2 _48_m63 : packoffset(c26.z);
    float _48_m64 : packoffset(c27);
    float _48_m65 : packoffset(c27.y);
    float _48_m66 : packoffset(c27.z);
    float _48_m67 : packoffset(c27.w);
    float4 _48_m68 : packoffset(c28);
    float4 _48_m69 : packoffset(c29);
    float4 _48_m70 : packoffset(c30);
    float4 _48_m71 : packoffset(c31);
    float _48_m72 : packoffset(c32);
    float _48_m73 : packoffset(c32.y);
    float _48_m74 : packoffset(c32.z);
    float _48_m75 : packoffset(c32.w);
    float _48_m76 : packoffset(c33);
    float _48_m77 : packoffset(c33.y);
    float _48_m78 : packoffset(c33.z);
    float _48_m79 : packoffset(c33.w);
};

[[vk::binding(50, 0)]]
cbuffer _61_62 : register(b50)
{
    float4 _62_m0[32] : packoffset(c0);
    column_major float4x4 _62_m1[32] : packoffset(c32);
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
[[vk::binding(39, 0)]] Texture2D<float4> _49 : register(t39);
[[vk::binding(8, 1)]] Texture2D<float4> _50 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _51 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _52 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _53 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _55 : register(t45);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3);
[[vk::binding(6, 1)]] Texture2D<float4> _58 : register(t6);
[[vk::binding(1, 1)]] SamplerState _59 : register(s1);
[[vk::binding(29, 0)]] Texture2D<float4> _60 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _65 : register(t36);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _3 = (float2)0;
static float3 _4 = (float3)0;
static float3 _5 = (float3)0;
static float4 _6 = (float4)0;
static float2 _7 = (float2)0;
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
    [[vk::location(4)]] float2 _7 : TEXCOORD4;
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
    float _426 = 1.0f / gl_FragCoord.w;
    float3 _441 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _442 = dot(_441, _441);
    float _444 = rsqrt(max(_442, 9.9999999392252902907785028219223e-09f));
    float3 _445 = _441 * _444;
    float _446 = _442 * _444;
    uint _449 = asuint(_22_m0[_12]._m2.x);
    bool _454 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _467;
    float4 _468;
    if (_454)
    {
        _467 = asfloat(_31_Load4((_449 + 2u) * 16 + 0));
        _468 = asfloat(_31_Load4(_449 * 16 + 0));
    }
    else
    {
        _467 = _22_m0[_12]._m0[2];
        _468 = _22_m0[_12]._m0[0];
    }
    float4 _480 = _50.SampleBias(_25, _3 + (_48_m62 * _19_m75.w), _19_m16);
    float3 _485 = _480.xyz * _48_m24.xyz;
    float4 _489 = _51.SampleBias(_25, _3, _19_m16);
    float _490 = _489.x;
    float _492 = _489.z;
    float _494 = 1.0f - _489.w;
    float3 _503 = _485 * _48_m18;
    float3 _507 = lerp(dot(_503, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _503, _48_m19.xxx);
    float4 _511 = _52.SampleBias(_25, _3, _19_m16);
    _511.w = _511.w * _511.x;
    float2 _520 = (_511.wy * 2.0f) - 1.0f.xx;
    float3 _521 = float3(_520.x, _520.y, _409.z);
    float2 _522 = _520.xy;
    _521.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_522, _522), 0.0f, 1.0f)));
    float2 _530 = _521.xy * _48_m3;
    float4 _539 = _53.SampleBias(_25, _3 + (_48_m63 * _19_m75.w), _19_m16);
    float3 _569 = _4 + _17_m11.xyz;
    float3 _573 = _569 - float3(_468.w, _411, _467.w);
    _573.y = 6.103515625e-05f;
    float3 _576 = normalize(_573);
    float3 _584 = _5 * 1.0f;
    float3 _586 = mul(float3(_530.x, _530.y, _521.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _584));
    float _595 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _596 = (_586 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_586, _586)))) * _595;
    float3 _597 = normalize(_5) * _595;
    uint2 _599 = uint2(gl_FragCoord.xy);
    float3 _609 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float4 _623 = float4(_411, _411, _411, float((asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _624 = _623.w;
    float _632 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1126;
    float3 _1127;
    float3 _1128;
    float _1129;
    if (_19_m80.y < 0.5f)
    {
        float3 _650 = _569 - (_19_m105.xyz + (_609 * (-_19_m107.w)));
        float _664 = max(clamp((max(abs(_650.x), abs(_650.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_650.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _966;
        float4 _967;
        float4 _968;
        float _969;
        float _970;
        if ((_19_m105.w != 0.0f) && (_664 < 1.0f))
        {
            float3 _677 = _569 - (_19_m105.xyz + (_609 * (-_19_m107.y)));
            float _691 = max(clamp((max(abs(_677.x), abs(_677.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_677.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _767;
            float4 _768;
            float4 _769;
            float4 _770;
            if (_691 < 1.0f)
            {
                float3 _700 = ((_569 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _702 = _700 - floor(_700);
                float4 _706 = _41.SampleLevel(_25, _702, 0.0f);
                float _707 = 1.0f - _691;
                float _711 = _19_m106.y * 0.5f;
                float _716 = _702.x;
                float _717 = clamp(_702.y, _711, 1.0f - _711) * 0.3333333432674407958984375f;
                float _718 = _702.z;
                float4 _721 = _42.SampleLevel(_24, float3(_716, _717, _718), 0.0f);
                float _737 = _706.x;
                float _747 = _706.y;
                float _757 = _706.z;
                _767 = _664 + (_721.w * _707);
                _768 = float4(((_42.SampleLevel(_24, float3(_716, _717 + 0.666666686534881591796875f, _718), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _757, _757) * _707;
                _769 = float4(((_42.SampleLevel(_24, float3(_716, _717 + 0.3333333432674407958984375f, _718), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _747, _747) * _707;
                _770 = float4(((_721.xyz * 4.0f) - 2.0f.xxx) * _737, _737) * _707;
            }
            else
            {
                _767 = _664;
                _768 = 0.0f.xxxx;
                _769 = 0.0f.xxxx;
                _770 = 0.0f.xxxx;
            }
            float3 _776 = _569 - (_19_m105.xyz + (_609 * (-_19_m107.z)));
            float _790 = max(clamp((max(abs(_776.x), abs(_776.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_776.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _870;
            float4 _871;
            float4 _872;
            float4 _873;
            if (_790 < 1.0f)
            {
                float3 _799 = ((_569 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _801 = _799 - floor(_799);
                float4 _805 = _43.SampleLevel(_25, _801, 0.0f);
                float _807 = _691 * (1.0f - _790);
                float _811 = _19_m106.y * 0.5f;
                float _816 = _801.x;
                float _817 = clamp(_801.y, _811, 1.0f - _811) * 0.3333333432674407958984375f;
                float _818 = _801.z;
                float4 _821 = _44.SampleLevel(_24, float3(_816, _817, _818), 0.0f);
                float _837 = _805.x;
                float _848 = _805.y;
                float _859 = _805.z;
                _870 = _767 + (_821.w * _807);
                _871 = _768 + (float4(((_44.SampleLevel(_24, float3(_816, _817 + 0.666666686534881591796875f, _818), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _859, _859) * _807);
                _872 = _769 + (float4(((_44.SampleLevel(_24, float3(_816, _817 + 0.3333333432674407958984375f, _818), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _848, _848) * _807);
                _873 = _770 + (float4(((_821.xyz * 4.0f) - 2.0f.xxx) * _837, _837) * _807);
            }
            else
            {
                _870 = _767;
                _871 = _768;
                _872 = _769;
                _873 = _770;
            }
            float4 _956;
            float4 _957;
            float4 _958;
            float _959;
            if (_790 > 0.0f)
            {
                float3 _882 = ((_569 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _885 = _19_m106.xyz * 0.5f;
                float3 _887 = clamp(_882 - floor(_882), _885, 1.0f.xxx - _885);
                float4 _891 = _45.SampleLevel(_25, _887, 0.0f);
                float _893 = _790 * (1.0f - _664);
                float _897 = _19_m106.y * 0.5f;
                float _902 = _887.x;
                float _903 = clamp(_887.y, _897, 1.0f - _897) * 0.3333333432674407958984375f;
                float _904 = _887.z;
                float4 _907 = _46.SampleLevel(_24, float3(_902, _903, _904), 0.0f);
                float _923 = _891.x;
                float _934 = _891.y;
                float _945 = _891.z;
                _956 = _871 + (float4(((_46.SampleLevel(_24, float3(_902, _903 + 0.666666686534881591796875f, _904), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _945, _945) * _893);
                _957 = _872 + (float4(((_46.SampleLevel(_24, float3(_902, _903 + 0.3333333432674407958984375f, _904), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _934, _934) * _893);
                _958 = _873 + (float4(((_907.xyz * 4.0f) - 2.0f.xxx) * _923, _923) * _893);
                _959 = _870 + (_907.w * _893);
            }
            else
            {
                _956 = _871;
                _957 = _872;
                _958 = _873;
                _959 = _870;
            }
            float _962 = clamp((_959 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _966 = _956;
            _967 = _957;
            _968 = _958;
            _969 = _962 - _664;
            _970 = (_962 + _664) * 0.5f;
        }
        else
        {
            _966 = 0.0f.xxxx;
            _967 = 0.0f.xxxx;
            _968 = 0.0f.xxxx;
            _969 = 0.0f;
            _970 = 1.0f;
        }
        float4 _990 = _968 + float4(_19_m108.x * _970, (_19_m108.y * _970) + ((_19_m108.w * _969) * 0.5f), _19_m108.z * _970, (_19_m108.w * _970) + ((_19_m108.y * _969) * 0.375f));
        float4 _1010 = _967 + float4(_19_m109.x * _970, (_19_m109.y * _970) + ((_19_m109.w * _969) * 0.5f), _19_m109.z * _970, (_19_m109.w * _970) + ((_19_m109.y * _969) * 0.375f));
        float4 _1030 = _966 + float4(_19_m110.x * _970, (_19_m110.y * _970) + ((_19_m110.w * _969) * 0.5f), _19_m110.z * _970, (_19_m110.w * _970) + ((_19_m110.y * _969) * 0.375f));
        float4 _1034 = float4(_596, 1.0f);
        float3 _1040 = max(float3(dot(_990, _1034), dot(_1010, _1034), dot(_1030, _1034)), 0.0f.xxx) * _632;
        float3 _1048 = ((_990.xyz * 0.2125999927520751953125f) + (_1010.xyz * 0.715200006961822509765625f)) + (_1030.xyz * 0.072200000286102294921875f);
        float3 _1052 = _1048 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1048, _1048)));
        float _1054 = abs(_1052.y);
        float3 _1055 = _1052;
        _1055.y = _1054;
        float4 _1056 = float4(_1055.x, _1055.y, _1055.z, 0.0f.xxxx.w);
        _1056.w = 1.0f;
        float4 _1060 = float4(_1052.x, _1054, _1052.z, 1.0f);
        float3 _1065 = max(float3(dot(_990, _1060), dot(_1010, _1060), dot(_1030, _1060)), 0.0f.xxx);
        float _1073 = _1040.z;
        float _1074 = _1040.y;
        float4 _1079 = lerp(float4(_1073, _1074, -1.0f, 0.666666686534881591796875f), float4(_1074, _1073, 0.0f, -0.3333333432674407958984375f), step(_1073, _1074).xxxx);
        float _1080 = _1040.x;
        float _1081 = _1079.x;
        float4 _1089 = lerp(float4(_1081, _1079.yw, _1080), float4(_1080, _1079.yz, _1081), step(_1081, _1080).xxxx);
        float _1090 = _1089.x;
        float _1091 = _1089.w;
        float _1092 = _1089.y;
        float _1094 = _1090 - min(_1091, _1092);
        float _1104 = frac(abs(_1089.z + ((_1091 - _1092) / ((6.0f * _1094) + 9.9999997473787516355514526367188e-05f))));
        float _1111 = min(_1094 / (_1090 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1104 - 0.5f))) * clamp(_1090, 0.0f, 1.0f));
        float _1113 = 2.0f / (2.0f - _1111);
        _1126 = _1056;
        _1127 = _1040;
        _1128 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1104, _1111, _1113).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1111.xxx) * _1113;
        _1129 = max(max(max(_1065.x, _1065.y), _1065.z), 0.0f) * _632;
    }
    else
    {
        _1126 = 0.0f.xxxx;
        _1127 = 1.0f.xxx;
        _1128 = _19_m81.xyz;
        _1129 = _632;
    }
    float _1228;
    float3 _1229;
    float3 _1230;
    float _1231;
    float3 _1232;
    [branch]
    if ((_624 - _48_m20) > 0.00999999977648258209228515625f)
    {
        float4 _1162 = _49.SampleBias(_25, _3 * _19_m89.z, _19_m16);
        float _1168 = _624 * (2.0f - _624);
        float _1175 = smoothstep(2.0f - _1168, 2.349999904632568359375f - _1168, (((_454 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1162.z) * ((_492 * _492) * float(gl_FrontFacing));
        float3 _1177 = _1175.xxx;
        float2 _1183 = (_1162.xy * 2.0f) - 1.0f.xx;
        float3 _1184 = float3(_1183.x, _1183.y, _409.z);
        float2 _1185 = _1183.xy;
        _1184.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1185, _1185), 0.0f, 1.0f)));
        float2 _1193 = _1184.xy * 2.0f;
        float3 _1195 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1193.x, _1193.y, _1184.z), _1177);
        float3 _1199 = _1195 * rsqrt(max(6.103515625e-05f, dot(_1195, _1195)));
        float _1200 = _596.y;
        float _1203 = step(0.00999999977648258209228515625f, 1.0f - (_1200 * _1200));
        float _1207 = lerp(_596.z, _1200, _1203);
        float3 _1214 = (float3(0.0f, _1203, 1.0f - _1203) - (_596 * _1207)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1207 * _1207)));
        _1228 = lerp(_494, 0.89999997615814208984375f, clamp(_1175 * 4.0f, 0.0f, 1.0f));
        _1229 = lerp(_507 * 1.0f, 0.3079999983310699462890625f.xxx, _1177);
        _1230 = lerp(_485 * 1.0f, 0.87999999523162841796875f.xxx, _1177);
        _1231 = lerp(_490, 0.0f, _1175);
        _1232 = ((cross(_1214, _596) * _1199.x) + (_1214 * _1199.y)) + (_596 * _1199.z);
    }
    else
    {
        _1228 = _494;
        _1229 = _507;
        _1230 = _485;
        _1231 = _490;
        _1232 = _596;
    }
    bool2 _1236 = (_48_m76 != 0.0f).xx;
    float _1289 = (_48_m77 * (_48_m78 - dot(_569, _48_m71.xyz))) + ((_58.SampleBias(_59, (lerp(float2(_1236.x ? _7.x : _3.x, _1236.y ? _7.y : _3.y), mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _569 - mul(_22_m0[_12]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _48_m72.xx) * _48_m68.xy) + _48_m68.zw, _19_m16).x - ((max(_48_m74, _22_m0[_12]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _48_m79);
    if ((clamp(_1289 * _48_m73, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _1318 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _1320 = abs(_1318);
    if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _1320 : (-_1320)), (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) - _1318) < 0.0f)
    {
        discard;
    }
    float3 _1335 = _48_m59.xyz * _48_m46;
    float4 _1336 = float4(_1335.x, _1335.y, _1335.z, _48_m59.w);
    _1336.w = _48_m59.w * _48_m47;
    float2 _1381;
    if (_48_m45 > 1.5f)
    {
        float2 _1355 = ((float2(_599) / _19_m5.xy) * 2.0f) - 1.0f.xx;
        _1381 = float2(_1355.x, (_1355.y / _19_m5.x) * _19_m5.y) * lerp(1.0f, max(0.0f, (-dot(_17_m0[2u], float4(_22_m0[_12]._m0[0].w, _22_m0[_12]._m0[1].w, _22_m0[_12]._m0[2].w, 1.0f))) - _19_m3.y), _48_m55);
    }
    else
    {
        _1381 = lerp(_3, _7, _48_m45.xx);
    }
    float4 _1396 = _57.SampleBias(_25, ((_1381 + (_48_m56.zw * _19_m75.w)) * _48_m61.xy) + _48_m61.zw, _19_m16);
    float _1399 = _1396.x;
    float4 _1415 = _56.SampleBias(_25, (((_1381 + (_48_m54 * _1399).xx) + (_48_m56.xy * _19_m75.w)) * _48_m60.xy) + _48_m60.zw, _19_m16);
    float4 _1422 = _1336 * lerp(_1415, float4(1.0f, 1.0f, 1.0f, _1415.x), _48_m44.xxxx);
    float _1425 = _1422.w;
    float _1438 = _1399 - ((_48_m53 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _1440 = clamp(-_1438, 0.0f, 1.0f);
    float _1442 = _1425 * clamp(_1438, 0.0f, 1.0f);
    float _1447 = (_480.w * _48_m24.w) * ((_48_m51 > 0.5f) ? _1442 : 1.0f);
    bool3 _1459 = (_48_m52 < 0.5f).xxx;
    float _1473 = pow(clamp(dot(_445, float3(_1459.x ? _584.x : _1232.x, _1459.y ? _584.y : _1232.y, _1459.z ? _584.z : _1232.z).xyz) + _48_m40, 0.0f, 1.0f), _48_m42);
    float _1475 = lerp(1.0f - _1473, _1473, _48_m43);
    float _1491 = 0.959999978542327880859375f - (_1231 * 0.959999978542327880859375f);
    float3 _1492 = _1230 * _1491;
    float3 _1495 = lerp(0.039999999105930328369140625f.xxx * _489.y, _1230, _1231.xxx);
    float3 _1496 = _1229 * _1491;
    float _1497 = _1228 * _1228;
    float _1498 = max(_1497, 0.0078125f);
    float2 _1511 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _1511.y = -_1511.y;
    float2 _1524 = ((sqrt(sqrt(abs(_1511 * 0.5f))) * float2(int2(sign(_1511)))) * 0.5f) + 0.5f.xx;
    float4 _1525 = float4(_1524.x, _1524.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1525.z = 1.0f;
    _1525.w = 0.4000000059604644775390625f;
    float3 _1538 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1542 = normalize(float3(_1538.x, 6.103515625e-05f, _1538.z));
    float3 _1552 = lerp(_35_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _1556 = _1552 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _1560 = int(_599.x);
    int _1561 = int(_599.y);
    float _1572 = lerp(lerp(1.0f, _39.Load(int3(int3(_1560, _1561, 0).xy, 0)).x, _37_m6.x), 1.0f, _19_m80.z);
    float _1573 = dot(_1232, _1538);
    float3 _1580 = _1496 * _19_m79.z;
    float3 _1581 = _1580 * 0.64999997615814208984375f;
    float _1585 = dot(_1492, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1598 = clamp(-dot(_1542.xz, normalize(_609.xz)), 0.0f, 1.0f);
    float _1602 = 1.0f - _19_m91.x;
    float _1610 = smoothstep(0.25f, 1.0f, clamp(lerp(_1573, ((-_1573) * ((_1573 * 0.5f) - 1.0f)) + 0.5f, (_1598 * smoothstep(0.25f, 0.75f, 1.0f - abs(_609.y))) * _1602) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _1617 = max(max(_1610, _1610), _1610) - min(min(_1610, _1610), _1610);
    float _1619 = smoothstep(0.25f, 1.0f, dot(_1232, _609));
    float _1626 = min(min(1.0f, _492), _1610);
    float _1627 = _1619 * _492;
    float3 _1631 = ((clamp(dot(_596, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1128, 1.0f.xxx, (_19_m80.y * _1626).xxx);
    float3 _1633 = _1626.xxx;
    float3 _1656 = _1572.xxx;
    float3 _1657 = lerp((_1631 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1129), 1.5f), clamp(_1129, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1556, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1556, _1633) + ((_1631 * clamp(_1129, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1552 * _19_m91.y)))) * _19_m79.y, _1656);
    float3 _1658 = lerp(lerp(lerp(dot(_1581, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1581, 1.2000000476837158203125f.xxx), _1580, clamp((_492 * _1619) + _1610, 0.0f, 1.0f).xxx), _1492, _1633);
    float3 _1664 = _1658 * ((1.0f - _1617).xxx + (_1610.xxxx.xyz * _1617));
    float3 _1673 = lerp(lerp(_1580, lerp(_1585.xxx, _1492, 1.2000000476837158203125f.xxx), _1627.xxx), _1664 * clamp(dot(_1658, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1664, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1656);
    float4 _1677 = float4(_1673, _1572);
    float _1679 = lerp(_1627, _1626, _1572);
    float _1682 = lerp(_19_m79.z, 1.0f, _1679);
    float3 _1690 = float3(_609.x, lerp(0.5f, _1538.y, _1572), _609.z);
    float _1703 = clamp(dot(_596, _445), 0.0f, 1.0f);
    float _1704 = dot(_596, normalize(((_1538 * _1572) + ((_1690 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1690, _1690)))) * 2.0f)) + (_445 * (2.0f + _1572))));
    float _1705 = _1498 * _1498;
    float _1709 = (((_1704 * _1705) - _1704) * _1704) + 1.0f;
    float _1710 = _1709 * _1709;
    float _1714 = 2.0f * _1703;
    float _1716 = (1.0f + _1703) - _1703;
    float _1733 = (1.0f - _48_m6) + (_1447 * _48_m6);
    float3 _1735 = ((_1657 * _1673) * _1733) + (((_1495 * clamp((((_1705 != _1710) ? (_1705 / _1710) : 1.0f) * (0.5f / ((_1714 + (_1498 * _1716)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1657 * (((_1679 * 0.5f) + 0.5f) * _1682)) * 1.0f)) * _19_m92.w);
    float _1736 = dot(_1735, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1739 = clamp(_1736 - 0.5f, 0.0f, 0.5f);
    float3 _1775 = normalize(cross(_609, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1781 = dot(_445, _1232);
    float _1783 = 1.0f - abs(_1781);
    float _1805 = dot(_1542, _1232);
    float _1817 = 1.0f - _1572;
    float _1844 = _1703 * _1703;
    float _1845 = _1844 * _1703;
    float2 _1846 = float2(1.0f, _1703);
    float2 _1849 = float2(1.0f, _1497);
    float3 _1852 = float3(1.0f, _1497, (_1497 * _1497) * _1497);
    float _1857 = dot(mul(_1846, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1849) / dot(mul(float3(1.0f, _1844, _1845), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1852);
    float _1862 = dot(mul(_1846, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1849) / dot(mul(float3(1.0f, _1703, _1845), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1852);
    float3 _1865 = (_1495 * _1857) + _1862.xxx;
    float _1866 = _1857 + _1862;
    float3 _1872 = -_445;
    float3 _1890 = (((((_539.xyz * _48_m25.xyz) * _48_m7) * ((_48_m64 > 0.5f) ? lerp(1.0f, lerp(_48_m66, _48_m67, (sin(_48_m65 * _19_m75.w) * 0.5f) + 0.5f), _539.w) : 1.0f)) + (_48_m70.xyz * clamp((_48_m75 - _1289) * _48_m73, 0.0f, 1.0f))) + (lerp(lerp((((_1396 * clamp((_1425 + _1396.w) * _48_m57.w, 0.0f, 1.0f)) * _48_m57) + _1422).xyz, (_48_m58.xyz * _1440) * _48_m46, _1440.xxx).xyz, _48_m58.xyz, (_48_m58.w * _1475).xxx).xyz * (clamp(_1442, 0.0f, 1.0f) * ((1.0f - _48_m41) + (_1475 * _48_m41)))).xyz) * _1733;
    float3 _1891 = lerp(_1736.xxx, _1735, ((_1739 * _1739) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1783)) * _19_m87.w) * min(min(clamp(dot(_576, _1775) + 1.0f, 0.0f, 1.0f), _492), 1.0f)) * (lerp(0.25f.xxx, _1492, _19_m88.z.xxx) * clamp(dot(_1775, _1232), 0.0f, 1.0f))) + ((((((lerp(_1127 * (1.0f / max(max(max(_1127.x, _1127.y), _1127.z) * 0.5f, 1.0f)), _1556, _1656) * clamp(lerp(dot(_1126.xyz, _1232) * _1126.w, ((-_1805) * ((_1805 * 0.5f) - 1.0f)) + 0.5f, _1572), 0.0f, 1.0f)) * ((_1817 + (_1598 * _1572)) * _1602)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _1783)) * min(_492, 1.0f)) * (_1817 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _1585) * _1572))) * max(0.1500000059604644775390625f.xxx, _1492)));
    float2 _1894 = float2(_599);
    float2 _1896 = floor(_1894 * 0.03125f);
    int _1904 = int((_1896.x + (_1896.y * _33_m5)) * 8.0f);
    float _1911 = floor(_426 - (_19_m3.y * _33_m11));
    float _1915 = clamp(_1911, 0.0f, _33_m7 - 1.0f);
    int _1917 = int(_1915 * 8.0f);
    float3 _1919;
    _1919 = (_1891 + _1890) + (((_55.SampleLevel(_24, reflect(_1872, _596), (1.2000000476837158203125f * log2(max(_1228, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_1865 + ((_1495 * ((1.0f - _1866) / _1866)) * _1865)) * 1.0f)) * ((clamp(_1129, 0.5f, 1.5f) * _19_m79.w) * _1682)) * _1128);
    float3 _1920;
    [loop]
    for (int _1922 = 0; _1922 <= 7; _1919 = _1920, _1922++)
    {
        uint _1940 = (_1911 <= _1915) ? (_29.Load(uint(_1904 + _1922) * 4 + 0) & _29.Load(uint((_19_m21.y + _1917) + _1922) * 4 + 0)) : 0u;
        uint _1941 = uint(_1922);
        _1920 = _1919;
        uint _1946;
        float3 _1943;
        [loop]
        for (uint _1945 = _1940; _1945 != 0u; _1920 = _1943, _1945 = _1946)
        {
            uint _1950 = firstbitlow(_1945);
            _1946 = _1945 ^ (1u << (_1950 & 31u));
            int _1956 = int((32u * _1941) + _1950) * 8;
            int _1959 = _1956 + 1;
            int _1962 = _1956 + 2;
            int _1965 = _1956 + 3;
            int _1968 = _1956 + 4;
            int _1971 = _1956 + 5;
            int _1974 = _1956 + 6;
            int _1977 = _1956 + 7;
            uint _1981 = uint(_35_m6[_1971].w);
            float _2056;
            if ((_1981 & 1u) == 1u)
            {
                uint _1987 = asuint(_35_m6[_1971].x);
                uint _1994 = asuint(_35_m6[_1971].y);
                uint _2001 = asuint(_35_m6[_1971].z);
                uint _2008 = asuint(_35_m6[_1974].x);
                uint _2015 = asuint(_35_m6[_1974].y);
                uint _2022 = asuint(_35_m6[_1974].z);
                float3 _2041 = abs(mul(float4(_569 - _35_m6[_1959].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1987).x, spvUnpackHalf2x16(_2001).x, spvUnpackHalf2x16(_2015).x, 0.0f), float4(spvUnpackHalf2x16(_1987 >> 16u).x, spvUnpackHalf2x16(_2001 >> 16u).x, spvUnpackHalf2x16(_2015 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1994).x, spvUnpackHalf2x16(_2008).x, spvUnpackHalf2x16(_2022).x, 0.0f), float4(spvUnpackHalf2x16(_1994 >> 16u).x, spvUnpackHalf2x16(_2008 >> 16u).x, spvUnpackHalf2x16(_2022 >> 16u).x, 0.0f))).xyz);
                float _2048 = _35_m6[_1977].x * 0.5f;
                float _2054 = 1.0f - clamp((max(max(_2041.x, _2041.y), _2041.z) - (_2048 + 0.5f)) / (0.5f - _2048), 0.0f, 1.0f);
                _2056 = _2054 * _2054;
            }
            else
            {
                _2056 = 1.0f;
            }
            if (false || (_2056 < 0.001000000047497451305389404296875f))
            {
                _1943 = _1920;
                continue;
            }
            float3 _2750;
            if (_35_m6[_1956].w < 1.5f)
            {
                float3 _2749;
                do
                {
                    uint _2069 = asuint(_35_m6[_1965].w);
                    if ((_2069 == 16u) || ((_35_m6[_1965].z + _19_m91.z) < 0.5f))
                    {
                        _2749 = _1920;
                        break;
                    }
                    bool _2081 = (uint(_35_m6[_1956].w) & 1u) == 0u;
                    bool _2085 = (!_2081) && (_35_m6[_1962].z > 0.0f);
                    bool _2086 = _2069 == 4u;
                    float _2087 = float(_2081);
                    float _2095 = (0.5f + (0.5f * _35_m6[_1962].y)) - abs(_35_m6[_1962].x);
                    float _2096 = _35_m6[_1962].y - _2095;
                    float _2103 = abs(max((1.0f - abs(_2095)) - abs(_2096), 0.00048828125f));
                    float3 _2107 = normalize(float3(_2095, _2096, (_35_m6[_1962].x >= 0.0f) ? _2103 : (-_2103)));
                    float _2113 = lerp(_35_m6[_1974].w, max(2.0f * _35_m6[_1968].y, 0.100000001490116119384765625f), float(_2086));
                    float3 _2118 = _35_m6[_1959].xyz - _569;
                    float3 _2119 = -_2107;
                    float3 _2124 = lerp(_2118, _2119 * dot(_2118, _2119), (float(_2086 && (_35_m6[_1968].z > 0.5f)) * _2087).xxx);
                    float _2125 = dot(_2124, _2124);
                    float _2126 = rsqrt(_2125);
                    float3 _2127 = _2124 * _2126;
                    float3 _2160;
                    float _2161;
                    if (_2085)
                    {
                        float3 _2131 = (_2107 * _35_m6[_1962].z) * 0.5f;
                        float3 _2132 = _2124 - _2131;
                        float3 _2133 = _2124 + _2131;
                        float _2134 = length(_2132);
                        float _2135 = length(_2133);
                        float3 _2144 = normalize(cross(cross(_2107, _2127), _2107));
                        _2160 = _2144;
                        _2161 = ((1.0f / ((((_2134 * _2135) + dot(_2132, _2133)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2144, _2132) / _2134) + (dot(_2144, _2133) / _2135)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_1962].z * _2126, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2160 = _2127;
                        _2161 = 1.0f;
                    }
                    float _2183;
                    if (_2113 < 0.0f)
                    {
                        float _2177 = _2125 * (_35_m6[_1959].w * _35_m6[_1959].w);
                        float _2180 = clamp(1.0f - (_2177 * _2177), 0.0f, 1.0f);
                        _2183 = lerp(1.0f / (_2125 + 1.0f), _2161, float(_2085)) * (_2180 * _2180);
                    }
                    else
                    {
                        float3 _2166 = _2124 * _35_m6[_1959].w;
                        _2183 = _2161 * pow(1.0f - clamp(dot(_2166, _2166), 0.0f, 1.0f), _2113);
                    }
                    float _2188 = clamp((dot(_2160, _2119) - _35_m6[_1962].z) * _35_m6[_1962].w, 0.0f, 1.0f);
                    float _2191 = _2183 * lerp(1.0f, _2188 * _2188, _2087);
                    int _2193 = int(_35_m6[_1977].w);
                    float _2298;
                    if ((!_2085) && (_2193 >= 0))
                    {
                        uint _2199 = uint(_2193);
                        float2 _2291;
                        [branch]
                        if (_2087 != 0.0f)
                        {
                            float4 _2281 = mul(_62_m1[_2199], float4(_569, 1.0f));
                            _2291 = _62_m0[_2199].xy + (clamp(_2281.xy / _2281.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2199].zw);
                        }
                        else
                        {
                            float3 _2214 = mul(float4(-_2124, 0.0f), _62_m1[_2199]).xyz;
                            float3 _416 = _2214;
                            float3 _415 = _2214;
                            float3 _414 = abs(_2214);
                            uint _2223 = uint(int(_414.y > _414.x));
                            uint _2229 = (_414.z > _414[_2223]) ? 2u : _2223;
                            uint _2235 = (_2229 * 2u) + uint(_415[_2229] < 0.0f);
                            float _2239 = abs(_416[_2235 / 2u]);
                            float _2259 = 0.5f - (0.000244140625f / _62_m0[_2199].w);
                            _2291 = _62_m0[_2199].xy + (clamp(float2((float(_2235) + ((((_416[uint(_364[_2235].x)] * _365[_2235].x) / _2239) * _2259) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_416[uint(_364[_2235].y)] * _365[_2235].y) / _2239) * _2259)), 0.0f.xx, 1.0f.xx) * _62_m0[_2199].zw);
                        }
                        _2298 = _2191 * _60.SampleLevel(_24, _2291, 0.0f).x;
                    }
                    else
                    {
                        _2298 = _2191;
                    }
                    float _2299 = _2298 * _2056;
                    float3 _2748;
                    do
                    {
                        float3 _2747;
                        [branch]
                        if (_2299 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2086)
                            {
                                _2748 = lerp(_1920, _35_m6[_1956].xyz, (_2299 * (_35_m6[_1968].x * ((1.0f - _35_m6[_1968].w) + (smoothstep(-0.5f, 0.5f, dot(_597, _2160)) * _35_m6[_1968].w)))).xxx);
                                break;
                            }
                            float _2319 = dot(_1232, _2160);
                            float _2320 = clamp(_2319, 0.0f, 1.0f);
                            float _2623;
                            if (_2069 != 0u)
                            {
                                bool _2326 = _2081 || ((_1981 & 2u) != 0u);
                                int _2375;
                                if (_2326)
                                {
                                    _2375 = int(_35_m6[_1965].x);
                                }
                                else
                                {
                                    uint _2330 = asuint(_35_m6[_1962].w);
                                    uint _2332 = asuint(_35_m6[_1965].x);
                                    float3 _2333 = _569 - _35_m6[_1959].xyz;
                                    float3 _2334 = abs(_2333);
                                    float _2335 = _2334.x;
                                    float _2336 = _2334.y;
                                    float _2338 = _2334.z;
                                    int _2370;
                                    if ((_2335 > _2336) && (_2335 > _2338))
                                    {
                                        _2370 = int((_2333.x > 0.0f) ? (_2330 >> 24u) : ((_2330 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2362;
                                        if (_2336 > _2338)
                                        {
                                            _2362 = int((_2333.y > 0.0f) ? ((_2330 >> 8u) & 255u) : (_2330 & 255u));
                                        }
                                        else
                                        {
                                            _2362 = int((_2333.z > 0.0f) ? ((_2332 >> 8u) & 255u) : (_2332 & 255u));
                                        }
                                        _2370 = _2362;
                                    }
                                    _2375 = (_2370 < 80) ? _2370 : (-1);
                                }
                                bool _2376 = _2375 >= 0;
                                float _2622;
                                if (_2376)
                                {
                                    float3 _2383 = _569 - _35_m6[_1959].xyz;
                                    float4 _2403 = mul(_37_m10[_2375], float4((_569 - ((_2383 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2383, _2383)))) * _37_m11[_2375].x)) + (_597 * (_37_m11[_2375].y * 5.0f)), 1.0f));
                                    float _2404 = _2403.w;
                                    float3 _2407 = _2403.xyz / _2404.xxx;
                                    float2 _2408 = _2407.xy;
                                    float3 _2416 = _2407.xyz;
                                    bool3 _2417 = bool3(_2416.x <= 0.0f.xxx.x, _2416.y <= 0.0f.xxx.y, _2416.z <= 0.0f.xxx.z);
                                    bool3 _2418 = bool3(_2416.x >= 1.0f.xxx.x, _2416.y >= 1.0f.xxx.y, _2416.z >= 1.0f.xxx.z);
                                    float _2421 = _2407.z;
                                    float2 _2432 = ((_2408 * (_37_m12[_2375].zw - _37_m12[_2375].xy)) + _37_m12[_2375].xy).xy * _37_m13.zw;
                                    float2 _2434 = floor(_2432 + 0.5f.xx);
                                    float2 _2435 = _2432 - _2434;
                                    float _2437 = _2435.x + 0.5f;
                                    float _2438 = _2437 * _2437;
                                    float _2441 = 1.0f - _2435.x;
                                    float _2442 = min(_2435.x, 0.0f);
                                    float _2445 = _2435.x + 1.0f;
                                    float _2446 = max(_2435.x, 0.0f);
                                    float _2458 = _2435.y + 0.5f;
                                    float _2459 = _2458 * _2458;
                                    float _2462 = 1.0f - _2435.y;
                                    float _2463 = min(_2435.y, 0.0f);
                                    float _2466 = _2435.y + 1.0f;
                                    float _2467 = max(_2435.y, 0.0f);
                                    float3 _2479 = float3(0.1599999964237213134765625f * _2441, 0.1599999964237213134765625f * ((_2445 - (_2446 * _2446)) + 1.0f), _2438 * 0.07999999821186065673828125f);
                                    float3 _2480 = float3(0.1599999964237213134765625f * ((_2438 * 0.5f) - _2435.x), 0.1599999964237213134765625f * ((_2441 - (_2442 * _2442)) + 1.0f), 0.1599999964237213134765625f * _2445) + _2479;
                                    float3 _2482 = float3(0.1599999964237213134765625f * _2462, 0.1599999964237213134765625f * ((_2466 - (_2467 * _2467)) + 1.0f), _2459 * 0.07999999821186065673828125f);
                                    float3 _2483 = float3(0.1599999964237213134765625f * ((_2459 * 0.5f) - _2435.y), 0.1599999964237213134765625f * ((_2462 - (_2463 * _2463)) + 1.0f), 0.1599999964237213134765625f * _2466) + _2482;
                                    float3 _2489 = ((_2479 / _2480) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2491 = ((_2482 / _2483) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2493 = _2434 * _37_m13.xy;
                                    float _2494 = _2489.x;
                                    float _2495 = _2491.x;
                                    float _2498 = _2489.y;
                                    float _2501 = _2489.z;
                                    float _2504 = _2491.y;
                                    float _2511 = _2491.z;
                                    float _2518 = _2480.x;
                                    float _2519 = _2483.x;
                                    float _2521 = _2480.y;
                                    float _2523 = _2480.z;
                                    float _2525 = _2483.y;
                                    float _2529 = _2483.z;
                                    float _2587 = (((((((_2518 * _2519) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2494, _2495), _408).xy, _2421)) + ((_2521 * _2519) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2498, _2495), _408).xy, _2421))) + ((_2523 * _2519) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2501, _2495), _408).xy, _2421))) + ((_2518 * _2525) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2494, _2504), _408).xy, _2421))) + ((_2521 * _2525) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2498, _2504), _408).xy, _2421))) + ((_2523 * _2525) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2501, _2504), _408).xy, _2421))) + ((_2518 * _2529) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2494, _2511), _408).xy, _2421));
                                    float2 _2608 = min(_2408, 1.0f.xx - _2408);
                                    _2622 = _2376 ? lerp(1.0f, (any(bool3(_2417.x || _2418.x, _2417.y || _2418.y, _2417.z || _2418.z)) || ((asuint(_2421) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2587 + ((_2521 * _2529) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2498, _2511), _408).xy, _2421))) + ((_2523 * _2529) * _38.SampleCmpLevelZero(_26, float3(_2493 + float2(_2501, _2511), _408).xy, _2421))), _2326 ? min(_37_m11[_2375].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2375].z - _2404) * 0.25f, min(_2608.x, _2608.y)))) : _37_m11[_2375].w) : 1.0f;
                                }
                                else
                                {
                                    _2622 = clamp(dot(_576, _2160) + 1.0f, 0.0f, 1.0f);
                                }
                                _2623 = _2622;
                            }
                            else
                            {
                                _2623 = 1.0f;
                            }
                            float _2703;
                            float3 _2704;
                            float _2705;
                            float3 _2706;
                            float3 _2707;
                            float _2708;
                            float _2709;
                            [branch]
                            if (_2069 == 0u)
                            {
                                float3 _2683 = _35_m6[_1956].xyz * _2299;
                                float3 _2696 = _1677.xyz;
                                _2703 = _2299;
                                _2704 = (_35_m6[_1956].xyz * ((1.0f - _35_m6[_1968].y) + ((1.0f / max(1.0f, max(max(_2683.x, _2683.y), _2683.z) * lerp(0.75f, 0.5f, _1817))) * _35_m6[_1968].y))) * lerp(0.25f * _35_m6[_1968].x, 1.0f, clamp(_2319 + 0.5f, 0.0f, 1.0f));
                                _2705 = _2320;
                                _2706 = _2696;
                                _2707 = _2696;
                                _2708 = 1.0f;
                                _2709 = 0.0f;
                            }
                            else
                            {
                                float _2676;
                                float _2677;
                                float3 _2678;
                                float3 _2679;
                                float _2680;
                                float _2681;
                                if (_2069 == 3u)
                                {
                                    _2676 = _2299 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_1968].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_1968].x), _1783) * _2623);
                                    _2677 = clamp(dot(_1232, -normalize(cross(_609, cross(_609, _2160)))), 0.0f, 1.0f);
                                    _2678 = lerp(0.5f.xxx, _1492, _35_m6[_1968].y.xxx);
                                    _2679 = 0.0f.xxx;
                                    _2680 = 1.0f;
                                    _2681 = 0.0f;
                                }
                                else
                                {
                                    bool _2632 = _2069 == 1u;
                                    float _2656;
                                    float3 _2657;
                                    float _2658;
                                    float _2659;
                                    if (_2632)
                                    {
                                        _2656 = clamp(clamp(_2319 + _35_m6[_1968].x, -1.0f, 1.0f), 0.0f, 1.0f) * _2623;
                                        _2657 = _1496 * _35_m6[_1968].y;
                                        _2658 = 1.0f;
                                        _2659 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2636 = _2069 == 2u;
                                        float _2648;
                                        if (_2636)
                                        {
                                            _2648 = smoothstep(_35_m6[_1968].x + 0.0500000007450580596923828125f, _35_m6[_1968].x - 0.0500000007450580596923828125f, _1228) * ((1.0f - _35_m6[_1968].z) + (step(0.5f, _1231) * _35_m6[_1968].z));
                                        }
                                        else
                                        {
                                            _2648 = 1.0f;
                                        }
                                        _2656 = _2320;
                                        _2657 = 0.0f.xxx;
                                        _2658 = _2648;
                                        _2659 = _2636 ? _35_m6[_1968].y : 0.0f;
                                    }
                                    bool3 _2660 = _2632.xxx;
                                    _2676 = _2299;
                                    _2677 = _2656;
                                    _2678 = float3(_2660.x ? _1492.x : 0.0f.xxx.x, _2660.y ? _1492.y : 0.0f.xxx.y, _2660.z ? _1492.z : 0.0f.xxx.z);
                                    _2679 = _2657;
                                    _2680 = _2658;
                                    _2681 = _2659;
                                }
                                _2703 = _2676;
                                _2704 = _35_m6[_1956].xyz;
                                _2705 = _2677;
                                _2706 = _2678;
                                _2707 = _2679;
                                _2708 = _2680;
                                _2709 = _2681;
                            }
                            float3 _2737;
                            [branch]
                            if (_2069 != 3u)
                            {
                                float _2714 = lerp(_1498, 0.00999999977648258209228515625f, _2709);
                                float _2717 = dot(_596, normalize(_2160 + _445));
                                float _2718 = _2714 * _2714;
                                float _2722 = (((_2717 * _2718) - _2717) * _2717) + 1.0f;
                                float _2723 = _2722 * _2722;
                                _2737 = ((_1495 * clamp((((_2718 != _2723) ? (_2718 / _2723) : 1.0f) * (0.5f / ((_1714 + (_2714 * _1716)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2708) * _35_m6[_1977].z;
                            }
                            else
                            {
                                _2737 = 0.0f.xxx;
                            }
                            float3 _2740 = _2704 * _2703;
                            _2747 = _1920 + (((_2740 * lerp(_2707, _2706, _2705.xxx)) * _1733) + ((_2740 * _2737) * _2705));
                        }
                        else
                        {
                            _2747 = _1920;
                        }
                        _2748 = _2747;
                        break;
                    } while(false);
                    _2749 = _2748;
                    break;
                } while(false);
                _2750 = _2749;
            }
            else
            {
                _2750 = _1920;
            }
            _1943 = _2750;
        }
    }
    float3 _2790;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _2790 = lerp(lerp(0.5f.xxx, lerp(dot(_1919, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1919, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_1781, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _2790 = _1919;
    }
    float4 _2797 = float4(_2790 * _19_m20.y, _1447);
    _2797.w = (_48_m8 == 1.0f) ? _1447 : 1.0f;
    float4 _3182;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _2822 = _569.y * _19_m46.w;
        float _2827 = max(0.00999999977648258209228515625f, _2822 + _19_m47.w);
        float3 _2841 = exp(_19_m45.xyz * ((-max(0.0f, (_446 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2827)) / _2827) * exp(_2822 + _19_m48.w))));
        float _2844 = dot(_1872, _19_m44.xyz);
        float _2850 = _19_m45.w * _19_m45.w;
        float _2854 = (1.0f + _2850) - ((2.0f * _19_m45.w) * _2844);
        float3 _3174;
        float _3175;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3005 = (uint3(int3(_1560, _1561, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3006 = _3005.y;
            uint _3007 = _3005.z;
            uint _3010 = _3005.x + (_3006 * _3007);
            uint _3012 = _3006 + (_3007 * _3010);
            uint _3014 = _3007 + (_3010 * _3012);
            uint _3016 = _3010 + (_3012 * _3014);
            float _3038 = dot(_1872, -_17_m0[2].xyz);
            float3 _3045 = _569 - _17_m11.xyz;
            float _3047 = (_19_m55.w * ((_3038 > 5.9604644775390625e-08f) ? (1.0f / _3038) : 0.0f)) * (1.0f / _446);
            float _3048 = _3045.y;
            float _3049 = _3047 * _3048;
            float _3051 = _17_m11.y + _3049;
            float _3052 = _3048 - _3049;
            float _3054 = (1.0f - _3047) * _446;
            float _3068 = max(-127.0f, _19_m49.z * _3052);
            float _3092 = max(-127.0f, _19_m52.x * _3052);
            float _3103 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3051 - _19_m49.x)))) * ((abs(_3068) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3068)) / _3068) : (0.693147182464599609375f - (0.2402265071868896484375f * _3068)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3051 - _19_m52.z)))) * ((abs(_3092) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3092)) / _3092) : (0.693147182464599609375f - (0.2402265071868896484375f * _3092))));
            float _3125 = clamp((_446 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3128 = clamp((max(clamp(exp2(-(_3103 * _3054)), 0.0f, 1.0f), _19_m51.w) + clamp((_446 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3125, 0.0f, 1.0f);
            float4 _3168 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_24, float3((_1894 + ((((float3(uint3(_3016, _3012 + (_3014 * _3016), _412) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_426 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_426 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3174 = _3168.xyz + (((_19_m51.xyz * (1.0f - _3128)) + (((_19_m54.xyz * pow(clamp(dot(_445, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3103 * max(_3054 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3125))) * _3168.w);
            _3175 = _3168.w * _3128;
        }
        else
        {
            float3 _2881 = _569 - _17_m11.xyz;
            float _2883 = _2881.y;
            float _2897 = max(-127.0f, _19_m49.z * _2883);
            float _2921 = max(-127.0f, _19_m52.x * _2883);
            float _2932 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2897) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2897)) / _2897) : (0.693147182464599609375f - (0.2402265071868896484375f * _2897)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2921) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2921)) / _2921) : (0.693147182464599609375f - (0.2402265071868896484375f * _2921))));
            float _2954 = clamp((_446 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2957 = clamp((max(clamp(exp2(-(_2932 * _446)), 0.0f, 1.0f), _19_m51.w) + clamp((_446 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2954, 0.0f, 1.0f);
            _3174 = (_19_m51.xyz * (1.0f - _2957)) + (((_19_m54.xyz * pow(clamp(dot(_445, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2932 * max(_446 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2954));
            _3175 = _2957;
        }
        float3 _3180 = (_2797.xyz * (_2841 * _3175)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2844 * _2844)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2850) / max((12.56637096405029296875f * _2854) * sqrt(_2854), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2841)) * _3175) + _3174);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3180 = (_3180 * 0.65f) + (_2797.xyz * 0.35f);

        }

        // RenoDX code end
        _3182 = float4(_3180.x, _3180.y, _3180.z, _2797.w);
    }
    else
    {
        _3182 = _2797;
    }
    _14 = _3182;
    _15 = _1525;
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

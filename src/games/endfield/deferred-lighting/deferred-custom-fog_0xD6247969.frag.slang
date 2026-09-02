#include "../shared.h"
// Endfield 1.5 Vulkan shader 0xD6247969, migrated from 1.4.4 shader 0xDCA4B353.
#include "./renodx_injection.hlsli"

struct _22
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

static float3 _423 = (float3)0;
static float _424 = (float)0;
static float3 _425 = (float3)0;
static float _427 = (float)0;
static uint _428 = (uint)0;

static const int2 _381[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _382[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _17_18 : register(b12)
{
    column_major float4x4 _18_m0 : packoffset(c0);
    column_major float4x4 _18_m1 : packoffset(c4);
    column_major float4x4 _18_m2 : packoffset(c8);
    column_major float4x4 _18_m3 : packoffset(c12);
    column_major float4x4 _18_m4 : packoffset(c16);
    column_major float4x4 _18_m5 : packoffset(c20);
    column_major float4x4 _18_m6 : packoffset(c24);
    column_major float4x4 _18_m7 : packoffset(c28);
    column_major float4x4 _18_m8 : packoffset(c32);
    column_major float4x4 _18_m9 : packoffset(c36);
    column_major float4x4 _18_m10 : packoffset(c40);
    float4 _18_m11 : packoffset(c44);
    column_major float4x4 _18_m12 : packoffset(c45);
    column_major float4x4 _18_m13 : packoffset(c49);
    column_major float4x4 _18_m14 : packoffset(c53);
    column_major float4x4 _18_m15 : packoffset(c57);
    column_major float4x4 _18_m16 : packoffset(c61);
    column_major float4x4 _18_m17 : packoffset(c65);
    column_major float4x4 _18_m18 : packoffset(c69);
    column_major float4x4 _18_m19 : packoffset(c73);
    column_major float4x4 _18_m20 : packoffset(c77);
    float4 _18_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _19_20 : register(b16)
{
    float4 _20_m0 : packoffset(c0);
    float4 _20_m1 : packoffset(c1);
    float4 _20_m2 : packoffset(c2);
    float4 _20_m3 : packoffset(c3);
    float4 _20_m4 : packoffset(c4);
    float4 _20_m5 : packoffset(c5);
    float4 _20_m6[6] : packoffset(c6);
    float4 _20_m7[6] : packoffset(c12);
    float4 _20_m8 : packoffset(c18);
    float4 _20_m9 : packoffset(c19);
    float4 _20_m10 : packoffset(c20);
    float4 _20_m11 : packoffset(c21);
    float4 _20_m12 : packoffset(c22);
    float4 _20_m13 : packoffset(c23);
    float4 _20_m14 : packoffset(c24);
    float4 _20_m15 : packoffset(c25);
    float _20_m16 : packoffset(c26);
    float _20_m17 : packoffset(c26.y);
    float _20_m18 : packoffset(c26.z);
    uint _20_m19 : packoffset(c26.w);
    float4 _20_m20 : packoffset(c27);
    int4 _20_m21 : packoffset(c28);
    float4 _20_m22 : packoffset(c29);
    float4 _20_m23 : packoffset(c30);
    float4 _20_m24 : packoffset(c31);
    float4 _20_m25 : packoffset(c32);
    float4 _20_m26 : packoffset(c33);
    float4 _20_m27 : packoffset(c34);
    float4 _20_m28 : packoffset(c35);
    float4 _20_m29 : packoffset(c36);
    float4 _20_m30 : packoffset(c37);
    float4 _20_m31 : packoffset(c38);
    float4 _20_m32[4] : packoffset(c39);
    float4 _20_m33[4] : packoffset(c43);
    float4 _20_m34[4] : packoffset(c47);
    float4 _20_m35[4] : packoffset(c51);
    float4 _20_m36 : packoffset(c55);
    float4 _20_m37 : packoffset(c56);
    float4 _20_m38[4] : packoffset(c57);
    float4 _20_m39[4] : packoffset(c61);
    float4 _20_m40[4] : packoffset(c65);
    float4 _20_m41 : packoffset(c69);
    float4 _20_m42 : packoffset(c70);
    float4 _20_m43 : packoffset(c71);
    float4 _20_m44 : packoffset(c72);
    float4 _20_m45 : packoffset(c73);
    float4 _20_m46 : packoffset(c74);
    float4 _20_m47 : packoffset(c75);
    float4 _20_m48 : packoffset(c76);
    float4 _20_m49 : packoffset(c77);
    float4 _20_m50 : packoffset(c78);
    float4 _20_m51 : packoffset(c79);
    float4 _20_m52 : packoffset(c80);
    float4 _20_m53 : packoffset(c81);
    float4 _20_m54 : packoffset(c82);
    float4 _20_m55 : packoffset(c83);
    float4 _20_m56 : packoffset(c84);
    float4 _20_m57 : packoffset(c85);
    float4 _20_m58 : packoffset(c86);
    float4 _20_m59 : packoffset(c87);
    float4 _20_m60 : packoffset(c88);
    float4 _20_m61 : packoffset(c89);
    float4 _20_m62 : packoffset(c90);
    float4 _20_m63 : packoffset(c91);
    float4 _20_m64 : packoffset(c92);
    float4 _20_m65 : packoffset(c93);
    float4 _20_m66 : packoffset(c94);
    float4 _20_m67 : packoffset(c95);
    float4 _20_m68 : packoffset(c96);
    float4 _20_m69 : packoffset(c97);
    float4 _20_m70 : packoffset(c98);
    float4 _20_m71 : packoffset(c99);
    float4 _20_m72 : packoffset(c100);
    float4 _20_m73 : packoffset(c101);
    float4 _20_m74 : packoffset(c102);
    float4 _20_m75 : packoffset(c103);
    float4 _20_m76 : packoffset(c104);
    float4 _20_m77 : packoffset(c105);
    float4 _20_m78 : packoffset(c106);
    float4 _20_m79 : packoffset(c107);
    float4 _20_m80 : packoffset(c108);
    float4 _20_m81 : packoffset(c109);
    float4 _20_m82 : packoffset(c110);
    float4 _20_m83 : packoffset(c111);
    float4 _20_m84 : packoffset(c112);
    float4 _20_m85 : packoffset(c113);
    float4 _20_m86 : packoffset(c114);
    float4 _20_m87 : packoffset(c115);
    float4 _20_m88 : packoffset(c116);
    float4 _20_m89 : packoffset(c117);
    float4 _20_m90 : packoffset(c118);
    float4 _20_m91 : packoffset(c119);
    float4 _20_m92 : packoffset(c120);
    float4 _20_m93 : packoffset(c121);
    float4 _20_m94 : packoffset(c122);
    float4 _20_m95 : packoffset(c123);
    float4 _20_m96 : packoffset(c124);
    float4 _20_m97 : packoffset(c125);
    float4 _20_m98 : packoffset(c126);
    float4 _20_m99[2] : packoffset(c127);
    float4 _20_m100[2] : packoffset(c129);
    float _20_m101 : packoffset(c131);
    float _20_m102 : packoffset(c131.y);
    float _20_m103 : packoffset(c131.z);
    float _20_m104 : packoffset(c131.w);
    float4 _20_m105 : packoffset(c132);
    float4 _20_m106 : packoffset(c133);
    float4 _20_m107 : packoffset(c134);
    float4 _20_m108 : packoffset(c135);
    float4 _20_m109 : packoffset(c136);
    float4 _20_m110 : packoffset(c137);
    float4 _20_m111 : packoffset(c138);
    float4 _20_m112 : packoffset(c139);
    float4 _20_m113 : packoffset(c140);
    float4 _20_m114 : packoffset(c141);
    float4 _20_m115 : packoffset(c142);
    float4 _20_m116 : packoffset(c143);
    float4 _20_m117 : packoffset(c144);
    float4 _20_m118 : packoffset(c145);
    float4 _20_m119 : packoffset(c146);
    float4 _20_m120 : packoffset(c147);
    float4 _20_m121 : packoffset(c148);
    float4 _20_m122 : packoffset(c149);
    float4 _20_m123 : packoffset(c150);
    float4 _20_m124 : packoffset(c151);
    float4 _20_m125 : packoffset(c152);
    float4 _20_m126 : packoffset(c153);
    float4 _20_m127 : packoffset(c154);
    float4 _20_m128 : packoffset(c155);
    float4 _20_m129 : packoffset(c156);
    float4 _20_m130 : packoffset(c157);
    float4 _20_m131 : packoffset(c158);
    float4 _20_m132 : packoffset(c159);
    float4 _20_m133 : packoffset(c160);
    float4 _20_m134 : packoffset(c161);
    column_major float4x4 _20_m135 : packoffset(c162);
    float4 _20_m136 : packoffset(c166);
    float4 _20_m137 : packoffset(c167);
    float4 _20_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _21_23 : register(b0)
{
    _22 _23_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _30 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _32 : register(t18);

uint4 _32_Load4(uint byte_offset)
{
    return asuint(_32[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _33_34 : register(b48)
{
    int _34_m0 : packoffset(c0);
    int _34_m1 : packoffset(c0.y);
    int _34_m2 : packoffset(c0.z);
    int _34_m3 : packoffset(c0.w);
    float _34_m4 : packoffset(c1);
    float _34_m5 : packoffset(c1.y);
    float _34_m6 : packoffset(c1.z);
    float _34_m7 : packoffset(c1.w);
    float _34_m8 : packoffset(c2);
    float _34_m9 : packoffset(c2.y);
    float _34_m10 : packoffset(c2.z);
    float _34_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _35_36 : register(b14)
{
    float4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c1);
    float4 _36_m2 : packoffset(c2);
    float4 _36_m3 : packoffset(c3);
    float4 _36_m4 : packoffset(c4);
    uint4 _36_m5 : packoffset(c5);
    float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _37_38 : register(b15)
{
    column_major float4x4 _38_m0[5] : packoffset(c0);
    float4 _38_m1[4] : packoffset(c20);
    float4 _38_m2[4] : packoffset(c24);
    float4 _38_m3[4] : packoffset(c28);
    float4 _38_m4 : packoffset(c32);
    float4 _38_m5 : packoffset(c33);
    float4 _38_m6 : packoffset(c34);
    float4 _38_m7 : packoffset(c35);
    float4 _38_m8 : packoffset(c36);
    float4 _38_m9[27] : packoffset(c37);
    column_major float4x4 _38_m10[56] : packoffset(c64);
    float4 _38_m11[56] : packoffset(c288);
    float4 _38_m12[56] : packoffset(c344);
    float4 _38_m13 : packoffset(c400);
    float4 _38_m14[47] : packoffset(c401);
    column_major float4x4 _38_m15[15] : packoffset(c448);
    float4 _38_m16[15] : packoffset(c508);
    float4 _38_m17[15] : packoffset(c523);
    float4 _38_m18[15] : packoffset(c538);
    float4 _38_m19 : packoffset(c553);
    float4 _38_m20 : packoffset(c554);
    float4 _38_m21[21] : packoffset(c555);
    column_major float4x4 _38_m22 : packoffset(c576);
    column_major float4x4 _38_m23 : packoffset(c580);
    float4 _38_m24 : packoffset(c584);
    float4 _38_m25 : packoffset(c585);
    float4 _38_m26 : packoffset(c586);
    float4 _38_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _48_49 : register(b0)
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
    float _49_m36 : packoffset(c15);
    float _49_m37 : packoffset(c15.y);
    float _49_m38 : packoffset(c15.z);
    float _49_m39 : packoffset(c15.w);
    float _49_m40 : packoffset(c16);
    float _49_m41 : packoffset(c16.y);
    float _49_m42 : packoffset(c16.z);
    float _49_m43 : packoffset(c16.w);
    float _49_m44 : packoffset(c17);
    float _49_m45 : packoffset(c17.y);
    float _49_m46 : packoffset(c17.z);
    float _49_m47 : packoffset(c17.w);
    float _49_m48 : packoffset(c18);
    float _49_m49 : packoffset(c18.y);
    float _49_m50 : packoffset(c18.z);
    float _49_m51 : packoffset(c18.w);
    float4 _49_m52 : packoffset(c19);
    float4 _49_m53 : packoffset(c20);
    float4 _49_m54 : packoffset(c21);
    float4 _49_m55 : packoffset(c22);
    float4 _49_m56 : packoffset(c23);
    float4 _49_m57 : packoffset(c24);
    float2 _49_m58 : packoffset(c25);
    float2 _49_m59 : packoffset(c25.z);
    float _49_m60 : packoffset(c26);
    float _49_m61 : packoffset(c26.y);
    float _49_m62 : packoffset(c26.z);
    float _49_m63 : packoffset(c26.w);
    float4 _49_m64 : packoffset(c27);
    float4 _49_m65 : packoffset(c28);
    float4 _49_m66 : packoffset(c29);
    float4 _49_m67 : packoffset(c30);
    float _49_m68 : packoffset(c31);
    float _49_m69 : packoffset(c31.y);
    float _49_m70 : packoffset(c31.z);
    float _49_m71 : packoffset(c31.w);
    float _49_m72 : packoffset(c32);
    float _49_m73 : packoffset(c32.y);
    float _49_m74 : packoffset(c32.z);
    float _49_m75 : packoffset(c32.w);
};

[[vk::binding(50, 0)]]
cbuffer _64_65 : register(b50)
{
    float4 _65_m0[32] : packoffset(c0);
    column_major float4x4 _65_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _25 : register(s6);
[[vk::binding(4, 0)]] SamplerState _26 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _39 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _42 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _43 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _44 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _45 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _46 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _47 : register(t30);
[[vk::binding(6, 1)]] Texture2D<float4> _50 : register(t6);
[[vk::binding(3, 1)]] Texture2D<float4> _51 : register(t3);
[[vk::binding(44, 0)]] Texture2D<float4> _52 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _53 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(8, 1)]] Texture2D<float4> _55 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _56 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _57 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _58 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _60 : register(t45);
[[vk::binding(1, 1)]] Texture2D<float4> _61 : register(t1);
[[vk::binding(2, 1)]] Texture2D<float4> _62 : register(t2);
[[vk::binding(29, 0)]] Texture2D<float4> _63 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _68 : register(t36);

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
static float3 _11 = (float3)0;
static uint _13 = (uint)0;
static float4 _15 = (float4)0;
static float4 _16 = (float4)0;

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
    [[vk::location(8)]] float3 _11 : TEXCOORD8;
    [[vk::location(9)]] nointerpolation uint _13 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _15 : SV_Target0;
    [[vk::location(1)]] float4 _16 : SV_Target1;
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
    float _444 = 1.0f / gl_FragCoord.w;
    float3 _459 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _460 = dot(_459, _459);
    float _462 = rsqrt(max(_460, 9.9999999392252902907785028219223e-09f));
    float3 _463 = _459 * _462;
    float _464 = _460 * _462;
    uint _467 = asuint(_23_m0[_13]._m2.x);
    bool _472 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _485;
    float4 _486;
    if (_472)
    {
        _485 = asfloat(_32_Load4((_467 + 2u) * 16 + 0));
        _486 = asfloat(_32_Load4(_467 * 16 + 0));
    }
    else
    {
        _485 = _23_m0[_13]._m0[2];
        _486 = _23_m0[_13]._m0[0];
    }
    float4 _498 = _55.SampleBias(_26, _3 + (_49_m58 * _20_m75.w), _20_m16);
    float3 _503 = _498.xyz * _49_m24.xyz;
    float4 _507 = _56.SampleBias(_26, _3, _20_m16);
    float _508 = _507.x;
    float _510 = _507.z;
    float _512 = 1.0f - _507.w;
    float3 _521 = _503 * _49_m18;
    float3 _525 = lerp(dot(_521, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _521, _49_m19.xxx);
    float4 _529 = _57.SampleBias(_26, _3, _20_m16);
    _529.w = _529.w * _529.x;
    float2 _538 = (_529.wy * 2.0f) - 1.0f.xx;
    float3 _539 = float3(_538.x, _538.y, _425.z);
    float2 _540 = _538.xy;
    _539.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_540, _540), 0.0f, 1.0f)));
    float2 _548 = _539.xy * _49_m3;
    float4 _557 = _58.SampleBias(_26, _3 + (_49_m59 * _20_m75.w), _20_m16);
    float3 _587 = _4 + _18_m11.xyz;
    float3 _591 = _587 - float3(_486.w, _427, _485.w);
    _591.y = 6.103515625e-05f;
    float3 _594 = normalize(_591);
    float3 _602 = _5 * 1.0f;
    float3 _604 = mul(float3(_548.x, _548.y, _539.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _602));
    float _613 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _614 = (_604 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_604, _604)))) * _613;
    float3 _615 = normalize(_5) * _613;
    uint2 _617 = uint2(gl_FragCoord.xy);
    float3 _627 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _636 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _649 = float4(float(_636 & 255u), float((_636 >> 8u) & 255u), float((_636 >> 16u) & 255u), float((_636 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _650 = _649.x;
    float _653 = _649.w;
    float _659 = _587.y;
    float _662 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _659) * _649.y;
    float _663 = max(_649.z, _662);
    float _672 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1166;
    float3 _1167;
    float3 _1168;
    float _1169;
    if (_20_m80.y < 0.5f)
    {
        float3 _687 = _587 - (_20_m105.xyz + (_627 * (-_20_m107.w)));
        float _701 = max(clamp((max(abs(_687.x), abs(_687.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_687.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1003;
        float4 _1004;
        float4 _1005;
        float _1006;
        float _1007;
        if ((_20_m105.w != 0.0f) && (_701 < 1.0f))
        {
            float3 _714 = _587 - (_20_m105.xyz + (_627 * (-_20_m107.y)));
            float _728 = max(clamp((max(abs(_714.x), abs(_714.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_714.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _804;
            float4 _805;
            float4 _806;
            float4 _807;
            if (_728 < 1.0f)
            {
                float3 _737 = ((_587 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _739 = _737 - floor(_737);
                float4 _743 = _42.SampleLevel(_26, _739, 0.0f);
                float _744 = 1.0f - _728;
                float _748 = _20_m106.y * 0.5f;
                float _753 = _739.x;
                float _754 = clamp(_739.y, _748, 1.0f - _748) * 0.3333333432674407958984375f;
                float _755 = _739.z;
                float4 _758 = _43.SampleLevel(_25, float3(_753, _754, _755), 0.0f);
                float _774 = _743.x;
                float _784 = _743.y;
                float _794 = _743.z;
                _804 = _701 + (_758.w * _744);
                _805 = float4(((_43.SampleLevel(_25, float3(_753, _754 + 0.666666686534881591796875f, _755), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _794, _794) * _744;
                _806 = float4(((_43.SampleLevel(_25, float3(_753, _754 + 0.3333333432674407958984375f, _755), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _784, _784) * _744;
                _807 = float4(((_758.xyz * 4.0f) - 2.0f.xxx) * _774, _774) * _744;
            }
            else
            {
                _804 = _701;
                _805 = 0.0f.xxxx;
                _806 = 0.0f.xxxx;
                _807 = 0.0f.xxxx;
            }
            float3 _813 = _587 - (_20_m105.xyz + (_627 * (-_20_m107.z)));
            float _827 = max(clamp((max(abs(_813.x), abs(_813.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_813.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _907;
            float4 _908;
            float4 _909;
            float4 _910;
            if (_827 < 1.0f)
            {
                float3 _836 = ((_587 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _838 = _836 - floor(_836);
                float4 _842 = _44.SampleLevel(_26, _838, 0.0f);
                float _844 = _728 * (1.0f - _827);
                float _848 = _20_m106.y * 0.5f;
                float _853 = _838.x;
                float _854 = clamp(_838.y, _848, 1.0f - _848) * 0.3333333432674407958984375f;
                float _855 = _838.z;
                float4 _858 = _45.SampleLevel(_25, float3(_853, _854, _855), 0.0f);
                float _874 = _842.x;
                float _885 = _842.y;
                float _896 = _842.z;
                _907 = _804 + (_858.w * _844);
                _908 = _805 + (float4(((_45.SampleLevel(_25, float3(_853, _854 + 0.666666686534881591796875f, _855), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _896, _896) * _844);
                _909 = _806 + (float4(((_45.SampleLevel(_25, float3(_853, _854 + 0.3333333432674407958984375f, _855), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _885, _885) * _844);
                _910 = _807 + (float4(((_858.xyz * 4.0f) - 2.0f.xxx) * _874, _874) * _844);
            }
            else
            {
                _907 = _804;
                _908 = _805;
                _909 = _806;
                _910 = _807;
            }
            float4 _993;
            float4 _994;
            float4 _995;
            float _996;
            if (_827 > 0.0f)
            {
                float3 _919 = ((_587 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _922 = _20_m106.xyz * 0.5f;
                float3 _924 = clamp(_919 - floor(_919), _922, 1.0f.xxx - _922);
                float4 _928 = _46.SampleLevel(_26, _924, 0.0f);
                float _930 = _827 * (1.0f - _701);
                float _934 = _20_m106.y * 0.5f;
                float _939 = _924.x;
                float _940 = clamp(_924.y, _934, 1.0f - _934) * 0.3333333432674407958984375f;
                float _941 = _924.z;
                float4 _944 = _47.SampleLevel(_25, float3(_939, _940, _941), 0.0f);
                float _960 = _928.x;
                float _971 = _928.y;
                float _982 = _928.z;
                _993 = _908 + (float4(((_47.SampleLevel(_25, float3(_939, _940 + 0.666666686534881591796875f, _941), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _982, _982) * _930);
                _994 = _909 + (float4(((_47.SampleLevel(_25, float3(_939, _940 + 0.3333333432674407958984375f, _941), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _971, _971) * _930);
                _995 = _910 + (float4(((_944.xyz * 4.0f) - 2.0f.xxx) * _960, _960) * _930);
                _996 = _907 + (_944.w * _930);
            }
            else
            {
                _993 = _908;
                _994 = _909;
                _995 = _910;
                _996 = _907;
            }
            float _999 = clamp((_996 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1003 = _993;
            _1004 = _994;
            _1005 = _995;
            _1006 = _999 - _701;
            _1007 = (_999 + _701) * 0.5f;
        }
        else
        {
            _1003 = 0.0f.xxxx;
            _1004 = 0.0f.xxxx;
            _1005 = 0.0f.xxxx;
            _1006 = 0.0f;
            _1007 = 1.0f;
        }
        float4 _1027 = _1005 + float4(_20_m108.x * _1007, (_20_m108.y * _1007) + ((_20_m108.w * _1006) * 0.5f), _20_m108.z * _1007, (_20_m108.w * _1007) + ((_20_m108.y * _1006) * 0.375f));
        float4 _1047 = _1004 + float4(_20_m109.x * _1007, (_20_m109.y * _1007) + ((_20_m109.w * _1006) * 0.5f), _20_m109.z * _1007, (_20_m109.w * _1007) + ((_20_m109.y * _1006) * 0.375f));
        float4 _1067 = _1003 + float4(_20_m110.x * _1007, (_20_m110.y * _1007) + ((_20_m110.w * _1006) * 0.5f), _20_m110.z * _1007, (_20_m110.w * _1007) + ((_20_m110.y * _1006) * 0.375f));
        float4 _1071 = float4(_614, 1.0f);
        float3 _1077 = max(float3(dot(_1027, _1071), dot(_1047, _1071), dot(_1067, _1071)), 0.0f.xxx) * _672;
        float3 _1085 = ((_1027.xyz * 0.2125999927520751953125f) + (_1047.xyz * 0.715200006961822509765625f)) + (_1067.xyz * 0.072200000286102294921875f);
        float3 _1089 = _1085 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1085, _1085)));
        float _1091 = abs(_1089.y);
        float3 _1092 = _1089;
        _1092.y = _1091;
        float4 _1093 = float4(_1092.x, _1092.y, _1092.z, 0.0f.xxxx.w);
        _1093.w = 1.0f;
        float4 _1097 = float4(_1089.x, _1091, _1089.z, 1.0f);
        float3 _1102 = max(float3(dot(_1027, _1097), dot(_1047, _1097), dot(_1067, _1097)), 0.0f.xxx);
        float _1110 = _1077.z;
        float _1111 = _1077.y;
        float4 _1116 = lerp(float4(_1110, _1111, -1.0f, 0.666666686534881591796875f), float4(_1111, _1110, 0.0f, -0.3333333432674407958984375f), step(_1110, _1111).xxxx);
        float _1117 = _1077.x;
        float _1118 = _1116.x;
        float4 _1126 = lerp(float4(_1118, _1116.yw, _1117), float4(_1117, _1116.yz, _1118), step(_1118, _1117).xxxx);
        float _1127 = _1126.x;
        float _1128 = _1126.w;
        float _1129 = _1126.y;
        float _1131 = _1127 - min(_1128, _1129);
        float _1141 = frac(abs(_1126.z + ((_1128 - _1129) / ((6.0f * _1131) + 9.9999997473787516355514526367188e-05f))));
        float _1148 = min(_1131 / (_1127 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1141 - 0.5f))) * clamp(_1127, 0.0f, 1.0f));
        float _1150 = 2.0f / (2.0f - _1148);
        _1166 = _1093;
        _1167 = _1077;
        _1168 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1141, _1148, _1150).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1148.xxx) * _1150;
        _1169 = max(max(max(_1102.x, _1102.y), _1102.z), 0.0f) * _672;
    }
    else
    {
        _1166 = 0.0f.xxxx;
        _1167 = 1.0f.xxx;
        _1168 = _20_m81.xyz;
        _1169 = _672;
    }
    float3 _1889;
    float _1890;
    float _1891;
    float _1892;
    float3 _1893;
    float3 _1894;
    [branch]
    if ((clamp(_650 + _663, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1197 = 1.0f - _508;
        float _1200 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_503 * _1197, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1203 = _472.xxx;
        float3 _1205 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1209 = float3(_1203.x ? _1205.x : _11.x, _1203.y ? _1205.y : _11.y, _1203.z ? _1205.z : _11.z) * _20_m89.z;
        float3 _1211 = float3(_1203.x ? _10.xzy.x : _10.x, _1203.y ? _10.xzy.y : _10.y, _1203.z ? _10.xzy.z : _10.z);
        float3 _1213 = abs(_1211) - 0.20000000298023223876953125f.xxx;
        float3 _1216 = max((_1213 * _1213) * _1213, 6.103515625e-05f.xxx);
        float3 _1219 = _1216 / dot(_1216, 1.0f.xxx).xxx;
        float2 _1227 = _1209.xy;
        float2 _1232 = _1209.zy;
        float4 _1242 = ((_52.SampleBias(_26, _1209.xz, _20_m16) * _1219.y) + (_52.SampleBias(_26, _1227, _20_m16) * _1219.z)) + (_52.SampleBias(_26, _1232, _20_m16) * _1219.x);
        float _1243 = _1242.w;
        float _1245 = 1.10000002384185791015625f - _1243;
        float _1254 = max(smoothstep(0.800000011920928955078125f - _1243, _1245, clamp((_650 * _1197) + (_614.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1243, _1245, clamp(_662 * _1197, 0.0f, 1.0f)));
        float _1261 = smoothstep(0.5f, 0.75f, _508);
        float _1263 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _512) * _1200;
        float _1266 = clamp(_1263 + _1261, 0.0f, 1.0f) * max(_650, _663);
        bool _1270 = !((step(_650, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _663)) != 0.0f);
        bool2 _1271 = _1270.xx;
        float2 _1273 = (1.0f - _663).xx;
        float2 _1274 = float2(_1271.x ? float2(3.0f, 4.345600128173828125f).x : _1273.x, _1271.y ? float2(3.0f, 4.345600128173828125f).y : _1273.y);
        float _1275 = 1.0f - _1266;
        float _1278 = _1270 ? _20_m10.x : 1.0f;
        float _1280 = _1278 * _1274.x;
        float _1282 = _1278 * _1274.y;
        float3 _1283 = _1209 * 20.0f;
        float3 _1284 = _1209 * 34.345600128173828125f;
        float3 _1286 = pow(max(_1213, 0.0f.xxx), 10.0f.xxx);
        float3 _1290 = _1286 / max(dot(_1286, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1292 = _1290.y;
        float2 _1293 = _1283.xz * 1.0f;
        float2 _1294 = floor(_1293);
        float2 _1297 = frac(_1294 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1301 = _1297 + dot(_1297, _1297 + 34.345001220703125f.xx).xx;
        float _1302 = _1301.x;
        float _1303 = _1301.y;
        float2 _1307 = frac(float2(_1302 * _1303, _1302 + _1303));
        float2 _1310 = frac((_1294 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1314 = _1310 + dot(_1310, _1310 + 34.345001220703125f.xx).xx;
        float _1315 = _1314.x;
        float _1316 = _1314.y;
        float2 _1320 = frac(float2(_1315 * _1316, _1315 + _1316));
        float _1326 = _1307.x;
        float _1328 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1326);
        float2 _1329 = ((_1293 - _1294) + ((((_1320 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1332 = _1329.y;
        float2 _1336 = float2(_1329.x * 1.25f, _1332 * ((_1332 < 0.0f) ? 1.25f : 0.75f));
        float _1339 = _1280 + _1326;
        float _1343 = _1270 ? frac(_1339) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1339, 0.0f, 1.0f));
        float _1355 = _1307.y;
        float _1358 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1343) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1343)) * step(0.001000000047497451305389404296875f, smoothstep(_1328, 0.0f, length(_1336)))) * step(_1275, _1355 - 0.100000001490116119384765625f);
        float _1361 = _1358 * _1292;
        float _1369 = _1290.z;
        float2 _1370 = _1283.xy * 1.0f;
        float2 _1371 = floor(_1370);
        float2 _1374 = frac(_1371 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1378 = _1374 + dot(_1374, _1374 + 34.345001220703125f.xx).xx;
        float _1379 = _1378.x;
        float _1380 = _1378.y;
        float2 _1384 = frac(float2(_1379 * _1380, _1379 + _1380));
        float2 _1387 = frac((_1371 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1391 = _1387 + dot(_1387, _1387 + 34.345001220703125f.xx).xx;
        float _1392 = _1391.x;
        float _1393 = _1391.y;
        float2 _1397 = frac(float2(_1392 * _1393, _1392 + _1393));
        float _1403 = _1384.x;
        float _1405 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1403);
        float2 _1406 = ((_1370 - _1371) + ((((_1397 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1409 = _1406.y;
        float2 _1413 = float2(_1406.x * 1.25f, _1409 * ((_1409 < 0.0f) ? 1.25f : 0.75f));
        float _1416 = _1280 + _1403;
        float _1420 = _1270 ? frac(_1416) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1416, 0.0f, 1.0f));
        float _1432 = _1384.y;
        float _1435 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1420) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1420)) * step(0.001000000047497451305389404296875f, smoothstep(_1405, 0.0f, length(_1413)))) * step(_1275, _1432 - 0.100000001490116119384765625f);
        float _1438 = _1435 * _1369;
        float _1446 = _1290.x;
        float2 _1447 = _1283.zy * 1.0f;
        float2 _1448 = floor(_1447);
        float2 _1451 = frac(_1448 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1455 = _1451 + dot(_1451, _1451 + 34.345001220703125f.xx).xx;
        float _1456 = _1455.x;
        float _1457 = _1455.y;
        float2 _1461 = frac(float2(_1456 * _1457, _1456 + _1457));
        float2 _1464 = frac((_1448 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1468 = _1464 + dot(_1464, _1464 + 34.345001220703125f.xx).xx;
        float _1469 = _1468.x;
        float _1470 = _1468.y;
        float2 _1474 = frac(float2(_1469 * _1470, _1469 + _1470));
        float _1480 = _1461.x;
        float _1482 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1480);
        float2 _1483 = ((_1447 - _1448) + ((((_1474 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1486 = _1483.y;
        float2 _1490 = float2(_1483.x * 1.25f, _1486 * ((_1486 < 0.0f) ? 1.25f : 0.75f));
        float _1493 = _1280 + _1480;
        float _1497 = _1270 ? frac(_1493) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1493, 0.0f, 1.0f));
        float _1509 = _1461.y;
        float _1512 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1497) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1497)) * step(0.001000000047497451305389404296875f, smoothstep(_1482, 0.0f, length(_1490)))) * step(_1275, _1509 - 0.100000001490116119384765625f);
        float _1515 = _1512 * _1446;
        float2 _1528 = (float4(((clamp(_1336 / _1328.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1320.x)) * _1358) * _1292, _1361, _1355).xy + float4(((clamp(_1413 / _1405.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1397.x)) * _1435) * _1369, _1438, _1432).xy) + float4(((clamp(_1490 / _1482.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1474.x)) * _1512) * _1446, _1515, _1509).xy;
        float _1530 = max(_1515, max(_1361, _1438));
        float4 _1533 = float4(_1528, _1530, 0.0f);
        float2 _1535 = _1284.xz * 1.0f;
        float2 _1536 = floor(_1535);
        float2 _1539 = frac(_1536 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1543 = _1539 + dot(_1539, _1539 + 34.345001220703125f.xx).xx;
        float _1544 = _1543.x;
        float _1545 = _1543.y;
        float2 _1549 = frac(float2(_1544 * _1545, _1544 + _1545));
        float2 _1552 = frac((_1536 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1556 = _1552 + dot(_1552, _1552 + 34.345001220703125f.xx).xx;
        float _1557 = _1556.x;
        float _1558 = _1556.y;
        float2 _1562 = frac(float2(_1557 * _1558, _1557 + _1558));
        float _1568 = _1549.x;
        float _1570 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1568);
        float2 _1571 = ((_1535 - _1536) + ((((_1562 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1574 = _1571.y;
        float2 _1578 = float2(_1571.x * 1.25f, _1574 * ((_1574 < 0.0f) ? 1.25f : 0.75f));
        float _1581 = _1282 + _1568;
        float _1585 = _1270 ? frac(_1581) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1581, 0.0f, 1.0f));
        float _1597 = _1549.y;
        float _1600 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1585) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1585)) * step(0.001000000047497451305389404296875f, smoothstep(_1570, 0.0f, length(_1578)))) * step(_1275, _1597 - 0.100000001490116119384765625f);
        float _1603 = _1600 * _1292;
        float2 _1608 = _1284.xy * 1.0f;
        float2 _1609 = floor(_1608);
        float2 _1612 = frac(_1609 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1616 = _1612 + dot(_1612, _1612 + 34.345001220703125f.xx).xx;
        float _1617 = _1616.x;
        float _1618 = _1616.y;
        float2 _1622 = frac(float2(_1617 * _1618, _1617 + _1618));
        float2 _1625 = frac((_1609 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1629 = _1625 + dot(_1625, _1625 + 34.345001220703125f.xx).xx;
        float _1630 = _1629.x;
        float _1631 = _1629.y;
        float2 _1635 = frac(float2(_1630 * _1631, _1630 + _1631));
        float _1641 = _1622.x;
        float _1643 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1641);
        float2 _1644 = ((_1608 - _1609) + ((((_1635 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1647 = _1644.y;
        float2 _1651 = float2(_1644.x * 1.25f, _1647 * ((_1647 < 0.0f) ? 1.25f : 0.75f));
        float _1654 = _1282 + _1641;
        float _1658 = _1270 ? frac(_1654) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1654, 0.0f, 1.0f));
        float _1670 = _1622.y;
        float _1673 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1658) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1658)) * step(0.001000000047497451305389404296875f, smoothstep(_1643, 0.0f, length(_1651)))) * step(_1275, _1670 - 0.100000001490116119384765625f);
        float _1676 = _1673 * _1369;
        float2 _1681 = _1284.zy * 1.0f;
        float2 _1682 = floor(_1681);
        float2 _1685 = frac(_1682 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1689 = _1685 + dot(_1685, _1685 + 34.345001220703125f.xx).xx;
        float _1690 = _1689.x;
        float _1691 = _1689.y;
        float2 _1695 = frac(float2(_1690 * _1691, _1690 + _1691));
        float2 _1698 = frac((_1682 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1702 = _1698 + dot(_1698, _1698 + 34.345001220703125f.xx).xx;
        float _1703 = _1702.x;
        float _1704 = _1702.y;
        float2 _1708 = frac(float2(_1703 * _1704, _1703 + _1704));
        float _1714 = _1695.x;
        float _1716 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1714);
        float2 _1717 = ((_1681 - _1682) + ((((_1708 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1720 = _1717.y;
        float2 _1724 = float2(_1717.x * 1.25f, _1720 * ((_1720 < 0.0f) ? 1.25f : 0.75f));
        float _1727 = _1282 + _1714;
        float _1731 = _1270 ? frac(_1727) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1727, 0.0f, 1.0f));
        float _1743 = _1695.y;
        float _1746 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1731) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1731)) * step(0.001000000047497451305389404296875f, smoothstep(_1716, 0.0f, length(_1724)))) * step(_1275, _1743 - 0.100000001490116119384765625f);
        float _1749 = _1746 * _1446;
        float2 _1757 = (float4(((clamp(_1578 / _1570.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1562.x)) * _1600) * _1292, _1603, _1597).xy + float4(((clamp(_1651 / _1643.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1635.x)) * _1673) * _1369, _1676, _1670).xy) + float4(((clamp(_1724 / _1716.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1708.x)) * _1746) * _1446, _1749, _1743).xy;
        float4 _1762 = float4(_1757, max(_1749, max(_1603, _1676)), 0.0f);
        float _1764 = step(max(float2(_1328 * _1358, _427) * _1292, max(float2(_1405 * _1435, _427) * _1369, float2(_1482 * _1512, _427) * _1446)).x, 0.00999999977648258209228515625f);
        float2 _1768 = _1533.xy + (_1762.xy * _1764);
        float3 _1777 = float3((_1242.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1768.x, _1768.y, 0.0f.xxx.z);
        float2 _1781 = float2(0.0f, (_20_m10.x * _20_m89.z) * 0.75f);
        float3 _1784 = float3(_1211.x, 0.0f, _1211.z);
        float3 _1790 = abs(_1784 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1784, _1784)))) - 0.20000000298023223876953125f.xxx;
        float3 _1793 = max((_1790 * _1790) * _1790, 6.103515625e-05f.xxx);
        float3 _1796 = _1793 / dot(_1793, 1.0f.xxx).xxx;
        float _1815 = _1796.z;
        float _1817 = _1796.x;
        float4 _1819 = (_53.SampleBias(_26, _1227, _20_m16) * _1815) + (_53.SampleBias(_26, _1232, _20_m16) * _1817);
        float2 _1831 = _1777.xy + ((((_1819.xy * 2.0f) - 1.0f.xx) * ((_53.SampleBias(_26, _1227 + _1781, _20_m16).w * _1815) + (_53.SampleBias(_26, _1232 + _1781, _20_m16).w * _1817))) * _1266);
        float3 _1832 = float3(_1831.x, _1831.y, _1777.z);
        float _1833 = _1819.z;
        float _1838 = max(max(max(_1533.zw * step(0.00999999977648258209228515625f, _1530), _1762.zw * _1764).x, step(1.0099999904632568359375f - _1266, _1242.z)), smoothstep(1.0f - _1833, 1.10000002384185791015625f - _1833, _1266) * _1266);
        float2 _1839 = _1831.xy;
        _1832.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1839, _1839), 0.0f, 1.0f)));
        float3 _1846 = normalize(_1832);
        float3 _1847 = cross(_614, float3(0.0f, 1.0f, 0.0f));
        bool3 _1850 = (dot(_1847, _1847) > 6.103515625e-05f).xxx;
        float3 _1851 = normalize(_1847);
        float3 _1852 = float3(_1850.x ? _1851.x : float3(1.0f, 0.0f, 0.0f).x, _1850.y ? _1851.y : float3(1.0f, 0.0f, 0.0f).y, _1850.z ? _1851.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1863 = min(_512, 0.0500000007450580596923828125f);
        float _1864 = lerp(_512, _1863, _1838);
        float _1881 = lerp(1.0f, 0.5f, (_1254 * (1.0f - _1200)) * (1.0f - _1263));
        _1889 = normalize(lerp(_614, normalize(((_1852 * _1846.x) + (cross(_1852, _614) * _1846.y)) + (_614 * _1846.z)), _1838.xxx));
        _1890 = _1838;
        _1891 = _1863;
        _1892 = max(_1864 - ((0.20000000298023223876953125f * _1200) * _1254), min(0.20000000298023223876953125f, _1864));
        _1893 = _525 * _1881;
        _1894 = lerp(_503, _503 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_503, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1838 * _1261).xxx) * _1881;
    }
    else
    {
        _1889 = _614;
        _1890 = 0.0f;
        _1891 = 0.00999999977648258209228515625f;
        _1892 = _512;
        _1893 = _525;
        _1894 = _503;
    }
    float3 _2024;
    float _2025;
    float3 _2026;
    float3 _2027;
    float _2028;
    [branch]
    if ((_653 - _49_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1899 = _472.xxx;
        float3 _1901 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1902 = float3(_1899.x ? _1901.x : _11.x, _1899.y ? _1901.y : _11.y, _1899.z ? _1901.z : _11.z);
        float3 _1905 = _1902 * _20_m89.z;
        float3 _1907 = float3(_1899.x ? _10.xzy.x : _10.x, _1899.y ? _10.xzy.y : _10.y, _1899.z ? _10.xzy.z : _10.z);
        float3 _1909 = abs(_1907) - 0.20000000298023223876953125f.xxx;
        float3 _1912 = max((_1909 * _1909) * _1909, 6.103515625e-05f.xxx);
        float3 _1915 = _1912 / dot(_1912, 1.0f.xxx).xxx;
        float4 _1938 = ((_54.SampleBias(_26, _1905.xz, _20_m16) * _1915.y) + (_54.SampleBias(_26, _1905.xy, _20_m16) * _1915.z)) + (_54.SampleBias(_26, _1905.zy, _20_m16) * _1915.x);
        float _1939 = _1907.y;
        float _1946 = clamp(_653 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1902.y) * clamp(_653 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1952 = _1946 * (2.0f - _1946);
        float _1959 = smoothstep(2.0f - _1952, 2.349999904632568359375f - _1952, ((_1939 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1938.z) * ((_510 * _510) * float(gl_FrontFacing));
        float _1971 = lerp(1.0f, 0.5f, ((_1946 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1894 * (1.0f - _508), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1938.w) * ((_1939 * 0.25f) + 0.75f));
        float3 _1973 = _1959.xxx;
        float2 _1979 = (_1938.xy * 2.0f) - 1.0f.xx;
        float3 _1980 = float3(_1979.x, _1979.y, _425.z);
        float2 _1981 = _1979.xy;
        _1980.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1981, _1981), 0.0f, 1.0f)));
        float2 _1989 = _1980.xy * 2.0f;
        float3 _1991 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1989.x, _1989.y, _1980.z), _1973);
        float3 _1995 = _1991 * rsqrt(max(6.103515625e-05f, dot(_1991, _1991)));
        float _1996 = _614.y;
        float _1999 = step(0.00999999977648258209228515625f, 1.0f - (_1996 * _1996));
        float _2003 = lerp(_614.z, _1996, _1999);
        float3 _2010 = (float3(0.0f, _1999, 1.0f - _1999) - (_614 * _2003)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2003 * _2003)));
        _2024 = ((cross(_2010, _614) * _1995.x) + (_2010 * _1995.y)) + (_614 * _1995.z);
        _2025 = lerp(_1892, 0.89999997615814208984375f, clamp(_1959 * 4.0f, 0.0f, 1.0f));
        _2026 = lerp(_1893 * _1971, 0.3079999983310699462890625f.xxx, _1973);
        _2027 = lerp(_1894 * _1971, 0.87999999523162841796875f.xxx, _1973);
        _2028 = lerp(_508, 0.0f, _1959);
    }
    else
    {
        _2024 = _614;
        _2025 = _1892;
        _2026 = _1893;
        _2027 = _1894;
        _2028 = _508;
    }
    float3 _2034 = _49_m55.xyz * _49_m42;
    float4 _2035 = float4(_2034.x, _2034.y, _2034.z, _49_m55.w);
    _2035.w = _49_m55.w * _49_m43;
    float2 _2082;
    if (_49_m41 > 1.5f)
    {
        float2 _2054 = ((float2(_617) / _20_m5.xy) * 2.0f) - 1.0f.xx;
        _2082 = float2(_2054.x, (_2054.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _49_m51);
    }
    else
    {
        _2082 = lerp(_3, _7, _49_m41.xx);
    }
    float4 _2097 = _62.SampleBias(_26, ((_2082 + (_49_m52.zw * _20_m75.w)) * _49_m57.xy) + _49_m57.zw, _20_m16);
    float _2100 = _2097.x;
    float4 _2116 = _61.SampleBias(_26, (((_2082 + (_49_m50 * _2100).xx) + (_49_m52.xy * _20_m75.w)) * _49_m56.xy) + _49_m56.zw, _20_m16);
    float4 _2123 = _2035 * lerp(_2116, float4(1.0f, 1.0f, 1.0f, _2116.x), _49_m40.xxxx);
    float _2126 = _2123.w;
    float _2139 = _2100 - ((_49_m49 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _2141 = clamp(-_2139, 0.0f, 1.0f);
    float _2143 = _2126 * clamp(_2139, 0.0f, 1.0f);
    float _2148 = (_498.w * _49_m24.w) * ((_49_m47 > 0.5f) ? _2143 : 1.0f);
    bool3 _2160 = (_49_m48 < 0.5f).xxx;
    float _2174 = pow(clamp(dot(_463, float3(_2160.x ? _602.x : _2024.x, _2160.y ? _602.y : _2024.y, _2160.z ? _602.z : _2024.z).xyz) + _49_m36, 0.0f, 1.0f), _49_m38);
    float _2176 = lerp(1.0f - _2174, _2174, _49_m39);
    float _2192 = 0.959999978542327880859375f - (_2028 * 0.959999978542327880859375f);
    float3 _2193 = _2027 * _2192;
    float3 _2196 = lerp(0.039999999105930328369140625f.xxx * _507.y, _2027, _2028.xxx);
    float3 _2197 = _2026 * _2192;
    float _2199 = max(_2025 * _2025, 0.0078125f);
    float _2200 = _2199 * _2199;
    bool _2207 = (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) < 0.9900000095367431640625f;
    float2 _2220 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _2220.y = -_2220.y;
    float2 _2236 = lerp(((sqrt(sqrt(abs(_2220 * 0.5f))) * float2(int2(sign(_2220)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2207).xx);
    float4 _2238 = float4(_2236.x, _2236.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2238.z = 1.0f;
    _2238.w = _2207 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2251 = lerp(-_36_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2255 = normalize(float3(_2251.x, 6.103515625e-05f, _2251.z));
    float3 _2265 = lerp(_36_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2269 = _2265 * lerp(_36_m3.w, 1.0f, _20_m91.w);
    int _2273 = int(_617.x);
    int _2274 = int(_617.y);
    float4 _2278 = _40.Load(int3(int3(_2273, _2274, 0).xy, 0));
    float _2283 = _2278.y;
    float _2286 = lerp(lerp(1.0f, _2278.x, _38_m6.x), 1.0f, _20_m80.z);
    float _2287 = dot(_2024, _2251);
    float3 _2294 = _2197 * _20_m79.z;
    float3 _2295 = _2294 * 0.64999997615814208984375f;
    float _2299 = dot(_2193, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2312 = clamp(-dot(_2255.xz, normalize(_627.xz)), 0.0f, 1.0f);
    float _2316 = 1.0f - _20_m91.x;
    float4 _2330 = _50.SampleLevel(_25, float2((clamp(lerp(_2287, ((-_2287) * ((_2287 * 0.5f) - 1.0f)) + 0.5f, (_2312 * smoothstep(0.25f, 0.75f, 1.0f - abs(_627.y))) * _2316) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2331 = _2330.w;
    float _2333 = _2330.x;
    float _2334 = _2330.y;
    float _2335 = _2330.z;
    float _2340 = max(max(_2333, _2334), _2335) - min(min(_2333, _2334), _2335);
    float4 _2348 = _50.SampleLevel(_25, float2((dot(_2024, _627) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2349 = _2348.w;
    float _2350 = _510 * _2283;
    float _2357 = min(min(_2283, _510), _2331);
    float _2358 = _2349 * _2350;
    float3 _2362 = ((clamp(dot(_614, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1168, 1.0f.xxx, (_20_m80.y * _2357).xxx);
    float3 _2364 = _2357.xxx;
    float3 _2387 = _2286.xxx;
    float3 _2388 = lerp((_2362 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1169), 1.5f), clamp(_1169, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2269, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2269, _2364) + ((_2362 * clamp(_1169, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2265 * _20_m91.y)))) * _20_m79.y, _2387);
    float3 _2389 = lerp(lerp(lerp(dot(_2295, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2295, 1.2000000476837158203125f.xxx), _2294, clamp((_2350 * _2349) + _2331, 0.0f, 1.0f).xxx), _2193, _2364);
    float3 _2395 = _2389 * ((1.0f - _2340).xxx + (_2330.xyz * _2340));
    float3 _2404 = lerp(lerp(_2294, lerp(_2299.xxx, _2193, 1.2000000476837158203125f.xxx), _2358.xxx), _2395 * clamp(dot(_2389, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2395, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2387);
    float4 _2408 = float4(_2404, _2286);
    float _2410 = lerp(_2358, _2357, _2286);
    float _2413 = lerp(_20_m79.z, 1.0f, _2410);
    float3 _2421 = float3(_627.x, lerp(0.5f, _2251.y, _2286), _627.z);
    float _2434 = clamp(dot(_1889, _463), 0.0f, 1.0f);
    float _2435 = dot(_1889, normalize(((_2251 * _2286) + ((_2421 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2421, _2421)))) * 2.0f)) + (_463 * (2.0f + _2286))));
    float _2439 = (((_2435 * _2200) - _2435) * _2435) + 1.0f;
    float _2440 = _2439 * _2439;
    float _2443 = (_2200 != _2440) ? (_2200 / _2440) : 1.0f;
    float _2444 = 2.0f * _2434;
    float _2446 = (1.0f + _2434) - _2434;
    float _2455 = _2434 * _2434;
    float3 _2467 = _2196 * _51.SampleLevel(_25, float2(lerp(_2443 / min(1.0f / (_2200 + 9.9999997473787516355514526367188e-05f), 65504.0f), _2455, _49_m4), _2025 * (1.0f - _2028)), 0.0f).xyz;
    float3 _2469 = lerp(_2196, _2467, _49_m4.xxx);
    float _2482 = (1.0f - _49_m6) + (_2148 * _49_m6);
    float3 _2484 = ((_2388 * _2404) * _2482) + (((_2467 * clamp((_2443 * (0.5f / ((_2444 + (_2199 * _2446)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2388 * (((_2410 * 0.5f) + 0.5f) * _2413)) * 1.0f)) * _20_m92.w);
    float _2485 = dot(_2484, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2488 = clamp(_2485 - 0.5f, 0.0f, 0.5f);
    float3 _2524 = normalize(cross(_627, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float _2530 = dot(_463, _2024);
    float _2532 = 1.0f - abs(_2530);
    float _2554 = dot(_2255, _2024);
    float _2566 = 1.0f - _2286;
    float _2593 = lerp(_2025, _1891, _1890);
    float _2594 = _2593 * _2593;
    float _2595 = _2455 * _2434;
    float2 _2596 = float2(1.0f, _2434);
    float2 _2599 = float2(1.0f, _2594);
    float3 _2602 = float3(1.0f, _2594, (_2594 * _2594) * _2594);
    float _2607 = dot(mul(_2596, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2599) / dot(mul(float3(1.0f, _2455, _2595), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2602);
    float _2612 = dot(mul(_2596, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2599) / dot(mul(float3(1.0f, _2434, _2595), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2602);
    float3 _2615 = (_2469 * _2607) + _2612.xxx;
    float _2616 = _2607 + _2612;
    float3 _2622 = -_463;
    float3 _2640 = ((((_557.xyz * _49_m25.xyz) * _49_m7) * ((_49_m60 > 0.5f) ? lerp(1.0f, lerp(_49_m62, _49_m63, (sin(_49_m61 * _20_m75.w) * 0.5f) + 0.5f), _557.w) : 1.0f)) + (lerp(lerp((((_2097 * clamp((_2126 + _2097.w) * _49_m53.w, 0.0f, 1.0f)) * _49_m53) + _2123).xyz, (_49_m54.xyz * _2141) * _49_m42, _2141.xxx).xyz, _49_m54.xyz, (_49_m54.w * _2176).xxx).xyz * (clamp(_2143, 0.0f, 1.0f) * ((1.0f - _49_m37) + (_2176 * _49_m37)))).xyz) * _2482;
    float3 _2641 = lerp(_2485.xxx, _2484, ((_2488 * _2488) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m88.w), lerp(0.89999997615814208984375f, 0.5f, _20_m88.w), _2532)) * _20_m87.w) * min(min(clamp(dot(_594, _2524) + 1.0f, 0.0f, 1.0f), _510), _2283)) * (lerp(0.25f.xxx, _2193, _20_m88.z.xxx) * clamp(dot(_2524, _2024), 0.0f, 1.0f))) + ((((((lerp(_1167 * (1.0f / max(max(max(_1167.x, _1167.y), _1167.z) * 0.5f, 1.0f)), _2269, _2387) * clamp(lerp(dot(_1166.xyz, _2024) * _1166.w, ((-_2554) * ((_2554 * 0.5f) - 1.0f)) + 0.5f, _2286), 0.0f, 1.0f)) * ((_2566 + (_2312 * _2286)) * _2316)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2532)) * min(_510, _2283)) * (_2566 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2299) * _2286))) * max(0.1500000059604644775390625f.xxx, _2193)));
    float2 _2644 = float2(_617);
    float2 _2646 = floor(_2644 * 0.03125f);
    int _2654 = int((_2646.x + (_2646.y * _34_m5)) * 8.0f);
    float _2661 = floor(_444 - (_20_m3.y * _34_m11));
    float _2665 = clamp(_2661, 0.0f, _34_m7 - 1.0f);
    int _2667 = int(_2665 * 8.0f);
    float3 _2669;
    _2669 = (_2641 + _2640) + (((_60.SampleLevel(_25, reflect(_2622, _1889), (1.2000000476837158203125f * log2(max(_2593, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2615 + ((_2469 * ((1.0f - _2616) / _2616)) * _2615)) * 1.0f)) * ((clamp(_1169, 0.5f, 1.5f) * _20_m79.w) * _2413)) * _1168);
    float3 _2670;
    [loop]
    for (int _2672 = 0; _2672 <= 7; _2669 = _2670, _2672++)
    {
        uint _2690 = (_2661 <= _2665) ? (_30.Load(uint(_2654 + _2672) * 4 + 0) & _30.Load(uint((_20_m21.y + _2667) + _2672) * 4 + 0)) : 0u;
        uint _2691 = uint(_2672);
        _2670 = _2669;
        uint _2696;
        float3 _2693;
        [loop]
        for (uint _2695 = _2690; _2695 != 0u; _2670 = _2693, _2695 = _2696)
        {
            uint _2700 = firstbitlow(_2695);
            _2696 = _2695 ^ (1u << (_2700 & 31u));
            int _2706 = int((32u * _2691) + _2700) * 8;
            int _2709 = _2706 + 1;
            int _2712 = _2706 + 2;
            int _2715 = _2706 + 3;
            int _2718 = _2706 + 4;
            int _2721 = _2706 + 5;
            int _2724 = _2706 + 6;
            int _2727 = _2706 + 7;
            uint _2731 = uint(_36_m6[_2721].w);
            float _2806;
            if ((_2731 & 1u) == 1u)
            {
                uint _2737 = asuint(_36_m6[_2721].x);
                uint _2744 = asuint(_36_m6[_2721].y);
                uint _2751 = asuint(_36_m6[_2721].z);
                uint _2758 = asuint(_36_m6[_2724].x);
                uint _2765 = asuint(_36_m6[_2724].y);
                uint _2772 = asuint(_36_m6[_2724].z);
                float3 _2791 = abs(mul(float4(_587 - _36_m6[_2709].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2737).x, spvUnpackHalf2x16(_2751).x, spvUnpackHalf2x16(_2765).x, 0.0f), float4(spvUnpackHalf2x16(_2737 >> 16u).x, spvUnpackHalf2x16(_2751 >> 16u).x, spvUnpackHalf2x16(_2765 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2744).x, spvUnpackHalf2x16(_2758).x, spvUnpackHalf2x16(_2772).x, 0.0f), float4(spvUnpackHalf2x16(_2744 >> 16u).x, spvUnpackHalf2x16(_2758 >> 16u).x, spvUnpackHalf2x16(_2772 >> 16u).x, 0.0f))).xyz);
                float _2798 = _36_m6[_2727].x * 0.5f;
                float _2804 = 1.0f - clamp((max(max(_2791.x, _2791.y), _2791.z) - (_2798 + 0.5f)) / (0.5f - _2798), 0.0f, 1.0f);
                _2806 = _2804 * _2804;
            }
            else
            {
                _2806 = 1.0f;
            }
            if (false || (_2806 < 0.001000000047497451305389404296875f))
            {
                _2693 = _2670;
                continue;
            }
            float3 _3499;
            if (_36_m6[_2706].w < 1.5f)
            {
                float3 _3498;
                do
                {
                    uint _2819 = asuint(_36_m6[_2715].w);
                    if ((_2819 == 16u) || ((_36_m6[_2715].z + _20_m91.z) < 0.5f))
                    {
                        _3498 = _2670;
                        break;
                    }
                    bool _2831 = (uint(_36_m6[_2706].w) & 1u) == 0u;
                    bool _2835 = (!_2831) && (_36_m6[_2712].z > 0.0f);
                    bool _2836 = _2819 == 4u;
                    float _2837 = float(_2831);
                    float _2845 = (0.5f + (0.5f * _36_m6[_2712].y)) - abs(_36_m6[_2712].x);
                    float _2846 = _36_m6[_2712].y - _2845;
                    float _2853 = abs(max((1.0f - abs(_2845)) - abs(_2846), 0.00048828125f));
                    float3 _2857 = normalize(float3(_2845, _2846, (_36_m6[_2712].x >= 0.0f) ? _2853 : (-_2853)));
                    float _2863 = lerp(_36_m6[_2724].w, max(2.0f * _36_m6[_2718].y, 0.100000001490116119384765625f), float(_2836));
                    float3 _2868 = _36_m6[_2709].xyz - _587;
                    float3 _2869 = -_2857;
                    float3 _2874 = lerp(_2868, _2869 * dot(_2868, _2869), (float(_2836 && (_36_m6[_2718].z > 0.5f)) * _2837).xxx);
                    float _2875 = dot(_2874, _2874);
                    float _2876 = rsqrt(_2875);
                    float3 _2877 = _2874 * _2876;
                    float3 _2910;
                    float _2911;
                    if (_2835)
                    {
                        float3 _2881 = (_2857 * _36_m6[_2712].z) * 0.5f;
                        float3 _2882 = _2874 - _2881;
                        float3 _2883 = _2874 + _2881;
                        float _2884 = length(_2882);
                        float _2885 = length(_2883);
                        float3 _2894 = normalize(cross(cross(_2857, _2877), _2857));
                        _2910 = _2894;
                        _2911 = ((1.0f / ((((_2884 * _2885) + dot(_2882, _2883)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2894, _2882) / _2884) + (dot(_2894, _2883) / _2885)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2712].z * _2876, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2910 = _2877;
                        _2911 = 1.0f;
                    }
                    float _2933;
                    if (_2863 < 0.0f)
                    {
                        float _2921 = _2875 * (_36_m6[_2709].w * _36_m6[_2709].w);
                        float _2924 = clamp(1.0f - (_2921 * _2921), 0.0f, 1.0f);
                        _2933 = lerp(1.0f / (_2875 + 1.0f), _2911, float(_2835)) * (_2924 * _2924);
                    }
                    else
                    {
                        float3 _2927 = _2874 * _36_m6[_2709].w;
                        _2933 = _2911 * pow(1.0f - clamp(dot(_2927, _2927), 0.0f, 1.0f), _2863);
                    }
                    float _2938 = clamp((dot(_2910, _2869) - _36_m6[_2712].z) * _36_m6[_2712].w, 0.0f, 1.0f);
                    float _2941 = _2933 * lerp(1.0f, _2938 * _2938, _2837);
                    int _2943 = int(_36_m6[_2727].w);
                    float _3047;
                    if ((!_2835) && (_2943 >= 0))
                    {
                        uint _2949 = uint(_2943);
                        float2 _3040;
                        [branch]
                        if (_2837 != 0.0f)
                        {
                            float4 _2961 = mul(_65_m1[_2949], float4(_587.x, _659, _587.z, 1.0f));
                            _3040 = _65_m0[_2949].xy + (clamp(_2961.xy / _2961.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_2949].zw);
                        }
                        else
                        {
                            float3 _2981 = mul(float4(-_2874, 0.0f), _65_m1[_2949]).xyz;
                            float3 _432 = _2981;
                            float3 _431 = _2981;
                            float3 _430 = abs(_2981);
                            uint _2990 = uint(int(_430.y > _430.x));
                            uint _2996 = (_430.z > _430[_2990]) ? 2u : _2990;
                            uint _3002 = (_2996 * 2u) + uint(_431[_2996] < 0.0f);
                            float _3006 = abs(_432[_3002 / 2u]);
                            float _3026 = 0.5f - (0.000244140625f / _65_m0[_2949].w);
                            _3040 = _65_m0[_2949].xy + (clamp(float2((float(_3002) + ((((_432[uint(_381[_3002].x)] * _382[_3002].x) / _3006) * _3026) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_432[uint(_381[_3002].y)] * _382[_3002].y) / _3006) * _3026)), 0.0f.xx, 1.0f.xx) * _65_m0[_2949].zw);
                        }
                        _3047 = _2941 * _63.SampleLevel(_25, _3040, 0.0f).x;
                    }
                    else
                    {
                        _3047 = _2941;
                    }
                    float _3048 = _3047 * _2806;
                    float3 _3497;
                    do
                    {
                        float3 _3496;
                        [branch]
                        if (_3048 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2836)
                            {
                                _3497 = lerp(_2670, _36_m6[_2706].xyz, (_3048 * (_36_m6[_2718].x * ((1.0f - _36_m6[_2718].w) + (smoothstep(-0.5f, 0.5f, dot(_615, _2910)) * _36_m6[_2718].w)))).xxx);
                                break;
                            }
                            float _3068 = dot(_2024, _2910);
                            float _3069 = clamp(_3068, 0.0f, 1.0f);
                            float _3372;
                            if (_2819 != 0u)
                            {
                                bool _3075 = _2831 || ((_2731 & 2u) != 0u);
                                int _3124;
                                if (_3075)
                                {
                                    _3124 = int(_36_m6[_2715].x);
                                }
                                else
                                {
                                    uint _3081 = asuint(_36_m6[_2712].w);
                                    uint _3083 = asuint(_36_m6[_2715].x);
                                    float3 _3084 = _587 - _36_m6[_2709].xyz;
                                    float3 _3085 = abs(_3084);
                                    float _3086 = _3085.x;
                                    float _3087 = _3085.y;
                                    float _3089 = _3085.z;
                                    int _3121;
                                    if ((_3086 > _3087) && (_3086 > _3089))
                                    {
                                        _3121 = int((_3084.x > 0.0f) ? (_3081 >> 24u) : ((_3081 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3120;
                                        if (_3087 > _3089)
                                        {
                                            _3120 = int((_3084.y > 0.0f) ? ((_3081 >> 8u) & 255u) : (_3081 & 255u));
                                        }
                                        else
                                        {
                                            _3120 = int((_3084.z > 0.0f) ? ((_3083 >> 8u) & 255u) : (_3083 & 255u));
                                        }
                                        _3121 = _3120;
                                    }
                                    _3124 = (_3121 < 80) ? _3121 : (-1);
                                }
                                bool _3125 = _3124 >= 0;
                                float _3371;
                                if (_3125)
                                {
                                    float3 _3129 = _587 - _36_m6[_2709].xyz;
                                    float4 _3149 = mul(_38_m10[_3124], float4((_587 - ((_3129 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3129, _3129)))) * _38_m11[_3124].x)) + (_615 * (_38_m11[_3124].y * 5.0f)), 1.0f));
                                    float _3150 = _3149.w;
                                    float3 _3153 = _3149.xyz / _3150.xxx;
                                    float2 _3154 = _3153.xy;
                                    float3 _3162 = _3153.xyz;
                                    bool3 _3163 = bool3(_3162.x <= 0.0f.xxx.x, _3162.y <= 0.0f.xxx.y, _3162.z <= 0.0f.xxx.z);
                                    bool3 _3164 = bool3(_3162.x >= 1.0f.xxx.x, _3162.y >= 1.0f.xxx.y, _3162.z >= 1.0f.xxx.z);
                                    float _3167 = _3153.z;
                                    float2 _3178 = ((_3154 * (_38_m12[_3124].zw - _38_m12[_3124].xy)) + _38_m12[_3124].xy).xy * _38_m13.zw;
                                    float2 _3180 = floor(_3178 + 0.5f.xx);
                                    float2 _3181 = _3178 - _3180;
                                    float _3183 = _3181.x + 0.5f;
                                    float _3184 = _3183 * _3183;
                                    float _3187 = 1.0f - _3181.x;
                                    float _3188 = min(_3181.x, 0.0f);
                                    float _3191 = _3181.x + 1.0f;
                                    float _3192 = max(_3181.x, 0.0f);
                                    float _3204 = _3181.y + 0.5f;
                                    float _3205 = _3204 * _3204;
                                    float _3208 = 1.0f - _3181.y;
                                    float _3209 = min(_3181.y, 0.0f);
                                    float _3212 = _3181.y + 1.0f;
                                    float _3213 = max(_3181.y, 0.0f);
                                    float3 _3225 = float3(0.1599999964237213134765625f * _3187, 0.1599999964237213134765625f * ((_3191 - (_3192 * _3192)) + 1.0f), _3184 * 0.07999999821186065673828125f);
                                    float3 _3226 = float3(0.1599999964237213134765625f * ((_3184 * 0.5f) - _3181.x), 0.1599999964237213134765625f * ((_3187 - (_3188 * _3188)) + 1.0f), 0.1599999964237213134765625f * _3191) + _3225;
                                    float3 _3228 = float3(0.1599999964237213134765625f * _3208, 0.1599999964237213134765625f * ((_3212 - (_3213 * _3213)) + 1.0f), _3205 * 0.07999999821186065673828125f);
                                    float3 _3229 = float3(0.1599999964237213134765625f * ((_3205 * 0.5f) - _3181.y), 0.1599999964237213134765625f * ((_3208 - (_3209 * _3209)) + 1.0f), 0.1599999964237213134765625f * _3212) + _3228;
                                    float3 _3235 = ((_3225 / _3226) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3237 = ((_3228 / _3229) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3239 = _3180 * _38_m13.xy;
                                    float _3240 = _3235.x;
                                    float _3241 = _3237.x;
                                    float _3244 = _3235.y;
                                    float _3247 = _3235.z;
                                    float _3250 = _3237.y;
                                    float _3257 = _3237.z;
                                    float _3264 = _3226.x;
                                    float _3265 = _3229.x;
                                    float _3267 = _3226.y;
                                    float _3269 = _3226.z;
                                    float _3271 = _3229.y;
                                    float _3275 = _3229.z;
                                    float _3333 = (((((((_3264 * _3265) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3240, _3241), _424).xy, _3167)) + ((_3267 * _3265) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3244, _3241), _424).xy, _3167))) + ((_3269 * _3265) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3247, _3241), _424).xy, _3167))) + ((_3264 * _3271) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3240, _3250), _424).xy, _3167))) + ((_3267 * _3271) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3244, _3250), _424).xy, _3167))) + ((_3269 * _3271) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3247, _3250), _424).xy, _3167))) + ((_3264 * _3275) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3240, _3257), _424).xy, _3167));
                                    float2 _3354 = min(_3154, 1.0f.xx - _3154);
                                    _3371 = _3125 ? lerp(1.0f, (any(bool3(_3163.x || _3164.x, _3163.y || _3164.y, _3163.z || _3164.z)) || ((asuint(_3167) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3333 + ((_3267 * _3275) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3244, _3257), _424).xy, _3167))) + ((_3269 * _3275) * _39.SampleCmpLevelZero(_27, float3(_3239 + float2(_3247, _3257), _424).xy, _3167))), _3075 ? min(_38_m11[_3124].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_3124].z - _3150) * 0.25f, min(_3354.x, _3354.y)))) : _38_m11[_3124].w) : 1.0f;
                                }
                                else
                                {
                                    _3371 = clamp(dot(_594, _2910) + 1.0f, 0.0f, 1.0f);
                                }
                                _3372 = _3371;
                            }
                            else
                            {
                                _3372 = 1.0f;
                            }
                            float _3452;
                            float3 _3453;
                            float _3454;
                            float3 _3455;
                            float3 _3456;
                            float _3457;
                            float _3458;
                            [branch]
                            if (_2819 == 0u)
                            {
                                float3 _3378 = _36_m6[_2706].xyz * _3048;
                                float3 _3391 = _2408.xyz;
                                _3452 = _3048;
                                _3453 = (_36_m6[_2706].xyz * ((1.0f - _36_m6[_2718].y) + ((1.0f / max(1.0f, max(max(_3378.x, _3378.y), _3378.z) * lerp(0.75f, 0.5f, _2566))) * _36_m6[_2718].y))) * lerp(0.25f * _36_m6[_2718].x, 1.0f, clamp(_3068 + 0.5f, 0.0f, 1.0f));
                                _3454 = _3069;
                                _3455 = _3391;
                                _3456 = _3391;
                                _3457 = 1.0f;
                                _3458 = 0.0f;
                            }
                            else
                            {
                                float _3446;
                                float _3447;
                                float3 _3448;
                                float3 _3449;
                                float _3450;
                                float _3451;
                                if (_2819 == 3u)
                                {
                                    _3446 = _3048 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2718].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2718].x), _2532) * _3372);
                                    _3447 = clamp(dot(_2024, -normalize(cross(_627, cross(_627, _2910)))), 0.0f, 1.0f);
                                    _3448 = lerp(0.5f.xxx, _2193, _36_m6[_2718].y.xxx);
                                    _3449 = 0.0f.xxx;
                                    _3450 = 1.0f;
                                    _3451 = 0.0f;
                                }
                                else
                                {
                                    bool _3416 = _2819 == 1u;
                                    float _3440;
                                    float3 _3441;
                                    float _3442;
                                    float _3443;
                                    if (_3416)
                                    {
                                        _3440 = clamp(clamp(_3068 + _36_m6[_2718].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3372;
                                        _3441 = _2197 * _36_m6[_2718].y;
                                        _3442 = 1.0f;
                                        _3443 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3426 = _2819 == 2u;
                                        float _3438;
                                        if (_3426)
                                        {
                                            _3438 = smoothstep(_36_m6[_2718].x + 0.0500000007450580596923828125f, _36_m6[_2718].x - 0.0500000007450580596923828125f, _2025) * ((1.0f - _36_m6[_2718].z) + (step(0.5f, _2028) * _36_m6[_2718].z));
                                        }
                                        else
                                        {
                                            _3438 = 1.0f;
                                        }
                                        _3440 = _3069;
                                        _3441 = 0.0f.xxx;
                                        _3442 = _3438;
                                        _3443 = _3426 ? _36_m6[_2718].y : 0.0f;
                                    }
                                    bool3 _3444 = _3416.xxx;
                                    _3446 = _3048;
                                    _3447 = _3440;
                                    _3448 = float3(_3444.x ? _2193.x : 0.0f.xxx.x, _3444.y ? _2193.y : 0.0f.xxx.y, _3444.z ? _2193.z : 0.0f.xxx.z);
                                    _3449 = _3441;
                                    _3450 = _3442;
                                    _3451 = _3443;
                                }
                                _3452 = _3446;
                                _3453 = _36_m6[_2706].xyz;
                                _3454 = _3447;
                                _3455 = _3448;
                                _3456 = _3449;
                                _3457 = _3450;
                                _3458 = _3451;
                            }
                            float3 _3486;
                            [branch]
                            if (_2819 != 3u)
                            {
                                float _3463 = lerp(_2199, 0.00999999977648258209228515625f, _3458);
                                float _3466 = dot(_1889, normalize(_2910 + _463));
                                float _3467 = _3463 * _3463;
                                float _3471 = (((_3466 * _3467) - _3466) * _3466) + 1.0f;
                                float _3472 = _3471 * _3471;
                                _3486 = ((_2467 * clamp((((_3467 != _3472) ? (_3467 / _3472) : 1.0f) * (0.5f / ((_2444 + (_3463 * _2446)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3457) * _36_m6[_2727].z;
                            }
                            else
                            {
                                _3486 = 0.0f.xxx;
                            }
                            float3 _3489 = _3453 * _3452;
                            _3496 = _2670 + (((_3489 * lerp(_3456, _3455, _3454.xxx)) * _2482) + ((_3489 * _3486) * _3454));
                        }
                        else
                        {
                            _3496 = _2670;
                        }
                        _3497 = _3496;
                        break;
                    } while(false);
                    _3498 = _3497;
                    break;
                } while(false);
                _3499 = _3498;
            }
            else
            {
                _3499 = _2670;
            }
            _2693 = _3499;
        }
    }
    float3 _3539;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3539 = lerp(lerp(0.5f.xxx, lerp(dot(_2669, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2669, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2530, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3539 = _2669;
    }
    float4 _3546 = float4(_3539 * _20_m20.y, _2148);
    _3546.w = (_49_m8 == 1.0f) ? _2148 : 1.0f;
    float4 _3933;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float _3570 = _659 * _20_m46.w;
        float _3575 = max(0.00999999977648258209228515625f, _3570 + _20_m47.w);
        float3 _3589 = exp(_20_m45.xyz * ((-max(0.0f, (_464 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3575)) / _3575) * exp(_3570 + _20_m48.w))));
        float _3592 = dot(_2622, _20_m44.xyz);
        float _3598 = _20_m45.w * _20_m45.w;
        float _3602 = (1.0f + _3598) - ((2.0f * _20_m45.w) * _3592);
        float3 _3925;
        float _3926;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3647 = (uint3(int3(_2273, _2274, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3648 = _3647.y;
            uint _3649 = _3647.z;
            uint _3652 = _3647.x + (_3648 * _3649);
            uint _3654 = _3648 + (_3649 * _3652);
            uint _3656 = _3649 + (_3652 * _3654);
            uint _3658 = _3652 + (_3654 * _3656);
            float _3683 = dot(_2622, -_18_m0[2].xyz);
            float3 _3690 = _587 - _18_m11.xyz;
            float _3692 = (_20_m55.w * ((_3683 > 5.9604644775390625e-08f) ? (1.0f / _3683) : 0.0f)) * (1.0f / _464);
            float _3693 = _3690.y;
            float _3694 = _3692 * _3693;
            float _3696 = _18_m11.y + _3694;
            float _3697 = _3693 - _3694;
            float _3699 = (1.0f - _3692) * _464;
            float _3713 = max(-127.0f, _20_m49.z * _3697);
            float _3737 = max(-127.0f, _20_m52.x * _3697);
            float _3748 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3696 - _20_m49.x)))) * ((abs(_3713) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3713)) / _3713) : (0.693147182464599609375f - (0.2402265071868896484375f * _3713)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3696 - _20_m52.z)))) * ((abs(_3737) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3737)) / _3737) : (0.693147182464599609375f - (0.2402265071868896484375f * _3737))));
            float _3770 = clamp((_464 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3773 = clamp((max(clamp(exp2(-(_3748 * _3699)), 0.0f, 1.0f), _20_m51.w) + clamp((_464 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3770, 0.0f, 1.0f);
            float4 _3813 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _68.SampleLevel(_25, float3((_2644 + ((((float3(uint3(_3658, _3654 + (_3656 * _3658), _428) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_444 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_444 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3925 = _3813.xyz + (((_20_m51.xyz * (1.0f - _3773)) + (((_20_m54.xyz * pow(clamp(dot(_463, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3748 * max(_3699 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3770))) * _3813.w);
            _3926 = _3813.w * _3773;
        }
        else
        {
            float3 _3819 = _587 - _18_m11.xyz;
            float _3821 = _3819.y;
            float _3835 = max(-127.0f, _20_m49.z * _3821);
            float _3859 = max(-127.0f, _20_m52.x * _3821);
            float _3870 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3835) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3835)) / _3835) : (0.693147182464599609375f - (0.2402265071868896484375f * _3835)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3859) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3859)) / _3859) : (0.693147182464599609375f - (0.2402265071868896484375f * _3859))));
            float _3892 = clamp((_464 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3895 = clamp((max(clamp(exp2(-(_3870 * _464)), 0.0f, 1.0f), _20_m51.w) + clamp((_464 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3892, 0.0f, 1.0f);
            _3925 = (_20_m51.xyz * (1.0f - _3895)) + (((_20_m54.xyz * pow(clamp(dot(_463, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3870 * max(_464 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3892));
            _3926 = _3895;
        }
        float3 _3931 = (_3546.xyz * (_3589 * _3926)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3592 * _3592)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3598) / max((12.56637096405029296875f * _3602) * sqrt(_3602), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3589)) * _3926) + _3925);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3931 = (_3931 * 0.65f) + (_3546.xyz * 0.35f);

        }

        // RenoDX code end
        _3933 = float4(_3931.x, _3931.y, _3931.z, _3546.w);
    }
    else
    {
        _3933 = _3546;
    }
    _15 = _3933;
    _16 = _2238;
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
    _11 = stage_input._11;
    _13 = stage_input._13;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._15 = _15;
    stage_output._16 = _16;
    // RenoDX debug branch: shader category coloring.
    stage_output._15 = ApplyShaderDebugColor(stage_output._15);
    return stage_output;
}

// Endfield 1.5 Vulkan shader 0x4607DEFC, migrated from 1.4.4 shader 0x0C989673.
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

static float3 _422 = (float3)0;
static float _423 = (float)0;
static float3 _424 = (float3)0;
static float _426 = (float)0;
static uint _427 = (uint)0;

static const int2 _379[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _380[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _31 : register(t50);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _33 : register(t18);

uint4 _33_Load4(uint byte_offset)
{
    return asuint(_33[byte_offset >> 4u]);
}
[[vk::binding(47, 0)]]
cbuffer _34_35 : register(b47)
{
    int _35_m0 : packoffset(c0);
    int _35_m1 : packoffset(c0.y);
    int _35_m2 : packoffset(c0.z);
    int _35_m3 : packoffset(c0.w);
    float _35_m4 : packoffset(c1);
    float _35_m5 : packoffset(c1.y);
    float _35_m6 : packoffset(c1.z);
    float _35_m7 : packoffset(c1.w);
    float _35_m8 : packoffset(c2);
    float _35_m9 : packoffset(c2.y);
    float _35_m10 : packoffset(c2.z);
    float _35_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _36_37 : register(b14)
{
    float4 _37_m0 : packoffset(c0);
    float4 _37_m1 : packoffset(c1);
    float4 _37_m2 : packoffset(c2);
    float4 _37_m3 : packoffset(c3);
    float4 _37_m4 : packoffset(c4);
    uint4 _37_m5 : packoffset(c5);
    float4 _37_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _38_39 : register(b15)
{
    column_major float4x4 _39_m0[5] : packoffset(c0);
    float4 _39_m1[4] : packoffset(c20);
    float4 _39_m2[4] : packoffset(c24);
    float4 _39_m3[4] : packoffset(c28);
    float4 _39_m4 : packoffset(c32);
    float4 _39_m5 : packoffset(c33);
    float4 _39_m6 : packoffset(c34);
    float4 _39_m7 : packoffset(c35);
    float4 _39_m8 : packoffset(c36);
    float4 _39_m9[27] : packoffset(c37);
    column_major float4x4 _39_m10[56] : packoffset(c64);
    float4 _39_m11[56] : packoffset(c288);
    float4 _39_m12[56] : packoffset(c344);
    float4 _39_m13 : packoffset(c400);
    float4 _39_m14[47] : packoffset(c401);
    column_major float4x4 _39_m15[15] : packoffset(c448);
    float4 _39_m16[15] : packoffset(c508);
    float4 _39_m17[15] : packoffset(c523);
    float4 _39_m18[15] : packoffset(c538);
    float4 _39_m19 : packoffset(c553);
    float4 _39_m20 : packoffset(c554);
    float4 _39_m21[21] : packoffset(c555);
    column_major float4x4 _39_m22 : packoffset(c576);
    column_major float4x4 _39_m23 : packoffset(c580);
    float4 _39_m24 : packoffset(c584);
    float4 _39_m25 : packoffset(c585);
    float4 _39_m26 : packoffset(c586);
    float4 _39_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _51_52 : register(b0)
{
    float _52_m0 : packoffset(c0);
    float _52_m1 : packoffset(c0.y);
    float _52_m2 : packoffset(c0.z);
    float _52_m3 : packoffset(c0.w);
    float _52_m4 : packoffset(c1);
    float _52_m5 : packoffset(c1.y);
    float _52_m6 : packoffset(c1.z);
    float _52_m7 : packoffset(c1.w);
    float _52_m8 : packoffset(c2);
    float _52_m9 : packoffset(c2.y);
    float _52_m10 : packoffset(c2.z);
    float _52_m11 : packoffset(c2.w);
    float _52_m12 : packoffset(c3);
    float _52_m13 : packoffset(c3.y);
    float _52_m14 : packoffset(c3.z);
    float _52_m15 : packoffset(c3.w);
    float _52_m16 : packoffset(c4);
    float _52_m17 : packoffset(c4.y);
    float _52_m18 : packoffset(c4.z);
    float _52_m19 : packoffset(c4.w);
    float _52_m20 : packoffset(c5);
    float _52_m21 : packoffset(c5.y);
    float _52_m22 : packoffset(c5.z);
    float _52_m23 : packoffset(c5.w);
    float4 _52_m24 : packoffset(c6);
    float4 _52_m25 : packoffset(c7);
    float4 _52_m26 : packoffset(c8);
    float4 _52_m27 : packoffset(c9);
    float4 _52_m28 : packoffset(c10);
    float4 _52_m29 : packoffset(c11);
    float _52_m30 : packoffset(c12);
    float _52_m31 : packoffset(c12.y);
    float _52_m32 : packoffset(c12.z);
    float _52_m33 : packoffset(c12.w);
    float _52_m34 : packoffset(c13);
    float _52_m35 : packoffset(c13.y);
    float _52_m36 : packoffset(c13.z);
    float _52_m37 : packoffset(c13.w);
    float4 _52_m38 : packoffset(c14);
    float4 _52_m39 : packoffset(c15);
    float _52_m40 : packoffset(c16);
    float _52_m41 : packoffset(c16.y);
    float _52_m42 : packoffset(c16.z);
    float _52_m43 : packoffset(c16.w);
    float _52_m44 : packoffset(c17);
    float _52_m45 : packoffset(c17.y);
    float _52_m46 : packoffset(c17.z);
    float _52_m47 : packoffset(c17.w);
    float _52_m48 : packoffset(c18);
    float _52_m49 : packoffset(c18.y);
    float _52_m50 : packoffset(c18.z);
    float _52_m51 : packoffset(c18.w);
    float _52_m52 : packoffset(c19);
    float _52_m53 : packoffset(c19.y);
    float _52_m54 : packoffset(c19.z);
    float _52_m55 : packoffset(c19.w);
    float4 _52_m56 : packoffset(c20);
    float4 _52_m57 : packoffset(c21);
    float4 _52_m58 : packoffset(c22);
    float4 _52_m59 : packoffset(c23);
    float4 _52_m60 : packoffset(c24);
    float4 _52_m61 : packoffset(c25);
    float2 _52_m62 : packoffset(c26);
    float2 _52_m63 : packoffset(c26.z);
    float _52_m64 : packoffset(c27);
    float _52_m65 : packoffset(c27.y);
    float _52_m66 : packoffset(c27.z);
    float _52_m67 : packoffset(c27.w);
    float4 _52_m68 : packoffset(c28);
    float4 _52_m69 : packoffset(c29);
    float4 _52_m70 : packoffset(c30);
    float4 _52_m71 : packoffset(c31);
    float _52_m72 : packoffset(c32);
    float _52_m73 : packoffset(c32.y);
    float _52_m74 : packoffset(c32.z);
    float _52_m75 : packoffset(c32.w);
    float _52_m76 : packoffset(c33);
    float _52_m77 : packoffset(c33.y);
    float _52_m78 : packoffset(c33.z);
    float _52_m79 : packoffset(c33.w);
};

[[vk::binding(49, 0)]]
cbuffer _65_66 : register(b49)
{
    float4 _66_m0[32] : packoffset(c0);
    column_major float4x4 _66_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _24 : register(s3);
[[vk::binding(6, 0)]] SamplerState _25 : register(s6);
[[vk::binding(4, 0)]] SamplerState _26 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(9, 0)]] Texture2D<float4> _40 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _41 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _42 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _43 : register(t11);
[[vk::binding(34, 0)]] Texture3D<float4> _45 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _46 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _47 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _48 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _49 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _50 : register(t29);
[[vk::binding(38, 0)]] Texture2D<float4> _53 : register(t38);
[[vk::binding(8, 1)]] Texture2D<float4> _54 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _55 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _56 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _57 : register(t5);
[[vk::binding(44, 0)]] TextureCube<float4> _59 : register(t44);
[[vk::binding(2, 1)]] Texture2D<float4> _60 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _61 : register(t3);
[[vk::binding(6, 1)]] Texture2D<float4> _62 : register(t6);
[[vk::binding(1, 1)]] SamplerState _63 : register(s1);
[[vk::binding(28, 0)]] Texture2D<float4> _64 : register(t28);
[[vk::binding(35, 0)]] Texture3D<float4> _69 : register(t35);

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
    float _441 = 1.0f / gl_FragCoord.w;
    float3 _456 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _457 = dot(_456, _456);
    float _459 = rsqrt(max(_457, 9.9999999392252902907785028219223e-09f));
    float3 _460 = _456 * _459;
    float _461 = _457 * _459;
    uint _464 = asuint(_22_m0[_12]._m2.x);
    bool _469 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _482;
    float4 _483;
    if (_469)
    {
        _482 = asfloat(_33_Load4((_464 + 2u) * 16 + 0));
        _483 = asfloat(_33_Load4(_464 * 16 + 0));
    }
    else
    {
        _482 = _22_m0[_12]._m0[2];
        _483 = _22_m0[_12]._m0[0];
    }
    float4 _495 = _54.SampleBias(_26, _3 + (_52_m62 * _19_m75.w), _19_m16);
    float3 _500 = _495.xyz * _52_m24.xyz;
    float4 _504 = _55.SampleBias(_26, _3, _19_m16);
    float _505 = _504.x;
    float _507 = _504.z;
    float _509 = 1.0f - _504.w;
    float3 _518 = _500 * _52_m18;
    float3 _522 = lerp(dot(_518, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _518, _52_m19.xxx);
    float4 _526 = _56.SampleBias(_26, _3, _19_m16);
    _526.w = _526.w * _526.x;
    float2 _535 = (_526.wy * 2.0f) - 1.0f.xx;
    float3 _536 = float3(_535.x, _535.y, _424.z);
    float2 _537 = _535.xy;
    _536.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_537, _537), 0.0f, 1.0f)));
    float2 _545 = _536.xy * _52_m3;
    float4 _554 = _57.SampleBias(_26, _3 + (_52_m63 * _19_m75.w), _19_m16);
    float3 _584 = _4 + _17_m11.xyz;
    float3 _588 = _584 - float3(_483.w, _426, _482.w);
    _588.y = 6.103515625e-05f;
    float3 _591 = normalize(_588);
    float3 _599 = _5 * 1.0f;
    float3 _601 = mul(float3(_545.x, _545.y, _536.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _599));
    float _610 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _52_m5));
    float3 _611 = (_601 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_601, _601)))) * _610;
    float3 _612 = normalize(_5) * _610;
    uint2 _618 = uint2(gl_FragCoord.xy);
    float3 _628 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float4 _642 = float4(_426, _426, _426, float((asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _643 = _642.w;
    float _651 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1145;
    float3 _1146;
    float3 _1147;
    float _1148;
    if (_19_m80.y < 0.5f)
    {
        float3 _669 = _584 - (_19_m105.xyz + (_628 * (-_19_m107.w)));
        float _683 = max(clamp((max(abs(_669.x), abs(_669.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_669.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _985;
        float4 _986;
        float4 _987;
        float _988;
        float _989;
        if ((_19_m105.w != 0.0f) && (_683 < 1.0f))
        {
            float3 _696 = _584 - (_19_m105.xyz + (_628 * (-_19_m107.y)));
            float _710 = max(clamp((max(abs(_696.x), abs(_696.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_696.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _786;
            float4 _787;
            float4 _788;
            float4 _789;
            if (_710 < 1.0f)
            {
                float3 _719 = ((_584 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _721 = _719 - floor(_719);
                float4 _725 = _45.SampleLevel(_26, _721, 0.0f);
                float _726 = 1.0f - _710;
                float _730 = _19_m106.y * 0.5f;
                float _735 = _721.x;
                float _736 = clamp(_721.y, _730, 1.0f - _730) * 0.3333333432674407958984375f;
                float _737 = _721.z;
                float4 _740 = _46.SampleLevel(_25, float3(_735, _736, _737), 0.0f);
                float _756 = _725.x;
                float _766 = _725.y;
                float _776 = _725.z;
                _786 = _683 + (_740.w * _726);
                _787 = float4(((_46.SampleLevel(_25, float3(_735, _736 + 0.666666686534881591796875f, _737), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _776, _776) * _726;
                _788 = float4(((_46.SampleLevel(_25, float3(_735, _736 + 0.3333333432674407958984375f, _737), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _766, _766) * _726;
                _789 = float4(((_740.xyz * 4.0f) - 2.0f.xxx) * _756, _756) * _726;
            }
            else
            {
                _786 = _683;
                _787 = 0.0f.xxxx;
                _788 = 0.0f.xxxx;
                _789 = 0.0f.xxxx;
            }
            float3 _795 = _584 - (_19_m105.xyz + (_628 * (-_19_m107.z)));
            float _809 = max(clamp((max(abs(_795.x), abs(_795.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_795.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _889;
            float4 _890;
            float4 _891;
            float4 _892;
            if (_809 < 1.0f)
            {
                float3 _818 = ((_584 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _820 = _818 - floor(_818);
                float4 _824 = _47.SampleLevel(_26, _820, 0.0f);
                float _826 = _710 * (1.0f - _809);
                float _830 = _19_m106.y * 0.5f;
                float _835 = _820.x;
                float _836 = clamp(_820.y, _830, 1.0f - _830) * 0.3333333432674407958984375f;
                float _837 = _820.z;
                float4 _840 = _48.SampleLevel(_25, float3(_835, _836, _837), 0.0f);
                float _856 = _824.x;
                float _867 = _824.y;
                float _878 = _824.z;
                _889 = _786 + (_840.w * _826);
                _890 = _787 + (float4(((_48.SampleLevel(_25, float3(_835, _836 + 0.666666686534881591796875f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _826);
                _891 = _788 + (float4(((_48.SampleLevel(_25, float3(_835, _836 + 0.3333333432674407958984375f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _867, _867) * _826);
                _892 = _789 + (float4(((_840.xyz * 4.0f) - 2.0f.xxx) * _856, _856) * _826);
            }
            else
            {
                _889 = _786;
                _890 = _787;
                _891 = _788;
                _892 = _789;
            }
            float4 _975;
            float4 _976;
            float4 _977;
            float _978;
            if (_809 > 0.0f)
            {
                float3 _901 = ((_584 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _904 = _19_m106.xyz * 0.5f;
                float3 _906 = clamp(_901 - floor(_901), _904, 1.0f.xxx - _904);
                float4 _910 = _49.SampleLevel(_26, _906, 0.0f);
                float _912 = _809 * (1.0f - _683);
                float _916 = _19_m106.y * 0.5f;
                float _921 = _906.x;
                float _922 = clamp(_906.y, _916, 1.0f - _916) * 0.3333333432674407958984375f;
                float _923 = _906.z;
                float4 _926 = _50.SampleLevel(_25, float3(_921, _922, _923), 0.0f);
                float _942 = _910.x;
                float _953 = _910.y;
                float _964 = _910.z;
                _975 = _890 + (float4(((_50.SampleLevel(_25, float3(_921, _922 + 0.666666686534881591796875f, _923), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _964, _964) * _912);
                _976 = _891 + (float4(((_50.SampleLevel(_25, float3(_921, _922 + 0.3333333432674407958984375f, _923), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _953, _953) * _912);
                _977 = _892 + (float4(((_926.xyz * 4.0f) - 2.0f.xxx) * _942, _942) * _912);
                _978 = _889 + (_926.w * _912);
            }
            else
            {
                _975 = _890;
                _976 = _891;
                _977 = _892;
                _978 = _889;
            }
            float _981 = clamp((_978 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _985 = _975;
            _986 = _976;
            _987 = _977;
            _988 = _981 - _683;
            _989 = (_981 + _683) * 0.5f;
        }
        else
        {
            _985 = 0.0f.xxxx;
            _986 = 0.0f.xxxx;
            _987 = 0.0f.xxxx;
            _988 = 0.0f;
            _989 = 1.0f;
        }
        float4 _1009 = _987 + float4(_19_m108.x * _989, (_19_m108.y * _989) + ((_19_m108.w * _988) * 0.5f), _19_m108.z * _989, (_19_m108.w * _989) + ((_19_m108.y * _988) * 0.375f));
        float4 _1029 = _986 + float4(_19_m109.x * _989, (_19_m109.y * _989) + ((_19_m109.w * _988) * 0.5f), _19_m109.z * _989, (_19_m109.w * _989) + ((_19_m109.y * _988) * 0.375f));
        float4 _1049 = _985 + float4(_19_m110.x * _989, (_19_m110.y * _989) + ((_19_m110.w * _988) * 0.5f), _19_m110.z * _989, (_19_m110.w * _989) + ((_19_m110.y * _988) * 0.375f));
        float4 _1053 = float4(_611, 1.0f);
        float3 _1059 = max(float3(dot(_1009, _1053), dot(_1029, _1053), dot(_1049, _1053)), 0.0f.xxx) * _651;
        float3 _1067 = ((_1009.xyz * 0.2125999927520751953125f) + (_1029.xyz * 0.715200006961822509765625f)) + (_1049.xyz * 0.072200000286102294921875f);
        float3 _1071 = _1067 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1067, _1067)));
        float _1073 = abs(_1071.y);
        float3 _1074 = _1071;
        _1074.y = _1073;
        float4 _1075 = float4(_1074.x, _1074.y, _1074.z, 0.0f.xxxx.w);
        _1075.w = 1.0f;
        float4 _1079 = float4(_1071.x, _1073, _1071.z, 1.0f);
        float3 _1084 = max(float3(dot(_1009, _1079), dot(_1029, _1079), dot(_1049, _1079)), 0.0f.xxx);
        float _1092 = _1059.z;
        float _1093 = _1059.y;
        float4 _1098 = lerp(float4(_1092, _1093, -1.0f, 0.666666686534881591796875f), float4(_1093, _1092, 0.0f, -0.3333333432674407958984375f), step(_1092, _1093).xxxx);
        float _1099 = _1059.x;
        float _1100 = _1098.x;
        float4 _1108 = lerp(float4(_1100, _1098.yw, _1099), float4(_1099, _1098.yz, _1100), step(_1100, _1099).xxxx);
        float _1109 = _1108.x;
        float _1110 = _1108.w;
        float _1111 = _1108.y;
        float _1113 = _1109 - min(_1110, _1111);
        float _1123 = frac(abs(_1108.z + ((_1110 - _1111) / ((6.0f * _1113) + 9.9999997473787516355514526367188e-05f))));
        float _1130 = min(_1113 / (_1109 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1123 - 0.5f))) * clamp(_1109, 0.0f, 1.0f));
        float _1132 = 2.0f / (2.0f - _1130);
        _1145 = _1075;
        _1146 = _1059;
        _1147 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1123, _1130, _1132).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1130.xxx) * _1132;
        _1148 = max(max(max(_1084.x, _1084.y), _1084.z), 0.0f) * _651;
    }
    else
    {
        _1145 = 0.0f.xxxx;
        _1146 = 1.0f.xxx;
        _1147 = _19_m81.xyz;
        _1148 = _651;
    }
    float _1247;
    float3 _1248;
    float3 _1249;
    float _1250;
    float3 _1251;
    [branch]
    if ((_643 - _52_m20) > 0.00999999977648258209228515625f)
    {
        float4 _1181 = _53.SampleBias(_26, _3 * _19_m89.z, _19_m16);
        float _1187 = _643 * (2.0f - _643);
        float _1194 = smoothstep(2.0f - _1187, 2.349999904632568359375f - _1187, (((_469 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1181.z) * ((_507 * _507) * float(gl_FrontFacing));
        float3 _1196 = _1194.xxx;
        float2 _1202 = (_1181.xy * 2.0f) - 1.0f.xx;
        float3 _1203 = float3(_1202.x, _1202.y, _424.z);
        float2 _1204 = _1202.xy;
        _1203.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1204, _1204), 0.0f, 1.0f)));
        float2 _1212 = _1203.xy * 2.0f;
        float3 _1214 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1212.x, _1212.y, _1203.z), _1196);
        float3 _1218 = _1214 * rsqrt(max(6.103515625e-05f, dot(_1214, _1214)));
        float _1219 = _611.y;
        float _1222 = step(0.00999999977648258209228515625f, 1.0f - (_1219 * _1219));
        float _1226 = lerp(_611.z, _1219, _1222);
        float3 _1233 = (float3(0.0f, _1222, 1.0f - _1222) - (_611 * _1226)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1226 * _1226)));
        _1247 = lerp(_509, 0.89999997615814208984375f, clamp(_1194 * 4.0f, 0.0f, 1.0f));
        _1248 = lerp(_522 * 1.0f, 0.3079999983310699462890625f.xxx, _1196);
        _1249 = lerp(_500 * 1.0f, 0.87999999523162841796875f.xxx, _1196);
        _1250 = lerp(_505, 0.0f, _1194);
        _1251 = ((cross(_1233, _611) * _1218.x) + (_1233 * _1218.y)) + (_611 * _1218.z);
    }
    else
    {
        _1247 = _509;
        _1248 = _522;
        _1249 = _500;
        _1250 = _505;
        _1251 = _611;
    }
    bool2 _1255 = (_52_m76 != 0.0f).xx;
    float _1308 = (_52_m77 * (_52_m78 - dot(_584, _52_m71.xyz))) + ((_62.SampleBias(_63, (lerp(float2(_1255.x ? _7.x : _3.x, _1255.y ? _7.y : _3.y), mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _584 - mul(_22_m0[_12]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _52_m72.xx) * _52_m68.xy) + _52_m68.zw, _19_m16).x - ((max(_52_m74, _22_m0[_12]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _52_m79);
    if ((clamp(_1308 * _52_m73, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _1337 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _1339 = abs(_1337);
    if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _1339 : (-_1339)), (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) - _1337) < 0.0f)
    {
        discard;
    }
    float3 _1354 = _52_m59.xyz * _52_m46;
    float4 _1355 = float4(_1354.x, _1354.y, _1354.z, _52_m59.w);
    _1355.w = _52_m59.w * _52_m47;
    float2 _1400;
    if (_52_m45 > 1.5f)
    {
        float2 _1374 = ((float2(_618) / _19_m5.xy) * 2.0f) - 1.0f.xx;
        _1400 = float2(_1374.x, (_1374.y / _19_m5.x) * _19_m5.y) * lerp(1.0f, max(0.0f, (-dot(_17_m0[2u], float4(_22_m0[_12]._m0[0].w, _22_m0[_12]._m0[1].w, _22_m0[_12]._m0[2].w, 1.0f))) - _19_m3.y), _52_m55);
    }
    else
    {
        _1400 = lerp(_3, _7, _52_m45.xx);
    }
    float4 _1415 = _61.SampleBias(_26, ((_1400 + (_52_m56.zw * _19_m75.w)) * _52_m61.xy) + _52_m61.zw, _19_m16);
    float _1418 = _1415.x;
    float4 _1434 = _60.SampleBias(_26, (((_1400 + (_52_m54 * _1418).xx) + (_52_m56.xy * _19_m75.w)) * _52_m60.xy) + _52_m60.zw, _19_m16);
    float4 _1441 = _1355 * lerp(_1434, float4(1.0f, 1.0f, 1.0f, _1434.x), _52_m44.xxxx);
    float _1444 = _1441.w;
    float _1457 = _1418 - ((_52_m53 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _1459 = clamp(-_1457, 0.0f, 1.0f);
    float _1461 = _1444 * clamp(_1457, 0.0f, 1.0f);
    bool3 _1478 = (_52_m52 < 0.5f).xxx;
    float _1492 = pow(clamp(dot(_460, float3(_1478.x ? _599.x : _1251.x, _1478.y ? _599.y : _1251.y, _1478.z ? _599.z : _1251.z).xyz) + _52_m40, 0.0f, 1.0f), _52_m42);
    float _1494 = lerp(1.0f - _1492, _1492, _52_m43);
    float2 _1514 = float2(_618);
    float2 _1519 = ((_1514 * _19_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _1522 = float4(_1519, _29.SampleBias(_24, gl_FragCoord.xy * _19_m0.zw, _19_m16).x, 1.0f);
    _1522.y = -_1519.y;
    float4 _1525 = mul(_17_m6, _1522);
    float _1548 = max((_495.w * _52_m24.w) * ((_52_m51 > 0.5f) ? _1461 : 1.0f), clamp(1.0f - exp2((-_52_m31) * (abs(mul(_17_m0, float4(_1525.xyz / _1525.w.xxx, 1.0f)).z) - _441)), 0.0f, 1.0f) * _52_m30);
    float _1550 = 0.959999978542327880859375f - (_1250 * 0.959999978542327880859375f);
    float3 _1551 = _1249 * _1550;
    float3 _1554 = lerp(0.039999999105930328369140625f.xxx * _504.y, _1249, _1250.xxx);
    float3 _1555 = _1248 * _1550;
    float _1556 = _1247 * _1247;
    float _1557 = max(_1556, 0.0078125f);
    float2 _1570 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _1570.y = -_1570.y;
    float2 _1583 = ((sqrt(sqrt(abs(_1570 * 0.5f))) * float2(int2(sign(_1570)))) * 0.5f) + 0.5f.xx;
    float4 _1584 = float4(_1583.x, _1583.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1584.z = 1.0f;
    _1584.w = 0.4000000059604644775390625f;
    float3 _1597 = lerp(-_37_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1601 = normalize(float3(_1597.x, 6.103515625e-05f, _1597.z));
    float3 _1611 = lerp(_37_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _1615 = _1611 * lerp(_37_m3.w, 1.0f, _19_m91.w);
    float2 _2092;
    do
    {
        if (_39_m7.w >= 0.9900000095367431640625f)
        {
            _2092 = float2(_39_m7.z, 1.0f);
            break;
        }
        int _1629 = int(_39_m7.x);
        bool3 _1631 = (_1629 == 2).xxx;
        float3 _1636 = _584 - float3(_1631.x ? _39_m1[0].xyz.x : _17_m11.xyz.x, _1631.y ? _39_m1[0].xyz.y : _17_m11.xyz.y, _1631.z ? _39_m1[0].xyz.z : _17_m11.xyz.z);
        float _1647 = max(clamp((_39_m6.w - dot(_1636, _1636)) * _39_m6.z, 0.0f, 1.0f), _39_m8.x);
        float _1836;
        bool _1837;
        if (_1647 > 0.0f)
        {
            float _1834;
            bool _1835;
            if (_1629 > 0)
            {
                float3 _1654 = _584 - _39_m1[0].xyz;
                float3 _1658 = _584 - _39_m1[1].xyz;
                float3 _1662 = _584 - _39_m1[2].xyz;
                float3 _1666 = _584 - _39_m1[3].xyz;
                float4 _1671 = float4(dot(_1654, _1654), dot(_1658, _1658), dot(_1662, _1662), dot(_1666, _1666));
                float4 _1680 = float4(_39_m1[0].w, _39_m1[1].w, _39_m1[2].w, _39_m1[3].w);
                float4 _1682 = float4(bool4(_1671.x < _1680.x, _1671.y < _1680.y, _1671.z < _1680.z, _1671.w < _1680.w));
                float3 _1686 = clamp(_1682.yzw - _1682.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1693 = max(clamp(4.0f - dot(float4(_1682.x, _1686.x, _1686.y, _1686.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _39_m6.y);
                float4 _1701 = mul(_39_m0[uint(_1693)], float4(_584, 1.0f));
                float _1704 = _1701.z;
                float4 _1705 = float4(_1701.xy, _1704, _1693);
                float3 _1706 = _1705.xyz;
                bool3 _1707 = bool3(_1706.x <= 0.0f.xxx.x, _1706.y <= 0.0f.xxx.y, _1706.z <= 0.0f.xxx.z);
                bool3 _1708 = bool3(_1706.x >= 1.0f.xxx.x, _1706.y >= 1.0f.xxx.y, _1706.z >= 1.0f.xxx.z);
                bool _1714 = any(bool3(_1707.x || _1708.x, _1707.y || _1708.y, _1707.z || _1708.z)) || ((asuint(_1704) & 2147483647u) > 2139095040u);
                int _1715 = int(_1693);
                float2 _1732 = float4(_39_m3[_1715].xy + (_1705.xy * _39_m3[_1715].zw), _1704, _1693).xy * _39_m4.zw;
                float2 _1734 = floor(_1732 + 0.5f.xx);
                float2 _1735 = _1732 - _1734;
                float _1736 = _1735.x;
                float _1737 = _1736 + 0.5f;
                float _1739 = (_1737 * _1737) * 0.5f;
                float _1742 = min(_1736, 0.0f);
                float _1746 = max(_1736, 0.0f);
                float4 _1750 = float4(_1739 - _1736, (1.0f - _1736) - (_1742 * _1742), (_1736 + 1.0f) - (_1746 * _1746), _1739) * 0.44444000720977783203125f;
                float _1751 = _1735.y;
                float _1752 = _1751 + 0.5f;
                float _1754 = (_1752 * _1752) * 0.5f;
                float _1757 = min(_1751, 0.0f);
                float _1761 = max(_1751, 0.0f);
                float4 _1765 = float4(_1754 - _1751, (1.0f - _1751) - (_1757 * _1757), (_1751 + 1.0f) - (_1761 * _1761), _1754) * 0.44444000720977783203125f;
                float2 _1767 = _1750.yw;
                float2 _1768 = _1750.xz + _1767;
                float2 _1770 = _1765.yw;
                float2 _1771 = _1765.xz + _1770;
                float2 _1777 = ((_1767 / _1768) + float2(-1.5f, 0.5f)) * _39_m4.xx;
                float2 _1779 = ((_1770 / _1771) + float2(-1.5f, 0.5f)) * _39_m4.yy;
                float2 _1781 = _1734 * _39_m4.xy;
                float _1782 = _1777.x;
                float _1783 = _1779.x;
                float _1786 = _1777.y;
                float _1789 = _1779.y;
                float _1794 = _1768.x;
                float _1795 = _1771.x;
                float _1797 = _1768.y;
                float _1799 = _1771.y;
                _1834 = _1714 ? 1.0f : (((((_1794 * _1795) * _40.SampleCmpLevelZero(_27, float3(_1781 + float2(_1782, _1783), _423).xy, _1704)) + ((_1797 * _1795) * _40.SampleCmpLevelZero(_27, float3(_1781 + float2(_1786, _1783), _423).xy, _1704))) + ((_1794 * _1799) * _40.SampleCmpLevelZero(_27, float3(_1781 + float2(_1782, _1789), _423).xy, _1704))) + ((_1797 * _1799) * _40.SampleCmpLevelZero(_27, float3(_1781 + float2(_1786, _1789), _423).xy, _1704)));
                _1835 = _1714;
            }
            else
            {
                _1834 = 1.0f;
                _1835 = false;
            }
            _1836 = _1834;
            _1837 = _1835;
        }
        else
        {
            _1836 = 1.0f;
            _1837 = false;
        }
        float _2034;
        float _2035;
        if ((_1647 < 1.0f) || (_39_m8.x > 0.5f))
        {
            float _1845 = 1.0f - clamp(dot(_612, _37_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1862 = float4((_584 - (_37_m0.xyz * (_1845 * _39_m24.x))) + (_612 * (_1845 * _39_m24.y)), 1.0f);
            float4 _1863 = mul(_39_m23, _1862);
            float2 _1864 = _1863.xy;
            float _2032;
            if (all(bool2(_1864.x > 0.0f.xx.x, _1864.y > 0.0f.xx.y)) && all(bool2(_1864.x < 1.0f.xx.x, _1864.y < 1.0f.xx.y)))
            {
                uint _1883 = clamp(uint((floor(_1863.y * _39_m25.z) + _1863.x) * _39_m25.y), 0u, 127u);
                uint _1887 = asuint(_39_m27[_1883].x);
                float2 _1888 = spvUnpackHalf2x16(_1887);
                float _1889 = _1888.x;
                float _2031;
                if (_1889 >= 0.0f)
                {
                    float4x4 _1898 = _39_m22;
                    _1898[0].w = _39_m27[_1883].y;
                    _1898[1].w = _39_m27[_1883].z;
                    _1898[2].w = _39_m27[_1883].w;
                    float4 _1905 = mul(_1898, _1862);
                    float3 _1906 = _1905.xyz;
                    float _2030;
                    if (all(bool3(_1906.x > 0.0f.xxx.x, _1906.y > 0.0f.xxx.y, _1906.z > 0.0f.xxx.z)) && all(bool3(_1906.x < 1.0f.xxx.x, _1906.y < 1.0f.xxx.y, _1906.z < 1.0f.xxx.z)))
                    {
                        float2 _1918 = (_1905.xy * _39_m24.zw) + float2(_1889, spvUnpackHalf2x16(_1887 >> 16u).x);
                        float _1923 = _1905.z;
                        float2 _1929 = float4(_1918, _1923, 1.0f).xy * _39_m26.zw;
                        float2 _1931 = floor(_1929 + 0.5f.xx);
                        float2 _1932 = _1929 - _1931;
                        float _1933 = _1932.x;
                        float _1934 = _1933 + 0.5f;
                        float _1936 = (_1934 * _1934) * 0.5f;
                        float _1939 = min(_1933, 0.0f);
                        float _1943 = max(_1933, 0.0f);
                        float4 _1947 = float4(_1936 - _1933, (1.0f - _1933) - (_1939 * _1939), (_1933 + 1.0f) - (_1943 * _1943), _1936) * 0.44444000720977783203125f;
                        float _1948 = _1932.y;
                        float _1949 = _1948 + 0.5f;
                        float _1951 = (_1949 * _1949) * 0.5f;
                        float _1954 = min(_1948, 0.0f);
                        float _1958 = max(_1948, 0.0f);
                        float4 _1962 = float4(_1951 - _1948, (1.0f - _1948) - (_1954 * _1954), (_1948 + 1.0f) - (_1958 * _1958), _1951) * 0.44444000720977783203125f;
                        float2 _1964 = _1947.yw;
                        float2 _1965 = _1947.xz + _1964;
                        float2 _1967 = _1962.yw;
                        float2 _1968 = _1962.xz + _1967;
                        float2 _1974 = ((_1964 / _1965) + float2(-1.5f, 0.5f)) * _39_m26.xx;
                        float2 _1976 = ((_1967 / _1968) + float2(-1.5f, 0.5f)) * _39_m26.yy;
                        float2 _1978 = _1931 * _39_m26.xy;
                        float _1979 = _1974.x;
                        float _1980 = _1976.x;
                        float _1983 = _1974.y;
                        float _1986 = _1976.y;
                        _2030 = ((((_1965.x * _1968.x) * _43.SampleCmpLevelZero(_27, float3(_1978 + float2(_1979, _1980), _423).xy, _1923)) + ((_1965.y * _1968.x) * _43.SampleCmpLevelZero(_27, float3(_1978 + float2(_1983, _1980), _423).xy, _1923))) + ((_1965.x * _1968.y) * _43.SampleCmpLevelZero(_27, float3(_1978 + float2(_1979, _1986), _423).xy, _1923))) + ((_1965.y * _1968.y) * _43.SampleCmpLevelZero(_27, float3(_1978 + float2(_1983, _1986), _423).xy, _1923));
                    }
                    else
                    {
                        _2030 = 1.0f;
                    }
                    _2031 = _2030;
                }
                else
                {
                    _2031 = 1.0f;
                }
                _2032 = _2031;
            }
            else
            {
                _2032 = 1.0f;
            }
            _2034 = _1837 ? _2032 : _1836;
            _2035 = _2032;
        }
        else
        {
            _2034 = _1836;
            _2035 = 1.0f;
        }
        float _2038 = lerp(lerp(_2035, _2034, _1647), min(_2035, _2034), _39_m8.x);
        float _2087;
        if (_2038 > 0.001000000047497451305389404296875f)
        {
            float3 _2045 = _584 - _19_m65.xyz;
            float2 _2055 = (_2045 + (_19_m68.xyz * _2045.y)).xz * _19_m66.z;
            float2 _2062 = _19_m67.xy * _19_m75.w;
            _2087 = _2038 * lerp(1.0f, lerp(_42.SampleLevel(_26, _2055 + _2062, 0.0f), _42.SampleLevel(_26, (_2055 * _19_m67.w) + _2062, 0.0f), smoothstep(_19_m66.x, _19_m66.y, length(_2045.xz)).xxxx).x, _19_m67.z);
        }
        else
        {
            _2087 = _2038;
        }
        _2092 = float2(lerp(_2087, _39_m7.z, _39_m7.w), _2087);
        break;
    } while(false);
    float _2099 = lerp(lerp(1.0f, _2092.x, _39_m6.x), 1.0f, _19_m80.z);
    float _2100 = dot(_1251, _1597);
    float3 _2107 = _1555 * _19_m79.z;
    float3 _2108 = _2107 * 0.64999997615814208984375f;
    float _2112 = dot(_1551, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2125 = clamp(-dot(_1601.xz, normalize(_628.xz)), 0.0f, 1.0f);
    float _2129 = 1.0f - _19_m91.x;
    float _2137 = smoothstep(0.25f, 1.0f, clamp(lerp(_2100, ((-_2100) * ((_2100 * 0.5f) - 1.0f)) + 0.5f, (_2125 * smoothstep(0.25f, 0.75f, 1.0f - abs(_628.y))) * _2129) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2144 = max(max(_2137, _2137), _2137) - min(min(_2137, _2137), _2137);
    float _2146 = smoothstep(0.25f, 1.0f, dot(_1251, _628));
    float _2153 = min(min(1.0f, _507), _2137);
    float _2154 = _2146 * _507;
    float3 _2158 = ((clamp(dot(_611, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1147, 1.0f.xxx, (_19_m80.y * _2153).xxx);
    float3 _2160 = _2153.xxx;
    float3 _2183 = _2099.xxx;
    float3 _2184 = lerp((_2158 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1148), 1.5f), clamp(_1148, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1615, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1615, _2160) + ((_2158 * clamp(_1148, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1611 * _19_m91.y)))) * _19_m79.y, _2183);
    float3 _2185 = lerp(lerp(lerp(dot(_2108, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2108, 1.2000000476837158203125f.xxx), _2107, clamp((_507 * _2146) + _2137, 0.0f, 1.0f).xxx), _1551, _2160);
    float3 _2191 = _2185 * ((1.0f - _2144).xxx + (_2137.xxxx.xyz * _2144));
    float3 _2200 = lerp(lerp(_2107, lerp(_2112.xxx, _1551, 1.2000000476837158203125f.xxx), _2154.xxx), _2191 * clamp(dot(_2185, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2191, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2183);
    float4 _2204 = float4(_2200, _2099);
    float _2206 = lerp(_2154, _2153, _2099);
    float _2209 = lerp(_19_m79.z, 1.0f, _2206);
    float3 _2217 = float3(_628.x, lerp(0.5f, _1597.y, _2099), _628.z);
    float _2230 = clamp(dot(_611, _460), 0.0f, 1.0f);
    float _2231 = dot(_611, normalize(((_1597 * _2099) + ((_2217 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2217, _2217)))) * 2.0f)) + (_460 * (2.0f + _2099))));
    float _2232 = _1557 * _1557;
    float _2236 = (((_2231 * _2232) - _2231) * _2231) + 1.0f;
    float _2237 = _2236 * _2236;
    float _2241 = 2.0f * _2230;
    float _2243 = (1.0f + _2230) - _2230;
    float _2260 = (1.0f - _52_m6) + (_1548 * _52_m6);
    float3 _2262 = ((_2184 * _2200) * _2260) + (((_1554 * clamp((((_2232 != _2237) ? (_2232 / _2237) : 1.0f) * (0.5f / ((_2241 + (_1557 * _2243)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2184 * (((_2206 * 0.5f) + 0.5f) * _2209)) * 1.0f)) * _19_m92.w);
    float _2263 = dot(_2262, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2266 = clamp(_2263 - 0.5f, 0.0f, 0.5f);
    float3 _2302 = normalize(cross(_628, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2308 = dot(_460, _1251);
    float _2310 = 1.0f - abs(_2308);
    float _2332 = dot(_1601, _1251);
    float _2344 = 1.0f - _2099;
    float _2371 = _2230 * _2230;
    float _2372 = _2371 * _2230;
    float2 _2373 = float2(1.0f, _2230);
    float2 _2376 = float2(1.0f, _1556);
    float3 _2379 = float3(1.0f, _1556, (_1556 * _1556) * _1556);
    float _2384 = dot(mul(_2373, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2376) / dot(mul(float3(1.0f, _2371, _2372), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2379);
    float _2389 = dot(mul(_2373, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2376) / dot(mul(float3(1.0f, _2230, _2372), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2379);
    float3 _2392 = (_1554 * _2384) + _2389.xxx;
    float _2393 = _2384 + _2389;
    float3 _2399 = -_460;
    float3 _2417 = (((((_554.xyz * _52_m25.xyz) * _52_m7) * ((_52_m64 > 0.5f) ? lerp(1.0f, lerp(_52_m66, _52_m67, (sin(_52_m65 * _19_m75.w) * 0.5f) + 0.5f), _554.w) : 1.0f)) + (_52_m70.xyz * clamp((_52_m75 - _1308) * _52_m73, 0.0f, 1.0f))) + (lerp(lerp((((_1415 * clamp((_1444 + _1415.w) * _52_m57.w, 0.0f, 1.0f)) * _52_m57) + _1441).xyz, (_52_m58.xyz * _1459) * _52_m46, _1459.xxx).xyz, _52_m58.xyz, (_52_m58.w * _1494).xxx).xyz * (clamp(_1461, 0.0f, 1.0f) * ((1.0f - _52_m41) + (_1494 * _52_m41)))).xyz) * _2260;
    float3 _2418 = lerp(_2263.xxx, _2262, ((_2266 * _2266) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2310)) * _19_m87.w) * min(min(clamp(dot(_591, _2302) + 1.0f, 0.0f, 1.0f), _507), 1.0f)) * (lerp(0.25f.xxx, _1551, _19_m88.z.xxx) * clamp(dot(_2302, _1251), 0.0f, 1.0f))) + ((((((lerp(_1146 * (1.0f / max(max(max(_1146.x, _1146.y), _1146.z) * 0.5f, 1.0f)), _1615, _2183) * clamp(lerp(dot(_1145.xyz, _1251) * _1145.w, ((-_2332) * ((_2332 * 0.5f) - 1.0f)) + 0.5f, _2099), 0.0f, 1.0f)) * ((_2344 + (_2125 * _2099)) * _2129)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2310)) * min(_507, 1.0f)) * (_2344 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2112) * _2099))) * max(0.1500000059604644775390625f.xxx, _1551)));
    float2 _2422 = floor(_1514 * 0.03125f);
    int _2430 = int((_2422.x + (_2422.y * _35_m5)) * 8.0f);
    float _2437 = floor(_441 - (_19_m3.y * _35_m11));
    float _2441 = clamp(_2437, 0.0f, _35_m7 - 1.0f);
    int _2443 = int(_2441 * 8.0f);
    float3 _2445;
    _2445 = (_2418 + _2417) + (((_59.SampleLevel(_25, reflect(_2399, _611), (1.2000000476837158203125f * log2(max(_1247, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2392 + ((_1554 * ((1.0f - _2393) / _2393)) * _2392)) * 1.0f)) * ((clamp(_1148, 0.5f, 1.5f) * _19_m79.w) * _2209)) * _1147);
    float3 _2446;
    [loop]
    for (int _2448 = 0; _2448 <= 7; _2445 = _2446, _2448++)
    {
        uint _2466 = (_2437 <= _2441) ? (_31.Load(uint(_2430 + _2448) * 4 + 0) & _31.Load(uint((_19_m21.y + _2443) + _2448) * 4 + 0)) : 0u;
        uint _2467 = uint(_2448);
        _2446 = _2445;
        uint _2472;
        float3 _2469;
        [loop]
        for (uint _2471 = _2466; _2471 != 0u; _2446 = _2469, _2471 = _2472)
        {
            uint _2476 = firstbitlow(_2471);
            _2472 = _2471 ^ (1u << (_2476 & 31u));
            int _2482 = int((32u * _2467) + _2476) * 8;
            int _2485 = _2482 + 1;
            int _2488 = _2482 + 2;
            int _2491 = _2482 + 3;
            int _2494 = _2482 + 4;
            int _2497 = _2482 + 5;
            int _2500 = _2482 + 6;
            int _2503 = _2482 + 7;
            uint _2507 = uint(_37_m6[_2497].w);
            float _2582;
            if ((_2507 & 1u) == 1u)
            {
                uint _2513 = asuint(_37_m6[_2497].x);
                uint _2520 = asuint(_37_m6[_2497].y);
                uint _2527 = asuint(_37_m6[_2497].z);
                uint _2534 = asuint(_37_m6[_2500].x);
                uint _2541 = asuint(_37_m6[_2500].y);
                uint _2548 = asuint(_37_m6[_2500].z);
                float3 _2567 = abs(mul(float4(_584 - _37_m6[_2485].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2513).x, spvUnpackHalf2x16(_2527).x, spvUnpackHalf2x16(_2541).x, 0.0f), float4(spvUnpackHalf2x16(_2513 >> 16u).x, spvUnpackHalf2x16(_2527 >> 16u).x, spvUnpackHalf2x16(_2541 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2520).x, spvUnpackHalf2x16(_2534).x, spvUnpackHalf2x16(_2548).x, 0.0f), float4(spvUnpackHalf2x16(_2520 >> 16u).x, spvUnpackHalf2x16(_2534 >> 16u).x, spvUnpackHalf2x16(_2548 >> 16u).x, 0.0f))).xyz);
                float _2574 = _37_m6[_2503].x * 0.5f;
                float _2580 = 1.0f - clamp((max(max(_2567.x, _2567.y), _2567.z) - (_2574 + 0.5f)) / (0.5f - _2574), 0.0f, 1.0f);
                _2582 = _2580 * _2580;
            }
            else
            {
                _2582 = 1.0f;
            }
            if (false || (_2582 < 0.001000000047497451305389404296875f))
            {
                _2469 = _2446;
                continue;
            }
            float3 _3276;
            if (_37_m6[_2482].w < 1.5f)
            {
                float3 _3275;
                do
                {
                    uint _2595 = asuint(_37_m6[_2491].w);
                    if ((_2595 == 16u) || ((_37_m6[_2491].z + _19_m91.z) < 0.5f))
                    {
                        _3275 = _2446;
                        break;
                    }
                    bool _2607 = (uint(_37_m6[_2482].w) & 1u) == 0u;
                    bool _2611 = (!_2607) && (_37_m6[_2488].z > 0.0f);
                    bool _2612 = _2595 == 4u;
                    float _2613 = float(_2607);
                    float _2621 = (0.5f + (0.5f * _37_m6[_2488].y)) - abs(_37_m6[_2488].x);
                    float _2622 = _37_m6[_2488].y - _2621;
                    float _2629 = abs(max((1.0f - abs(_2621)) - abs(_2622), 0.00048828125f));
                    float3 _2633 = normalize(float3(_2621, _2622, (_37_m6[_2488].x >= 0.0f) ? _2629 : (-_2629)));
                    float _2639 = lerp(_37_m6[_2500].w, max(2.0f * _37_m6[_2494].y, 0.100000001490116119384765625f), float(_2612));
                    float3 _2644 = _37_m6[_2485].xyz - _584;
                    float3 _2645 = -_2633;
                    float3 _2650 = lerp(_2644, _2645 * dot(_2644, _2645), (float(_2612 && (_37_m6[_2494].z > 0.5f)) * _2613).xxx);
                    float _2651 = dot(_2650, _2650);
                    float _2652 = rsqrt(_2651);
                    float3 _2653 = _2650 * _2652;
                    float3 _2686;
                    float _2687;
                    if (_2611)
                    {
                        float3 _2657 = (_2633 * _37_m6[_2488].z) * 0.5f;
                        float3 _2658 = _2650 - _2657;
                        float3 _2659 = _2650 + _2657;
                        float _2660 = length(_2658);
                        float _2661 = length(_2659);
                        float3 _2670 = normalize(cross(cross(_2633, _2653), _2633));
                        _2686 = _2670;
                        _2687 = ((1.0f / ((((_2660 * _2661) + dot(_2658, _2659)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2670, _2658) / _2660) + (dot(_2670, _2659) / _2661)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_37_m6[_2488].z * _2652, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2686 = _2653;
                        _2687 = 1.0f;
                    }
                    float _2709;
                    if (_2639 < 0.0f)
                    {
                        float _2703 = _2651 * (_37_m6[_2485].w * _37_m6[_2485].w);
                        float _2706 = clamp(1.0f - (_2703 * _2703), 0.0f, 1.0f);
                        _2709 = lerp(1.0f / (_2651 + 1.0f), _2687, float(_2611)) * (_2706 * _2706);
                    }
                    else
                    {
                        float3 _2692 = _2650 * _37_m6[_2485].w;
                        _2709 = _2687 * pow(1.0f - clamp(dot(_2692, _2692), 0.0f, 1.0f), _2639);
                    }
                    float _2714 = clamp((dot(_2686, _2645) - _37_m6[_2488].z) * _37_m6[_2488].w, 0.0f, 1.0f);
                    float _2717 = _2709 * lerp(1.0f, _2714 * _2714, _2613);
                    int _2719 = int(_37_m6[_2503].w);
                    float _2824;
                    if ((!_2611) && (_2719 >= 0))
                    {
                        uint _2725 = uint(_2719);
                        float2 _2817;
                        [branch]
                        if (_2613 != 0.0f)
                        {
                            float4 _2807 = mul(_66_m1[_2725], float4(_584, 1.0f));
                            _2817 = _66_m0[_2725].xy + (clamp(_2807.xy / _2807.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2725].zw);
                        }
                        else
                        {
                            float3 _2740 = mul(float4(-_2650, 0.0f), _66_m1[_2725]).xyz;
                            float3 _431 = _2740;
                            float3 _430 = _2740;
                            float3 _429 = abs(_2740);
                            uint _2749 = uint(int(_429.y > _429.x));
                            uint _2755 = (_429.z > _429[_2749]) ? 2u : _2749;
                            uint _2761 = (_2755 * 2u) + uint(_430[_2755] < 0.0f);
                            float _2765 = abs(_431[_2761 / 2u]);
                            float _2785 = 0.5f - (0.000244140625f / _66_m0[_2725].w);
                            _2817 = _66_m0[_2725].xy + (clamp(float2((float(_2761) + ((((_431[uint(_379[_2761].x)] * _380[_2761].x) / _2765) * _2785) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_431[uint(_379[_2761].y)] * _380[_2761].y) / _2765) * _2785)), 0.0f.xx, 1.0f.xx) * _66_m0[_2725].zw);
                        }
                        _2824 = _2717 * _64.SampleLevel(_25, _2817, 0.0f).x;
                    }
                    else
                    {
                        _2824 = _2717;
                    }
                    float _2825 = _2824 * _2582;
                    float3 _3274;
                    do
                    {
                        float3 _3273;
                        [branch]
                        if (_2825 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2612)
                            {
                                _3274 = lerp(_2446, _37_m6[_2482].xyz, (_2825 * (_37_m6[_2494].x * ((1.0f - _37_m6[_2494].w) + (smoothstep(-0.5f, 0.5f, dot(_612, _2686)) * _37_m6[_2494].w)))).xxx);
                                break;
                            }
                            float _2845 = dot(_1251, _2686);
                            float _2846 = clamp(_2845, 0.0f, 1.0f);
                            float _3149;
                            if (_2595 != 0u)
                            {
                                bool _2852 = _2607 || ((_2507 & 2u) != 0u);
                                int _2901;
                                if (_2852)
                                {
                                    _2901 = int(_37_m6[_2491].x);
                                }
                                else
                                {
                                    uint _2856 = asuint(_37_m6[_2488].w);
                                    uint _2858 = asuint(_37_m6[_2491].x);
                                    float3 _2859 = _584 - _37_m6[_2485].xyz;
                                    float3 _2860 = abs(_2859);
                                    float _2861 = _2860.x;
                                    float _2862 = _2860.y;
                                    float _2864 = _2860.z;
                                    int _2896;
                                    if ((_2861 > _2862) && (_2861 > _2864))
                                    {
                                        _2896 = int((_2859.x > 0.0f) ? (_2856 >> 24u) : ((_2856 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2888;
                                        if (_2862 > _2864)
                                        {
                                            _2888 = int((_2859.y > 0.0f) ? ((_2856 >> 8u) & 255u) : (_2856 & 255u));
                                        }
                                        else
                                        {
                                            _2888 = int((_2859.z > 0.0f) ? ((_2858 >> 8u) & 255u) : (_2858 & 255u));
                                        }
                                        _2896 = _2888;
                                    }
                                    _2901 = (_2896 < 80) ? _2896 : (-1);
                                }
                                bool _2902 = _2901 >= 0;
                                float _3148;
                                if (_2902)
                                {
                                    float3 _2909 = _584 - _37_m6[_2485].xyz;
                                    float4 _2929 = mul(_39_m10[_2901], float4((_584 - ((_2909 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2909, _2909)))) * _39_m11[_2901].x)) + (_612 * (_39_m11[_2901].y * 5.0f)), 1.0f));
                                    float _2930 = _2929.w;
                                    float3 _2933 = _2929.xyz / _2930.xxx;
                                    float2 _2934 = _2933.xy;
                                    float3 _2942 = _2933.xyz;
                                    bool3 _2943 = bool3(_2942.x <= 0.0f.xxx.x, _2942.y <= 0.0f.xxx.y, _2942.z <= 0.0f.xxx.z);
                                    bool3 _2944 = bool3(_2942.x >= 1.0f.xxx.x, _2942.y >= 1.0f.xxx.y, _2942.z >= 1.0f.xxx.z);
                                    float _2947 = _2933.z;
                                    float2 _2958 = ((_2934 * (_39_m12[_2901].zw - _39_m12[_2901].xy)) + _39_m12[_2901].xy).xy * _39_m13.zw;
                                    float2 _2960 = floor(_2958 + 0.5f.xx);
                                    float2 _2961 = _2958 - _2960;
                                    float _2963 = _2961.x + 0.5f;
                                    float _2964 = _2963 * _2963;
                                    float _2967 = 1.0f - _2961.x;
                                    float _2968 = min(_2961.x, 0.0f);
                                    float _2971 = _2961.x + 1.0f;
                                    float _2972 = max(_2961.x, 0.0f);
                                    float _2984 = _2961.y + 0.5f;
                                    float _2985 = _2984 * _2984;
                                    float _2988 = 1.0f - _2961.y;
                                    float _2989 = min(_2961.y, 0.0f);
                                    float _2992 = _2961.y + 1.0f;
                                    float _2993 = max(_2961.y, 0.0f);
                                    float3 _3005 = float3(0.1599999964237213134765625f * _2967, 0.1599999964237213134765625f * ((_2971 - (_2972 * _2972)) + 1.0f), _2964 * 0.07999999821186065673828125f);
                                    float3 _3006 = float3(0.1599999964237213134765625f * ((_2964 * 0.5f) - _2961.x), 0.1599999964237213134765625f * ((_2967 - (_2968 * _2968)) + 1.0f), 0.1599999964237213134765625f * _2971) + _3005;
                                    float3 _3008 = float3(0.1599999964237213134765625f * _2988, 0.1599999964237213134765625f * ((_2992 - (_2993 * _2993)) + 1.0f), _2985 * 0.07999999821186065673828125f);
                                    float3 _3009 = float3(0.1599999964237213134765625f * ((_2985 * 0.5f) - _2961.y), 0.1599999964237213134765625f * ((_2988 - (_2989 * _2989)) + 1.0f), 0.1599999964237213134765625f * _2992) + _3008;
                                    float3 _3015 = ((_3005 / _3006) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.xxx;
                                    float3 _3017 = ((_3008 / _3009) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.yyy;
                                    float2 _3019 = _2960 * _39_m13.xy;
                                    float _3020 = _3015.x;
                                    float _3021 = _3017.x;
                                    float _3024 = _3015.y;
                                    float _3027 = _3015.z;
                                    float _3030 = _3017.y;
                                    float _3037 = _3017.z;
                                    float _3044 = _3006.x;
                                    float _3045 = _3009.x;
                                    float _3047 = _3006.y;
                                    float _3049 = _3006.z;
                                    float _3051 = _3009.y;
                                    float _3055 = _3009.z;
                                    float _3113 = (((((((_3044 * _3045) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3020, _3021), _423).xy, _2947)) + ((_3047 * _3045) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3024, _3021), _423).xy, _2947))) + ((_3049 * _3045) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3027, _3021), _423).xy, _2947))) + ((_3044 * _3051) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3020, _3030), _423).xy, _2947))) + ((_3047 * _3051) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3024, _3030), _423).xy, _2947))) + ((_3049 * _3051) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3027, _3030), _423).xy, _2947))) + ((_3044 * _3055) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3020, _3037), _423).xy, _2947));
                                    float2 _3134 = min(_2934, 1.0f.xx - _2934);
                                    _3148 = _2902 ? lerp(1.0f, (any(bool3(_2943.x || _2944.x, _2943.y || _2944.y, _2943.z || _2944.z)) || ((asuint(_2947) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3113 + ((_3047 * _3055) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3024, _3037), _423).xy, _2947))) + ((_3049 * _3055) * _41.SampleCmpLevelZero(_27, float3(_3019 + float2(_3027, _3037), _423).xy, _2947))), _2852 ? min(_39_m11[_2901].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_39_m11[_2901].z - _2930) * 0.25f, min(_3134.x, _3134.y)))) : _39_m11[_2901].w) : 1.0f;
                                }
                                else
                                {
                                    _3148 = clamp(dot(_591, _2686) + 1.0f, 0.0f, 1.0f);
                                }
                                _3149 = _3148;
                            }
                            else
                            {
                                _3149 = 1.0f;
                            }
                            float _3229;
                            float3 _3230;
                            float _3231;
                            float3 _3232;
                            float3 _3233;
                            float _3234;
                            float _3235;
                            [branch]
                            if (_2595 == 0u)
                            {
                                float3 _3209 = _37_m6[_2482].xyz * _2825;
                                float3 _3222 = _2204.xyz;
                                _3229 = _2825;
                                _3230 = (_37_m6[_2482].xyz * ((1.0f - _37_m6[_2494].y) + ((1.0f / max(1.0f, max(max(_3209.x, _3209.y), _3209.z) * lerp(0.75f, 0.5f, _2344))) * _37_m6[_2494].y))) * lerp(0.25f * _37_m6[_2494].x, 1.0f, clamp(_2845 + 0.5f, 0.0f, 1.0f));
                                _3231 = _2846;
                                _3232 = _3222;
                                _3233 = _3222;
                                _3234 = 1.0f;
                                _3235 = 0.0f;
                            }
                            else
                            {
                                float _3202;
                                float _3203;
                                float3 _3204;
                                float3 _3205;
                                float _3206;
                                float _3207;
                                if (_2595 == 3u)
                                {
                                    _3202 = _2825 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _37_m6[_2494].x), lerp(0.89999997615814208984375f, 0.5f, _37_m6[_2494].x), _2310) * _3149);
                                    _3203 = clamp(dot(_1251, -normalize(cross(_628, cross(_628, _2686)))), 0.0f, 1.0f);
                                    _3204 = lerp(0.5f.xxx, _1551, _37_m6[_2494].y.xxx);
                                    _3205 = 0.0f.xxx;
                                    _3206 = 1.0f;
                                    _3207 = 0.0f;
                                }
                                else
                                {
                                    bool _3158 = _2595 == 1u;
                                    float _3182;
                                    float3 _3183;
                                    float _3184;
                                    float _3185;
                                    if (_3158)
                                    {
                                        _3182 = clamp(clamp(_2845 + _37_m6[_2494].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3149;
                                        _3183 = _1555 * _37_m6[_2494].y;
                                        _3184 = 1.0f;
                                        _3185 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3162 = _2595 == 2u;
                                        float _3174;
                                        if (_3162)
                                        {
                                            _3174 = smoothstep(_37_m6[_2494].x + 0.0500000007450580596923828125f, _37_m6[_2494].x - 0.0500000007450580596923828125f, _1247) * ((1.0f - _37_m6[_2494].z) + (step(0.5f, _1250) * _37_m6[_2494].z));
                                        }
                                        else
                                        {
                                            _3174 = 1.0f;
                                        }
                                        _3182 = _2846;
                                        _3183 = 0.0f.xxx;
                                        _3184 = _3174;
                                        _3185 = _3162 ? _37_m6[_2494].y : 0.0f;
                                    }
                                    bool3 _3186 = _3158.xxx;
                                    _3202 = _2825;
                                    _3203 = _3182;
                                    _3204 = float3(_3186.x ? _1551.x : 0.0f.xxx.x, _3186.y ? _1551.y : 0.0f.xxx.y, _3186.z ? _1551.z : 0.0f.xxx.z);
                                    _3205 = _3183;
                                    _3206 = _3184;
                                    _3207 = _3185;
                                }
                                _3229 = _3202;
                                _3230 = _37_m6[_2482].xyz;
                                _3231 = _3203;
                                _3232 = _3204;
                                _3233 = _3205;
                                _3234 = _3206;
                                _3235 = _3207;
                            }
                            float3 _3263;
                            [branch]
                            if (_2595 != 3u)
                            {
                                float _3240 = lerp(_1557, 0.00999999977648258209228515625f, _3235);
                                float _3243 = dot(_611, normalize(_2686 + _460));
                                float _3244 = _3240 * _3240;
                                float _3248 = (((_3243 * _3244) - _3243) * _3243) + 1.0f;
                                float _3249 = _3248 * _3248;
                                _3263 = ((_1554 * clamp((((_3244 != _3249) ? (_3244 / _3249) : 1.0f) * (0.5f / ((_2241 + (_3240 * _2243)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3234) * _37_m6[_2503].z;
                            }
                            else
                            {
                                _3263 = 0.0f.xxx;
                            }
                            float3 _3266 = _3230 * _3229;
                            _3273 = _2446 + (((_3266 * lerp(_3233, _3232, _3231.xxx)) * _2260) + ((_3266 * _3263) * _3231));
                        }
                        else
                        {
                            _3273 = _2446;
                        }
                        _3274 = _3273;
                        break;
                    } while(false);
                    _3275 = _3274;
                    break;
                } while(false);
                _3276 = _3275;
            }
            else
            {
                _3276 = _2446;
            }
            _2469 = _3276;
        }
    }
    float3 _3316;
    [branch]
    if (_52_m12 > 0.5f)
    {
        _3316 = lerp(lerp(0.5f.xxx, lerp(dot(_2445, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2445, _52_m14.xxx), _52_m15.xxx) * _52_m13, _52_m26.xyz, _52_m26.w.xxx) + ((_52_m27.xyz * smoothstep(1.0f - _52_m16, 1.0f, 1.0f - clamp(_2308, 0.0f, 1.0f))) * _52_m17);
    }
    else
    {
        _3316 = _2445;
    }
    float4 _3323 = float4(_3316 * _19_m20.y, _1548);
    _3323.w = (_52_m8 == 1.0f) ? _1548 : 1.0f;
    float4 _3712;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3348 = _584.y * _19_m46.w;
        float _3353 = max(0.00999999977648258209228515625f, _3348 + _19_m47.w);
        float3 _3367 = exp(_19_m45.xyz * ((-max(0.0f, (_461 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3353)) / _3353) * exp(_3348 + _19_m48.w))));
        float _3370 = dot(_2399, _19_m44.xyz);
        float _3376 = _19_m45.w * _19_m45.w;
        float _3380 = (1.0f + _3376) - ((2.0f * _19_m45.w) * _3370);
        float3 _3704;
        float _3705;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3535 = (uint3(int3(int(_618.x), int(_618.y), int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3536 = _3535.y;
            uint _3537 = _3535.z;
            uint _3540 = _3535.x + (_3536 * _3537);
            uint _3542 = _3536 + (_3537 * _3540);
            uint _3544 = _3537 + (_3540 * _3542);
            uint _3546 = _3540 + (_3542 * _3544);
            float _3568 = dot(_2399, -_17_m0[2].xyz);
            float3 _3575 = _584 - _17_m11.xyz;
            float _3577 = (_19_m55.w * ((_3568 > 5.9604644775390625e-08f) ? (1.0f / _3568) : 0.0f)) * (1.0f / _461);
            float _3578 = _3575.y;
            float _3579 = _3577 * _3578;
            float _3581 = _17_m11.y + _3579;
            float _3582 = _3578 - _3579;
            float _3584 = (1.0f - _3577) * _461;
            float _3598 = max(-127.0f, _19_m49.z * _3582);
            float _3622 = max(-127.0f, _19_m52.x * _3582);
            float _3633 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3581 - _19_m49.x)))) * ((abs(_3598) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3598)) / _3598) : (0.693147182464599609375f - (0.2402265071868896484375f * _3598)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3581 - _19_m52.z)))) * ((abs(_3622) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3622)) / _3622) : (0.693147182464599609375f - (0.2402265071868896484375f * _3622))));
            float _3655 = clamp((_461 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3658 = clamp((max(clamp(exp2(-(_3633 * _3584)), 0.0f, 1.0f), _19_m51.w) + clamp((_461 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3655, 0.0f, 1.0f);
            float4 _3698 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _69.SampleLevel(_25, float3((_1514 + ((((float3(uint3(_3546, _3542 + (_3544 * _3546), _427) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_441 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_441 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3704 = _3698.xyz + (((_19_m51.xyz * (1.0f - _3658)) + (((_19_m54.xyz * pow(clamp(dot(_460, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3633 * max(_3584 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3655))) * _3698.w);
            _3705 = _3698.w * _3658;
        }
        else
        {
            float3 _3407 = _584 - _17_m11.xyz;
            float _3409 = _3407.y;
            float _3423 = max(-127.0f, _19_m49.z * _3409);
            float _3447 = max(-127.0f, _19_m52.x * _3409);
            float _3458 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3423) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3423)) / _3423) : (0.693147182464599609375f - (0.2402265071868896484375f * _3423)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3447) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3447)) / _3447) : (0.693147182464599609375f - (0.2402265071868896484375f * _3447))));
            float _3480 = clamp((_461 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3483 = clamp((max(clamp(exp2(-(_3458 * _461)), 0.0f, 1.0f), _19_m51.w) + clamp((_461 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3480, 0.0f, 1.0f);
            _3704 = (_19_m51.xyz * (1.0f - _3483)) + (((_19_m54.xyz * pow(clamp(dot(_460, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3458 * max(_461 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3480));
            _3705 = _3483;
        }
        float3 _3710 = (_3323.xyz * (_3367 * _3705)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3370 * _3370)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3376) / max((12.56637096405029296875f * _3380) * sqrt(_3380), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3367)) * _3705) + _3704);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3710 = (_3710 * 0.65f) + (_3323.xyz * 0.35f);

        }

        // RenoDX code end
        _3712 = float4(_3710.x, _3710.y, _3710.z, _3323.w);
    }
    else
    {
        _3712 = _3323;
    }
    _14 = _3712;
    _15 = _1584;
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
    return stage_output;
}

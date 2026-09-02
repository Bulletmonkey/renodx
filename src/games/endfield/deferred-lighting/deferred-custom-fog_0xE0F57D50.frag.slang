#include "../shared.h"
// Endfield 1.5 Vulkan shader 0xE0F57D50, migrated from 1.4.4 shader 0xCD344C80.
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

static float _410 = (float)0;
static float3 _411 = (float3)0;
static float _413 = (float)0;
static uint _414 = (uint)0;

static const int2 _366[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _367[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float4 _49_m40 : packoffset(c16);
    float4 _49_m41 : packoffset(c17);
    float4 _49_m42 : packoffset(c18);
    float4 _49_m43 : packoffset(c19);
    float4 _49_m44 : packoffset(c20);
    float _49_m45 : packoffset(c21);
    float _49_m46 : packoffset(c21.y);
    float _49_m47 : packoffset(c21.z);
    float _49_m48 : packoffset(c21.w);
    float _49_m49 : packoffset(c22);
    float _49_m50 : packoffset(c22.y);
    float _49_m51 : packoffset(c22.z);
    float _49_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _61_62 : register(b50)
{
    float4 _62_m0[32] : packoffset(c0);
    column_major float4x4 _62_m1[32] : packoffset(c32);
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
[[vk::binding(44, 0)]] Texture2D<float4> _50 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _51 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _52 : register(t39);
[[vk::binding(7, 1)]] Texture2D<float4> _53 : register(t7);
[[vk::binding(2, 1)]] Texture2D<float4> _54 : register(t2);
[[vk::binding(6, 1)]] Texture2D<float4> _55 : register(t6);
[[vk::binding(4, 1)]] Texture2D<float4> _56 : register(t4);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3);
[[vk::binding(5, 1)]] Texture2D<float4> _58 : register(t5);
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
    float _430 = 1.0f / gl_FragCoord.w;
    float3 _445 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _446 = dot(_445, _445);
    float _448 = rsqrt(max(_446, 9.9999999392252902907785028219223e-09f));
    float3 _449 = _445 * _448;
    float _450 = _446 * _448;
    uint _453 = asuint(_23_m0[_13]._m2.x);
    bool _458 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _471;
    float4 _472;
    if (_458)
    {
        _471 = asfloat(_32_Load4((_453 + 2u) * 16 + 0));
        _472 = asfloat(_32_Load4(_453 * 16 + 0));
    }
    else
    {
        _471 = _23_m0[_13]._m0[2];
        _472 = _23_m0[_13]._m0[0];
    }
    float4 _478 = _53.SampleBias(_26, _3, _20_m16);
    float3 _483 = _478.xyz * _49_m24.xyz;
    float4 _487 = _54.SampleBias(_26, _3, _20_m16);
    float _488 = _487.x;
    float _490 = _487.z;
    float _492 = 1.0f - _487.w;
    float _496 = _478.w * _49_m24.w;
    float3 _501 = _483 * _49_m18;
    float3 _505 = lerp(dot(_501, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _501, _49_m19.xxx);
    float4 _509 = _55.SampleBias(_26, _3, _20_m16);
    _509.w = _509.w * _509.x;
    float2 _518 = (_509.wy * 2.0f) - 1.0f.xx;
    float3 _519 = float3(_518.x, _518.y, _411.z);
    float2 _520 = _518.xy;
    _519.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_520, _520), 0.0f, 1.0f)));
    float2 _528 = _519.xy * _49_m3;
    float4 _533 = _56.SampleBias(_26, _3, _20_m16);
    float3 _545 = _4 + _18_m11.xyz;
    float3 _549 = _545 - float3(_472.w, _413, _471.w);
    _549.y = 6.103515625e-05f;
    float3 _552 = normalize(_549);
    float3 _562 = mul(float3(_528.x, _528.y, _519.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _571 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _572 = (_562 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_562, _562)))) * _571;
    float3 _573 = normalize(_5) * _571;
    uint2 _575 = uint2(gl_FragCoord.xy);
    float3 _585 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _594 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _607 = float4(float(_594 & 255u), float((_594 >> 8u) & 255u), float((_594 >> 16u) & 255u), float((_594 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _608 = _607.x;
    float _611 = _607.w;
    float _617 = _545.y;
    float _620 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _617) * _607.y;
    float _621 = max(_607.z, _620);
    float _630 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1124;
    float3 _1125;
    float3 _1126;
    float _1127;
    if (_20_m80.y < 0.5f)
    {
        float3 _648 = _545 - (_20_m105.xyz + (_585 * (-_20_m107.w)));
        float _662 = max(clamp((max(abs(_648.x), abs(_648.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_648.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _964;
        float4 _965;
        float4 _966;
        float _967;
        float _968;
        if ((_20_m105.w != 0.0f) && (_662 < 1.0f))
        {
            float3 _675 = _545 - (_20_m105.xyz + (_585 * (-_20_m107.y)));
            float _689 = max(clamp((max(abs(_675.x), abs(_675.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_675.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _765;
            float4 _766;
            float4 _767;
            float4 _768;
            if (_689 < 1.0f)
            {
                float3 _698 = ((_545 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _700 = _698 - floor(_698);
                float4 _704 = _42.SampleLevel(_26, _700, 0.0f);
                float _705 = 1.0f - _689;
                float _709 = _20_m106.y * 0.5f;
                float _714 = _700.x;
                float _715 = clamp(_700.y, _709, 1.0f - _709) * 0.3333333432674407958984375f;
                float _716 = _700.z;
                float4 _719 = _43.SampleLevel(_25, float3(_714, _715, _716), 0.0f);
                float _735 = _704.x;
                float _745 = _704.y;
                float _755 = _704.z;
                _765 = _662 + (_719.w * _705);
                _766 = float4(((_43.SampleLevel(_25, float3(_714, _715 + 0.666666686534881591796875f, _716), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _755, _755) * _705;
                _767 = float4(((_43.SampleLevel(_25, float3(_714, _715 + 0.3333333432674407958984375f, _716), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _745, _745) * _705;
                _768 = float4(((_719.xyz * 4.0f) - 2.0f.xxx) * _735, _735) * _705;
            }
            else
            {
                _765 = _662;
                _766 = 0.0f.xxxx;
                _767 = 0.0f.xxxx;
                _768 = 0.0f.xxxx;
            }
            float3 _774 = _545 - (_20_m105.xyz + (_585 * (-_20_m107.z)));
            float _788 = max(clamp((max(abs(_774.x), abs(_774.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_774.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _868;
            float4 _869;
            float4 _870;
            float4 _871;
            if (_788 < 1.0f)
            {
                float3 _797 = ((_545 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _799 = _797 - floor(_797);
                float4 _803 = _44.SampleLevel(_26, _799, 0.0f);
                float _805 = _689 * (1.0f - _788);
                float _809 = _20_m106.y * 0.5f;
                float _814 = _799.x;
                float _815 = clamp(_799.y, _809, 1.0f - _809) * 0.3333333432674407958984375f;
                float _816 = _799.z;
                float4 _819 = _45.SampleLevel(_25, float3(_814, _815, _816), 0.0f);
                float _835 = _803.x;
                float _846 = _803.y;
                float _857 = _803.z;
                _868 = _765 + (_819.w * _805);
                _869 = _766 + (float4(((_45.SampleLevel(_25, float3(_814, _815 + 0.666666686534881591796875f, _816), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _857, _857) * _805);
                _870 = _767 + (float4(((_45.SampleLevel(_25, float3(_814, _815 + 0.3333333432674407958984375f, _816), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _846, _846) * _805);
                _871 = _768 + (float4(((_819.xyz * 4.0f) - 2.0f.xxx) * _835, _835) * _805);
            }
            else
            {
                _868 = _765;
                _869 = _766;
                _870 = _767;
                _871 = _768;
            }
            float4 _954;
            float4 _955;
            float4 _956;
            float _957;
            if (_788 > 0.0f)
            {
                float3 _880 = ((_545 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _883 = _20_m106.xyz * 0.5f;
                float3 _885 = clamp(_880 - floor(_880), _883, 1.0f.xxx - _883);
                float4 _889 = _46.SampleLevel(_26, _885, 0.0f);
                float _891 = _788 * (1.0f - _662);
                float _895 = _20_m106.y * 0.5f;
                float _900 = _885.x;
                float _901 = clamp(_885.y, _895, 1.0f - _895) * 0.3333333432674407958984375f;
                float _902 = _885.z;
                float4 _905 = _47.SampleLevel(_25, float3(_900, _901, _902), 0.0f);
                float _921 = _889.x;
                float _932 = _889.y;
                float _943 = _889.z;
                _954 = _869 + (float4(((_47.SampleLevel(_25, float3(_900, _901 + 0.666666686534881591796875f, _902), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _943, _943) * _891);
                _955 = _870 + (float4(((_47.SampleLevel(_25, float3(_900, _901 + 0.3333333432674407958984375f, _902), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _932, _932) * _891);
                _956 = _871 + (float4(((_905.xyz * 4.0f) - 2.0f.xxx) * _921, _921) * _891);
                _957 = _868 + (_905.w * _891);
            }
            else
            {
                _954 = _869;
                _955 = _870;
                _956 = _871;
                _957 = _868;
            }
            float _960 = clamp((_957 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _964 = _954;
            _965 = _955;
            _966 = _956;
            _967 = _960 - _662;
            _968 = (_960 + _662) * 0.5f;
        }
        else
        {
            _964 = 0.0f.xxxx;
            _965 = 0.0f.xxxx;
            _966 = 0.0f.xxxx;
            _967 = 0.0f;
            _968 = 1.0f;
        }
        float4 _988 = _966 + float4(_20_m108.x * _968, (_20_m108.y * _968) + ((_20_m108.w * _967) * 0.5f), _20_m108.z * _968, (_20_m108.w * _968) + ((_20_m108.y * _967) * 0.375f));
        float4 _1008 = _965 + float4(_20_m109.x * _968, (_20_m109.y * _968) + ((_20_m109.w * _967) * 0.5f), _20_m109.z * _968, (_20_m109.w * _968) + ((_20_m109.y * _967) * 0.375f));
        float4 _1028 = _964 + float4(_20_m110.x * _968, (_20_m110.y * _968) + ((_20_m110.w * _967) * 0.5f), _20_m110.z * _968, (_20_m110.w * _968) + ((_20_m110.y * _967) * 0.375f));
        float4 _1032 = float4(_572, 1.0f);
        float3 _1038 = max(float3(dot(_988, _1032), dot(_1008, _1032), dot(_1028, _1032)), 0.0f.xxx) * _630;
        float3 _1046 = ((_988.xyz * 0.2125999927520751953125f) + (_1008.xyz * 0.715200006961822509765625f)) + (_1028.xyz * 0.072200000286102294921875f);
        float3 _1050 = _1046 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1046, _1046)));
        float _1052 = abs(_1050.y);
        float3 _1053 = _1050;
        _1053.y = _1052;
        float4 _1054 = float4(_1053.x, _1053.y, _1053.z, 0.0f.xxxx.w);
        _1054.w = 1.0f;
        float4 _1058 = float4(_1050.x, _1052, _1050.z, 1.0f);
        float3 _1063 = max(float3(dot(_988, _1058), dot(_1008, _1058), dot(_1028, _1058)), 0.0f.xxx);
        float _1071 = _1038.z;
        float _1072 = _1038.y;
        float4 _1077 = lerp(float4(_1071, _1072, -1.0f, 0.666666686534881591796875f), float4(_1072, _1071, 0.0f, -0.3333333432674407958984375f), step(_1071, _1072).xxxx);
        float _1078 = _1038.x;
        float _1079 = _1077.x;
        float4 _1087 = lerp(float4(_1079, _1077.yw, _1078), float4(_1078, _1077.yz, _1079), step(_1079, _1078).xxxx);
        float _1088 = _1087.x;
        float _1089 = _1087.w;
        float _1090 = _1087.y;
        float _1092 = _1088 - min(_1089, _1090);
        float _1102 = frac(abs(_1087.z + ((_1089 - _1090) / ((6.0f * _1092) + 9.9999997473787516355514526367188e-05f))));
        float _1109 = min(_1092 / (_1088 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1102 - 0.5f))) * clamp(_1088, 0.0f, 1.0f));
        float _1111 = 2.0f / (2.0f - _1109);
        _1124 = _1054;
        _1125 = _1038;
        _1126 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1102, _1109, _1111).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1109.xxx) * _1111;
        _1127 = max(max(max(_1063.x, _1063.y), _1063.z), 0.0f) * _630;
    }
    else
    {
        _1124 = 0.0f.xxxx;
        _1125 = 1.0f.xxx;
        _1126 = _20_m81.xyz;
        _1127 = _630;
    }
    float3 _1847;
    float _1848;
    float _1849;
    float _1850;
    float _1851;
    float3 _1852;
    float3 _1853;
    [branch]
    if ((clamp(_608 + _621, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1155 = 1.0f - _488;
        float _1158 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_483 * _1155, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1161 = _458.xxx;
        float3 _1163 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1167 = float3(_1161.x ? _1163.x : _11.x, _1161.y ? _1163.y : _11.y, _1161.z ? _1163.z : _11.z) * _20_m89.z;
        float3 _1169 = float3(_1161.x ? _10.xzy.x : _10.x, _1161.y ? _10.xzy.y : _10.y, _1161.z ? _10.xzy.z : _10.z);
        float3 _1171 = abs(_1169) - 0.20000000298023223876953125f.xxx;
        float3 _1174 = max((_1171 * _1171) * _1171, 6.103515625e-05f.xxx);
        float3 _1177 = _1174 / dot(_1174, 1.0f.xxx).xxx;
        float2 _1185 = _1167.xy;
        float2 _1190 = _1167.zy;
        float4 _1200 = ((_50.SampleBias(_26, _1167.xz, _20_m16) * _1177.y) + (_50.SampleBias(_26, _1185, _20_m16) * _1177.z)) + (_50.SampleBias(_26, _1190, _20_m16) * _1177.x);
        float _1201 = _1200.w;
        float _1203 = 1.10000002384185791015625f - _1201;
        float _1212 = max(smoothstep(0.800000011920928955078125f - _1201, _1203, clamp((_608 * _1155) + (_572.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1201, _1203, clamp(_620 * _1155, 0.0f, 1.0f)));
        float _1219 = smoothstep(0.5f, 0.75f, _488);
        float _1221 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _492) * _1158;
        float _1224 = clamp(_1221 + _1219, 0.0f, 1.0f) * max(_608, _621);
        bool _1228 = !((step(_608, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _621)) != 0.0f);
        bool2 _1229 = _1228.xx;
        float2 _1231 = (1.0f - _621).xx;
        float2 _1232 = float2(_1229.x ? float2(3.0f, 4.345600128173828125f).x : _1231.x, _1229.y ? float2(3.0f, 4.345600128173828125f).y : _1231.y);
        float _1233 = 1.0f - _1224;
        float _1236 = _1228 ? _20_m10.x : 1.0f;
        float _1238 = _1236 * _1232.x;
        float _1240 = _1236 * _1232.y;
        float3 _1241 = _1167 * 20.0f;
        float3 _1242 = _1167 * 34.345600128173828125f;
        float3 _1244 = pow(max(_1171, 0.0f.xxx), 10.0f.xxx);
        float3 _1248 = _1244 / max(dot(_1244, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1250 = _1248.y;
        float2 _1251 = _1241.xz * 1.0f;
        float2 _1252 = floor(_1251);
        float2 _1255 = frac(_1252 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1259 = _1255 + dot(_1255, _1255 + 34.345001220703125f.xx).xx;
        float _1260 = _1259.x;
        float _1261 = _1259.y;
        float2 _1265 = frac(float2(_1260 * _1261, _1260 + _1261));
        float2 _1268 = frac((_1252 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1272 = _1268 + dot(_1268, _1268 + 34.345001220703125f.xx).xx;
        float _1273 = _1272.x;
        float _1274 = _1272.y;
        float2 _1278 = frac(float2(_1273 * _1274, _1273 + _1274));
        float _1284 = _1265.x;
        float _1286 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1284);
        float2 _1287 = ((_1251 - _1252) + ((((_1278 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1290 = _1287.y;
        float2 _1294 = float2(_1287.x * 1.25f, _1290 * ((_1290 < 0.0f) ? 1.25f : 0.75f));
        float _1297 = _1238 + _1284;
        float _1301 = _1228 ? frac(_1297) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1297, 0.0f, 1.0f));
        float _1313 = _1265.y;
        float _1316 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1301) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1301)) * step(0.001000000047497451305389404296875f, smoothstep(_1286, 0.0f, length(_1294)))) * step(_1233, _1313 - 0.100000001490116119384765625f);
        float _1319 = _1316 * _1250;
        float _1327 = _1248.z;
        float2 _1328 = _1241.xy * 1.0f;
        float2 _1329 = floor(_1328);
        float2 _1332 = frac(_1329 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1336 = _1332 + dot(_1332, _1332 + 34.345001220703125f.xx).xx;
        float _1337 = _1336.x;
        float _1338 = _1336.y;
        float2 _1342 = frac(float2(_1337 * _1338, _1337 + _1338));
        float2 _1345 = frac((_1329 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1349 = _1345 + dot(_1345, _1345 + 34.345001220703125f.xx).xx;
        float _1350 = _1349.x;
        float _1351 = _1349.y;
        float2 _1355 = frac(float2(_1350 * _1351, _1350 + _1351));
        float _1361 = _1342.x;
        float _1363 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1361);
        float2 _1364 = ((_1328 - _1329) + ((((_1355 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1367 = _1364.y;
        float2 _1371 = float2(_1364.x * 1.25f, _1367 * ((_1367 < 0.0f) ? 1.25f : 0.75f));
        float _1374 = _1238 + _1361;
        float _1378 = _1228 ? frac(_1374) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1374, 0.0f, 1.0f));
        float _1390 = _1342.y;
        float _1393 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1378) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1378)) * step(0.001000000047497451305389404296875f, smoothstep(_1363, 0.0f, length(_1371)))) * step(_1233, _1390 - 0.100000001490116119384765625f);
        float _1396 = _1393 * _1327;
        float _1404 = _1248.x;
        float2 _1405 = _1241.zy * 1.0f;
        float2 _1406 = floor(_1405);
        float2 _1409 = frac(_1406 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1413 = _1409 + dot(_1409, _1409 + 34.345001220703125f.xx).xx;
        float _1414 = _1413.x;
        float _1415 = _1413.y;
        float2 _1419 = frac(float2(_1414 * _1415, _1414 + _1415));
        float2 _1422 = frac((_1406 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1426 = _1422 + dot(_1422, _1422 + 34.345001220703125f.xx).xx;
        float _1427 = _1426.x;
        float _1428 = _1426.y;
        float2 _1432 = frac(float2(_1427 * _1428, _1427 + _1428));
        float _1438 = _1419.x;
        float _1440 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1438);
        float2 _1441 = ((_1405 - _1406) + ((((_1432 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1444 = _1441.y;
        float2 _1448 = float2(_1441.x * 1.25f, _1444 * ((_1444 < 0.0f) ? 1.25f : 0.75f));
        float _1451 = _1238 + _1438;
        float _1455 = _1228 ? frac(_1451) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1451, 0.0f, 1.0f));
        float _1467 = _1419.y;
        float _1470 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1455) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1455)) * step(0.001000000047497451305389404296875f, smoothstep(_1440, 0.0f, length(_1448)))) * step(_1233, _1467 - 0.100000001490116119384765625f);
        float _1473 = _1470 * _1404;
        float2 _1486 = (float4(((clamp(_1294 / _1286.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1278.x)) * _1316) * _1250, _1319, _1313).xy + float4(((clamp(_1371 / _1363.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1355.x)) * _1393) * _1327, _1396, _1390).xy) + float4(((clamp(_1448 / _1440.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1432.x)) * _1470) * _1404, _1473, _1467).xy;
        float _1488 = max(_1473, max(_1319, _1396));
        float4 _1491 = float4(_1486, _1488, 0.0f);
        float2 _1493 = _1242.xz * 1.0f;
        float2 _1494 = floor(_1493);
        float2 _1497 = frac(_1494 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1501 = _1497 + dot(_1497, _1497 + 34.345001220703125f.xx).xx;
        float _1502 = _1501.x;
        float _1503 = _1501.y;
        float2 _1507 = frac(float2(_1502 * _1503, _1502 + _1503));
        float2 _1510 = frac((_1494 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1514 = _1510 + dot(_1510, _1510 + 34.345001220703125f.xx).xx;
        float _1515 = _1514.x;
        float _1516 = _1514.y;
        float2 _1520 = frac(float2(_1515 * _1516, _1515 + _1516));
        float _1526 = _1507.x;
        float _1528 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1526);
        float2 _1529 = ((_1493 - _1494) + ((((_1520 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1532 = _1529.y;
        float2 _1536 = float2(_1529.x * 1.25f, _1532 * ((_1532 < 0.0f) ? 1.25f : 0.75f));
        float _1539 = _1240 + _1526;
        float _1543 = _1228 ? frac(_1539) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1539, 0.0f, 1.0f));
        float _1555 = _1507.y;
        float _1558 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1543) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1543)) * step(0.001000000047497451305389404296875f, smoothstep(_1528, 0.0f, length(_1536)))) * step(_1233, _1555 - 0.100000001490116119384765625f);
        float _1561 = _1558 * _1250;
        float2 _1566 = _1242.xy * 1.0f;
        float2 _1567 = floor(_1566);
        float2 _1570 = frac(_1567 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1574 = _1570 + dot(_1570, _1570 + 34.345001220703125f.xx).xx;
        float _1575 = _1574.x;
        float _1576 = _1574.y;
        float2 _1580 = frac(float2(_1575 * _1576, _1575 + _1576));
        float2 _1583 = frac((_1567 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1587 = _1583 + dot(_1583, _1583 + 34.345001220703125f.xx).xx;
        float _1588 = _1587.x;
        float _1589 = _1587.y;
        float2 _1593 = frac(float2(_1588 * _1589, _1588 + _1589));
        float _1599 = _1580.x;
        float _1601 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1599);
        float2 _1602 = ((_1566 - _1567) + ((((_1593 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1605 = _1602.y;
        float2 _1609 = float2(_1602.x * 1.25f, _1605 * ((_1605 < 0.0f) ? 1.25f : 0.75f));
        float _1612 = _1240 + _1599;
        float _1616 = _1228 ? frac(_1612) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1612, 0.0f, 1.0f));
        float _1628 = _1580.y;
        float _1631 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1616) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1616)) * step(0.001000000047497451305389404296875f, smoothstep(_1601, 0.0f, length(_1609)))) * step(_1233, _1628 - 0.100000001490116119384765625f);
        float _1634 = _1631 * _1327;
        float2 _1639 = _1242.zy * 1.0f;
        float2 _1640 = floor(_1639);
        float2 _1643 = frac(_1640 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1647 = _1643 + dot(_1643, _1643 + 34.345001220703125f.xx).xx;
        float _1648 = _1647.x;
        float _1649 = _1647.y;
        float2 _1653 = frac(float2(_1648 * _1649, _1648 + _1649));
        float2 _1656 = frac((_1640 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1660 = _1656 + dot(_1656, _1656 + 34.345001220703125f.xx).xx;
        float _1661 = _1660.x;
        float _1662 = _1660.y;
        float2 _1666 = frac(float2(_1661 * _1662, _1661 + _1662));
        float _1672 = _1653.x;
        float _1674 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1672);
        float2 _1675 = ((_1639 - _1640) + ((((_1666 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1678 = _1675.y;
        float2 _1682 = float2(_1675.x * 1.25f, _1678 * ((_1678 < 0.0f) ? 1.25f : 0.75f));
        float _1685 = _1240 + _1672;
        float _1689 = _1228 ? frac(_1685) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1685, 0.0f, 1.0f));
        float _1701 = _1653.y;
        float _1704 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1689) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1689)) * step(0.001000000047497451305389404296875f, smoothstep(_1674, 0.0f, length(_1682)))) * step(_1233, _1701 - 0.100000001490116119384765625f);
        float _1707 = _1704 * _1404;
        float2 _1715 = (float4(((clamp(_1536 / _1528.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1520.x)) * _1558) * _1250, _1561, _1555).xy + float4(((clamp(_1609 / _1601.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1593.x)) * _1631) * _1327, _1634, _1628).xy) + float4(((clamp(_1682 / _1674.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1666.x)) * _1704) * _1404, _1707, _1701).xy;
        float4 _1720 = float4(_1715, max(_1707, max(_1561, _1634)), 0.0f);
        float _1722 = step(max(float2(_1286 * _1316, _413) * _1250, max(float2(_1363 * _1393, _413) * _1327, float2(_1440 * _1470, _413) * _1404)).x, 0.00999999977648258209228515625f);
        float2 _1726 = _1491.xy + (_1720.xy * _1722);
        float3 _1735 = float3((_1200.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1726.x, _1726.y, 0.0f.xxx.z);
        float2 _1739 = float2(0.0f, (_20_m10.x * _20_m89.z) * 0.75f);
        float3 _1742 = float3(_1169.x, 0.0f, _1169.z);
        float3 _1748 = abs(_1742 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1742, _1742)))) - 0.20000000298023223876953125f.xxx;
        float3 _1751 = max((_1748 * _1748) * _1748, 6.103515625e-05f.xxx);
        float3 _1754 = _1751 / dot(_1751, 1.0f.xxx).xxx;
        float _1773 = _1754.z;
        float _1775 = _1754.x;
        float4 _1777 = (_51.SampleBias(_26, _1185, _20_m16) * _1773) + (_51.SampleBias(_26, _1190, _20_m16) * _1775);
        float2 _1789 = _1735.xy + ((((_1777.xy * 2.0f) - 1.0f.xx) * ((_51.SampleBias(_26, _1185 + _1739, _20_m16).w * _1773) + (_51.SampleBias(_26, _1190 + _1739, _20_m16).w * _1775))) * _1224);
        float3 _1790 = float3(_1789.x, _1789.y, _1735.z);
        float _1791 = _1777.z;
        float _1796 = max(max(max(_1491.zw * step(0.00999999977648258209228515625f, _1488), _1720.zw * _1722).x, step(1.0099999904632568359375f - _1224, _1200.z)), smoothstep(1.0f - _1791, 1.10000002384185791015625f - _1791, _1224) * _1224);
        float2 _1797 = _1789.xy;
        _1790.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1797, _1797), 0.0f, 1.0f)));
        float3 _1804 = normalize(_1790);
        float3 _1805 = cross(_572, float3(0.0f, 1.0f, 0.0f));
        bool3 _1808 = (dot(_1805, _1805) > 6.103515625e-05f).xxx;
        float3 _1809 = normalize(_1805);
        float3 _1810 = float3(_1808.x ? _1809.x : float3(1.0f, 0.0f, 0.0f).x, _1808.y ? _1809.y : float3(1.0f, 0.0f, 0.0f).y, _1808.z ? _1809.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1821 = min(_492, 0.0500000007450580596923828125f);
        float _1822 = lerp(_492, _1821, _1796);
        float _1839 = lerp(1.0f, 0.5f, (_1212 * (1.0f - _1158)) * (1.0f - _1221));
        _1847 = normalize(lerp(_572, normalize(((_1810 * _1804.x) + (cross(_1810, _572) * _1804.y)) + (_572 * _1804.z)), _1796.xxx));
        _1848 = _1796;
        _1849 = _1821;
        _1850 = _1796;
        _1851 = max(_1822 - ((0.20000000298023223876953125f * _1158) * _1212), min(0.20000000298023223876953125f, _1822));
        _1852 = _505 * _1839;
        _1853 = lerp(_483, _483 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_483, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1796 * _1219).xxx) * _1839;
    }
    else
    {
        _1847 = _572;
        _1848 = 0.0f;
        _1849 = 0.00999999977648258209228515625f;
        _1850 = 0.0f;
        _1851 = _492;
        _1852 = _505;
        _1853 = _483;
    }
    float3 _1983;
    float _1984;
    float3 _1985;
    float3 _1986;
    float _1987;
    [branch]
    if ((_611 - _49_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1858 = _458.xxx;
        float3 _1860 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1861 = float3(_1858.x ? _1860.x : _11.x, _1858.y ? _1860.y : _11.y, _1858.z ? _1860.z : _11.z);
        float3 _1864 = _1861 * _20_m89.z;
        float3 _1866 = float3(_1858.x ? _10.xzy.x : _10.x, _1858.y ? _10.xzy.y : _10.y, _1858.z ? _10.xzy.z : _10.z);
        float3 _1868 = abs(_1866) - 0.20000000298023223876953125f.xxx;
        float3 _1871 = max((_1868 * _1868) * _1868, 6.103515625e-05f.xxx);
        float3 _1874 = _1871 / dot(_1871, 1.0f.xxx).xxx;
        float4 _1897 = ((_52.SampleBias(_26, _1864.xz, _20_m16) * _1874.y) + (_52.SampleBias(_26, _1864.xy, _20_m16) * _1874.z)) + (_52.SampleBias(_26, _1864.zy, _20_m16) * _1874.x);
        float _1898 = _1866.y;
        float _1905 = clamp(_611 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1861.y) * clamp(_611 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1911 = _1905 * (2.0f - _1905);
        float _1918 = smoothstep(2.0f - _1911, 2.349999904632568359375f - _1911, ((_1898 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1897.z) * ((_490 * _490) * float(gl_FrontFacing));
        float _1930 = lerp(1.0f, 0.5f, ((_1905 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1853 * (1.0f - _488), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1897.w) * ((_1898 * 0.25f) + 0.75f));
        float3 _1932 = _1918.xxx;
        float2 _1938 = (_1897.xy * 2.0f) - 1.0f.xx;
        float3 _1939 = float3(_1938.x, _1938.y, _411.z);
        float2 _1940 = _1938.xy;
        _1939.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1940, _1940), 0.0f, 1.0f)));
        float2 _1948 = _1939.xy * 2.0f;
        float3 _1950 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1948.x, _1948.y, _1939.z), _1932);
        float3 _1954 = _1950 * rsqrt(max(6.103515625e-05f, dot(_1950, _1950)));
        float _1955 = _572.y;
        float _1958 = step(0.00999999977648258209228515625f, 1.0f - (_1955 * _1955));
        float _1962 = lerp(_572.z, _1955, _1958);
        float3 _1969 = (float3(0.0f, _1958, 1.0f - _1958) - (_572 * _1962)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1962 * _1962)));
        _1983 = ((cross(_1969, _572) * _1954.x) + (_1969 * _1954.y)) + (_572 * _1954.z);
        _1984 = lerp(_1851, 0.89999997615814208984375f, clamp(_1918 * 4.0f, 0.0f, 1.0f));
        _1985 = lerp(_1852 * _1930, 0.3079999983310699462890625f.xxx, _1932);
        _1986 = lerp(_1853 * _1930, 0.87999999523162841796875f.xxx, _1932);
        _1987 = lerp(_488, 0.0f, _1918);
    }
    else
    {
        _1983 = _572;
        _1984 = _1851;
        _1985 = _1852;
        _1986 = _1853;
        _1987 = _488;
    }
    bool2 _1991 = (_49_m49 != 0.0f).xx;
    float3x3 _2005 = float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz);
    float _2044 = (_49_m50 * (_49_m51 - dot(_545, _49_m44.xyz))) + ((_58.SampleBias(_59, (lerp(float2(_1991.x ? _7.x : _3.x, _1991.y ? _7.y : _3.y), mul(_2005, _545 - mul(_23_m0[_13]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _49_m45.xx) * _49_m41.xy) + _49_m41.zw, _20_m16).x - ((max(_49_m47, _23_m0[_13]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _49_m52);
    if ((clamp(_2044 * _49_m46, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _2073 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _2075 = abs(_2073);
    if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _2075 : (-_2075)), (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) - _2073) < 0.0f)
    {
        discard;
    }
    float _2086 = 0.959999978542327880859375f - (_1987 * 0.959999978542327880859375f);
    float3 _2087 = _1986 * _2086;
    float3 _2090 = lerp(0.039999999105930328369140625f.xxx * _487.y, _1986, _1987.xxx);
    float3 _2091 = _2090 * _490;
    float3 _2092 = _1985 * _2086;
    float _2094 = max(_1984 * _1984, 0.0078125f);
    float2 _2107 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _2107.y = -_2107.y;
    float2 _2120 = ((sqrt(sqrt(abs(_2107 * 0.5f))) * float2(int2(sign(_2107)))) * 0.5f) + 0.5f.xx;
    float4 _2123 = float4(_2120.x, _2120.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2123.z = 1.0f;
    _2123.w = (_1850 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2136 = lerp(-_36_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2140 = normalize(float3(_2136.x, 6.103515625e-05f, _2136.z));
    float3 _2150 = lerp(_36_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2154 = _2150 * lerp(_36_m3.w, 1.0f, _20_m91.w);
    int _2158 = int(_575.x);
    int _2159 = int(_575.y);
    float4 _2163 = _40.Load(int3(int3(_2158, _2159, 0).xy, 0));
    float _2168 = _2163.y;
    float _2171 = lerp(lerp(1.0f, _2163.x, _38_m6.x), 1.0f, _20_m80.z);
    float _2172 = dot(_1983, _2136);
    float3 _2179 = _2092 * _20_m79.z;
    float3 _2180 = _2179 * 0.64999997615814208984375f;
    float _2184 = dot(_2087, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2197 = clamp(-dot(_2140.xz, normalize(_585.xz)), 0.0f, 1.0f);
    float _2201 = 1.0f - _20_m91.x;
    float _2209 = smoothstep(0.25f, 1.0f, clamp(lerp(_2172, ((-_2172) * ((_2172 * 0.5f) - 1.0f)) + 0.5f, (_2197 * smoothstep(0.25f, 0.75f, 1.0f - abs(_585.y))) * _2201) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f));
    float _2216 = max(max(_2209, _2209), _2209) - min(min(_2209, _2209), _2209);
    float _2218 = smoothstep(0.25f, 1.0f, dot(_1983, _585));
    float _2225 = min(min(_2168, 1.0f), _2209);
    float _2226 = _2218 * _2168;
    float3 _2230 = ((clamp(dot(_572, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1126, 1.0f.xxx, (_20_m80.y * _2225).xxx);
    float3 _2232 = _2225.xxx;
    float3 _2255 = _2171.xxx;
    float3 _2256 = lerp((_2230 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1127), 1.5f), clamp(_1127, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2154, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2154, _2232) + ((_2230 * clamp(_1127, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2150 * _20_m91.y)))) * _20_m79.y, _2255);
    float3 _2257 = lerp(lerp(lerp(dot(_2180, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2180, 1.2000000476837158203125f.xxx), _2179, clamp((_2168 * _2218) + _2209, 0.0f, 1.0f).xxx), _2087, _2232);
    float3 _2263 = _2257 * ((1.0f - _2216).xxx + (_2209.xxxx.xyz * _2216));
    float3 _2272 = lerp(lerp(_2179, lerp(_2184.xxx, _2087, 1.2000000476837158203125f.xxx), _2226.xxx), _2263 * clamp(dot(_2257, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2263, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2255);
    float4 _2276 = float4(_2272, _2171);
    float _2278 = lerp(_2226, _2225, _2171);
    float _2281 = lerp(_20_m79.z, 1.0f, _2278);
    float3 _2289 = float3(_585.x, lerp(0.5f, _2136.y, _2171), _585.z);
    float _2302 = clamp(dot(_1847, _449), 0.0f, 1.0f);
    float _2303 = dot(_1847, normalize(((_2136 * _2171) + ((_2289 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2289, _2289)))) * 2.0f)) + (_449 * (2.0f + _2171))));
    float _2304 = _2094 * _2094;
    float _2308 = (((_2303 * _2304) - _2303) * _2303) + 1.0f;
    float _2309 = _2308 * _2308;
    float _2313 = 2.0f * _2302;
    float _2315 = (1.0f + _2302) - _2302;
    float _2332 = (1.0f - _49_m6) + (_496 * _49_m6);
    float3 _2334 = ((_2256 * _2272) * _2332) + (((_2090 * clamp((((_2304 != _2309) ? (_2304 / _2309) : 1.0f) * (0.5f / ((_2313 + (_2094 * _2315)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2256 * (((_2278 * 0.5f) + 0.5f) * _2281)) * 1.0f)) * _20_m92.w);
    float _2335 = dot(_2334, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2338 = clamp(_2335 - 0.5f, 0.0f, 0.5f);
    float3 _2374 = normalize(cross(_585, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float _2380 = dot(_449, _1983);
    float _2382 = 1.0f - abs(_2380);
    float _2404 = dot(_2140, _1983);
    float _2416 = 1.0f - _2171;
    float _2443 = lerp(_1984, _1849, _1848);
    float _2444 = _2443 * _2443;
    float _2445 = _2302 * _2302;
    float _2446 = _2445 * _2302;
    float2 _2447 = float2(1.0f, _2302);
    float2 _2450 = float2(1.0f, _2444);
    float3 _2453 = float3(1.0f, _2444, (_2444 * _2444) * _2444);
    float _2458 = dot(mul(_2447, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2450) / dot(mul(float3(1.0f, _2445, _2446), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2453);
    float _2463 = dot(mul(_2447, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2450) / dot(mul(float3(1.0f, _2302, _2446), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2453);
    float3 _2466 = (_2091 * _2458) + _2463.xxx;
    float _2467 = _2458 + _2463;
    float3 _2495 = lerp(_2335.xxx, _2334, ((_2338 * _2338) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m88.w), lerp(0.89999997615814208984375f, 0.5f, _20_m88.w), _2382)) * _20_m87.w) * min(min(clamp(dot(_552, _2374) + 1.0f, 0.0f, 1.0f), 1.0f), _2168)) * (lerp(0.25f.xxx, _2087, _20_m88.z.xxx) * clamp(dot(_2374, _1983), 0.0f, 1.0f))) + ((((((lerp(_1125 * (1.0f / max(max(max(_1125.x, _1125.y), _1125.z) * 0.5f, 1.0f)), _2154, _2255) * clamp(lerp(dot(_1124.xyz, _1983) * _1124.w, ((-_2404) * ((_2404 * 0.5f) - 1.0f)) + 0.5f, _2171), 0.0f, 1.0f)) * ((_2416 + (_2197 * _2171)) * _2201)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2382)) * min(1.0f, _2168)) * (_2416 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2184) * _2171))) * max(0.1500000059604644775390625f.xxx, _2087)));
    float2 _2498 = float2(_575);
    float2 _2500 = floor(_2498 * 0.03125f);
    int _2508 = int((_2500.x + (_2500.y * _34_m5)) * 8.0f);
    float _2515 = floor(_430 - (_20_m3.y * _34_m11));
    float _2519 = clamp(_2515, 0.0f, _34_m7 - 1.0f);
    int _2521 = int(_2519 * 8.0f);
    float3 _2523;
    _2523 = (_2495 + ((((_533.xyz * _49_m25.xyz) * _49_m7) + (_49_m43.xyz * clamp((_49_m48 - _2044) * _49_m46, 0.0f, 1.0f))) * _2332)) + ((((_57.SampleBias(_25, (normalize(mul(_2005, _1847)).xy * 0.5f) + 0.5f.xx, _20_m16).xyz * _49_m40.xyz) * ((_2466 + ((_2091 * ((1.0f - _2467) / _2467)) * _2466)) * 1.0f)) * ((clamp(_1127, 0.5f, 1.5f) * _20_m79.w) * _2281)) * _1126);
    float3 _2524;
    [loop]
    for (int _2526 = 0; _2526 <= 7; _2523 = _2524, _2526++)
    {
        uint _2544 = (_2515 <= _2519) ? (_30.Load(uint(_2508 + _2526) * 4 + 0) & _30.Load(uint((_20_m21.y + _2521) + _2526) * 4 + 0)) : 0u;
        uint _2545 = uint(_2526);
        _2524 = _2523;
        uint _2550;
        float3 _2547;
        [loop]
        for (uint _2549 = _2544; _2549 != 0u; _2524 = _2547, _2549 = _2550)
        {
            uint _2554 = firstbitlow(_2549);
            _2550 = _2549 ^ (1u << (_2554 & 31u));
            int _2560 = int((32u * _2545) + _2554) * 8;
            int _2563 = _2560 + 1;
            int _2566 = _2560 + 2;
            int _2569 = _2560 + 3;
            int _2572 = _2560 + 4;
            int _2575 = _2560 + 5;
            int _2578 = _2560 + 6;
            int _2581 = _2560 + 7;
            uint _2585 = uint(_36_m6[_2575].w);
            float _2660;
            if ((_2585 & 1u) == 1u)
            {
                uint _2591 = asuint(_36_m6[_2575].x);
                uint _2598 = asuint(_36_m6[_2575].y);
                uint _2605 = asuint(_36_m6[_2575].z);
                uint _2612 = asuint(_36_m6[_2578].x);
                uint _2619 = asuint(_36_m6[_2578].y);
                uint _2626 = asuint(_36_m6[_2578].z);
                float3 _2645 = abs(mul(float4(_545 - _36_m6[_2563].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2591).x, spvUnpackHalf2x16(_2605).x, spvUnpackHalf2x16(_2619).x, 0.0f), float4(spvUnpackHalf2x16(_2591 >> 16u).x, spvUnpackHalf2x16(_2605 >> 16u).x, spvUnpackHalf2x16(_2619 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2598).x, spvUnpackHalf2x16(_2612).x, spvUnpackHalf2x16(_2626).x, 0.0f), float4(spvUnpackHalf2x16(_2598 >> 16u).x, spvUnpackHalf2x16(_2612 >> 16u).x, spvUnpackHalf2x16(_2626 >> 16u).x, 0.0f))).xyz);
                float _2652 = _36_m6[_2581].x * 0.5f;
                float _2658 = 1.0f - clamp((max(max(_2645.x, _2645.y), _2645.z) - (_2652 + 0.5f)) / (0.5f - _2652), 0.0f, 1.0f);
                _2660 = _2658 * _2658;
            }
            else
            {
                _2660 = 1.0f;
            }
            if (false || (_2660 < 0.001000000047497451305389404296875f))
            {
                _2547 = _2524;
                continue;
            }
            float3 _3353;
            if (_36_m6[_2560].w < 1.5f)
            {
                float3 _3352;
                do
                {
                    uint _2673 = asuint(_36_m6[_2569].w);
                    if ((_2673 == 16u) || ((_36_m6[_2569].z + _20_m91.z) < 0.5f))
                    {
                        _3352 = _2524;
                        break;
                    }
                    bool _2685 = (uint(_36_m6[_2560].w) & 1u) == 0u;
                    bool _2689 = (!_2685) && (_36_m6[_2566].z > 0.0f);
                    bool _2690 = _2673 == 4u;
                    float _2691 = float(_2685);
                    float _2699 = (0.5f + (0.5f * _36_m6[_2566].y)) - abs(_36_m6[_2566].x);
                    float _2700 = _36_m6[_2566].y - _2699;
                    float _2707 = abs(max((1.0f - abs(_2699)) - abs(_2700), 0.00048828125f));
                    float3 _2711 = normalize(float3(_2699, _2700, (_36_m6[_2566].x >= 0.0f) ? _2707 : (-_2707)));
                    float _2717 = lerp(_36_m6[_2578].w, max(2.0f * _36_m6[_2572].y, 0.100000001490116119384765625f), float(_2690));
                    float3 _2722 = _36_m6[_2563].xyz - _545;
                    float3 _2723 = -_2711;
                    float3 _2728 = lerp(_2722, _2723 * dot(_2722, _2723), (float(_2690 && (_36_m6[_2572].z > 0.5f)) * _2691).xxx);
                    float _2729 = dot(_2728, _2728);
                    float _2730 = rsqrt(_2729);
                    float3 _2731 = _2728 * _2730;
                    float3 _2764;
                    float _2765;
                    if (_2689)
                    {
                        float3 _2735 = (_2711 * _36_m6[_2566].z) * 0.5f;
                        float3 _2736 = _2728 - _2735;
                        float3 _2737 = _2728 + _2735;
                        float _2738 = length(_2736);
                        float _2739 = length(_2737);
                        float3 _2748 = normalize(cross(cross(_2711, _2731), _2711));
                        _2764 = _2748;
                        _2765 = ((1.0f / ((((_2738 * _2739) + dot(_2736, _2737)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2748, _2736) / _2738) + (dot(_2748, _2737) / _2739)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2566].z * _2730, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2764 = _2731;
                        _2765 = 1.0f;
                    }
                    float _2787;
                    if (_2717 < 0.0f)
                    {
                        float _2781 = _2729 * (_36_m6[_2563].w * _36_m6[_2563].w);
                        float _2784 = clamp(1.0f - (_2781 * _2781), 0.0f, 1.0f);
                        _2787 = lerp(1.0f / (_2729 + 1.0f), _2765, float(_2689)) * (_2784 * _2784);
                    }
                    else
                    {
                        float3 _2770 = _2728 * _36_m6[_2563].w;
                        _2787 = _2765 * pow(1.0f - clamp(dot(_2770, _2770), 0.0f, 1.0f), _2717);
                    }
                    float _2792 = clamp((dot(_2764, _2723) - _36_m6[_2566].z) * _36_m6[_2566].w, 0.0f, 1.0f);
                    float _2795 = _2787 * lerp(1.0f, _2792 * _2792, _2691);
                    int _2797 = int(_36_m6[_2581].w);
                    float _2901;
                    if ((!_2689) && (_2797 >= 0))
                    {
                        uint _2803 = uint(_2797);
                        float2 _2894;
                        [branch]
                        if (_2691 != 0.0f)
                        {
                            float4 _2884 = mul(_62_m1[_2803], float4(_545.x, _617, _545.z, 1.0f));
                            _2894 = _62_m0[_2803].xy + (clamp(_2884.xy / _2884.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2803].zw);
                        }
                        else
                        {
                            float3 _2818 = mul(float4(-_2728, 0.0f), _62_m1[_2803]).xyz;
                            float3 _418 = _2818;
                            float3 _417 = _2818;
                            float3 _416 = abs(_2818);
                            uint _2827 = uint(int(_416.y > _416.x));
                            uint _2833 = (_416.z > _416[_2827]) ? 2u : _2827;
                            uint _2839 = (_2833 * 2u) + uint(_417[_2833] < 0.0f);
                            float _2843 = abs(_418[_2839 / 2u]);
                            float _2863 = 0.5f - (0.000244140625f / _62_m0[_2803].w);
                            _2894 = _62_m0[_2803].xy + (clamp(float2((float(_2839) + ((((_418[uint(_366[_2839].x)] * _367[_2839].x) / _2843) * _2863) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_418[uint(_366[_2839].y)] * _367[_2839].y) / _2843) * _2863)), 0.0f.xx, 1.0f.xx) * _62_m0[_2803].zw);
                        }
                        _2901 = _2795 * _60.SampleLevel(_25, _2894, 0.0f).x;
                    }
                    else
                    {
                        _2901 = _2795;
                    }
                    float _2902 = _2901 * _2660;
                    float3 _3351;
                    do
                    {
                        float3 _3350;
                        [branch]
                        if (_2902 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2690)
                            {
                                _3351 = lerp(_2524, _36_m6[_2560].xyz, (_2902 * (_36_m6[_2572].x * ((1.0f - _36_m6[_2572].w) + (smoothstep(-0.5f, 0.5f, dot(_573, _2764)) * _36_m6[_2572].w)))).xxx);
                                break;
                            }
                            float _2922 = dot(_1983, _2764);
                            float _2923 = clamp(_2922, 0.0f, 1.0f);
                            float _3226;
                            if (_2673 != 0u)
                            {
                                bool _2929 = _2685 || ((_2585 & 2u) != 0u);
                                int _2978;
                                if (_2929)
                                {
                                    _2978 = int(_36_m6[_2569].x);
                                }
                                else
                                {
                                    uint _2933 = asuint(_36_m6[_2566].w);
                                    uint _2935 = asuint(_36_m6[_2569].x);
                                    float3 _2936 = _545 - _36_m6[_2563].xyz;
                                    float3 _2937 = abs(_2936);
                                    float _2938 = _2937.x;
                                    float _2939 = _2937.y;
                                    float _2941 = _2937.z;
                                    int _2973;
                                    if ((_2938 > _2939) && (_2938 > _2941))
                                    {
                                        _2973 = int((_2936.x > 0.0f) ? (_2933 >> 24u) : ((_2933 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2965;
                                        if (_2939 > _2941)
                                        {
                                            _2965 = int((_2936.y > 0.0f) ? ((_2933 >> 8u) & 255u) : (_2933 & 255u));
                                        }
                                        else
                                        {
                                            _2965 = int((_2936.z > 0.0f) ? ((_2935 >> 8u) & 255u) : (_2935 & 255u));
                                        }
                                        _2973 = _2965;
                                    }
                                    _2978 = (_2973 < 80) ? _2973 : (-1);
                                }
                                bool _2979 = _2978 >= 0;
                                float _3225;
                                if (_2979)
                                {
                                    float3 _2986 = _545 - _36_m6[_2563].xyz;
                                    float4 _3006 = mul(_38_m10[_2978], float4((_545 - ((_2986 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2986, _2986)))) * _38_m11[_2978].x)) + (_573 * (_38_m11[_2978].y * 5.0f)), 1.0f));
                                    float _3007 = _3006.w;
                                    float3 _3010 = _3006.xyz / _3007.xxx;
                                    float2 _3011 = _3010.xy;
                                    float3 _3019 = _3010.xyz;
                                    bool3 _3020 = bool3(_3019.x <= 0.0f.xxx.x, _3019.y <= 0.0f.xxx.y, _3019.z <= 0.0f.xxx.z);
                                    bool3 _3021 = bool3(_3019.x >= 1.0f.xxx.x, _3019.y >= 1.0f.xxx.y, _3019.z >= 1.0f.xxx.z);
                                    float _3024 = _3010.z;
                                    float2 _3035 = ((_3011 * (_38_m12[_2978].zw - _38_m12[_2978].xy)) + _38_m12[_2978].xy).xy * _38_m13.zw;
                                    float2 _3037 = floor(_3035 + 0.5f.xx);
                                    float2 _3038 = _3035 - _3037;
                                    float _3040 = _3038.x + 0.5f;
                                    float _3041 = _3040 * _3040;
                                    float _3044 = 1.0f - _3038.x;
                                    float _3045 = min(_3038.x, 0.0f);
                                    float _3048 = _3038.x + 1.0f;
                                    float _3049 = max(_3038.x, 0.0f);
                                    float _3061 = _3038.y + 0.5f;
                                    float _3062 = _3061 * _3061;
                                    float _3065 = 1.0f - _3038.y;
                                    float _3066 = min(_3038.y, 0.0f);
                                    float _3069 = _3038.y + 1.0f;
                                    float _3070 = max(_3038.y, 0.0f);
                                    float3 _3082 = float3(0.1599999964237213134765625f * _3044, 0.1599999964237213134765625f * ((_3048 - (_3049 * _3049)) + 1.0f), _3041 * 0.07999999821186065673828125f);
                                    float3 _3083 = float3(0.1599999964237213134765625f * ((_3041 * 0.5f) - _3038.x), 0.1599999964237213134765625f * ((_3044 - (_3045 * _3045)) + 1.0f), 0.1599999964237213134765625f * _3048) + _3082;
                                    float3 _3085 = float3(0.1599999964237213134765625f * _3065, 0.1599999964237213134765625f * ((_3069 - (_3070 * _3070)) + 1.0f), _3062 * 0.07999999821186065673828125f);
                                    float3 _3086 = float3(0.1599999964237213134765625f * ((_3062 * 0.5f) - _3038.y), 0.1599999964237213134765625f * ((_3065 - (_3066 * _3066)) + 1.0f), 0.1599999964237213134765625f * _3069) + _3085;
                                    float3 _3092 = ((_3082 / _3083) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3094 = ((_3085 / _3086) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3096 = _3037 * _38_m13.xy;
                                    float _3097 = _3092.x;
                                    float _3098 = _3094.x;
                                    float _3101 = _3092.y;
                                    float _3104 = _3092.z;
                                    float _3107 = _3094.y;
                                    float _3114 = _3094.z;
                                    float _3121 = _3083.x;
                                    float _3122 = _3086.x;
                                    float _3124 = _3083.y;
                                    float _3126 = _3083.z;
                                    float _3128 = _3086.y;
                                    float _3132 = _3086.z;
                                    float _3190 = (((((((_3121 * _3122) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3097, _3098), _410).xy, _3024)) + ((_3124 * _3122) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3101, _3098), _410).xy, _3024))) + ((_3126 * _3122) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3104, _3098), _410).xy, _3024))) + ((_3121 * _3128) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3097, _3107), _410).xy, _3024))) + ((_3124 * _3128) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3101, _3107), _410).xy, _3024))) + ((_3126 * _3128) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3104, _3107), _410).xy, _3024))) + ((_3121 * _3132) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3097, _3114), _410).xy, _3024));
                                    float2 _3211 = min(_3011, 1.0f.xx - _3011);
                                    _3225 = _2979 ? lerp(1.0f, (any(bool3(_3020.x || _3021.x, _3020.y || _3021.y, _3020.z || _3021.z)) || ((asuint(_3024) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3190 + ((_3124 * _3132) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3101, _3114), _410).xy, _3024))) + ((_3126 * _3132) * _39.SampleCmpLevelZero(_27, float3(_3096 + float2(_3104, _3114), _410).xy, _3024))), _2929 ? min(_38_m11[_2978].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2978].z - _3007) * 0.25f, min(_3211.x, _3211.y)))) : _38_m11[_2978].w) : 1.0f;
                                }
                                else
                                {
                                    _3225 = clamp(dot(_552, _2764) + 1.0f, 0.0f, 1.0f);
                                }
                                _3226 = _3225;
                            }
                            else
                            {
                                _3226 = 1.0f;
                            }
                            float _3306;
                            float3 _3307;
                            float _3308;
                            float3 _3309;
                            float3 _3310;
                            float _3311;
                            float _3312;
                            [branch]
                            if (_2673 == 0u)
                            {
                                float3 _3286 = _36_m6[_2560].xyz * _2902;
                                float3 _3299 = _2276.xyz;
                                _3306 = _2902;
                                _3307 = (_36_m6[_2560].xyz * ((1.0f - _36_m6[_2572].y) + ((1.0f / max(1.0f, max(max(_3286.x, _3286.y), _3286.z) * lerp(0.75f, 0.5f, _2416))) * _36_m6[_2572].y))) * lerp(0.25f * _36_m6[_2572].x, 1.0f, clamp(_2922 + 0.5f, 0.0f, 1.0f));
                                _3308 = _2923;
                                _3309 = _3299;
                                _3310 = _3299;
                                _3311 = 1.0f;
                                _3312 = 0.0f;
                            }
                            else
                            {
                                float _3279;
                                float _3280;
                                float3 _3281;
                                float3 _3282;
                                float _3283;
                                float _3284;
                                if (_2673 == 3u)
                                {
                                    _3279 = _2902 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2572].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2572].x), _2382) * _3226);
                                    _3280 = clamp(dot(_1983, -normalize(cross(_585, cross(_585, _2764)))), 0.0f, 1.0f);
                                    _3281 = lerp(0.5f.xxx, _2087, _36_m6[_2572].y.xxx);
                                    _3282 = 0.0f.xxx;
                                    _3283 = 1.0f;
                                    _3284 = 0.0f;
                                }
                                else
                                {
                                    bool _3235 = _2673 == 1u;
                                    float _3259;
                                    float3 _3260;
                                    float _3261;
                                    float _3262;
                                    if (_3235)
                                    {
                                        _3259 = clamp(clamp(_2922 + _36_m6[_2572].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3226;
                                        _3260 = _2092 * _36_m6[_2572].y;
                                        _3261 = 1.0f;
                                        _3262 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3239 = _2673 == 2u;
                                        float _3251;
                                        if (_3239)
                                        {
                                            _3251 = smoothstep(_36_m6[_2572].x + 0.0500000007450580596923828125f, _36_m6[_2572].x - 0.0500000007450580596923828125f, _1984) * ((1.0f - _36_m6[_2572].z) + (step(0.5f, _1987) * _36_m6[_2572].z));
                                        }
                                        else
                                        {
                                            _3251 = 1.0f;
                                        }
                                        _3259 = _2923;
                                        _3260 = 0.0f.xxx;
                                        _3261 = _3251;
                                        _3262 = _3239 ? _36_m6[_2572].y : 0.0f;
                                    }
                                    bool3 _3263 = _3235.xxx;
                                    _3279 = _2902;
                                    _3280 = _3259;
                                    _3281 = float3(_3263.x ? _2087.x : 0.0f.xxx.x, _3263.y ? _2087.y : 0.0f.xxx.y, _3263.z ? _2087.z : 0.0f.xxx.z);
                                    _3282 = _3260;
                                    _3283 = _3261;
                                    _3284 = _3262;
                                }
                                _3306 = _3279;
                                _3307 = _36_m6[_2560].xyz;
                                _3308 = _3280;
                                _3309 = _3281;
                                _3310 = _3282;
                                _3311 = _3283;
                                _3312 = _3284;
                            }
                            float3 _3340;
                            [branch]
                            if (_2673 != 3u)
                            {
                                float _3317 = lerp(_2094, 0.00999999977648258209228515625f, _3312);
                                float _3320 = dot(_1847, normalize(_2764 + _449));
                                float _3321 = _3317 * _3317;
                                float _3325 = (((_3320 * _3321) - _3320) * _3320) + 1.0f;
                                float _3326 = _3325 * _3325;
                                _3340 = ((_2090 * clamp((((_3321 != _3326) ? (_3321 / _3326) : 1.0f) * (0.5f / ((_2313 + (_3317 * _2315)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3311) * _36_m6[_2581].z;
                            }
                            else
                            {
                                _3340 = 0.0f.xxx;
                            }
                            float3 _3343 = _3307 * _3306;
                            _3350 = _2524 + (((_3343 * lerp(_3310, _3309, _3308.xxx)) * _2332) + ((_3343 * _3340) * _3308));
                        }
                        else
                        {
                            _3350 = _2524;
                        }
                        _3351 = _3350;
                        break;
                    } while(false);
                    _3352 = _3351;
                    break;
                } while(false);
                _3353 = _3352;
            }
            else
            {
                _3353 = _2524;
            }
            _2547 = _3353;
        }
    }
    float3 _3393;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3393 = lerp(lerp(0.5f.xxx, lerp(dot(_2523, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2523, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2380, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3393 = _2523;
    }
    float4 _3400 = float4(_3393 * _20_m20.y, _496);
    _3400.w = (_49_m8 == 1.0f) ? _496 : 1.0f;
    float4 _3785;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float3 _3409 = -_449;
        float _3425 = _617 * _20_m46.w;
        float _3430 = max(0.00999999977648258209228515625f, _3425 + _20_m47.w);
        float3 _3444 = exp(_20_m45.xyz * ((-max(0.0f, (_450 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3430)) / _3430) * exp(_3425 + _20_m48.w))));
        float _3447 = dot(_3409, _20_m44.xyz);
        float _3453 = _20_m45.w * _20_m45.w;
        float _3457 = (1.0f + _3453) - ((2.0f * _20_m45.w) * _3447);
        float3 _3777;
        float _3778;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3608 = (uint3(int3(_2158, _2159, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3609 = _3608.y;
            uint _3610 = _3608.z;
            uint _3613 = _3608.x + (_3609 * _3610);
            uint _3615 = _3609 + (_3610 * _3613);
            uint _3617 = _3610 + (_3613 * _3615);
            uint _3619 = _3613 + (_3615 * _3617);
            float _3641 = dot(_3409, -_18_m0[2].xyz);
            float3 _3648 = _545 - _18_m11.xyz;
            float _3650 = (_20_m55.w * ((_3641 > 5.9604644775390625e-08f) ? (1.0f / _3641) : 0.0f)) * (1.0f / _450);
            float _3651 = _3648.y;
            float _3652 = _3650 * _3651;
            float _3654 = _18_m11.y + _3652;
            float _3655 = _3651 - _3652;
            float _3657 = (1.0f - _3650) * _450;
            float _3671 = max(-127.0f, _20_m49.z * _3655);
            float _3695 = max(-127.0f, _20_m52.x * _3655);
            float _3706 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3654 - _20_m49.x)))) * ((abs(_3671) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3671)) / _3671) : (0.693147182464599609375f - (0.2402265071868896484375f * _3671)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3654 - _20_m52.z)))) * ((abs(_3695) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3695)) / _3695) : (0.693147182464599609375f - (0.2402265071868896484375f * _3695))));
            float _3728 = clamp((_450 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3731 = clamp((max(clamp(exp2(-(_3706 * _3657)), 0.0f, 1.0f), _20_m51.w) + clamp((_450 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3728, 0.0f, 1.0f);
            float4 _3771 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_25, float3((_2498 + ((((float3(uint3(_3619, _3615 + (_3617 * _3619), _414) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_430 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_430 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3777 = _3771.xyz + (((_20_m51.xyz * (1.0f - _3731)) + (((_20_m54.xyz * pow(clamp(dot(_449, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3706 * max(_3657 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3728))) * _3771.w);
            _3778 = _3771.w * _3731;
        }
        else
        {
            float3 _3484 = _545 - _18_m11.xyz;
            float _3486 = _3484.y;
            float _3500 = max(-127.0f, _20_m49.z * _3486);
            float _3524 = max(-127.0f, _20_m52.x * _3486);
            float _3535 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3500) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3500)) / _3500) : (0.693147182464599609375f - (0.2402265071868896484375f * _3500)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3524) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3524)) / _3524) : (0.693147182464599609375f - (0.2402265071868896484375f * _3524))));
            float _3557 = clamp((_450 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3560 = clamp((max(clamp(exp2(-(_3535 * _450)), 0.0f, 1.0f), _20_m51.w) + clamp((_450 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3557, 0.0f, 1.0f);
            _3777 = (_20_m51.xyz * (1.0f - _3560)) + (((_20_m54.xyz * pow(clamp(dot(_449, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3535 * max(_450 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3557));
            _3778 = _3560;
        }
        float3 _3783 = (_3400.xyz * (_3444 * _3778)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3447 * _3447)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3453) / max((12.56637096405029296875f * _3457) * sqrt(_3457), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3444)) * _3778) + _3777);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3783 = (_3783 * 0.65f) + (_3400.xyz * 0.35f);

        }

        // RenoDX code end
        _3785 = float4(_3783.x, _3783.y, _3783.z, _3400.w);
    }
    else
    {
        _3785 = _3400;
    }
    _15 = _3785;
    _16 = _2123;
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

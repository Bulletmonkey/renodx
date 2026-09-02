#include "../shared.h"
// Endfield 1.5 Vulkan shader 0x8F3D2D48, migrated from 1.4.4 shader 0x3EE5B1C8.
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

static float3 _357 = (float3)0;
static float _358 = (float)0;
static float3 _359 = (float3)0;
static float _362 = (float)0;
static uint _363 = (uint)0;

static const int2 _333[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _334[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _58_59 : register(b50)
{
    float4 _59_m0[32] : packoffset(c0);
    column_major float4x4 _59_m1[32] : packoffset(c32);
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
[[vk::binding(4, 1)]] Texture2D<float4> _49 : register(t4);
[[vk::binding(1, 1)]] Texture2D<float4> _50 : register(t1);
[[vk::binding(43, 0)]] Texture2D<float4> _51 : register(t43);
[[vk::binding(42, 0)]] Texture2D<float4> _52 : register(t42);
[[vk::binding(39, 0)]] Texture2D<float4> _53 : register(t39);
[[vk::binding(5, 1)]] Texture2D<float4> _54 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _55 : register(t3);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2);
[[vk::binding(29, 0)]] Texture2D<float4> _57 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _62 : register(t36);

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
    float2 _368 = _3;
    float _378 = 1.0f / gl_FragCoord.w;
    float3 _393 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _394 = dot(_393, _393);
    float _396 = rsqrt(max(_394, 9.9999999392252902907785028219223e-09f));
    float3 _397 = _393 * _396;
    float _398 = _394 * _396;
    uint _401 = asuint(_22_m0[_12]._m2.x);
    bool _406 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _423;
    float4 _424;
    float4 _425;
    if (_406)
    {
        _423 = asfloat(_31_Load4((_401 + 2u) * 16 + 0));
        _424 = asfloat(_31_Load4((_401 + 1u) * 16 + 0));
        _425 = asfloat(_31_Load4(_401 * 16 + 0));
    }
    else
    {
        _423 = _22_m0[_12]._m0[2];
        _424 = _22_m0[_12]._m0[1];
        _425 = _22_m0[_12]._m0[0];
    }
    float4 _431 = _54.SampleBias(_25, _368, _19_m16);
    float3 _436 = _431.xyz * _48_m24.xyz;
    float _443 = 1.0f - _48_m0;
    float _444 = _431.w;
    float3 _445 = _436 * 12.9200000762939453125f;
    float3 _449 = (pow(abs(_436), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _450 = bool3(_436.x <= 0.003130800090730190277099609375f.xxx.x, _436.y <= 0.003130800090730190277099609375f.xxx.y, _436.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _452 = clamp(float3(_450.x ? _445.x : _449.x, _450.y ? _445.y : _449.y, _450.z ? _445.z : _449.z), 0.0f.xxx, 1.0f.xxx);
    float _456 = _452.z * 31.0f;
    float _457 = floor(_456);
    float2 _461 = ((_452.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
    float3 _462 = float3(_461.x, _461.y, _452.z);
    _462.x = _461.x + (_457 * 0.03125f);
    float3 _477 = lerp(_50.SampleLevel(_24, _462.xy, 0.0f).xyz, _50.SampleLevel(_24, _462.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_456 - _457).xxx);
    float4 _481 = _56.SampleBias(_24, _368, _19_m16);
    float _483 = _481.y;
    float _484 = _481.z;
    float _485 = _481.w;
    float3 _489 = _4 + _17_m11.xyz;
    float3 _493 = _489 - float3(_425.w, _362, _423.w);
    _493.y = 6.103515625e-05f;
    float3 _496 = normalize(_493);
    float _510 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _511 = normalize(_5) * _510;
    uint2 _513 = uint2(gl_FragCoord.xy);
    float3 _523 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3x3 _527 = float3x3(_425.xyz, _424.xyz, _423.xyz);
    float3 _528 = mul(_523, _527);
    float2 _534 = normalize((_528 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_528, _528)))).xz);
    float _535 = _534.y;
    uint _544 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _557 = float4(float(_544 & 255u), float((_544 >> 8u) & 255u), float((_544 >> 16u) & 255u), float((_544 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _558 = _557.x;
    float _561 = _557.w;
    float _567 = _489.y;
    float _571 = max(_557.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _567) * _557.y);
    float _572 = max(_558, _571);
    float _580 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float _582 = _511.z;
    float3 _585 = _483.xxx;
    float3 _587 = normalize(lerp(_496, normalize(float3(_511.x, 6.103515625e-05f, _582)), _585));
    float3 _1078;
    float _1079;
    if (_19_m80.y < 0.5f)
    {
        float3 _605 = _489 - (_19_m105.xyz + (_523 * (-_19_m107.w)));
        float _619 = max(clamp((max(abs(_605.x), abs(_605.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_605.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _921;
        float4 _922;
        float4 _923;
        float _924;
        float _925;
        if ((_19_m105.w != 0.0f) && (_619 < 1.0f))
        {
            float3 _632 = _489 - (_19_m105.xyz + (_523 * (-_19_m107.y)));
            float _646 = max(clamp((max(abs(_632.x), abs(_632.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_632.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _722;
            float4 _723;
            float4 _724;
            float4 _725;
            if (_646 < 1.0f)
            {
                float3 _655 = ((_489 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _657 = _655 - floor(_655);
                float4 _661 = _41.SampleLevel(_25, _657, 0.0f);
                float _662 = 1.0f - _646;
                float _666 = _19_m106.y * 0.5f;
                float _671 = _657.x;
                float _672 = clamp(_657.y, _666, 1.0f - _666) * 0.3333333432674407958984375f;
                float _673 = _657.z;
                float4 _676 = _42.SampleLevel(_24, float3(_671, _672, _673), 0.0f);
                float _692 = _661.x;
                float _702 = _661.y;
                float _712 = _661.z;
                _722 = _619 + (_676.w * _662);
                _723 = float4(((_42.SampleLevel(_24, float3(_671, _672 + 0.666666686534881591796875f, _673), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _712, _712) * _662;
                _724 = float4(((_42.SampleLevel(_24, float3(_671, _672 + 0.3333333432674407958984375f, _673), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _702, _702) * _662;
                _725 = float4(((_676.xyz * 4.0f) - 2.0f.xxx) * _692, _692) * _662;
            }
            else
            {
                _722 = _619;
                _723 = 0.0f.xxxx;
                _724 = 0.0f.xxxx;
                _725 = 0.0f.xxxx;
            }
            float3 _731 = _489 - (_19_m105.xyz + (_523 * (-_19_m107.z)));
            float _745 = max(clamp((max(abs(_731.x), abs(_731.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_731.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _825;
            float4 _826;
            float4 _827;
            float4 _828;
            if (_745 < 1.0f)
            {
                float3 _754 = ((_489 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _756 = _754 - floor(_754);
                float4 _760 = _43.SampleLevel(_25, _756, 0.0f);
                float _762 = _646 * (1.0f - _745);
                float _766 = _19_m106.y * 0.5f;
                float _771 = _756.x;
                float _772 = clamp(_756.y, _766, 1.0f - _766) * 0.3333333432674407958984375f;
                float _773 = _756.z;
                float4 _776 = _44.SampleLevel(_24, float3(_771, _772, _773), 0.0f);
                float _792 = _760.x;
                float _803 = _760.y;
                float _814 = _760.z;
                _825 = _722 + (_776.w * _762);
                _826 = _723 + (float4(((_44.SampleLevel(_24, float3(_771, _772 + 0.666666686534881591796875f, _773), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _814, _814) * _762);
                _827 = _724 + (float4(((_44.SampleLevel(_24, float3(_771, _772 + 0.3333333432674407958984375f, _773), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _803, _803) * _762);
                _828 = _725 + (float4(((_776.xyz * 4.0f) - 2.0f.xxx) * _792, _792) * _762);
            }
            else
            {
                _825 = _722;
                _826 = _723;
                _827 = _724;
                _828 = _725;
            }
            float4 _911;
            float4 _912;
            float4 _913;
            float _914;
            if (_745 > 0.0f)
            {
                float3 _837 = ((_489 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _840 = _19_m106.xyz * 0.5f;
                float3 _842 = clamp(_837 - floor(_837), _840, 1.0f.xxx - _840);
                float4 _846 = _45.SampleLevel(_25, _842, 0.0f);
                float _848 = _745 * (1.0f - _619);
                float _852 = _19_m106.y * 0.5f;
                float _857 = _842.x;
                float _858 = clamp(_842.y, _852, 1.0f - _852) * 0.3333333432674407958984375f;
                float _859 = _842.z;
                float4 _862 = _46.SampleLevel(_24, float3(_857, _858, _859), 0.0f);
                float _878 = _846.x;
                float _889 = _846.y;
                float _900 = _846.z;
                _911 = _826 + (float4(((_46.SampleLevel(_24, float3(_857, _858 + 0.666666686534881591796875f, _859), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _900, _900) * _848);
                _912 = _827 + (float4(((_46.SampleLevel(_24, float3(_857, _858 + 0.3333333432674407958984375f, _859), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _889, _889) * _848);
                _913 = _828 + (float4(((_862.xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _848);
                _914 = _825 + (_862.w * _848);
            }
            else
            {
                _911 = _826;
                _912 = _827;
                _913 = _828;
                _914 = _825;
            }
            float _917 = clamp((_914 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _921 = _911;
            _922 = _912;
            _923 = _913;
            _924 = _917 - _619;
            _925 = (_917 + _619) * 0.5f;
        }
        else
        {
            _921 = 0.0f.xxxx;
            _922 = 0.0f.xxxx;
            _923 = 0.0f.xxxx;
            _924 = 0.0f;
            _925 = 1.0f;
        }
        float4 _945 = _923 + float4(_19_m108.x * _925, (_19_m108.y * _925) + ((_19_m108.w * _924) * 0.5f), _19_m108.z * _925, (_19_m108.w * _925) + ((_19_m108.y * _924) * 0.375f));
        float4 _965 = _922 + float4(_19_m109.x * _925, (_19_m109.y * _925) + ((_19_m109.w * _924) * 0.5f), _19_m109.z * _925, (_19_m109.w * _925) + ((_19_m109.y * _924) * 0.375f));
        float4 _985 = _921 + float4(_19_m110.x * _925, (_19_m110.y * _925) + ((_19_m110.w * _924) * 0.5f), _19_m110.z * _925, (_19_m110.w * _925) + ((_19_m110.y * _924) * 0.375f));
        float4 _989 = float4(_587, 1.0f);
        float3 _995 = max(float3(dot(_945, _989), dot(_965, _989), dot(_985, _989)), 0.0f.xxx) * _580;
        float3 _1003 = ((_945.xyz * 0.2125999927520751953125f) + (_965.xyz * 0.715200006961822509765625f)) + (_985.xyz * 0.072200000286102294921875f);
        float3 _1007 = _1003 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1003, _1003)));
        float4 _1012 = float4(_1007.x, abs(_1007.y), _1007.z, 1.0f);
        float3 _1017 = max(float3(dot(_945, _1012), dot(_965, _1012), dot(_985, _1012)), 0.0f.xxx);
        float _1025 = _995.z;
        float _1026 = _995.y;
        float4 _1031 = lerp(float4(_1025, _1026, -1.0f, 0.666666686534881591796875f), float4(_1026, _1025, 0.0f, -0.3333333432674407958984375f), step(_1025, _1026).xxxx);
        float _1032 = _995.x;
        float _1033 = _1031.x;
        float4 _1041 = lerp(float4(_1033, _1031.yw, _1032), float4(_1032, _1031.yz, _1033), step(_1033, _1032).xxxx);
        float _1042 = _1041.x;
        float _1043 = _1041.w;
        float _1044 = _1041.y;
        float _1046 = _1042 - min(_1043, _1044);
        float _1056 = frac(abs(_1041.z + ((_1043 - _1044) / ((6.0f * _1046) + 9.9999997473787516355514526367188e-05f))));
        float _1063 = min(_1046 / (_1042 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1056 - 0.5f))) * clamp(_1042, 0.0f, 1.0f));
        float _1065 = 2.0f / (2.0f - _1063);
        _1078 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1056, _1063, _1065).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1063.xxx) * _1065;
        _1079 = max(max(max(_1017.x, _1017.y), _1017.z), 0.0f) * _580;
    }
    else
    {
        _1078 = _19_m82.xyz;
        _1079 = _580;
    }
    float _1098 = _481.x * lerp(clamp(_535 + 0.5f, 0.0f, 1.0f), 1.0f, _483);
    float _1112 = clamp((1.0f - clamp((clamp(dot(_511, _397), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1098 * lerp(_48_m31, _48_m30, _484)), 0.0f, 1.0f);
    float3 _1120 = _436 * ((1.0f - _1112).xxx + (_48_m34.xyz * _1112));
    float _1121 = lerp(0.0f, _48_m1, _483);
    float _1207;
    float _1208;
    float3 _1209;
    float _1210;
    float _1211;
    [branch]
    if ((clamp(_558 + _571, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1134 = _19_m10.x * 0.800000011920928955078125f;
        float4 _1139 = _51.SampleBias(_25, _368 + float2(0.0f, frac(_1134)), _19_m16);
        float4 _1153 = float4(_1139.xy, _51.SampleBias(_25, _368 + float2(0.0f, frac(_1134 + 0.004999999888241291046142578125f)), _19_m16).w, _1139.w);
        float4 _1157 = _52.SampleBias(_25, _368, _19_m16);
        float _1158 = _1157.z;
        float2 _1160 = _1153.zw * _1158;
        float _1162 = _1160.y;
        float2 _1165 = (_1153.xy * 2.0f) - 1.0f.xx;
        float _1166 = _1160.x;
        float _1169 = clamp(_1166 + _1162, 0.0f, 1.0f) * _572;
        float _1170 = (_1139.z * _1158) * _572;
        float3 _1173 = float3(_1165, 0.0f);
        float2 _1174 = _1173.xy;
        _1173.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1174, _1174), 0.0f, 1.0f)));
        float _1188 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1165.y * 0.5f) + 0.5f), 1.0f, clamp(_1166 - _1162, 0.0f, 1.0f));
        _1207 = lerp(_1121, 3.0f, clamp((_1169 * 2.0f) + _1170, 0.0f, 1.0f) * _572);
        _1208 = _444 * ((1.0f - _1169) + (lerp((1.0f - _1188) + (0.800000011920928955078125f * _1188), 0.89999997615814208984375f, _483) * _1169));
        _1209 = normalize(mul(_1173, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _510;
        _1210 = lerp(_443, 0.5f, _572);
        _1211 = clamp(clamp(_1169 + _1170, 0.0f, 1.0f), 0.0f, 1.0f);
    }
    else
    {
        _1207 = _1121;
        _1208 = _444;
        _1209 = _511;
        _1210 = _443;
        _1211 = 0.0f;
    }
    float3 _1330;
    float _1331;
    float3 _1332;
    float3 _1333;
    float _1334;
    [branch]
    if ((_561 - _48_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1216 = _406.xxx;
        float3 _1218 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1219 = float3(_1216.x ? _1218.x : _10.x, _1216.y ? _1218.y : _10.y, _1216.z ? _1218.z : _10.z);
        float3 _1222 = _1219 * _19_m89.z;
        float3 _1224 = float3(_1216.x ? _9.xzy.x : _9.x, _1216.y ? _9.xzy.y : _9.y, _1216.z ? _9.xzy.z : _9.z);
        float3 _1226 = abs(_1224) - 0.20000000298023223876953125f.xxx;
        float3 _1229 = max((_1226 * _1226) * _1226, 6.103515625e-05f.xxx);
        float3 _1232 = _1229 / dot(_1229, 1.0f.xxx).xxx;
        float4 _1255 = ((_53.SampleBias(_25, _1222.xz, _19_m16) * _1232.y) + (_53.SampleBias(_25, _1222.xy, _19_m16) * _1232.z)) + (_53.SampleBias(_25, _1222.zy, _19_m16) * _1232.x);
        float _1263 = clamp(_561 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1219.y) * clamp(_561 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1271 = _1263 * (2.0f - _1263);
        float _1278 = smoothstep(2.0f - _1271, 2.349999904632568359375f - _1271, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1224.y) + _1255.z) * 0.60000002384185791015625f, _483 * _1098)) * ((_1208 * _1208) * float(gl_FrontFacing));
        float3 _1280 = _1278.xxx;
        float2 _1286 = (_1255.xy * 2.0f) - 1.0f.xx;
        float3 _1287 = float3(_1286.x, _1286.y, _359.z);
        float2 _1288 = _1286.xy;
        _1287.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1288, _1288), 0.0f, 1.0f)));
        float2 _1296 = _1287.xy * 2.0f;
        float3 _1298 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1296.x, _1296.y, _1287.z), _1280);
        float3 _1302 = _1298 * rsqrt(max(6.103515625e-05f, dot(_1298, _1298)));
        float _1303 = _511.y;
        float _1306 = step(0.00999999977648258209228515625f, 1.0f - (_1303 * _1303));
        float _1309 = lerp(_582, _1303, _1306);
        float3 _1316 = (float3(0.0f, _1306, 1.0f - _1306) - (_511 * _1309)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1309 * _1309)));
        _1330 = ((cross(_1316, _511) * _1302.x) + (_1316 * _1302.y)) + (_511 * _1302.z);
        _1331 = lerp(_1210, 0.89999997615814208984375f, clamp(_1278 * 4.0f, 0.0f, 1.0f));
        _1332 = lerp(_477 * 1.0f, 0.3079999983310699462890625f.xxx, _1280);
        _1333 = lerp(_1120 * 1.0f, 0.87999999523162841796875f.xxx, _1280);
        _1334 = lerp(_48_m2, 0.0f, _1278);
    }
    else
    {
        _1330 = _511;
        _1331 = _1210;
        _1332 = _477;
        _1333 = _1120;
        _1334 = _48_m2;
    }
    float _1336 = 0.959999978542327880859375f - (_1334 * 0.959999978542327880859375f);
    float3 _1337 = _1333 * _1336;
    float3 _1340 = lerp(0.039999999105930328369140625f.xxx * _1207, _1333, _1334.xxx);
    float3 _1341 = _1332 * _1336;
    float _1343 = max(_1331 * _1331, 0.0078125f);
    float2 _1356 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1356.y = -_1356.y;
    float2 _1369 = ((sqrt(sqrt(abs(_1356 * 0.5f))) * float2(int2(sign(_1356)))) * 0.5f) + 0.5f.xx;
    float4 _1370 = float4(_1369.x, _1369.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1370.z = 1.0f;
    _1370.w = 0.4000000059604644775390625f;
    float3 _1383 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1397 = lerp(_35_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1401 = _1397 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _1405 = int(_513.x);
    int _1406 = int(_513.y);
    float4 _1410 = _39.Load(int3(int3(_1405, _1406, 0).xy, 0));
    float _1415 = _1410.y;
    float _1418 = lerp(lerp(1.0f, _1410.x, _37_m6.x), 1.0f, _19_m80.z);
    float3 _1426 = _1341 * _19_m79.z;
    float3 _1427 = _1426 * 0.64999997615814208984375f;
    float3 _1441 = mul(_1383, _527);
    float3 _1442 = float3(_1441.x, _1441.y, _1441.z);
    _1442.y = 6.103515625e-05f;
    float3 _1444 = normalize(_1442);
    float _1447 = float(_1444.x > 0.0f);
    float2 _1451 = _368;
    _1451.x = lerp(1.0f - _368.x, _368.x, _1447);
    float4 _1455 = _55.SampleLevel(_24, _1451, 0.0f);
    float _1457 = _1455.z * 2.0f;
    float _1460 = lerp(1.0f - _1457, _1457 - 1.0f, _1447);
    float3 _1465 = mul(_527, normalize(float3(_1460, 6.103515625e-05f, 1.0f - abs(_1460))));
    float3 _1472 = normalize(lerp((_1465 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1465, _1465)))).xyz, _1330, _585));
    float _1473 = _1455.w;
    float _1474 = _1444.z;
    float _1475 = -_1474;
    float _1490 = lerp(_1474, (_1475 * ((_1474 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1383.x, 6.103515625e-05f, _1383.z)).xz, normalize(_523.xz)), 0.0f, 1.0f) * clamp(_1475, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1492 = clamp(0.5f - _1490, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1498 = (_1455.x + _1455.y) * 0.5f;
    float _1509 = _19_m94.z * 0.5f;
    float _1511 = clamp(0.5f - _1509, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1532 = _49.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1492 - (1.0f - _1492), 0.0f), min(_1492 + _1492, 1.0f), _1498)) - (_1490 * ceil(_1490)))), clamp(dot(_1330, _1383) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _483) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1533 = _1532.w;
    float _1535 = _1532.x;
    float _1536 = _1532.y;
    float _1537 = _1532.z;
    float _1542 = max(max(_1535, _1536), _1537) - min(min(_1535, _1536), _1537);
    float _1545 = max(_483, _484 * smoothstep(0.75f, 0.25f, _535));
    float _1548 = (1.0f - _1545) + (_1415 * _1545);
    float _1549 = 1.0f - _483;
    float _1558 = min(min(_1548, _1208), _1533);
    float _1559 = _1208 * _1548;
    float3 _1563 = ((clamp(dot(_587, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1078, 1.0f.xxx, (_19_m80.y * _1558).xxx);
    float3 _1565 = _1558.xxx;
    float3 _1588 = _1418.xxx;
    float3 _1589 = lerp((_1563 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1079), 1.5f), clamp(_1079, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1401, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1401, _1565) + ((_1563 * clamp(_1079, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1397 * _19_m91.y)))) * _19_m79.y, _1588);
    float3 _1590 = lerp(lerp(lerp(dot(_1427, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1427, 1.2000000476837158203125f.xxx), _1426, clamp((_1208 * (_1549 + (_1548 * _483))) + _1533, 0.0f, 1.0f).xxx), _1337, _1565);
    float3 _1596 = _1590 * ((1.0f - _1542).xxx + (_1532.xyz * _1542));
    float3 _1605 = lerp(lerp(_1426, lerp(dot(_1337, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1337, 1.2000000476837158203125f.xxx), _1559.xxx), _1596 * clamp(dot(_1590, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1596, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1588);
    float4 _1609 = float4(_1605, _1418);
    float _1611 = lerp(_1559, _1558, _1418);
    float3 _1622 = float3(_523.x, lerp(0.5f, _1383.y, _1418), _523.z);
    float _1635 = clamp(dot(_1209, _397), 0.0f, 1.0f);
    float _1636 = dot(_1209, normalize(((_1383 * _1418) + ((_1622 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1622, _1622)))) * 2.0f)) + (_397 * (2.0f + _1418))));
    float _1637 = _1343 * _1343;
    float _1641 = (((_1636 * _1637) - _1636) * _1636) + 1.0f;
    float _1642 = _1641 * _1641;
    float _1646 = 2.0f * _1635;
    float _1648 = (1.0f + _1635) - _1635;
    float3 _1689;
    if (_1211 > 0.001000000047497451305389404296875f)
    {
        _1689 = ((_52.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1209)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1548) * (clamp(_1079, 0.5f, 1.5f) * _19_m79.w)) * (_1211 * _1211);
    }
    else
    {
        _1689 = 0.0f.xxx;
    }
    float3 _1692 = ((_1589 * _1605) * 1.0f) + ((((_1340 * clamp((((_1637 != _1642) ? (_1637 / _1642) : 1.0f) * (0.5f / ((_1646 + (_1343 * _1648)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1589 * (((_1611 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1611))) * 1.0f)) * _19_m92.w) + _1689);
    float _1693 = dot(_1692, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1696 = clamp(_1693 - 0.5f, 0.0f, 0.5f);
    float3 _1732 = normalize(cross(_523, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1738 = dot(_397, _1472);
    float _1740 = 1.0f - abs(_1738);
    float _1745 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_535));
    float3 _1784 = lerp(_1693.xxx, _1692, ((_1696 * _1696) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1740) * _1745, max(_1745, float(dot(_523, _1732) < (-0.00999999977648258209228515625f))) * _485, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_496, _1732) + 1.0f, 0.0f, 1.0f), _1208), _1415)) * (lerp(0.25f.xxx, _1337, _19_m88.z.xxx) * clamp(dot(_1732, _1472), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1511 - (1.0f - _1511), 0.0f), min(_1511 + _1511, 1.0f), _1498)) - (_1509 * ceil(_1509))))) * _1549)) * _19_m93.w) * _1337));
    float2 _1785 = float2(_513);
    float2 _1787 = floor(_1785 * 0.03125f);
    int _1795 = int((_1787.x + (_1787.y * _33_m5)) * 8.0f);
    float _1802 = floor(_378 - (_19_m3.y * _33_m11));
    float _1806 = clamp(_1802, 0.0f, _33_m7 - 1.0f);
    int _1808 = int(_1806 * 8.0f);
    float3 _1810;
    _1810 = _1784;
    float3 _1811;
    [loop]
    for (int _1813 = 0; _1813 <= 7; _1810 = _1811, _1813++)
    {
        uint _1831 = (_1802 <= _1806) ? (_29.Load(uint(_1795 + _1813) * 4 + 0) & _29.Load(uint((_19_m21.y + _1808) + _1813) * 4 + 0)) : 0u;
        uint _1832 = uint(_1813);
        _1811 = _1810;
        uint _1837;
        float3 _1834;
        [loop]
        for (uint _1836 = _1831; _1836 != 0u; _1811 = _1834, _1836 = _1837)
        {
            uint _1841 = firstbitlow(_1836);
            _1837 = _1836 ^ (1u << (_1841 & 31u));
            int _1847 = int((32u * _1832) + _1841) * 8;
            int _1850 = _1847 + 1;
            int _1853 = _1847 + 2;
            int _1856 = _1847 + 3;
            int _1859 = _1847 + 4;
            int _1862 = _1847 + 5;
            int _1865 = _1847 + 6;
            int _1868 = _1847 + 7;
            uint _1872 = uint(_35_m6[_1862].w);
            float _1947;
            if ((_1872 & 1u) == 1u)
            {
                uint _1878 = asuint(_35_m6[_1862].x);
                uint _1885 = asuint(_35_m6[_1862].y);
                uint _1892 = asuint(_35_m6[_1862].z);
                uint _1899 = asuint(_35_m6[_1865].x);
                uint _1906 = asuint(_35_m6[_1865].y);
                uint _1913 = asuint(_35_m6[_1865].z);
                float3 _1932 = abs(mul(float4(_489 - _35_m6[_1850].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1878).x, spvUnpackHalf2x16(_1892).x, spvUnpackHalf2x16(_1906).x, 0.0f), float4(spvUnpackHalf2x16(_1878 >> 16u).x, spvUnpackHalf2x16(_1892 >> 16u).x, spvUnpackHalf2x16(_1906 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1885).x, spvUnpackHalf2x16(_1899).x, spvUnpackHalf2x16(_1913).x, 0.0f), float4(spvUnpackHalf2x16(_1885 >> 16u).x, spvUnpackHalf2x16(_1899 >> 16u).x, spvUnpackHalf2x16(_1913 >> 16u).x, 0.0f))).xyz);
                float _1939 = _35_m6[_1868].x * 0.5f;
                float _1945 = 1.0f - clamp((max(max(_1932.x, _1932.y), _1932.z) - (_1939 + 0.5f)) / (0.5f - _1939), 0.0f, 1.0f);
                _1947 = _1945 * _1945;
            }
            else
            {
                _1947 = 1.0f;
            }
            if (false || (_1947 < 0.001000000047497451305389404296875f))
            {
                _1834 = _1811;
                continue;
            }
            float3 _2664;
            if (_35_m6[_1847].w < 1.5f)
            {
                float3 _2663;
                do
                {
                    uint _1960 = asuint(_35_m6[_1856].w);
                    if ((_1960 == 16u) || ((_35_m6[_1856].z + _19_m91.z) < 0.5f))
                    {
                        _2663 = _1811;
                        break;
                    }
                    bool _1972 = (uint(_35_m6[_1847].w) & 1u) == 0u;
                    bool _1976 = (!_1972) && (_35_m6[_1853].z > 0.0f);
                    bool _1977 = _1960 == 4u;
                    float _1978 = float(_1972);
                    float _1986 = (0.5f + (0.5f * _35_m6[_1853].y)) - abs(_35_m6[_1853].x);
                    float _1987 = _35_m6[_1853].y - _1986;
                    float _1994 = abs(max((1.0f - abs(_1986)) - abs(_1987), 0.00048828125f));
                    float3 _1998 = normalize(float3(_1986, _1987, (_35_m6[_1853].x >= 0.0f) ? _1994 : (-_1994)));
                    float _2004 = lerp(_35_m6[_1865].w, max(2.0f * _35_m6[_1859].y, 0.100000001490116119384765625f), float(_1977));
                    float3 _2009 = _35_m6[_1850].xyz - _489;
                    float3 _2010 = -_1998;
                    float3 _2015 = lerp(_2009, _2010 * dot(_2009, _2010), (float(_1977 && (_35_m6[_1859].z > 0.5f)) * _1978).xxx);
                    float _2016 = dot(_2015, _2015);
                    float _2017 = rsqrt(_2016);
                    float3 _2018 = _2015 * _2017;
                    float3 _2051;
                    float _2052;
                    if (_1976)
                    {
                        float3 _2022 = (_1998 * _35_m6[_1853].z) * 0.5f;
                        float3 _2023 = _2015 - _2022;
                        float3 _2024 = _2015 + _2022;
                        float _2025 = length(_2023);
                        float _2026 = length(_2024);
                        float3 _2035 = normalize(cross(cross(_1998, _2018), _1998));
                        _2051 = _2035;
                        _2052 = ((1.0f / ((((_2025 * _2026) + dot(_2023, _2024)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2035, _2023) / _2025) + (dot(_2035, _2024) / _2026)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_1853].z * _2017, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2051 = _2018;
                        _2052 = 1.0f;
                    }
                    float _2074;
                    if (_2004 < 0.0f)
                    {
                        float _2068 = _2016 * (_35_m6[_1850].w * _35_m6[_1850].w);
                        float _2071 = clamp(1.0f - (_2068 * _2068), 0.0f, 1.0f);
                        _2074 = lerp(1.0f / (_2016 + 1.0f), _2052, float(_1976)) * (_2071 * _2071);
                    }
                    else
                    {
                        float3 _2057 = _2015 * _35_m6[_1850].w;
                        _2074 = _2052 * pow(1.0f - clamp(dot(_2057, _2057), 0.0f, 1.0f), _2004);
                    }
                    float _2079 = clamp((dot(_2051, _2010) - _35_m6[_1853].z) * _35_m6[_1853].w, 0.0f, 1.0f);
                    float _2082 = _2074 * lerp(1.0f, _2079 * _2079, _1978);
                    int _2084 = int(_35_m6[_1868].w);
                    float _2188;
                    if ((!_1976) && (_2084 >= 0))
                    {
                        uint _2090 = uint(_2084);
                        float2 _2181;
                        [branch]
                        if (_1978 != 0.0f)
                        {
                            float4 _2171 = mul(_59_m1[_2090], float4(_489.x, _567, _489.z, 1.0f));
                            _2181 = _59_m0[_2090].xy + (clamp(_2171.xy / _2171.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2090].zw);
                        }
                        else
                        {
                            float3 _2105 = mul(float4(-_2015, 0.0f), _59_m1[_2090]).xyz;
                            float3 _367 = _2105;
                            float3 _366 = _2105;
                            float3 _365 = abs(_2105);
                            uint _2114 = uint(int(_365.y > _365.x));
                            uint _2120 = (_365.z > _365[_2114]) ? 2u : _2114;
                            uint _2126 = (_2120 * 2u) + uint(_366[_2120] < 0.0f);
                            float _2130 = abs(_367[_2126 / 2u]);
                            float _2150 = 0.5f - (0.000244140625f / _59_m0[_2090].w);
                            _2181 = _59_m0[_2090].xy + (clamp(float2((float(_2126) + ((((_367[uint(_333[_2126].x)] * _334[_2126].x) / _2130) * _2150) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_367[uint(_333[_2126].y)] * _334[_2126].y) / _2130) * _2150)), 0.0f.xx, 1.0f.xx) * _59_m0[_2090].zw);
                        }
                        _2188 = _2082 * _57.SampleLevel(_24, _2181, 0.0f).x;
                    }
                    else
                    {
                        _2188 = _2082;
                    }
                    float _2189 = _2188 * _1947;
                    float3 _2662;
                    do
                    {
                        float3 _2661;
                        [branch]
                        if (_2189 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_1977)
                            {
                                _2662 = lerp(_1811, _35_m6[_1847].xyz, (_2189 * (_35_m6[_1859].x * ((1.0f - _35_m6[_1859].w) + (smoothstep(-0.5f, 0.5f, dot(_511, _2051)) * _35_m6[_1859].w)))).xxx);
                                break;
                            }
                            float _2209 = dot(_1472, _2051);
                            float _2210 = clamp(_2209, 0.0f, 1.0f);
                            float _2513;
                            if (_1960 != 0u)
                            {
                                bool _2216 = _1972 || ((_1872 & 2u) != 0u);
                                int _2265;
                                if (_2216)
                                {
                                    _2265 = int(_35_m6[_1856].x);
                                }
                                else
                                {
                                    uint _2220 = asuint(_35_m6[_1853].w);
                                    uint _2222 = asuint(_35_m6[_1856].x);
                                    float3 _2223 = _489 - _35_m6[_1850].xyz;
                                    float3 _2224 = abs(_2223);
                                    float _2225 = _2224.x;
                                    float _2226 = _2224.y;
                                    float _2228 = _2224.z;
                                    int _2260;
                                    if ((_2225 > _2226) && (_2225 > _2228))
                                    {
                                        _2260 = int((_2223.x > 0.0f) ? (_2220 >> 24u) : ((_2220 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2252;
                                        if (_2226 > _2228)
                                        {
                                            _2252 = int((_2223.y > 0.0f) ? ((_2220 >> 8u) & 255u) : (_2220 & 255u));
                                        }
                                        else
                                        {
                                            _2252 = int((_2223.z > 0.0f) ? ((_2222 >> 8u) & 255u) : (_2222 & 255u));
                                        }
                                        _2260 = _2252;
                                    }
                                    _2265 = (_2260 < 80) ? _2260 : (-1);
                                }
                                bool _2266 = _2265 >= 0;
                                float _2512;
                                if (_2266)
                                {
                                    float3 _2273 = _489 - _35_m6[_1850].xyz;
                                    float4 _2293 = mul(_37_m10[_2265], float4((_489 - ((_2273 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2273, _2273)))) * _37_m11[_2265].x)) + (_511 * (_37_m11[_2265].y * 5.0f)), 1.0f));
                                    float _2294 = _2293.w;
                                    float3 _2297 = _2293.xyz / _2294.xxx;
                                    float2 _2298 = _2297.xy;
                                    float3 _2306 = _2297.xyz;
                                    bool3 _2307 = bool3(_2306.x <= 0.0f.xxx.x, _2306.y <= 0.0f.xxx.y, _2306.z <= 0.0f.xxx.z);
                                    bool3 _2308 = bool3(_2306.x >= 1.0f.xxx.x, _2306.y >= 1.0f.xxx.y, _2306.z >= 1.0f.xxx.z);
                                    float _2311 = _2297.z;
                                    float2 _2322 = ((_2298 * (_37_m12[_2265].zw - _37_m12[_2265].xy)) + _37_m12[_2265].xy).xy * _37_m13.zw;
                                    float2 _2324 = floor(_2322 + 0.5f.xx);
                                    float2 _2325 = _2322 - _2324;
                                    float _2327 = _2325.x + 0.5f;
                                    float _2328 = _2327 * _2327;
                                    float _2331 = 1.0f - _2325.x;
                                    float _2332 = min(_2325.x, 0.0f);
                                    float _2335 = _2325.x + 1.0f;
                                    float _2336 = max(_2325.x, 0.0f);
                                    float _2348 = _2325.y + 0.5f;
                                    float _2349 = _2348 * _2348;
                                    float _2352 = 1.0f - _2325.y;
                                    float _2353 = min(_2325.y, 0.0f);
                                    float _2356 = _2325.y + 1.0f;
                                    float _2357 = max(_2325.y, 0.0f);
                                    float3 _2369 = float3(0.1599999964237213134765625f * _2331, 0.1599999964237213134765625f * ((_2335 - (_2336 * _2336)) + 1.0f), _2328 * 0.07999999821186065673828125f);
                                    float3 _2370 = float3(0.1599999964237213134765625f * ((_2328 * 0.5f) - _2325.x), 0.1599999964237213134765625f * ((_2331 - (_2332 * _2332)) + 1.0f), 0.1599999964237213134765625f * _2335) + _2369;
                                    float3 _2372 = float3(0.1599999964237213134765625f * _2352, 0.1599999964237213134765625f * ((_2356 - (_2357 * _2357)) + 1.0f), _2349 * 0.07999999821186065673828125f);
                                    float3 _2373 = float3(0.1599999964237213134765625f * ((_2349 * 0.5f) - _2325.y), 0.1599999964237213134765625f * ((_2352 - (_2353 * _2353)) + 1.0f), 0.1599999964237213134765625f * _2356) + _2372;
                                    float3 _2379 = ((_2369 / _2370) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2381 = ((_2372 / _2373) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2383 = _2324 * _37_m13.xy;
                                    float _2384 = _2379.x;
                                    float _2385 = _2381.x;
                                    float _2388 = _2379.y;
                                    float _2391 = _2379.z;
                                    float _2394 = _2381.y;
                                    float _2401 = _2381.z;
                                    float _2408 = _2370.x;
                                    float _2409 = _2373.x;
                                    float _2411 = _2370.y;
                                    float _2413 = _2370.z;
                                    float _2415 = _2373.y;
                                    float _2419 = _2373.z;
                                    float _2477 = (((((((_2408 * _2409) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2384, _2385), _358).xy, _2311)) + ((_2411 * _2409) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2388, _2385), _358).xy, _2311))) + ((_2413 * _2409) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2391, _2385), _358).xy, _2311))) + ((_2408 * _2415) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2384, _2394), _358).xy, _2311))) + ((_2411 * _2415) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2388, _2394), _358).xy, _2311))) + ((_2413 * _2415) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2391, _2394), _358).xy, _2311))) + ((_2408 * _2419) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2384, _2401), _358).xy, _2311));
                                    float2 _2498 = min(_2298, 1.0f.xx - _2298);
                                    _2512 = _2266 ? lerp(1.0f, (any(bool3(_2307.x || _2308.x, _2307.y || _2308.y, _2307.z || _2308.z)) || ((asuint(_2311) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2477 + ((_2411 * _2419) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2388, _2401), _358).xy, _2311))) + ((_2413 * _2419) * _38.SampleCmpLevelZero(_26, float3(_2383 + float2(_2391, _2401), _358).xy, _2311))), _2216 ? min(_37_m11[_2265].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2265].z - _2294) * 0.25f, min(_2498.x, _2498.y)))) : _37_m11[_2265].w) : 1.0f;
                                }
                                else
                                {
                                    _2512 = clamp(dot(_496, _2051) + 1.0f, 0.0f, 1.0f);
                                }
                                _2513 = _2512;
                            }
                            else
                            {
                                _2513 = 1.0f;
                            }
                            float _2617;
                            float3 _2618;
                            float _2619;
                            float3 _2620;
                            float3 _2621;
                            float _2622;
                            float _2623;
                            [branch]
                            if (_1960 == 0u)
                            {
                                float3 _2591 = _35_m6[_1847].xyz * _2189;
                                float3 _2604 = _1609.xyz;
                                _2617 = _2189;
                                _2618 = (_35_m6[_1847].xyz * ((1.0f - _35_m6[_1859].y) + ((1.0f / max(1.0f, max(max(_2591.x, _2591.y), _2591.z) * lerp(0.75f, 0.5f, 1.0f - _1418))) * _35_m6[_1859].y))) * lerp(0.5f * _35_m6[_1859].x, 1.0f, clamp(dot(normalize(lerp(float3(_496.x, 6.103515625e-05f, _496.z), _1472, _585)), _2051) + 0.5f, 0.0f, 1.0f));
                                _2619 = _2210;
                                _2620 = _2604;
                                _2621 = _2604;
                                _2622 = 1.0f;
                                _2623 = 0.0f;
                            }
                            else
                            {
                                float _2583;
                                float _2584;
                                float3 _2585;
                                float3 _2586;
                                float _2587;
                                float _2588;
                                if (_1960 == 3u)
                                {
                                    float3 _2563 = -normalize(cross(_523, cross(_523, _2051)));
                                    _2583 = _2189 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_1859].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_1859].x), _1740) * _1745, max(_1745, float(dot(_523, _2563) < (-0.00999999977648258209228515625f))) * _485, clamp((_35_m6[_1859].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2513);
                                    _2584 = clamp(dot(_1472, _2563), 0.0f, 1.0f);
                                    _2585 = lerp(0.5f.xxx, _1337, _35_m6[_1859].y.xxx);
                                    _2586 = 0.0f.xxx;
                                    _2587 = 1.0f;
                                    _2588 = 0.0f;
                                }
                                else
                                {
                                    bool _2522 = _1960 == 1u;
                                    float _2553;
                                    float3 _2554;
                                    float _2555;
                                    float _2556;
                                    if (_2522)
                                    {
                                        _2553 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1473 - _35_m6[_1859].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _483), clamp(_2209 + _35_m6[_1859].x, -1.0f, 1.0f) + (_35_m6[_1859].z * _1549)) * _2513);
                                        _2554 = _1341 * _35_m6[_1859].y;
                                        _2555 = 1.0f;
                                        _2556 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2526 = _1960 == 2u;
                                        float _2538;
                                        if (_2526)
                                        {
                                            _2538 = smoothstep(_35_m6[_1859].x + 0.0500000007450580596923828125f, _35_m6[_1859].x - 0.0500000007450580596923828125f, _1331) * ((1.0f - _35_m6[_1859].z) + (step(0.5f, _1334) * _35_m6[_1859].z));
                                        }
                                        else
                                        {
                                            _2538 = 1.0f;
                                        }
                                        _2553 = _2210;
                                        _2554 = 0.0f.xxx;
                                        _2555 = _2538;
                                        _2556 = _2526 ? _35_m6[_1859].y : 0.0f;
                                    }
                                    bool3 _2557 = _2522.xxx;
                                    _2583 = _2189;
                                    _2584 = _2553;
                                    _2585 = float3(_2557.x ? _1337.x : 0.0f.xxx.x, _2557.y ? _1337.y : 0.0f.xxx.y, _2557.z ? _1337.z : 0.0f.xxx.z);
                                    _2586 = _2554;
                                    _2587 = _2555;
                                    _2588 = _2556;
                                }
                                _2617 = _2583;
                                _2618 = _35_m6[_1847].xyz;
                                _2619 = _2584;
                                _2620 = _2585;
                                _2621 = _2586;
                                _2622 = _2587;
                                _2623 = _2588;
                            }
                            float3 _2651;
                            [branch]
                            if (_1960 != 3u)
                            {
                                float _2628 = lerp(_1343, 0.00999999977648258209228515625f, _2623);
                                float _2631 = dot(_1209, normalize(_2051 + _397));
                                float _2632 = _2628 * _2628;
                                float _2636 = (((_2631 * _2632) - _2631) * _2631) + 1.0f;
                                float _2637 = _2636 * _2636;
                                _2651 = ((_1340 * clamp((((_2632 != _2637) ? (_2632 / _2637) : 1.0f) * (0.5f / ((_1646 + (_2628 * _1648)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2622) * _35_m6[_1868].z;
                            }
                            else
                            {
                                _2651 = 0.0f.xxx;
                            }
                            float3 _2654 = _2618 * _2617;
                            _2661 = _1811 + (((_2654 * lerp(_2621, _2620, _2619.xxx)) * 1.0f) + ((_2654 * _2651) * _2619));
                        }
                        else
                        {
                            _2661 = _1811;
                        }
                        _2662 = _2661;
                        break;
                    } while(false);
                    _2663 = _2662;
                    break;
                } while(false);
                _2664 = _2663;
            }
            else
            {
                _2664 = _1811;
            }
            _1834 = _2664;
        }
    }
    float3 _2705;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _2705 = lerp(lerp(0.5f.xxx, lerp(dot(_1810, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1810, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * (smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_1738, 0.0f, 1.0f)) * _1098)) * _48_m17);
    }
    else
    {
        _2705 = _1810;
    }
    float4 _2712 = float4(_2705 * _19_m20.y, 1.0f);
    _2712.w = 1.0f;
    float4 _3096;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2717 = -_397;
        float _2733 = _567 * _19_m46.w;
        float _2738 = max(0.00999999977648258209228515625f, _2733 + _19_m47.w);
        float3 _2752 = exp(_19_m45.xyz * ((-max(0.0f, (_398 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2738)) / _2738) * exp(_2733 + _19_m48.w))));
        float _2755 = dot(_2717, _19_m44.xyz);
        float _2761 = _19_m45.w * _19_m45.w;
        float _2765 = (1.0f + _2761) - ((2.0f * _19_m45.w) * _2755);
        float3 _3088;
        float _3089;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2916 = (uint3(int3(_1405, _1406, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2917 = _2916.y;
            uint _2918 = _2916.z;
            uint _2921 = _2916.x + (_2917 * _2918);
            uint _2923 = _2917 + (_2918 * _2921);
            uint _2925 = _2918 + (_2921 * _2923);
            uint _2927 = _2921 + (_2923 * _2925);
            float _2952 = dot(_2717, -_17_m0[2].xyz);
            float3 _2959 = _489 - _17_m11.xyz;
            float _2961 = (_19_m55.w * ((_2952 > 5.9604644775390625e-08f) ? (1.0f / _2952) : 0.0f)) * (1.0f / _398);
            float _2962 = _2959.y;
            float _2963 = _2961 * _2962;
            float _2965 = _17_m11.y + _2963;
            float _2966 = _2962 - _2963;
            float _2968 = (1.0f - _2961) * _398;
            float _2982 = max(-127.0f, _19_m49.z * _2966);
            float _3006 = max(-127.0f, _19_m52.x * _2966);
            float _3017 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_2965 - _19_m49.x)))) * ((abs(_2982) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2982)) / _2982) : (0.693147182464599609375f - (0.2402265071868896484375f * _2982)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_2965 - _19_m52.z)))) * ((abs(_3006) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3006)) / _3006) : (0.693147182464599609375f - (0.2402265071868896484375f * _3006))));
            float _3039 = clamp((_398 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3042 = clamp((max(clamp(exp2(-(_3017 * _2968)), 0.0f, 1.0f), _19_m51.w) + clamp((_398 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3039, 0.0f, 1.0f);
            float4 _3082 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _62.SampleLevel(_24, float3((_1785 + ((((float3(uint3(_2927, _2923 + (_2925 * _2927), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_378 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_378 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3088 = _3082.xyz + (((_19_m51.xyz * (1.0f - _3042)) + (((_19_m54.xyz * pow(clamp(dot(_397, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3017 * max(_2968 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3039))) * _3082.w);
            _3089 = _3082.w * _3042;
        }
        else
        {
            float3 _2792 = _489 - _17_m11.xyz;
            float _2794 = _2792.y;
            float _2808 = max(-127.0f, _19_m49.z * _2794);
            float _2832 = max(-127.0f, _19_m52.x * _2794);
            float _2843 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2808) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2808)) / _2808) : (0.693147182464599609375f - (0.2402265071868896484375f * _2808)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2832) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2832)) / _2832) : (0.693147182464599609375f - (0.2402265071868896484375f * _2832))));
            float _2865 = clamp((_398 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2868 = clamp((max(clamp(exp2(-(_2843 * _398)), 0.0f, 1.0f), _19_m51.w) + clamp((_398 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2865, 0.0f, 1.0f);
            _3088 = (_19_m51.xyz * (1.0f - _2868)) + (((_19_m54.xyz * pow(clamp(dot(_397, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2843 * max(_398 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2865));
            _3089 = _2868;
        }
        float3 _3094 = (_2712.xyz * (_2752 * _3089)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2755 * _2755)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2761) / max((12.56637096405029296875f * _2765) * sqrt(_2765), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2752)) * _3089) + _3088);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3094 = (_3094 * 0.65f) + (_2712.xyz * 0.35f);

        }

        // RenoDX code end
        _3096 = float4(_3094.x, _3094.y, _3094.z, _2712.w);
    }
    else
    {
        _3096 = _2712;
    }
    _14 = _3096;
    _15 = _1370;
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

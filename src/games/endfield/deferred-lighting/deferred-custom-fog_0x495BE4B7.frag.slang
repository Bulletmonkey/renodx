#include "../shared.h"
// Endfield 1.5 Vulkan shader 0x495BE4B7, migrated from 1.4.4 shader 0xC0408358.
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

static float3 _358 = (float3)0;
static float _359 = (float)0;
static float3 _360 = (float3)0;
static float _363 = (float)0;
static uint _364 = (uint)0;

static const int2 _334[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _335[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float2 _369 = _3;
    float _379 = 1.0f / gl_FragCoord.w;
    float3 _394 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _395 = dot(_394, _394);
    float _397 = rsqrt(max(_395, 9.9999999392252902907785028219223e-09f));
    float3 _398 = _394 * _397;
    float _399 = _395 * _397;
    uint _402 = asuint(_22_m0[_12]._m2.x);
    bool _407 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _424;
    float4 _425;
    float4 _426;
    if (_407)
    {
        _424 = asfloat(_31_Load4((_402 + 2u) * 16 + 0));
        _425 = asfloat(_31_Load4((_402 + 1u) * 16 + 0));
        _426 = asfloat(_31_Load4(_402 * 16 + 0));
    }
    else
    {
        _424 = _22_m0[_12]._m0[2];
        _425 = _22_m0[_12]._m0[1];
        _426 = _22_m0[_12]._m0[0];
    }
    float4 _432 = _54.SampleBias(_25, _369, _19_m16);
    float3 _437 = _432.xyz * _48_m24.xyz;
    float _444 = 1.0f - _48_m0;
    float _445 = _432.w;
    float3 _446 = _437 * 12.9200000762939453125f;
    float3 _450 = (pow(abs(_437), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _451 = bool3(_437.x <= 0.003130800090730190277099609375f.xxx.x, _437.y <= 0.003130800090730190277099609375f.xxx.y, _437.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _453 = clamp(float3(_451.x ? _446.x : _450.x, _451.y ? _446.y : _450.y, _451.z ? _446.z : _450.z), 0.0f.xxx, 1.0f.xxx);
    float _457 = _453.z * 31.0f;
    float _458 = floor(_457);
    float2 _462 = ((_453.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
    float3 _463 = float3(_462.x, _462.y, _453.z);
    _463.x = _462.x + (_458 * 0.03125f);
    float3 _478 = lerp(_50.SampleLevel(_24, _463.xy, 0.0f).xyz, _50.SampleLevel(_24, _463.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_457 - _458).xxx);
    float4 _482 = _56.SampleBias(_24, _369, _19_m16);
    float _484 = _482.y;
    float _485 = _482.z;
    float _486 = _482.w;
    float3 _490 = _4 + _17_m11.xyz;
    float3 _494 = _490 - float3(_426.w, _363, _424.w);
    _494.y = 6.103515625e-05f;
    float3 _497 = normalize(_494);
    float _511 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _512 = normalize(_5) * _511;
    uint2 _514 = uint2(gl_FragCoord.xy);
    float3 _524 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3x3 _528 = float3x3(_426.xyz, _425.xyz, _424.xyz);
    float3 _529 = mul(_524, _528);
    float2 _535 = normalize((_529 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_529, _529)))).xz);
    float _536 = _535.y;
    uint _545 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _558 = float4(float(_545 & 255u), float((_545 >> 8u) & 255u), float((_545 >> 16u) & 255u), float((_545 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _559 = _558.x;
    float _562 = _558.w;
    float _568 = _490.y;
    float _572 = max(_558.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _568) * _558.y);
    float _573 = max(_559, _572);
    float _581 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float _583 = _512.z;
    float3 _586 = _484.xxx;
    float3 _588 = normalize(lerp(_497, normalize(float3(_512.x, 6.103515625e-05f, _583)), _586));
    float3 _1079;
    float _1080;
    if (_19_m80.y < 0.5f)
    {
        float3 _606 = _490 - (_19_m105.xyz + (_524 * (-_19_m107.w)));
        float _620 = max(clamp((max(abs(_606.x), abs(_606.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_606.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _922;
        float4 _923;
        float4 _924;
        float _925;
        float _926;
        if ((_19_m105.w != 0.0f) && (_620 < 1.0f))
        {
            float3 _633 = _490 - (_19_m105.xyz + (_524 * (-_19_m107.y)));
            float _647 = max(clamp((max(abs(_633.x), abs(_633.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_633.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _723;
            float4 _724;
            float4 _725;
            float4 _726;
            if (_647 < 1.0f)
            {
                float3 _656 = ((_490 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _658 = _656 - floor(_656);
                float4 _662 = _41.SampleLevel(_25, _658, 0.0f);
                float _663 = 1.0f - _647;
                float _667 = _19_m106.y * 0.5f;
                float _672 = _658.x;
                float _673 = clamp(_658.y, _667, 1.0f - _667) * 0.3333333432674407958984375f;
                float _674 = _658.z;
                float4 _677 = _42.SampleLevel(_24, float3(_672, _673, _674), 0.0f);
                float _693 = _662.x;
                float _703 = _662.y;
                float _713 = _662.z;
                _723 = _620 + (_677.w * _663);
                _724 = float4(((_42.SampleLevel(_24, float3(_672, _673 + 0.666666686534881591796875f, _674), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _713, _713) * _663;
                _725 = float4(((_42.SampleLevel(_24, float3(_672, _673 + 0.3333333432674407958984375f, _674), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _703, _703) * _663;
                _726 = float4(((_677.xyz * 4.0f) - 2.0f.xxx) * _693, _693) * _663;
            }
            else
            {
                _723 = _620;
                _724 = 0.0f.xxxx;
                _725 = 0.0f.xxxx;
                _726 = 0.0f.xxxx;
            }
            float3 _732 = _490 - (_19_m105.xyz + (_524 * (-_19_m107.z)));
            float _746 = max(clamp((max(abs(_732.x), abs(_732.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_732.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _826;
            float4 _827;
            float4 _828;
            float4 _829;
            if (_746 < 1.0f)
            {
                float3 _755 = ((_490 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _757 = _755 - floor(_755);
                float4 _761 = _43.SampleLevel(_25, _757, 0.0f);
                float _763 = _647 * (1.0f - _746);
                float _767 = _19_m106.y * 0.5f;
                float _772 = _757.x;
                float _773 = clamp(_757.y, _767, 1.0f - _767) * 0.3333333432674407958984375f;
                float _774 = _757.z;
                float4 _777 = _44.SampleLevel(_24, float3(_772, _773, _774), 0.0f);
                float _793 = _761.x;
                float _804 = _761.y;
                float _815 = _761.z;
                _826 = _723 + (_777.w * _763);
                _827 = _724 + (float4(((_44.SampleLevel(_24, float3(_772, _773 + 0.666666686534881591796875f, _774), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _815, _815) * _763);
                _828 = _725 + (float4(((_44.SampleLevel(_24, float3(_772, _773 + 0.3333333432674407958984375f, _774), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _804, _804) * _763);
                _829 = _726 + (float4(((_777.xyz * 4.0f) - 2.0f.xxx) * _793, _793) * _763);
            }
            else
            {
                _826 = _723;
                _827 = _724;
                _828 = _725;
                _829 = _726;
            }
            float4 _912;
            float4 _913;
            float4 _914;
            float _915;
            if (_746 > 0.0f)
            {
                float3 _838 = ((_490 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _841 = _19_m106.xyz * 0.5f;
                float3 _843 = clamp(_838 - floor(_838), _841, 1.0f.xxx - _841);
                float4 _847 = _45.SampleLevel(_25, _843, 0.0f);
                float _849 = _746 * (1.0f - _620);
                float _853 = _19_m106.y * 0.5f;
                float _858 = _843.x;
                float _859 = clamp(_843.y, _853, 1.0f - _853) * 0.3333333432674407958984375f;
                float _860 = _843.z;
                float4 _863 = _46.SampleLevel(_24, float3(_858, _859, _860), 0.0f);
                float _879 = _847.x;
                float _890 = _847.y;
                float _901 = _847.z;
                _912 = _827 + (float4(((_46.SampleLevel(_24, float3(_858, _859 + 0.666666686534881591796875f, _860), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901, _901) * _849);
                _913 = _828 + (float4(((_46.SampleLevel(_24, float3(_858, _859 + 0.3333333432674407958984375f, _860), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _890, _890) * _849);
                _914 = _829 + (float4(((_863.xyz * 4.0f) - 2.0f.xxx) * _879, _879) * _849);
                _915 = _826 + (_863.w * _849);
            }
            else
            {
                _912 = _827;
                _913 = _828;
                _914 = _829;
                _915 = _826;
            }
            float _918 = clamp((_915 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _922 = _912;
            _923 = _913;
            _924 = _914;
            _925 = _918 - _620;
            _926 = (_918 + _620) * 0.5f;
        }
        else
        {
            _922 = 0.0f.xxxx;
            _923 = 0.0f.xxxx;
            _924 = 0.0f.xxxx;
            _925 = 0.0f;
            _926 = 1.0f;
        }
        float4 _946 = _924 + float4(_19_m108.x * _926, (_19_m108.y * _926) + ((_19_m108.w * _925) * 0.5f), _19_m108.z * _926, (_19_m108.w * _926) + ((_19_m108.y * _925) * 0.375f));
        float4 _966 = _923 + float4(_19_m109.x * _926, (_19_m109.y * _926) + ((_19_m109.w * _925) * 0.5f), _19_m109.z * _926, (_19_m109.w * _926) + ((_19_m109.y * _925) * 0.375f));
        float4 _986 = _922 + float4(_19_m110.x * _926, (_19_m110.y * _926) + ((_19_m110.w * _925) * 0.5f), _19_m110.z * _926, (_19_m110.w * _926) + ((_19_m110.y * _925) * 0.375f));
        float4 _990 = float4(_588, 1.0f);
        float3 _996 = max(float3(dot(_946, _990), dot(_966, _990), dot(_986, _990)), 0.0f.xxx) * _581;
        float3 _1004 = ((_946.xyz * 0.2125999927520751953125f) + (_966.xyz * 0.715200006961822509765625f)) + (_986.xyz * 0.072200000286102294921875f);
        float3 _1008 = _1004 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1004, _1004)));
        float4 _1013 = float4(_1008.x, abs(_1008.y), _1008.z, 1.0f);
        float3 _1018 = max(float3(dot(_946, _1013), dot(_966, _1013), dot(_986, _1013)), 0.0f.xxx);
        float _1026 = _996.z;
        float _1027 = _996.y;
        float4 _1032 = lerp(float4(_1026, _1027, -1.0f, 0.666666686534881591796875f), float4(_1027, _1026, 0.0f, -0.3333333432674407958984375f), step(_1026, _1027).xxxx);
        float _1033 = _996.x;
        float _1034 = _1032.x;
        float4 _1042 = lerp(float4(_1034, _1032.yw, _1033), float4(_1033, _1032.yz, _1034), step(_1034, _1033).xxxx);
        float _1043 = _1042.x;
        float _1044 = _1042.w;
        float _1045 = _1042.y;
        float _1047 = _1043 - min(_1044, _1045);
        float _1057 = frac(abs(_1042.z + ((_1044 - _1045) / ((6.0f * _1047) + 9.9999997473787516355514526367188e-05f))));
        float _1064 = min(_1047 / (_1043 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1057 - 0.5f))) * clamp(_1043, 0.0f, 1.0f));
        float _1066 = 2.0f / (2.0f - _1064);
        _1079 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1057, _1064, _1066).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1064.xxx) * _1066;
        _1080 = max(max(max(_1018.x, _1018.y), _1018.z), 0.0f) * _581;
    }
    else
    {
        _1079 = _19_m82.xyz;
        _1080 = _581;
    }
    float _1099 = _482.x * lerp(clamp(_536 + 0.5f, 0.0f, 1.0f), 1.0f, _484);
    float _1113 = clamp((1.0f - clamp((clamp(dot(_512, _398), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1099 * lerp(_48_m31, _48_m30, _485)), 0.0f, 1.0f);
    float3 _1121 = _437 * ((1.0f - _1113).xxx + (_48_m34.xyz * _1113));
    float _1122 = lerp(0.0f, _48_m1, _484);
    float _1208;
    float _1209;
    float3 _1210;
    float _1211;
    float _1212;
    [branch]
    if ((clamp(_559 + _572, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1135 = _19_m10.x * 0.800000011920928955078125f;
        float4 _1140 = _51.SampleBias(_25, _369 + float2(0.0f, frac(_1135)), _19_m16);
        float4 _1154 = float4(_1140.xy, _51.SampleBias(_25, _369 + float2(0.0f, frac(_1135 + 0.004999999888241291046142578125f)), _19_m16).w, _1140.w);
        float4 _1158 = _52.SampleBias(_25, _369, _19_m16);
        float _1159 = _1158.z;
        float2 _1161 = _1154.zw * _1159;
        float _1163 = _1161.y;
        float2 _1166 = (_1154.xy * 2.0f) - 1.0f.xx;
        float _1167 = _1161.x;
        float _1170 = clamp(_1167 + _1163, 0.0f, 1.0f) * _573;
        float _1171 = (_1140.z * _1159) * _573;
        float3 _1174 = float3(_1166, 0.0f);
        float2 _1175 = _1174.xy;
        _1174.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1175, _1175), 0.0f, 1.0f)));
        float _1189 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1166.y * 0.5f) + 0.5f), 1.0f, clamp(_1167 - _1163, 0.0f, 1.0f));
        _1208 = lerp(_1122, 3.0f, clamp((_1170 * 2.0f) + _1171, 0.0f, 1.0f) * _573);
        _1209 = _445 * ((1.0f - _1170) + (lerp((1.0f - _1189) + (0.800000011920928955078125f * _1189), 0.89999997615814208984375f, _484) * _1170));
        _1210 = normalize(mul(_1174, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _511;
        _1211 = lerp(_444, 0.5f, _573);
        _1212 = clamp(clamp(_1170 + _1171, 0.0f, 1.0f), 0.0f, 1.0f);
    }
    else
    {
        _1208 = _1122;
        _1209 = _445;
        _1210 = _512;
        _1211 = _444;
        _1212 = 0.0f;
    }
    float3 _1331;
    float _1332;
    float3 _1333;
    float3 _1334;
    float _1335;
    [branch]
    if ((_562 - _48_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1217 = _407.xxx;
        float3 _1219 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1220 = float3(_1217.x ? _1219.x : _10.x, _1217.y ? _1219.y : _10.y, _1217.z ? _1219.z : _10.z);
        float3 _1223 = _1220 * _19_m89.z;
        float3 _1225 = float3(_1217.x ? _9.xzy.x : _9.x, _1217.y ? _9.xzy.y : _9.y, _1217.z ? _9.xzy.z : _9.z);
        float3 _1227 = abs(_1225) - 0.20000000298023223876953125f.xxx;
        float3 _1230 = max((_1227 * _1227) * _1227, 6.103515625e-05f.xxx);
        float3 _1233 = _1230 / dot(_1230, 1.0f.xxx).xxx;
        float4 _1256 = ((_53.SampleBias(_25, _1223.xz, _19_m16) * _1233.y) + (_53.SampleBias(_25, _1223.xy, _19_m16) * _1233.z)) + (_53.SampleBias(_25, _1223.zy, _19_m16) * _1233.x);
        float _1264 = clamp(_562 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1220.y) * clamp(_562 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1272 = _1264 * (2.0f - _1264);
        float _1279 = smoothstep(2.0f - _1272, 2.349999904632568359375f - _1272, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1225.y) + _1256.z) * 0.60000002384185791015625f, _484 * _1099)) * ((_1209 * _1209) * float(gl_FrontFacing));
        float3 _1281 = _1279.xxx;
        float2 _1287 = (_1256.xy * 2.0f) - 1.0f.xx;
        float3 _1288 = float3(_1287.x, _1287.y, _360.z);
        float2 _1289 = _1287.xy;
        _1288.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1289, _1289), 0.0f, 1.0f)));
        float2 _1297 = _1288.xy * 2.0f;
        float3 _1299 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1297.x, _1297.y, _1288.z), _1281);
        float3 _1303 = _1299 * rsqrt(max(6.103515625e-05f, dot(_1299, _1299)));
        float _1304 = _512.y;
        float _1307 = step(0.00999999977648258209228515625f, 1.0f - (_1304 * _1304));
        float _1310 = lerp(_583, _1304, _1307);
        float3 _1317 = (float3(0.0f, _1307, 1.0f - _1307) - (_512 * _1310)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1310 * _1310)));
        _1331 = ((cross(_1317, _512) * _1303.x) + (_1317 * _1303.y)) + (_512 * _1303.z);
        _1332 = lerp(_1211, 0.89999997615814208984375f, clamp(_1279 * 4.0f, 0.0f, 1.0f));
        _1333 = lerp(_478 * 1.0f, 0.3079999983310699462890625f.xxx, _1281);
        _1334 = lerp(_1121 * 1.0f, 0.87999999523162841796875f.xxx, _1281);
        _1335 = lerp(_48_m2, 0.0f, _1279);
    }
    else
    {
        _1331 = _512;
        _1332 = _1211;
        _1333 = _478;
        _1334 = _1121;
        _1335 = _48_m2;
    }
    float _1337 = 0.959999978542327880859375f - (_1335 * 0.959999978542327880859375f);
    float3 _1338 = _1334 * _1337;
    float3 _1341 = lerp(0.039999999105930328369140625f.xxx * _1208, _1334, _1335.xxx);
    float3 _1342 = _1333 * _1337;
    float _1344 = max(_1332 * _1332, 0.0078125f);
    bool _1351 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _1364 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1364.y = -_1364.y;
    float2 _1380 = lerp(((sqrt(sqrt(abs(_1364 * 0.5f))) * float2(int2(sign(_1364)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1351).xx);
    float4 _1382 = float4(_1380.x, _1380.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1382.z = 1.0f;
    _1382.w = _1351 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1395 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1409 = lerp(_35_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1413 = _1409 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _1417 = int(_514.x);
    int _1418 = int(_514.y);
    float4 _1422 = _39.Load(int3(int3(_1417, _1418, 0).xy, 0));
    float _1427 = _1422.y;
    float _1430 = lerp(lerp(1.0f, _1422.x, _37_m6.x), 1.0f, _19_m80.z);
    float3 _1438 = _1342 * _19_m79.z;
    float3 _1439 = _1438 * 0.64999997615814208984375f;
    float3 _1453 = mul(_1395, _528);
    float3 _1454 = float3(_1453.x, _1453.y, _1453.z);
    _1454.y = 6.103515625e-05f;
    float3 _1456 = normalize(_1454);
    float _1459 = float(_1456.x > 0.0f);
    float2 _1463 = _369;
    _1463.x = lerp(1.0f - _369.x, _369.x, _1459);
    float4 _1467 = _55.SampleLevel(_24, _1463, 0.0f);
    float _1469 = _1467.z * 2.0f;
    float _1472 = lerp(1.0f - _1469, _1469 - 1.0f, _1459);
    float3 _1477 = mul(_528, normalize(float3(_1472, 6.103515625e-05f, 1.0f - abs(_1472))));
    float3 _1484 = normalize(lerp((_1477 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1477, _1477)))).xyz, _1331, _586));
    float _1485 = _1467.w;
    float _1486 = _1456.z;
    float _1487 = -_1486;
    float _1502 = lerp(_1486, (_1487 * ((_1486 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1395.x, 6.103515625e-05f, _1395.z)).xz, normalize(_524.xz)), 0.0f, 1.0f) * clamp(_1487, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1504 = clamp(0.5f - _1502, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1510 = (_1467.x + _1467.y) * 0.5f;
    float _1521 = _19_m94.z * 0.5f;
    float _1523 = clamp(0.5f - _1521, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1544 = _49.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1504 - (1.0f - _1504), 0.0f), min(_1504 + _1504, 1.0f), _1510)) - (_1502 * ceil(_1502)))), clamp(dot(_1331, _1395) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _484) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1545 = _1544.w;
    float _1547 = _1544.x;
    float _1548 = _1544.y;
    float _1549 = _1544.z;
    float _1554 = max(max(_1547, _1548), _1549) - min(min(_1547, _1548), _1549);
    float _1557 = max(_484, _485 * smoothstep(0.75f, 0.25f, _536));
    float _1560 = (1.0f - _1557) + (_1427 * _1557);
    float _1561 = 1.0f - _484;
    float _1570 = min(min(_1560, _1209), _1545);
    float _1571 = _1209 * _1560;
    float3 _1575 = ((clamp(dot(_588, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1079, 1.0f.xxx, (_19_m80.y * _1570).xxx);
    float3 _1577 = _1570.xxx;
    float3 _1600 = _1430.xxx;
    float3 _1601 = lerp((_1575 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1080), 1.5f), clamp(_1080, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1413, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1413, _1577) + ((_1575 * clamp(_1080, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1409 * _19_m91.y)))) * _19_m79.y, _1600);
    float3 _1602 = lerp(lerp(lerp(dot(_1439, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1439, 1.2000000476837158203125f.xxx), _1438, clamp((_1209 * (_1561 + (_1560 * _484))) + _1545, 0.0f, 1.0f).xxx), _1338, _1577);
    float3 _1608 = _1602 * ((1.0f - _1554).xxx + (_1544.xyz * _1554));
    float3 _1617 = lerp(lerp(_1438, lerp(dot(_1338, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1338, 1.2000000476837158203125f.xxx), _1571.xxx), _1608 * clamp(dot(_1602, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1608, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1600);
    float4 _1621 = float4(_1617, _1430);
    float _1623 = lerp(_1571, _1570, _1430);
    float3 _1634 = float3(_524.x, lerp(0.5f, _1395.y, _1430), _524.z);
    float _1647 = clamp(dot(_1210, _398), 0.0f, 1.0f);
    float _1648 = dot(_1210, normalize(((_1395 * _1430) + ((_1634 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1634, _1634)))) * 2.0f)) + (_398 * (2.0f + _1430))));
    float _1649 = _1344 * _1344;
    float _1653 = (((_1648 * _1649) - _1648) * _1648) + 1.0f;
    float _1654 = _1653 * _1653;
    float _1658 = 2.0f * _1647;
    float _1660 = (1.0f + _1647) - _1647;
    float3 _1701;
    if (_1212 > 0.001000000047497451305389404296875f)
    {
        _1701 = ((_52.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1210)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1560) * (clamp(_1080, 0.5f, 1.5f) * _19_m79.w)) * (_1212 * _1212);
    }
    else
    {
        _1701 = 0.0f.xxx;
    }
    float3 _1704 = ((_1601 * _1617) * 1.0f) + ((((_1341 * clamp((((_1649 != _1654) ? (_1649 / _1654) : 1.0f) * (0.5f / ((_1658 + (_1344 * _1660)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1601 * (((_1623 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1623))) * 1.0f)) * _19_m92.w) + _1701);
    float _1705 = dot(_1704, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1708 = clamp(_1705 - 0.5f, 0.0f, 0.5f);
    float3 _1744 = normalize(cross(_524, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1750 = dot(_398, _1484);
    float _1752 = 1.0f - abs(_1750);
    float _1757 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_536));
    float3 _1796 = lerp(_1705.xxx, _1704, ((_1708 * _1708) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1752) * _1757, max(_1757, float(dot(_524, _1744) < (-0.00999999977648258209228515625f))) * _486, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_497, _1744) + 1.0f, 0.0f, 1.0f), _1209), _1427)) * (lerp(0.25f.xxx, _1338, _19_m88.z.xxx) * clamp(dot(_1744, _1484), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1523 - (1.0f - _1523), 0.0f), min(_1523 + _1523, 1.0f), _1510)) - (_1521 * ceil(_1521))))) * _1561)) * _19_m93.w) * _1338));
    float2 _1797 = float2(_514);
    float2 _1799 = floor(_1797 * 0.03125f);
    int _1807 = int((_1799.x + (_1799.y * _33_m5)) * 8.0f);
    float _1814 = floor(_379 - (_19_m3.y * _33_m11));
    float _1818 = clamp(_1814, 0.0f, _33_m7 - 1.0f);
    int _1820 = int(_1818 * 8.0f);
    float3 _1822;
    _1822 = _1796;
    float3 _1823;
    [loop]
    for (int _1825 = 0; _1825 <= 7; _1822 = _1823, _1825++)
    {
        uint _1843 = (_1814 <= _1818) ? (_29.Load(uint(_1807 + _1825) * 4 + 0) & _29.Load(uint((_19_m21.y + _1820) + _1825) * 4 + 0)) : 0u;
        uint _1844 = uint(_1825);
        _1823 = _1822;
        uint _1849;
        float3 _1846;
        [loop]
        for (uint _1848 = _1843; _1848 != 0u; _1823 = _1846, _1848 = _1849)
        {
            uint _1853 = firstbitlow(_1848);
            _1849 = _1848 ^ (1u << (_1853 & 31u));
            int _1859 = int((32u * _1844) + _1853) * 8;
            int _1862 = _1859 + 1;
            int _1865 = _1859 + 2;
            int _1868 = _1859 + 3;
            int _1871 = _1859 + 4;
            int _1874 = _1859 + 5;
            int _1877 = _1859 + 6;
            int _1880 = _1859 + 7;
            uint _1884 = uint(_35_m6[_1874].w);
            float _1959;
            if ((_1884 & 1u) == 1u)
            {
                uint _1890 = asuint(_35_m6[_1874].x);
                uint _1897 = asuint(_35_m6[_1874].y);
                uint _1904 = asuint(_35_m6[_1874].z);
                uint _1911 = asuint(_35_m6[_1877].x);
                uint _1918 = asuint(_35_m6[_1877].y);
                uint _1925 = asuint(_35_m6[_1877].z);
                float3 _1944 = abs(mul(float4(_490 - _35_m6[_1862].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1890).x, spvUnpackHalf2x16(_1904).x, spvUnpackHalf2x16(_1918).x, 0.0f), float4(spvUnpackHalf2x16(_1890 >> 16u).x, spvUnpackHalf2x16(_1904 >> 16u).x, spvUnpackHalf2x16(_1918 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1897).x, spvUnpackHalf2x16(_1911).x, spvUnpackHalf2x16(_1925).x, 0.0f), float4(spvUnpackHalf2x16(_1897 >> 16u).x, spvUnpackHalf2x16(_1911 >> 16u).x, spvUnpackHalf2x16(_1925 >> 16u).x, 0.0f))).xyz);
                float _1951 = _35_m6[_1880].x * 0.5f;
                float _1957 = 1.0f - clamp((max(max(_1944.x, _1944.y), _1944.z) - (_1951 + 0.5f)) / (0.5f - _1951), 0.0f, 1.0f);
                _1959 = _1957 * _1957;
            }
            else
            {
                _1959 = 1.0f;
            }
            if (false || (_1959 < 0.001000000047497451305389404296875f))
            {
                _1846 = _1823;
                continue;
            }
            float3 _2676;
            if (_35_m6[_1859].w < 1.5f)
            {
                float3 _2675;
                do
                {
                    uint _1972 = asuint(_35_m6[_1868].w);
                    if ((_1972 == 16u) || ((_35_m6[_1868].z + _19_m91.z) < 0.5f))
                    {
                        _2675 = _1823;
                        break;
                    }
                    bool _1984 = (uint(_35_m6[_1859].w) & 1u) == 0u;
                    bool _1988 = (!_1984) && (_35_m6[_1865].z > 0.0f);
                    bool _1989 = _1972 == 4u;
                    float _1990 = float(_1984);
                    float _1998 = (0.5f + (0.5f * _35_m6[_1865].y)) - abs(_35_m6[_1865].x);
                    float _1999 = _35_m6[_1865].y - _1998;
                    float _2006 = abs(max((1.0f - abs(_1998)) - abs(_1999), 0.00048828125f));
                    float3 _2010 = normalize(float3(_1998, _1999, (_35_m6[_1865].x >= 0.0f) ? _2006 : (-_2006)));
                    float _2016 = lerp(_35_m6[_1877].w, max(2.0f * _35_m6[_1871].y, 0.100000001490116119384765625f), float(_1989));
                    float3 _2021 = _35_m6[_1862].xyz - _490;
                    float3 _2022 = -_2010;
                    float3 _2027 = lerp(_2021, _2022 * dot(_2021, _2022), (float(_1989 && (_35_m6[_1871].z > 0.5f)) * _1990).xxx);
                    float _2028 = dot(_2027, _2027);
                    float _2029 = rsqrt(_2028);
                    float3 _2030 = _2027 * _2029;
                    float3 _2063;
                    float _2064;
                    if (_1988)
                    {
                        float3 _2034 = (_2010 * _35_m6[_1865].z) * 0.5f;
                        float3 _2035 = _2027 - _2034;
                        float3 _2036 = _2027 + _2034;
                        float _2037 = length(_2035);
                        float _2038 = length(_2036);
                        float3 _2047 = normalize(cross(cross(_2010, _2030), _2010));
                        _2063 = _2047;
                        _2064 = ((1.0f / ((((_2037 * _2038) + dot(_2035, _2036)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2047, _2035) / _2037) + (dot(_2047, _2036) / _2038)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_1865].z * _2029, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2063 = _2030;
                        _2064 = 1.0f;
                    }
                    float _2086;
                    if (_2016 < 0.0f)
                    {
                        float _2080 = _2028 * (_35_m6[_1862].w * _35_m6[_1862].w);
                        float _2083 = clamp(1.0f - (_2080 * _2080), 0.0f, 1.0f);
                        _2086 = lerp(1.0f / (_2028 + 1.0f), _2064, float(_1988)) * (_2083 * _2083);
                    }
                    else
                    {
                        float3 _2069 = _2027 * _35_m6[_1862].w;
                        _2086 = _2064 * pow(1.0f - clamp(dot(_2069, _2069), 0.0f, 1.0f), _2016);
                    }
                    float _2091 = clamp((dot(_2063, _2022) - _35_m6[_1865].z) * _35_m6[_1865].w, 0.0f, 1.0f);
                    float _2094 = _2086 * lerp(1.0f, _2091 * _2091, _1990);
                    int _2096 = int(_35_m6[_1880].w);
                    float _2200;
                    if ((!_1988) && (_2096 >= 0))
                    {
                        uint _2102 = uint(_2096);
                        float2 _2193;
                        [branch]
                        if (_1990 != 0.0f)
                        {
                            float4 _2183 = mul(_59_m1[_2102], float4(_490.x, _568, _490.z, 1.0f));
                            _2193 = _59_m0[_2102].xy + (clamp(_2183.xy / _2183.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2102].zw);
                        }
                        else
                        {
                            float3 _2117 = mul(float4(-_2027, 0.0f), _59_m1[_2102]).xyz;
                            float3 _368 = _2117;
                            float3 _367 = _2117;
                            float3 _366 = abs(_2117);
                            uint _2126 = uint(int(_366.y > _366.x));
                            uint _2132 = (_366.z > _366[_2126]) ? 2u : _2126;
                            uint _2138 = (_2132 * 2u) + uint(_367[_2132] < 0.0f);
                            float _2142 = abs(_368[_2138 / 2u]);
                            float _2162 = 0.5f - (0.000244140625f / _59_m0[_2102].w);
                            _2193 = _59_m0[_2102].xy + (clamp(float2((float(_2138) + ((((_368[uint(_334[_2138].x)] * _335[_2138].x) / _2142) * _2162) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_368[uint(_334[_2138].y)] * _335[_2138].y) / _2142) * _2162)), 0.0f.xx, 1.0f.xx) * _59_m0[_2102].zw);
                        }
                        _2200 = _2094 * _57.SampleLevel(_24, _2193, 0.0f).x;
                    }
                    else
                    {
                        _2200 = _2094;
                    }
                    float _2201 = _2200 * _1959;
                    float3 _2674;
                    do
                    {
                        float3 _2673;
                        [branch]
                        if (_2201 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_1989)
                            {
                                _2674 = lerp(_1823, _35_m6[_1859].xyz, (_2201 * (_35_m6[_1871].x * ((1.0f - _35_m6[_1871].w) + (smoothstep(-0.5f, 0.5f, dot(_512, _2063)) * _35_m6[_1871].w)))).xxx);
                                break;
                            }
                            float _2221 = dot(_1484, _2063);
                            float _2222 = clamp(_2221, 0.0f, 1.0f);
                            float _2525;
                            if (_1972 != 0u)
                            {
                                bool _2228 = _1984 || ((_1884 & 2u) != 0u);
                                int _2277;
                                if (_2228)
                                {
                                    _2277 = int(_35_m6[_1868].x);
                                }
                                else
                                {
                                    uint _2232 = asuint(_35_m6[_1865].w);
                                    uint _2234 = asuint(_35_m6[_1868].x);
                                    float3 _2235 = _490 - _35_m6[_1862].xyz;
                                    float3 _2236 = abs(_2235);
                                    float _2237 = _2236.x;
                                    float _2238 = _2236.y;
                                    float _2240 = _2236.z;
                                    int _2272;
                                    if ((_2237 > _2238) && (_2237 > _2240))
                                    {
                                        _2272 = int((_2235.x > 0.0f) ? (_2232 >> 24u) : ((_2232 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2264;
                                        if (_2238 > _2240)
                                        {
                                            _2264 = int((_2235.y > 0.0f) ? ((_2232 >> 8u) & 255u) : (_2232 & 255u));
                                        }
                                        else
                                        {
                                            _2264 = int((_2235.z > 0.0f) ? ((_2234 >> 8u) & 255u) : (_2234 & 255u));
                                        }
                                        _2272 = _2264;
                                    }
                                    _2277 = (_2272 < 80) ? _2272 : (-1);
                                }
                                bool _2278 = _2277 >= 0;
                                float _2524;
                                if (_2278)
                                {
                                    float3 _2285 = _490 - _35_m6[_1862].xyz;
                                    float4 _2305 = mul(_37_m10[_2277], float4((_490 - ((_2285 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2285, _2285)))) * _37_m11[_2277].x)) + (_512 * (_37_m11[_2277].y * 5.0f)), 1.0f));
                                    float _2306 = _2305.w;
                                    float3 _2309 = _2305.xyz / _2306.xxx;
                                    float2 _2310 = _2309.xy;
                                    float3 _2318 = _2309.xyz;
                                    bool3 _2319 = bool3(_2318.x <= 0.0f.xxx.x, _2318.y <= 0.0f.xxx.y, _2318.z <= 0.0f.xxx.z);
                                    bool3 _2320 = bool3(_2318.x >= 1.0f.xxx.x, _2318.y >= 1.0f.xxx.y, _2318.z >= 1.0f.xxx.z);
                                    float _2323 = _2309.z;
                                    float2 _2334 = ((_2310 * (_37_m12[_2277].zw - _37_m12[_2277].xy)) + _37_m12[_2277].xy).xy * _37_m13.zw;
                                    float2 _2336 = floor(_2334 + 0.5f.xx);
                                    float2 _2337 = _2334 - _2336;
                                    float _2339 = _2337.x + 0.5f;
                                    float _2340 = _2339 * _2339;
                                    float _2343 = 1.0f - _2337.x;
                                    float _2344 = min(_2337.x, 0.0f);
                                    float _2347 = _2337.x + 1.0f;
                                    float _2348 = max(_2337.x, 0.0f);
                                    float _2360 = _2337.y + 0.5f;
                                    float _2361 = _2360 * _2360;
                                    float _2364 = 1.0f - _2337.y;
                                    float _2365 = min(_2337.y, 0.0f);
                                    float _2368 = _2337.y + 1.0f;
                                    float _2369 = max(_2337.y, 0.0f);
                                    float3 _2381 = float3(0.1599999964237213134765625f * _2343, 0.1599999964237213134765625f * ((_2347 - (_2348 * _2348)) + 1.0f), _2340 * 0.07999999821186065673828125f);
                                    float3 _2382 = float3(0.1599999964237213134765625f * ((_2340 * 0.5f) - _2337.x), 0.1599999964237213134765625f * ((_2343 - (_2344 * _2344)) + 1.0f), 0.1599999964237213134765625f * _2347) + _2381;
                                    float3 _2384 = float3(0.1599999964237213134765625f * _2364, 0.1599999964237213134765625f * ((_2368 - (_2369 * _2369)) + 1.0f), _2361 * 0.07999999821186065673828125f);
                                    float3 _2385 = float3(0.1599999964237213134765625f * ((_2361 * 0.5f) - _2337.y), 0.1599999964237213134765625f * ((_2364 - (_2365 * _2365)) + 1.0f), 0.1599999964237213134765625f * _2368) + _2384;
                                    float3 _2391 = ((_2381 / _2382) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2393 = ((_2384 / _2385) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2395 = _2336 * _37_m13.xy;
                                    float _2396 = _2391.x;
                                    float _2397 = _2393.x;
                                    float _2400 = _2391.y;
                                    float _2403 = _2391.z;
                                    float _2406 = _2393.y;
                                    float _2413 = _2393.z;
                                    float _2420 = _2382.x;
                                    float _2421 = _2385.x;
                                    float _2423 = _2382.y;
                                    float _2425 = _2382.z;
                                    float _2427 = _2385.y;
                                    float _2431 = _2385.z;
                                    float _2489 = (((((((_2420 * _2421) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2396, _2397), _359).xy, _2323)) + ((_2423 * _2421) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2400, _2397), _359).xy, _2323))) + ((_2425 * _2421) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2403, _2397), _359).xy, _2323))) + ((_2420 * _2427) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2396, _2406), _359).xy, _2323))) + ((_2423 * _2427) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2400, _2406), _359).xy, _2323))) + ((_2425 * _2427) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2403, _2406), _359).xy, _2323))) + ((_2420 * _2431) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2396, _2413), _359).xy, _2323));
                                    float2 _2510 = min(_2310, 1.0f.xx - _2310);
                                    _2524 = _2278 ? lerp(1.0f, (any(bool3(_2319.x || _2320.x, _2319.y || _2320.y, _2319.z || _2320.z)) || ((asuint(_2323) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2489 + ((_2423 * _2431) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2400, _2413), _359).xy, _2323))) + ((_2425 * _2431) * _38.SampleCmpLevelZero(_26, float3(_2395 + float2(_2403, _2413), _359).xy, _2323))), _2228 ? min(_37_m11[_2277].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2277].z - _2306) * 0.25f, min(_2510.x, _2510.y)))) : _37_m11[_2277].w) : 1.0f;
                                }
                                else
                                {
                                    _2524 = clamp(dot(_497, _2063) + 1.0f, 0.0f, 1.0f);
                                }
                                _2525 = _2524;
                            }
                            else
                            {
                                _2525 = 1.0f;
                            }
                            float _2629;
                            float3 _2630;
                            float _2631;
                            float3 _2632;
                            float3 _2633;
                            float _2634;
                            float _2635;
                            [branch]
                            if (_1972 == 0u)
                            {
                                float3 _2603 = _35_m6[_1859].xyz * _2201;
                                float3 _2616 = _1621.xyz;
                                _2629 = _2201;
                                _2630 = (_35_m6[_1859].xyz * ((1.0f - _35_m6[_1871].y) + ((1.0f / max(1.0f, max(max(_2603.x, _2603.y), _2603.z) * lerp(0.75f, 0.5f, 1.0f - _1430))) * _35_m6[_1871].y))) * lerp(0.5f * _35_m6[_1871].x, 1.0f, clamp(dot(normalize(lerp(float3(_497.x, 6.103515625e-05f, _497.z), _1484, _586)), _2063) + 0.5f, 0.0f, 1.0f));
                                _2631 = _2222;
                                _2632 = _2616;
                                _2633 = _2616;
                                _2634 = 1.0f;
                                _2635 = 0.0f;
                            }
                            else
                            {
                                float _2595;
                                float _2596;
                                float3 _2597;
                                float3 _2598;
                                float _2599;
                                float _2600;
                                if (_1972 == 3u)
                                {
                                    float3 _2575 = -normalize(cross(_524, cross(_524, _2063)));
                                    _2595 = _2201 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_1871].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_1871].x), _1752) * _1757, max(_1757, float(dot(_524, _2575) < (-0.00999999977648258209228515625f))) * _486, clamp((_35_m6[_1871].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2525);
                                    _2596 = clamp(dot(_1484, _2575), 0.0f, 1.0f);
                                    _2597 = lerp(0.5f.xxx, _1338, _35_m6[_1871].y.xxx);
                                    _2598 = 0.0f.xxx;
                                    _2599 = 1.0f;
                                    _2600 = 0.0f;
                                }
                                else
                                {
                                    bool _2534 = _1972 == 1u;
                                    float _2565;
                                    float3 _2566;
                                    float _2567;
                                    float _2568;
                                    if (_2534)
                                    {
                                        _2565 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1485 - _35_m6[_1871].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _484), clamp(_2221 + _35_m6[_1871].x, -1.0f, 1.0f) + (_35_m6[_1871].z * _1561)) * _2525);
                                        _2566 = _1342 * _35_m6[_1871].y;
                                        _2567 = 1.0f;
                                        _2568 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2538 = _1972 == 2u;
                                        float _2550;
                                        if (_2538)
                                        {
                                            _2550 = smoothstep(_35_m6[_1871].x + 0.0500000007450580596923828125f, _35_m6[_1871].x - 0.0500000007450580596923828125f, _1332) * ((1.0f - _35_m6[_1871].z) + (step(0.5f, _1335) * _35_m6[_1871].z));
                                        }
                                        else
                                        {
                                            _2550 = 1.0f;
                                        }
                                        _2565 = _2222;
                                        _2566 = 0.0f.xxx;
                                        _2567 = _2550;
                                        _2568 = _2538 ? _35_m6[_1871].y : 0.0f;
                                    }
                                    bool3 _2569 = _2534.xxx;
                                    _2595 = _2201;
                                    _2596 = _2565;
                                    _2597 = float3(_2569.x ? _1338.x : 0.0f.xxx.x, _2569.y ? _1338.y : 0.0f.xxx.y, _2569.z ? _1338.z : 0.0f.xxx.z);
                                    _2598 = _2566;
                                    _2599 = _2567;
                                    _2600 = _2568;
                                }
                                _2629 = _2595;
                                _2630 = _35_m6[_1859].xyz;
                                _2631 = _2596;
                                _2632 = _2597;
                                _2633 = _2598;
                                _2634 = _2599;
                                _2635 = _2600;
                            }
                            float3 _2663;
                            [branch]
                            if (_1972 != 3u)
                            {
                                float _2640 = lerp(_1344, 0.00999999977648258209228515625f, _2635);
                                float _2643 = dot(_1210, normalize(_2063 + _398));
                                float _2644 = _2640 * _2640;
                                float _2648 = (((_2643 * _2644) - _2643) * _2643) + 1.0f;
                                float _2649 = _2648 * _2648;
                                _2663 = ((_1341 * clamp((((_2644 != _2649) ? (_2644 / _2649) : 1.0f) * (0.5f / ((_1658 + (_2640 * _1660)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2634) * _35_m6[_1880].z;
                            }
                            else
                            {
                                _2663 = 0.0f.xxx;
                            }
                            float3 _2666 = _2630 * _2629;
                            _2673 = _1823 + (((_2666 * lerp(_2633, _2632, _2631.xxx)) * 1.0f) + ((_2666 * _2663) * _2631));
                        }
                        else
                        {
                            _2673 = _1823;
                        }
                        _2674 = _2673;
                        break;
                    } while(false);
                    _2675 = _2674;
                    break;
                } while(false);
                _2676 = _2675;
            }
            else
            {
                _2676 = _1823;
            }
            _1846 = _2676;
        }
    }
    float3 _2717;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _2717 = lerp(lerp(0.5f.xxx, lerp(dot(_1822, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1822, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * (smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_1750, 0.0f, 1.0f)) * _1099)) * _48_m17);
    }
    else
    {
        _2717 = _1822;
    }
    float4 _2724 = float4(_2717 * _19_m20.y, 1.0f);
    _2724.w = 1.0f;
    float4 _3108;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2729 = -_398;
        float _2745 = _568 * _19_m46.w;
        float _2750 = max(0.00999999977648258209228515625f, _2745 + _19_m47.w);
        float3 _2764 = exp(_19_m45.xyz * ((-max(0.0f, (_399 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2750)) / _2750) * exp(_2745 + _19_m48.w))));
        float _2767 = dot(_2729, _19_m44.xyz);
        float _2773 = _19_m45.w * _19_m45.w;
        float _2777 = (1.0f + _2773) - ((2.0f * _19_m45.w) * _2767);
        float3 _3100;
        float _3101;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2928 = (uint3(int3(_1417, _1418, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2929 = _2928.y;
            uint _2930 = _2928.z;
            uint _2933 = _2928.x + (_2929 * _2930);
            uint _2935 = _2929 + (_2930 * _2933);
            uint _2937 = _2930 + (_2933 * _2935);
            uint _2939 = _2933 + (_2935 * _2937);
            float _2964 = dot(_2729, -_17_m0[2].xyz);
            float3 _2971 = _490 - _17_m11.xyz;
            float _2973 = (_19_m55.w * ((_2964 > 5.9604644775390625e-08f) ? (1.0f / _2964) : 0.0f)) * (1.0f / _399);
            float _2974 = _2971.y;
            float _2975 = _2973 * _2974;
            float _2977 = _17_m11.y + _2975;
            float _2978 = _2974 - _2975;
            float _2980 = (1.0f - _2973) * _399;
            float _2994 = max(-127.0f, _19_m49.z * _2978);
            float _3018 = max(-127.0f, _19_m52.x * _2978);
            float _3029 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_2977 - _19_m49.x)))) * ((abs(_2994) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2994)) / _2994) : (0.693147182464599609375f - (0.2402265071868896484375f * _2994)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_2977 - _19_m52.z)))) * ((abs(_3018) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3018)) / _3018) : (0.693147182464599609375f - (0.2402265071868896484375f * _3018))));
            float _3051 = clamp((_399 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3054 = clamp((max(clamp(exp2(-(_3029 * _2980)), 0.0f, 1.0f), _19_m51.w) + clamp((_399 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3051, 0.0f, 1.0f);
            float4 _3094 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _62.SampleLevel(_24, float3((_1797 + ((((float3(uint3(_2939, _2935 + (_2937 * _2939), _364) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_379 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_379 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3100 = _3094.xyz + (((_19_m51.xyz * (1.0f - _3054)) + (((_19_m54.xyz * pow(clamp(dot(_398, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3029 * max(_2980 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3051))) * _3094.w);
            _3101 = _3094.w * _3054;
        }
        else
        {
            float3 _2804 = _490 - _17_m11.xyz;
            float _2806 = _2804.y;
            float _2820 = max(-127.0f, _19_m49.z * _2806);
            float _2844 = max(-127.0f, _19_m52.x * _2806);
            float _2855 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2820) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2820)) / _2820) : (0.693147182464599609375f - (0.2402265071868896484375f * _2820)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2844) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2844)) / _2844) : (0.693147182464599609375f - (0.2402265071868896484375f * _2844))));
            float _2877 = clamp((_399 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2880 = clamp((max(clamp(exp2(-(_2855 * _399)), 0.0f, 1.0f), _19_m51.w) + clamp((_399 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2877, 0.0f, 1.0f);
            _3100 = (_19_m51.xyz * (1.0f - _2880)) + (((_19_m54.xyz * pow(clamp(dot(_398, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2855 * max(_399 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2877));
            _3101 = _2880;
        }
        float3 _3106 = (_2724.xyz * (_2764 * _3101)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2767 * _2767)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2773) / max((12.56637096405029296875f * _2777) * sqrt(_2777), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2764)) * _3101) + _3100);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3106 = (_3106 * 0.65f) + (_2724.xyz * 0.35f);

        }

        // RenoDX code end
        _3108 = float4(_3106.x, _3106.y, _3106.z, _2724.w);
    }
    else
    {
        _3108 = _2724;
    }
    _14 = _3108;
    _15 = _1382;
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

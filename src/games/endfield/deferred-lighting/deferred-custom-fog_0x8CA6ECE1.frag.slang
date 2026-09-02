// Endfield 1.5 Vulkan shader 0x8CA6ECE1, migrated from 1.4.4 shader 0x38464555.
#include "./renodx_injection.hlsli"

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

static float _400 = (float)0;
static float3 _401 = (float3)0;
static float _403 = (float)0;
static uint _404 = (uint)0;

static const int2 _358[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _359[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _15_16 : register(b12)
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

[[vk::binding(16, 0)]]
cbuffer _17_18 : register(b16)
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
    float4 _18_m99[2] : packoffset(c127);
    float4 _18_m100[2] : packoffset(c129);
    float _18_m101 : packoffset(c131);
    float _18_m102 : packoffset(c131.y);
    float _18_m103 : packoffset(c131.z);
    float _18_m104 : packoffset(c131.w);
    float4 _18_m105 : packoffset(c132);
    float4 _18_m106 : packoffset(c133);
    float4 _18_m107 : packoffset(c134);
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
    column_major float4x4 _18_m135 : packoffset(c162);
    float4 _18_m136 : packoffset(c166);
    float4 _18_m137 : packoffset(c167);
    float4 _18_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _28 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _30 : register(t18);

uint4 _30_Load4(uint byte_offset)
{
    return asuint(_30[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _31_32 : register(b48)
{
    int _32_m0 : packoffset(c0);
    int _32_m1 : packoffset(c0.y);
    int _32_m2 : packoffset(c0.z);
    int _32_m3 : packoffset(c0.w);
    float _32_m4 : packoffset(c1);
    float _32_m5 : packoffset(c1.y);
    float _32_m6 : packoffset(c1.z);
    float _32_m7 : packoffset(c1.w);
    float _32_m8 : packoffset(c2);
    float _32_m9 : packoffset(c2.y);
    float _32_m10 : packoffset(c2.z);
    float _32_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _33_34 : register(b14)
{
    float4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c1);
    float4 _34_m2 : packoffset(c2);
    float4 _34_m3 : packoffset(c3);
    float4 _34_m4 : packoffset(c4);
    uint4 _34_m5 : packoffset(c5);
    float4 _34_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _35_36 : register(b15)
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
    column_major float4x4 _36_m10[56] : packoffset(c64);
    float4 _36_m11[56] : packoffset(c288);
    float4 _36_m12[56] : packoffset(c344);
    float4 _36_m13 : packoffset(c400);
    float4 _36_m14[47] : packoffset(c401);
    column_major float4x4 _36_m15[15] : packoffset(c448);
    float4 _36_m16[15] : packoffset(c508);
    float4 _36_m17[15] : packoffset(c523);
    float4 _36_m18[15] : packoffset(c538);
    float4 _36_m19 : packoffset(c553);
    float4 _36_m20 : packoffset(c554);
    float4 _36_m21[21] : packoffset(c555);
    column_major float4x4 _36_m22 : packoffset(c576);
    column_major float4x4 _36_m23 : packoffset(c580);
    float4 _36_m24 : packoffset(c584);
    float4 _36_m25 : packoffset(c585);
    float4 _36_m26 : packoffset(c586);
    float4 _36_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _46_47 : register(b0)
{
    float _47_m0 : packoffset(c0);
    float _47_m1 : packoffset(c0.y);
    float _47_m2 : packoffset(c0.z);
    float _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
    float _47_m12 : packoffset(c3);
    float _47_m13 : packoffset(c3.y);
    float _47_m14 : packoffset(c3.z);
    float _47_m15 : packoffset(c3.w);
    float _47_m16 : packoffset(c4);
    float _47_m17 : packoffset(c4.y);
    float _47_m18 : packoffset(c4.z);
    float _47_m19 : packoffset(c4.w);
    float _47_m20 : packoffset(c5);
    float _47_m21 : packoffset(c5.y);
    float _47_m22 : packoffset(c5.z);
    float _47_m23 : packoffset(c5.w);
    float4 _47_m24 : packoffset(c6);
    float4 _47_m25 : packoffset(c7);
    float4 _47_m26 : packoffset(c8);
    float4 _47_m27 : packoffset(c9);
    float4 _47_m28 : packoffset(c10);
    float4 _47_m29 : packoffset(c11);
    float _47_m30 : packoffset(c12);
    float _47_m31 : packoffset(c12.y);
    float _47_m32 : packoffset(c12.z);
    float _47_m33 : packoffset(c12.w);
    float4 _47_m34 : packoffset(c13);
    float4 _47_m35 : packoffset(c14);
    float4 _47_m36 : packoffset(c15);
    float4 _47_m37 : packoffset(c16);
    float4 _47_m38 : packoffset(c17);
    float4 _47_m39 : packoffset(c18);
    float _47_m40 : packoffset(c19);
    float _47_m41 : packoffset(c19.y);
    float _47_m42 : packoffset(c19.z);
    float _47_m43 : packoffset(c19.w);
    float _47_m44 : packoffset(c20);
    float _47_m45 : packoffset(c20.y);
    float _47_m46 : packoffset(c20.z);
    float _47_m47 : packoffset(c20.w);
};

[[vk::binding(50, 0)]]
cbuffer _56_57 : register(b50)
{
    float4 _57_m0[32] : packoffset(c0);
    column_major float4x4 _57_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _25 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _37 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _38 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _40 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _41 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _42 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _43 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _44 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _45 : register(t30);
[[vk::binding(44, 0)]] Texture2D<float4> _48 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _49 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _50 : register(t39);
[[vk::binding(2, 1)]] Texture2D<float4> _51 : register(t2);
[[vk::binding(1, 1)]] Texture2D<float4> _52 : register(t1);
[[vk::binding(45, 0)]] TextureCube<float4> _54 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _55 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _60 : register(t36);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _3 = (float2)0;
static float3 _4 = (float3)0;
static float3 _5 = (float3)0;
static float3 _6 = (float3)0;
static float3 _7 = (float3)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static uint _11 = (uint)0;
static float4 _13 = (float4)0;
static float4 _14 = (float4)0;

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

void frag_main()
{
    float _418 = 1.0f / gl_FragCoord.w;
    float3 _433 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
    float _434 = dot(_433, _433);
    float _436 = rsqrt(max(_434, 9.9999999392252902907785028219223e-09f));
    float3 _437 = _433 * _436;
    float _438 = _434 * _436;
    uint _441 = asuint(_21_m0[_11]._m2.x);
    bool _446 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
    float4 _459;
    float4 _460;
    if (_446)
    {
        _459 = asfloat(_30_Load4((_441 + 2u) * 16 + 0));
        _460 = asfloat(_30_Load4(_441 * 16 + 0));
    }
    else
    {
        _459 = _21_m0[_11]._m0[2];
        _460 = _21_m0[_11]._m0[0];
    }
    float4 _466 = _51.SampleBias(_24, _3, _18_m16);
    float3 _471 = _466.xyz * _47_m24.xyz;
    float _478 = 1.0f - _47_m0;
    float _482 = _466.w * _47_m24.w;
    float3 _487 = _471 * _47_m18;
    float3 _491 = lerp(dot(_487, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _487, _47_m19.xxx);
    float4 _495 = _52.SampleBias(_24, _3, _18_m16);
    float3 _507 = _4 + _16_m11.xyz;
    float3 _511 = _507 - float3(_460.w, _403, _459.w);
    _511.y = 6.103515625e-05f;
    float3 _514 = normalize(_511);
    float3 _520 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _47_m5)));
    uint2 _522 = uint2(gl_FragCoord.xy);
    float3 _532 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _541 = asuint((_18_m89.x > 0.5f) ? _18_m89.y : _21_m0[_11]._m7.x);
    float4 _554 = float4(float(_541 & 255u), float((_541 >> 8u) & 255u), float((_541 >> 16u) & 255u), float((_541 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _555 = _554.x;
    float _558 = _554.w;
    float _564 = _507.y;
    float _567 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m89.w, _18_m89.x) - _564) * _554.y;
    float _568 = max(_554.z, _567);
    float _577 = lerp(_18_m22.x, 1.0f, _18_m91.w) * _18_m20.x;
    float4 _1071;
    float3 _1072;
    float3 _1073;
    float _1074;
    if (_18_m80.y < 0.5f)
    {
        float3 _592 = _507 - (_18_m105.xyz + (_532 * (-_18_m107.w)));
        float _606 = max(clamp((max(abs(_592.x), abs(_592.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_592.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _908;
        float4 _909;
        float4 _910;
        float _911;
        float _912;
        if ((_18_m105.w != 0.0f) && (_606 < 1.0f))
        {
            float3 _619 = _507 - (_18_m105.xyz + (_532 * (-_18_m107.y)));
            float _633 = max(clamp((max(abs(_619.x), abs(_619.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_619.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _709;
            float4 _710;
            float4 _711;
            float4 _712;
            if (_633 < 1.0f)
            {
                float3 _642 = ((_507 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _644 = _642 - floor(_642);
                float4 _648 = _40.SampleLevel(_24, _644, 0.0f);
                float _649 = 1.0f - _633;
                float _653 = _18_m106.y * 0.5f;
                float _658 = _644.x;
                float _659 = clamp(_644.y, _653, 1.0f - _653) * 0.3333333432674407958984375f;
                float _660 = _644.z;
                float4 _663 = _41.SampleLevel(_23, float3(_658, _659, _660), 0.0f);
                float _679 = _648.x;
                float _689 = _648.y;
                float _699 = _648.z;
                _709 = _606 + (_663.w * _649);
                _710 = float4(((_41.SampleLevel(_23, float3(_658, _659 + 0.666666686534881591796875f, _660), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _699, _699) * _649;
                _711 = float4(((_41.SampleLevel(_23, float3(_658, _659 + 0.3333333432674407958984375f, _660), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _689, _689) * _649;
                _712 = float4(((_663.xyz * 4.0f) - 2.0f.xxx) * _679, _679) * _649;
            }
            else
            {
                _709 = _606;
                _710 = 0.0f.xxxx;
                _711 = 0.0f.xxxx;
                _712 = 0.0f.xxxx;
            }
            float3 _718 = _507 - (_18_m105.xyz + (_532 * (-_18_m107.z)));
            float _732 = max(clamp((max(abs(_718.x), abs(_718.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_718.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _812;
            float4 _813;
            float4 _814;
            float4 _815;
            if (_732 < 1.0f)
            {
                float3 _741 = ((_507 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _743 = _741 - floor(_741);
                float4 _747 = _42.SampleLevel(_24, _743, 0.0f);
                float _749 = _633 * (1.0f - _732);
                float _753 = _18_m106.y * 0.5f;
                float _758 = _743.x;
                float _759 = clamp(_743.y, _753, 1.0f - _753) * 0.3333333432674407958984375f;
                float _760 = _743.z;
                float4 _763 = _43.SampleLevel(_23, float3(_758, _759, _760), 0.0f);
                float _779 = _747.x;
                float _790 = _747.y;
                float _801 = _747.z;
                _812 = _709 + (_763.w * _749);
                _813 = _710 + (float4(((_43.SampleLevel(_23, float3(_758, _759 + 0.666666686534881591796875f, _760), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _801, _801) * _749);
                _814 = _711 + (float4(((_43.SampleLevel(_23, float3(_758, _759 + 0.3333333432674407958984375f, _760), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _790, _790) * _749);
                _815 = _712 + (float4(((_763.xyz * 4.0f) - 2.0f.xxx) * _779, _779) * _749);
            }
            else
            {
                _812 = _709;
                _813 = _710;
                _814 = _711;
                _815 = _712;
            }
            float4 _898;
            float4 _899;
            float4 _900;
            float _901;
            if (_732 > 0.0f)
            {
                float3 _824 = ((_507 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _827 = _18_m106.xyz * 0.5f;
                float3 _829 = clamp(_824 - floor(_824), _827, 1.0f.xxx - _827);
                float4 _833 = _44.SampleLevel(_24, _829, 0.0f);
                float _835 = _732 * (1.0f - _606);
                float _839 = _18_m106.y * 0.5f;
                float _844 = _829.x;
                float _845 = clamp(_829.y, _839, 1.0f - _839) * 0.3333333432674407958984375f;
                float _846 = _829.z;
                float4 _849 = _45.SampleLevel(_23, float3(_844, _845, _846), 0.0f);
                float _865 = _833.x;
                float _876 = _833.y;
                float _887 = _833.z;
                _898 = _813 + (float4(((_45.SampleLevel(_23, float3(_844, _845 + 0.666666686534881591796875f, _846), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _887, _887) * _835);
                _899 = _814 + (float4(((_45.SampleLevel(_23, float3(_844, _845 + 0.3333333432674407958984375f, _846), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _876, _876) * _835);
                _900 = _815 + (float4(((_849.xyz * 4.0f) - 2.0f.xxx) * _865, _865) * _835);
                _901 = _812 + (_849.w * _835);
            }
            else
            {
                _898 = _813;
                _899 = _814;
                _900 = _815;
                _901 = _812;
            }
            float _904 = clamp((_901 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _908 = _898;
            _909 = _899;
            _910 = _900;
            _911 = _904 - _606;
            _912 = (_904 + _606) * 0.5f;
        }
        else
        {
            _908 = 0.0f.xxxx;
            _909 = 0.0f.xxxx;
            _910 = 0.0f.xxxx;
            _911 = 0.0f;
            _912 = 1.0f;
        }
        float4 _932 = _910 + float4(_18_m108.x * _912, (_18_m108.y * _912) + ((_18_m108.w * _911) * 0.5f), _18_m108.z * _912, (_18_m108.w * _912) + ((_18_m108.y * _911) * 0.375f));
        float4 _952 = _909 + float4(_18_m109.x * _912, (_18_m109.y * _912) + ((_18_m109.w * _911) * 0.5f), _18_m109.z * _912, (_18_m109.w * _912) + ((_18_m109.y * _911) * 0.375f));
        float4 _972 = _908 + float4(_18_m110.x * _912, (_18_m110.y * _912) + ((_18_m110.w * _911) * 0.5f), _18_m110.z * _912, (_18_m110.w * _912) + ((_18_m110.y * _911) * 0.375f));
        float4 _976 = float4(_520, 1.0f);
        float3 _982 = max(float3(dot(_932, _976), dot(_952, _976), dot(_972, _976)), 0.0f.xxx) * _577;
        float3 _990 = ((_932.xyz * 0.2125999927520751953125f) + (_952.xyz * 0.715200006961822509765625f)) + (_972.xyz * 0.072200000286102294921875f);
        float3 _994 = _990 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_990, _990)));
        float _996 = abs(_994.y);
        float3 _997 = _994;
        _997.y = _996;
        float4 _998 = float4(_997.x, _997.y, _997.z, 0.0f.xxxx.w);
        _998.w = 1.0f;
        float4 _1002 = float4(_994.x, _996, _994.z, 1.0f);
        float3 _1007 = max(float3(dot(_932, _1002), dot(_952, _1002), dot(_972, _1002)), 0.0f.xxx);
        float _1015 = _982.z;
        float _1016 = _982.y;
        float4 _1021 = lerp(float4(_1015, _1016, -1.0f, 0.666666686534881591796875f), float4(_1016, _1015, 0.0f, -0.3333333432674407958984375f), step(_1015, _1016).xxxx);
        float _1022 = _982.x;
        float _1023 = _1021.x;
        float4 _1031 = lerp(float4(_1023, _1021.yw, _1022), float4(_1022, _1021.yz, _1023), step(_1023, _1022).xxxx);
        float _1032 = _1031.x;
        float _1033 = _1031.w;
        float _1034 = _1031.y;
        float _1036 = _1032 - min(_1033, _1034);
        float _1046 = frac(abs(_1031.z + ((_1033 - _1034) / ((6.0f * _1036) + 9.9999997473787516355514526367188e-05f))));
        float _1053 = min(_1036 / (_1032 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1046 - 0.5f))) * clamp(_1032, 0.0f, 1.0f));
        float _1055 = 2.0f / (2.0f - _1053);
        _1071 = _998;
        _1072 = _982;
        _1073 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1046, _1053, _1055).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1053.xxx) * _1055;
        _1074 = max(max(max(_1007.x, _1007.y), _1007.z), 0.0f) * _577;
    }
    else
    {
        _1071 = 0.0f.xxxx;
        _1072 = 1.0f.xxx;
        _1073 = _18_m81.xyz;
        _1074 = _577;
    }
    float3 _1794;
    float _1795;
    float _1796;
    float _1797;
    float3 _1798;
    float3 _1799;
    [branch]
    if ((clamp(_555 + _568, 0.0f, 1.0f) - _47_m20) > 0.00999999977648258209228515625f)
    {
        float _1102 = 1.0f - _47_m2;
        float _1105 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_471 * _1102, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1108 = _446.xxx;
        float3 _1110 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1114 = float3(_1108.x ? _1110.x : _9.x, _1108.y ? _1110.y : _9.y, _1108.z ? _1110.z : _9.z) * _18_m89.z;
        float3 _1116 = float3(_1108.x ? _8.xzy.x : _8.x, _1108.y ? _8.xzy.y : _8.y, _1108.z ? _8.xzy.z : _8.z);
        float3 _1118 = abs(_1116) - 0.20000000298023223876953125f.xxx;
        float3 _1121 = max((_1118 * _1118) * _1118, 6.103515625e-05f.xxx);
        float3 _1124 = _1121 / dot(_1121, 1.0f.xxx).xxx;
        float2 _1132 = _1114.xy;
        float2 _1137 = _1114.zy;
        float4 _1147 = ((_48.SampleBias(_24, _1114.xz, _18_m16) * _1124.y) + (_48.SampleBias(_24, _1132, _18_m16) * _1124.z)) + (_48.SampleBias(_24, _1137, _18_m16) * _1124.x);
        float _1148 = _1147.w;
        float _1150 = 1.10000002384185791015625f - _1148;
        float _1159 = max(smoothstep(0.800000011920928955078125f - _1148, _1150, clamp((_555 * _1102) + (_520.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1148, _1150, clamp(_567 * _1102, 0.0f, 1.0f)));
        float _1166 = smoothstep(0.5f, 0.75f, _47_m2);
        float _1168 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _478) * _1105;
        float _1171 = clamp(_1168 + _1166, 0.0f, 1.0f) * max(_555, _568);
        bool _1175 = !((step(_555, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _568)) != 0.0f);
        bool2 _1176 = _1175.xx;
        float2 _1178 = (1.0f - _568).xx;
        float2 _1179 = float2(_1176.x ? float2(3.0f, 4.345600128173828125f).x : _1178.x, _1176.y ? float2(3.0f, 4.345600128173828125f).y : _1178.y);
        float _1180 = 1.0f - _1171;
        float _1183 = _1175 ? _18_m10.x : 1.0f;
        float _1185 = _1183 * _1179.x;
        float _1187 = _1183 * _1179.y;
        float3 _1188 = _1114 * 20.0f;
        float3 _1189 = _1114 * 34.345600128173828125f;
        float3 _1191 = pow(max(_1118, 0.0f.xxx), 10.0f.xxx);
        float3 _1195 = _1191 / max(dot(_1191, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1197 = _1195.y;
        float2 _1198 = _1188.xz * 1.0f;
        float2 _1199 = floor(_1198);
        float2 _1202 = frac(_1199 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1206 = _1202 + dot(_1202, _1202 + 34.345001220703125f.xx).xx;
        float _1207 = _1206.x;
        float _1208 = _1206.y;
        float2 _1212 = frac(float2(_1207 * _1208, _1207 + _1208));
        float2 _1215 = frac((_1199 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1219 = _1215 + dot(_1215, _1215 + 34.345001220703125f.xx).xx;
        float _1220 = _1219.x;
        float _1221 = _1219.y;
        float2 _1225 = frac(float2(_1220 * _1221, _1220 + _1221));
        float _1231 = _1212.x;
        float _1233 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1231);
        float2 _1234 = ((_1198 - _1199) + ((((_1225 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1237 = _1234.y;
        float2 _1241 = float2(_1234.x * 1.25f, _1237 * ((_1237 < 0.0f) ? 1.25f : 0.75f));
        float _1244 = _1185 + _1231;
        float _1248 = _1175 ? frac(_1244) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1244, 0.0f, 1.0f));
        float _1260 = _1212.y;
        float _1263 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1248) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1248)) * step(0.001000000047497451305389404296875f, smoothstep(_1233, 0.0f, length(_1241)))) * step(_1180, _1260 - 0.100000001490116119384765625f);
        float _1266 = _1263 * _1197;
        float _1274 = _1195.z;
        float2 _1275 = _1188.xy * 1.0f;
        float2 _1276 = floor(_1275);
        float2 _1279 = frac(_1276 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1283 = _1279 + dot(_1279, _1279 + 34.345001220703125f.xx).xx;
        float _1284 = _1283.x;
        float _1285 = _1283.y;
        float2 _1289 = frac(float2(_1284 * _1285, _1284 + _1285));
        float2 _1292 = frac((_1276 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1296 = _1292 + dot(_1292, _1292 + 34.345001220703125f.xx).xx;
        float _1297 = _1296.x;
        float _1298 = _1296.y;
        float2 _1302 = frac(float2(_1297 * _1298, _1297 + _1298));
        float _1308 = _1289.x;
        float _1310 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1308);
        float2 _1311 = ((_1275 - _1276) + ((((_1302 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1314 = _1311.y;
        float2 _1318 = float2(_1311.x * 1.25f, _1314 * ((_1314 < 0.0f) ? 1.25f : 0.75f));
        float _1321 = _1185 + _1308;
        float _1325 = _1175 ? frac(_1321) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1321, 0.0f, 1.0f));
        float _1337 = _1289.y;
        float _1340 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1325) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1325)) * step(0.001000000047497451305389404296875f, smoothstep(_1310, 0.0f, length(_1318)))) * step(_1180, _1337 - 0.100000001490116119384765625f);
        float _1343 = _1340 * _1274;
        float _1351 = _1195.x;
        float2 _1352 = _1188.zy * 1.0f;
        float2 _1353 = floor(_1352);
        float2 _1356 = frac(_1353 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1360 = _1356 + dot(_1356, _1356 + 34.345001220703125f.xx).xx;
        float _1361 = _1360.x;
        float _1362 = _1360.y;
        float2 _1366 = frac(float2(_1361 * _1362, _1361 + _1362));
        float2 _1369 = frac((_1353 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1373 = _1369 + dot(_1369, _1369 + 34.345001220703125f.xx).xx;
        float _1374 = _1373.x;
        float _1375 = _1373.y;
        float2 _1379 = frac(float2(_1374 * _1375, _1374 + _1375));
        float _1385 = _1366.x;
        float _1387 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1385);
        float2 _1388 = ((_1352 - _1353) + ((((_1379 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1391 = _1388.y;
        float2 _1395 = float2(_1388.x * 1.25f, _1391 * ((_1391 < 0.0f) ? 1.25f : 0.75f));
        float _1398 = _1185 + _1385;
        float _1402 = _1175 ? frac(_1398) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1398, 0.0f, 1.0f));
        float _1414 = _1366.y;
        float _1417 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1402) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1402)) * step(0.001000000047497451305389404296875f, smoothstep(_1387, 0.0f, length(_1395)))) * step(_1180, _1414 - 0.100000001490116119384765625f);
        float _1420 = _1417 * _1351;
        float2 _1433 = (float4(((clamp(_1241 / _1233.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1225.x)) * _1263) * _1197, _1266, _1260).xy + float4(((clamp(_1318 / _1310.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1302.x)) * _1340) * _1274, _1343, _1337).xy) + float4(((clamp(_1395 / _1387.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1379.x)) * _1417) * _1351, _1420, _1414).xy;
        float _1435 = max(_1420, max(_1266, _1343));
        float4 _1438 = float4(_1433, _1435, 0.0f);
        float2 _1440 = _1189.xz * 1.0f;
        float2 _1441 = floor(_1440);
        float2 _1444 = frac(_1441 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1448 = _1444 + dot(_1444, _1444 + 34.345001220703125f.xx).xx;
        float _1449 = _1448.x;
        float _1450 = _1448.y;
        float2 _1454 = frac(float2(_1449 * _1450, _1449 + _1450));
        float2 _1457 = frac((_1441 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1461 = _1457 + dot(_1457, _1457 + 34.345001220703125f.xx).xx;
        float _1462 = _1461.x;
        float _1463 = _1461.y;
        float2 _1467 = frac(float2(_1462 * _1463, _1462 + _1463));
        float _1473 = _1454.x;
        float _1475 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1473);
        float2 _1476 = ((_1440 - _1441) + ((((_1467 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1479 = _1476.y;
        float2 _1483 = float2(_1476.x * 1.25f, _1479 * ((_1479 < 0.0f) ? 1.25f : 0.75f));
        float _1486 = _1187 + _1473;
        float _1490 = _1175 ? frac(_1486) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1486, 0.0f, 1.0f));
        float _1502 = _1454.y;
        float _1505 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1490) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1490)) * step(0.001000000047497451305389404296875f, smoothstep(_1475, 0.0f, length(_1483)))) * step(_1180, _1502 - 0.100000001490116119384765625f);
        float _1508 = _1505 * _1197;
        float2 _1513 = _1189.xy * 1.0f;
        float2 _1514 = floor(_1513);
        float2 _1517 = frac(_1514 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1521 = _1517 + dot(_1517, _1517 + 34.345001220703125f.xx).xx;
        float _1522 = _1521.x;
        float _1523 = _1521.y;
        float2 _1527 = frac(float2(_1522 * _1523, _1522 + _1523));
        float2 _1530 = frac((_1514 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1534 = _1530 + dot(_1530, _1530 + 34.345001220703125f.xx).xx;
        float _1535 = _1534.x;
        float _1536 = _1534.y;
        float2 _1540 = frac(float2(_1535 * _1536, _1535 + _1536));
        float _1546 = _1527.x;
        float _1548 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1546);
        float2 _1549 = ((_1513 - _1514) + ((((_1540 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1552 = _1549.y;
        float2 _1556 = float2(_1549.x * 1.25f, _1552 * ((_1552 < 0.0f) ? 1.25f : 0.75f));
        float _1559 = _1187 + _1546;
        float _1563 = _1175 ? frac(_1559) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1559, 0.0f, 1.0f));
        float _1575 = _1527.y;
        float _1578 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1563) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1563)) * step(0.001000000047497451305389404296875f, smoothstep(_1548, 0.0f, length(_1556)))) * step(_1180, _1575 - 0.100000001490116119384765625f);
        float _1581 = _1578 * _1274;
        float2 _1586 = _1189.zy * 1.0f;
        float2 _1587 = floor(_1586);
        float2 _1590 = frac(_1587 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1594 = _1590 + dot(_1590, _1590 + 34.345001220703125f.xx).xx;
        float _1595 = _1594.x;
        float _1596 = _1594.y;
        float2 _1600 = frac(float2(_1595 * _1596, _1595 + _1596));
        float2 _1603 = frac((_1587 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1607 = _1603 + dot(_1603, _1603 + 34.345001220703125f.xx).xx;
        float _1608 = _1607.x;
        float _1609 = _1607.y;
        float2 _1613 = frac(float2(_1608 * _1609, _1608 + _1609));
        float _1619 = _1600.x;
        float _1621 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1619);
        float2 _1622 = ((_1586 - _1587) + ((((_1613 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1625 = _1622.y;
        float2 _1629 = float2(_1622.x * 1.25f, _1625 * ((_1625 < 0.0f) ? 1.25f : 0.75f));
        float _1632 = _1187 + _1619;
        float _1636 = _1175 ? frac(_1632) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1632, 0.0f, 1.0f));
        float _1648 = _1600.y;
        float _1651 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1636) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1636)) * step(0.001000000047497451305389404296875f, smoothstep(_1621, 0.0f, length(_1629)))) * step(_1180, _1648 - 0.100000001490116119384765625f);
        float _1654 = _1651 * _1351;
        float2 _1662 = (float4(((clamp(_1483 / _1475.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1467.x)) * _1505) * _1197, _1508, _1502).xy + float4(((clamp(_1556 / _1548.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1540.x)) * _1578) * _1274, _1581, _1575).xy) + float4(((clamp(_1629 / _1621.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1613.x)) * _1651) * _1351, _1654, _1648).xy;
        float4 _1667 = float4(_1662, max(_1654, max(_1508, _1581)), 0.0f);
        float _1669 = step(max(float2(_1233 * _1263, _403) * _1197, max(float2(_1310 * _1340, _403) * _1274, float2(_1387 * _1417, _403) * _1351)).x, 0.00999999977648258209228515625f);
        float2 _1673 = _1438.xy + (_1667.xy * _1669);
        float3 _1682 = float3((_1147.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1673.x, _1673.y, 0.0f.xxx.z);
        float2 _1686 = float2(0.0f, (_18_m10.x * _18_m89.z) * 0.75f);
        float3 _1689 = float3(_1116.x, 0.0f, _1116.z);
        float3 _1695 = abs(_1689 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1689, _1689)))) - 0.20000000298023223876953125f.xxx;
        float3 _1698 = max((_1695 * _1695) * _1695, 6.103515625e-05f.xxx);
        float3 _1701 = _1698 / dot(_1698, 1.0f.xxx).xxx;
        float _1720 = _1701.z;
        float _1722 = _1701.x;
        float4 _1724 = (_49.SampleBias(_24, _1132, _18_m16) * _1720) + (_49.SampleBias(_24, _1137, _18_m16) * _1722);
        float2 _1736 = _1682.xy + ((((_1724.xy * 2.0f) - 1.0f.xx) * ((_49.SampleBias(_24, _1132 + _1686, _18_m16).w * _1720) + (_49.SampleBias(_24, _1137 + _1686, _18_m16).w * _1722))) * _1171);
        float3 _1737 = float3(_1736.x, _1736.y, _1682.z);
        float _1738 = _1724.z;
        float _1743 = max(max(max(_1438.zw * step(0.00999999977648258209228515625f, _1435), _1667.zw * _1669).x, step(1.0099999904632568359375f - _1171, _1147.z)), smoothstep(1.0f - _1738, 1.10000002384185791015625f - _1738, _1171) * _1171);
        float2 _1744 = _1736.xy;
        _1737.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1744, _1744), 0.0f, 1.0f)));
        float3 _1751 = normalize(_1737);
        float3 _1752 = cross(_520, float3(0.0f, 1.0f, 0.0f));
        bool3 _1755 = (dot(_1752, _1752) > 6.103515625e-05f).xxx;
        float3 _1756 = normalize(_1752);
        float3 _1757 = float3(_1755.x ? _1756.x : float3(1.0f, 0.0f, 0.0f).x, _1755.y ? _1756.y : float3(1.0f, 0.0f, 0.0f).y, _1755.z ? _1756.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1768 = min(_478, 0.0500000007450580596923828125f);
        float _1769 = lerp(_478, _1768, _1743);
        float _1786 = lerp(1.0f, 0.5f, (_1159 * (1.0f - _1105)) * (1.0f - _1168));
        _1794 = normalize(lerp(_520, normalize(((_1757 * _1751.x) + (cross(_1757, _520) * _1751.y)) + (_520 * _1751.z)), _1743.xxx));
        _1795 = _1743;
        _1796 = _1768;
        _1797 = max(_1769 - ((0.20000000298023223876953125f * _1105) * _1159), min(0.20000000298023223876953125f, _1769));
        _1798 = _491 * _1786;
        _1799 = lerp(_471, _471 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_471, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1743 * _1166).xxx) * _1786;
    }
    else
    {
        _1794 = _520;
        _1795 = 0.0f;
        _1796 = 0.00999999977648258209228515625f;
        _1797 = _478;
        _1798 = _491;
        _1799 = _471;
    }
    float3 _1927;
    float _1928;
    float3 _1929;
    float3 _1930;
    float _1931;
    [branch]
    if ((_558 - _47_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1804 = _446.xxx;
        float3 _1806 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1807 = float3(_1804.x ? _1806.x : _9.x, _1804.y ? _1806.y : _9.y, _1804.z ? _1806.z : _9.z);
        float3 _1810 = _1807 * _18_m89.z;
        float3 _1812 = float3(_1804.x ? _8.xzy.x : _8.x, _1804.y ? _8.xzy.y : _8.y, _1804.z ? _8.xzy.z : _8.z);
        float3 _1814 = abs(_1812) - 0.20000000298023223876953125f.xxx;
        float3 _1817 = max((_1814 * _1814) * _1814, 6.103515625e-05f.xxx);
        float3 _1820 = _1817 / dot(_1817, 1.0f.xxx).xxx;
        float4 _1843 = ((_50.SampleBias(_24, _1810.xz, _18_m16) * _1820.y) + (_50.SampleBias(_24, _1810.xy, _18_m16) * _1820.z)) + (_50.SampleBias(_24, _1810.zy, _18_m16) * _1820.x);
        float _1844 = _1812.y;
        float _1851 = clamp(_558 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1807.y) * clamp(_558 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1857 = _1851 * (2.0f - _1851);
        float _1862 = smoothstep(2.0f - _1857, 2.349999904632568359375f - _1857, ((_1844 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1843.z) * float(gl_FrontFacing);
        float _1874 = lerp(1.0f, 0.5f, ((_1851 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1799 * (1.0f - _47_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1843.w) * ((_1844 * 0.25f) + 0.75f));
        float3 _1876 = _1862.xxx;
        float2 _1882 = (_1843.xy * 2.0f) - 1.0f.xx;
        float3 _1883 = float3(_1882.x, _1882.y, _401.z);
        float2 _1884 = _1882.xy;
        _1883.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1884, _1884), 0.0f, 1.0f)));
        float2 _1892 = _1883.xy * 2.0f;
        float3 _1894 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1892.x, _1892.y, _1883.z), _1876);
        float3 _1898 = _1894 * rsqrt(max(6.103515625e-05f, dot(_1894, _1894)));
        float _1899 = _520.y;
        float _1902 = step(0.00999999977648258209228515625f, 1.0f - (_1899 * _1899));
        float _1906 = lerp(_520.z, _1899, _1902);
        float3 _1913 = (float3(0.0f, _1902, 1.0f - _1902) - (_520 * _1906)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1906 * _1906)));
        _1927 = ((cross(_1913, _520) * _1898.x) + (_1913 * _1898.y)) + (_520 * _1898.z);
        _1928 = lerp(_1797, 0.89999997615814208984375f, clamp(_1862 * 4.0f, 0.0f, 1.0f));
        _1929 = lerp(_1798 * _1874, 0.3079999983310699462890625f.xxx, _1876);
        _1930 = lerp(_1799 * _1874, 0.87999999523162841796875f.xxx, _1876);
        _1931 = lerp(_47_m2, 0.0f, _1862);
    }
    else
    {
        _1927 = _520;
        _1928 = _1797;
        _1929 = _1798;
        _1930 = _1799;
        _1931 = _47_m2;
    }
    float _1933 = 0.959999978542327880859375f - (_1931 * 0.959999978542327880859375f);
    float3 _1934 = _1930 * _1933;
    float3 _1937 = lerp(0.039999999105930328369140625f.xxx * _47_m1, _1930, _1931.xxx);
    float3 _1938 = _1929 * _1933;
    float _1940 = max(_1928 * _1928, 0.0078125f);
    bool _1947 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
    float2 _1960 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
    _1960.y = -_1960.y;
    float2 _1976 = lerp(((sqrt(sqrt(abs(_1960 * 0.5f))) * float2(int2(sign(_1960)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1947).xx);
    float4 _1978 = float4(_1976.x, _1976.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1978.z = 1.0f;
    _1978.w = _1947 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1991 = lerp(-_34_m0.xyz, _18_m90.xyz, _18_m80.w.xxx);
    float3 _1995 = normalize(float3(_1991.x, 6.103515625e-05f, _1991.z));
    float3 _2005 = lerp(_34_m3.xyz, _18_m84.xyz, _18_m91.y.xxx);
    float3 _2009 = _2005 * lerp(_34_m3.w, 1.0f, _18_m91.w);
    int _2013 = int(_522.x);
    int _2014 = int(_522.y);
    float4 _2018 = _38.Load(int3(int3(_2013, _2014, 0).xy, 0));
    float _2023 = _2018.y;
    float _2026 = lerp(lerp(1.0f, _2018.x, _36_m6.x), 1.0f, _18_m80.z);
    float _2027 = dot(_1927, _1991);
    float3 _2034 = _1938 * _18_m79.z;
    float3 _2035 = _2034 * 0.64999997615814208984375f;
    float _2039 = dot(_1934, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2052 = clamp(-dot(_1995.xz, normalize(_532.xz)), 0.0f, 1.0f);
    float _2056 = 1.0f - _18_m91.x;
    float _2064 = smoothstep(0.25f, 1.0f, clamp(lerp(_2027, ((-_2027) * ((_2027 * 0.5f) - 1.0f)) + 0.5f, (_2052 * smoothstep(0.25f, 0.75f, 1.0f - abs(_532.y))) * _2056) + (_18_m90.w * _18_m91.x), -1.0f, 1.0f));
    float _2071 = max(max(_2064, _2064), _2064) - min(min(_2064, _2064), _2064);
    float _2073 = smoothstep(0.25f, 1.0f, dot(_1927, _532));
    float _2080 = min(min(_2023, 1.0f), _2064);
    float _2081 = _2073 * _2023;
    float3 _2085 = ((clamp(dot(_520, _18_m85.xyz) + _18_m86.x, 0.0f, 1.0f) * _18_m86.y) + _18_m86.z).xxx * lerp(_1073, 1.0f.xxx, (_18_m80.y * _2080).xxx);
    float3 _2087 = _2080.xxx;
    float3 _2110 = _2026.xxx;
    float3 _2111 = lerp((_2085 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1074), 1.5f), clamp(_1074, 1.25f, 1.75f), _18_m80.x)) * _18_m79.w, (lerp(dot(_2009, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2009, _2087) + ((_2085 * clamp(_1074, 0.0f, 1.5f)) * ((1.0f - _18_m91.y).xxx + (_2005 * _18_m91.y)))) * _18_m79.y, _2110);
    float3 _2112 = lerp(lerp(lerp(dot(_2035, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2035, 1.2000000476837158203125f.xxx), _2034, clamp((_2023 * _2073) + _2064, 0.0f, 1.0f).xxx), _1934, _2087);
    float3 _2118 = _2112 * ((1.0f - _2071).xxx + (_2064.xxxx.xyz * _2071));
    float3 _2127 = lerp(lerp(_2034, lerp(_2039.xxx, _1934, 1.2000000476837158203125f.xxx), _2081.xxx), _2118 * clamp(dot(_2112, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2118, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2110);
    float4 _2131 = float4(_2127, _2026);
    float _2133 = lerp(_2081, _2080, _2026);
    float _2136 = lerp(_18_m79.z, 1.0f, _2133);
    float3 _2144 = float3(_532.x, lerp(0.5f, _1991.y, _2026), _532.z);
    float _2157 = clamp(dot(_1794, _437), 0.0f, 1.0f);
    float _2158 = dot(_1794, normalize(((_1991 * _2026) + ((_2144 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2144, _2144)))) * 2.0f)) + (_437 * (2.0f + _2026))));
    float _2159 = _1940 * _1940;
    float _2163 = (((_2158 * _2159) - _2158) * _2158) + 1.0f;
    float _2164 = _2163 * _2163;
    float _2168 = 2.0f * _2157;
    float _2170 = (1.0f + _2157) - _2157;
    float _2187 = (1.0f - _47_m6) + (_482 * _47_m6);
    float3 _2189 = ((_2111 * _2127) * _2187) + (((_1937 * clamp((((_2159 != _2164) ? (_2159 / _2164) : 1.0f) * (0.5f / ((_2168 + (_1940 * _2170)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2111 * (((_2133 * 0.5f) + 0.5f) * _2136)) * 1.0f)) * _18_m92.w);
    float _2190 = dot(_2189, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2193 = clamp(_2190 - 0.5f, 0.0f, 0.5f);
    float3 _2229 = normalize(cross(_532, lerp(float3(_18_m88.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m88.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m88.y), _18_m94.w.xxx)));
    float _2235 = dot(_437, _1927);
    float _2237 = 1.0f - abs(_2235);
    float _2259 = dot(_1995, _1927);
    float _2271 = 1.0f - _2026;
    float _2298 = lerp(_1928, _1796, _1795);
    float _2299 = _2298 * _2298;
    float _2300 = _2157 * _2157;
    float _2301 = _2300 * _2157;
    float2 _2302 = float2(1.0f, _2157);
    float2 _2305 = float2(1.0f, _2299);
    float3 _2308 = float3(1.0f, _2299, (_2299 * _2299) * _2299);
    float _2313 = dot(mul(_2302, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2305) / dot(mul(float3(1.0f, _2300, _2301), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2308);
    float _2318 = dot(mul(_2302, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2305) / dot(mul(float3(1.0f, _2157, _2301), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2308);
    float3 _2321 = (_1937 * _2313) + _2318.xxx;
    float _2322 = _2313 + _2318;
    float3 _2328 = -_437;
    float3 _2347 = lerp(_2190.xxx, _2189, ((_2193 * _2193) + 1.0f).xxx) + (((((_18_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m88.w), lerp(0.89999997615814208984375f, 0.5f, _18_m88.w), _2237)) * _18_m87.w) * min(min(clamp(dot(_514, _2229) + 1.0f, 0.0f, 1.0f), 1.0f), _2023)) * (lerp(0.25f.xxx, _1934, _18_m88.z.xxx) * clamp(dot(_2229, _1927), 0.0f, 1.0f))) + ((((((lerp(_1072 * (1.0f / max(max(max(_1072.x, _1072.y), _1072.z) * 0.5f, 1.0f)), _2009, _2110) * clamp(lerp(dot(_1071.xyz, _1927) * _1071.w, ((-_2259) * ((_2259 * 0.5f) - 1.0f)) + 0.5f, _2026), 0.0f, 1.0f)) * ((_2271 + (_2052 * _2026)) * _2056)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2237)) * min(1.0f, _2023)) * (_2271 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2039) * _2026))) * max(0.1500000059604644775390625f.xxx, _1934)));
    float2 _2350 = float2(_522);
    float2 _2352 = floor(_2350 * 0.03125f);
    int _2360 = int((_2352.x + (_2352.y * _32_m5)) * 8.0f);
    float _2367 = floor(_418 - (_18_m3.y * _32_m11));
    float _2371 = clamp(_2367, 0.0f, _32_m7 - 1.0f);
    int _2373 = int(_2371 * 8.0f);
    float3 _2375;
    _2375 = (_2347 + (((_495.xyz * _47_m25.xyz) * _47_m7) * _2187)) + (((_54.SampleLevel(_23, reflect(_2328, _1794), (1.2000000476837158203125f * log2(max(_2298, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2321 + ((_1937 * ((1.0f - _2322) / _2322)) * _2321)) * 1.0f)) * ((clamp(_1074, 0.5f, 1.5f) * _18_m79.w) * _2136)) * _1073);
    float3 _2376;
    [loop]
    for (int _2378 = 0; _2378 <= 7; _2375 = _2376, _2378++)
    {
        uint _2396 = (_2367 <= _2371) ? (_28.Load(uint(_2360 + _2378) * 4 + 0) & _28.Load(uint((_18_m21.y + _2373) + _2378) * 4 + 0)) : 0u;
        uint _2397 = uint(_2378);
        _2376 = _2375;
        uint _2402;
        float3 _2399;
        [loop]
        for (uint _2401 = _2396; _2401 != 0u; _2376 = _2399, _2401 = _2402)
        {
            uint _2406 = firstbitlow(_2401);
            _2402 = _2401 ^ (1u << (_2406 & 31u));
            int _2412 = int((32u * _2397) + _2406) * 8;
            int _2415 = _2412 + 1;
            int _2418 = _2412 + 2;
            int _2421 = _2412 + 3;
            int _2424 = _2412 + 4;
            int _2427 = _2412 + 5;
            int _2430 = _2412 + 6;
            int _2433 = _2412 + 7;
            uint _2437 = uint(_34_m6[_2427].w);
            float _2512;
            if ((_2437 & 1u) == 1u)
            {
                uint _2443 = asuint(_34_m6[_2427].x);
                uint _2450 = asuint(_34_m6[_2427].y);
                uint _2457 = asuint(_34_m6[_2427].z);
                uint _2464 = asuint(_34_m6[_2430].x);
                uint _2471 = asuint(_34_m6[_2430].y);
                uint _2478 = asuint(_34_m6[_2430].z);
                float3 _2497 = abs(mul(float4(_507 - _34_m6[_2415].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2443).x, spvUnpackHalf2x16(_2457).x, spvUnpackHalf2x16(_2471).x, 0.0f), float4(spvUnpackHalf2x16(_2443 >> 16u).x, spvUnpackHalf2x16(_2457 >> 16u).x, spvUnpackHalf2x16(_2471 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2450).x, spvUnpackHalf2x16(_2464).x, spvUnpackHalf2x16(_2478).x, 0.0f), float4(spvUnpackHalf2x16(_2450 >> 16u).x, spvUnpackHalf2x16(_2464 >> 16u).x, spvUnpackHalf2x16(_2478 >> 16u).x, 0.0f))).xyz);
                float _2504 = _34_m6[_2433].x * 0.5f;
                float _2510 = 1.0f - clamp((max(max(_2497.x, _2497.y), _2497.z) - (_2504 + 0.5f)) / (0.5f - _2504), 0.0f, 1.0f);
                _2512 = _2510 * _2510;
            }
            else
            {
                _2512 = 1.0f;
            }
            if (false || (_2512 < 0.001000000047497451305389404296875f))
            {
                _2399 = _2376;
                continue;
            }
            float3 _3205;
            if (_34_m6[_2412].w < 1.5f)
            {
                float3 _3204;
                do
                {
                    uint _2525 = asuint(_34_m6[_2421].w);
                    if ((_2525 == 16u) || ((_34_m6[_2421].z + _18_m91.z) < 0.5f))
                    {
                        _3204 = _2376;
                        break;
                    }
                    bool _2537 = (uint(_34_m6[_2412].w) & 1u) == 0u;
                    bool _2541 = (!_2537) && (_34_m6[_2418].z > 0.0f);
                    bool _2542 = _2525 == 4u;
                    float _2543 = float(_2537);
                    float _2551 = (0.5f + (0.5f * _34_m6[_2418].y)) - abs(_34_m6[_2418].x);
                    float _2552 = _34_m6[_2418].y - _2551;
                    float _2559 = abs(max((1.0f - abs(_2551)) - abs(_2552), 0.00048828125f));
                    float3 _2563 = normalize(float3(_2551, _2552, (_34_m6[_2418].x >= 0.0f) ? _2559 : (-_2559)));
                    float _2569 = lerp(_34_m6[_2430].w, max(2.0f * _34_m6[_2424].y, 0.100000001490116119384765625f), float(_2542));
                    float3 _2574 = _34_m6[_2415].xyz - _507;
                    float3 _2575 = -_2563;
                    float3 _2580 = lerp(_2574, _2575 * dot(_2574, _2575), (float(_2542 && (_34_m6[_2424].z > 0.5f)) * _2543).xxx);
                    float _2581 = dot(_2580, _2580);
                    float _2582 = rsqrt(_2581);
                    float3 _2583 = _2580 * _2582;
                    float3 _2616;
                    float _2617;
                    if (_2541)
                    {
                        float3 _2587 = (_2563 * _34_m6[_2418].z) * 0.5f;
                        float3 _2588 = _2580 - _2587;
                        float3 _2589 = _2580 + _2587;
                        float _2590 = length(_2588);
                        float _2591 = length(_2589);
                        float3 _2600 = normalize(cross(cross(_2563, _2583), _2563));
                        _2616 = _2600;
                        _2617 = ((1.0f / ((((_2590 * _2591) + dot(_2588, _2589)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2600, _2588) / _2590) + (dot(_2600, _2589) / _2591)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_34_m6[_2418].z * _2582, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2616 = _2583;
                        _2617 = 1.0f;
                    }
                    float _2639;
                    if (_2569 < 0.0f)
                    {
                        float _2627 = _2581 * (_34_m6[_2415].w * _34_m6[_2415].w);
                        float _2630 = clamp(1.0f - (_2627 * _2627), 0.0f, 1.0f);
                        _2639 = lerp(1.0f / (_2581 + 1.0f), _2617, float(_2541)) * (_2630 * _2630);
                    }
                    else
                    {
                        float3 _2633 = _2580 * _34_m6[_2415].w;
                        _2639 = _2617 * pow(1.0f - clamp(dot(_2633, _2633), 0.0f, 1.0f), _2569);
                    }
                    float _2644 = clamp((dot(_2616, _2575) - _34_m6[_2418].z) * _34_m6[_2418].w, 0.0f, 1.0f);
                    float _2647 = _2639 * lerp(1.0f, _2644 * _2644, _2543);
                    int _2649 = int(_34_m6[_2433].w);
                    float _2753;
                    if ((!_2541) && (_2649 >= 0))
                    {
                        uint _2655 = uint(_2649);
                        float2 _2746;
                        [branch]
                        if (_2543 != 0.0f)
                        {
                            float4 _2667 = mul(_57_m1[_2655], float4(_507.x, _564, _507.z, 1.0f));
                            _2746 = _57_m0[_2655].xy + (clamp(_2667.xy / _2667.w.xx, 0.0f.xx, 1.0f.xx) * _57_m0[_2655].zw);
                        }
                        else
                        {
                            float3 _2687 = mul(float4(-_2580, 0.0f), _57_m1[_2655]).xyz;
                            float3 _408 = _2687;
                            float3 _407 = _2687;
                            float3 _406 = abs(_2687);
                            uint _2696 = uint(int(_406.y > _406.x));
                            uint _2702 = (_406.z > _406[_2696]) ? 2u : _2696;
                            uint _2708 = (_2702 * 2u) + uint(_407[_2702] < 0.0f);
                            float _2712 = abs(_408[_2708 / 2u]);
                            float _2732 = 0.5f - (0.000244140625f / _57_m0[_2655].w);
                            _2746 = _57_m0[_2655].xy + (clamp(float2((float(_2708) + ((((_408[uint(_358[_2708].x)] * _359[_2708].x) / _2712) * _2732) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_408[uint(_358[_2708].y)] * _359[_2708].y) / _2712) * _2732)), 0.0f.xx, 1.0f.xx) * _57_m0[_2655].zw);
                        }
                        _2753 = _2647 * _55.SampleLevel(_23, _2746, 0.0f).x;
                    }
                    else
                    {
                        _2753 = _2647;
                    }
                    float _2754 = _2753 * _2512;
                    float3 _3203;
                    do
                    {
                        float3 _3202;
                        [branch]
                        if (_2754 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2542)
                            {
                                _3203 = lerp(_2376, _34_m6[_2412].xyz, (_2754 * (_34_m6[_2424].x * ((1.0f - _34_m6[_2424].w) + (smoothstep(-0.5f, 0.5f, dot(_520, _2616)) * _34_m6[_2424].w)))).xxx);
                                break;
                            }
                            float _2774 = dot(_1927, _2616);
                            float _2775 = clamp(_2774, 0.0f, 1.0f);
                            float _3078;
                            if (_2525 != 0u)
                            {
                                bool _2781 = _2537 || ((_2437 & 2u) != 0u);
                                int _2830;
                                if (_2781)
                                {
                                    _2830 = int(_34_m6[_2421].x);
                                }
                                else
                                {
                                    uint _2787 = asuint(_34_m6[_2418].w);
                                    uint _2789 = asuint(_34_m6[_2421].x);
                                    float3 _2790 = _507 - _34_m6[_2415].xyz;
                                    float3 _2791 = abs(_2790);
                                    float _2792 = _2791.x;
                                    float _2793 = _2791.y;
                                    float _2795 = _2791.z;
                                    int _2827;
                                    if ((_2792 > _2793) && (_2792 > _2795))
                                    {
                                        _2827 = int((_2790.x > 0.0f) ? (_2787 >> 24u) : ((_2787 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2826;
                                        if (_2793 > _2795)
                                        {
                                            _2826 = int((_2790.y > 0.0f) ? ((_2787 >> 8u) & 255u) : (_2787 & 255u));
                                        }
                                        else
                                        {
                                            _2826 = int((_2790.z > 0.0f) ? ((_2789 >> 8u) & 255u) : (_2789 & 255u));
                                        }
                                        _2827 = _2826;
                                    }
                                    _2830 = (_2827 < 80) ? _2827 : (-1);
                                }
                                bool _2831 = _2830 >= 0;
                                float _3077;
                                if (_2831)
                                {
                                    float3 _2835 = _507 - _34_m6[_2415].xyz;
                                    float4 _2855 = mul(_36_m10[_2830], float4((_507 - ((_2835 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2835, _2835)))) * _36_m11[_2830].x)) + (_520 * (_36_m11[_2830].y * 5.0f)), 1.0f));
                                    float _2856 = _2855.w;
                                    float3 _2859 = _2855.xyz / _2856.xxx;
                                    float2 _2860 = _2859.xy;
                                    float3 _2868 = _2859.xyz;
                                    bool3 _2869 = bool3(_2868.x <= 0.0f.xxx.x, _2868.y <= 0.0f.xxx.y, _2868.z <= 0.0f.xxx.z);
                                    bool3 _2870 = bool3(_2868.x >= 1.0f.xxx.x, _2868.y >= 1.0f.xxx.y, _2868.z >= 1.0f.xxx.z);
                                    float _2873 = _2859.z;
                                    float2 _2884 = ((_2860 * (_36_m12[_2830].zw - _36_m12[_2830].xy)) + _36_m12[_2830].xy).xy * _36_m13.zw;
                                    float2 _2886 = floor(_2884 + 0.5f.xx);
                                    float2 _2887 = _2884 - _2886;
                                    float _2889 = _2887.x + 0.5f;
                                    float _2890 = _2889 * _2889;
                                    float _2893 = 1.0f - _2887.x;
                                    float _2894 = min(_2887.x, 0.0f);
                                    float _2897 = _2887.x + 1.0f;
                                    float _2898 = max(_2887.x, 0.0f);
                                    float _2910 = _2887.y + 0.5f;
                                    float _2911 = _2910 * _2910;
                                    float _2914 = 1.0f - _2887.y;
                                    float _2915 = min(_2887.y, 0.0f);
                                    float _2918 = _2887.y + 1.0f;
                                    float _2919 = max(_2887.y, 0.0f);
                                    float3 _2931 = float3(0.1599999964237213134765625f * _2893, 0.1599999964237213134765625f * ((_2897 - (_2898 * _2898)) + 1.0f), _2890 * 0.07999999821186065673828125f);
                                    float3 _2932 = float3(0.1599999964237213134765625f * ((_2890 * 0.5f) - _2887.x), 0.1599999964237213134765625f * ((_2893 - (_2894 * _2894)) + 1.0f), 0.1599999964237213134765625f * _2897) + _2931;
                                    float3 _2934 = float3(0.1599999964237213134765625f * _2914, 0.1599999964237213134765625f * ((_2918 - (_2919 * _2919)) + 1.0f), _2911 * 0.07999999821186065673828125f);
                                    float3 _2935 = float3(0.1599999964237213134765625f * ((_2911 * 0.5f) - _2887.y), 0.1599999964237213134765625f * ((_2914 - (_2915 * _2915)) + 1.0f), 0.1599999964237213134765625f * _2918) + _2934;
                                    float3 _2941 = ((_2931 / _2932) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                                    float3 _2943 = ((_2934 / _2935) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                                    float2 _2945 = _2886 * _36_m13.xy;
                                    float _2946 = _2941.x;
                                    float _2947 = _2943.x;
                                    float _2950 = _2941.y;
                                    float _2953 = _2941.z;
                                    float _2956 = _2943.y;
                                    float _2963 = _2943.z;
                                    float _2970 = _2932.x;
                                    float _2971 = _2935.x;
                                    float _2973 = _2932.y;
                                    float _2975 = _2932.z;
                                    float _2977 = _2935.y;
                                    float _2981 = _2935.z;
                                    float _3039 = (((((((_2970 * _2971) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2946, _2947), _400).xy, _2873)) + ((_2973 * _2971) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2950, _2947), _400).xy, _2873))) + ((_2975 * _2971) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2953, _2947), _400).xy, _2873))) + ((_2970 * _2977) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2946, _2956), _400).xy, _2873))) + ((_2973 * _2977) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2950, _2956), _400).xy, _2873))) + ((_2975 * _2977) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2953, _2956), _400).xy, _2873))) + ((_2970 * _2981) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2946, _2963), _400).xy, _2873));
                                    float2 _3060 = min(_2860, 1.0f.xx - _2860);
                                    _3077 = _2831 ? lerp(1.0f, (any(bool3(_2869.x || _2870.x, _2869.y || _2870.y, _2869.z || _2870.z)) || ((asuint(_2873) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3039 + ((_2973 * _2981) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2950, _2963), _400).xy, _2873))) + ((_2975 * _2981) * _37.SampleCmpLevelZero(_25, float3(_2945 + float2(_2953, _2963), _400).xy, _2873))), _2781 ? min(_36_m11[_2830].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_2830].z - _2856) * 0.25f, min(_3060.x, _3060.y)))) : _36_m11[_2830].w) : 1.0f;
                                }
                                else
                                {
                                    _3077 = clamp(dot(_514, _2616) + 1.0f, 0.0f, 1.0f);
                                }
                                _3078 = _3077;
                            }
                            else
                            {
                                _3078 = 1.0f;
                            }
                            float _3158;
                            float3 _3159;
                            float _3160;
                            float3 _3161;
                            float3 _3162;
                            float _3163;
                            float _3164;
                            [branch]
                            if (_2525 == 0u)
                            {
                                float3 _3084 = _34_m6[_2412].xyz * _2754;
                                float3 _3097 = _2131.xyz;
                                _3158 = _2754;
                                _3159 = (_34_m6[_2412].xyz * ((1.0f - _34_m6[_2424].y) + ((1.0f / max(1.0f, max(max(_3084.x, _3084.y), _3084.z) * lerp(0.75f, 0.5f, _2271))) * _34_m6[_2424].y))) * lerp(0.25f * _34_m6[_2424].x, 1.0f, clamp(_2774 + 0.5f, 0.0f, 1.0f));
                                _3160 = _2775;
                                _3161 = _3097;
                                _3162 = _3097;
                                _3163 = 1.0f;
                                _3164 = 0.0f;
                            }
                            else
                            {
                                float _3152;
                                float _3153;
                                float3 _3154;
                                float3 _3155;
                                float _3156;
                                float _3157;
                                if (_2525 == 3u)
                                {
                                    _3152 = _2754 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _34_m6[_2424].x), lerp(0.89999997615814208984375f, 0.5f, _34_m6[_2424].x), _2237) * _3078);
                                    _3153 = clamp(dot(_1927, -normalize(cross(_532, cross(_532, _2616)))), 0.0f, 1.0f);
                                    _3154 = lerp(0.5f.xxx, _1934, _34_m6[_2424].y.xxx);
                                    _3155 = 0.0f.xxx;
                                    _3156 = 1.0f;
                                    _3157 = 0.0f;
                                }
                                else
                                {
                                    bool _3122 = _2525 == 1u;
                                    float _3146;
                                    float3 _3147;
                                    float _3148;
                                    float _3149;
                                    if (_3122)
                                    {
                                        _3146 = clamp(clamp(_2774 + _34_m6[_2424].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3078;
                                        _3147 = _1938 * _34_m6[_2424].y;
                                        _3148 = 1.0f;
                                        _3149 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3132 = _2525 == 2u;
                                        float _3144;
                                        if (_3132)
                                        {
                                            _3144 = smoothstep(_34_m6[_2424].x + 0.0500000007450580596923828125f, _34_m6[_2424].x - 0.0500000007450580596923828125f, _1928) * ((1.0f - _34_m6[_2424].z) + (step(0.5f, _1931) * _34_m6[_2424].z));
                                        }
                                        else
                                        {
                                            _3144 = 1.0f;
                                        }
                                        _3146 = _2775;
                                        _3147 = 0.0f.xxx;
                                        _3148 = _3144;
                                        _3149 = _3132 ? _34_m6[_2424].y : 0.0f;
                                    }
                                    bool3 _3150 = _3122.xxx;
                                    _3152 = _2754;
                                    _3153 = _3146;
                                    _3154 = float3(_3150.x ? _1934.x : 0.0f.xxx.x, _3150.y ? _1934.y : 0.0f.xxx.y, _3150.z ? _1934.z : 0.0f.xxx.z);
                                    _3155 = _3147;
                                    _3156 = _3148;
                                    _3157 = _3149;
                                }
                                _3158 = _3152;
                                _3159 = _34_m6[_2412].xyz;
                                _3160 = _3153;
                                _3161 = _3154;
                                _3162 = _3155;
                                _3163 = _3156;
                                _3164 = _3157;
                            }
                            float3 _3192;
                            [branch]
                            if (_2525 != 3u)
                            {
                                float _3169 = lerp(_1940, 0.00999999977648258209228515625f, _3164);
                                float _3172 = dot(_1794, normalize(_2616 + _437));
                                float _3173 = _3169 * _3169;
                                float _3177 = (((_3172 * _3173) - _3172) * _3172) + 1.0f;
                                float _3178 = _3177 * _3177;
                                _3192 = ((_1937 * clamp((((_3173 != _3178) ? (_3173 / _3178) : 1.0f) * (0.5f / ((_2168 + (_3169 * _2170)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3163) * _34_m6[_2433].z;
                            }
                            else
                            {
                                _3192 = 0.0f.xxx;
                            }
                            float3 _3195 = _3159 * _3158;
                            _3202 = _2376 + (((_3195 * lerp(_3162, _3161, _3160.xxx)) * _2187) + ((_3195 * _3192) * _3160));
                        }
                        else
                        {
                            _3202 = _2376;
                        }
                        _3203 = _3202;
                        break;
                    } while(false);
                    _3204 = _3203;
                    break;
                } while(false);
                _3205 = _3204;
            }
            else
            {
                _3205 = _2376;
            }
            _2399 = _3205;
        }
    }
    float3 _3245;
    [branch]
    if (_47_m12 > 0.5f)
    {
        _3245 = lerp(lerp(0.5f.xxx, lerp(dot(_2375, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2375, _47_m14.xxx), _47_m15.xxx) * _47_m13, _47_m26.xyz, _47_m26.w.xxx) + ((_47_m27.xyz * smoothstep(1.0f - _47_m16, 1.0f, 1.0f - clamp(_2235, 0.0f, 1.0f))) * _47_m17);
    }
    else
    {
        _3245 = _2375;
    }
    float4 _3252 = float4(_3245 * _18_m20.y, _482);
    _3252.w = (_47_m8 == 1.0f) ? _482 : 1.0f;
    float4 _3639;
    [branch]
    if (_18_m91.w < 0.5f)
    {
        float _3276 = _564 * _18_m46.w;
        float _3281 = max(0.00999999977648258209228515625f, _3276 + _18_m47.w);
        float3 _3295 = exp(_18_m45.xyz * ((-max(0.0f, (_438 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3281)) / _3281) * exp(_3276 + _18_m48.w))));
        float _3298 = dot(_2328, _18_m44.xyz);
        float _3304 = _18_m45.w * _18_m45.w;
        float _3308 = (1.0f + _3304) - ((2.0f * _18_m45.w) * _3298);
        float3 _3631;
        float _3632;
        if (_18_m55.z > 0.0f)
        {
            uint3 _3353 = (uint3(int3(_2013, _2014, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3354 = _3353.y;
            uint _3355 = _3353.z;
            uint _3358 = _3353.x + (_3354 * _3355);
            uint _3360 = _3354 + (_3355 * _3358);
            uint _3362 = _3355 + (_3358 * _3360);
            uint _3364 = _3358 + (_3360 * _3362);
            float _3389 = dot(_2328, -_16_m0[2].xyz);
            float3 _3396 = _507 - _16_m11.xyz;
            float _3398 = (_18_m55.w * ((_3389 > 5.9604644775390625e-08f) ? (1.0f / _3389) : 0.0f)) * (1.0f / _438);
            float _3399 = _3396.y;
            float _3400 = _3398 * _3399;
            float _3402 = _16_m11.y + _3400;
            float _3403 = _3399 - _3400;
            float _3405 = (1.0f - _3398) * _438;
            float _3419 = max(-127.0f, _18_m49.z * _3403);
            float _3443 = max(-127.0f, _18_m52.x * _3403);
            float _3454 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3402 - _18_m49.x)))) * ((abs(_3419) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3419)) / _3419) : (0.693147182464599609375f - (0.2402265071868896484375f * _3419)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3402 - _18_m52.z)))) * ((abs(_3443) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3443)) / _3443) : (0.693147182464599609375f - (0.2402265071868896484375f * _3443))));
            float _3476 = clamp((_438 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3479 = clamp((max(clamp(exp2(-(_3454 * _3405)), 0.0f, 1.0f), _18_m51.w) + clamp((_438 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3476, 0.0f, 1.0f);
            float4 _3519 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _60.SampleLevel(_23, float3((_2350 + ((((float3(uint3(_3364, _3360 + (_3362 * _3364), _404) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_418 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_418 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3631 = _3519.xyz + (((_18_m51.xyz * (1.0f - _3479)) + (((_18_m54.xyz * pow(clamp(dot(_437, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3454 * max(_3405 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3476))) * _3519.w);
            _3632 = _3519.w * _3479;
        }
        else
        {
            float3 _3525 = _507 - _16_m11.xyz;
            float _3527 = _3525.y;
            float _3541 = max(-127.0f, _18_m49.z * _3527);
            float _3565 = max(-127.0f, _18_m52.x * _3527);
            float _3576 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3541) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3541)) / _3541) : (0.693147182464599609375f - (0.2402265071868896484375f * _3541)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3565) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3565)) / _3565) : (0.693147182464599609375f - (0.2402265071868896484375f * _3565))));
            float _3598 = clamp((_438 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3601 = clamp((max(clamp(exp2(-(_3576 * _438)), 0.0f, 1.0f), _18_m51.w) + clamp((_438 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3598, 0.0f, 1.0f);
            _3631 = (_18_m51.xyz * (1.0f - _3601)) + (((_18_m54.xyz * pow(clamp(dot(_437, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3576 * max(_438 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3598));
            _3632 = _3601;
        }
        float3 _3637 = (_3252.xyz * (_3295 * _3632)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3298 * _3298)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3304) / max((12.56637096405029296875f * _3308) * sqrt(_3308), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3295)) * _3632) + _3631);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3637 = (_3637 * 0.65f) + (_3252.xyz * 0.35f);

        }

        // RenoDX code end
        _3639 = float4(_3637.x, _3637.y, _3637.z, _3252.w);
    }
    else
    {
        _3639 = _3252;
    }
    _13 = _3639;
    _14 = _1978;
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

// Endfield 1.5 Vulkan shader 0x2F7515B0, migrated from 1.4.4 shader 0x8F3E9D57.
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

static float _398 = (float)0;
static float3 _399 = (float3)0;
static float _401 = (float)0;
static uint _402 = (uint)0;

static const int2 _356[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _357[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(2, 1)]]
cbuffer _46_47 : register(b2)
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
    float4 _47_m30 : packoffset(c12);
    float _47_m31 : packoffset(c13);
    float _47_m32 : packoffset(c13.y);
    float _47_m33 : packoffset(c13.z);
    float _47_m34 : packoffset(c13.w);
    float _47_m35 : packoffset(c14);
    float _47_m36 : packoffset(c14.y);
    float _47_m37 : packoffset(c14.z);
    float _47_m38 : packoffset(c14.w);
    float4 _47_m39 : packoffset(c15);
    float4 _47_m40 : packoffset(c16);
    float4 _47_m41 : packoffset(c17);
    float4 _47_m42 : packoffset(c18);
    float4 _47_m43 : packoffset(c19);
    float4 _47_m44 : packoffset(c20);
    float _47_m45 : packoffset(c21);
    float _47_m46 : packoffset(c21.y);
    float _47_m47 : packoffset(c21.z);
    float _47_m48 : packoffset(c21.w);
    float _47_m49 : packoffset(c22);
    float _47_m50 : packoffset(c22.y);
    float _47_m51 : packoffset(c22.z);
    float _47_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _55_56 : register(b50)
{
    float4 _56_m0[32] : packoffset(c0);
    column_major float4x4 _56_m1[32] : packoffset(c32);
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
[[vk::binding(3, 1)]] Texture2D<float4> _51 : register(t3);
[[vk::binding(45, 0)]] TextureCube<float4> _53 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _54 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _59 : register(t36);

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
    float _416 = 1.0f / gl_FragCoord.w;
    float3 _431 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
    float _432 = dot(_431, _431);
    float _434 = rsqrt(max(_432, 9.9999999392252902907785028219223e-09f));
    float3 _435 = _431 * _434;
    float _436 = _432 * _434;
    uint _439 = asuint(_21_m0[_11]._m2.x);
    bool _444 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
    float4 _457;
    float4 _458;
    if (_444)
    {
        _457 = asfloat(_30_Load4((_439 + 2u) * 16 + 0));
        _458 = asfloat(_30_Load4(_439 * 16 + 0));
    }
    else
    {
        _457 = _21_m0[_11]._m0[2];
        _458 = _21_m0[_11]._m0[0];
    }
    float4 _464 = _51.SampleBias(_24, _3, _18_m16);
    float3 _469 = _464.xyz * _47_m24.xyz;
    float _476 = 1.0f - _47_m0;
    float _480 = _464.w * _47_m24.w;
    float3 _485 = _469 * _47_m18;
    float3 _489 = lerp(dot(_485, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _485, _47_m19.xxx);
    float3 _493 = _4 + _16_m11.xyz;
    float3 _497 = _493 - float3(_458.w, _401, _457.w);
    _497.y = 6.103515625e-05f;
    float3 _500 = normalize(_497);
    float3 _506 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _47_m5)));
    uint2 _508 = uint2(gl_FragCoord.xy);
    float3 _518 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _527 = asuint((_18_m89.x > 0.5f) ? _18_m89.y : _21_m0[_11]._m7.x);
    float4 _540 = float4(float(_527 & 255u), float((_527 >> 8u) & 255u), float((_527 >> 16u) & 255u), float((_527 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _541 = _540.x;
    float _544 = _540.w;
    float _550 = _493.y;
    float _553 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m89.w, _18_m89.x) - _550) * _540.y;
    float _554 = max(_540.z, _553);
    float _563 = lerp(_18_m22.x, 1.0f, _18_m91.w) * _18_m20.x;
    float4 _1057;
    float3 _1058;
    float3 _1059;
    float _1060;
    if (_18_m80.y < 0.5f)
    {
        float3 _578 = _493 - (_18_m105.xyz + (_518 * (-_18_m107.w)));
        float _592 = max(clamp((max(abs(_578.x), abs(_578.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_578.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _894;
        float4 _895;
        float4 _896;
        float _897;
        float _898;
        if ((_18_m105.w != 0.0f) && (_592 < 1.0f))
        {
            float3 _605 = _493 - (_18_m105.xyz + (_518 * (-_18_m107.y)));
            float _619 = max(clamp((max(abs(_605.x), abs(_605.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_605.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _695;
            float4 _696;
            float4 _697;
            float4 _698;
            if (_619 < 1.0f)
            {
                float3 _628 = ((_493 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _630 = _628 - floor(_628);
                float4 _634 = _40.SampleLevel(_24, _630, 0.0f);
                float _635 = 1.0f - _619;
                float _639 = _18_m106.y * 0.5f;
                float _644 = _630.x;
                float _645 = clamp(_630.y, _639, 1.0f - _639) * 0.3333333432674407958984375f;
                float _646 = _630.z;
                float4 _649 = _41.SampleLevel(_23, float3(_644, _645, _646), 0.0f);
                float _665 = _634.x;
                float _675 = _634.y;
                float _685 = _634.z;
                _695 = _592 + (_649.w * _635);
                _696 = float4(((_41.SampleLevel(_23, float3(_644, _645 + 0.666666686534881591796875f, _646), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _685, _685) * _635;
                _697 = float4(((_41.SampleLevel(_23, float3(_644, _645 + 0.3333333432674407958984375f, _646), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _675, _675) * _635;
                _698 = float4(((_649.xyz * 4.0f) - 2.0f.xxx) * _665, _665) * _635;
            }
            else
            {
                _695 = _592;
                _696 = 0.0f.xxxx;
                _697 = 0.0f.xxxx;
                _698 = 0.0f.xxxx;
            }
            float3 _704 = _493 - (_18_m105.xyz + (_518 * (-_18_m107.z)));
            float _718 = max(clamp((max(abs(_704.x), abs(_704.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_704.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _798;
            float4 _799;
            float4 _800;
            float4 _801;
            if (_718 < 1.0f)
            {
                float3 _727 = ((_493 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _729 = _727 - floor(_727);
                float4 _733 = _42.SampleLevel(_24, _729, 0.0f);
                float _735 = _619 * (1.0f - _718);
                float _739 = _18_m106.y * 0.5f;
                float _744 = _729.x;
                float _745 = clamp(_729.y, _739, 1.0f - _739) * 0.3333333432674407958984375f;
                float _746 = _729.z;
                float4 _749 = _43.SampleLevel(_23, float3(_744, _745, _746), 0.0f);
                float _765 = _733.x;
                float _776 = _733.y;
                float _787 = _733.z;
                _798 = _695 + (_749.w * _735);
                _799 = _696 + (float4(((_43.SampleLevel(_23, float3(_744, _745 + 0.666666686534881591796875f, _746), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _787, _787) * _735);
                _800 = _697 + (float4(((_43.SampleLevel(_23, float3(_744, _745 + 0.3333333432674407958984375f, _746), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _776, _776) * _735);
                _801 = _698 + (float4(((_749.xyz * 4.0f) - 2.0f.xxx) * _765, _765) * _735);
            }
            else
            {
                _798 = _695;
                _799 = _696;
                _800 = _697;
                _801 = _698;
            }
            float4 _884;
            float4 _885;
            float4 _886;
            float _887;
            if (_718 > 0.0f)
            {
                float3 _810 = ((_493 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _813 = _18_m106.xyz * 0.5f;
                float3 _815 = clamp(_810 - floor(_810), _813, 1.0f.xxx - _813);
                float4 _819 = _44.SampleLevel(_24, _815, 0.0f);
                float _821 = _718 * (1.0f - _592);
                float _825 = _18_m106.y * 0.5f;
                float _830 = _815.x;
                float _831 = clamp(_815.y, _825, 1.0f - _825) * 0.3333333432674407958984375f;
                float _832 = _815.z;
                float4 _835 = _45.SampleLevel(_23, float3(_830, _831, _832), 0.0f);
                float _851 = _819.x;
                float _862 = _819.y;
                float _873 = _819.z;
                _884 = _799 + (float4(((_45.SampleLevel(_23, float3(_830, _831 + 0.666666686534881591796875f, _832), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _873, _873) * _821);
                _885 = _800 + (float4(((_45.SampleLevel(_23, float3(_830, _831 + 0.3333333432674407958984375f, _832), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862, _862) * _821);
                _886 = _801 + (float4(((_835.xyz * 4.0f) - 2.0f.xxx) * _851, _851) * _821);
                _887 = _798 + (_835.w * _821);
            }
            else
            {
                _884 = _799;
                _885 = _800;
                _886 = _801;
                _887 = _798;
            }
            float _890 = clamp((_887 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _894 = _884;
            _895 = _885;
            _896 = _886;
            _897 = _890 - _592;
            _898 = (_890 + _592) * 0.5f;
        }
        else
        {
            _894 = 0.0f.xxxx;
            _895 = 0.0f.xxxx;
            _896 = 0.0f.xxxx;
            _897 = 0.0f;
            _898 = 1.0f;
        }
        float4 _918 = _896 + float4(_18_m108.x * _898, (_18_m108.y * _898) + ((_18_m108.w * _897) * 0.5f), _18_m108.z * _898, (_18_m108.w * _898) + ((_18_m108.y * _897) * 0.375f));
        float4 _938 = _895 + float4(_18_m109.x * _898, (_18_m109.y * _898) + ((_18_m109.w * _897) * 0.5f), _18_m109.z * _898, (_18_m109.w * _898) + ((_18_m109.y * _897) * 0.375f));
        float4 _958 = _894 + float4(_18_m110.x * _898, (_18_m110.y * _898) + ((_18_m110.w * _897) * 0.5f), _18_m110.z * _898, (_18_m110.w * _898) + ((_18_m110.y * _897) * 0.375f));
        float4 _962 = float4(_506, 1.0f);
        float3 _968 = max(float3(dot(_918, _962), dot(_938, _962), dot(_958, _962)), 0.0f.xxx) * _563;
        float3 _976 = ((_918.xyz * 0.2125999927520751953125f) + (_938.xyz * 0.715200006961822509765625f)) + (_958.xyz * 0.072200000286102294921875f);
        float3 _980 = _976 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_976, _976)));
        float _982 = abs(_980.y);
        float3 _983 = _980;
        _983.y = _982;
        float4 _984 = float4(_983.x, _983.y, _983.z, 0.0f.xxxx.w);
        _984.w = 1.0f;
        float4 _988 = float4(_980.x, _982, _980.z, 1.0f);
        float3 _993 = max(float3(dot(_918, _988), dot(_938, _988), dot(_958, _988)), 0.0f.xxx);
        float _1001 = _968.z;
        float _1002 = _968.y;
        float4 _1007 = lerp(float4(_1001, _1002, -1.0f, 0.666666686534881591796875f), float4(_1002, _1001, 0.0f, -0.3333333432674407958984375f), step(_1001, _1002).xxxx);
        float _1008 = _968.x;
        float _1009 = _1007.x;
        float4 _1017 = lerp(float4(_1009, _1007.yw, _1008), float4(_1008, _1007.yz, _1009), step(_1009, _1008).xxxx);
        float _1018 = _1017.x;
        float _1019 = _1017.w;
        float _1020 = _1017.y;
        float _1022 = _1018 - min(_1019, _1020);
        float _1032 = frac(abs(_1017.z + ((_1019 - _1020) / ((6.0f * _1022) + 9.9999997473787516355514526367188e-05f))));
        float _1039 = min(_1022 / (_1018 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1032 - 0.5f))) * clamp(_1018, 0.0f, 1.0f));
        float _1041 = 2.0f / (2.0f - _1039);
        _1057 = _984;
        _1058 = _968;
        _1059 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1032, _1039, _1041).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1039.xxx) * _1041;
        _1060 = max(max(max(_993.x, _993.y), _993.z), 0.0f) * _563;
    }
    else
    {
        _1057 = 0.0f.xxxx;
        _1058 = 1.0f.xxx;
        _1059 = _18_m81.xyz;
        _1060 = _563;
    }
    float3 _1780;
    float _1781;
    float _1782;
    float _1783;
    float3 _1784;
    float3 _1785;
    [branch]
    if ((clamp(_541 + _554, 0.0f, 1.0f) - _47_m20) > 0.00999999977648258209228515625f)
    {
        float _1088 = 1.0f - _47_m2;
        float _1091 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_469 * _1088, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1094 = _444.xxx;
        float3 _1096 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1100 = float3(_1094.x ? _1096.x : _9.x, _1094.y ? _1096.y : _9.y, _1094.z ? _1096.z : _9.z) * _18_m89.z;
        float3 _1102 = float3(_1094.x ? _8.xzy.x : _8.x, _1094.y ? _8.xzy.y : _8.y, _1094.z ? _8.xzy.z : _8.z);
        float3 _1104 = abs(_1102) - 0.20000000298023223876953125f.xxx;
        float3 _1107 = max((_1104 * _1104) * _1104, 6.103515625e-05f.xxx);
        float3 _1110 = _1107 / dot(_1107, 1.0f.xxx).xxx;
        float2 _1118 = _1100.xy;
        float2 _1123 = _1100.zy;
        float4 _1133 = ((_48.SampleBias(_24, _1100.xz, _18_m16) * _1110.y) + (_48.SampleBias(_24, _1118, _18_m16) * _1110.z)) + (_48.SampleBias(_24, _1123, _18_m16) * _1110.x);
        float _1134 = _1133.w;
        float _1136 = 1.10000002384185791015625f - _1134;
        float _1145 = max(smoothstep(0.800000011920928955078125f - _1134, _1136, clamp((_541 * _1088) + (_506.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1134, _1136, clamp(_553 * _1088, 0.0f, 1.0f)));
        float _1152 = smoothstep(0.5f, 0.75f, _47_m2);
        float _1154 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _476) * _1091;
        float _1157 = clamp(_1154 + _1152, 0.0f, 1.0f) * max(_541, _554);
        bool _1161 = !((step(_541, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _554)) != 0.0f);
        bool2 _1162 = _1161.xx;
        float2 _1164 = (1.0f - _554).xx;
        float2 _1165 = float2(_1162.x ? float2(3.0f, 4.345600128173828125f).x : _1164.x, _1162.y ? float2(3.0f, 4.345600128173828125f).y : _1164.y);
        float _1166 = 1.0f - _1157;
        float _1169 = _1161 ? _18_m10.x : 1.0f;
        float _1171 = _1169 * _1165.x;
        float _1173 = _1169 * _1165.y;
        float3 _1174 = _1100 * 20.0f;
        float3 _1175 = _1100 * 34.345600128173828125f;
        float3 _1177 = pow(max(_1104, 0.0f.xxx), 10.0f.xxx);
        float3 _1181 = _1177 / max(dot(_1177, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1183 = _1181.y;
        float2 _1184 = _1174.xz * 1.0f;
        float2 _1185 = floor(_1184);
        float2 _1188 = frac(_1185 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1192 = _1188 + dot(_1188, _1188 + 34.345001220703125f.xx).xx;
        float _1193 = _1192.x;
        float _1194 = _1192.y;
        float2 _1198 = frac(float2(_1193 * _1194, _1193 + _1194));
        float2 _1201 = frac((_1185 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1205 = _1201 + dot(_1201, _1201 + 34.345001220703125f.xx).xx;
        float _1206 = _1205.x;
        float _1207 = _1205.y;
        float2 _1211 = frac(float2(_1206 * _1207, _1206 + _1207));
        float _1217 = _1198.x;
        float _1219 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1217);
        float2 _1220 = ((_1184 - _1185) + ((((_1211 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1223 = _1220.y;
        float2 _1227 = float2(_1220.x * 1.25f, _1223 * ((_1223 < 0.0f) ? 1.25f : 0.75f));
        float _1230 = _1171 + _1217;
        float _1234 = _1161 ? frac(_1230) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1230, 0.0f, 1.0f));
        float _1246 = _1198.y;
        float _1249 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1234) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1234)) * step(0.001000000047497451305389404296875f, smoothstep(_1219, 0.0f, length(_1227)))) * step(_1166, _1246 - 0.100000001490116119384765625f);
        float _1252 = _1249 * _1183;
        float _1260 = _1181.z;
        float2 _1261 = _1174.xy * 1.0f;
        float2 _1262 = floor(_1261);
        float2 _1265 = frac(_1262 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1269 = _1265 + dot(_1265, _1265 + 34.345001220703125f.xx).xx;
        float _1270 = _1269.x;
        float _1271 = _1269.y;
        float2 _1275 = frac(float2(_1270 * _1271, _1270 + _1271));
        float2 _1278 = frac((_1262 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1282 = _1278 + dot(_1278, _1278 + 34.345001220703125f.xx).xx;
        float _1283 = _1282.x;
        float _1284 = _1282.y;
        float2 _1288 = frac(float2(_1283 * _1284, _1283 + _1284));
        float _1294 = _1275.x;
        float _1296 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1294);
        float2 _1297 = ((_1261 - _1262) + ((((_1288 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1300 = _1297.y;
        float2 _1304 = float2(_1297.x * 1.25f, _1300 * ((_1300 < 0.0f) ? 1.25f : 0.75f));
        float _1307 = _1171 + _1294;
        float _1311 = _1161 ? frac(_1307) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1307, 0.0f, 1.0f));
        float _1323 = _1275.y;
        float _1326 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1311) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1311)) * step(0.001000000047497451305389404296875f, smoothstep(_1296, 0.0f, length(_1304)))) * step(_1166, _1323 - 0.100000001490116119384765625f);
        float _1329 = _1326 * _1260;
        float _1337 = _1181.x;
        float2 _1338 = _1174.zy * 1.0f;
        float2 _1339 = floor(_1338);
        float2 _1342 = frac(_1339 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1346 = _1342 + dot(_1342, _1342 + 34.345001220703125f.xx).xx;
        float _1347 = _1346.x;
        float _1348 = _1346.y;
        float2 _1352 = frac(float2(_1347 * _1348, _1347 + _1348));
        float2 _1355 = frac((_1339 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1359 = _1355 + dot(_1355, _1355 + 34.345001220703125f.xx).xx;
        float _1360 = _1359.x;
        float _1361 = _1359.y;
        float2 _1365 = frac(float2(_1360 * _1361, _1360 + _1361));
        float _1371 = _1352.x;
        float _1373 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1371);
        float2 _1374 = ((_1338 - _1339) + ((((_1365 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1377 = _1374.y;
        float2 _1381 = float2(_1374.x * 1.25f, _1377 * ((_1377 < 0.0f) ? 1.25f : 0.75f));
        float _1384 = _1171 + _1371;
        float _1388 = _1161 ? frac(_1384) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1384, 0.0f, 1.0f));
        float _1400 = _1352.y;
        float _1403 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1388) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1388)) * step(0.001000000047497451305389404296875f, smoothstep(_1373, 0.0f, length(_1381)))) * step(_1166, _1400 - 0.100000001490116119384765625f);
        float _1406 = _1403 * _1337;
        float2 _1419 = (float4(((clamp(_1227 / _1219.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1211.x)) * _1249) * _1183, _1252, _1246).xy + float4(((clamp(_1304 / _1296.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1288.x)) * _1326) * _1260, _1329, _1323).xy) + float4(((clamp(_1381 / _1373.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1365.x)) * _1403) * _1337, _1406, _1400).xy;
        float _1421 = max(_1406, max(_1252, _1329));
        float4 _1424 = float4(_1419, _1421, 0.0f);
        float2 _1426 = _1175.xz * 1.0f;
        float2 _1427 = floor(_1426);
        float2 _1430 = frac(_1427 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1434 = _1430 + dot(_1430, _1430 + 34.345001220703125f.xx).xx;
        float _1435 = _1434.x;
        float _1436 = _1434.y;
        float2 _1440 = frac(float2(_1435 * _1436, _1435 + _1436));
        float2 _1443 = frac((_1427 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1447 = _1443 + dot(_1443, _1443 + 34.345001220703125f.xx).xx;
        float _1448 = _1447.x;
        float _1449 = _1447.y;
        float2 _1453 = frac(float2(_1448 * _1449, _1448 + _1449));
        float _1459 = _1440.x;
        float _1461 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1459);
        float2 _1462 = ((_1426 - _1427) + ((((_1453 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1465 = _1462.y;
        float2 _1469 = float2(_1462.x * 1.25f, _1465 * ((_1465 < 0.0f) ? 1.25f : 0.75f));
        float _1472 = _1173 + _1459;
        float _1476 = _1161 ? frac(_1472) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1472, 0.0f, 1.0f));
        float _1488 = _1440.y;
        float _1491 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1476) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1476)) * step(0.001000000047497451305389404296875f, smoothstep(_1461, 0.0f, length(_1469)))) * step(_1166, _1488 - 0.100000001490116119384765625f);
        float _1494 = _1491 * _1183;
        float2 _1499 = _1175.xy * 1.0f;
        float2 _1500 = floor(_1499);
        float2 _1503 = frac(_1500 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1507 = _1503 + dot(_1503, _1503 + 34.345001220703125f.xx).xx;
        float _1508 = _1507.x;
        float _1509 = _1507.y;
        float2 _1513 = frac(float2(_1508 * _1509, _1508 + _1509));
        float2 _1516 = frac((_1500 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1520 = _1516 + dot(_1516, _1516 + 34.345001220703125f.xx).xx;
        float _1521 = _1520.x;
        float _1522 = _1520.y;
        float2 _1526 = frac(float2(_1521 * _1522, _1521 + _1522));
        float _1532 = _1513.x;
        float _1534 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1532);
        float2 _1535 = ((_1499 - _1500) + ((((_1526 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1538 = _1535.y;
        float2 _1542 = float2(_1535.x * 1.25f, _1538 * ((_1538 < 0.0f) ? 1.25f : 0.75f));
        float _1545 = _1173 + _1532;
        float _1549 = _1161 ? frac(_1545) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1545, 0.0f, 1.0f));
        float _1561 = _1513.y;
        float _1564 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1549) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1549)) * step(0.001000000047497451305389404296875f, smoothstep(_1534, 0.0f, length(_1542)))) * step(_1166, _1561 - 0.100000001490116119384765625f);
        float _1567 = _1564 * _1260;
        float2 _1572 = _1175.zy * 1.0f;
        float2 _1573 = floor(_1572);
        float2 _1576 = frac(_1573 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1580 = _1576 + dot(_1576, _1576 + 34.345001220703125f.xx).xx;
        float _1581 = _1580.x;
        float _1582 = _1580.y;
        float2 _1586 = frac(float2(_1581 * _1582, _1581 + _1582));
        float2 _1589 = frac((_1573 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1593 = _1589 + dot(_1589, _1589 + 34.345001220703125f.xx).xx;
        float _1594 = _1593.x;
        float _1595 = _1593.y;
        float2 _1599 = frac(float2(_1594 * _1595, _1594 + _1595));
        float _1605 = _1586.x;
        float _1607 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1605);
        float2 _1608 = ((_1572 - _1573) + ((((_1599 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1611 = _1608.y;
        float2 _1615 = float2(_1608.x * 1.25f, _1611 * ((_1611 < 0.0f) ? 1.25f : 0.75f));
        float _1618 = _1173 + _1605;
        float _1622 = _1161 ? frac(_1618) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1618, 0.0f, 1.0f));
        float _1634 = _1586.y;
        float _1637 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1622) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1622)) * step(0.001000000047497451305389404296875f, smoothstep(_1607, 0.0f, length(_1615)))) * step(_1166, _1634 - 0.100000001490116119384765625f);
        float _1640 = _1637 * _1337;
        float2 _1648 = (float4(((clamp(_1469 / _1461.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1453.x)) * _1491) * _1183, _1494, _1488).xy + float4(((clamp(_1542 / _1534.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1526.x)) * _1564) * _1260, _1567, _1561).xy) + float4(((clamp(_1615 / _1607.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1599.x)) * _1637) * _1337, _1640, _1634).xy;
        float4 _1653 = float4(_1648, max(_1640, max(_1494, _1567)), 0.0f);
        float _1655 = step(max(float2(_1219 * _1249, _401) * _1183, max(float2(_1296 * _1326, _401) * _1260, float2(_1373 * _1403, _401) * _1337)).x, 0.00999999977648258209228515625f);
        float2 _1659 = _1424.xy + (_1653.xy * _1655);
        float3 _1668 = float3((_1133.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1659.x, _1659.y, 0.0f.xxx.z);
        float2 _1672 = float2(0.0f, (_18_m10.x * _18_m89.z) * 0.75f);
        float3 _1675 = float3(_1102.x, 0.0f, _1102.z);
        float3 _1681 = abs(_1675 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1675, _1675)))) - 0.20000000298023223876953125f.xxx;
        float3 _1684 = max((_1681 * _1681) * _1681, 6.103515625e-05f.xxx);
        float3 _1687 = _1684 / dot(_1684, 1.0f.xxx).xxx;
        float _1706 = _1687.z;
        float _1708 = _1687.x;
        float4 _1710 = (_49.SampleBias(_24, _1118, _18_m16) * _1706) + (_49.SampleBias(_24, _1123, _18_m16) * _1708);
        float2 _1722 = _1668.xy + ((((_1710.xy * 2.0f) - 1.0f.xx) * ((_49.SampleBias(_24, _1118 + _1672, _18_m16).w * _1706) + (_49.SampleBias(_24, _1123 + _1672, _18_m16).w * _1708))) * _1157);
        float3 _1723 = float3(_1722.x, _1722.y, _1668.z);
        float _1724 = _1710.z;
        float _1729 = max(max(max(_1424.zw * step(0.00999999977648258209228515625f, _1421), _1653.zw * _1655).x, step(1.0099999904632568359375f - _1157, _1133.z)), smoothstep(1.0f - _1724, 1.10000002384185791015625f - _1724, _1157) * _1157);
        float2 _1730 = _1722.xy;
        _1723.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1730, _1730), 0.0f, 1.0f)));
        float3 _1737 = normalize(_1723);
        float3 _1738 = cross(_506, float3(0.0f, 1.0f, 0.0f));
        bool3 _1741 = (dot(_1738, _1738) > 6.103515625e-05f).xxx;
        float3 _1742 = normalize(_1738);
        float3 _1743 = float3(_1741.x ? _1742.x : float3(1.0f, 0.0f, 0.0f).x, _1741.y ? _1742.y : float3(1.0f, 0.0f, 0.0f).y, _1741.z ? _1742.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1754 = min(_476, 0.0500000007450580596923828125f);
        float _1755 = lerp(_476, _1754, _1729);
        float _1772 = lerp(1.0f, 0.5f, (_1145 * (1.0f - _1091)) * (1.0f - _1154));
        _1780 = normalize(lerp(_506, normalize(((_1743 * _1737.x) + (cross(_1743, _506) * _1737.y)) + (_506 * _1737.z)), _1729.xxx));
        _1781 = _1729;
        _1782 = _1754;
        _1783 = max(_1755 - ((0.20000000298023223876953125f * _1091) * _1145), min(0.20000000298023223876953125f, _1755));
        _1784 = _489 * _1772;
        _1785 = lerp(_469, _469 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_469, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1729 * _1152).xxx) * _1772;
    }
    else
    {
        _1780 = _506;
        _1781 = 0.0f;
        _1782 = 0.00999999977648258209228515625f;
        _1783 = _476;
        _1784 = _489;
        _1785 = _469;
    }
    float3 _1913;
    float _1914;
    float3 _1915;
    float3 _1916;
    float _1917;
    [branch]
    if ((_544 - _47_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1790 = _444.xxx;
        float3 _1792 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1793 = float3(_1790.x ? _1792.x : _9.x, _1790.y ? _1792.y : _9.y, _1790.z ? _1792.z : _9.z);
        float3 _1796 = _1793 * _18_m89.z;
        float3 _1798 = float3(_1790.x ? _8.xzy.x : _8.x, _1790.y ? _8.xzy.y : _8.y, _1790.z ? _8.xzy.z : _8.z);
        float3 _1800 = abs(_1798) - 0.20000000298023223876953125f.xxx;
        float3 _1803 = max((_1800 * _1800) * _1800, 6.103515625e-05f.xxx);
        float3 _1806 = _1803 / dot(_1803, 1.0f.xxx).xxx;
        float4 _1829 = ((_50.SampleBias(_24, _1796.xz, _18_m16) * _1806.y) + (_50.SampleBias(_24, _1796.xy, _18_m16) * _1806.z)) + (_50.SampleBias(_24, _1796.zy, _18_m16) * _1806.x);
        float _1830 = _1798.y;
        float _1837 = clamp(_544 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1793.y) * clamp(_544 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1843 = _1837 * (2.0f - _1837);
        float _1848 = smoothstep(2.0f - _1843, 2.349999904632568359375f - _1843, ((_1830 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1829.z) * float(gl_FrontFacing);
        float _1860 = lerp(1.0f, 0.5f, ((_1837 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1785 * (1.0f - _47_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1829.w) * ((_1830 * 0.25f) + 0.75f));
        float3 _1862 = _1848.xxx;
        float2 _1868 = (_1829.xy * 2.0f) - 1.0f.xx;
        float3 _1869 = float3(_1868.x, _1868.y, _399.z);
        float2 _1870 = _1868.xy;
        _1869.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1870, _1870), 0.0f, 1.0f)));
        float2 _1878 = _1869.xy * 2.0f;
        float3 _1880 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1878.x, _1878.y, _1869.z), _1862);
        float3 _1884 = _1880 * rsqrt(max(6.103515625e-05f, dot(_1880, _1880)));
        float _1885 = _506.y;
        float _1888 = step(0.00999999977648258209228515625f, 1.0f - (_1885 * _1885));
        float _1892 = lerp(_506.z, _1885, _1888);
        float3 _1899 = (float3(0.0f, _1888, 1.0f - _1888) - (_506 * _1892)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1892 * _1892)));
        _1913 = ((cross(_1899, _506) * _1884.x) + (_1899 * _1884.y)) + (_506 * _1884.z);
        _1914 = lerp(_1783, 0.89999997615814208984375f, clamp(_1848 * 4.0f, 0.0f, 1.0f));
        _1915 = lerp(_1784 * _1860, 0.3079999983310699462890625f.xxx, _1862);
        _1916 = lerp(_1785 * _1860, 0.87999999523162841796875f.xxx, _1862);
        _1917 = lerp(_47_m2, 0.0f, _1848);
    }
    else
    {
        _1913 = _506;
        _1914 = _1783;
        _1915 = _1784;
        _1916 = _1785;
        _1917 = _47_m2;
    }
    float _1919 = 0.959999978542327880859375f - (_1917 * 0.959999978542327880859375f);
    float3 _1920 = _1916 * _1919;
    float3 _1923 = lerp(0.039999999105930328369140625f.xxx * _47_m1, _1916, _1917.xxx);
    float3 _1924 = _1915 * _1919;
    float _1926 = max(_1914 * _1914, 0.0078125f);
    bool _1933 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
    float2 _1946 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
    _1946.y = -_1946.y;
    float2 _1962 = lerp(((sqrt(sqrt(abs(_1946 * 0.5f))) * float2(int2(sign(_1946)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1933).xx);
    float4 _1964 = float4(_1962.x, _1962.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1964.z = 1.0f;
    _1964.w = _1933 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1977 = lerp(-_34_m0.xyz, _18_m90.xyz, _18_m80.w.xxx);
    float3 _1981 = normalize(float3(_1977.x, 6.103515625e-05f, _1977.z));
    float3 _1991 = lerp(_34_m3.xyz, _18_m84.xyz, _18_m91.y.xxx);
    float3 _1995 = _1991 * lerp(_34_m3.w, 1.0f, _18_m91.w);
    int _1999 = int(_508.x);
    int _2000 = int(_508.y);
    float4 _2004 = _38.Load(int3(int3(_1999, _2000, 0).xy, 0));
    float _2009 = _2004.y;
    float _2012 = lerp(lerp(1.0f, _2004.x, _36_m6.x), 1.0f, _18_m80.z);
    float _2013 = dot(_1913, _1977);
    float3 _2020 = _1924 * _18_m79.z;
    float3 _2021 = _2020 * 0.64999997615814208984375f;
    float _2025 = dot(_1920, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2038 = clamp(-dot(_1981.xz, normalize(_518.xz)), 0.0f, 1.0f);
    float _2042 = 1.0f - _18_m91.x;
    float _2050 = smoothstep(0.25f, 1.0f, clamp(lerp(_2013, ((-_2013) * ((_2013 * 0.5f) - 1.0f)) + 0.5f, (_2038 * smoothstep(0.25f, 0.75f, 1.0f - abs(_518.y))) * _2042) + (_18_m90.w * _18_m91.x), -1.0f, 1.0f));
    float _2057 = max(max(_2050, _2050), _2050) - min(min(_2050, _2050), _2050);
    float _2059 = smoothstep(0.25f, 1.0f, dot(_1913, _518));
    float _2066 = min(min(_2009, 1.0f), _2050);
    float _2067 = _2059 * _2009;
    float3 _2071 = ((clamp(dot(_506, _18_m85.xyz) + _18_m86.x, 0.0f, 1.0f) * _18_m86.y) + _18_m86.z).xxx * lerp(_1059, 1.0f.xxx, (_18_m80.y * _2066).xxx);
    float3 _2073 = _2066.xxx;
    float3 _2096 = _2012.xxx;
    float3 _2097 = lerp((_2071 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1060), 1.5f), clamp(_1060, 1.25f, 1.75f), _18_m80.x)) * _18_m79.w, (lerp(dot(_1995, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1995, _2073) + ((_2071 * clamp(_1060, 0.0f, 1.5f)) * ((1.0f - _18_m91.y).xxx + (_1991 * _18_m91.y)))) * _18_m79.y, _2096);
    float3 _2098 = lerp(lerp(lerp(dot(_2021, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2021, 1.2000000476837158203125f.xxx), _2020, clamp((_2009 * _2059) + _2050, 0.0f, 1.0f).xxx), _1920, _2073);
    float3 _2104 = _2098 * ((1.0f - _2057).xxx + (_2050.xxxx.xyz * _2057));
    float3 _2113 = lerp(lerp(_2020, lerp(_2025.xxx, _1920, 1.2000000476837158203125f.xxx), _2067.xxx), _2104 * clamp(dot(_2098, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2104, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2096);
    float4 _2117 = float4(_2113, _2012);
    float _2119 = lerp(_2067, _2066, _2012);
    float _2122 = lerp(_18_m79.z, 1.0f, _2119);
    float3 _2130 = float3(_518.x, lerp(0.5f, _1977.y, _2012), _518.z);
    float _2143 = clamp(dot(_1780, _435), 0.0f, 1.0f);
    float _2144 = dot(_1780, normalize(((_1977 * _2012) + ((_2130 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2130, _2130)))) * 2.0f)) + (_435 * (2.0f + _2012))));
    float _2145 = _1926 * _1926;
    float _2149 = (((_2144 * _2145) - _2144) * _2144) + 1.0f;
    float _2150 = _2149 * _2149;
    float _2154 = 2.0f * _2143;
    float _2156 = (1.0f + _2143) - _2143;
    float _2173 = (1.0f - _47_m6) + (_480 * _47_m6);
    float3 _2175 = ((_2097 * _2113) * _2173) + (((_1923 * clamp((((_2145 != _2150) ? (_2145 / _2150) : 1.0f) * (0.5f / ((_2154 + (_1926 * _2156)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2097 * (((_2119 * 0.5f) + 0.5f) * _2122)) * 1.0f)) * _18_m92.w);
    float _2176 = dot(_2175, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2179 = clamp(_2176 - 0.5f, 0.0f, 0.5f);
    float3 _2215 = normalize(cross(_518, lerp(float3(_18_m88.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m88.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m88.y), _18_m94.w.xxx)));
    float _2221 = dot(_435, _1913);
    float _2223 = 1.0f - abs(_2221);
    float _2245 = dot(_1981, _1913);
    float _2257 = 1.0f - _2012;
    float _2284 = lerp(_1914, _1782, _1781);
    float _2285 = _2284 * _2284;
    float _2286 = _2143 * _2143;
    float _2287 = _2286 * _2143;
    float2 _2288 = float2(1.0f, _2143);
    float2 _2291 = float2(1.0f, _2285);
    float3 _2294 = float3(1.0f, _2285, (_2285 * _2285) * _2285);
    float _2299 = dot(mul(_2288, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2291) / dot(mul(float3(1.0f, _2286, _2287), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2294);
    float _2304 = dot(mul(_2288, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2291) / dot(mul(float3(1.0f, _2143, _2287), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2294);
    float3 _2307 = (_1923 * _2299) + _2304.xxx;
    float _2308 = _2299 + _2304;
    float3 _2314 = -_435;
    float3 _2332 = lerp(_2176.xxx, _2175, ((_2179 * _2179) + 1.0f).xxx) + (((((_18_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m88.w), lerp(0.89999997615814208984375f, 0.5f, _18_m88.w), _2223)) * _18_m87.w) * min(min(clamp(dot(_500, _2215) + 1.0f, 0.0f, 1.0f), 1.0f), _2009)) * (lerp(0.25f.xxx, _1920, _18_m88.z.xxx) * clamp(dot(_2215, _1913), 0.0f, 1.0f))) + ((((((lerp(_1058 * (1.0f / max(max(max(_1058.x, _1058.y), _1058.z) * 0.5f, 1.0f)), _1995, _2096) * clamp(lerp(dot(_1057.xyz, _1913) * _1057.w, ((-_2245) * ((_2245 * 0.5f) - 1.0f)) + 0.5f, _2012), 0.0f, 1.0f)) * ((_2257 + (_2038 * _2012)) * _2042)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2223)) * min(1.0f, _2009)) * (_2257 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2025) * _2012))) * max(0.1500000059604644775390625f.xxx, _1920)));
    float2 _2334 = float2(_508);
    float2 _2336 = floor(_2334 * 0.03125f);
    int _2344 = int((_2336.x + (_2336.y * _32_m5)) * 8.0f);
    float _2351 = floor(_416 - (_18_m3.y * _32_m11));
    float _2355 = clamp(_2351, 0.0f, _32_m7 - 1.0f);
    int _2357 = int(_2355 * 8.0f);
    float3 _2359;
    _2359 = _2332 + (((_53.SampleLevel(_23, reflect(_2314, _1780), (1.2000000476837158203125f * log2(max(_2284, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2307 + ((_1923 * ((1.0f - _2308) / _2308)) * _2307)) * 1.0f)) * ((clamp(_1060, 0.5f, 1.5f) * _18_m79.w) * _2122)) * _1059);
    float3 _2360;
    [loop]
    for (int _2362 = 0; _2362 <= 7; _2359 = _2360, _2362++)
    {
        uint _2380 = (_2351 <= _2355) ? (_28.Load(uint(_2344 + _2362) * 4 + 0) & _28.Load(uint((_18_m21.y + _2357) + _2362) * 4 + 0)) : 0u;
        uint _2381 = uint(_2362);
        _2360 = _2359;
        uint _2386;
        float3 _2383;
        [loop]
        for (uint _2385 = _2380; _2385 != 0u; _2360 = _2383, _2385 = _2386)
        {
            uint _2390 = firstbitlow(_2385);
            _2386 = _2385 ^ (1u << (_2390 & 31u));
            int _2396 = int((32u * _2381) + _2390) * 8;
            int _2399 = _2396 + 1;
            int _2402 = _2396 + 2;
            int _2405 = _2396 + 3;
            int _2408 = _2396 + 4;
            int _2411 = _2396 + 5;
            int _2414 = _2396 + 6;
            int _2417 = _2396 + 7;
            uint _2421 = uint(_34_m6[_2411].w);
            float _2496;
            if ((_2421 & 1u) == 1u)
            {
                uint _2427 = asuint(_34_m6[_2411].x);
                uint _2434 = asuint(_34_m6[_2411].y);
                uint _2441 = asuint(_34_m6[_2411].z);
                uint _2448 = asuint(_34_m6[_2414].x);
                uint _2455 = asuint(_34_m6[_2414].y);
                uint _2462 = asuint(_34_m6[_2414].z);
                float3 _2481 = abs(mul(float4(_493 - _34_m6[_2399].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2427).x, spvUnpackHalf2x16(_2441).x, spvUnpackHalf2x16(_2455).x, 0.0f), float4(spvUnpackHalf2x16(_2427 >> 16u).x, spvUnpackHalf2x16(_2441 >> 16u).x, spvUnpackHalf2x16(_2455 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2434).x, spvUnpackHalf2x16(_2448).x, spvUnpackHalf2x16(_2462).x, 0.0f), float4(spvUnpackHalf2x16(_2434 >> 16u).x, spvUnpackHalf2x16(_2448 >> 16u).x, spvUnpackHalf2x16(_2462 >> 16u).x, 0.0f))).xyz);
                float _2488 = _34_m6[_2417].x * 0.5f;
                float _2494 = 1.0f - clamp((max(max(_2481.x, _2481.y), _2481.z) - (_2488 + 0.5f)) / (0.5f - _2488), 0.0f, 1.0f);
                _2496 = _2494 * _2494;
            }
            else
            {
                _2496 = 1.0f;
            }
            if (false || (_2496 < 0.001000000047497451305389404296875f))
            {
                _2383 = _2360;
                continue;
            }
            float3 _3189;
            if (_34_m6[_2396].w < 1.5f)
            {
                float3 _3188;
                do
                {
                    uint _2509 = asuint(_34_m6[_2405].w);
                    if ((_2509 == 16u) || ((_34_m6[_2405].z + _18_m91.z) < 0.5f))
                    {
                        _3188 = _2360;
                        break;
                    }
                    bool _2521 = (uint(_34_m6[_2396].w) & 1u) == 0u;
                    bool _2525 = (!_2521) && (_34_m6[_2402].z > 0.0f);
                    bool _2526 = _2509 == 4u;
                    float _2527 = float(_2521);
                    float _2535 = (0.5f + (0.5f * _34_m6[_2402].y)) - abs(_34_m6[_2402].x);
                    float _2536 = _34_m6[_2402].y - _2535;
                    float _2543 = abs(max((1.0f - abs(_2535)) - abs(_2536), 0.00048828125f));
                    float3 _2547 = normalize(float3(_2535, _2536, (_34_m6[_2402].x >= 0.0f) ? _2543 : (-_2543)));
                    float _2553 = lerp(_34_m6[_2414].w, max(2.0f * _34_m6[_2408].y, 0.100000001490116119384765625f), float(_2526));
                    float3 _2558 = _34_m6[_2399].xyz - _493;
                    float3 _2559 = -_2547;
                    float3 _2564 = lerp(_2558, _2559 * dot(_2558, _2559), (float(_2526 && (_34_m6[_2408].z > 0.5f)) * _2527).xxx);
                    float _2565 = dot(_2564, _2564);
                    float _2566 = rsqrt(_2565);
                    float3 _2567 = _2564 * _2566;
                    float3 _2600;
                    float _2601;
                    if (_2525)
                    {
                        float3 _2571 = (_2547 * _34_m6[_2402].z) * 0.5f;
                        float3 _2572 = _2564 - _2571;
                        float3 _2573 = _2564 + _2571;
                        float _2574 = length(_2572);
                        float _2575 = length(_2573);
                        float3 _2584 = normalize(cross(cross(_2547, _2567), _2547));
                        _2600 = _2584;
                        _2601 = ((1.0f / ((((_2574 * _2575) + dot(_2572, _2573)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2584, _2572) / _2574) + (dot(_2584, _2573) / _2575)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_34_m6[_2402].z * _2566, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2600 = _2567;
                        _2601 = 1.0f;
                    }
                    float _2623;
                    if (_2553 < 0.0f)
                    {
                        float _2611 = _2565 * (_34_m6[_2399].w * _34_m6[_2399].w);
                        float _2614 = clamp(1.0f - (_2611 * _2611), 0.0f, 1.0f);
                        _2623 = lerp(1.0f / (_2565 + 1.0f), _2601, float(_2525)) * (_2614 * _2614);
                    }
                    else
                    {
                        float3 _2617 = _2564 * _34_m6[_2399].w;
                        _2623 = _2601 * pow(1.0f - clamp(dot(_2617, _2617), 0.0f, 1.0f), _2553);
                    }
                    float _2628 = clamp((dot(_2600, _2559) - _34_m6[_2402].z) * _34_m6[_2402].w, 0.0f, 1.0f);
                    float _2631 = _2623 * lerp(1.0f, _2628 * _2628, _2527);
                    int _2633 = int(_34_m6[_2417].w);
                    float _2737;
                    if ((!_2525) && (_2633 >= 0))
                    {
                        uint _2639 = uint(_2633);
                        float2 _2730;
                        [branch]
                        if (_2527 != 0.0f)
                        {
                            float4 _2651 = mul(_56_m1[_2639], float4(_493.x, _550, _493.z, 1.0f));
                            _2730 = _56_m0[_2639].xy + (clamp(_2651.xy / _2651.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2639].zw);
                        }
                        else
                        {
                            float3 _2671 = mul(float4(-_2564, 0.0f), _56_m1[_2639]).xyz;
                            float3 _406 = _2671;
                            float3 _405 = _2671;
                            float3 _404 = abs(_2671);
                            uint _2680 = uint(int(_404.y > _404.x));
                            uint _2686 = (_404.z > _404[_2680]) ? 2u : _2680;
                            uint _2692 = (_2686 * 2u) + uint(_405[_2686] < 0.0f);
                            float _2696 = abs(_406[_2692 / 2u]);
                            float _2716 = 0.5f - (0.000244140625f / _56_m0[_2639].w);
                            _2730 = _56_m0[_2639].xy + (clamp(float2((float(_2692) + ((((_406[uint(_356[_2692].x)] * _357[_2692].x) / _2696) * _2716) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_406[uint(_356[_2692].y)] * _357[_2692].y) / _2696) * _2716)), 0.0f.xx, 1.0f.xx) * _56_m0[_2639].zw);
                        }
                        _2737 = _2631 * _54.SampleLevel(_23, _2730, 0.0f).x;
                    }
                    else
                    {
                        _2737 = _2631;
                    }
                    float _2738 = _2737 * _2496;
                    float3 _3187;
                    do
                    {
                        float3 _3186;
                        [branch]
                        if (_2738 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2526)
                            {
                                _3187 = lerp(_2360, _34_m6[_2396].xyz, (_2738 * (_34_m6[_2408].x * ((1.0f - _34_m6[_2408].w) + (smoothstep(-0.5f, 0.5f, dot(_506, _2600)) * _34_m6[_2408].w)))).xxx);
                                break;
                            }
                            float _2758 = dot(_1913, _2600);
                            float _2759 = clamp(_2758, 0.0f, 1.0f);
                            float _3062;
                            if (_2509 != 0u)
                            {
                                bool _2765 = _2521 || ((_2421 & 2u) != 0u);
                                int _2814;
                                if (_2765)
                                {
                                    _2814 = int(_34_m6[_2405].x);
                                }
                                else
                                {
                                    uint _2771 = asuint(_34_m6[_2402].w);
                                    uint _2773 = asuint(_34_m6[_2405].x);
                                    float3 _2774 = _493 - _34_m6[_2399].xyz;
                                    float3 _2775 = abs(_2774);
                                    float _2776 = _2775.x;
                                    float _2777 = _2775.y;
                                    float _2779 = _2775.z;
                                    int _2811;
                                    if ((_2776 > _2777) && (_2776 > _2779))
                                    {
                                        _2811 = int((_2774.x > 0.0f) ? (_2771 >> 24u) : ((_2771 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2810;
                                        if (_2777 > _2779)
                                        {
                                            _2810 = int((_2774.y > 0.0f) ? ((_2771 >> 8u) & 255u) : (_2771 & 255u));
                                        }
                                        else
                                        {
                                            _2810 = int((_2774.z > 0.0f) ? ((_2773 >> 8u) & 255u) : (_2773 & 255u));
                                        }
                                        _2811 = _2810;
                                    }
                                    _2814 = (_2811 < 80) ? _2811 : (-1);
                                }
                                bool _2815 = _2814 >= 0;
                                float _3061;
                                if (_2815)
                                {
                                    float3 _2819 = _493 - _34_m6[_2399].xyz;
                                    float4 _2839 = mul(_36_m10[_2814], float4((_493 - ((_2819 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2819, _2819)))) * _36_m11[_2814].x)) + (_506 * (_36_m11[_2814].y * 5.0f)), 1.0f));
                                    float _2840 = _2839.w;
                                    float3 _2843 = _2839.xyz / _2840.xxx;
                                    float2 _2844 = _2843.xy;
                                    float3 _2852 = _2843.xyz;
                                    bool3 _2853 = bool3(_2852.x <= 0.0f.xxx.x, _2852.y <= 0.0f.xxx.y, _2852.z <= 0.0f.xxx.z);
                                    bool3 _2854 = bool3(_2852.x >= 1.0f.xxx.x, _2852.y >= 1.0f.xxx.y, _2852.z >= 1.0f.xxx.z);
                                    float _2857 = _2843.z;
                                    float2 _2868 = ((_2844 * (_36_m12[_2814].zw - _36_m12[_2814].xy)) + _36_m12[_2814].xy).xy * _36_m13.zw;
                                    float2 _2870 = floor(_2868 + 0.5f.xx);
                                    float2 _2871 = _2868 - _2870;
                                    float _2873 = _2871.x + 0.5f;
                                    float _2874 = _2873 * _2873;
                                    float _2877 = 1.0f - _2871.x;
                                    float _2878 = min(_2871.x, 0.0f);
                                    float _2881 = _2871.x + 1.0f;
                                    float _2882 = max(_2871.x, 0.0f);
                                    float _2894 = _2871.y + 0.5f;
                                    float _2895 = _2894 * _2894;
                                    float _2898 = 1.0f - _2871.y;
                                    float _2899 = min(_2871.y, 0.0f);
                                    float _2902 = _2871.y + 1.0f;
                                    float _2903 = max(_2871.y, 0.0f);
                                    float3 _2915 = float3(0.1599999964237213134765625f * _2877, 0.1599999964237213134765625f * ((_2881 - (_2882 * _2882)) + 1.0f), _2874 * 0.07999999821186065673828125f);
                                    float3 _2916 = float3(0.1599999964237213134765625f * ((_2874 * 0.5f) - _2871.x), 0.1599999964237213134765625f * ((_2877 - (_2878 * _2878)) + 1.0f), 0.1599999964237213134765625f * _2881) + _2915;
                                    float3 _2918 = float3(0.1599999964237213134765625f * _2898, 0.1599999964237213134765625f * ((_2902 - (_2903 * _2903)) + 1.0f), _2895 * 0.07999999821186065673828125f);
                                    float3 _2919 = float3(0.1599999964237213134765625f * ((_2895 * 0.5f) - _2871.y), 0.1599999964237213134765625f * ((_2898 - (_2899 * _2899)) + 1.0f), 0.1599999964237213134765625f * _2902) + _2918;
                                    float3 _2925 = ((_2915 / _2916) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                                    float3 _2927 = ((_2918 / _2919) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                                    float2 _2929 = _2870 * _36_m13.xy;
                                    float _2930 = _2925.x;
                                    float _2931 = _2927.x;
                                    float _2934 = _2925.y;
                                    float _2937 = _2925.z;
                                    float _2940 = _2927.y;
                                    float _2947 = _2927.z;
                                    float _2954 = _2916.x;
                                    float _2955 = _2919.x;
                                    float _2957 = _2916.y;
                                    float _2959 = _2916.z;
                                    float _2961 = _2919.y;
                                    float _2965 = _2919.z;
                                    float _3023 = (((((((_2954 * _2955) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2930, _2931), _398).xy, _2857)) + ((_2957 * _2955) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2934, _2931), _398).xy, _2857))) + ((_2959 * _2955) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2937, _2931), _398).xy, _2857))) + ((_2954 * _2961) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2930, _2940), _398).xy, _2857))) + ((_2957 * _2961) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2934, _2940), _398).xy, _2857))) + ((_2959 * _2961) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2937, _2940), _398).xy, _2857))) + ((_2954 * _2965) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2930, _2947), _398).xy, _2857));
                                    float2 _3044 = min(_2844, 1.0f.xx - _2844);
                                    _3061 = _2815 ? lerp(1.0f, (any(bool3(_2853.x || _2854.x, _2853.y || _2854.y, _2853.z || _2854.z)) || ((asuint(_2857) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3023 + ((_2957 * _2965) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2934, _2947), _398).xy, _2857))) + ((_2959 * _2965) * _37.SampleCmpLevelZero(_25, float3(_2929 + float2(_2937, _2947), _398).xy, _2857))), _2765 ? min(_36_m11[_2814].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_2814].z - _2840) * 0.25f, min(_3044.x, _3044.y)))) : _36_m11[_2814].w) : 1.0f;
                                }
                                else
                                {
                                    _3061 = clamp(dot(_500, _2600) + 1.0f, 0.0f, 1.0f);
                                }
                                _3062 = _3061;
                            }
                            else
                            {
                                _3062 = 1.0f;
                            }
                            float _3142;
                            float3 _3143;
                            float _3144;
                            float3 _3145;
                            float3 _3146;
                            float _3147;
                            float _3148;
                            [branch]
                            if (_2509 == 0u)
                            {
                                float3 _3068 = _34_m6[_2396].xyz * _2738;
                                float3 _3081 = _2117.xyz;
                                _3142 = _2738;
                                _3143 = (_34_m6[_2396].xyz * ((1.0f - _34_m6[_2408].y) + ((1.0f / max(1.0f, max(max(_3068.x, _3068.y), _3068.z) * lerp(0.75f, 0.5f, _2257))) * _34_m6[_2408].y))) * lerp(0.25f * _34_m6[_2408].x, 1.0f, clamp(_2758 + 0.5f, 0.0f, 1.0f));
                                _3144 = _2759;
                                _3145 = _3081;
                                _3146 = _3081;
                                _3147 = 1.0f;
                                _3148 = 0.0f;
                            }
                            else
                            {
                                float _3136;
                                float _3137;
                                float3 _3138;
                                float3 _3139;
                                float _3140;
                                float _3141;
                                if (_2509 == 3u)
                                {
                                    _3136 = _2738 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _34_m6[_2408].x), lerp(0.89999997615814208984375f, 0.5f, _34_m6[_2408].x), _2223) * _3062);
                                    _3137 = clamp(dot(_1913, -normalize(cross(_518, cross(_518, _2600)))), 0.0f, 1.0f);
                                    _3138 = lerp(0.5f.xxx, _1920, _34_m6[_2408].y.xxx);
                                    _3139 = 0.0f.xxx;
                                    _3140 = 1.0f;
                                    _3141 = 0.0f;
                                }
                                else
                                {
                                    bool _3106 = _2509 == 1u;
                                    float _3130;
                                    float3 _3131;
                                    float _3132;
                                    float _3133;
                                    if (_3106)
                                    {
                                        _3130 = clamp(clamp(_2758 + _34_m6[_2408].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3062;
                                        _3131 = _1924 * _34_m6[_2408].y;
                                        _3132 = 1.0f;
                                        _3133 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3116 = _2509 == 2u;
                                        float _3128;
                                        if (_3116)
                                        {
                                            _3128 = smoothstep(_34_m6[_2408].x + 0.0500000007450580596923828125f, _34_m6[_2408].x - 0.0500000007450580596923828125f, _1914) * ((1.0f - _34_m6[_2408].z) + (step(0.5f, _1917) * _34_m6[_2408].z));
                                        }
                                        else
                                        {
                                            _3128 = 1.0f;
                                        }
                                        _3130 = _2759;
                                        _3131 = 0.0f.xxx;
                                        _3132 = _3128;
                                        _3133 = _3116 ? _34_m6[_2408].y : 0.0f;
                                    }
                                    bool3 _3134 = _3106.xxx;
                                    _3136 = _2738;
                                    _3137 = _3130;
                                    _3138 = float3(_3134.x ? _1920.x : 0.0f.xxx.x, _3134.y ? _1920.y : 0.0f.xxx.y, _3134.z ? _1920.z : 0.0f.xxx.z);
                                    _3139 = _3131;
                                    _3140 = _3132;
                                    _3141 = _3133;
                                }
                                _3142 = _3136;
                                _3143 = _34_m6[_2396].xyz;
                                _3144 = _3137;
                                _3145 = _3138;
                                _3146 = _3139;
                                _3147 = _3140;
                                _3148 = _3141;
                            }
                            float3 _3176;
                            [branch]
                            if (_2509 != 3u)
                            {
                                float _3153 = lerp(_1926, 0.00999999977648258209228515625f, _3148);
                                float _3156 = dot(_1780, normalize(_2600 + _435));
                                float _3157 = _3153 * _3153;
                                float _3161 = (((_3156 * _3157) - _3156) * _3156) + 1.0f;
                                float _3162 = _3161 * _3161;
                                _3176 = ((_1923 * clamp((((_3157 != _3162) ? (_3157 / _3162) : 1.0f) * (0.5f / ((_2154 + (_3153 * _2156)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3147) * _34_m6[_2417].z;
                            }
                            else
                            {
                                _3176 = 0.0f.xxx;
                            }
                            float3 _3179 = _3143 * _3142;
                            _3186 = _2360 + (((_3179 * lerp(_3146, _3145, _3144.xxx)) * _2173) + ((_3179 * _3176) * _3144));
                        }
                        else
                        {
                            _3186 = _2360;
                        }
                        _3187 = _3186;
                        break;
                    } while(false);
                    _3188 = _3187;
                    break;
                } while(false);
                _3189 = _3188;
            }
            else
            {
                _3189 = _2360;
            }
            _2383 = _3189;
        }
    }
    float3 _3229;
    [branch]
    if (_47_m12 > 0.5f)
    {
        _3229 = lerp(lerp(0.5f.xxx, lerp(dot(_2359, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2359, _47_m14.xxx), _47_m15.xxx) * _47_m13, _47_m26.xyz, _47_m26.w.xxx) + ((_47_m27.xyz * smoothstep(1.0f - _47_m16, 1.0f, 1.0f - clamp(_2221, 0.0f, 1.0f))) * _47_m17);
    }
    else
    {
        _3229 = _2359;
    }
    float4 _3236 = float4(_3229 * _18_m20.y, _480);
    _3236.w = (_47_m8 == 1.0f) ? _480 : 1.0f;
    float4 _3623;
    [branch]
    if (_18_m91.w < 0.5f)
    {
        float _3260 = _550 * _18_m46.w;
        float _3265 = max(0.00999999977648258209228515625f, _3260 + _18_m47.w);
        float3 _3279 = exp(_18_m45.xyz * ((-max(0.0f, (_436 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3265)) / _3265) * exp(_3260 + _18_m48.w))));
        float _3282 = dot(_2314, _18_m44.xyz);
        float _3288 = _18_m45.w * _18_m45.w;
        float _3292 = (1.0f + _3288) - ((2.0f * _18_m45.w) * _3282);
        float3 _3615;
        float _3616;
        if (_18_m55.z > 0.0f)
        {
            uint3 _3337 = (uint3(int3(_1999, _2000, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3338 = _3337.y;
            uint _3339 = _3337.z;
            uint _3342 = _3337.x + (_3338 * _3339);
            uint _3344 = _3338 + (_3339 * _3342);
            uint _3346 = _3339 + (_3342 * _3344);
            uint _3348 = _3342 + (_3344 * _3346);
            float _3373 = dot(_2314, -_16_m0[2].xyz);
            float3 _3380 = _493 - _16_m11.xyz;
            float _3382 = (_18_m55.w * ((_3373 > 5.9604644775390625e-08f) ? (1.0f / _3373) : 0.0f)) * (1.0f / _436);
            float _3383 = _3380.y;
            float _3384 = _3382 * _3383;
            float _3386 = _16_m11.y + _3384;
            float _3387 = _3383 - _3384;
            float _3389 = (1.0f - _3382) * _436;
            float _3403 = max(-127.0f, _18_m49.z * _3387);
            float _3427 = max(-127.0f, _18_m52.x * _3387);
            float _3438 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3386 - _18_m49.x)))) * ((abs(_3403) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3403)) / _3403) : (0.693147182464599609375f - (0.2402265071868896484375f * _3403)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3386 - _18_m52.z)))) * ((abs(_3427) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3427)) / _3427) : (0.693147182464599609375f - (0.2402265071868896484375f * _3427))));
            float _3460 = clamp((_436 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3463 = clamp((max(clamp(exp2(-(_3438 * _3389)), 0.0f, 1.0f), _18_m51.w) + clamp((_436 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3460, 0.0f, 1.0f);
            float4 _3503 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _59.SampleLevel(_23, float3((_2334 + ((((float3(uint3(_3348, _3344 + (_3346 * _3348), _402) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_416 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_416 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3615 = _3503.xyz + (((_18_m51.xyz * (1.0f - _3463)) + (((_18_m54.xyz * pow(clamp(dot(_435, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3438 * max(_3389 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3460))) * _3503.w);
            _3616 = _3503.w * _3463;
        }
        else
        {
            float3 _3509 = _493 - _16_m11.xyz;
            float _3511 = _3509.y;
            float _3525 = max(-127.0f, _18_m49.z * _3511);
            float _3549 = max(-127.0f, _18_m52.x * _3511);
            float _3560 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3525) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3525)) / _3525) : (0.693147182464599609375f - (0.2402265071868896484375f * _3525)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3549) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3549)) / _3549) : (0.693147182464599609375f - (0.2402265071868896484375f * _3549))));
            float _3582 = clamp((_436 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3585 = clamp((max(clamp(exp2(-(_3560 * _436)), 0.0f, 1.0f), _18_m51.w) + clamp((_436 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3582, 0.0f, 1.0f);
            _3615 = (_18_m51.xyz * (1.0f - _3585)) + (((_18_m54.xyz * pow(clamp(dot(_435, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3560 * max(_436 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3582));
            _3616 = _3585;
        }
        float3 _3621 = (_3236.xyz * (_3279 * _3616)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3282 * _3282)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3288) / max((12.56637096405029296875f * _3292) * sqrt(_3292), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3279)) * _3616) + _3615);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3621 = (_3621 * 0.65f) + (_3236.xyz * 0.35f);

        }

        // RenoDX code end
        _3623 = float4(_3621.x, _3621.y, _3621.z, _3236.w);
    }
    else
    {
        _3623 = _3236;
    }
    _13 = _3623;
    _14 = _1964;
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

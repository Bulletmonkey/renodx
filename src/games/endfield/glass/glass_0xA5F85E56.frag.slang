#include "../shared.h"

// Endfield 1.5 Vulkan shader 0xA5F85E56, migrated from 1.4.4 shader 0x6B861605.
struct _19
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

static float _351 = (float)0;
static float4 _352 = (float4)0;
static uint _355 = (uint)0;

static const float4 _332[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _333[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _334[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _14_15 : register(b12)
{
    column_major float4x4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c4);
    column_major float4x4 _15_m2 : packoffset(c8);
    column_major float4x4 _15_m3 : packoffset(c12);
    column_major float4x4 _15_m4 : packoffset(c16);
    column_major float4x4 _15_m5 : packoffset(c20);
    column_major float4x4 _15_m6 : packoffset(c24);
    column_major float4x4 _15_m7 : packoffset(c28);
    column_major float4x4 _15_m8 : packoffset(c32);
    column_major float4x4 _15_m9 : packoffset(c36);
    column_major float4x4 _15_m10 : packoffset(c40);
    float4 _15_m11 : packoffset(c44);
    column_major float4x4 _15_m12 : packoffset(c45);
    column_major float4x4 _15_m13 : packoffset(c49);
    column_major float4x4 _15_m14 : packoffset(c53);
    column_major float4x4 _15_m15 : packoffset(c57);
    column_major float4x4 _15_m16 : packoffset(c61);
    column_major float4x4 _15_m17 : packoffset(c65);
    column_major float4x4 _15_m18 : packoffset(c69);
    column_major float4x4 _15_m19 : packoffset(c73);
    column_major float4x4 _15_m20 : packoffset(c77);
    float4 _15_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _16_17 : register(b16)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float4 _17_m2 : packoffset(c2);
    float4 _17_m3 : packoffset(c3);
    float4 _17_m4 : packoffset(c4);
    float4 _17_m5 : packoffset(c5);
    float4 _17_m6[6] : packoffset(c6);
    float4 _17_m7[6] : packoffset(c12);
    float4 _17_m8 : packoffset(c18);
    float4 _17_m9 : packoffset(c19);
    float4 _17_m10 : packoffset(c20);
    float4 _17_m11 : packoffset(c21);
    float4 _17_m12 : packoffset(c22);
    float4 _17_m13 : packoffset(c23);
    float4 _17_m14 : packoffset(c24);
    float4 _17_m15 : packoffset(c25);
    float _17_m16 : packoffset(c26);
    float _17_m17 : packoffset(c26.y);
    float _17_m18 : packoffset(c26.z);
    uint _17_m19 : packoffset(c26.w);
    float4 _17_m20 : packoffset(c27);
    int4 _17_m21 : packoffset(c28);
    float4 _17_m22 : packoffset(c29);
    float4 _17_m23 : packoffset(c30);
    float4 _17_m24 : packoffset(c31);
    float4 _17_m25 : packoffset(c32);
    float4 _17_m26 : packoffset(c33);
    float4 _17_m27 : packoffset(c34);
    float4 _17_m28 : packoffset(c35);
    float4 _17_m29 : packoffset(c36);
    float4 _17_m30 : packoffset(c37);
    float4 _17_m31 : packoffset(c38);
    float4 _17_m32[4] : packoffset(c39);
    float4 _17_m33[4] : packoffset(c43);
    float4 _17_m34[4] : packoffset(c47);
    float4 _17_m35[4] : packoffset(c51);
    float4 _17_m36 : packoffset(c55);
    float4 _17_m37 : packoffset(c56);
    float4 _17_m38[4] : packoffset(c57);
    float4 _17_m39[4] : packoffset(c61);
    float4 _17_m40[4] : packoffset(c65);
    float4 _17_m41 : packoffset(c69);
    float4 _17_m42 : packoffset(c70);
    float4 _17_m43 : packoffset(c71);
    float4 _17_m44 : packoffset(c72);
    float4 _17_m45 : packoffset(c73);
    float4 _17_m46 : packoffset(c74);
    float4 _17_m47 : packoffset(c75);
    float4 _17_m48 : packoffset(c76);
    float4 _17_m49 : packoffset(c77);
    float4 _17_m50 : packoffset(c78);
    float4 _17_m51 : packoffset(c79);
    float4 _17_m52 : packoffset(c80);
    float4 _17_m53 : packoffset(c81);
    float4 _17_m54 : packoffset(c82);
    float4 _17_m55 : packoffset(c83);
    float4 _17_m56 : packoffset(c84);
    float4 _17_m57 : packoffset(c85);
    float4 _17_m58 : packoffset(c86);
    float4 _17_m59 : packoffset(c87);
    float4 _17_m60 : packoffset(c88);
    float4 _17_m61 : packoffset(c89);
    float4 _17_m62 : packoffset(c90);
    float4 _17_m63 : packoffset(c91);
    float4 _17_m64 : packoffset(c92);
    float4 _17_m65 : packoffset(c93);
    float4 _17_m66 : packoffset(c94);
    float4 _17_m67 : packoffset(c95);
    float4 _17_m68 : packoffset(c96);
    float4 _17_m69 : packoffset(c97);
    float4 _17_m70 : packoffset(c98);
    float4 _17_m71 : packoffset(c99);
    float4 _17_m72 : packoffset(c100);
    float4 _17_m73 : packoffset(c101);
    float4 _17_m74 : packoffset(c102);
    float4 _17_m75 : packoffset(c103);
    float4 _17_m76 : packoffset(c104);
    float4 _17_m77 : packoffset(c105);
    float4 _17_m78 : packoffset(c106);
    float4 _17_m79 : packoffset(c107);
    float4 _17_m80 : packoffset(c108);
    float4 _17_m81 : packoffset(c109);
    float4 _17_m82 : packoffset(c110);
    float4 _17_m83 : packoffset(c111);
    float4 _17_m84 : packoffset(c112);
    float4 _17_m85 : packoffset(c113);
    float4 _17_m86 : packoffset(c114);
    float4 _17_m87 : packoffset(c115);
    float4 _17_m88 : packoffset(c116);
    float4 _17_m89 : packoffset(c117);
    float4 _17_m90 : packoffset(c118);
    float4 _17_m91 : packoffset(c119);
    float4 _17_m92 : packoffset(c120);
    float4 _17_m93 : packoffset(c121);
    float4 _17_m94 : packoffset(c122);
    float4 _17_m95 : packoffset(c123);
    float4 _17_m96 : packoffset(c124);
    float4 _17_m97 : packoffset(c125);
    float4 _17_m98 : packoffset(c126);
    float4 _17_m99[2] : packoffset(c127);
    float4 _17_m100[2] : packoffset(c129);
    float _17_m101 : packoffset(c131);
    float _17_m102 : packoffset(c131.y);
    float _17_m103 : packoffset(c131.z);
    float _17_m104 : packoffset(c131.w);
    float4 _17_m105 : packoffset(c132);
    float4 _17_m106 : packoffset(c133);
    float4 _17_m107 : packoffset(c134);
    float4 _17_m108 : packoffset(c135);
    float4 _17_m109 : packoffset(c136);
    float4 _17_m110 : packoffset(c137);
    float4 _17_m111 : packoffset(c138);
    float4 _17_m112 : packoffset(c139);
    float4 _17_m113 : packoffset(c140);
    float4 _17_m114 : packoffset(c141);
    float4 _17_m115 : packoffset(c142);
    float4 _17_m116 : packoffset(c143);
    float4 _17_m117 : packoffset(c144);
    float4 _17_m118 : packoffset(c145);
    float4 _17_m119 : packoffset(c146);
    float4 _17_m120 : packoffset(c147);
    float4 _17_m121 : packoffset(c148);
    float4 _17_m122 : packoffset(c149);
    float4 _17_m123 : packoffset(c150);
    float4 _17_m124 : packoffset(c151);
    float4 _17_m125 : packoffset(c152);
    float4 _17_m126 : packoffset(c153);
    float4 _17_m127 : packoffset(c154);
    float4 _17_m128 : packoffset(c155);
    float4 _17_m129 : packoffset(c156);
    float4 _17_m130 : packoffset(c157);
    float4 _17_m131 : packoffset(c158);
    float4 _17_m132 : packoffset(c159);
    float4 _17_m133 : packoffset(c160);
    float4 _17_m134 : packoffset(c161);
    column_major float4x4 _17_m135 : packoffset(c162);
    float4 _17_m136 : packoffset(c166);
    float4 _17_m137 : packoffset(c167);
    float4 _17_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _18_20 : register(b0)
{
    _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _27 : register(t52);
[[vk::binding(2, 1)]]
cbuffer _32_33 : register(b2)
{
    float _33_m0 : packoffset(c0);
    float _33_m1 : packoffset(c0.y);
    float _33_m2 : packoffset(c0.z);
    float _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
    float _33_m12 : packoffset(c3);
    float _33_m13 : packoffset(c3.y);
    float _33_m14 : packoffset(c3.z);
    float _33_m15 : packoffset(c3.w);
    float4 _33_m16 : packoffset(c4);
    float _33_m17 : packoffset(c5);
    float _33_m18 : packoffset(c5.y);
    float _33_m19 : packoffset(c5.z);
    float _33_m20 : packoffset(c5.w);
    float4 _33_m21 : packoffset(c6);
    float4 _33_m22 : packoffset(c7);
    float4 _33_m23 : packoffset(c8);
    float4 _33_m24 : packoffset(c9);
    float4 _33_m25 : packoffset(c10);
    float _33_m26 : packoffset(c11);
    float _33_m27 : packoffset(c11.y);
    float _33_m28 : packoffset(c11.z);
    float _33_m29 : packoffset(c11.w);
    float _33_m30 : packoffset(c12);
    float _33_m31 : packoffset(c12.y);
    float _33_m32 : packoffset(c12.z);
    float _33_m33 : packoffset(c12.w);
    float4 _33_m34 : packoffset(c13);
    float4 _33_m35 : packoffset(c14);
    float4 _33_m36 : packoffset(c15);
    float4 _33_m37 : packoffset(c16);
    float _33_m38 : packoffset(c17);
    float _33_m39 : packoffset(c17.y);
    float _33_m40 : packoffset(c17.z);
    float _33_m41 : packoffset(c17.w);
    float4 _33_m42 : packoffset(c18);
    float4 _33_m43 : packoffset(c19);
    float4 _33_m44 : packoffset(c20);
    float _33_m45 : packoffset(c21);
    float _33_m46 : packoffset(c21.y);
    float _33_m47 : packoffset(c21.z);
    float _33_m48 : packoffset(c21.w);
    float _33_m49 : packoffset(c22);
    float _33_m50 : packoffset(c22.y);
    float _33_m51 : packoffset(c22.z);
    float _33_m52 : packoffset(c22.w);
    float _33_m53 : packoffset(c23);
    float _33_m54 : packoffset(c23.y);
    float _33_m55 : packoffset(c23.z);
    float _33_m56 : packoffset(c23.w);
    float _33_m57 : packoffset(c24);
    float _33_m58 : packoffset(c24.y);
    float _33_m59 : packoffset(c24.z);
    float _33_m60 : packoffset(c24.w);
    float _33_m61 : packoffset(c25);
    float _33_m62 : packoffset(c25.y);
    float _33_m63 : packoffset(c25.z);
    float _33_m64 : packoffset(c25.w);
    float _33_m65 : packoffset(c26);
    float _33_m66 : packoffset(c26.y);
    float _33_m67 : packoffset(c26.z);
    float _33_m68 : packoffset(c26.w);
    float _33_m69 : packoffset(c27);
    float _33_m70 : packoffset(c27.y);
    float _33_m71 : packoffset(c27.z);
    float _33_m72 : packoffset(c27.w);
    float4 _33_m73 : packoffset(c28);
    float4 _33_m74 : packoffset(c29);
};

[[vk::binding(49, 0)]]
cbuffer _42_43 : register(b49)
{
    int _43_m0 : packoffset(c0);
    int _43_m1 : packoffset(c0.y);
    int _43_m2 : packoffset(c0.z);
    int _43_m3 : packoffset(c0.w);
    float _43_m4 : packoffset(c1);
    float _43_m5 : packoffset(c1.y);
    float _43_m6 : packoffset(c1.z);
    float _43_m7 : packoffset(c1.w);
    float _43_m8 : packoffset(c2);
    float _43_m9 : packoffset(c2.y);
    float _43_m10 : packoffset(c2.z);
    float _43_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _44_45 : register(b14)
{
    float4 _45_m0 : packoffset(c0);
    float4 _45_m1 : packoffset(c1);
    float4 _45_m2 : packoffset(c2);
    float4 _45_m3 : packoffset(c3);
    float4 _45_m4 : packoffset(c4);
    uint4 _45_m5 : packoffset(c5);
    float4 _45_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _46_47 : register(b15)
{
    column_major float4x4 _47_m0[5] : packoffset(c0);
    float4 _47_m1[4] : packoffset(c20);
    float4 _47_m2[4] : packoffset(c24);
    float4 _47_m3[4] : packoffset(c28);
    float4 _47_m4 : packoffset(c32);
    float4 _47_m5 : packoffset(c33);
    float4 _47_m6 : packoffset(c34);
    float4 _47_m7 : packoffset(c35);
    float4 _47_m8 : packoffset(c36);
    float4 _47_m9[27] : packoffset(c37);
    column_major float4x4 _47_m10[56] : packoffset(c64);
    float4 _47_m11[56] : packoffset(c288);
    float4 _47_m12[56] : packoffset(c344);
    float4 _47_m13 : packoffset(c400);
    float4 _47_m14[47] : packoffset(c401);
    column_major float4x4 _47_m15[15] : packoffset(c448);
    float4 _47_m16[15] : packoffset(c508);
    float4 _47_m17[15] : packoffset(c523);
    float4 _47_m18[15] : packoffset(c538);
    float4 _47_m19 : packoffset(c553);
    float4 _47_m20 : packoffset(c554);
    float4 _47_m21[21] : packoffset(c555);
    column_major float4x4 _47_m22 : packoffset(c576);
    column_major float4x4 _47_m23 : packoffset(c580);
    float4 _47_m24 : packoffset(c584);
    float4 _47_m25 : packoffset(c585);
    float4 _47_m26 : packoffset(c586);
    float4 _47_m27[128] : packoffset(c587);
};

[[vk::binding(51, 0)]]
cbuffer _58_59 : register(b51)
{
    float4 _59_m0[32] : packoffset(c0);
    column_major float4x4 _59_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _22 : register(s6);
[[vk::binding(4, 0)]] SamplerState _23 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _24 : register(s7);
[[vk::binding(5, 1)]] Texture2D<float4> _28 : register(t5);
[[vk::binding(3, 1)]] SamplerState _29 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _30 : register(t6);
[[vk::binding(4, 1)]] SamplerState _31 : register(s4);
[[vk::binding(37, 0)]] Texture3D<float4> _35 : register(t37);
[[vk::binding(36, 0)]] Texture3D<float4> _36 : register(t36);
[[vk::binding(33, 0)]] Texture3D<float4> _37 : register(t33);
[[vk::binding(35, 0)]] Texture3D<float4> _38 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _39 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _41 : register(t31);
[[vk::binding(9, 0)]] Texture2D<float4> _48 : register(t9);
[[vk::binding(28, 0)]] Texture2D<float4> _49 : register(t28);
[[vk::binding(8, 0)]] Texture2D<float4> _50 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _51 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _52 : register(t10);
[[vk::binding(29, 0)]] Texture2D<float4> _54 : register(t29);
[[vk::binding(22, 0)]] Texture2D<float4> _55 : register(t22);
[[vk::binding(21, 0)]] Texture2D<float4> _56 : register(t21);
[[vk::binding(30, 0)]] Texture2D<float4> _57 : register(t30);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static uint _10 = (uint)0;
static float4 _12 = (float4)0;
static float4 _13 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _10 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _12 : SV_Target0;
    [[vk::location(1)]] float4 _13 : SV_Target1;
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
    float2 _381 = gl_FragCoord.xy * _17_m0.zw;
    float2 _384 = (_381 * 2.0f) - 1.0f.xx;
    float4 _387 = float4(_384, gl_FragCoord.z, 1.0f);
    _387.y = -_384.y;
    float4 _390 = mul(_15_m6, _387);
    float3 _394 = _390.xyz / _390.w.xxx;
    float4 _398 = float4(_394, 1.0f);
    float _401 = abs(mul(_15_m0, _398).z);
    float3 _402 = _6 * 1.0f;
    float3 _417;
    do
    {
        if (_17_m4.w == 0.0f)
        {
            _417 = _15_m11.xyz - _394;
            break;
        }
        else
        {
            _417 = _15_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _418 = dot(_417, _417);
    float _420 = rsqrt(max(_418, 9.9999999392252902907785028219223e-09f));
    float3 _421 = _417 * _420;
    float _422 = _418 * _420;
    float2 _445 = ((_4.zw * _33_m4) - (_5.xy * _33_m4)) + _5.xy;
    float4 _446 = _5 * _33_m4;
    float2 _482 = ((mul(((((_4.xy * _33_m23.x) + (_445 * _33_m23.y)) + (_33_m21.xy * _17_m75.w)) + (_33_m21.zw * _446.x)) - 0.5f.xx, float2x2(float2(_33_m22.xy), float2(_33_m22.zw))) + 0.5f.xx) * _33_m24.xy) + _33_m24.zw;
    float _527 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _33_m67);
    _482.y = _482.y * (1.0f + min(_527, 0.5f));
    float4 _552 = _30.SampleBias(_31, float4(((mul(((((_4.xy * _33_m37.x) + (_445 * _33_m37.y)) + (_33_m35.xy * _17_m75.w)) + (_33_m35.zw * _446.y)) - 0.5f.xx, float2x2(float2(_33_m36.xy), float2(_33_m36.zw))) + 0.5f.xx) * _33_m34.xy) + _33_m34.zw, 0.0f, 0.0f).xy, _17_m16);
    float _556 = (_552.x * (_33_m26 + 1.0f)) - _33_m26;
    float2 _559 = float2(_556 * _33_m28, _556 * _33_m29);
    float4 _562 = _552;
    _562.w = _552.w * _556;
    float2 _568 = (((_562.wy * 2.0f) - 1.0f.xx).xy * _33_m28).xy;
    bool2 _570 = (_33_m27 != 0.0f).xx;
    float4 _582 = _28.SampleBias(_29, (_482 + _527.xx) + ((float2(_570.x ? _568.x : _559.x, _570.y ? _568.y : _559.y) * 1.0f) * _33_m17), _17_m16);
    float4 _587 = ((_33_m16 * lerp(_7, 1.0f.xxxx, _33_m5.xxxx)) * float4(_33_m6, _33_m6, _33_m6, _33_m7)) * lerp(_582, float4(1.0f, 1.0f, 1.0f, _582.x), _33_m18.xxxx);
    bool3 _611 = (gl_FrontFacing ? true : false).xxx;
    float3 _612 = -_402;
    float3 _613 = float3(_611.x ? _402.x : _612.x, _611.y ? _402.y : _612.y, _611.z ? _402.z : _612.z);
    float _647 = clamp((((_587.w * ((_33_m45 != 0.0f) ? (clamp((_401 - _33_m46) / (_33_m47 - _33_m46), 0.0f, 1.0f) * clamp((_401 - _33_m48) / (_33_m49 - _33_m48), 0.0f, 1.0f)) : 1.0f)) * lerp(1.0f, _7.w, _33_m65)) * lerp(1.0f, pow(abs(dot(_6, _421)), _33_m58), _33_m60)) * (1.0f - _20_m0[_10]._m1.y), 0.0f, 1.0f);
    float3 _648 = clamp((_587.xyz * ((1.0f - _33_m12) + (_17_m20.y * _33_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _651 = _648 * _33_m61;
    float2 _706;
    if (clamp((_33_m3 + 1.0f) - _33_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _692 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _692.y = -_692.y;
        _706 = ((sqrt(sqrt(abs(_692 * 0.5f))) * float2(int2(sign(_692)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _706 = 0.0f.xx;
    }
    float _707 = 0.07999999821186065673828125f * _33_m64;
    float3 _708 = _651 * _33_m62;
    float3 _709 = _651 - _708;
    float3 _713 = (_707 - (_707 * _33_m62)).xxx + _708;
    uint2 _744;
    float _745;
    if (_17_m24.y == 1.0f)
    {
        float4 _721 = mul(_17_m135, _398);
        float4 _724 = _721;
        _724.y = -_721.y;
        float4 _727 = _724 * (1.0f / _721.w);
        _744 = uint2(clamp(((_727.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
        _745 = 1.0f / ((_17_m2.z * _727.z) + _17_m2.w);
    }
    else
    {
        _744 = uint2(gl_FragCoord.xy);
        _745 = _401;
    }
    float3 _747 = _394 + (_613 * 0.25f);
    float3 _757 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _766 = _747 - (_17_m105.xyz + (_757 * (-_17_m107.w)));
    float _780 = max(clamp((max(abs(_766.x), abs(_766.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_766.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1082;
    float4 _1083;
    float4 _1084;
    float _1085;
    float _1086;
    if ((_17_m105.w != 0.0f) && (_780 < 1.0f))
    {
        float3 _793 = _747 - (_17_m105.xyz + (_757 * (-_17_m107.y)));
        float _807 = max(clamp((max(abs(_793.x), abs(_793.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_793.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _883;
        float4 _884;
        float4 _885;
        float4 _886;
        if (_807 < 1.0f)
        {
            float3 _816 = ((_747 * 2.0f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _818 = _816 - floor(_816);
            float4 _822 = _36.SampleLevel(_23, _818, 0.0f);
            float _823 = 1.0f - _807;
            float _827 = _17_m106.y * 0.5f;
            float _832 = _818.x;
            float _833 = clamp(_818.y, _827, 1.0f - _827) * 0.3333333432674407958984375f;
            float _834 = _818.z;
            float4 _837 = _37.SampleLevel(_22, float3(_832, _833, _834), 0.0f);
            float _853 = _822.x;
            float _863 = _822.y;
            float _873 = _822.z;
            _883 = _780 + (_837.w * _823);
            _884 = float4(((_37.SampleLevel(_22, float3(_832, _833 + 0.666666686534881591796875f, _834), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _873, _873) * _823;
            _885 = float4(((_37.SampleLevel(_22, float3(_832, _833 + 0.3333333432674407958984375f, _834), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _863, _863) * _823;
            _886 = float4(((_837.xyz * 4.0f) - 2.0f.xxx) * _853, _853) * _823;
        }
        else
        {
            _883 = _780;
            _884 = 0.0f.xxxx;
            _885 = 0.0f.xxxx;
            _886 = 0.0f.xxxx;
        }
        float3 _892 = _747 - (_17_m105.xyz + (_757 * (-_17_m107.z)));
        float _906 = max(clamp((max(abs(_892.x), abs(_892.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_892.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _986;
        float4 _987;
        float4 _988;
        float4 _989;
        if (_906 < 1.0f)
        {
            float3 _915 = ((_747 * 0.5f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _917 = _915 - floor(_915);
            float4 _921 = _38.SampleLevel(_23, _917, 0.0f);
            float _923 = _807 * (1.0f - _906);
            float _927 = _17_m106.y * 0.5f;
            float _932 = _917.x;
            float _933 = clamp(_917.y, _927, 1.0f - _927) * 0.3333333432674407958984375f;
            float _934 = _917.z;
            float4 _937 = _39.SampleLevel(_22, float3(_932, _933, _934), 0.0f);
            float _953 = _921.x;
            float _964 = _921.y;
            float _975 = _921.z;
            _986 = _883 + (_937.w * _923);
            _987 = _884 + (float4(((_39.SampleLevel(_22, float3(_932, _933 + 0.666666686534881591796875f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _975, _975) * _923);
            _988 = _885 + (float4(((_39.SampleLevel(_22, float3(_932, _933 + 0.3333333432674407958984375f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _964, _964) * _923);
            _989 = _886 + (float4(((_937.xyz * 4.0f) - 2.0f.xxx) * _953, _953) * _923);
        }
        else
        {
            _986 = _883;
            _987 = _884;
            _988 = _885;
            _989 = _886;
        }
        float4 _1072;
        float4 _1073;
        float4 _1074;
        float _1075;
        if (_906 > 0.0f)
        {
            float3 _998 = ((_747 * 0.125f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1001 = _17_m106.xyz * 0.5f;
            float3 _1003 = clamp(_998 - floor(_998), _1001, 1.0f.xxx - _1001);
            float4 _1007 = _40.SampleLevel(_23, _1003, 0.0f);
            float _1009 = _906 * (1.0f - _780);
            float _1013 = _17_m106.y * 0.5f;
            float _1018 = _1003.x;
            float _1019 = clamp(_1003.y, _1013, 1.0f - _1013) * 0.3333333432674407958984375f;
            float _1020 = _1003.z;
            float4 _1023 = _41.SampleLevel(_22, float3(_1018, _1019, _1020), 0.0f);
            float _1039 = _1007.x;
            float _1050 = _1007.y;
            float _1061 = _1007.z;
            _1072 = _987 + (float4(((_41.SampleLevel(_22, float3(_1018, _1019 + 0.666666686534881591796875f, _1020), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1061, _1061) * _1009);
            _1073 = _988 + (float4(((_41.SampleLevel(_22, float3(_1018, _1019 + 0.3333333432674407958984375f, _1020), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1050, _1050) * _1009);
            _1074 = _989 + (float4(((_1023.xyz * 4.0f) - 2.0f.xxx) * _1039, _1039) * _1009);
            _1075 = _986 + (_1023.w * _1009);
        }
        else
        {
            _1072 = _987;
            _1073 = _988;
            _1074 = _989;
            _1075 = _986;
        }
        float _1078 = clamp((_1075 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1082 = _1072;
        _1083 = _1073;
        _1084 = _1074;
        _1085 = _1078 - _780;
        _1086 = (_1078 + _780) * 0.5f;
    }
    else
    {
        _1082 = 0.0f.xxxx;
        _1083 = 0.0f.xxxx;
        _1084 = 0.0f.xxxx;
        _1085 = 0.0f;
        _1086 = 1.0f;
    }
    float4 _1106 = _1084 + float4(_17_m108.x * _1086, (_17_m108.y * _1086) + ((_17_m108.w * _1085) * 0.5f), _17_m108.z * _1086, (_17_m108.w * _1086) + ((_17_m108.y * _1085) * 0.375f));
    float4 _1126 = _1083 + float4(_17_m109.x * _1086, (_17_m109.y * _1086) + ((_17_m109.w * _1085) * 0.5f), _17_m109.z * _1086, (_17_m109.w * _1086) + ((_17_m109.y * _1085) * 0.375f));
    float4 _1146 = _1082 + float4(_17_m110.x * _1086, (_17_m110.y * _1086) + ((_17_m110.w * _1085) * 0.5f), _17_m110.z * _1086, (_17_m110.w * _1086) + ((_17_m110.y * _1085) * 0.375f));
    float3 _1167 = ((float3(max(0.0f, dot(_1106.xyz, _613) + _1106.w), max(0.0f, dot(_1126.xyz, _613) + _1126.w), max(0.0f, dot(_1146.xyz, _613) + _1146.w)) * _709) * 1.0f) * _17_m22.x;
    float3 _1176 = (((_1167.x + _1167.y) + _1167.z) * 0.3333333432674407958984375f).xxx;
    float3 _1181 = (_1176 + ((_1167 - _1176) * _33_m59)) + ((-0.0f).xxx * _33_m59);
    float3 _1187 = _17_m76.w.xxx;
    float _1195 = 1.0f - _33_m11;
    float3 _1198 = _394 + (_613 * 0.5f);
    float2 _1648;
    do
    {
        if (_47_m7.w >= 0.9900000095367431640625f)
        {
            _1648 = float2(_47_m7.z, 1.0f);
            break;
        }
        int _1211 = int(_47_m7.x);
        bool3 _1213 = (_1211 == 2).xxx;
        float3 _1221 = _1198 - float3(_1213.x ? _47_m1[0].xyz.x : _15_m11.xyz.x, _1213.y ? _47_m1[0].xyz.y : _15_m11.xyz.y, _1213.z ? _47_m1[0].xyz.z : _15_m11.xyz.z);
        float _1232 = max(clamp((_47_m6.w - dot(_1221, _1221)) * _47_m6.z, 0.0f, 1.0f), _47_m8.x);
        float _1389;
        bool _1390;
        if (_1232 > 0.0f)
        {
            float _1387;
            bool _1388;
            if (_1211 > 0)
            {
                float3 _1239 = _1198 - _47_m1[0].xyz;
                float3 _1243 = _1198 - _47_m1[1].xyz;
                float3 _1247 = _1198 - _47_m1[2].xyz;
                float3 _1251 = _1198 - _47_m1[3].xyz;
                float4 _1256 = float4(dot(_1239, _1239), dot(_1243, _1243), dot(_1247, _1247), dot(_1251, _1251));
                float4 _1265 = float4(_47_m1[0].w, _47_m1[1].w, _47_m1[2].w, _47_m1[3].w);
                float4 _1267 = float4(bool4(_1256.x < _1265.x, _1256.y < _1265.y, _1256.z < _1265.z, _1256.w < _1265.w));
                float3 _1271 = clamp(_1267.yzw - _1267.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1275 = clamp(4.0f - dot(float4(_1267.x, _1271.x, _1271.y, _1271.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1277 = clamp(_1275 + 1.0f, 0.0f, 3.0f);
                uint _1278 = uint(_1275);
                uint _1286 = uint(_1277);
                float _1292 = dot(_1256, _332[_1286]) / _47_m1[_1286].w;
                float _1310;
                if (((_1277 > _1275) && (_1292 >= 0.0f)) && (_1292 <= 1.0f))
                {
                    _1310 = _1275 + step(frac(52.98291778564453125f * frac(dot(float2(_744) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1256, _332[_1278]) / _47_m1[_1278].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1310 = _1275;
                }
                float _1311 = clamp(_1310, 0.0f, 4.0f);
                float4 _1319 = mul(_47_m0[uint(_1311)], float4(_1198, 1.0f));
                float _1322 = _1319.z;
                float4 _1323 = float4(_1319.xy, _1322, _1311);
                float3 _1324 = _1323.xyz;
                bool3 _1325 = bool3(_1324.x <= 0.0f.xxx.x, _1324.y <= 0.0f.xxx.y, _1324.z <= 0.0f.xxx.z);
                bool3 _1326 = bool3(_1324.x >= 1.0f.xxx.x, _1324.y >= 1.0f.xxx.y, _1324.z >= 1.0f.xxx.z);
                bool _1332 = any(bool3(_1325.x || _1326.x, _1325.y || _1326.y, _1325.z || _1326.z)) || ((asuint(_1322) & 2147483647u) > 2139095040u);
                int _1333 = int(_1311);
                float2 _1348 = float4(_47_m3[_1333].xy + (_1323.xy * _47_m3[_1333].zw), _1322, _1311).xy;
                _1387 = _1332 ? 1.0f : (0.25f * (((_48.SampleCmpLevelZero(_24, float3(_1348 + (_47_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _351).xy, _1322) + _48.SampleCmpLevelZero(_24, float3(_1348 + (_47_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _351).xy, _1322)) + _48.SampleCmpLevelZero(_24, float3(_1348 + (_47_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _351).xy, _1322)) + _48.SampleCmpLevelZero(_24, float3(_1348 + (_47_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _351).xy, _1322)));
                _1388 = _1332;
            }
            else
            {
                _1387 = 1.0f;
                _1388 = false;
            }
            _1389 = _1387;
            _1390 = _1388;
        }
        else
        {
            _1389 = 1.0f;
            _1390 = false;
        }
        float _1590;
        float _1591;
        if ((_1232 < 1.0f) || (_47_m8.x > 0.5f))
        {
            float _1401 = 1.0f - clamp(dot(_613, _45_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1418 = float4((_1198 - (_45_m0.xyz * (_1401 * _47_m24.x))) + (_613 * (_1401 * _47_m24.y)), 1.0f);
            float4 _1419 = mul(_47_m23, _1418);
            float2 _1420 = _1419.xy;
            float _1588;
            if (all(bool2(_1420.x > 0.0f.xx.x, _1420.y > 0.0f.xx.y)) && all(bool2(_1420.x < 1.0f.xx.x, _1420.y < 1.0f.xx.y)))
            {
                uint _1439 = clamp(uint((floor(_1419.y * _47_m25.z) + _1419.x) * _47_m25.y), 0u, 127u);
                uint _1443 = asuint(_47_m27[_1439].x);
                float2 _1444 = spvUnpackHalf2x16(_1443);
                float _1445 = _1444.x;
                float _1587;
                if (_1445 >= 0.0f)
                {
                    float4x4 _1454 = _47_m22;
                    _1454[0].w = _47_m27[_1439].y;
                    _1454[1].w = _47_m27[_1439].z;
                    _1454[2].w = _47_m27[_1439].w;
                    float4 _1461 = mul(_1454, _1418);
                    float3 _1462 = _1461.xyz;
                    float _1586;
                    if (all(bool3(_1462.x > 0.0f.xxx.x, _1462.y > 0.0f.xxx.y, _1462.z > 0.0f.xxx.z)) && all(bool3(_1462.x < 1.0f.xxx.x, _1462.y < 1.0f.xxx.y, _1462.z < 1.0f.xxx.z)))
                    {
                        float2 _1474 = (_1461.xy * _47_m24.zw) + float2(_1445, spvUnpackHalf2x16(_1443 >> 16u).x);
                        float _1479 = _1461.z;
                        float2 _1485 = float4(_1474, _1479, 1.0f).xy * _47_m26.zw;
                        float2 _1487 = floor(_1485 + 0.5f.xx);
                        float2 _1488 = _1485 - _1487;
                        float _1489 = _1488.x;
                        float _1490 = _1489 + 0.5f;
                        float _1492 = (_1490 * _1490) * 0.5f;
                        float _1495 = min(_1489, 0.0f);
                        float _1499 = max(_1489, 0.0f);
                        float4 _1503 = float4(_1492 - _1489, (1.0f - _1489) - (_1495 * _1495), (_1489 + 1.0f) - (_1499 * _1499), _1492) * 0.44444000720977783203125f;
                        float _1504 = _1488.y;
                        float _1505 = _1504 + 0.5f;
                        float _1507 = (_1505 * _1505) * 0.5f;
                        float _1510 = min(_1504, 0.0f);
                        float _1514 = max(_1504, 0.0f);
                        float4 _1518 = float4(_1507 - _1504, (1.0f - _1504) - (_1510 * _1510), (_1504 + 1.0f) - (_1514 * _1514), _1507) * 0.44444000720977783203125f;
                        float2 _1520 = _1503.yw;
                        float2 _1521 = _1503.xz + _1520;
                        float2 _1523 = _1518.yw;
                        float2 _1524 = _1518.xz + _1523;
                        float2 _1530 = ((_1520 / _1521) + float2(-1.5f, 0.5f)) * _47_m26.xx;
                        float2 _1532 = ((_1523 / _1524) + float2(-1.5f, 0.5f)) * _47_m26.yy;
                        float2 _1534 = _1487 * _47_m26.xy;
                        float _1535 = _1530.x;
                        float _1536 = _1532.x;
                        float2 _1538 = _1534 + float2(_1535, _1536);
                        float _1539 = _1530.y;
                        float2 _1541 = _1534 + float2(_1539, _1536);
                        float _1542 = _1532.y;
                        float2 _1544 = _1534 + float2(_1535, _1542);
                        float2 _1546 = _1534 + float2(_1539, _1542);
                        float _1547 = _1521.x;
                        float _1548 = _1524.x;
                        float _1550 = _1521.y;
                        float _1552 = _1524.y;
                        _1586 = ((((_1547 * _1548) * _51.SampleCmpLevelZero(_24, float3(_1538, _351).xy, _1479)) + ((_1550 * _1548) * _51.SampleCmpLevelZero(_24, float3(_1541, _351).xy, _1479))) + ((_1547 * _1552) * _51.SampleCmpLevelZero(_24, float3(_1544, _351).xy, _1479))) + ((_1550 * _1552) * _51.SampleCmpLevelZero(_24, float3(_1546, _351).xy, _1479));
                    }
                    else
                    {
                        _1586 = 1.0f;
                    }
                    _1587 = _1586;
                }
                else
                {
                    _1587 = 1.0f;
                }
                _1588 = _1587;
            }
            else
            {
                _1588 = 1.0f;
            }
            _1590 = _1390 ? _1588 : _1389;
            _1591 = _1588;
        }
        else
        {
            _1590 = _1389;
            _1591 = 1.0f;
        }
        float _1594 = lerp(lerp(_1591, _1590, _1232), min(_1591, _1590), _47_m8.x);
        float _1643;
        if (_1594 > 0.001000000047497451305389404296875f)
        {
            float3 _1601 = _1198 - _17_m65.xyz;
            float2 _1611 = (_1601 + (_17_m68.xyz * _1601.y)).xz * _17_m66.z;
            float2 _1618 = _17_m67.xy * _17_m75.w;
            _1643 = _1594 * lerp(1.0f, lerp(_50.SampleLevel(_23, _1611 + _1618, 0.0f), _50.SampleLevel(_23, (_1611 * _17_m67.w) + _1618, 0.0f), smoothstep(_17_m66.x, _17_m66.y, length(_1601.xz)).xxxx).x, _17_m67.z);
        }
        else
        {
            _1643 = _1594;
        }
        _1648 = float2(lerp(_1643, _47_m7.z, _47_m7.w), _1643);
        break;
    } while(false);
    float _1653 = lerp(1.0f, min(1.0f, _1648.x), _47_m6.x);
    float4 _1798;
    if (_1653 > 0.001000000047497451305389404296875f)
    {
        float3 _1664 = reflect(-_421, _613);
        float3 _1665 = -_45_m0.xyz;
        float _1670 = dot(_1665, _1664);
        float3 _1672 = _1664 - (_1665 * _1670);
        bool3 _1674 = (_1670 < _45_m4.z).xxx;
        float3 _1682 = normalize((_1665 * _45_m4.z) + ((_1672 * rsqrt(max(6.103515625e-05f, dot(_1672, _1672)))) * _45_m4.y));
        float3 _1683 = float3(_1674.x ? _1682.x : _1664.x, _1674.y ? _1682.y : _1664.y, _1674.z ? _1682.z : _1664.z);
        float3 _1687 = _1683 + _421;
        float3 _1691 = _1687 * rsqrt(max(6.103515625e-05f, dot(_1687, _1687)));
        float _1692 = clamp(dot(_1683, _613), 0.0f, 1.0f);
        float _1694 = clamp(dot(_613, _1691), 0.0f, 1.0f);
        float _1698 = clamp(dot(_613, _421), 0.0f, 1.0f);
        float _1699 = _33_m63 * _33_m63;
        float _1700 = _1699 * _1699;
        float _1721 = (((_1694 * _1700) - _1694) * _1694) + 1.0f;
        float _1724 = 1.0f - clamp(dot(_421, _1691), 0.0f, 1.0f);
        float _1725 = _1724 * _1724;
        float _1727 = (_1724 * _1725) * _1725;
        float _1751 = 1.0f - _33_m63;
        float _1758 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1751 * (1.04997003078460693359375f + (_1751 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1751))))));
        float _1759 = 1.0f - _1758;
        float3 _1762 = _713 + ((1.0f.xxx - _713) * 0.0476190485060214996337890625f);
        float3 _1781 = clamp(clamp((min(((_713 * (1.0f - _1727)) + _1727.xxx) * ((_1700 / (_1721 * _1721)) * (0.5f / (((_1692 * sqrt(((((-_1698) * _1700) + _1698) * _1698) + _1700)) + (_1698 * sqrt(((((-_1692) * _1700) + _1692) * _1692) + _1700))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1762 * (((_54.SampleLevel(_22, (float2(_1698, _33_m63) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_22, (float2(_1692, _33_m63) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1758) / _1759)) * _1762) / (1.0f.xxx - (_1762 * _1759)))) * _45_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_647, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _33_m57;
        float3 _1785 = ((_1781 * _1692) + ((_709 * 1.0f) * _1692)) * _45_m1.xyz;
        float3 _1796 = lerp(_1785, _1785 * _52.SampleBias(_22, float2(_1653, 0.5f), _17_m16).xyz, (1.0f - _1653).xxx) * 1.0f;
        _1798 = float4(_1796.x, _1796.y, _1796.z, 0.0f.xxxx.w);
    }
    else
    {
        _1798 = 0.0f.xxxx;
    }
    float2 _1799 = float2(_744);
    float2 _1801 = floor(_1799 * 0.03125f);
    int _1809 = int((_1801.x + (_1801.y * _43_m5)) * 8.0f);
    float _1816 = floor(_745 - (_17_m3.y * _43_m11));
    float _1820 = clamp(_1816, 0.0f, _43_m7 - 1.0f);
    int _1822 = int(_1820 * 8.0f);
    float3 _1824;
    float _1827;
    _1824 = 0.0f.xxx;
    _1827 = 1.0f;
    float3 _1825;
    float _1828;
    [loop]
    for (int _1829 = 0; _1829 <= 7; _1824 = _1825, _1827 = _1828, _1829++)
    {
        uint _1847 = (_1816 <= _1820) ? (_27.Load(uint(_1809 + _1829) * 4 + 0) & _27.Load(uint((_17_m21.y + _1822) + _1829) * 4 + 0)) : 0u;
        uint _1848 = uint(_1829);
        float3 _1852;
        _1828 = _1827;
        _1852 = 0.0f.xxx;
        uint _1855;
        float _1850;
        float3 _1853;
        [loop]
        for (uint _1854 = _1847; _1854 != 0u; _1828 = _1850, _1852 = _1853, _1854 = _1855)
        {
            uint _1859 = firstbitlow(_1854);
            _1855 = _1854 ^ (1u << (_1859 & 31u));
            int _1865 = int((32u * _1848) + _1859) * 8;
            int _1868 = _1865 + 1;
            int _1871 = _1865 + 2;
            int _1874 = _1865 + 3;
            int _1877 = _1865 + 5;
            int _1880 = _1865 + 6;
            int _1883 = _1865 + 7;
            uint _1887 = uint(_45_m6[_1877].w);
            float _1962;
            if ((_1887 & 1u) == 1u)
            {
                uint _1893 = asuint(_45_m6[_1877].x);
                uint _1900 = asuint(_45_m6[_1877].y);
                uint _1907 = asuint(_45_m6[_1877].z);
                uint _1914 = asuint(_45_m6[_1880].x);
                uint _1921 = asuint(_45_m6[_1880].y);
                uint _1928 = asuint(_45_m6[_1880].z);
                float3 _1947 = abs(mul(float4(_394 - _45_m6[_1868].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1893).x, spvUnpackHalf2x16(_1907).x, spvUnpackHalf2x16(_1921).x, 0.0f), float4(spvUnpackHalf2x16(_1893 >> 16u).x, spvUnpackHalf2x16(_1907 >> 16u).x, spvUnpackHalf2x16(_1921 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1900).x, spvUnpackHalf2x16(_1914).x, spvUnpackHalf2x16(_1928).x, 0.0f), float4(spvUnpackHalf2x16(_1900 >> 16u).x, spvUnpackHalf2x16(_1914 >> 16u).x, spvUnpackHalf2x16(_1928 >> 16u).x, 0.0f))).xyz);
                float _1954 = _45_m6[_1883].x * 0.5f;
                float _1960 = 1.0f - clamp((max(max(_1947.x, _1947.y), _1947.z) - (_1954 + 0.5f)) / (0.5f - _1954), 0.0f, 1.0f);
                _1962 = _1960 * _1960;
            }
            else
            {
                _1962 = 1.0f;
            }
            bool _1966 = _45_m6[_1874].z > 0.5f;
            if ((false || (_1962 < 0.001000000047497451305389404296875f)) || _1966)
            {
                _1850 = _1828;
                _1853 = _1852;
                continue;
            }
            float _3080;
            float3 _3081;
            if (_45_m6[_1865].w < 1.5f)
            {
                float3 _2454 = float3(0.100000001490116119384765625f, _33_m63, 1.0f);
                float _2463 = (0.5f + (0.5f * _45_m6[_1871].y)) - abs(_45_m6[_1871].x);
                float _2464 = _45_m6[_1871].y - _2463;
                float _2471 = abs(max((1.0f - abs(_2463)) - abs(_2464), 0.00048828125f));
                float3 _2475 = normalize(float3(_2463, _2464, (_45_m6[_1871].x >= 0.0f) ? _2471 : (-_2471)));
                float3 _2476 = _45_m6[_1868].xyz - _394;
                float _2477 = dot(_2476, _2476);
                float _2478 = rsqrt(_2477);
                float3 _2479 = _2476 * _2478;
                float _2483 = clamp(_45_m6[_1883].y * _2478, 0.0f, 1.0f);
                int _2488 = int(_45_m6[_1883].w);
                float3 _2489 = _2475 * _45_m6[_1871].z;
                float3 _2490 = _2489 * 0.5f;
                float3 _2491 = _2476 - _2490;
                float3 _2492 = _2476 + _2490;
                bool _2495 = (uint(_45_m6[_1865].w) & 1u) == 0u;
                bool _2498 = _2495 || ((_1887 & 2u) != 0u);
                bool _2501 = (!_2495) && (_45_m6[_1871].z > 0.0f);
                float _2520;
                float _2521;
                if (_2501)
                {
                    float _2505 = length(_2491);
                    float _2506 = length(_2492);
                    _2520 = clamp(0.5f * ((dot(_613, _2491) / _2505) + (dot(_613, _2492) / _2506)), 0.0f, 1.0f);
                    _2521 = 1.0f / ((((_2505 * _2506) + dot(_2491, _2492)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2520 = clamp(dot(_613, _2479), 0.0f, 1.0f);
                    _2521 = 1.0f;
                }
                float _2543;
                if (_45_m6[_1880].w < 0.0f)
                {
                    float _2537 = _2477 * (_45_m6[_1868].w * _45_m6[_1868].w);
                    float _2540 = clamp(1.0f - (_2537 * _2537), 0.0f, 1.0f);
                    _2543 = lerp(1.0f / (_2477 + 1.0f), _2521, float(_2501)) * (_2540 * _2540);
                }
                else
                {
                    float3 _2526 = _2476 * _45_m6[_1868].w;
                    _2543 = _2521 * pow(1.0f - clamp(dot(_2526, _2526), 0.0f, 1.0f), _45_m6[_1880].w);
                }
                float _2549 = clamp((dot(_2479, -_2475) - _45_m6[_1871].z) * _45_m6[_1871].w, 0.0f, 1.0f);
                float _2553 = _2543 * lerp(1.0f, _2549 * _2549, float(_2495));
                float _2653;
                if ((!_2501) && (_2488 >= 0))
                {
                    uint _2559 = uint(_2488);
                    float2 _2646;
                    [branch]
                    if (_2495)
                    {
                        float4 _2636 = mul(_59_m1[_2559], _398);
                        _2646 = _59_m0[_2559].xy + (clamp(_2636.xy / _2636.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2559].zw);
                    }
                    else
                    {
                        float3 _2573 = mul(float4(-_2476, 0.0f), _59_m1[_2559]).xyz;
                        float3 _359 = _2573;
                        float3 _358 = _2573;
                        float3 _357 = abs(_2573);
                        uint _2582 = uint(int(_357.y > _357.x));
                        uint _2588 = (_357.z > _357[_2582]) ? 2u : _2582;
                        uint _2594 = (_2588 * 2u) + uint(_358[_2588] < 0.0f);
                        float _2598 = abs(_359[_2594 / 2u]);
                        float _2618 = 0.5f - (0.000244140625f / _59_m0[_2559].w);
                        _2646 = _59_m0[_2559].xy + (clamp(float2((float(_2594) + ((((_359[uint(_333[_2594].x)] * _334[_2594].x) / _2598) * _2618) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_359[uint(_333[_2594].y)] * _334[_2594].y) / _2598) * _2618)), 0.0f.xx, 1.0f.xx) * _59_m0[_2559].zw);
                    }
                    _2653 = _2553 * _57.SampleLevel(_22, _2646, 0.0f).x;
                }
                else
                {
                    _2653 = _2553;
                }
                bool _2654 = _2653 > 0.0f;
                float _2942;
                if (_2654)
                {
                    int _2706;
                    if (_2498)
                    {
                        _2706 = int(_45_m6[_1874].x);
                    }
                    else
                    {
                        uint _2661 = asuint(_45_m6[_1871].w);
                        uint _2663 = asuint(_45_m6[_1874].x);
                        float3 _2664 = _394 - _45_m6[_1868].xyz;
                        float3 _2665 = abs(_2664);
                        float _2666 = _2665.x;
                        float _2667 = _2665.y;
                        float _2669 = _2665.z;
                        int _2701;
                        if ((_2666 > _2667) && (_2666 > _2669))
                        {
                            _2701 = int((_2664.x > 0.0f) ? (_2661 >> 24u) : ((_2661 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2693;
                            if (_2667 > _2669)
                            {
                                _2693 = int((_2664.y > 0.0f) ? ((_2661 >> 8u) & 255u) : (_2661 & 255u));
                            }
                            else
                            {
                                _2693 = int((_2664.z > 0.0f) ? ((_2663 >> 8u) & 255u) : (_2663 & 255u));
                            }
                            _2701 = _2693;
                        }
                        _2706 = (_2701 < 80) ? _2701 : (-1);
                    }
                    float4 _2723 = mul(_47_m10[_2706], float4((_394 - ((-_2479) * _47_m11[_2706].x)) + (_613 * (_47_m11[_2706].y * 5.0f)), 1.0f));
                    float _2724 = _2723.w;
                    float3 _2727 = _2723.xyz / _2724.xxx;
                    float2 _2728 = _2727.xy;
                    float3 _2736 = _2727.xyz;
                    bool3 _2737 = bool3(_2736.x <= 0.0f.xxx.x, _2736.y <= 0.0f.xxx.y, _2736.z <= 0.0f.xxx.z);
                    bool3 _2738 = bool3(_2736.x >= 1.0f.xxx.x, _2736.y >= 1.0f.xxx.y, _2736.z >= 1.0f.xxx.z);
                    float _2741 = _2727.z;
                    float2 _2752 = ((_2728 * (_47_m12[_2706].zw - _47_m12[_2706].xy)) + _47_m12[_2706].xy).xy * _47_m13.zw;
                    float2 _2754 = floor(_2752 + 0.5f.xx);
                    float2 _2755 = _2752 - _2754;
                    float _2756 = _2755.x;
                    float _2757 = _2756 + 0.5f;
                    float _2758 = _2757 * _2757;
                    float _2761 = 1.0f - _2756;
                    float _2762 = min(_2756, 0.0f);
                    float _2765 = _2756 + 1.0f;
                    float _2766 = max(_2756, 0.0f);
                    float _2777 = _2755.y;
                    float _2778 = _2777 + 0.5f;
                    float _2779 = _2778 * _2778;
                    float _2782 = 1.0f - _2777;
                    float _2783 = min(_2777, 0.0f);
                    float _2786 = _2777 + 1.0f;
                    float _2787 = max(_2777, 0.0f);
                    float3 _2799 = float3(0.1599999964237213134765625f * _2761, 0.1599999964237213134765625f * ((_2765 - (_2766 * _2766)) + 1.0f), _2758 * 0.07999999821186065673828125f);
                    float3 _2800 = float3(0.1599999964237213134765625f * ((_2758 * 0.5f) - _2756), 0.1599999964237213134765625f * ((_2761 - (_2762 * _2762)) + 1.0f), 0.1599999964237213134765625f * _2765) + _2799;
                    float3 _2802 = float3(0.1599999964237213134765625f * _2782, 0.1599999964237213134765625f * ((_2786 - (_2787 * _2787)) + 1.0f), _2779 * 0.07999999821186065673828125f);
                    float3 _2803 = float3(0.1599999964237213134765625f * ((_2779 * 0.5f) - _2777), 0.1599999964237213134765625f * ((_2782 - (_2783 * _2783)) + 1.0f), 0.1599999964237213134765625f * _2786) + _2802;
                    float3 _2809 = ((_2799 / _2800) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.xxx;
                    float3 _2811 = ((_2802 / _2803) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.yyy;
                    float2 _2813 = _2754 * _47_m13.xy;
                    float _2814 = _2809.x;
                    float _2815 = _2811.x;
                    float _2818 = _2809.y;
                    float _2821 = _2809.z;
                    float _2824 = _2811.y;
                    float _2831 = _2811.z;
                    float _2838 = _2800.x;
                    float _2839 = _2803.x;
                    float _2841 = _2800.y;
                    float _2843 = _2800.z;
                    float _2845 = _2803.y;
                    float _2849 = _2803.z;
                    float _2907 = (((((((_2838 * _2839) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2814, _2815), _351).xy, _2741)) + ((_2841 * _2839) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2818, _2815), _351).xy, _2741))) + ((_2843 * _2839) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2821, _2815), _351).xy, _2741))) + ((_2838 * _2845) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2814, _2824), _351).xy, _2741))) + ((_2841 * _2845) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2818, _2824), _351).xy, _2741))) + ((_2843 * _2845) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2821, _2824), _351).xy, _2741))) + ((_2838 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2814, _2831), _351).xy, _2741));
                    float2 _2928 = min(_2728, 1.0f.xx - _2728);
                    _2942 = (_2706 >= 0) ? lerp(1.0f, (any(bool3(_2737.x || _2738.x, _2737.y || _2738.y, _2737.z || _2738.z)) || ((asuint(_2741) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2907 + ((_2841 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2818, _2831), _351).xy, _2741))) + ((_2843 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2813 + float2(_2821, _2831), _351).xy, _2741))), _2498 ? min(_47_m11[_2706].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_47_m11[_2706].z - _2724) * 0.25f, min(_2928.x, _2928.y)))) : _47_m11[_2706].w) : 1.0f;
                }
                else
                {
                    _2942 = 1.0f;
                }
                float3 _2967;
                float3 _2968;
                if (_2501)
                {
                    float3 _2945 = _2454 * _2454;
                    float3 _2947 = reflect(-_421, _613);
                    float _2956 = dot(_2947, _2489);
                    _2967 = _2945 / clamp(_2945 + (0.5f * clamp(_45_m6[_1871].z * _2478, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2968 = normalize(_2491 + (_2489 * clamp(dot(_2491, (_2947 * _2956) - _2489) / ((_45_m6[_1871].z * _45_m6[_1871].z) - (_2956 * _2956)), 0.0f, 1.0f)));
                }
                else
                {
                    _2967 = 1.0f.xxx;
                    _2968 = _2479;
                }
                float3 _2969 = _2968 + _421;
                float3 _2973 = _2969 * rsqrt(max(6.103515625e-05f, dot(_2969, _2969)));
                float3 _3079;
                if (_2654)
                {
                    float _2976 = clamp(_2520, 0.0f, 1.0f);
                    float _2978 = clamp(dot(_613, _2973), 0.0f, 1.0f);
                    float _2980 = clamp(dot(_421, _2973), 0.0f, 1.0f);
                    float _2982 = clamp(dot(_613, _421), 0.0f, 1.0f);
                    float _2983 = _33_m63 * _33_m63;
                    float _2993;
                    if (_2483 > 0.0f)
                    {
                        _2993 = clamp(_2983 + ((_2483 * _2483) / ((_2980 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2993 = _2983;
                    }
                    float _2994 = _2993 * _2993;
                    float _3015 = (((_2978 * _2994) - _2978) * _2978) + 1.0f;
                    float _3020 = 1.0f - _2980;
                    float _3021 = _3020 * _3020;
                    float _3023 = (_3020 * _3021) * _3021;
                    float _3047 = 1.0f - _33_m63;
                    float _3054 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3047 * (1.04997003078460693359375f + (_3047 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3047))))));
                    float _3055 = 1.0f - _3054;
                    float3 _3058 = _713 + ((1.0f.xxx - _713) * 0.0476190485060214996337890625f);
                    float3 _3077 = (clamp((min(((_713 * (1.0f - _3023)) + _3023.xxx) * (((_2994 / (_3015 * _3015)) * _2967.y) * (0.5f / (((_2976 * sqrt(((((-_2982) * _2994) + _2982) * _2982) + _2994)) + (_2982 * sqrt(((((-_2976) * _2994) + _2976) * _2976) + _2994))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3058 * (((_54.SampleLevel(_22, (float2(_2982, _33_m63) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_22, (float2(_2976, _33_m63) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3054) / _3055)) * _3058) / (1.0f.xxx - (_3058 * _3055)))) * _45_m6[_1883].z, 0.0f.xxx, 1000.0f.xxx) * _2520) + ((_709 * _2967.z) * _2520);
                    _3079 = _3077 * (((_45_m6[_1865].xyz * _2653) * _2942) * _1962);
                }
                else
                {
                    _3079 = 0.0f.xxx;
                }
                _3080 = _1828;
                _3081 = _3079;
            }
            else
            {
                float _2452;
                do
                {
                    if (_1966)
                    {
                        _2452 = 1.0f;
                        break;
                    }
                    float _1986 = (0.5f + (0.5f * _45_m6[_1871].y)) - abs(_45_m6[_1871].x);
                    float _1987 = _45_m6[_1871].y - _1986;
                    float _1994 = abs(max((1.0f - abs(_1986)) - abs(_1987), 0.00048828125f));
                    float3 _1998 = normalize(float3(_1986, _1987, (_45_m6[_1871].x >= 0.0f) ? _1994 : (-_1994)));
                    float3 _1999 = _45_m6[_1868].xyz - _394;
                    float _2000 = dot(_1999, _1999);
                    float3 _2002 = _1999 * rsqrt(_2000);
                    int _2005 = int(_45_m6[_1883].w);
                    float3 _2007 = (_1998 * _45_m6[_1871].z) * 0.5f;
                    float3 _2008 = _1999 - _2007;
                    float3 _2009 = _1999 + _2007;
                    bool _2012 = (uint(_45_m6[_1865].w) & 1u) == 0u;
                    bool _2015 = _2012 || ((_1887 & 2u) != 0u);
                    bool _2018 = (!_2012) && (_45_m6[_1871].z > 0.0f);
                    float _2030;
                    if (_2018)
                    {
                        _2030 = 1.0f / ((((length(_2008) * length(_2009)) + dot(_2008, _2009)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2030 = 1.0f;
                    }
                    float _2052;
                    if (_45_m6[_1880].w < 0.0f)
                    {
                        float _2046 = _2000 * (_45_m6[_1868].w * _45_m6[_1868].w);
                        float _2049 = clamp(1.0f - (_2046 * _2046), 0.0f, 1.0f);
                        _2052 = lerp(1.0f / (_2000 + 1.0f), _2030, float(_2018)) * (_2049 * _2049);
                    }
                    else
                    {
                        float3 _2035 = _1999 * _45_m6[_1868].w;
                        _2052 = _2030 * pow(1.0f - clamp(dot(_2035, _2035), 0.0f, 1.0f), _45_m6[_1880].w);
                    }
                    float _2058 = clamp((dot(_2002, -_1998) - _45_m6[_1871].z) * _45_m6[_1871].w, 0.0f, 1.0f);
                    float _2062 = _2052 * lerp(1.0f, _2058 * _2058, float(_2012));
                    float _2162;
                    if ((!_2018) && (_2005 >= 0))
                    {
                        uint _2068 = uint(_2005);
                        float2 _2155;
                        [branch]
                        if (_2012)
                        {
                            float4 _2145 = mul(_59_m1[_2068], _398);
                            _2155 = _59_m0[_2068].xy + (clamp(_2145.xy / _2145.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2068].zw);
                        }
                        else
                        {
                            float3 _2082 = mul(float4(-_1999, 0.0f), _59_m1[_2068]).xyz;
                            float3 _362 = _2082;
                            float3 _361 = _2082;
                            float3 _360 = abs(_2082);
                            uint _2091 = uint(int(_360.y > _360.x));
                            uint _2097 = (_360.z > _360[_2091]) ? 2u : _2091;
                            uint _2103 = (_2097 * 2u) + uint(_361[_2097] < 0.0f);
                            float _2107 = abs(_362[_2103 / 2u]);
                            float _2127 = 0.5f - (0.000244140625f / _59_m0[_2068].w);
                            _2155 = _59_m0[_2068].xy + (clamp(float2((float(_2103) + ((((_362[uint(_333[_2103].x)] * _334[_2103].x) / _2107) * _2127) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_362[uint(_333[_2103].y)] * _334[_2103].y) / _2107) * _2127)), 0.0f.xx, 1.0f.xx) * _59_m0[_2068].zw);
                        }
                        _2162 = _2062 * _57.SampleLevel(_22, _2155, 0.0f).x;
                    }
                    else
                    {
                        _2162 = _2062;
                    }
                    float _2451;
                    if (_2162 > 0.0f)
                    {
                        int _2215;
                        if (_2015)
                        {
                            _2215 = int(_45_m6[_1874].x);
                        }
                        else
                        {
                            uint _2170 = asuint(_45_m6[_1871].w);
                            uint _2172 = asuint(_45_m6[_1874].x);
                            float3 _2173 = _394 - _45_m6[_1868].xyz;
                            float3 _2174 = abs(_2173);
                            float _2175 = _2174.x;
                            float _2176 = _2174.y;
                            float _2178 = _2174.z;
                            int _2210;
                            if ((_2175 > _2176) && (_2175 > _2178))
                            {
                                _2210 = int((_2173.x > 0.0f) ? (_2170 >> 24u) : ((_2170 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2202;
                                if (_2176 > _2178)
                                {
                                    _2202 = int((_2173.y > 0.0f) ? ((_2170 >> 8u) & 255u) : (_2170 & 255u));
                                }
                                else
                                {
                                    _2202 = int((_2173.z > 0.0f) ? ((_2172 >> 8u) & 255u) : (_2172 & 255u));
                                }
                                _2210 = _2202;
                            }
                            _2215 = (_2210 < 80) ? _2210 : (-1);
                        }
                        float4 _2232 = mul(_47_m10[_2215], float4((_394 - ((-_2002) * _47_m11[_2215].x)) + (_613 * (_47_m11[_2215].y * 5.0f)), 1.0f));
                        float _2233 = _2232.w;
                        float3 _2236 = _2232.xyz / _2233.xxx;
                        float2 _2237 = _2236.xy;
                        float3 _2245 = _2236.xyz;
                        bool3 _2246 = bool3(_2245.x <= 0.0f.xxx.x, _2245.y <= 0.0f.xxx.y, _2245.z <= 0.0f.xxx.z);
                        bool3 _2247 = bool3(_2245.x >= 1.0f.xxx.x, _2245.y >= 1.0f.xxx.y, _2245.z >= 1.0f.xxx.z);
                        float _2250 = _2236.z;
                        float2 _2261 = ((_2237 * (_47_m12[_2215].zw - _47_m12[_2215].xy)) + _47_m12[_2215].xy).xy * _47_m13.zw;
                        float2 _2263 = floor(_2261 + 0.5f.xx);
                        float2 _2264 = _2261 - _2263;
                        float _2265 = _2264.x;
                        float _2266 = _2265 + 0.5f;
                        float _2267 = _2266 * _2266;
                        float _2270 = 1.0f - _2265;
                        float _2271 = min(_2265, 0.0f);
                        float _2274 = _2265 + 1.0f;
                        float _2275 = max(_2265, 0.0f);
                        float _2286 = _2264.y;
                        float _2287 = _2286 + 0.5f;
                        float _2288 = _2287 * _2287;
                        float _2291 = 1.0f - _2286;
                        float _2292 = min(_2286, 0.0f);
                        float _2295 = _2286 + 1.0f;
                        float _2296 = max(_2286, 0.0f);
                        float3 _2308 = float3(0.1599999964237213134765625f * _2270, 0.1599999964237213134765625f * ((_2274 - (_2275 * _2275)) + 1.0f), _2267 * 0.07999999821186065673828125f);
                        float3 _2309 = float3(0.1599999964237213134765625f * ((_2267 * 0.5f) - _2265), 0.1599999964237213134765625f * ((_2270 - (_2271 * _2271)) + 1.0f), 0.1599999964237213134765625f * _2274) + _2308;
                        float3 _2311 = float3(0.1599999964237213134765625f * _2291, 0.1599999964237213134765625f * ((_2295 - (_2296 * _2296)) + 1.0f), _2288 * 0.07999999821186065673828125f);
                        float3 _2312 = float3(0.1599999964237213134765625f * ((_2288 * 0.5f) - _2286), 0.1599999964237213134765625f * ((_2291 - (_2292 * _2292)) + 1.0f), 0.1599999964237213134765625f * _2295) + _2311;
                        float3 _2318 = ((_2308 / _2309) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.xxx;
                        float3 _2320 = ((_2311 / _2312) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.yyy;
                        float2 _2322 = _2263 * _47_m13.xy;
                        float _2323 = _2318.x;
                        float _2324 = _2320.x;
                        float _2327 = _2318.y;
                        float _2330 = _2318.z;
                        float _2333 = _2320.y;
                        float _2340 = _2320.z;
                        float _2347 = _2309.x;
                        float _2348 = _2312.x;
                        float _2350 = _2309.y;
                        float _2352 = _2309.z;
                        float _2354 = _2312.y;
                        float _2358 = _2312.z;
                        float _2416 = (((((((_2347 * _2348) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2323, _2324), _351).xy, _2250)) + ((_2350 * _2348) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2327, _2324), _351).xy, _2250))) + ((_2352 * _2348) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2330, _2324), _351).xy, _2250))) + ((_2347 * _2354) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2323, _2333), _351).xy, _2250))) + ((_2350 * _2354) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2327, _2333), _351).xy, _2250))) + ((_2352 * _2354) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2330, _2333), _351).xy, _2250))) + ((_2347 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2323, _2340), _351).xy, _2250));
                        float2 _2437 = min(_2237, 1.0f.xx - _2237);
                        _2451 = (_2215 >= 0) ? lerp(1.0f, (any(bool3(_2246.x || _2247.x, _2246.y || _2247.y, _2246.z || _2247.z)) || ((asuint(_2250) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2416 + ((_2350 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2327, _2340), _351).xy, _2250))) + ((_2352 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2322 + float2(_2330, _2340), _351).xy, _2250))), _2015 ? min(_47_m11[_2215].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_47_m11[_2215].z - _2233) * 0.25f, min(_2437.x, _2437.y)))) : _47_m11[_2215].w) : 1.0f;
                    }
                    else
                    {
                        _2451 = 1.0f;
                    }
                    _2452 = _2451;
                    break;
                } while(false);
                _3080 = _1828 * _2452;
                _3081 = 0.0f.xxx;
            }
            _1850 = _3080;
            _1853 = _1852 + _3081;
        }
        _1825 = _1824 + _1852;
    }
    float3 _3091 = -_421;
    float _3092 = 1.0f - _33_m1;
    float _3107 = _394.y * _17_m46.w;
    float _3112 = max(0.00999999977648258209228515625f, _3107 + _17_m47.w);
    float3 _3126 = exp(_17_m45.xyz * ((-max(0.0f, (_422 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_3112)) / _3112) * exp(_3107 + _17_m48.w))));
    float _3129 = dot(_3091, _17_m44.xyz);
    float _3135 = _17_m45.w * _17_m45.w;
    float _3139 = (1.0f + _3135) - ((2.0f * _17_m45.w) * _3129);
    float3 _3471;
    float _3472;
    if (_17_m55.z > 0.0f)
    {
        uint3 _3297 = (uint3(int3(int(_744.x), int(_744.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3298 = _3297.y;
        uint _3299 = _3297.z;
        uint _3302 = _3297.x + (_3298 * _3299);
        uint _3304 = _3298 + (_3299 * _3302);
        uint _3306 = _3299 + (_3302 * _3304);
        uint _3308 = _3302 + (_3304 * _3306);
        float _3332 = dot(_3091, -_15_m0[2].xyz);
        float3 _3342 = _394 - _15_m11.xyz;
        float _3344 = (_17_m55.w * ((_3332 > 5.9604644775390625e-08f) ? (1.0f / _3332) : 0.0f)) * (1.0f / _422);
        float _3345 = _3342.y;
        float _3346 = _3344 * _3345;
        float _3348 = _15_m11.y + _3346;
        float _3349 = _3345 - _3346;
        float _3351 = (1.0f - _3344) * _422;
        float _3365 = max(-127.0f, _17_m49.z * _3349);
        float _3389 = max(-127.0f, _17_m52.x * _3349);
        float _3400 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_3348 - _17_m49.x)))) * ((abs(_3365) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3365)) / _3365) : (0.693147182464599609375f - (0.2402265071868896484375f * _3365)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_3348 - _17_m52.z)))) * ((abs(_3389) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3389)) / _3389) : (0.693147182464599609375f - (0.2402265071868896484375f * _3389))));
        float _3422 = clamp((_422 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3425 = clamp((max(clamp(exp2(-(_3400 * _3351)), 0.0f, 1.0f), _17_m51.w) + clamp((_422 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3422, 0.0f, 1.0f);
        float4 _3465 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _35.SampleLevel(_22, float3((_1799 + ((((float3(uint3(_3308, _3304 + (_3306 * _3308), _355) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_745 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_745 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3471 = _3465.xyz + (((_17_m51.xyz * (1.0f - _3425)) + (((_17_m54.xyz * pow(clamp(dot(_421, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3400 * max(_3351 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3422))) * _3465.w);
        _3472 = _3465.w * _3425;
    }
    else
    {
        float3 _3169 = _394 - _15_m11.xyz;
        float _3171 = _3169.y;
        float _3185 = max(-127.0f, _17_m49.z * _3171);
        float _3209 = max(-127.0f, _17_m52.x * _3171);
        float _3220 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_3185) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3185)) / _3185) : (0.693147182464599609375f - (0.2402265071868896484375f * _3185)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_3209) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3209)) / _3209) : (0.693147182464599609375f - (0.2402265071868896484375f * _3209))));
        float _3242 = clamp((_422 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3245 = clamp((max(clamp(exp2(-(_3220 * _422)), 0.0f, 1.0f), _17_m51.w) + clamp((_422 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3242, 0.0f, 1.0f);
        _3471 = (_17_m51.xyz * (1.0f - _3245)) + (((_17_m54.xyz * pow(clamp(dot(_421, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3220 * max(_422 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3242));
        _3472 = _3245;
    }
    float3 _3481 = (((((((lerp(dot(_1181, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1181, _1187) * _17_m76.xyz) * _33_m11) + (_1181 * _1195)) + (_648 * (1.0f - _33_m61))) + (_1798.xyz + (_1824 * _1827)).xyz).xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3126 * _3472)) : (_3126 * _3472))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3129 * _3129)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _3135) / max((12.56637096405029296875f * _3139) * sqrt(_3139), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3126)) * _3472 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3471 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _3092)).xyz * _647;
    float4 _3482 = float4(_3481.x, _3481.y, _3481.z, _352.w);
    float _3483 = _647 * _3092;
    _3482.w = _3483;
    float4 _3541;
    [branch]
    if (_17_m137.x > 0.0f)
    {
        float4 _3494 = _56.SampleLevel(_22, _381, 0.0f);
        float _3495 = _3494.x;
        float _3504 = (0.100000001490116119384765625f + ((9999.900390625f * (1.0f - _3495)) / (1.0f + (50.0f * _3495)))) + _17_m137.w;
        float _3514 = min((gl_FragCoord.z == 0.0f) ? 10000.0f : (1.0f / ((_17_m2.z * gl_FragCoord.z) + _17_m2.w)), 10000.0f);
        float4 _3525 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_22, _381, 0.0f), clamp((_3514 - _3504) * _17_m137.z, 0.0f, 1.0f).xxxx);
        float4 _3540;
        [flatten]
        if (_3514 > _3504)
        {
            float3 _3538 = ((_3525.xyz * _3483) * max(0.0f, 1.0f - float(int(_33_m1)))) + (_3482.xyz * _3525.w);
            _3540 = float4(_3538.x, _3538.y, _3538.z, _3482.w);
        }
        else
        {
            _3540 = _3482;
        }
        _3541 = _3540;
    }
    else
    {
        _3541 = _3482;
    }
    float3 _3549 = ((lerp(dot(_3541.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3541.xyz, _1187) * _17_m76.xyz) * _33_m11) + (_3541.xyz * _1195);
    float2 _3560 = min(_706, 1.0f.xx);
    float4 _3561 = float4(_3560.x, _3560.y, _352.z, _352.w);
    _3561.z = float(clamp(max(dot(_3549.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3541.w, _3541.w) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3561.w = (_33_m2 * _33_m0) * float(clamp(max(dot(_648, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _647, _647) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3549.x, _3549.y, _3549.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _12 = float4(renodx_output_color, _3541.w);
    _13 = _3561;
    if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._12 = _12;
    stage_output._13 = _13;
    return stage_output;
}

#include "../shared.h"

// Vulkan shader 0xAC8EA5CE, decompiled from the matching game shader dump.

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

static float _363 = 0.0f;
static float4 _364 = 0.0f.xxxx;
static float3 _365 = 0.0f.xxx;
static uint _368 = 0u;

static const float4 _342[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _343[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _344[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]] cbuffer _15_16 : register(b12)
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

[[vk::binding(16, 0)]] cbuffer _17_18 : register(b16)
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

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _30 : register(t50);
[[vk::binding(0, 1)]] cbuffer _37_38 : register(b0)
{
    float _38_m0 : packoffset(c0);
    float _38_m1 : packoffset(c0.y);
    float _38_m2 : packoffset(c0.z);
    float _38_m3 : packoffset(c0.w);
    float _38_m4 : packoffset(c1);
    float _38_m5 : packoffset(c1.y);
    float _38_m6 : packoffset(c1.z);
    float _38_m7 : packoffset(c1.w);
    float _38_m8 : packoffset(c2);
    float _38_m9 : packoffset(c2.y);
    float _38_m10 : packoffset(c2.z);
    float _38_m11 : packoffset(c2.w);
    float _38_m12 : packoffset(c3);
    float _38_m13 : packoffset(c3.y);
    float _38_m14 : packoffset(c3.z);
    float _38_m15 : packoffset(c3.w);
    float4 _38_m16 : packoffset(c4);
    float _38_m17 : packoffset(c5);
    float _38_m18 : packoffset(c5.y);
    float _38_m19 : packoffset(c5.z);
    float _38_m20 : packoffset(c5.w);
    float4 _38_m21 : packoffset(c6);
    float4 _38_m22 : packoffset(c7);
    float4 _38_m23 : packoffset(c8);
    float4 _38_m24 : packoffset(c9);
    float4 _38_m25 : packoffset(c10);
    float _38_m26 : packoffset(c11);
    float _38_m27 : packoffset(c11.y);
    float _38_m28 : packoffset(c11.z);
    float _38_m29 : packoffset(c11.w);
    float4 _38_m30 : packoffset(c12);
    float4 _38_m31 : packoffset(c13);
    float4 _38_m32 : packoffset(c14);
    float4 _38_m33 : packoffset(c15);
    float _38_m34 : packoffset(c16);
    float _38_m35 : packoffset(c16.y);
    float _38_m36 : packoffset(c16.z);
    float _38_m37 : packoffset(c16.w);
    float _38_m38 : packoffset(c17);
    float _38_m39 : packoffset(c17.y);
    float _38_m40 : packoffset(c17.z);
    float _38_m41 : packoffset(c17.w);
    float _38_m42 : packoffset(c18);
    float _38_m43 : packoffset(c18.y);
    float _38_m44 : packoffset(c18.z);
    float _38_m45 : packoffset(c18.w);
    float _38_m46 : packoffset(c19);
    float _38_m47 : packoffset(c19.y);
    float _38_m48 : packoffset(c19.z);
    float _38_m49 : packoffset(c19.w);
    float _38_m50 : packoffset(c20);
    float _38_m51 : packoffset(c20.y);
    float _38_m52 : packoffset(c20.z);
    float _38_m53 : packoffset(c20.w);
    float4 _38_m54 : packoffset(c21);
    float4 _38_m55 : packoffset(c22);
    float4 _38_m56 : packoffset(c23);
    float4 _38_m57 : packoffset(c24);
    float4 _38_m58 : packoffset(c25);
    float _38_m59 : packoffset(c26);
    float _38_m60 : packoffset(c26.y);
    float _38_m61 : packoffset(c26.z);
    float _38_m62 : packoffset(c26.w);
    float _38_m63 : packoffset(c27);
    float _38_m64 : packoffset(c27.y);
    float _38_m65 : packoffset(c27.z);
    float _38_m66 : packoffset(c27.w);
    float _38_m67 : packoffset(c28);
    float _38_m68 : packoffset(c28.y);
    float _38_m69 : packoffset(c28.z);
    float _38_m70 : packoffset(c28.w);
    float _38_m71 : packoffset(c29);
    float _38_m72 : packoffset(c29.y);
    float _38_m73 : packoffset(c29.z);
    float _38_m74 : packoffset(c29.w);
    float _38_m75 : packoffset(c30);
    float _38_m76 : packoffset(c30.y);
    float _38_m77 : packoffset(c30.z);
    float _38_m78 : packoffset(c30.w);
    float _38_m79 : packoffset(c31);
    float _38_m80 : packoffset(c31.y);
    float _38_m81 : packoffset(c31.z);
    float _38_m82 : packoffset(c31.w);
    float _38_m83 : packoffset(c32);
    float4 _38_m84 : packoffset(c33);
    float4 _38_m85 : packoffset(c34);
};

[[vk::binding(47, 0)]] cbuffer _47_48 : register(b47)
{
    int _48_m0 : packoffset(c0);
    int _48_m1 : packoffset(c0.y);
    int _48_m2 : packoffset(c0.z);
    int _48_m3 : packoffset(c0.w);
    float _48_m4 : packoffset(c1);
    float _48_m5 : packoffset(c1.y);
    float _48_m6 : packoffset(c1.z);
    float _48_m7 : packoffset(c1.w);
    float _48_m8 : packoffset(c2);
    float _48_m9 : packoffset(c2.y);
    float _48_m10 : packoffset(c2.z);
    float _48_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]] cbuffer _49_50 : register(b14)
{
    float4 _50_m0 : packoffset(c0);
    float4 _50_m1 : packoffset(c1);
    float4 _50_m2 : packoffset(c2);
    float4 _50_m3 : packoffset(c3);
    float4 _50_m4 : packoffset(c4);
    uint4 _50_m5 : packoffset(c5);
    float4 _50_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]] cbuffer _51_52 : register(b15)
{
    column_major float4x4 _52_m0[5] : packoffset(c0);
    float4 _52_m1[4] : packoffset(c20);
    float4 _52_m2[4] : packoffset(c24);
    float4 _52_m3[4] : packoffset(c28);
    float4 _52_m4 : packoffset(c32);
    float4 _52_m5 : packoffset(c33);
    float4 _52_m6 : packoffset(c34);
    float4 _52_m7 : packoffset(c35);
    float4 _52_m8 : packoffset(c36);
    float4 _52_m9[27] : packoffset(c37);
    column_major float4x4 _52_m10[56] : packoffset(c64);
    float4 _52_m11[56] : packoffset(c288);
    float4 _52_m12[56] : packoffset(c344);
    float4 _52_m13 : packoffset(c400);
    float4 _52_m14[47] : packoffset(c401);
    column_major float4x4 _52_m15[15] : packoffset(c448);
    float4 _52_m16[15] : packoffset(c508);
    float4 _52_m17[15] : packoffset(c523);
    float4 _52_m18[15] : packoffset(c538);
    float4 _52_m19 : packoffset(c553);
    float4 _52_m20 : packoffset(c554);
    float4 _52_m21[21] : packoffset(c555);
    column_major float4x4 _52_m22 : packoffset(c576);
    column_major float4x4 _52_m23 : packoffset(c580);
    float4 _52_m24 : packoffset(c584);
    float4 _52_m25 : packoffset(c585);
    float4 _52_m26 : packoffset(c586);
    float4 _52_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]] cbuffer _61_62 : register(b49)
{
    float4 _62_m0[32] : packoffset(c0);
    column_major float4x4 _62_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _28 : register(t45);
[[vk::binding(6, 1)]] Texture2D<float4> _31 : register(t6);
[[vk::binding(2, 1)]] SamplerState _32 : register(s2);
[[vk::binding(5, 1)]] Texture2D<float4> _33 : register(t5);
[[vk::binding(1, 1)]] SamplerState _34 : register(s1);
[[vk::binding(3, 1)]] Texture2D<float4> _35 : register(t3);
[[vk::binding(4, 1)]] Texture2D<float4> _36 : register(t4);
[[vk::binding(35, 0)]] Texture3D<float4> _40 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _41 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _42 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _43 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _44 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _45 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _46 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _53 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _54 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _55 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _56 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _57 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _59 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _60 : register(t28);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 _4;
static float4 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float4 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] float3 _10 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _11 : TEXCOORD7;
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
    float2 _395 = gl_FragCoord.xy * _18_m0.zw;
    uint2 _396 = uint2(gl_FragCoord.xy);
    float2 _398 = (_395 * 2.0f) - 1.0f.xx;
    float4 _401 = float4(_398, gl_FragCoord.z, 1.0f);
    _401.y = -_398.y;
    float4 _404 = mul(_16_m6, _401);
    float3 _408 = _404.xyz / _404.w.xxx;
    float4 _412 = float4(_408, 1.0f);
    float _415 = abs(mul(_16_m0, _412).z);
    float _419 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _424 = float4(_7.xyz, _419).xyz;
    float3 _445 = 0.0f.xxx;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _445 = _16_m11.xyz - _408;
            break;
        }
        else
        {
            _445 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _446 = dot(_445, _445);
    float _448 = rsqrt(max(_446, 9.9999999392252902907785028219223e-09f));
    float3 _449 = _445 * _448;
    float _450 = _446 * _448;
    float2 _473 = ((_4.zw * _38_m4) - (_5.xy * _38_m4)) + _5.xy;
    float4 _474 = _5 * _38_m4;
    float2 _510 = ((mul(((((_4.xy * _38_m23.x) + (_473 * _38_m23.y)) + (_38_m21.xy * _18_m75.w)) + (_38_m21.zw * _474.x)) - 0.5f.xx, float2x2(float2(_38_m22.xy), float2(_38_m22.zw))) + 0.5f.xx) * _38_m24.xy) + _38_m24.zw;
    float _552 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
    float _555 = lerp(0.0f, _552, _38_m78);
    _510.y = _510.y * (1.0f + min(_555, 0.5f));
    float4 _570 = _31.SampleBias(_32, _510 + _555.xx, _18_m16);
    float4 _581 = _33.SampleBias(_34, ((mul(((((_4.xy * _38_m33.x) + (_473 * _38_m33.y)) + (_38_m31.xy * _18_m75.w)) + (_38_m31.zw * _474.y)) - 0.5f.xx, float2x2(float2(_38_m32.xy), float2(_38_m32.zw))) + 0.5f.xx) * _38_m30.xy) + _38_m30.zw, _18_m16);
    float4 _586 = (((_38_m16 * lerp(_8, 1.0f.xxxx, _38_m5.xxxx)) * float4(_38_m6, _38_m6, _38_m6, _38_m7)) * lerp(_570, float4(1.0f, 1.0f, 1.0f, _570.x), _38_m18.xxxx)) * lerp(_581, float4(1.0f, 1.0f, 1.0f, _581.x), _38_m26.xxxx);
    float2 _595 = ((float2(_396) * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _598 = float4(_595, _28.SampleLevel(_23, _395, 0.0f).x, 1.0f);
    _598.y = -_595.y;
    float4 _601 = mul(_16_m6, _598);
    float _659 = fmod(floor((_18_m75.w + lerp(0.0f, _552, _38_m51)) * _38_m48), _38_m55.y * _38_m55.x);
    float _662 = _38_m55.y - floor(_659 / _38_m55.x);
    float _665 = 1.0f / _38_m55.x;
    float _666 = 1.0f / _38_m55.y;
    float4 _669 = float4(_665, _666, (_659 - (_662 * _38_m55.x)) * _665, _662 * _666);
    float2 _673 = (_4.xy * _669.xy) + _669.zw;
    float4 _676 = _36.SampleBias(_25, _673, _18_m16);
    float4 _679 = clamp(_676 - _38_m53.xxxx, 0.0f.xxxx, 1.0f.xxxx);
    float _683 = _679.w;
    float _687 = _683 * _38_m49;
    float4 _691 = _35.SampleBias(_25, _673, _18_m16);
    _691.w = _691.w * _691.x;
    float2 _698 = (_691.wy * 2.0f) - 1.0f.xx;
    float3 _699 = float3(_698.x, _698.y, _365.z);
    float2 _700 = _698.xy;
    _699.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_700, _700), 0.0f, 1.0f)));
    float2 _708 = _699.xy * _38_m46;
    float3 _710 = mul(float3(_708.x, _708.y, _699.z), float3x3(_424 * 1.0f, (cross(_6, _424) * _419) * 1.0f, _6 * 1.0f));
    float3 _714 = _710 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_710, _710)));
    bool3 _720 = (gl_FrontFacing ? true : false).xxx;
    float3 _721 = -_714;
    float3 _722 = float3(_720.x ? _714.x : _721.x, _720.y ? _714.y : _721.y, _720.z ? _714.z : _721.z);
    float _757 = ((((clamp(((_586.w * ((_38_m34 != 0.0f) ? (clamp((_415 - _38_m35) / (_38_m36 - _38_m35), 0.0f, 1.0f) * clamp((_415 - _38_m37) / (_38_m38 - _38_m37), 0.0f, 1.0f)) : 1.0f)) * _687) - _38_m52, 0.0f, 1.0f) * _38_m49) * clamp(((abs(mul(_16_m0, float4(_601.xyz / _601.w.xxx, 1.0f)).z) - _415) + _38_m43) / _38_m42, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _38_m76)) * lerp(1.0f, pow(abs(dot(_6, _449)), _38_m69), _38_m71)) * (1.0f - _21_m0[_11]._m1.y);
    float _769 = clamp(_757, 0.0f, 1.0f);
    float3 _770 = clamp(((_586.xyz + ((_679.xyz * _38_m54.xyz) * _683)).xyz * ((1.0f - _38_m12) + (_18_m20.y * _38_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _773 = _770 * _38_m72;
    float _786 = (_38_m61 * (_687 * lerp(1.0f, _8.x, _38_m76))) * _773.x;
    float2 _837 = 0.0f.xx;
    if (clamp((_38_m3 + 1.0f) - _38_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _823 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
        _823.y = -_823.y;
        _837 = ((sqrt(sqrt(abs(_823 * 0.5f))) * float2(int2(sign(_823)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _837 = 0.0f.xx;
    }
    float3 _839 = (0.07999999821186065673828125f * _38_m75).xxx;
    uint2 _870 = uint2(0u, 0u);
    float _871 = 0.0f;
    if (_18_m24.y == 1.0f)
    {
        float4 _847 = mul(_18_m135, _412);
        float4 _850 = _847;
        _850.y = -_847.y;
        float4 _853 = _850 * (1.0f / _847.w);
        _870 = uint2(clamp(((_853.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _871 = 1.0f / ((_18_m2.z * _853.z) + _18_m2.w);
    }
    else
    {
        _870 = _396;
        _871 = _415;
    }
    float3 _873 = _408 + (_722 * 0.25f);
    float3 _883 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _892 = _873 - (_18_m105.xyz + (_883 * (-_18_m107.w)));
    float _906 = max(clamp((max(abs(_892.x), abs(_892.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_892.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1208 = 0.0f.xxxx;
    float4 _1209 = 0.0f.xxxx;
    float4 _1210 = 0.0f.xxxx;
    float _1211 = 0.0f;
    float _1212 = 0.0f;
    if ((_18_m105.w != 0.0f) && (_906 < 1.0f))
    {
        float3 _919 = _873 - (_18_m105.xyz + (_883 * (-_18_m107.y)));
        float _933 = max(clamp((max(abs(_919.x), abs(_919.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_919.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1009 = 0.0f;
        float4 _1010 = 0.0f.xxxx;
        float4 _1011 = 0.0f.xxxx;
        float4 _1012 = 0.0f.xxxx;
        if (_933 < 1.0f)
        {
            float3 _942 = ((_873 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _944 = _942 - floor(_942);
            float4 _948 = _41.SampleLevel(_25, _944, 0.0f);
            float _949 = 1.0f - _933;
            float _953 = _18_m106.y * 0.5f;
            float _958 = _944.x;
            float _959 = clamp(_944.y, _953, 1.0f - _953) * 0.3333333432674407958984375f;
            float _960 = _944.z;
            float4 _963 = _42.SampleLevel(_24, float3(_958, _959, _960), 0.0f);
            float _979 = _948.x;
            float _989 = _948.y;
            float _999 = _948.z;
            _1009 = _906 + (_963.w * _949);
            _1010 = float4(((_42.SampleLevel(_24, float3(_958, _959 + 0.666666686534881591796875f, _960), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _999, _999) * _949;
            _1011 = float4(((_42.SampleLevel(_24, float3(_958, _959 + 0.3333333432674407958984375f, _960), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _989, _989) * _949;
            _1012 = float4(((_963.xyz * 4.0f) - 2.0f.xxx) * _979, _979) * _949;
        }
        else
        {
            _1009 = _906;
            _1010 = 0.0f.xxxx;
            _1011 = 0.0f.xxxx;
            _1012 = 0.0f.xxxx;
        }
        float3 _1018 = _873 - (_18_m105.xyz + (_883 * (-_18_m107.z)));
        float _1032 = max(clamp((max(abs(_1018.x), abs(_1018.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1018.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1112 = 0.0f;
        float4 _1113 = 0.0f.xxxx;
        float4 _1114 = 0.0f.xxxx;
        float4 _1115 = 0.0f.xxxx;
        if (_1032 < 1.0f)
        {
            float3 _1041 = ((_873 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1043 = _1041 - floor(_1041);
            float4 _1047 = _43.SampleLevel(_25, _1043, 0.0f);
            float _1049 = _933 * (1.0f - _1032);
            float _1053 = _18_m106.y * 0.5f;
            float _1058 = _1043.x;
            float _1059 = clamp(_1043.y, _1053, 1.0f - _1053) * 0.3333333432674407958984375f;
            float _1060 = _1043.z;
            float4 _1063 = _44.SampleLevel(_24, float3(_1058, _1059, _1060), 0.0f);
            float _1079 = _1047.x;
            float _1090 = _1047.y;
            float _1101 = _1047.z;
            _1112 = _1009 + (_1063.w * _1049);
            _1113 = _1010 + (float4(((_44.SampleLevel(_24, float3(_1058, _1059 + 0.666666686534881591796875f, _1060), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1101, _1101) * _1049);
            _1114 = _1011 + (float4(((_44.SampleLevel(_24, float3(_1058, _1059 + 0.3333333432674407958984375f, _1060), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1090, _1090) * _1049);
            _1115 = _1012 + (float4(((_1063.xyz * 4.0f) - 2.0f.xxx) * _1079, _1079) * _1049);
        }
        else
        {
            _1112 = _1009;
            _1113 = _1010;
            _1114 = _1011;
            _1115 = _1012;
        }
        float4 _1198 = 0.0f.xxxx;
        float4 _1199 = 0.0f.xxxx;
        float4 _1200 = 0.0f.xxxx;
        float _1201 = 0.0f;
        if (_1032 > 0.0f)
        {
            float3 _1124 = ((_873 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1127 = _18_m106.xyz * 0.5f;
            float3 _1129 = clamp(_1124 - floor(_1124), _1127, 1.0f.xxx - _1127);
            float4 _1133 = _45.SampleLevel(_25, _1129, 0.0f);
            float _1135 = _1032 * (1.0f - _906);
            float _1139 = _18_m106.y * 0.5f;
            float _1144 = _1129.x;
            float _1145 = clamp(_1129.y, _1139, 1.0f - _1139) * 0.3333333432674407958984375f;
            float _1146 = _1129.z;
            float4 _1149 = _46.SampleLevel(_24, float3(_1144, _1145, _1146), 0.0f);
            float _1165 = _1133.x;
            float _1176 = _1133.y;
            float _1187 = _1133.z;
            _1198 = _1113 + (float4(((_46.SampleLevel(_24, float3(_1144, _1145 + 0.666666686534881591796875f, _1146), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1187, _1187) * _1135);
            _1199 = _1114 + (float4(((_46.SampleLevel(_24, float3(_1144, _1145 + 0.3333333432674407958984375f, _1146), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1176, _1176) * _1135);
            _1200 = _1115 + (float4(((_1149.xyz * 4.0f) - 2.0f.xxx) * _1165, _1165) * _1135);
            _1201 = _1112 + (_1149.w * _1135);
        }
        else
        {
            _1198 = _1113;
            _1199 = _1114;
            _1200 = _1115;
            _1201 = _1112;
        }
        float _1204 = clamp((_1201 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1208 = _1198;
        _1209 = _1199;
        _1210 = _1200;
        _1211 = _1204 - _906;
        _1212 = (_1204 + _906) * 0.5f;
    }
    else
    {
        _1208 = 0.0f.xxxx;
        _1209 = 0.0f.xxxx;
        _1210 = 0.0f.xxxx;
        _1211 = 0.0f;
        _1212 = 1.0f;
    }
    float4 _1232 = _1210 + float4(_18_m108.x * _1212, (_18_m108.y * _1212) + ((_18_m108.w * _1211) * 0.5f), _18_m108.z * _1212, (_18_m108.w * _1212) + ((_18_m108.y * _1211) * 0.375f));
    float4 _1252 = _1209 + float4(_18_m109.x * _1212, (_18_m109.y * _1212) + ((_18_m109.w * _1211) * 0.5f), _18_m109.z * _1212, (_18_m109.w * _1212) + ((_18_m109.y * _1211) * 0.375f));
    float4 _1272 = _1208 + float4(_18_m110.x * _1212, (_18_m110.y * _1212) + ((_18_m110.w * _1211) * 0.5f), _18_m110.z * _1212, (_18_m110.w * _1212) + ((_18_m110.y * _1211) * 0.375f));
    float3 _1300 = lerp(1.0f.xxx, clamp(abs((frac(float3(_38_m59, _38_m60, _786).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _38_m60.xxx) * _786;
    float3 _1307 = ((float3(max(0.0f, dot(_1232.xyz, _722) + _1232.w), max(0.0f, dot(_1252.xyz, _722) + _1252.w), max(0.0f, dot(_1272.xyz, _722) + _1272.w)) * (_773 + (_1300 * _38_m62))) * 1.0f) * _18_m22.x;
    float3 _1316 = (((_1307.x + _1307.y) + _1307.z) * 0.3333333432674407958984375f).xxx;
    float3 _1321 = (_1316 + ((_1307 - _1316) * _38_m70)) + ((-0.0f).xxx * _38_m70);
    float3 _1327 = _18_m76.w.xxx;
    float _1335 = 1.0f - _38_m11;
    float3 _1338 = _408 + (_722 * 0.5f);
    float2 _1788 = 0.0f.xx;
    do
    {
        if (_52_m7.w >= 0.9900000095367431640625f)
        {
            _1788 = float2(_52_m7.z, 1.0f);
            break;
        }
        int _1351 = int(_52_m7.x);
        bool3 _1353 = (_1351 == 2).xxx;
        float3 _1361 = _1338 - float3(_1353.x ? _52_m1[0].xyz.x : _16_m11.xyz.x, _1353.y ? _52_m1[0].xyz.y : _16_m11.xyz.y, _1353.z ? _52_m1[0].xyz.z : _16_m11.xyz.z);
        float _1372 = max(clamp((_52_m6.w - dot(_1361, _1361)) * _52_m6.z, 0.0f, 1.0f), _52_m8.x);
        float _1529 = 0.0f;
        bool _1530 = false;
        if (_1372 > 0.0f)
        {
            float _1527 = 0.0f;
            bool _1528 = false;
            if (_1351 > 0)
            {
                float3 _1379 = _1338 - _52_m1[0].xyz;
                float3 _1383 = _1338 - _52_m1[1].xyz;
                float3 _1387 = _1338 - _52_m1[2].xyz;
                float3 _1391 = _1338 - _52_m1[3].xyz;
                float4 _1396 = float4(dot(_1379, _1379), dot(_1383, _1383), dot(_1387, _1387), dot(_1391, _1391));
                float4 _1405 = float4(_52_m1[0].w, _52_m1[1].w, _52_m1[2].w, _52_m1[3].w);
                float4 _1407 = float4(bool4(_1396.x < _1405.x, _1396.y < _1405.y, _1396.z < _1405.z, _1396.w < _1405.w));
                float3 _1411 = clamp(_1407.yzw - _1407.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1415 = clamp(4.0f - dot(float4(_1407.x, _1411.x, _1411.y, _1411.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1417 = clamp(_1415 + 1.0f, 0.0f, 3.0f);
                uint _1418 = uint(_1415);
                uint _1426 = uint(_1417);
                float _1432 = dot(_1396, _342[_1426]) / _52_m1[_1426].w;
                float _1450 = 0.0f;
                if (((_1417 > _1415) && (_1432 >= 0.0f)) && (_1432 <= 1.0f))
                {
                    _1450 = _1415 + step(frac(52.98291778564453125f * frac(dot(float2(_870) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1396, _342[_1418]) / _52_m1[_1418].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1450 = _1415;
                }
                float _1451 = clamp(_1450, 0.0f, 4.0f);
                float4 _1459 = mul(_52_m0[uint(_1451)], float4(_1338, 1.0f));
                float _1462 = _1459.z;
                float4 _1463 = float4(_1459.xy, _1462, _1451);
                float3 _1464 = _1463.xyz;
                bool3 _1465 = bool3(_1464.x <= 0.0f.xxx.x, _1464.y <= 0.0f.xxx.y, _1464.z <= 0.0f.xxx.z);
                bool3 _1466 = bool3(_1464.x >= 1.0f.xxx.x, _1464.y >= 1.0f.xxx.y, _1464.z >= 1.0f.xxx.z);
                bool _1472 = any(bool3(_1465.x || _1466.x, _1465.y || _1466.y, _1465.z || _1466.z)) || ((asuint(_1462) & 2147483647u) > 2139095040u);
                int _1473 = int(_1451);
                float2 _1488 = float4(_52_m3[_1473].xy + (_1463.xy * _52_m3[_1473].zw), _1462, _1451).xy;
                _1527 = _1472 ? 1.0f : (0.25f * (((_53.SampleCmpLevelZero(_26, float3(_1488 + (_52_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _363).xy, _1462) + _53.SampleCmpLevelZero(_26, float3(_1488 + (_52_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _363).xy, _1462)) + _53.SampleCmpLevelZero(_26, float3(_1488 + (_52_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _363).xy, _1462)) + _53.SampleCmpLevelZero(_26, float3(_1488 + (_52_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _363).xy, _1462)));
                _1528 = _1472;
            }
            else
            {
                _1527 = 1.0f;
                _1528 = false;
            }
            _1529 = _1527;
            _1530 = _1528;
        }
        else
        {
            _1529 = 1.0f;
            _1530 = false;
        }
        float _1730 = 0.0f;
        float _1731 = 0.0f;
        if ((_1372 < 1.0f) || (_52_m8.x > 0.5f))
        {
            float _1541 = 1.0f - clamp(dot(_722, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1558 = float4((_1338 - (_50_m0.xyz * (_1541 * _52_m24.x))) + (_722 * (_1541 * _52_m24.y)), 1.0f);
            float4 _1559 = mul(_52_m23, _1558);
            float _1728 = 0.0f;
            if (all(bool2(_1559.xy.x > 0.0f.xx.x, _1559.xy.y > 0.0f.xx.y)) && all(bool2(_1559.xy.x < 1.0f.xx.x, _1559.xy.y < 1.0f.xx.y)))
            {
                uint _1579 = clamp(uint((floor(_1559.y * _52_m25.z) + _1559.x) * _52_m25.y), 0u, 127u);
                uint _1583 = asuint(_52_m27[_1579].x);
                float2 _1584 = spvUnpackHalf2x16(_1583);
                float _1585 = _1584.x;
                float _1727 = 0.0f;
                if (_1585 >= 0.0f)
                {
                    float4x4 _1594 = _52_m22;
                    _1594[0].w = _52_m27[_1579].y;
                    _1594[1].w = _52_m27[_1579].z;
                    _1594[2].w = _52_m27[_1579].w;
                    float4 _1601 = mul(_1594, _1558);
                    float _1726 = 0.0f;
                    if (all(bool3(_1601.xyz.x > 0.0f.xxx.x, _1601.xyz.y > 0.0f.xxx.y, _1601.xyz.z > 0.0f.xxx.z)) && all(bool3(_1601.xyz.x < 1.0f.xxx.x, _1601.xyz.y < 1.0f.xxx.y, _1601.xyz.z < 1.0f.xxx.z)))
                    {
                        float2 _1625 = float4((_1601.xy * _52_m24.zw) + float2(_1585, spvUnpackHalf2x16(_1583 >> 16u).x), _1601.z, 1.0f).xy * _52_m26.zw;
                        float2 _1627 = floor(_1625 + 0.5f.xx);
                        float2 _1628 = _1625 - _1627;
                        float _1629 = _1628.x;
                        float _1630 = _1629 + 0.5f;
                        float _1632 = (_1630 * _1630) * 0.5f;
                        float _1635 = min(_1629, 0.0f);
                        float _1639 = max(_1629, 0.0f);
                        float4 _1643 = float4(_1632 - _1629, (1.0f - _1629) - (_1635 * _1635), (_1629 + 1.0f) - (_1639 * _1639), _1632) * 0.44444000720977783203125f;
                        float _1644 = _1628.y;
                        float _1645 = _1644 + 0.5f;
                        float _1647 = (_1645 * _1645) * 0.5f;
                        float _1650 = min(_1644, 0.0f);
                        float _1654 = max(_1644, 0.0f);
                        float4 _1658 = float4(_1647 - _1644, (1.0f - _1644) - (_1650 * _1650), (_1644 + 1.0f) - (_1654 * _1654), _1647) * 0.44444000720977783203125f;
                        float2 _1660 = _1643.yw;
                        float2 _1661 = _1643.xz + _1660;
                        float2 _1663 = _1658.yw;
                        float2 _1664 = _1658.xz + _1663;
                        float2 _1670 = ((_1660 / _1661) + float2(-1.5f, 0.5f)) * _52_m26.xx;
                        float2 _1672 = ((_1663 / _1664) + float2(-1.5f, 0.5f)) * _52_m26.yy;
                        float2 _1674 = _1627 * _52_m26.xy;
                        float _1675 = _1670.x;
                        float _1676 = _1672.x;
                        float _1679 = _1670.y;
                        float _1682 = _1672.y;
                        float _1687 = _1661.x;
                        float _1688 = _1664.x;
                        float _1690 = _1661.y;
                        float _1692 = _1664.y;
                        _1726 = ((((_1687 * _1688) * _56.SampleCmpLevelZero(_26, float3(_1674 + float2(_1675, _1676), _363).xy, _1601.z)) + ((_1690 * _1688) * _56.SampleCmpLevelZero(_26, float3(_1674 + float2(_1679, _1676), _363).xy, _1601.z))) + ((_1687 * _1692) * _56.SampleCmpLevelZero(_26, float3(_1674 + float2(_1675, _1682), _363).xy, _1601.z))) + ((_1690 * _1692) * _56.SampleCmpLevelZero(_26, float3(_1674 + float2(_1679, _1682), _363).xy, _1601.z));
                    }
                    else
                    {
                        _1726 = 1.0f;
                    }
                    _1727 = _1726;
                }
                else
                {
                    _1727 = 1.0f;
                }
                _1728 = _1727;
            }
            else
            {
                _1728 = 1.0f;
            }
            _1730 = _1530 ? _1728 : _1529;
            _1731 = _1728;
        }
        else
        {
            _1730 = _1529;
            _1731 = 1.0f;
        }
        float _1734 = lerp(lerp(_1731, _1730, _1372), min(_1731, _1730), _52_m8.x);
        float _1783 = 0.0f;
        if (_1734 > 0.001000000047497451305389404296875f)
        {
            float3 _1741 = _1338 - _18_m65.xyz;
            float2 _1751 = (_1741 + (_18_m68.xyz * _1741.y)).xz * _18_m66.z;
            float2 _1758 = _18_m67.xy * _18_m75.w;
            _1783 = _1734 * lerp(1.0f, lerp(_55.SampleLevel(_25, _1751 + _1758, 0.0f), _55.SampleLevel(_25, (_1751 * _18_m67.w) + _1758, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1741.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1783 = _1734;
        }
        _1788 = float2(lerp(_1783, _52_m7.z, _52_m7.w), _1783);
        break;
    } while(false);
    float _1793 = lerp(1.0f, min(1.0f, _1788.x), _52_m6.x);
    float4 _1958 = 0.0f.xxxx;
    if (_1793 > 0.001000000047497451305389404296875f)
    {
        float3 _1804 = reflect(-_449, _722);
        float3 _1805 = -_50_m0.xyz;
        float _1810 = dot(_1805, _1804);
        float3 _1812 = _1804 - (_1805 * _1810);
        bool3 _1814 = (_1810 < _50_m4.z).xxx;
        float3 _1822 = normalize((_1805 * _50_m4.z) + ((_1812 * rsqrt(max(6.103515625e-05f, dot(_1812, _1812)))) * _50_m4.y));
        float3 _1823 = float3(_1814.x ? _1822.x : _1804.x, _1814.y ? _1822.y : _1804.y, _1814.z ? _1822.z : _1804.z);
        float3 _1827 = _1823 + _449;
        float3 _1831 = _1827 * rsqrt(max(6.103515625e-05f, dot(_1827, _1827)));
        float _1833 = clamp(dot(_1823, _722), 0.0f, 1.0f);
        float _1835 = clamp(dot(_722, _1831), 0.0f, 1.0f);
        float _1840 = clamp(dot(_722, _449), 0.0f, 1.0f);
        float _1841 = _38_m74 * _38_m74;
        float _1842 = _1841 * _1841;
        float _1863 = (((_1835 * _1842) - _1835) * _1835) + 1.0f;
        float _1866 = 1.0f - clamp(dot(_449, _1831), 0.0f, 1.0f);
        float _1867 = _1866 * _1866;
        float _1869 = (_1866 * _1867) * _1867;
        float _1893 = 1.0f - _38_m74;
        float _1900 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1893 * (1.04997003078460693359375f + (_1893 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1893))))));
        float _1901 = 1.0f - _1900;
        float3 _1904 = _839 + ((1.0f.xxx - _839) * 0.0476190485060214996337890625f);
        float _1915 = clamp(1.0f - _786, 0.0f, 1.0f);
        float _1923 = clamp((dot(_722, _1823) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1940 = clamp(clamp((min(((_839 * (1.0f - _1869)) + _1869.xxx) * ((_1842 / (_1863 * _1863)) * (0.5f / (((_1833 * sqrt(((((-_1840) * _1842) + _1840) * _1840) + _1842)) + (_1840 * sqrt(((((-_1833) * _1842) + _1833) * _1833) + _1842))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1904 * (((_59.SampleLevel(_24, (float2(_1840, _38_m74) * 0.96875f) + 0.015625f.xx, 0.0f).x * _59.SampleLevel(_24, (float2(_1833, _38_m74) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1900) / _1901)) * _1904) / (1.0f.xxx - (_1904 * _1901)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_769, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _38_m68;
        // RenoDX: reduce the overlay's specular intensity when waterfall improvement is enabled.
        _1940 *= FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f;
        float3 _1945 = (((_1940 * _1833) + (_1300 * lerp(lerp(1.0f, (_1923 * sqrt(_1923)) * 1.66666662693023681640625f, _1915) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_449, _1823), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1915)))) + ((_773 * 1.0f) * _1833)) * _50_m1.xyz;
        float3 _1956 = lerp(_1945, _1945 * _57.SampleBias(_24, float2(_1793, 0.5f), _18_m16).xyz, (1.0f - _1793).xxx) * 1.0f;
        _1958 = float4(_1956.x, _1956.y, _1956.z, 0.0f.xxxx.w);
    }
    else
    {
        _1958 = 0.0f.xxxx;
    }
    float2 _1959 = float2(_870);
    float2 _1961 = floor(_1959 * 0.03125f);
    int _1969 = int((_1961.x + (_1961.y * _48_m5)) * 8.0f);
    float _1976 = floor(_871 - (_18_m3.y * _48_m11));
    float _1980 = clamp(_1976, 0.0f, _48_m7 - 1.0f);
    int _1982 = int(_1980 * 8.0f);
    float3 _1984 = 0.0f.xxx;
    float _1987 = 0.0f;
    _1984 = 0.0f.xxx;
    _1987 = 1.0f;
    float3 _1985 = 0.0f.xxx;
    float _1988 = 0.0f;
    [loop]
    for (int _1989 = 0; _1989 <= 7; _1984 = _1985, _1987 = _1988, _1989++)
    {
        uint _2007 = (_1976 <= _1980) ? (_30.Load(uint(_1969 + _1989) * 4 + 0) & _30.Load(uint((_18_m21.y + _1982) + _1989) * 4 + 0)) : 0u;
        uint _2008 = uint(_1989);
        float3 _2012 = 0.0f.xxx;
        _1988 = _1987;
        _2012 = 0.0f.xxx;
        uint _2015 = 0u;
        float _2010 = 0.0f;
        float3 _2013 = 0.0f.xxx;
        [loop]
        for (uint _2014 = _2007; _2014 != 0u; _1988 = _2010, _2012 = _2013, _2014 = _2015)
        {
            uint _2019 = firstbitlow(_2014);
            _2015 = _2014 ^ (1u << (_2019 & 31u));
            int _2025 = int((32u * _2008) + _2019) * 8;
            int _2028 = _2025 + 1;
            int _2031 = _2025 + 2;
            int _2034 = _2025 + 3;
            int _2037 = _2025 + 5;
            int _2040 = _2025 + 6;
            int _2043 = _2025 + 7;
            uint _2047 = uint(_50_m6[_2037].w);
            float _2122 = 0.0f;
            if ((_2047 & 1u) == 1u)
            {
                uint _2053 = asuint(_50_m6[_2037].x);
                uint _2060 = asuint(_50_m6[_2037].y);
                uint _2067 = asuint(_50_m6[_2037].z);
                uint _2074 = asuint(_50_m6[_2040].x);
                uint _2081 = asuint(_50_m6[_2040].y);
                uint _2088 = asuint(_50_m6[_2040].z);
                float3 _2107 = abs(mul(float4(_408 - _50_m6[_2028].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2053).x, spvUnpackHalf2x16(_2067).x, spvUnpackHalf2x16(_2081).x, 0.0f), float4(spvUnpackHalf2x16(_2053 >> 16u).x, spvUnpackHalf2x16(_2067 >> 16u).x, spvUnpackHalf2x16(_2081 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2060).x, spvUnpackHalf2x16(_2074).x, spvUnpackHalf2x16(_2088).x, 0.0f), float4(spvUnpackHalf2x16(_2060 >> 16u).x, spvUnpackHalf2x16(_2074 >> 16u).x, spvUnpackHalf2x16(_2088 >> 16u).x, 0.0f))).xyz);
                float _2114 = _50_m6[_2043].x * 0.5f;
                float _2120 = 1.0f - clamp((max(max(_2107.x, _2107.y), _2107.z) - (_2114 + 0.5f)) / (0.5f - _2114), 0.0f, 1.0f);
                _2122 = _2120 * _2120;
            }
            else
            {
                _2122 = 1.0f;
            }
            bool _2126 = _50_m6[_2034].z > 0.5f;
            if ((false || (_2122 < 0.001000000047497451305389404296875f)) || _2126)
            {
                _2010 = _1988;
                _2013 = _2012;
                continue;
            }
            float _3260 = 0.0f;
            float3 _3261 = 0.0f.xxx;
            if (_50_m6[_2025].w < 1.5f)
            {
                float3 _2614 = float3(0.100000001490116119384765625f, _38_m74, 1.0f);
                float _2623 = (0.5f + (0.5f * _50_m6[_2031].y)) - abs(_50_m6[_2031].x);
                float _2624 = _50_m6[_2031].y - _2623;
                float _2631 = abs(max((1.0f - abs(_2623)) - abs(_2624), 0.00048828125f));
                float3 _2635 = normalize(float3(_2623, _2624, (_50_m6[_2031].x >= 0.0f) ? _2631 : (-_2631)));
                float3 _2636 = _50_m6[_2028].xyz - _408;
                float _2637 = dot(_2636, _2636);
                float _2638 = rsqrt(_2637);
                float3 _2639 = _2636 * _2638;
                float _2643 = clamp(_50_m6[_2043].y * _2638, 0.0f, 1.0f);
                int _2648 = int(_50_m6[_2043].w);
                float3 _2649 = _2635 * _50_m6[_2031].z;
                float3 _2650 = _2649 * 0.5f;
                float3 _2651 = _2636 - _2650;
                float3 _2652 = _2636 + _2650;
                bool _2655 = (uint(_50_m6[_2025].w) & 1u) == 0u;
                bool _2658 = _2655 || ((_2047 & 2u) != 0u);
                bool _2661 = (!_2655) && (_50_m6[_2031].z > 0.0f);
                float _2680 = 0.0f;
                float _2681 = 0.0f;
                if (_2661)
                {
                    float _2665 = length(_2651);
                    float _2666 = length(_2652);
                    _2680 = clamp(0.5f * ((dot(_722, _2651) / _2665) + (dot(_722, _2652) / _2666)), 0.0f, 1.0f);
                    _2681 = 1.0f / ((((_2665 * _2666) + dot(_2651, _2652)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2680 = clamp(dot(_722, _2639), 0.0f, 1.0f);
                    _2681 = 1.0f;
                }
                float _2703 = 0.0f;
                if (_50_m6[_2040].w < 0.0f)
                {
                    float _2697 = _2637 * (_50_m6[_2028].w * _50_m6[_2028].w);
                    float _2700 = clamp(1.0f - (_2697 * _2697), 0.0f, 1.0f);
                    _2703 = lerp(1.0f / (_2637 + 1.0f), _2681, float(_2661)) * (_2700 * _2700);
                }
                else
                {
                    float3 _2686 = _2636 * _50_m6[_2028].w;
                    _2703 = _2681 * pow(1.0f - clamp(dot(_2686, _2686), 0.0f, 1.0f), _50_m6[_2040].w);
                }
                float _2709 = clamp((dot(_2639, -_2635) - _50_m6[_2031].z) * _50_m6[_2031].w, 0.0f, 1.0f);
                float _2713 = _2703 * lerp(1.0f, _2709 * _2709, float(_2655));
                float _2813 = 0.0f;
                if ((!_2661) && (_2648 >= 0))
                {
                    uint _2719 = uint(_2648);
                    float2 _2806 = 0.0f.xx;
                    [branch]
                    if (_2655)
                    {
                        float4 _2796 = mul(_62_m1[_2719], _412);
                        _2806 = _62_m0[_2719].xy + (clamp(_2796.xy / _2796.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2719].zw);
                    }
                    else
                    {
                        float3 _2733 = mul(float4(-_2636, 0.0f), _62_m1[_2719]).xyz;
                        float3 _372 = _2733;
                        float3 _371 = _2733;
                        float3 _370 = abs(_2733);
                        uint _2742 = uint(int(_370.y > _370.x));
                        uint _2748 = (_370.z > _370[_2742]) ? 2u : _2742;
                        uint _2754 = (_2748 * 2u) + uint(_371[_2748] < 0.0f);
                        float _2758 = abs(_372[_2754 / 2u]);
                        float _2778 = 0.5f - (0.000244140625f / _62_m0[_2719].w);
                        _2806 = _62_m0[_2719].xy + (clamp(float2((float(_2754) + ((((_372[uint(_343[_2754].x)] * _344[_2754].x) / _2758) * _2778) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_372[uint(_343[_2754].y)] * _344[_2754].y) / _2758) * _2778)), 0.0f.xx, 1.0f.xx) * _62_m0[_2719].zw);
                    }
                    _2813 = _2713 * _60.SampleLevel(_24, _2806, 0.0f).x;
                }
                else
                {
                    _2813 = _2713;
                }
                bool _2814 = _2813 > 0.0f;
                float _3102 = 0.0f;
                if (_2814)
                {
                    int _2866 = 0;
                    if (_2658)
                    {
                        _2866 = int(_50_m6[_2034].x);
                    }
                    else
                    {
                        uint _2821 = asuint(_50_m6[_2031].w);
                        uint _2823 = asuint(_50_m6[_2034].x);
                        float3 _2824 = _408 - _50_m6[_2028].xyz;
                        float3 _2825 = abs(_2824);
                        float _2826 = _2825.x;
                        float _2827 = _2825.y;
                        float _2829 = _2825.z;
                        int _2861 = 0;
                        if ((_2826 > _2827) && (_2826 > _2829))
                        {
                            _2861 = int((_2824.x > 0.0f) ? (_2821 >> 24u) : ((_2821 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2853 = 0;
                            if (_2827 > _2829)
                            {
                                _2853 = int((_2824.y > 0.0f) ? ((_2821 >> 8u) & 255u) : (_2821 & 255u));
                            }
                            else
                            {
                                _2853 = int((_2824.z > 0.0f) ? ((_2823 >> 8u) & 255u) : (_2823 & 255u));
                            }
                            _2861 = _2853;
                        }
                        _2866 = (_2861 < 80) ? _2861 : (-1);
                    }
                    float3 _2876 = (_408 - ((-_2639) * _52_m11[_2866].x)) + (_722 * (_52_m11[_2866].y * 5.0f));
                    float4 _2883 = mul(_52_m10[_2866], float4(_2876, 1.0f));
                    float _2884 = _2883.w;
                    float3 _2887 = _2883.xyz / _2884.xxx;
                    float2 _2888 = _2887.xy;
                    float3 _2896 = _2887.xyz;
                    bool3 _2897 = bool3(_2896.x <= 0.0f.xxx.x, _2896.y <= 0.0f.xxx.y, _2896.z <= 0.0f.xxx.z);
                    bool3 _2898 = bool3(_2896.x >= 1.0f.xxx.x, _2896.y >= 1.0f.xxx.y, _2896.z >= 1.0f.xxx.z);
                    float _2901 = _2887.z;
                    float2 _2912 = ((_2888 * (_52_m12[_2866].zw - _52_m12[_2866].xy)) + _52_m12[_2866].xy).xy * _52_m13.zw;
                    float2 _2914 = floor(_2912 + 0.5f.xx);
                    float2 _2915 = _2912 - _2914;
                    float _2916 = _2915.x;
                    float _2917 = _2916 + 0.5f;
                    float _2918 = _2917 * _2917;
                    float _2921 = 1.0f - _2916;
                    float _2922 = min(_2916, 0.0f);
                    float _2925 = _2916 + 1.0f;
                    float _2926 = max(_2916, 0.0f);
                    float _2937 = _2915.y;
                    float _2938 = _2937 + 0.5f;
                    float _2939 = _2938 * _2938;
                    float _2942 = 1.0f - _2937;
                    float _2943 = min(_2937, 0.0f);
                    float _2946 = _2937 + 1.0f;
                    float _2947 = max(_2937, 0.0f);
                    float3 _2959 = float3(0.1599999964237213134765625f * _2921, 0.1599999964237213134765625f * ((_2925 - (_2926 * _2926)) + 1.0f), _2918 * 0.07999999821186065673828125f);
                    float3 _2960 = float3(0.1599999964237213134765625f * ((_2918 * 0.5f) - _2916), 0.1599999964237213134765625f * ((_2921 - (_2922 * _2922)) + 1.0f), 0.1599999964237213134765625f * _2925) + _2959;
                    float3 _2962 = float3(0.1599999964237213134765625f * _2942, 0.1599999964237213134765625f * ((_2946 - (_2947 * _2947)) + 1.0f), _2939 * 0.07999999821186065673828125f);
                    float3 _2963 = float3(0.1599999964237213134765625f * ((_2939 * 0.5f) - _2937), 0.1599999964237213134765625f * ((_2942 - (_2943 * _2943)) + 1.0f), 0.1599999964237213134765625f * _2946) + _2962;
                    float3 _2969 = ((_2959 / _2960) + float3(-2.5f, -0.5f, 1.5f)) * _52_m13.xxx;
                    float3 _2971 = ((_2962 / _2963) + float3(-2.5f, -0.5f, 1.5f)) * _52_m13.yyy;
                    float2 _2973 = _2914 * _52_m13.xy;
                    float _2974 = _2969.x;
                    float _2975 = _2971.x;
                    float _2978 = _2969.y;
                    float _2981 = _2969.z;
                    float _2984 = _2971.y;
                    float _2991 = _2971.z;
                    float _2998 = _2960.x;
                    float _2999 = _2963.x;
                    float _3001 = _2960.y;
                    float _3003 = _2960.z;
                    float _3005 = _2963.y;
                    float _3009 = _2963.z;
                    float _3067 = (((((((_2998 * _2999) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2974, _2975), _363).xy, _2901)) + ((_3001 * _2999) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2978, _2975), _363).xy, _2901))) + ((_3003 * _2999) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2981, _2975), _363).xy, _2901))) + ((_2998 * _3005) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2974, _2984), _363).xy, _2901))) + ((_3001 * _3005) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2978, _2984), _363).xy, _2901))) + ((_3003 * _3005) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2981, _2984), _363).xy, _2901))) + ((_2998 * _3009) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2974, _2991), _363).xy, _2901));
                    float2 _3088 = min(_2888, 1.0f.xx - _2888);
                    _3102 = (_2866 >= 0) ? lerp(1.0f, (any(bool3(_2897.x || _2898.x, _2897.y || _2898.y, _2897.z || _2898.z)) || ((asuint(_2901) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3067 + ((_3001 * _3009) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2978, _2991), _363).xy, _2901))) + ((_3003 * _3009) * _54.SampleCmpLevelZero(_26, float3(_2973 + float2(_2981, _2991), _363).xy, _2901))), _2658 ? min(_52_m11[_2866].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_52_m11[_2866].z - _2884) * 0.25f, min(_3088.x, _3088.y)))) : _52_m11[_2866].w) : 1.0f;
                }
                else
                {
                    _3102 = 1.0f;
                }
                float3 _3127 = 0.0f.xxx;
                float3 _3128 = 0.0f.xxx;
                if (_2661)
                {
                    float3 _3105 = _2614 * _2614;
                    float3 _3107 = reflect(-_449, _722);
                    float _3116 = dot(_3107, _2649);
                    _3127 = _3105 / clamp(_3105 + (0.5f * clamp(_50_m6[_2031].z * _2638, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3128 = normalize(_2651 + (_2649 * clamp(dot(_2651, (_3107 * _3116) - _2649) / ((_50_m6[_2031].z * _50_m6[_2031].z) - (_3116 * _3116)), 0.0f, 1.0f)));
                }
                else
                {
                    _3127 = 1.0f.xxx;
                    _3128 = _2639;
                }
                float3 _3129 = _3128 + _449;
                float3 _3133 = _3129 * rsqrt(max(6.103515625e-05f, dot(_3129, _3129)));
                float3 _3259 = 0.0f.xxx;
                if (_2814)
                {
                    float _3137 = clamp(_2680, 0.0f, 1.0f);
                    float _3139 = clamp(dot(_722, _3133), 0.0f, 1.0f);
                    float _3141 = clamp(dot(_449, _3133), 0.0f, 1.0f);
                    float _3144 = clamp(dot(_722, _449), 0.0f, 1.0f);
                    float _3145 = _38_m74 * _38_m74;
                    float _3155 = 0.0f;
                    if (_2643 > 0.0f)
                    {
                        _3155 = clamp(_3145 + ((_2643 * _2643) / ((_3141 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3155 = _3145;
                    }
                    float _3156 = _3155 * _3155;
                    float _3177 = (((_3139 * _3156) - _3139) * _3139) + 1.0f;
                    float _3182 = 1.0f - _3141;
                    float _3183 = _3182 * _3182;
                    float _3185 = (_3182 * _3183) * _3183;
                    float _3209 = 1.0f - _38_m74;
                    float _3216 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3209 * (1.04997003078460693359375f + (_3209 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3209))))));
                    float _3217 = 1.0f - _3216;
                    float3 _3220 = _839 + ((1.0f.xxx - _839) * 0.0476190485060214996337890625f);
                    float _3231 = clamp(1.0f - _786, 0.0f, 1.0f);
                    float _3239 = clamp((dot(_722, _3128) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3255 = (clamp((min(((_839 * (1.0f - _3185)) + _3185.xxx) * (((_3156 / (_3177 * _3177)) * _3127.y) * (0.5f / (((_3137 * sqrt(((((-_3144) * _3156) + _3144) * _3144) + _3156)) + (_3144 * sqrt(((((-_3137) * _3156) + _3137) * _3137) + _3156))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3220 * (((_59.SampleLevel(_24, (float2(_3144, _38_m74) * 0.96875f) + 0.015625f.xx, 0.0f).x * _59.SampleLevel(_24, (float2(_3137, _38_m74) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3216) / _3217)) * _3220) / (1.0f.xxx - (_3220 * _3217)))) * _50_m6[_2043].z, 0.0f.xxx, 1000.0f.xxx) * _2680) + (_1300 * lerp(lerp(1.0f, (_3239 * sqrt(_3239)) * 1.66666662693023681640625f, _3231) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_449, _3128), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3231)));
                    _3259 = (_3255 + ((_773 * _3127.z) * _2680)) * (((_50_m6[_2025].xyz * _2813) * _3102) * _2122);
                }
                else
                {
                    _3259 = 0.0f.xxx;
                }
                _3260 = _1988;
                _3261 = _3259;
            }
            else
            {
                float _2612 = 0.0f;
                do
                {
                    if (_2126)
                    {
                        _2612 = 1.0f;
                        break;
                    }
                    float _2146 = (0.5f + (0.5f * _50_m6[_2031].y)) - abs(_50_m6[_2031].x);
                    float _2147 = _50_m6[_2031].y - _2146;
                    float _2154 = abs(max((1.0f - abs(_2146)) - abs(_2147), 0.00048828125f));
                    float3 _2158 = normalize(float3(_2146, _2147, (_50_m6[_2031].x >= 0.0f) ? _2154 : (-_2154)));
                    float3 _2159 = _50_m6[_2028].xyz - _408;
                    float _2160 = dot(_2159, _2159);
                    float3 _2162 = _2159 * rsqrt(_2160);
                    int _2165 = int(_50_m6[_2043].w);
                    float3 _2167 = (_2158 * _50_m6[_2031].z) * 0.5f;
                    float3 _2168 = _2159 - _2167;
                    float3 _2169 = _2159 + _2167;
                    bool _2172 = (uint(_50_m6[_2025].w) & 1u) == 0u;
                    bool _2175 = _2172 || ((_2047 & 2u) != 0u);
                    bool _2178 = (!_2172) && (_50_m6[_2031].z > 0.0f);
                    float _2190 = 0.0f;
                    if (_2178)
                    {
                        _2190 = 1.0f / ((((length(_2168) * length(_2169)) + dot(_2168, _2169)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2190 = 1.0f;
                    }
                    float _2212 = 0.0f;
                    if (_50_m6[_2040].w < 0.0f)
                    {
                        float _2206 = _2160 * (_50_m6[_2028].w * _50_m6[_2028].w);
                        float _2209 = clamp(1.0f - (_2206 * _2206), 0.0f, 1.0f);
                        _2212 = lerp(1.0f / (_2160 + 1.0f), _2190, float(_2178)) * (_2209 * _2209);
                    }
                    else
                    {
                        float3 _2195 = _2159 * _50_m6[_2028].w;
                        _2212 = _2190 * pow(1.0f - clamp(dot(_2195, _2195), 0.0f, 1.0f), _50_m6[_2040].w);
                    }
                    float _2218 = clamp((dot(_2162, -_2158) - _50_m6[_2031].z) * _50_m6[_2031].w, 0.0f, 1.0f);
                    float _2222 = _2212 * lerp(1.0f, _2218 * _2218, float(_2172));
                    float _2322 = 0.0f;
                    if ((!_2178) && (_2165 >= 0))
                    {
                        uint _2228 = uint(_2165);
                        float2 _2315 = 0.0f.xx;
                        [branch]
                        if (_2172)
                        {
                            float4 _2305 = mul(_62_m1[_2228], _412);
                            _2315 = _62_m0[_2228].xy + (clamp(_2305.xy / _2305.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2228].zw);
                        }
                        else
                        {
                            float3 _2242 = mul(float4(-_2159, 0.0f), _62_m1[_2228]).xyz;
                            float3 _375 = _2242;
                            float3 _374 = _2242;
                            float3 _373 = abs(_2242);
                            uint _2251 = uint(int(_373.y > _373.x));
                            uint _2257 = (_373.z > _373[_2251]) ? 2u : _2251;
                            uint _2263 = (_2257 * 2u) + uint(_374[_2257] < 0.0f);
                            float _2267 = abs(_375[_2263 / 2u]);
                            float _2287 = 0.5f - (0.000244140625f / _62_m0[_2228].w);
                            _2315 = _62_m0[_2228].xy + (clamp(float2((float(_2263) + ((((_375[uint(_343[_2263].x)] * _344[_2263].x) / _2267) * _2287) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_343[_2263].y)] * _344[_2263].y) / _2267) * _2287)), 0.0f.xx, 1.0f.xx) * _62_m0[_2228].zw);
                        }
                        _2322 = _2222 * _60.SampleLevel(_24, _2315, 0.0f).x;
                    }
                    else
                    {
                        _2322 = _2222;
                    }
                    float _2611 = 0.0f;
                    if (_2322 > 0.0f)
                    {
                        int _2375 = 0;
                        if (_2175)
                        {
                            _2375 = int(_50_m6[_2034].x);
                        }
                        else
                        {
                            uint _2330 = asuint(_50_m6[_2031].w);
                            uint _2332 = asuint(_50_m6[_2034].x);
                            float3 _2333 = _408 - _50_m6[_2028].xyz;
                            float3 _2334 = abs(_2333);
                            float _2335 = _2334.x;
                            float _2336 = _2334.y;
                            float _2338 = _2334.z;
                            int _2370 = 0;
                            if ((_2335 > _2336) && (_2335 > _2338))
                            {
                                _2370 = int((_2333.x > 0.0f) ? (_2330 >> 24u) : ((_2330 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2362 = 0;
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
                        float3 _2385 = (_408 - ((-_2162) * _52_m11[_2375].x)) + (_722 * (_52_m11[_2375].y * 5.0f));
                        float4 _2392 = mul(_52_m10[_2375], float4(_2385, 1.0f));
                        float _2393 = _2392.w;
                        float3 _2396 = _2392.xyz / _2393.xxx;
                        float2 _2397 = _2396.xy;
                        float3 _2405 = _2396.xyz;
                        bool3 _2406 = bool3(_2405.x <= 0.0f.xxx.x, _2405.y <= 0.0f.xxx.y, _2405.z <= 0.0f.xxx.z);
                        bool3 _2407 = bool3(_2405.x >= 1.0f.xxx.x, _2405.y >= 1.0f.xxx.y, _2405.z >= 1.0f.xxx.z);
                        float _2410 = _2396.z;
                        float2 _2421 = ((_2397 * (_52_m12[_2375].zw - _52_m12[_2375].xy)) + _52_m12[_2375].xy).xy * _52_m13.zw;
                        float2 _2423 = floor(_2421 + 0.5f.xx);
                        float2 _2424 = _2421 - _2423;
                        float _2425 = _2424.x;
                        float _2426 = _2425 + 0.5f;
                        float _2427 = _2426 * _2426;
                        float _2430 = 1.0f - _2425;
                        float _2431 = min(_2425, 0.0f);
                        float _2434 = _2425 + 1.0f;
                        float _2435 = max(_2425, 0.0f);
                        float _2446 = _2424.y;
                        float _2447 = _2446 + 0.5f;
                        float _2448 = _2447 * _2447;
                        float _2451 = 1.0f - _2446;
                        float _2452 = min(_2446, 0.0f);
                        float _2455 = _2446 + 1.0f;
                        float _2456 = max(_2446, 0.0f);
                        float3 _2468 = float3(0.1599999964237213134765625f * _2430, 0.1599999964237213134765625f * ((_2434 - (_2435 * _2435)) + 1.0f), _2427 * 0.07999999821186065673828125f);
                        float3 _2469 = float3(0.1599999964237213134765625f * ((_2427 * 0.5f) - _2425), 0.1599999964237213134765625f * ((_2430 - (_2431 * _2431)) + 1.0f), 0.1599999964237213134765625f * _2434) + _2468;
                        float3 _2471 = float3(0.1599999964237213134765625f * _2451, 0.1599999964237213134765625f * ((_2455 - (_2456 * _2456)) + 1.0f), _2448 * 0.07999999821186065673828125f);
                        float3 _2472 = float3(0.1599999964237213134765625f * ((_2448 * 0.5f) - _2446), 0.1599999964237213134765625f * ((_2451 - (_2452 * _2452)) + 1.0f), 0.1599999964237213134765625f * _2455) + _2471;
                        float3 _2478 = ((_2468 / _2469) + float3(-2.5f, -0.5f, 1.5f)) * _52_m13.xxx;
                        float3 _2480 = ((_2471 / _2472) + float3(-2.5f, -0.5f, 1.5f)) * _52_m13.yyy;
                        float2 _2482 = _2423 * _52_m13.xy;
                        float _2483 = _2478.x;
                        float _2484 = _2480.x;
                        float _2487 = _2478.y;
                        float _2490 = _2478.z;
                        float _2493 = _2480.y;
                        float _2500 = _2480.z;
                        float _2507 = _2469.x;
                        float _2508 = _2472.x;
                        float _2510 = _2469.y;
                        float _2512 = _2469.z;
                        float _2514 = _2472.y;
                        float _2518 = _2472.z;
                        float _2576 = (((((((_2507 * _2508) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2483, _2484), _363).xy, _2410)) + ((_2510 * _2508) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2487, _2484), _363).xy, _2410))) + ((_2512 * _2508) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2490, _2484), _363).xy, _2410))) + ((_2507 * _2514) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2483, _2493), _363).xy, _2410))) + ((_2510 * _2514) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2487, _2493), _363).xy, _2410))) + ((_2512 * _2514) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2490, _2493), _363).xy, _2410))) + ((_2507 * _2518) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2483, _2500), _363).xy, _2410));
                        float2 _2597 = min(_2397, 1.0f.xx - _2397);
                        _2611 = (_2375 >= 0) ? lerp(1.0f, (any(bool3(_2406.x || _2407.x, _2406.y || _2407.y, _2406.z || _2407.z)) || ((asuint(_2410) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2576 + ((_2510 * _2518) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2487, _2500), _363).xy, _2410))) + ((_2512 * _2518) * _54.SampleCmpLevelZero(_26, float3(_2482 + float2(_2490, _2500), _363).xy, _2410))), _2175 ? min(_52_m11[_2375].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_52_m11[_2375].z - _2393) * 0.25f, min(_2597.x, _2597.y)))) : _52_m11[_2375].w) : 1.0f;
                    }
                    else
                    {
                        _2611 = 1.0f;
                    }
                    _2612 = _2611;
                    break;
                } while(false);
                _3260 = _1988 * _2612;
                _3261 = 0.0f.xxx;
            }
            _2010 = _3260;
            _2013 = _2012 + _3261;
        }
        _1985 = _1984 + _2012;
    }
    float3 _3271 = -_449;
    float _3272 = 1.0f - _38_m1;
    float _3287 = _408.y * _18_m46.w;
    float _3292 = max(0.00999999977648258209228515625f, _3287 + _18_m47.w);
    float3 _3306 = exp(_18_m45.xyz * ((-max(0.0f, (_450 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3292)) / _3292) * exp(_3287 + _18_m48.w))));
    float _3309 = dot(_3271, _18_m44.xyz);
    float _3315 = _18_m45.w * _18_m45.w;
    float _3319 = (1.0f + _3315) - ((2.0f * _18_m45.w) * _3309);
    float3 _3651 = 0.0f.xxx;
    float _3652 = 0.0f;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3477 = (uint3(int3(int(_870.x), int(_870.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3478 = _3477.y;
        uint _3479 = _3477.z;
        uint _3482 = _3477.x + (_3478 * _3479);
        uint _3484 = _3478 + (_3479 * _3482);
        uint _3486 = _3479 + (_3482 * _3484);
        uint _3488 = _3482 + (_3484 * _3486);
        float _3512 = dot(_3271, -_16_m0[2].xyz);
        float3 _3522 = _408 - _16_m11.xyz;
        float _3524 = (_18_m55.w * ((_3512 > 5.9604644775390625e-08f) ? (1.0f / _3512) : 0.0f)) * (1.0f / _450);
        float _3525 = _3522.y;
        float _3526 = _3524 * _3525;
        float _3528 = _16_m11.y + _3526;
        float _3529 = _3525 - _3526;
        float _3531 = (1.0f - _3524) * _450;
        float _3545 = max(-127.0f, _18_m49.z * _3529);
        float _3569 = max(-127.0f, _18_m52.x * _3529);
        float _3580 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3528 - _18_m49.x)))) * ((abs(_3545) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3545)) / _3545) : (0.693147182464599609375f - (0.2402265071868896484375f * _3545)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3528 - _18_m52.z)))) * ((abs(_3569) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3569)) / _3569) : (0.693147182464599609375f - (0.2402265071868896484375f * _3569))));
        float _3602 = clamp((_450 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3605 = clamp((max(clamp(exp2(-(_3580 * _3531)), 0.0f, 1.0f), _18_m51.w) + clamp((_450 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3602, 0.0f, 1.0f);
        float4 _3645 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _40.SampleLevel(_24, float3((_1959 + ((((float3(uint3(_3488, _3484 + (_3486 * _3488), _368) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_871 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_871 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3651 = _3645.xyz + (((_18_m51.xyz * (1.0f - _3605)) + (((_18_m54.xyz * pow(clamp(dot(_449, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3580 * max(_3531 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3602))) * _3645.w);
        _3652 = _3645.w * _3605;
    }
    else
    {
        float3 _3349 = _408 - _16_m11.xyz;
        float _3351 = _3349.y;
        float _3365 = max(-127.0f, _18_m49.z * _3351);
        float _3389 = max(-127.0f, _18_m52.x * _3351);
        float _3400 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3365) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3365)) / _3365) : (0.693147182464599609375f - (0.2402265071868896484375f * _3365)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3389) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3389)) / _3389) : (0.693147182464599609375f - (0.2402265071868896484375f * _3389))));
        float _3422 = clamp((_450 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3425 = clamp((max(clamp(exp2(-(_3400 * _450)), 0.0f, 1.0f), _18_m51.w) + clamp((_450 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3422, 0.0f, 1.0f);
        _3651 = (_18_m51.xyz * (1.0f - _3425)) + (((_18_m54.xyz * pow(clamp(dot(_449, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3400 * max(_450 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3422));
        _3652 = _3425;
    }
    // RenoDX code start: rebalance the special waterfall overlay without changing its native opacity path.
    float3 _3661 = (((((((lerp(dot((_1321 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, (_1321 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), _1327) * _18_m76.xyz) * _38_m11) + ((_1321 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) * _1335)) + ((_770 * (FOG_MODIFICATION > 0.5f ? 0.4f : 1.0f)) * (1.0f - _38_m72))) + (_1958.xyz + ((_1984 * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f)) * _1987)).xyz).xyz * (FOG_MODIFICATION > 0.5f ? (0.5f + 0.5f * (_3306 * _3652)) : (_3306 * _3652))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3309 * _3309)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3315) / max((12.56637096405029296875f * _3319) * sqrt(_3319), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3306)) * _3652 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f)) + (_3651 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f))) * _3272)).xyz * _769;
    // RenoDX code end
    float4 _3662 = float4(_3661.x, _3661.y, _3661.z, _364.w);
    float _3663 = _769 * _3272;
    _3662.w = _3663;
    float3 _3672 = ((lerp(dot(_3662.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3662.xyz, _1327) * _18_m76.xyz) * _38_m11) + (_3662.xyz * _1335);
    float2 _3682 = min(_837, 1.0f.xx);
    float4 _3683 = float4(_3682.x, _3682.y, _364.z, _364.w);
    _3683.z = float(clamp(max(dot(_3672.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3663, _3663) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3683.w = (_38_m2 * _38_m0) * float(clamp(max(dot(_770, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _769, _769) * 10.0f, 0.0f, 1.0f) > 0.5f);
    // RenoDX code start: compress only bright overlay luminance while preserving hue and native alpha.
    float3 renodx_output_color = _3672;
    if (FOG_MODIFICATION > 0.5f)
    {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f)
        {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    // RenoDX code end
    _13 = float4(renodx_output_color, _3662.w);
    _14 = _3683;
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
    _11 = stage_input._11;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._13 = _13;
    stage_output._14 = _14;
    return stage_output;
}

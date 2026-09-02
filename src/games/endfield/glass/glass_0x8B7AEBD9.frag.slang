#include "../shared.h"

// Vulkan shader 0x8B7AEBD9, decompiled from the matching game shader dump.

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

struct _47
{
    float4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
};

static float _368 = 0.0f;
static float4 _370 = 0.0f.xxxx;
static uint _371 = 0u;

static const float4 _348[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _349[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _350[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]]
ByteAddressBuffer _35 : register(t50);
[[vk::binding(6, 1)]]
cbuffer _44_45 : register(b6)
{
    float _45_m0 : packoffset(c0);
    float _45_m1 : packoffset(c0.y);
    float _45_m2 : packoffset(c0.z);
    float _45_m3 : packoffset(c0.w);
    float _45_m4 : packoffset(c1);
    float _45_m5 : packoffset(c1.y);
    float _45_m6 : packoffset(c1.z);
    float _45_m7 : packoffset(c1.w);
    float _45_m8 : packoffset(c2);
    float _45_m9 : packoffset(c2.y);
    float _45_m10 : packoffset(c2.z);
    float _45_m11 : packoffset(c2.w);
    float _45_m12 : packoffset(c3);
    float _45_m13 : packoffset(c3.y);
    float _45_m14 : packoffset(c3.z);
    float _45_m15 : packoffset(c3.w);
    float _45_m16 : packoffset(c4);
    float _45_m17 : packoffset(c4.y);
    float _45_m18 : packoffset(c4.z);
    float _45_m19 : packoffset(c4.w);
    float _45_m20 : packoffset(c5);
    float _45_m21 : packoffset(c5.y);
    float _45_m22 : packoffset(c5.z);
    float _45_m23 : packoffset(c5.w);
    float _45_m24 : packoffset(c6);
    float _45_m25 : packoffset(c6.y);
    float _45_m26 : packoffset(c6.z);
    float _45_m27 : packoffset(c6.w);
    float _45_m28 : packoffset(c7);
    float _45_m29 : packoffset(c7.y);
    float _45_m30 : packoffset(c7.z);
    float _45_m31 : packoffset(c7.w);
    float4 _45_m32 : packoffset(c8);
    float4 _45_m33 : packoffset(c9);
    float4 _45_m34 : packoffset(c10);
    float4 _45_m35 : packoffset(c11);
    float4 _45_m36 : packoffset(c12);
    float4 _45_m37 : packoffset(c13);
    float4 _45_m38 : packoffset(c14);
    float4 _45_m39 : packoffset(c15);
    float4 _45_m40 : packoffset(c16);
    float4 _45_m41 : packoffset(c17);
    float4 _45_m42 : packoffset(c18);
    float4 _45_m43 : packoffset(c19);
    float4 _45_m44 : packoffset(c20);
    float4 _45_m45 : packoffset(c21);
    float _45_m46 : packoffset(c22);
    float _45_m47 : packoffset(c22.y);
    float _45_m48 : packoffset(c22.z);
    float _45_m49 : packoffset(c22.w);
    float _45_m50 : packoffset(c23);
    float _45_m51 : packoffset(c23.y);
    float _45_m52 : packoffset(c23.z);
    float _45_m53 : packoffset(c23.w);
    float4 _45_m54 : packoffset(c24);
    float4 _45_m55 : packoffset(c25);
    float _45_m56 : packoffset(c26);
    float _45_m57 : packoffset(c26.y);
    float _45_m58 : packoffset(c26.z);
    float _45_m59 : packoffset(c26.w);
};

[[vk::binding(17, 0)]]
cbuffer _46_48 : register(b17)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _49_50 : register(b47)
{
    int _50_m0 : packoffset(c0);
    int _50_m1 : packoffset(c0.y);
    int _50_m2 : packoffset(c0.z);
    int _50_m3 : packoffset(c0.w);
    float _50_m4 : packoffset(c1);
    float _50_m5 : packoffset(c1.y);
    float _50_m6 : packoffset(c1.z);
    float _50_m7 : packoffset(c1.w);
    float _50_m8 : packoffset(c2);
    float _50_m9 : packoffset(c2.y);
    float _50_m10 : packoffset(c2.z);
    float _50_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _51_52 : register(b14)
{
    float4 _52_m0 : packoffset(c0);
    float4 _52_m1 : packoffset(c1);
    float4 _52_m2 : packoffset(c2);
    float4 _52_m3 : packoffset(c3);
    float4 _52_m4 : packoffset(c4);
    uint4 _52_m5 : packoffset(c5);
    float4 _52_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _53_54 : register(b15)
{
    column_major float4x4 _54_m0[5] : packoffset(c0);
    float4 _54_m1[4] : packoffset(c20);
    float4 _54_m2[4] : packoffset(c24);
    float4 _54_m3[4] : packoffset(c28);
    float4 _54_m4 : packoffset(c32);
    float4 _54_m5 : packoffset(c33);
    float4 _54_m6 : packoffset(c34);
    float4 _54_m7 : packoffset(c35);
    float4 _54_m8 : packoffset(c36);
    float4 _54_m9[27] : packoffset(c37);
    column_major float4x4 _54_m10[56] : packoffset(c64);
    float4 _54_m11[56] : packoffset(c288);
    float4 _54_m12[56] : packoffset(c344);
    float4 _54_m13 : packoffset(c400);
    float4 _54_m14[47] : packoffset(c401);
    column_major float4x4 _54_m15[15] : packoffset(c448);
    float4 _54_m16[15] : packoffset(c508);
    float4 _54_m17[15] : packoffset(c523);
    float4 _54_m18[15] : packoffset(c538);
    float4 _54_m19 : packoffset(c553);
    float4 _54_m20 : packoffset(c554);
    float4 _54_m21[21] : packoffset(c555);
    column_major float4x4 _54_m22 : packoffset(c576);
    column_major float4x4 _54_m23 : packoffset(c580);
    float4 _54_m24 : packoffset(c584);
    float4 _54_m25 : packoffset(c585);
    float4 _54_m26 : packoffset(c586);
    float4 _54_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _71_72 : register(b49)
{
    float4 _72_m0[32] : packoffset(c0);
    column_major float4x4 _72_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]]
SamplerState _23 : register(s3);
[[vk::binding(6, 0)]]
SamplerState _24 : register(s6);
[[vk::binding(4, 0)]]
SamplerState _25 : register(s4);
[[vk::binding(1, 0)]]
SamplerState _26 : register(s1);
[[vk::binding(7, 0)]]
SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]]
Texture2D<float4> _29 : register(t45);
[[vk::binding(23, 0)]]
Texture2D<float4> _30 : register(t23);
[[vk::binding(24, 0)]]
Texture2D<float4> _31 : register(t24);
[[vk::binding(25, 0)]]
Texture2DArray<float4> _33 : register(t25);
[[vk::binding(5, 1)]]
Texture2D<float4> _36 : register(t5);
[[vk::binding(2, 1)]]
SamplerState _37 : register(s2);
[[vk::binding(4, 1)]]
Texture2D<float4> _38 : register(t4);
[[vk::binding(1, 1)]]
SamplerState _39 : register(s1);
[[vk::binding(22, 0)]]
Texture2D<float4> _40 : register(t22);
[[vk::binding(3, 1)]]
Texture2D<float4> _41 : register(t3);
[[vk::binding(0, 1)]]
SamplerState _42 : register(s0);
[[vk::binding(20, 0)]]
SamplerState _43 : register(s20);
[[vk::binding(9, 0)]]
Texture2D<float4> _55 : register(t9);
[[vk::binding(26, 0)]]
Texture2D<float4> _56 : register(t26);
[[vk::binding(8, 0)]]
Texture2D<float4> _57 : register(t8);
[[vk::binding(11, 0)]]
Texture2D<float4> _58 : register(t11);
[[vk::binding(10, 0)]]
Texture2D<float4> _59 : register(t10);
[[vk::binding(27, 0)]]
Texture2D<float4> _62 : register(t27);
[[vk::binding(34, 0)]]
Texture3D<float4> _63 : register(t34);
[[vk::binding(31, 0)]]
Texture3D<float4> _64 : register(t31);
[[vk::binding(33, 0)]]
Texture3D<float4> _65 : register(t33);
[[vk::binding(30, 0)]]
Texture3D<float4> _66 : register(t30);
[[vk::binding(32, 0)]]
Texture3D<float4> _67 : register(t32);
[[vk::binding(29, 0)]]
Texture3D<float4> _68 : register(t29);
[[vk::binding(35, 0)]]
Texture3D<float4> _69 : register(t35);
[[vk::binding(28, 0)]]
Texture2D<float4> _70 : register(t28);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _4;
static float2 _5;
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
    float2 _4 : TEXCOORD0;
    float2 _5 : TEXCOORD1;
    float3 _6 : TEXCOORD2;
    float4 _7 : TEXCOORD3;
    float4 _8 : TEXCOORD4;
    float3 _9 : TEXCOORD5;
    float3 _10 : TEXCOORD6;
    nointerpolation uint _11 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 _13 : SV_Target0;
    float4 _14 : SV_Target1;
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
    float _395 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _400 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _402 = abs(_400);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _402 : (-_402)), (1.0f - _395) - _400) < 0.0f)
    {
        discard;
    }
    float2 _419 = gl_FragCoord.xy * _18_m0.zw;
    float2 _422 = (_419 * 2.0f) - 1.0f.xx;
    float4 _425 = float4(_422, gl_FragCoord.z, 1.0f);
    _425.y = -_422.y;
    float4 _428 = mul(_16_m6, _425);
    float3 _432 = _428.xyz / _428.w.xxx;
    float4 _436 = float4(_432, 1.0f);
    float _439 = abs(mul(_16_m0, _436).z);
    float _443 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _465 = 0.0f.xxx;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _465 = _16_m11.xyz - _432;
            break;
        }
        else
        {
            _465 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _466 = dot(_465, _465);
    float _468 = rsqrt(max(_466, 9.9999999392252902907785028219223e-09f));
    float3 _469 = _465 * _468;
    float _470 = _466 * _468;
    float4 _503 = _36.SampleBias(_37, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float _505 = _503.w;
    float4 _508 = _38.SampleBias(_39, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
    float2 _511 = (_508.xy * 2.0f.xx) - 1.0f.xx;
    float2 _512 = abs(_511);
    bool2 _513 = bool2(_512.x < 0.01200000010430812835693359375f.xx.x, _512.y < 0.01200000010430812835693359375f.xx.y);
    float2 _514 = float2(_513.x ? 0.0f.xx.x : _511.x, _513.y ? 0.0f.xx.y : _511.y);
    float2 _515 = _514 * _45_m0;
    float _523 = _508.w;
    float3 _535 = lerp(clamp((_503.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
    float _541 = lerp(_505, _523, _45_m6) * _45_m32.w;
    float _547 = lerp(_541, _541 * _8.x, _45_m56);
    float _552 = lerp(_45_m2, _45_m3, _508.z);
    float _562 = lerp(_505, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float3 _575 = normalize(((_7.xyz * _515.x) + ((cross(_6, float4(_7.xyz, _443).xyz) * _443) * _515.y)) + (_6 * (sqrt(clamp(1.0f - dot(_514, _514), 0.0f, 1.0f)) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _601 = dot(_575, _469);
    float3 _602 = -_469;
    float4 _622 = _41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16);
    float2 _630 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_602, _575, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _601, 0.5f), _45_m50)).xy, ((_622 * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
    float2 _631 = _419 + _630;
    float2 _633 = _419 + (_630 * 0.25f);
    float4 _661 = _40.SampleBias(_43, lerp(lerp(_419, _633, step(_439, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _633, _18_m16).x) + _18_m2.w)).xx), _631, step(_439, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _631, _18_m16).x) + _18_m2.w)).xx), _18_m16);
    float _674 = clamp(float(int(sign(_395 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _687 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _687.y = -_687.y;
    float _713 = 0.07999999821186065673828125f * _45_m1;
    float3 _714 = _535 * _562;
    float3 _715 = _535 - _714;
    float3 _719 = (_713 - (_713 * _562)).xxx + _714;
    float4 _722 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _552) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _723 = _722.x;
    float2 _733 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_723 * _723, exp2((-9.27999973297119140625f) * max(0.0f, _601))) * _723) + _722.y)) + _722.zw;
    uint2 _769 = uint2(0u, 0u);
    float _770 = 0.0f;
    if (_18_m24.y == 1.0f)
    {
        float4 _750 = mul(_18_m135, _436);
        float4 _753 = _750;
        _753.y = -_750.y;
        float4 _756 = _753 * (1.0f / _750.w);
        _769 = uint2(clamp(((_756.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _770 = 1.0f / ((_18_m2.z * _756.z) + _18_m2.w);
    }
    else
    {
        _769 = uint2(gl_FragCoord.xy);
        _770 = _439;
    }
    float3 _772 = _432 + (_575 * 0.25f);
    float3 _782 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _791 = _772 - (_18_m105.xyz + (_782 * (-_18_m107.w)));
    float _805 = max(clamp((max(abs(_791.x), abs(_791.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_791.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1107 = 0.0f.xxxx;
    float4 _1108 = 0.0f.xxxx;
    float4 _1109 = 0.0f.xxxx;
    float _1110 = 0.0f;
    float _1111 = 0.0f;
    if ((_18_m105.w != 0.0f) && (_805 < 1.0f))
    {
        float3 _818 = _772 - (_18_m105.xyz + (_782 * (-_18_m107.y)));
        float _832 = max(clamp((max(abs(_818.x), abs(_818.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_818.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _908 = 0.0f;
        float4 _909 = 0.0f.xxxx;
        float4 _910 = 0.0f.xxxx;
        float4 _911 = 0.0f.xxxx;
        if (_832 < 1.0f)
        {
            float3 _841 = ((_772 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _843 = _841 - floor(_841);
            float4 _847 = _63.SampleLevel(_25, _843, 0.0f);
            float _848 = 1.0f - _832;
            float _852 = _18_m106.y * 0.5f;
            float _857 = _843.x;
            float _858 = clamp(_843.y, _852, 1.0f - _852) * 0.3333333432674407958984375f;
            float _859 = _843.z;
            float4 _862 = _64.SampleLevel(_24, float3(_857, _858, _859), 0.0f);
            float _878 = _847.x;
            float _888 = _847.y;
            float _898 = _847.z;
            _908 = _805 + (_862.w * _848);
            _909 = float4(((_64.SampleLevel(_24, float3(_857, _858 + 0.666666686534881591796875f, _859), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _898, _898) * _848;
            _910 = float4(((_64.SampleLevel(_24, float3(_857, _858 + 0.3333333432674407958984375f, _859), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _888, _888) * _848;
            _911 = float4(((_862.xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _848;
        }
        else
        {
            _908 = _805;
            _909 = 0.0f.xxxx;
            _910 = 0.0f.xxxx;
            _911 = 0.0f.xxxx;
        }
        float3 _917 = _772 - (_18_m105.xyz + (_782 * (-_18_m107.z)));
        float _931 = max(clamp((max(abs(_917.x), abs(_917.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_917.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1011 = 0.0f;
        float4 _1012 = 0.0f.xxxx;
        float4 _1013 = 0.0f.xxxx;
        float4 _1014 = 0.0f.xxxx;
        if (_931 < 1.0f)
        {
            float3 _940 = ((_772 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _942 = _940 - floor(_940);
            float4 _946 = _65.SampleLevel(_25, _942, 0.0f);
            float _948 = _832 * (1.0f - _931);
            float _952 = _18_m106.y * 0.5f;
            float _957 = _942.x;
            float _958 = clamp(_942.y, _952, 1.0f - _952) * 0.3333333432674407958984375f;
            float _959 = _942.z;
            float4 _962 = _66.SampleLevel(_24, float3(_957, _958, _959), 0.0f);
            float _978 = _946.x;
            float _989 = _946.y;
            float _1000 = _946.z;
            _1011 = _908 + (_962.w * _948);
            _1012 = _909 + (float4(((_66.SampleLevel(_24, float3(_957, _958 + 0.666666686534881591796875f, _959), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1000, _1000) * _948);
            _1013 = _910 + (float4(((_66.SampleLevel(_24, float3(_957, _958 + 0.3333333432674407958984375f, _959), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _989, _989) * _948);
            _1014 = _911 + (float4(((_962.xyz * 4.0f) - 2.0f.xxx) * _978, _978) * _948);
        }
        else
        {
            _1011 = _908;
            _1012 = _909;
            _1013 = _910;
            _1014 = _911;
        }
        float4 _1097 = 0.0f.xxxx;
        float4 _1098 = 0.0f.xxxx;
        float4 _1099 = 0.0f.xxxx;
        float _1100 = 0.0f;
        if (_931 > 0.0f)
        {
            float3 _1023 = ((_772 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1026 = _18_m106.xyz * 0.5f;
            float3 _1028 = clamp(_1023 - floor(_1023), _1026, 1.0f.xxx - _1026);
            float4 _1032 = _67.SampleLevel(_25, _1028, 0.0f);
            float _1034 = _931 * (1.0f - _805);
            float _1038 = _18_m106.y * 0.5f;
            float _1043 = _1028.x;
            float _1044 = clamp(_1028.y, _1038, 1.0f - _1038) * 0.3333333432674407958984375f;
            float _1045 = _1028.z;
            float4 _1048 = _68.SampleLevel(_24, float3(_1043, _1044, _1045), 0.0f);
            float _1064 = _1032.x;
            float _1075 = _1032.y;
            float _1086 = _1032.z;
            _1097 = _1012 + (float4(((_68.SampleLevel(_24, float3(_1043, _1044 + 0.666666686534881591796875f, _1045), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1086, _1086) * _1034);
            _1098 = _1013 + (float4(((_68.SampleLevel(_24, float3(_1043, _1044 + 0.3333333432674407958984375f, _1045), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1075, _1075) * _1034);
            _1099 = _1014 + (float4(((_1048.xyz * 4.0f) - 2.0f.xxx) * _1064, _1064) * _1034);
            _1100 = _1011 + (_1048.w * _1034);
        }
        else
        {
            _1097 = _1012;
            _1098 = _1013;
            _1099 = _1014;
            _1100 = _1011;
        }
        float _1103 = clamp((_1100 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1107 = _1097;
        _1108 = _1098;
        _1109 = _1099;
        _1110 = _1103 - _805;
        _1111 = (_1103 + _805) * 0.5f;
    }
    else
    {
        _1107 = 0.0f.xxxx;
        _1108 = 0.0f.xxxx;
        _1109 = 0.0f.xxxx;
        _1110 = 0.0f;
        _1111 = 1.0f;
    }
    float4 _1131 = _1109 + float4(_18_m108.x * _1111, (_18_m108.y * _1111) + ((_18_m108.w * _1110) * 0.5f), _18_m108.z * _1111, (_18_m108.w * _1111) + ((_18_m108.y * _1110) * 0.375f));
    float4 _1151 = _1108 + float4(_18_m109.x * _1111, (_18_m109.y * _1111) + ((_18_m109.w * _1110) * 0.5f), _18_m109.z * _1111, (_18_m109.w * _1111) + ((_18_m109.y * _1110) * 0.375f));
    float4 _1171 = _1107 + float4(_18_m110.x * _1111, (_18_m110.y * _1111) + ((_18_m110.w * _1110) * 0.5f), _18_m110.z * _1111, (_18_m110.w * _1111) + ((_18_m110.y * _1110) * 0.375f));
    float _1176 = max(0.0f, dot(_1131.xyz, _575) + _1131.w);
    float _1181 = max(0.0f, dot(_1151.xyz, _575) + _1151.w);
    float _1186 = max(0.0f, dot(_1171.xyz, _575) + _1171.w);
    float3 _1196 = reflect(_602, _575);
    float _1204 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_552, 0.001000000047497451305389404296875f))));
    float2 _1205 = float2(_769);
    float2 _1209 = floor(_1205 * _48_m0.w);
    float _1226 = floor(_770 - _48_m2.y);
    float _1230 = clamp(_1226, 0.0f, _48_m1.x - 1.0f);
    uint _1240 = (_1226 <= _1230) ? (_35.Load(uint(_18_m21.z + int(_1209.x + (_1209.y * _48_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1230)) * 4 + 0)) : 0u;
    float _1243 = dot(float4(_1176, _1181, _1186, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1245 = 0.0f.xxx;
    float _1248 = 0.0f;
    uint _1250 = 0u;
    _1245 = 0.0f.xxx;
    _1248 = 1.0f;
    _1250 = _1240;
    uint _1251 = 0u;
    float3 _1246 = 0.0f.xxx;
    float _1249 = 0.0f;
    bool _1253 = false;
    [loop]
    for (;;)
    {
        _1253 = _1248 > 0.00999999977648258209228515625f;
        if ((_1250 != 0u) && _1253)
        {
            uint _1257 = firstbitlow(_1250);
            _1251 = _1250 ^ (1u << (_1257 & 31u));
            float3 _1277 = float3(dot(_48_m4[_1257]._m2, _436), dot(_48_m4[_1257]._m3, _436), dot(_48_m4[_1257]._m4, _436));
            float3 _1278 = abs(_1277);
            if (all(bool3(_1278.x <= _48_m4[_1257]._m1.xyz.x, _1278.y <= _48_m4[_1257]._m1.xyz.y, _1278.z <= _48_m4[_1257]._m1.xyz.z)))
            {
                float3 _1287 = _48_m4[_1257]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1289 = _1278 * 0.100000001490116119384765625f;
                float3 _1290 = _1289 * _1289;
                float3 _1293 = (_48_m4[_1257]._m1.xyz - _1278) * _48_m4[_1257]._m5.xyz;
                float3 _1341 = 0.0f.xxx;
                [branch]
                if (_48_m4[_1257]._m6.x == 1.0f)
                {
                    float3 _1326 = float3(dot(_48_m4[_1257]._m2.xyz, _1196), dot(_48_m4[_1257]._m3.xyz, _1196), dot(_48_m4[_1257]._m4.xyz, _1196));
                    float3 _1328 = (_48_m4[_1257]._m1.xyz - _1277) / _1326;
                    float3 _1331 = ((-_48_m4[_1257]._m1.xyz) - _1277) / _1326;
                    bool3 _1332 = bool3(_1326.x > 0.0f.xxx.x, _1326.y > 0.0f.xxx.y, _1326.z > 0.0f.xxx.z);
                    float3 _1333 = float3(_1332.x ? _1328.x : _1331.x, _1332.y ? _1328.y : _1331.y, _1332.z ? _1328.z : _1331.z);
                    _1341 = _1277 + (_1326 * min(min(_1333.x, _1333.y), _1333.z));
                }
                else
                {
                    _1341 = _1196;
                }
                float3 _1342 = normalize(_1341);
                float3 _1345 = float3(int3(sign(_1342)));
                float3 _1348 = _1342 / dot(_1342, _1345).xxx;
                float3 _1362 = 0.0f.xxx;
                if (_1348.z < 0.0f)
                {
                    float3 _1353 = abs(_1348);
                    float2 _1360 = _1345.xy * float2(1.0f - _1353.y, 1.0f - _1353.x);
                    _1362 = float3(_1360.x, _1360.y, _1348.z);
                }
                else
                {
                    _1362 = _1348;
                }
                float _1387 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1257]._m0, float4(_575, 1.0f))));
                float _1400 = clamp((min(_1293.x, min(_1293.y, _1293.z)) * _48_m4[_1257]._m6.y) + ((((((_1287 * _1287).x - ((_1290.x + _1290.y) + _1290.z)) * _48_m4[_1257]._m5.x) * _48_m4[_1257]._m5.x) * (1.0f - _48_m4[_1257]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1257]._m6.w;
                _1246 = _1245 + ((((_33.SampleLevel(_26, float3((((_1362.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1257]._m1.w), _1204).xyz * _48_m4[_1257]._m5.w) * ((((((clamp(abs(_1243 / _1387), 0.0f, 1.0f) * 2.0f) + _1243) / (2.0f + _1387)) - 1.0f) * _18_m23.w) + 1.0f)) * _1400) * _1248);
                _1249 = _1248 * (1.0f - _1400);
            }
            else
            {
                _1246 = _1245;
                _1249 = _1248;
            }
            _1245 = _1246;
            _1248 = _1249;
            _1250 = _1251;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1469 = 0.0f.xxx;
    if (_1253)
    {
        float3 _1408 = normalize(_1196);
        float3 _1411 = float3(int3(sign(_1408)));
        float3 _1414 = _1408 / dot(_1408, _1411).xxx;
        float3 _1428 = 0.0f.xxx;
        if (_1414.z < 0.0f)
        {
            float3 _1419 = abs(_1414);
            float2 _1426 = _1411.xy * float2(1.0f - _1419.y, 1.0f - _1419.x);
            _1428 = float3(_1426.x, _1426.y, _1414.z);
        }
        else
        {
            _1428 = _1414;
        }
        float _1455 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_575, 1.0f))));
        _1469 = _1245 + ((_33.SampleLevel(_26, float3((((_1428.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1204).xyz * ((((((clamp(abs(_1243 / _1455), 0.0f, 1.0f) * 2.0f) + _1243) / (2.0f + _1455)) - 1.0f) * _18_m23.w) + 1.0f)) * _1248);
    }
    else
    {
        _1469 = _1245;
    }
    float3 _1475 = (_1469 * _18_m23.z) * _18_m22.y;
    float3 _1496 = 0.0f.xxx;
    [branch]
    if (_18_m23.y != 0.0f)
    {
        float4 _1490 = _31.SampleBias(_24, _419, _18_m16);
        float _1491 = _1490.x;
        _1496 = (_30.SampleBias(_24, _419, _18_m16).xyz * _1491) + (_1475 * (1.0f - _1491));
    }
    else
    {
        _1496 = _1475;
    }
    float2 _2011 = 0.0f.xx;
    do
    {
        if (_54_m7.w >= 0.9900000095367431640625f)
        {
            _2011 = float2(_54_m7.z, 1.0f);
            break;
        }
        int _1512 = int(_54_m7.x);
        bool3 _1514 = (_1512 == 2).xxx;
        float3 _1522 = _432 - float3(_1514.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1514.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1514.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
        float _1533 = max(clamp((_54_m6.w - dot(_1522, _1522)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
        float _1750 = 0.0f;
        bool _1751 = false;
        if (_1533 > 0.0f)
        {
            float _1748 = 0.0f;
            bool _1749 = false;
            if (_1512 > 0)
            {
                float3 _1540 = _432 - _54_m1[0].xyz;
                float3 _1544 = _432 - _54_m1[1].xyz;
                float3 _1548 = _432 - _54_m1[2].xyz;
                float3 _1552 = _432 - _54_m1[3].xyz;
                float4 _1557 = float4(dot(_1540, _1540), dot(_1544, _1544), dot(_1548, _1548), dot(_1552, _1552));
                float4 _1566 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
                float4 _1568 = float4(bool4(_1557.x < _1566.x, _1557.y < _1566.y, _1557.z < _1566.z, _1557.w < _1566.w));
                float3 _1572 = clamp(_1568.yzw - _1568.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1576 = clamp(4.0f - dot(float4(_1568.x, _1572.x, _1572.y, _1572.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1578 = clamp(_1576 + 1.0f, 0.0f, 3.0f);
                uint _1579 = uint(_1576);
                uint _1587 = uint(_1578);
                float _1593 = dot(_1557, _348[_1587]) / _54_m1[_1587].w;
                float _1610 = 0.0f;
                if (((_1578 > _1576) && (_1593 >= 0.0f)) && (_1593 <= 1.0f))
                {
                    _1610 = _1576 + step(frac(52.98291778564453125f * frac(dot(_1205 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1557, _348[_1579]) / _54_m1[_1579].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1610 = _1576;
                }
                float _1611 = clamp(_1610, 0.0f, 4.0f);
                float4 _1615 = mul(_54_m0[uint(_1611)], _436);
                float _1618 = _1615.z;
                float4 _1619 = float4(_1615.xy, _1618, _1611);
                float3 _1620 = _1619.xyz;
                bool3 _1621 = bool3(_1620.x <= 0.0f.xxx.x, _1620.y <= 0.0f.xxx.y, _1620.z <= 0.0f.xxx.z);
                bool3 _1622 = bool3(_1620.x >= 1.0f.xxx.x, _1620.y >= 1.0f.xxx.y, _1620.z >= 1.0f.xxx.z);
                bool _1628 = any(bool3(_1621.x || _1622.x, _1621.y || _1622.y, _1621.z || _1622.z)) || ((asuint(_1618) & 2147483647u) > 2139095040u);
                int _1629 = int(_1611);
                float2 _1646 = float4(_54_m3[_1629].xy + (_1619.xy * _54_m3[_1629].zw), _1618, _1611).xy * _54_m4.zw;
                float2 _1648 = floor(_1646 + 0.5f.xx);
                float2 _1649 = _1646 - _1648;
                float _1650 = _1649.x;
                float _1651 = _1650 + 0.5f;
                float _1653 = (_1651 * _1651) * 0.5f;
                float _1656 = min(_1650, 0.0f);
                float _1660 = max(_1650, 0.0f);
                float4 _1664 = float4(_1653 - _1650, (1.0f - _1650) - (_1656 * _1656), (_1650 + 1.0f) - (_1660 * _1660), _1653) * 0.44444000720977783203125f;
                float _1665 = _1649.y;
                float _1666 = _1665 + 0.5f;
                float _1668 = (_1666 * _1666) * 0.5f;
                float _1671 = min(_1665, 0.0f);
                float _1675 = max(_1665, 0.0f);
                float4 _1679 = float4(_1668 - _1665, (1.0f - _1665) - (_1671 * _1671), (_1665 + 1.0f) - (_1675 * _1675), _1668) * 0.44444000720977783203125f;
                float2 _1681 = _1664.yw;
                float2 _1682 = _1664.xz + _1681;
                float2 _1684 = _1679.yw;
                float2 _1685 = _1679.xz + _1684;
                float2 _1691 = ((_1681 / _1682) + float2(-1.5f, 0.5f)) * _54_m4.xx;
                float2 _1693 = ((_1684 / _1685) + float2(-1.5f, 0.5f)) * _54_m4.yy;
                float2 _1695 = _1648 * _54_m4.xy;
                float _1696 = _1691.x;
                float _1697 = _1693.x;
                float _1700 = _1691.y;
                float _1703 = _1693.y;
                float _1708 = _1682.x;
                float _1709 = _1685.x;
                float _1711 = _1682.y;
                float _1713 = _1685.y;
                _1748 = _1628 ? 1.0f : (((((_1708 * _1709) * _55.SampleCmpLevelZero(_27, float3(_1695 + float2(_1696, _1697), _368).xy, _1618)) + ((_1711 * _1709) * _55.SampleCmpLevelZero(_27, float3(_1695 + float2(_1700, _1697), _368).xy, _1618))) + ((_1708 * _1713) * _55.SampleCmpLevelZero(_27, float3(_1695 + float2(_1696, _1703), _368).xy, _1618))) + ((_1711 * _1713) * _55.SampleCmpLevelZero(_27, float3(_1695 + float2(_1700, _1703), _368).xy, _1618)));
                _1749 = _1628;
            }
            else
            {
                _1748 = 1.0f;
                _1749 = false;
            }
            _1750 = _1748;
            _1751 = _1749;
        }
        else
        {
            _1750 = 1.0f;
            _1751 = false;
        }
        float _1951 = 0.0f;
        float _1952 = 0.0f;
        if ((_1533 < 1.0f) || (_54_m8.x > 0.5f))
        {
            float _1762 = 1.0f - clamp(dot(_575, _52_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1779 = float4((_432 - (_52_m0.xyz * (_1762 * _54_m24.x))) + (_575 * (_1762 * _54_m24.y)), 1.0f);
            float4 _1780 = mul(_54_m23, _1779);
            float2 _1781 = _1780.xy;
            float _1949 = 0.0f;
            if (all(bool2(_1781.x > 0.0f.xx.x, _1781.y > 0.0f.xx.y)) && all(bool2(_1781.x < 1.0f.xx.x, _1781.y < 1.0f.xx.y)))
            {
                uint _1800 = clamp(uint((floor(_1780.y * _54_m25.z) + _1780.x) * _54_m25.y), 0u, 127u);
                uint _1804 = asuint(_54_m27[_1800].x);
                float2 _1805 = spvUnpackHalf2x16(_1804);
                float _1806 = _1805.x;
                float _1948 = 0.0f;
                if (_1806 >= 0.0f)
                {
                    float4x4 _1815 = _54_m22;
                    _1815[0].w = _54_m27[_1800].y;
                    _1815[1].w = _54_m27[_1800].z;
                    _1815[2].w = _54_m27[_1800].w;
                    float4 _1822 = mul(_1815, _1779);
                    float3 _1823 = _1822.xyz;
                    float _1947 = 0.0f;
                    if (all(bool3(_1823.x > 0.0f.xxx.x, _1823.y > 0.0f.xxx.y, _1823.z > 0.0f.xxx.z)) && all(bool3(_1823.x < 1.0f.xxx.x, _1823.y < 1.0f.xxx.y, _1823.z < 1.0f.xxx.z)))
                    {
                        float _1840 = _1822.z;
                        float2 _1846 = float4((_1822.xy * _54_m24.zw) + float2(_1806, spvUnpackHalf2x16(_1804 >> 16u).x), _1840, 1.0f).xy * _54_m26.zw;
                        float2 _1848 = floor(_1846 + 0.5f.xx);
                        float2 _1849 = _1846 - _1848;
                        float _1850 = _1849.x;
                        float _1851 = _1850 + 0.5f;
                        float _1853 = (_1851 * _1851) * 0.5f;
                        float _1856 = min(_1850, 0.0f);
                        float _1860 = max(_1850, 0.0f);
                        float4 _1864 = float4(_1853 - _1850, (1.0f - _1850) - (_1856 * _1856), (_1850 + 1.0f) - (_1860 * _1860), _1853) * 0.44444000720977783203125f;
                        float _1865 = _1849.y;
                        float _1866 = _1865 + 0.5f;
                        float _1868 = (_1866 * _1866) * 0.5f;
                        float _1871 = min(_1865, 0.0f);
                        float _1875 = max(_1865, 0.0f);
                        float4 _1879 = float4(_1868 - _1865, (1.0f - _1865) - (_1871 * _1871), (_1865 + 1.0f) - (_1875 * _1875), _1868) * 0.44444000720977783203125f;
                        float2 _1882 = _1864.xz + _1864.yw;
                        float2 _1885 = _1879.xz + _1879.yw;
                        float2 _1891 = ((_1864.yw / _1882) + float2(-1.5f, 0.5f)) * _54_m26.xx;
                        float2 _1893 = ((_1879.yw / _1885) + float2(-1.5f, 0.5f)) * _54_m26.yy;
                        float2 _1895 = _1848 * _54_m26.xy;
                        float _1896 = _1891.x;
                        float _1897 = _1893.x;
                        float2 _1899 = _1895 + float2(_1896, _1897);
                        float _1900 = _1891.y;
                        float2 _1902 = _1895 + float2(_1900, _1897);
                        float _1903 = _1893.y;
                        float2 _1905 = _1895 + float2(_1896, _1903);
                        float2 _1907 = _1895 + float2(_1900, _1903);
                        float _1908 = _1882.x;
                        float _1909 = _1885.x;
                        float _1911 = _1882.y;
                        float _1913 = _1885.y;
                        _1947 = ((((_1908 * _1909) * _58.SampleCmpLevelZero(_27, float3(_1899, _368).xy, _1840)) + ((_1911 * _1909) * _58.SampleCmpLevelZero(_27, float3(_1902, _368).xy, _1840))) + ((_1908 * _1913) * _58.SampleCmpLevelZero(_27, float3(_1905, _368).xy, _1840))) + ((_1911 * _1913) * _58.SampleCmpLevelZero(_27, float3(_1907, _368).xy, _1840));
                    }
                    else
                    {
                        _1947 = 1.0f;
                    }
                    _1948 = _1947;
                }
                else
                {
                    _1948 = 1.0f;
                }
                _1949 = _1948;
            }
            else
            {
                _1949 = 1.0f;
            }
            _1951 = _1751 ? _1949 : _1750;
            _1952 = _1949;
        }
        else
        {
            _1951 = _1750;
            _1952 = 1.0f;
        }
        float _1955 = lerp(lerp(_1952, _1951, _1533), min(_1952, _1951), _54_m8.x);
        float _2006 = 0.0f;
        if (_1955 > 0.001000000047497451305389404296875f)
        {
            float3 _1962 = _432 - _18_m65.xyz;
            float2 _1972 = (_1962 + (_18_m68.xyz * _1962.y)).xz * _18_m66.z;
            float2 _1981 = _18_m67.xy * _18_m75.w;
            _2006 = _1955 * lerp(1.0f, lerp(_57.SampleLevel(_25, _1972 + _1981, 0.0f), _57.SampleLevel(_25, (_1972 * _18_m67.w) + _1981, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1962.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2006 = _1955;
        }
        _2011 = float2(lerp(_2006, _54_m7.z, _54_m7.w), _2006);
        break;
    } while(false);
    float _2016 = lerp(1.0f, min(1.0f, _2011.x), _54_m6.x);
    float4 _2155 = 0.0f.xxxx;
    if (_2016 > 0.001000000047497451305389404296875f)
    {
        float3 _2026 = -_52_m0.xyz;
        float _2031 = dot(_2026, _1196);
        float3 _2033 = _1196 - (_2026 * _2031);
        bool3 _2035 = (_2031 < _52_m4.z).xxx;
        float3 _2043 = normalize((_2026 * _52_m4.z) + ((_2033 * rsqrt(max(6.103515625e-05f, dot(_2033, _2033)))) * _52_m4.y));
        float3 _2044 = float3(_2035.x ? _2043.x : _1196.x, _2035.y ? _2043.y : _1196.y, _2035.z ? _2043.z : _1196.z);
        float3 _2048 = _2044 + _469;
        float3 _2052 = _2048 * rsqrt(max(6.103515625e-05f, dot(_2048, _2048)));
        float _2053 = clamp(dot(_2044, _575), 0.0f, 1.0f);
        float _2055 = clamp(dot(_575, _2052), 0.0f, 1.0f);
        float _2058 = clamp(_601, 0.0f, 1.0f);
        float _2059 = _552 * _552;
        float _2060 = _2059 * _2059;
        float _2081 = (((_2055 * _2060) - _2055) * _2055) + 1.0f;
        float _2084 = 1.0f - clamp(dot(_469, _2052), 0.0f, 1.0f);
        float _2085 = _2084 * _2084;
        float _2087 = (_2084 * _2085) * _2085;
        float _2111 = 1.0f - _552;
        float _2118 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2111 * (1.04997003078460693359375f + (_2111 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2111))))));
        float _2119 = 1.0f - _2118;
        float3 _2122 = _719 + ((1.0f.xxx - _719) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0x8B7AEBD9:
        float3 _2141 = (clamp(clamp((min(((_719 * (1.0f - _2087)) + _2087.xxx) * ((_2060 / (_2081 * _2081)) * (0.5f / (((_2053 * sqrt(((((-_2058) * _2060) + _2058) * _2058) + _2060)) + (_2058 * sqrt(((((-_2053) * _2060) + _2053) * _2053) + _2060))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2122 * (((_62.SampleLevel(_24, (float2(_2058, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_2053, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2118) / _2119)) * _2122) / (1.0f.xxx - (_2122 * _2119)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_547, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2053) + ((_715 * 1.0f) * _2053);
        */
        // RenoDX: reduce opaque glass specular while the glass transparency improvement is enabled.
        float3 _2141 = (clamp((clamp((min(((_719 * (1.0f - _2087)) + _2087.xxx) * ((_2060 / (_2081 * _2081)) * (0.5f / (((_2053 * sqrt(((((-_2058) * _2060) + _2058) * _2058) + _2060)) + (_2058 * sqrt(((((-_2053) * _2060) + _2053) * _2053) + _2060))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2122 * (((_62.SampleLevel(_24, (float2(_2058, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_2053, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2118) / _2119)) * _2122) / (1.0f.xxx - (_2122 * _2119)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_547, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2053) + ((_715 * 1.0f) * _2053);
        float3 _2142 = _2141 * _52_m1.xyz;
        float3 _2153 = lerp(_2142, _2142 * _59.SampleBias(_24, float2(_2016, 0.5f), _18_m16).xyz, (1.0f - _2016).xxx) * 1.0f;
        _2155 = float4(_2153.x, _2153.y, _2153.z, 0.0f.xxxx.w);
    }
    else
    {
        _2155 = 0.0f.xxxx;
    }
    float2 _2157 = floor(_1205 * 0.03125f);
    int _2165 = int((_2157.x + (_2157.y * _50_m5)) * 8.0f);
    float _2172 = floor(_770 - (_18_m3.y * _50_m11));
    float _2176 = clamp(_2172, 0.0f, _50_m7 - 1.0f);
    int _2178 = int(_2176 * 8.0f);
    float3 _2180 = 0.0f.xxx;
    float _2183 = 0.0f;
    _2180 = 0.0f.xxx;
    _2183 = 1.0f;
    float3 _2181 = 0.0f.xxx;
    float _2184 = 0.0f;
    [loop]
    for (int _2185 = 0; _2185 <= 7; _2180 = _2181, _2183 = _2184, _2185++)
    {
        uint _2203 = (_2172 <= _2176) ? (_35.Load(uint(_2165 + _2185) * 4 + 0) & _35.Load(uint((_18_m21.y + _2178) + _2185) * 4 + 0)) : 0u;
        uint _2204 = uint(_2185);
        float3 _2208 = 0.0f.xxx;
        _2184 = _2183;
        _2208 = 0.0f.xxx;
        uint _2211 = 0u;
        float _2206 = 0.0f;
        float3 _2209 = 0.0f.xxx;
        [loop]
        for (uint _2210 = _2203; _2210 != 0u; _2184 = _2206, _2208 = _2209, _2210 = _2211)
        {
            uint _2215 = firstbitlow(_2210);
            _2211 = _2210 ^ (1u << (_2215 & 31u));
            int _2221 = int((32u * _2204) + _2215) * 8;
            int _2224 = _2221 + 1;
            int _2227 = _2221 + 2;
            int _2230 = _2221 + 3;
            int _2233 = _2221 + 5;
            int _2236 = _2221 + 6;
            int _2239 = _2221 + 7;
            uint _2243 = uint(_52_m6[_2233].w);
            float _2318 = 0.0f;
            if ((_2243 & 1u) == 1u)
            {
                uint _2249 = asuint(_52_m6[_2233].x);
                uint _2256 = asuint(_52_m6[_2233].y);
                uint _2263 = asuint(_52_m6[_2233].z);
                uint _2270 = asuint(_52_m6[_2236].x);
                uint _2277 = asuint(_52_m6[_2236].y);
                uint _2284 = asuint(_52_m6[_2236].z);
                float3 _2303 = abs(mul(float4(_432 - _52_m6[_2224].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2249).x, spvUnpackHalf2x16(_2263).x, spvUnpackHalf2x16(_2277).x, 0.0f), float4(spvUnpackHalf2x16(_2249 >> 16u).x, spvUnpackHalf2x16(_2263 >> 16u).x, spvUnpackHalf2x16(_2277 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2256).x, spvUnpackHalf2x16(_2270).x, spvUnpackHalf2x16(_2284).x, 0.0f), float4(spvUnpackHalf2x16(_2256 >> 16u).x, spvUnpackHalf2x16(_2270 >> 16u).x, spvUnpackHalf2x16(_2284 >> 16u).x, 0.0f))).xyz);
                float _2310 = _52_m6[_2239].x * 0.5f;
                float _2316 = 1.0f - clamp((max(max(_2303.x, _2303.y), _2303.z) - (_2310 + 0.5f)) / (0.5f - _2310), 0.0f, 1.0f);
                _2318 = _2316 * _2316;
            }
            else
            {
                _2318 = 1.0f;
            }
            bool _2322 = _52_m6[_2230].z > 0.5f;
            if ((false || (_2318 < 0.001000000047497451305389404296875f)) || _2322)
            {
                _2206 = _2184;
                _2209 = _2208;
                continue;
            }
            float _3433 = 0.0f;
            float3 _3434 = 0.0f.xxx;
            if (_52_m6[_2221].w < 1.5f)
            {
                float3 _2810 = float3(0.100000001490116119384765625f, _552, 1.0f);
                float _2819 = (0.5f + (0.5f * _52_m6[_2227].y)) - abs(_52_m6[_2227].x);
                float _2820 = _52_m6[_2227].y - _2819;
                float _2827 = abs(max((1.0f - abs(_2819)) - abs(_2820), 0.00048828125f));
                float3 _2831 = normalize(float3(_2819, _2820, (_52_m6[_2227].x >= 0.0f) ? _2827 : (-_2827)));
                float3 _2832 = _52_m6[_2224].xyz - _432;
                float _2833 = dot(_2832, _2832);
                float _2834 = rsqrt(_2833);
                float3 _2835 = _2832 * _2834;
                float _2839 = clamp(_52_m6[_2239].y * _2834, 0.0f, 1.0f);
                int _2844 = int(_52_m6[_2239].w);
                float3 _2845 = _2831 * _52_m6[_2227].z;
                float3 _2846 = _2845 * 0.5f;
                float3 _2847 = _2832 - _2846;
                float3 _2848 = _2832 + _2846;
                bool _2851 = (uint(_52_m6[_2221].w) & 1u) == 0u;
                bool _2854 = _2851 || ((_2243 & 2u) != 0u);
                bool _2857 = (!_2851) && (_52_m6[_2227].z > 0.0f);
                float _2876 = 0.0f;
                float _2877 = 0.0f;
                if (_2857)
                {
                    float _2861 = length(_2847);
                    float _2862 = length(_2848);
                    _2876 = clamp(0.5f * ((dot(_575, _2847) / _2861) + (dot(_575, _2848) / _2862)), 0.0f, 1.0f);
                    _2877 = 1.0f / ((((_2861 * _2862) + dot(_2847, _2848)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2876 = clamp(dot(_575, _2835), 0.0f, 1.0f);
                    _2877 = 1.0f;
                }
                float _2899 = 0.0f;
                if (_52_m6[_2236].w < 0.0f)
                {
                    float _2893 = _2833 * (_52_m6[_2224].w * _52_m6[_2224].w);
                    float _2896 = clamp(1.0f - (_2893 * _2893), 0.0f, 1.0f);
                    _2899 = lerp(1.0f / (_2833 + 1.0f), _2877, float(_2857)) * (_2896 * _2896);
                }
                else
                {
                    float3 _2882 = _2832 * _52_m6[_2224].w;
                    _2899 = _2877 * pow(1.0f - clamp(dot(_2882, _2882), 0.0f, 1.0f), _52_m6[_2236].w);
                }
                float _2905 = clamp((dot(_2835, -_2831) - _52_m6[_2227].z) * _52_m6[_2227].w, 0.0f, 1.0f);
                float _2909 = _2899 * lerp(1.0f, _2905 * _2905, float(_2851));
                float _3009 = 0.0f;
                if ((!_2857) && (_2844 >= 0))
                {
                    uint _2915 = uint(_2844);
                    float2 _3002 = 0.0f.xx;
                    [branch]
                    if (_2851)
                    {
                        float4 _2992 = mul(_72_m1[_2915], _436);
                        _3002 = _72_m0[_2915].xy + (clamp(_2992.xy / _2992.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2915].zw);
                    }
                    else
                    {
                        float3 _2929 = mul(float4(-_2832, 0.0f), _72_m1[_2915]).xyz;
                        float3 _375 = _2929;
                        float3 _374 = _2929;
                        float3 _373 = abs(_2929);
                        uint _2938 = uint(int(_373.y > _373.x));
                        uint _2944 = (_373.z > _373[_2938]) ? 2u : _2938;
                        uint _2950 = (_2944 * 2u) + uint(_374[_2944] < 0.0f);
                        float _2954 = abs(_375[_2950 / 2u]);
                        float _2974 = 0.5f - (0.000244140625f / _72_m0[_2915].w);
                        _3002 = _72_m0[_2915].xy + (clamp(float2((float(_2950) + ((((_375[uint(_349[_2950].x)] * _350[_2950].x) / _2954) * _2974) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_349[_2950].y)] * _350[_2950].y) / _2954) * _2974)), 0.0f.xx, 1.0f.xx) * _72_m0[_2915].zw);
                    }
                    _3009 = _2909 * _70.SampleLevel(_24, _3002, 0.0f).x;
                }
                else
                {
                    _3009 = _2909;
                }
                bool _3010 = _3009 > 0.0f;
                float _3298 = 0.0f;
                if (_3010)
                {
                    int _3062 = 0;
                    if (_2854)
                    {
                        _3062 = int(_52_m6[_2230].x);
                    }
                    else
                    {
                        uint _3017 = asuint(_52_m6[_2227].w);
                        uint _3019 = asuint(_52_m6[_2230].x);
                        float3 _3020 = _432 - _52_m6[_2224].xyz;
                        float3 _3021 = abs(_3020);
                        float _3022 = _3021.x;
                        float _3023 = _3021.y;
                        float _3025 = _3021.z;
                        int _3057 = 0;
                        if ((_3022 > _3023) && (_3022 > _3025))
                        {
                            _3057 = int((_3020.x > 0.0f) ? (_3017 >> 24u) : ((_3017 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3049 = 0;
                            if (_3023 > _3025)
                            {
                                _3049 = int((_3020.y > 0.0f) ? ((_3017 >> 8u) & 255u) : (_3017 & 255u));
                            }
                            else
                            {
                                _3049 = int((_3020.z > 0.0f) ? ((_3019 >> 8u) & 255u) : (_3019 & 255u));
                            }
                            _3057 = _3049;
                        }
                        _3062 = (_3057 < 80) ? _3057 : (-1);
                    }
                    float4 _3079 = mul(_54_m10[_3062], float4((_432 - ((-_2835) * _54_m11[_3062].x)) + (_575 * (_54_m11[_3062].y * 5.0f)), 1.0f));
                    float _3080 = _3079.w;
                    float3 _3083 = _3079.xyz / _3080.xxx;
                    float2 _3084 = _3083.xy;
                    float3 _3092 = _3083.xyz;
                    bool3 _3093 = bool3(_3092.x <= 0.0f.xxx.x, _3092.y <= 0.0f.xxx.y, _3092.z <= 0.0f.xxx.z);
                    bool3 _3094 = bool3(_3092.x >= 1.0f.xxx.x, _3092.y >= 1.0f.xxx.y, _3092.z >= 1.0f.xxx.z);
                    float _3097 = _3083.z;
                    float2 _3108 = ((_3084 * (_54_m12[_3062].zw - _54_m12[_3062].xy)) + _54_m12[_3062].xy).xy * _54_m13.zw;
                    float2 _3110 = floor(_3108 + 0.5f.xx);
                    float2 _3111 = _3108 - _3110;
                    float _3112 = _3111.x;
                    float _3113 = _3112 + 0.5f;
                    float _3114 = _3113 * _3113;
                    float _3117 = 1.0f - _3112;
                    float _3118 = min(_3112, 0.0f);
                    float _3121 = _3112 + 1.0f;
                    float _3122 = max(_3112, 0.0f);
                    float _3133 = _3111.y;
                    float _3134 = _3133 + 0.5f;
                    float _3135 = _3134 * _3134;
                    float _3138 = 1.0f - _3133;
                    float _3139 = min(_3133, 0.0f);
                    float _3142 = _3133 + 1.0f;
                    float _3143 = max(_3133, 0.0f);
                    float3 _3155 = float3(0.1599999964237213134765625f * _3117, 0.1599999964237213134765625f * ((_3121 - (_3122 * _3122)) + 1.0f), _3114 * 0.07999999821186065673828125f);
                    float3 _3156 = float3(0.1599999964237213134765625f * ((_3114 * 0.5f) - _3112), 0.1599999964237213134765625f * ((_3117 - (_3118 * _3118)) + 1.0f), 0.1599999964237213134765625f * _3121) + _3155;
                    float3 _3158 = float3(0.1599999964237213134765625f * _3138, 0.1599999964237213134765625f * ((_3142 - (_3143 * _3143)) + 1.0f), _3135 * 0.07999999821186065673828125f);
                    float3 _3159 = float3(0.1599999964237213134765625f * ((_3135 * 0.5f) - _3133), 0.1599999964237213134765625f * ((_3138 - (_3139 * _3139)) + 1.0f), 0.1599999964237213134765625f * _3142) + _3158;
                    float3 _3165 = ((_3155 / _3156) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                    float3 _3167 = ((_3158 / _3159) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                    float2 _3169 = _3110 * _54_m13.xy;
                    float _3170 = _3165.x;
                    float _3171 = _3167.x;
                    float _3174 = _3165.y;
                    float _3177 = _3165.z;
                    float _3180 = _3167.y;
                    float _3187 = _3167.z;
                    float _3194 = _3156.x;
                    float _3195 = _3159.x;
                    float _3197 = _3156.y;
                    float _3199 = _3156.z;
                    float _3201 = _3159.y;
                    float _3205 = _3159.z;
                    float _3263 = (((((((_3194 * _3195) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3170, _3171), _368).xy, _3097)) + ((_3197 * _3195) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3174, _3171), _368).xy, _3097))) + ((_3199 * _3195) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3177, _3171), _368).xy, _3097))) + ((_3194 * _3201) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3170, _3180), _368).xy, _3097))) + ((_3197 * _3201) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3174, _3180), _368).xy, _3097))) + ((_3199 * _3201) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3177, _3180), _368).xy, _3097))) + ((_3194 * _3205) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3170, _3187), _368).xy, _3097));
                    float2 _3284 = min(_3084, 1.0f.xx - _3084);
                    _3298 = (_3062 >= 0) ? lerp(1.0f, (any(bool3(_3093.x || _3094.x, _3093.y || _3094.y, _3093.z || _3094.z)) || ((asuint(_3097) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3263 + ((_3197 * _3205) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3174, _3187), _368).xy, _3097))) + ((_3199 * _3205) * _56.SampleCmpLevelZero(_27, float3(_3169 + float2(_3177, _3187), _368).xy, _3097))), _2854 ? min(_54_m11[_3062].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_3062].z - _3080) * 0.25f, min(_3284.x, _3284.y)))) : _54_m11[_3062].w) : 1.0f;
                }
                else
                {
                    _3298 = 1.0f;
                }
                float3 _3321 = 0.0f.xxx;
                float3 _3322 = 0.0f.xxx;
                if (_2857)
                {
                    float3 _3301 = _2810 * _2810;
                    float _3310 = dot(_1196, _2845);
                    _3321 = _3301 / clamp(_3301 + (0.5f * clamp(_52_m6[_2227].z * _2834, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3322 = normalize(_2847 + (_2845 * clamp(dot(_2847, (_1196 * _3310) - _2845) / ((_52_m6[_2227].z * _52_m6[_2227].z) - (_3310 * _3310)), 0.0f, 1.0f)));
                }
                else
                {
                    _3321 = 1.0f.xxx;
                    _3322 = _2835;
                }
                float3 _3323 = _3322 + _469;
                float3 _3327 = _3323 * rsqrt(max(6.103515625e-05f, dot(_3323, _3323)));
                float3 _3432 = 0.0f.xxx;
                if (_3010)
                {
                    float _3330 = clamp(_2876, 0.0f, 1.0f);
                    float _3332 = clamp(dot(_575, _3327), 0.0f, 1.0f);
                    float _3334 = clamp(dot(_469, _3327), 0.0f, 1.0f);
                    float _3335 = clamp(_601, 0.0f, 1.0f);
                    float _3336 = _552 * _552;
                    float _3346 = 0.0f;
                    if (_2839 > 0.0f)
                    {
                        _3346 = clamp(_3336 + ((_2839 * _2839) / ((_3334 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3346 = _3336;
                    }
                    float _3347 = _3346 * _3346;
                    float _3368 = (((_3332 * _3347) - _3332) * _3332) + 1.0f;
                    float _3373 = 1.0f - _3334;
                    float _3374 = _3373 * _3373;
                    float _3376 = (_3373 * _3374) * _3374;
                    float _3400 = 1.0f - _552;
                    float _3407 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3400 * (1.04997003078460693359375f + (_3400 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3400))))));
                    float _3408 = 1.0f - _3407;
                    float3 _3411 = _719 + ((1.0f.xxx - _719) * 0.0476190485060214996337890625f);
                    float3 _3431 = ((clamp((min(((_719 * (1.0f - _3376)) + _3376.xxx) * (((_3347 / (_3368 * _3368)) * _3321.y) * (0.5f / (((_3330 * sqrt(((((-_3335) * _3347) + _3335) * _3335) + _3347)) + (_3335 * sqrt(((((-_3330) * _3347) + _3330) * _3330) + _3347))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3411 * (((_62.SampleLevel(_24, (float2(_3335, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_3330, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3407) / _3408)) * _3411) / (1.0f.xxx - (_3411 * _3408)))) * _52_m6[_2239].z, 0.0f.xxx, 1000.0f.xxx) * _2876) + ((_715 * _3321.z) * _2876)) * (((_52_m6[_2221].xyz * _3009) * _3298) * _2318);
                    _3432 = _3431;
                }
                else
                {
                    _3432 = 0.0f.xxx;
                }
                _3433 = _2184;
                _3434 = _3432;
            }
            else
            {
                float _2808 = 0.0f;
                do
                {
                    if (_2322)
                    {
                        _2808 = 1.0f;
                        break;
                    }
                    float _2342 = (0.5f + (0.5f * _52_m6[_2227].y)) - abs(_52_m6[_2227].x);
                    float _2343 = _52_m6[_2227].y - _2342;
                    float _2350 = abs(max((1.0f - abs(_2342)) - abs(_2343), 0.00048828125f));
                    float3 _2354 = normalize(float3(_2342, _2343, (_52_m6[_2227].x >= 0.0f) ? _2350 : (-_2350)));
                    float3 _2355 = _52_m6[_2224].xyz - _432;
                    float _2356 = dot(_2355, _2355);
                    float3 _2358 = _2355 * rsqrt(_2356);
                    int _2361 = int(_52_m6[_2239].w);
                    float3 _2363 = (_2354 * _52_m6[_2227].z) * 0.5f;
                    float3 _2364 = _2355 - _2363;
                    float3 _2365 = _2355 + _2363;
                    bool _2368 = (uint(_52_m6[_2221].w) & 1u) == 0u;
                    bool _2371 = _2368 || ((_2243 & 2u) != 0u);
                    bool _2374 = (!_2368) && (_52_m6[_2227].z > 0.0f);
                    float _2386 = 0.0f;
                    if (_2374)
                    {
                        _2386 = 1.0f / ((((length(_2364) * length(_2365)) + dot(_2364, _2365)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2386 = 1.0f;
                    }
                    float _2408 = 0.0f;
                    if (_52_m6[_2236].w < 0.0f)
                    {
                        float _2402 = _2356 * (_52_m6[_2224].w * _52_m6[_2224].w);
                        float _2405 = clamp(1.0f - (_2402 * _2402), 0.0f, 1.0f);
                        _2408 = lerp(1.0f / (_2356 + 1.0f), _2386, float(_2374)) * (_2405 * _2405);
                    }
                    else
                    {
                        float3 _2391 = _2355 * _52_m6[_2224].w;
                        _2408 = _2386 * pow(1.0f - clamp(dot(_2391, _2391), 0.0f, 1.0f), _52_m6[_2236].w);
                    }
                    float _2414 = clamp((dot(_2358, -_2354) - _52_m6[_2227].z) * _52_m6[_2227].w, 0.0f, 1.0f);
                    float _2418 = _2408 * lerp(1.0f, _2414 * _2414, float(_2368));
                    float _2518 = 0.0f;
                    if ((!_2374) && (_2361 >= 0))
                    {
                        uint _2424 = uint(_2361);
                        float2 _2511 = 0.0f.xx;
                        [branch]
                        if (_2368)
                        {
                            float4 _2501 = mul(_72_m1[_2424], _436);
                            _2511 = _72_m0[_2424].xy + (clamp(_2501.xy / _2501.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2424].zw);
                        }
                        else
                        {
                            float3 _2438 = mul(float4(-_2355, 0.0f), _72_m1[_2424]).xyz;
                            float3 _378 = _2438;
                            float3 _377 = _2438;
                            float3 _376 = abs(_2438);
                            uint _2447 = uint(int(_376.y > _376.x));
                            uint _2453 = (_376.z > _376[_2447]) ? 2u : _2447;
                            uint _2459 = (_2453 * 2u) + uint(_377[_2453] < 0.0f);
                            float _2463 = abs(_378[_2459 / 2u]);
                            float _2483 = 0.5f - (0.000244140625f / _72_m0[_2424].w);
                            _2511 = _72_m0[_2424].xy + (clamp(float2((float(_2459) + ((((_378[uint(_349[_2459].x)] * _350[_2459].x) / _2463) * _2483) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_349[_2459].y)] * _350[_2459].y) / _2463) * _2483)), 0.0f.xx, 1.0f.xx) * _72_m0[_2424].zw);
                        }
                        _2518 = _2418 * _70.SampleLevel(_24, _2511, 0.0f).x;
                    }
                    else
                    {
                        _2518 = _2418;
                    }
                    float _2807 = 0.0f;
                    if (_2518 > 0.0f)
                    {
                        int _2571 = 0;
                        if (_2371)
                        {
                            _2571 = int(_52_m6[_2230].x);
                        }
                        else
                        {
                            uint _2526 = asuint(_52_m6[_2227].w);
                            uint _2528 = asuint(_52_m6[_2230].x);
                            float3 _2529 = _432 - _52_m6[_2224].xyz;
                            float3 _2530 = abs(_2529);
                            float _2531 = _2530.x;
                            float _2532 = _2530.y;
                            float _2534 = _2530.z;
                            int _2566 = 0;
                            if ((_2531 > _2532) && (_2531 > _2534))
                            {
                                _2566 = int((_2529.x > 0.0f) ? (_2526 >> 24u) : ((_2526 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2558 = 0;
                                if (_2532 > _2534)
                                {
                                    _2558 = int((_2529.y > 0.0f) ? ((_2526 >> 8u) & 255u) : (_2526 & 255u));
                                }
                                else
                                {
                                    _2558 = int((_2529.z > 0.0f) ? ((_2528 >> 8u) & 255u) : (_2528 & 255u));
                                }
                                _2566 = _2558;
                            }
                            _2571 = (_2566 < 80) ? _2566 : (-1);
                        }
                        float4 _2588 = mul(_54_m10[_2571], float4((_432 - ((-_2358) * _54_m11[_2571].x)) + (_575 * (_54_m11[_2571].y * 5.0f)), 1.0f));
                        float _2589 = _2588.w;
                        float3 _2592 = _2588.xyz / _2589.xxx;
                        float2 _2593 = _2592.xy;
                        float3 _2601 = _2592.xyz;
                        bool3 _2602 = bool3(_2601.x <= 0.0f.xxx.x, _2601.y <= 0.0f.xxx.y, _2601.z <= 0.0f.xxx.z);
                        bool3 _2603 = bool3(_2601.x >= 1.0f.xxx.x, _2601.y >= 1.0f.xxx.y, _2601.z >= 1.0f.xxx.z);
                        float _2606 = _2592.z;
                        float2 _2617 = ((_2593 * (_54_m12[_2571].zw - _54_m12[_2571].xy)) + _54_m12[_2571].xy).xy * _54_m13.zw;
                        float2 _2619 = floor(_2617 + 0.5f.xx);
                        float2 _2620 = _2617 - _2619;
                        float _2621 = _2620.x;
                        float _2622 = _2621 + 0.5f;
                        float _2623 = _2622 * _2622;
                        float _2626 = 1.0f - _2621;
                        float _2627 = min(_2621, 0.0f);
                        float _2630 = _2621 + 1.0f;
                        float _2631 = max(_2621, 0.0f);
                        float _2642 = _2620.y;
                        float _2643 = _2642 + 0.5f;
                        float _2644 = _2643 * _2643;
                        float _2647 = 1.0f - _2642;
                        float _2648 = min(_2642, 0.0f);
                        float _2651 = _2642 + 1.0f;
                        float _2652 = max(_2642, 0.0f);
                        float3 _2664 = float3(0.1599999964237213134765625f * _2626, 0.1599999964237213134765625f * ((_2630 - (_2631 * _2631)) + 1.0f), _2623 * 0.07999999821186065673828125f);
                        float3 _2665 = float3(0.1599999964237213134765625f * ((_2623 * 0.5f) - _2621), 0.1599999964237213134765625f * ((_2626 - (_2627 * _2627)) + 1.0f), 0.1599999964237213134765625f * _2630) + _2664;
                        float3 _2667 = float3(0.1599999964237213134765625f * _2647, 0.1599999964237213134765625f * ((_2651 - (_2652 * _2652)) + 1.0f), _2644 * 0.07999999821186065673828125f);
                        float3 _2668 = float3(0.1599999964237213134765625f * ((_2644 * 0.5f) - _2642), 0.1599999964237213134765625f * ((_2647 - (_2648 * _2648)) + 1.0f), 0.1599999964237213134765625f * _2651) + _2667;
                        float3 _2674 = ((_2664 / _2665) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                        float3 _2676 = ((_2667 / _2668) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                        float2 _2678 = _2619 * _54_m13.xy;
                        float _2679 = _2674.x;
                        float _2680 = _2676.x;
                        float _2683 = _2674.y;
                        float _2686 = _2674.z;
                        float _2689 = _2676.y;
                        float _2696 = _2676.z;
                        float _2703 = _2665.x;
                        float _2704 = _2668.x;
                        float _2706 = _2665.y;
                        float _2708 = _2665.z;
                        float _2710 = _2668.y;
                        float _2714 = _2668.z;
                        float _2772 = (((((((_2703 * _2704) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2679, _2680), _368).xy, _2606)) + ((_2706 * _2704) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2683, _2680), _368).xy, _2606))) + ((_2708 * _2704) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2686, _2680), _368).xy, _2606))) + ((_2703 * _2710) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2679, _2689), _368).xy, _2606))) + ((_2706 * _2710) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2683, _2689), _368).xy, _2606))) + ((_2708 * _2710) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2686, _2689), _368).xy, _2606))) + ((_2703 * _2714) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2679, _2696), _368).xy, _2606));
                        float2 _2793 = min(_2593, 1.0f.xx - _2593);
                        _2807 = (_2571 >= 0) ? lerp(1.0f, (any(bool3(_2602.x || _2603.x, _2602.y || _2603.y, _2602.z || _2603.z)) || ((asuint(_2606) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2772 + ((_2706 * _2714) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2683, _2696), _368).xy, _2606))) + ((_2708 * _2714) * _56.SampleCmpLevelZero(_27, float3(_2678 + float2(_2686, _2696), _368).xy, _2606))), _2371 ? min(_54_m11[_2571].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_2571].z - _2589) * 0.25f, min(_2793.x, _2793.y)))) : _54_m11[_2571].w) : 1.0f;
                    }
                    else
                    {
                        _2807 = 1.0f;
                    }
                    _2808 = _2807;
                    break;
                } while(false);
                _3433 = _2184 * _2808;
                _3434 = 0.0f.xxx;
            }
            _2206 = _3433;
            _2209 = _2208 + _3434;
        }
        _2181 = _2180 + _2208;
    }
    /*
    Vanilla shader code from 0x8B7AEBD9:
    float3 _3444 = ((((float3(_1176, _1181, _1186) * _715) * lerp(1.0f, _523, _45_m4)) * _18_m22.x) + ((_1496 * ((_719 * _733.x) + (clamp(50.0f * _719.y, 0.0f, 1.0f) * _733.y).xxx)) * 1.0f)) + lerp((_2155.xyz + (_2180 * _2183)).xyz, (_661.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _547) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    */
    // RenoDX: reduce opaque glass lighting while the glass transparency improvement is enabled.
    float3 _3444 = ((((float3(_1176, _1181, _1186) * (_715 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _523, _45_m4)) * _18_m22.x) + (((_1496 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_719 * _733.x) + (clamp(50.0f * _719.y, 0.0f, 1.0f) * _733.y).xxx)) * 1.0f)) + lerp((_2155.xyz + ((_2180 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2183)).xyz, (_661.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _547) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3445 = float4(_3444.x, _3444.y, _3444.z, _370.w);
    _3445.w = _547;
    float _3462 = _432.y * _18_m46.w;
    float _3467 = max(0.00999999977648258209228515625f, _3462 + _18_m47.w);
    float3 _3481 = exp(_18_m45.xyz * ((-max(0.0f, (_470 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3467)) / _3467) * exp(_3462 + _18_m48.w))));
    float _3484 = dot(_602, _18_m44.xyz);
    float _3490 = _18_m45.w * _18_m45.w;
    float _3494 = (1.0f + _3490) - ((2.0f * _18_m45.w) * _3484);
    float3 _3824 = 0.0f.xxx;
    float _3825 = 0.0f;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3652 = (uint3(int3(int(_769.x), int(_769.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3653 = _3652.y;
        uint _3654 = _3652.z;
        uint _3657 = _3652.x + (_3653 * _3654);
        uint _3659 = _3653 + (_3654 * _3657);
        uint _3661 = _3654 + (_3657 * _3659);
        uint _3663 = _3657 + (_3659 * _3661);
        float _3685 = dot(_602, -_16_m0[2].xyz);
        float3 _3695 = _432 - _16_m11.xyz;
        float _3697 = (_18_m55.w * ((_3685 > 5.9604644775390625e-08f) ? (1.0f / _3685) : 0.0f)) * (1.0f / _470);
        float _3698 = _3695.y;
        float _3699 = _3697 * _3698;
        float _3701 = _16_m11.y + _3699;
        float _3702 = _3698 - _3699;
        float _3704 = (1.0f - _3697) * _470;
        float _3718 = max(-127.0f, _18_m49.z * _3702);
        float _3742 = max(-127.0f, _18_m52.x * _3702);
        float _3753 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3701 - _18_m49.x)))) * ((abs(_3718) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3718)) / _3718) : (0.693147182464599609375f - (0.2402265071868896484375f * _3718)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3701 - _18_m52.z)))) * ((abs(_3742) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3742)) / _3742) : (0.693147182464599609375f - (0.2402265071868896484375f * _3742))));
        float _3775 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3778 = clamp((max(clamp(exp2(-(_3753 * _3704)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3775, 0.0f, 1.0f);
        float4 _3818 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _69.SampleLevel(_24, float3((_1205 + ((((float3(uint3(_3663, _3659 + (_3661 * _3663), _371) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_770 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_770 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3824 = _3818.xyz + (((_18_m51.xyz * (1.0f - _3778)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3753 * max(_3704 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3775))) * _3818.w);
        _3825 = _3818.w * _3778;
    }
    else
    {
        float3 _3524 = _432 - _16_m11.xyz;
        float _3526 = _3524.y;
        float _3540 = max(-127.0f, _18_m49.z * _3526);
        float _3564 = max(-127.0f, _18_m52.x * _3526);
        float _3575 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3540) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3540)) / _3540) : (0.693147182464599609375f - (0.2402265071868896484375f * _3540)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3564) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3564)) / _3564) : (0.693147182464599609375f - (0.2402265071868896484375f * _3564))));
        float _3597 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3600 = clamp((max(clamp(exp2(-(_3575 * _470)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3597, 0.0f, 1.0f);
        _3824 = (_18_m51.xyz * (1.0f - _3600)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3575 * max(_470 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3597));
        _3825 = _3600;
    }
    /*
    Vanilla shader code from 0x8B7AEBD9:
    float3 _3831 = ((_3445.xyz * (_3481 * _3825)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3484 * _3484)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3490) / max((12.56637096405029296875f * _3494) * sqrt(_3494), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3481)) * _3825) + _3824)).xyz;
    */
    // RenoDX code start: apply improved glass and the selected hue-preserving fog blend.
    float3 _3831 = ((_3445.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3481 * _3825)) : (_3481 * _3825))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3484 * _3484)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3490) / max((12.56637096405029296875f * _3494) * sqrt(_3494), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3481)) * _3825 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3824 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    // RenoDX code end
    float3 _3841 = lerp(dot(_3831, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3831, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3851 = min(lerp(((sqrt(sqrt(abs(_687 * 0.5f))) * float2(int2(sign(_687)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _674.xx), 1.0f.xx);
    float4 _3852 = float4(_3851.x, _3851.y, _370.z, _370.w);
    _3852.z = float(clamp(max(dot(_3841.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _547, _547) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3852.w = lerp(0.0f, 0.699999988079071044921875f, _674);
    /*
    Vanilla shader code from 0x8B7AEBD9:
    _13 = float4(_3841.x, _3841.y, _3841.z, _3445.w);
    */
    // RenoDX code start: compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3841.x, _3841.y, _3841.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3445.w);
    _14 = _3852;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
    // RenoDX code end
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
    // RenoDX debug branch: shader category coloring.
    stage_output._13 = ApplyShaderDebugColor(stage_output._13);
    return stage_output;
}

#include "../shared.h"

// Vulkan shader 0x2B2AADD6, decompiled from the matching game shader dump.

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

struct _39
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

static float _360 = 0.0f;
static float4 _362 = 0.0f.xxxx;
static uint _363 = 0u;

static const float4 _340[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _341[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _342[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
ByteAddressBuffer _31 : register(t50);
[[vk::binding(4, 1)]]
cbuffer _36_37 : register(b4)
{
    float _37_m0 : packoffset(c0);
    float _37_m1 : packoffset(c0.y);
    float _37_m2 : packoffset(c0.z);
    float _37_m3 : packoffset(c0.w);
    float _37_m4 : packoffset(c1);
    float _37_m5 : packoffset(c1.y);
    float _37_m6 : packoffset(c1.z);
    float _37_m7 : packoffset(c1.w);
    float _37_m8 : packoffset(c2);
    float _37_m9 : packoffset(c2.y);
    float _37_m10 : packoffset(c2.z);
    float _37_m11 : packoffset(c2.w);
    float _37_m12 : packoffset(c3);
    float _37_m13 : packoffset(c3.y);
    float _37_m14 : packoffset(c3.z);
    float _37_m15 : packoffset(c3.w);
    float _37_m16 : packoffset(c4);
    float _37_m17 : packoffset(c4.y);
    float _37_m18 : packoffset(c4.z);
    float _37_m19 : packoffset(c4.w);
    float _37_m20 : packoffset(c5);
    float _37_m21 : packoffset(c5.y);
    float _37_m22 : packoffset(c5.z);
    float _37_m23 : packoffset(c5.w);
    float _37_m24 : packoffset(c6);
    float _37_m25 : packoffset(c6.y);
    float _37_m26 : packoffset(c6.z);
    float _37_m27 : packoffset(c6.w);
    float _37_m28 : packoffset(c7);
    float _37_m29 : packoffset(c7.y);
    float _37_m30 : packoffset(c7.z);
    float _37_m31 : packoffset(c7.w);
    float4 _37_m32 : packoffset(c8);
    float4 _37_m33 : packoffset(c9);
    float4 _37_m34 : packoffset(c10);
    float4 _37_m35 : packoffset(c11);
    float4 _37_m36 : packoffset(c12);
    float4 _37_m37 : packoffset(c13);
    float4 _37_m38 : packoffset(c14);
    float4 _37_m39 : packoffset(c15);
    float4 _37_m40 : packoffset(c16);
    float4 _37_m41 : packoffset(c17);
    float4 _37_m42 : packoffset(c18);
    float4 _37_m43 : packoffset(c19);
    float4 _37_m44 : packoffset(c20);
    float4 _37_m45 : packoffset(c21);
    float _37_m46 : packoffset(c22);
    float _37_m47 : packoffset(c22.y);
    float _37_m48 : packoffset(c22.z);
    float _37_m49 : packoffset(c22.w);
};

[[vk::binding(17, 0)]]
cbuffer _38_40 : register(b17)
{
    float4 _40_m0 : packoffset(c0);
    float4 _40_m1 : packoffset(c1);
    float4 _40_m2 : packoffset(c2);
    float4 _40_m3 : packoffset(c3);
    _39 _40_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _41_42 : register(b47)
{
    int _42_m0 : packoffset(c0);
    int _42_m1 : packoffset(c0.y);
    int _42_m2 : packoffset(c0.z);
    int _42_m3 : packoffset(c0.w);
    float _42_m4 : packoffset(c1);
    float _42_m5 : packoffset(c1.y);
    float _42_m6 : packoffset(c1.z);
    float _42_m7 : packoffset(c1.w);
    float _42_m8 : packoffset(c2);
    float _42_m9 : packoffset(c2.y);
    float _42_m10 : packoffset(c2.z);
    float _42_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _43_44 : register(b14)
{
    float4 _44_m0 : packoffset(c0);
    float4 _44_m1 : packoffset(c1);
    float4 _44_m2 : packoffset(c2);
    float4 _44_m3 : packoffset(c3);
    float4 _44_m4 : packoffset(c4);
    uint4 _44_m5 : packoffset(c5);
    float4 _44_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _45_46 : register(b15)
{
    column_major float4x4 _46_m0[5] : packoffset(c0);
    float4 _46_m1[4] : packoffset(c20);
    float4 _46_m2[4] : packoffset(c24);
    float4 _46_m3[4] : packoffset(c28);
    float4 _46_m4 : packoffset(c32);
    float4 _46_m5 : packoffset(c33);
    float4 _46_m6 : packoffset(c34);
    float4 _46_m7 : packoffset(c35);
    float4 _46_m8 : packoffset(c36);
    float4 _46_m9[27] : packoffset(c37);
    column_major float4x4 _46_m10[56] : packoffset(c64);
    float4 _46_m11[56] : packoffset(c288);
    float4 _46_m12[56] : packoffset(c344);
    float4 _46_m13 : packoffset(c400);
    float4 _46_m14[47] : packoffset(c401);
    column_major float4x4 _46_m15[15] : packoffset(c448);
    float4 _46_m16[15] : packoffset(c508);
    float4 _46_m17[15] : packoffset(c523);
    float4 _46_m18[15] : packoffset(c538);
    float4 _46_m19 : packoffset(c553);
    float4 _46_m20 : packoffset(c554);
    float4 _46_m21[21] : packoffset(c555);
    column_major float4x4 _46_m22 : packoffset(c576);
    column_major float4x4 _46_m23 : packoffset(c580);
    float4 _46_m24 : packoffset(c584);
    float4 _46_m25 : packoffset(c585);
    float4 _46_m26 : packoffset(c586);
    float4 _46_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _63_64 : register(b49)
{
    float4 _64_m0[32] : packoffset(c0);
    column_major float4x4 _64_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]]
SamplerState _23 : register(s6);
[[vk::binding(4, 0)]]
SamplerState _24 : register(s4);
[[vk::binding(1, 0)]]
SamplerState _25 : register(s1);
[[vk::binding(7, 0)]]
SamplerComparisonState _26 : register(s7);
[[vk::binding(25, 0)]]
Texture2DArray<float4> _29 : register(t25);
[[vk::binding(3, 1)]]
Texture2D<float4> _32 : register(t3);
[[vk::binding(1, 1)]]
SamplerState _33 : register(s1);
[[vk::binding(2, 1)]]
Texture2D<float4> _34 : register(t2);
[[vk::binding(0, 1)]]
SamplerState _35 : register(s0);
[[vk::binding(9, 0)]]
Texture2D<float4> _47 : register(t9);
[[vk::binding(26, 0)]]
Texture2D<float4> _48 : register(t26);
[[vk::binding(8, 0)]]
Texture2D<float4> _49 : register(t8);
[[vk::binding(11, 0)]]
Texture2D<float4> _50 : register(t11);
[[vk::binding(10, 0)]]
Texture2D<float4> _51 : register(t10);
[[vk::binding(27, 0)]]
Texture2D<float4> _54 : register(t27);
[[vk::binding(34, 0)]]
Texture3D<float4> _55 : register(t34);
[[vk::binding(31, 0)]]
Texture3D<float4> _56 : register(t31);
[[vk::binding(33, 0)]]
Texture3D<float4> _57 : register(t33);
[[vk::binding(30, 0)]]
Texture3D<float4> _58 : register(t30);
[[vk::binding(32, 0)]]
Texture3D<float4> _59 : register(t32);
[[vk::binding(29, 0)]]
Texture3D<float4> _60 : register(t29);
[[vk::binding(35, 0)]]
Texture3D<float4> _61 : register(t35);
[[vk::binding(28, 0)]]
Texture2D<float4> _62 : register(t28);

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
    float2 _392 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _395 = float4(_392, gl_FragCoord.z, 1.0f);
    _395.y = -_392.y;
    float4 _398 = mul(_16_m6, _395);
    float3 _402 = _398.xyz / _398.w.xxx;
    float4 _406 = float4(_402, 1.0f);
    float _413 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _435;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _435 = _16_m11.xyz - _402;
            break;
        }
        else
        {
            _435 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _436 = dot(_435, _435);
    float _438 = rsqrt(max(_436, 9.9999999392252902907785028219223e-09f));
    float3 _439 = _435 * _438;
    float _440 = _436 * _438;
    float4 _473 = _32.SampleBias(_33, (lerp(_4, _5, _37_m11.xx) * _37_m35.xy) + _37_m35.zw, _18_m16);
    float _475 = _473.w;
    float4 _478 = _34.SampleBias(_35, (lerp(_4, _5, _37_m12.xx) * _37_m36.xy) + _37_m36.zw, _37_m13 + _18_m16);
    float2 _481 = (_478.xy * 2.0f.xx) - 1.0f.xx;
    float2 _482 = abs(_481);
    bool2 _483 = bool2(_482.x < 0.01200000010430812835693359375f.xx.x, _482.y < 0.01200000010430812835693359375f.xx.y);
    float2 _484 = float2(_483.x ? 0.0f.xx.x : _481.x, _483.y ? 0.0f.xx.y : _481.y);
    float2 _485 = _484 * _37_m0;
    float _493 = _478.w;
    float3 _505 = lerp(clamp((_473.xyz * _37_m32.xyz) * _37_m18, 0.0f.xxx, 1.0f.xxx), _37_m32.xyz, _37_m16.xxx);
    float _511 = lerp(_475, _493, _37_m6) * _37_m32.w;
    float _517 = lerp(_511, _511 * _8.x, _37_m46);
    float _522 = lerp(_37_m2, _37_m3, _478.z);
    float _532 = lerp(_475, _37_m17, clamp(_37_m15 - 1.0f, 0.0f, 1.0f));
    float3 _545 = normalize(((_7.xyz * _485.x) + ((cross(_6, float4(_7.xyz, _413).xyz) * _413) * _485.y)) + (_6 * (sqrt(clamp(1.0f - dot(_484, _484), 0.0f, 1.0f)) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_37_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _557 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _570 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _570.y = -_570.y;
    float _596 = 0.07999999821186065673828125f * _37_m1;
    float3 _597 = _505 * _532;
    float3 _598 = _505 - _597;
    float3 _602 = (_596 - (_596 * _532)).xxx + _597;
    float _603 = dot(_545, _439);
    float4 _606 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _522) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _607 = _606.x;
    float2 _617 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_607 * _607, exp2((-9.27999973297119140625f) * max(0.0f, _603))) * _607) + _606.y)) + _606.zw;
    uint2 _657;
    float _658;
    if (_18_m24.y == 1.0f)
    {
        float4 _634 = mul(_18_m135, _406);
        float4 _637 = _634;
        _637.y = -_634.y;
        float4 _640 = _637 * (1.0f / _634.w);
        _657 = uint2(clamp(((_640.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _658 = 1.0f / ((_18_m2.z * _640.z) + _18_m2.w);
    }
    else
    {
        _657 = uint2(gl_FragCoord.xy);
        _658 = abs(mul(_16_m0, _406).z);
    }
    float3 _660 = _402 + (_545 * 0.25f);
    float3 _670 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _679 = _660 - (_18_m105.xyz + (_670 * (-_18_m107.w)));
    float _693 = max(clamp((max(abs(_679.x), abs(_679.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_679.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _995;
    float4 _996;
    float4 _997;
    float _998;
    float _999;
    if ((_18_m105.w != 0.0f) && (_693 < 1.0f))
    {
        float3 _706 = _660 - (_18_m105.xyz + (_670 * (-_18_m107.y)));
        float _720 = max(clamp((max(abs(_706.x), abs(_706.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_706.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _796;
        float4 _797;
        float4 _798;
        float4 _799;
        if (_720 < 1.0f)
        {
            float3 _729 = ((_660 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _731 = _729 - floor(_729);
            float4 _735 = _55.SampleLevel(_24, _731, 0.0f);
            float _736 = 1.0f - _720;
            float _740 = _18_m106.y * 0.5f;
            float _745 = _731.x;
            float _746 = clamp(_731.y, _740, 1.0f - _740) * 0.3333333432674407958984375f;
            float _747 = _731.z;
            float4 _750 = _56.SampleLevel(_23, float3(_745, _746, _747), 0.0f);
            float _766 = _735.x;
            float _776 = _735.y;
            float _786 = _735.z;
            _796 = _693 + (_750.w * _736);
            _797 = float4(((_56.SampleLevel(_23, float3(_745, _746 + 0.666666686534881591796875f, _747), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _786, _786) * _736;
            _798 = float4(((_56.SampleLevel(_23, float3(_745, _746 + 0.3333333432674407958984375f, _747), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _776, _776) * _736;
            _799 = float4(((_750.xyz * 4.0f) - 2.0f.xxx) * _766, _766) * _736;
        }
        else
        {
            _796 = _693;
            _797 = 0.0f.xxxx;
            _798 = 0.0f.xxxx;
            _799 = 0.0f.xxxx;
        }
        float3 _805 = _660 - (_18_m105.xyz + (_670 * (-_18_m107.z)));
        float _819 = max(clamp((max(abs(_805.x), abs(_805.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_805.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _899;
        float4 _900;
        float4 _901;
        float4 _902;
        if (_819 < 1.0f)
        {
            float3 _828 = ((_660 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _830 = _828 - floor(_828);
            float4 _834 = _57.SampleLevel(_24, _830, 0.0f);
            float _836 = _720 * (1.0f - _819);
            float _840 = _18_m106.y * 0.5f;
            float _845 = _830.x;
            float _846 = clamp(_830.y, _840, 1.0f - _840) * 0.3333333432674407958984375f;
            float _847 = _830.z;
            float4 _850 = _58.SampleLevel(_23, float3(_845, _846, _847), 0.0f);
            float _866 = _834.x;
            float _877 = _834.y;
            float _888 = _834.z;
            _899 = _796 + (_850.w * _836);
            _900 = _797 + (float4(((_58.SampleLevel(_23, float3(_845, _846 + 0.666666686534881591796875f, _847), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _888, _888) * _836);
            _901 = _798 + (float4(((_58.SampleLevel(_23, float3(_845, _846 + 0.3333333432674407958984375f, _847), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _877, _877) * _836);
            _902 = _799 + (float4(((_850.xyz * 4.0f) - 2.0f.xxx) * _866, _866) * _836);
        }
        else
        {
            _899 = _796;
            _900 = _797;
            _901 = _798;
            _902 = _799;
        }
        float4 _985;
        float4 _986;
        float4 _987;
        float _988;
        if (_819 > 0.0f)
        {
            float3 _911 = ((_660 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _914 = _18_m106.xyz * 0.5f;
            float3 _916 = clamp(_911 - floor(_911), _914, 1.0f.xxx - _914);
            float4 _920 = _59.SampleLevel(_24, _916, 0.0f);
            float _922 = _819 * (1.0f - _693);
            float _926 = _18_m106.y * 0.5f;
            float _931 = _916.x;
            float _932 = clamp(_916.y, _926, 1.0f - _926) * 0.3333333432674407958984375f;
            float _933 = _916.z;
            float4 _936 = _60.SampleLevel(_23, float3(_931, _932, _933), 0.0f);
            float _952 = _920.x;
            float _963 = _920.y;
            float _974 = _920.z;
            _985 = _900 + (float4(((_60.SampleLevel(_23, float3(_931, _932 + 0.666666686534881591796875f, _933), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _974, _974) * _922);
            _986 = _901 + (float4(((_60.SampleLevel(_23, float3(_931, _932 + 0.3333333432674407958984375f, _933), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _963, _963) * _922);
            _987 = _902 + (float4(((_936.xyz * 4.0f) - 2.0f.xxx) * _952, _952) * _922);
            _988 = _899 + (_936.w * _922);
        }
        else
        {
            _985 = _900;
            _986 = _901;
            _987 = _902;
            _988 = _899;
        }
        float _991 = clamp((_988 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _995 = _985;
        _996 = _986;
        _997 = _987;
        _998 = _991 - _693;
        _999 = (_991 + _693) * 0.5f;
    }
    else
    {
        _995 = 0.0f.xxxx;
        _996 = 0.0f.xxxx;
        _997 = 0.0f.xxxx;
        _998 = 0.0f;
        _999 = 1.0f;
    }
    float4 _1019 = _997 + float4(_18_m108.x * _999, (_18_m108.y * _999) + ((_18_m108.w * _998) * 0.5f), _18_m108.z * _999, (_18_m108.w * _999) + ((_18_m108.y * _998) * 0.375f));
    float4 _1039 = _996 + float4(_18_m109.x * _999, (_18_m109.y * _999) + ((_18_m109.w * _998) * 0.5f), _18_m109.z * _999, (_18_m109.w * _999) + ((_18_m109.y * _998) * 0.375f));
    float4 _1059 = _995 + float4(_18_m110.x * _999, (_18_m110.y * _999) + ((_18_m110.w * _998) * 0.5f), _18_m110.z * _999, (_18_m110.w * _999) + ((_18_m110.y * _998) * 0.375f));
    float _1064 = max(0.0f, dot(_1019.xyz, _545) + _1019.w);
    float _1069 = max(0.0f, dot(_1039.xyz, _545) + _1039.w);
    float _1074 = max(0.0f, dot(_1059.xyz, _545) + _1059.w);
    float3 _1084 = -_439;
    float3 _1085 = reflect(_1084, _545);
    float _1093 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_522, 0.001000000047497451305389404296875f))));
    float2 _1094 = float2(_657);
    float2 _1098 = floor(_1094 * _40_m0.w);
    float _1115 = floor(_658 - _40_m2.y);
    float _1119 = clamp(_1115, 0.0f, _40_m1.x - 1.0f);
    uint _1129 = (_1115 <= _1119) ? (_31.Load(uint(_18_m21.z + int(_1098.x + (_1098.y * _40_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1119)) * 4 + 0)) : 0u;
    float _1132 = dot(float4(_1064, _1069, _1074, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1134;
    float _1137;
    uint _1139;
    _1134 = 0.0f.xxx;
    _1137 = 1.0f;
    _1139 = _1129;
    uint _1140;
    float3 _1135;
    float _1138;
    bool _1142;
    [loop]
    for (;;)
    {
        _1142 = _1137 > 0.00999999977648258209228515625f;
        if ((_1139 != 0u) && _1142)
        {
            uint _1146 = firstbitlow(_1139);
            _1140 = _1139 ^ (1u << (_1146 & 31u));
            float3 _1166 = float3(dot(_40_m4[_1146]._m2, _406), dot(_40_m4[_1146]._m3, _406), dot(_40_m4[_1146]._m4, _406));
            float3 _1167 = abs(_1166);
            if (all(bool3(_1167.x <= _40_m4[_1146]._m1.xyz.x, _1167.y <= _40_m4[_1146]._m1.xyz.y, _1167.z <= _40_m4[_1146]._m1.xyz.z)))
            {
                float3 _1176 = _40_m4[_1146]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1178 = _1167 * 0.100000001490116119384765625f;
                float3 _1179 = _1178 * _1178;
                float3 _1182 = (_40_m4[_1146]._m1.xyz - _1167) * _40_m4[_1146]._m5.xyz;
                float3 _1230;
                [branch]
                if (_40_m4[_1146]._m6.x == 1.0f)
                {
                    float3 _1215 = float3(dot(_40_m4[_1146]._m2.xyz, _1085), dot(_40_m4[_1146]._m3.xyz, _1085), dot(_40_m4[_1146]._m4.xyz, _1085));
                    float3 _1217 = (_40_m4[_1146]._m1.xyz - _1166) / _1215;
                    float3 _1220 = ((-_40_m4[_1146]._m1.xyz) - _1166) / _1215;
                    bool3 _1221 = bool3(_1215.x > 0.0f.xxx.x, _1215.y > 0.0f.xxx.y, _1215.z > 0.0f.xxx.z);
                    float3 _1222 = float3(_1221.x ? _1217.x : _1220.x, _1221.y ? _1217.y : _1220.y, _1221.z ? _1217.z : _1220.z);
                    _1230 = _1166 + (_1215 * min(min(_1222.x, _1222.y), _1222.z));
                }
                else
                {
                    _1230 = _1085;
                }
                float3 _1231 = normalize(_1230);
                float3 _1234 = float3(int3(sign(_1231)));
                float3 _1237 = _1231 / dot(_1231, _1234).xxx;
                float3 _1251;
                if (_1237.z < 0.0f)
                {
                    float3 _1242 = abs(_1237);
                    float2 _1249 = _1234.xy * float2(1.0f - _1242.y, 1.0f - _1242.x);
                    _1251 = float3(_1249.x, _1249.y, _1237.z);
                }
                else
                {
                    _1251 = _1237;
                }
                float _1276 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_40_m4[_1146]._m0, float4(_545, 1.0f))));
                float _1289 = clamp((min(_1182.x, min(_1182.y, _1182.z)) * _40_m4[_1146]._m6.y) + ((((((_1176 * _1176).x - ((_1179.x + _1179.y) + _1179.z)) * _40_m4[_1146]._m5.x) * _40_m4[_1146]._m5.x) * (1.0f - _40_m4[_1146]._m6.y)) * 100.0f), 0.0f, 1.0f) * _40_m4[_1146]._m6.w;
                _1135 = _1134 + ((((_29.SampleLevel(_25, float3((((_1251.xy * 0.5f) + 0.5f.xx) * _40_m1.w) + _40_m2.w.xx, _40_m4[_1146]._m1.w), _1093).xyz * _40_m4[_1146]._m5.w) * ((((((clamp(abs(_1132 / _1276), 0.0f, 1.0f) * 2.0f) + _1132) / (2.0f + _1276)) - 1.0f) * _18_m23.w) + 1.0f)) * _1289) * _1137);
                _1138 = _1137 * (1.0f - _1289);
            }
            else
            {
                _1135 = _1134;
                _1138 = _1137;
            }
            _1134 = _1135;
            _1137 = _1138;
            _1139 = _1140;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1358;
    if (_1142)
    {
        float3 _1297 = normalize(_1085);
        float3 _1300 = float3(int3(sign(_1297)));
        float3 _1303 = _1297 / dot(_1297, _1300).xxx;
        float3 _1317;
        if (_1303.z < 0.0f)
        {
            float3 _1308 = abs(_1303);
            float2 _1315 = _1300.xy * float2(1.0f - _1308.y, 1.0f - _1308.x);
            _1317 = float3(_1315.x, _1315.y, _1303.z);
        }
        else
        {
            _1317 = _1303;
        }
        float _1344 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_40_m3, float4(_545, 1.0f))));
        _1358 = _1134 + ((_29.SampleLevel(_25, float3((((_1317.xy * 0.5f) + 0.5f.xx) * _40_m1.w) + _40_m2.w.xx, 0.0f), _1093).xyz * ((((((clamp(abs(_1132 / _1344), 0.0f, 1.0f) * 2.0f) + _1132) / (2.0f + _1344)) - 1.0f) * _18_m23.w) + 1.0f)) * _1137);
    }
    else
    {
        _1358 = _1134;
    }
    float2 _1879;
    do
    {
        if (_46_m7.w >= 0.9900000095367431640625f)
        {
            _1879 = float2(_46_m7.z, 1.0f);
            break;
        }
        int _1380 = int(_46_m7.x);
        bool3 _1382 = (_1380 == 2).xxx;
        float3 _1390 = _402 - float3(_1382.x ? _46_m1[0].xyz.x : _16_m11.xyz.x, _1382.y ? _46_m1[0].xyz.y : _16_m11.xyz.y, _1382.z ? _46_m1[0].xyz.z : _16_m11.xyz.z);
        float _1401 = max(clamp((_46_m6.w - dot(_1390, _1390)) * _46_m6.z, 0.0f, 1.0f), _46_m8.x);
        float _1618;
        bool _1619;
        if (_1401 > 0.0f)
        {
            float _1616;
            bool _1617;
            if (_1380 > 0)
            {
                float3 _1408 = _402 - _46_m1[0].xyz;
                float3 _1412 = _402 - _46_m1[1].xyz;
                float3 _1416 = _402 - _46_m1[2].xyz;
                float3 _1420 = _402 - _46_m1[3].xyz;
                float4 _1425 = float4(dot(_1408, _1408), dot(_1412, _1412), dot(_1416, _1416), dot(_1420, _1420));
                float4 _1434 = float4(_46_m1[0].w, _46_m1[1].w, _46_m1[2].w, _46_m1[3].w);
                float4 _1436 = float4(bool4(_1425.x < _1434.x, _1425.y < _1434.y, _1425.z < _1434.z, _1425.w < _1434.w));
                float3 _1440 = clamp(_1436.yzw - _1436.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1444 = clamp(4.0f - dot(float4(_1436.x, _1440.x, _1440.y, _1440.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1446 = clamp(_1444 + 1.0f, 0.0f, 3.0f);
                uint _1447 = uint(_1444);
                uint _1455 = uint(_1446);
                float _1461 = dot(_1425, _340[_1455]) / _46_m1[_1455].w;
                float _1478;
                if (((_1446 > _1444) && (_1461 >= 0.0f)) && (_1461 <= 1.0f))
                {
                    _1478 = _1444 + step(frac(52.98291778564453125f * frac(dot(_1094 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1425, _340[_1447]) / _46_m1[_1447].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1478 = _1444;
                }
                float _1479 = clamp(_1478, 0.0f, 4.0f);
                float4 _1483 = mul(_46_m0[uint(_1479)], _406);
                float _1486 = _1483.z;
                float4 _1487 = float4(_1483.xy, _1486, _1479);
                float3 _1488 = _1487.xyz;
                bool3 _1489 = bool3(_1488.x <= 0.0f.xxx.x, _1488.y <= 0.0f.xxx.y, _1488.z <= 0.0f.xxx.z);
                bool3 _1490 = bool3(_1488.x >= 1.0f.xxx.x, _1488.y >= 1.0f.xxx.y, _1488.z >= 1.0f.xxx.z);
                bool _1496 = any(bool3(_1489.x || _1490.x, _1489.y || _1490.y, _1489.z || _1490.z)) || ((asuint(_1486) & 2147483647u) > 2139095040u);
                int _1497 = int(_1479);
                float2 _1514 = float4(_46_m3[_1497].xy + (_1487.xy * _46_m3[_1497].zw), _1486, _1479).xy * _46_m4.zw;
                float2 _1516 = floor(_1514 + 0.5f.xx);
                float2 _1517 = _1514 - _1516;
                float _1518 = _1517.x;
                float _1519 = _1518 + 0.5f;
                float _1521 = (_1519 * _1519) * 0.5f;
                float _1524 = min(_1518, 0.0f);
                float _1528 = max(_1518, 0.0f);
                float4 _1532 = float4(_1521 - _1518, (1.0f - _1518) - (_1524 * _1524), (_1518 + 1.0f) - (_1528 * _1528), _1521) * 0.44444000720977783203125f;
                float _1533 = _1517.y;
                float _1534 = _1533 + 0.5f;
                float _1536 = (_1534 * _1534) * 0.5f;
                float _1539 = min(_1533, 0.0f);
                float _1543 = max(_1533, 0.0f);
                float4 _1547 = float4(_1536 - _1533, (1.0f - _1533) - (_1539 * _1539), (_1533 + 1.0f) - (_1543 * _1543), _1536) * 0.44444000720977783203125f;
                float2 _1549 = _1532.yw;
                float2 _1550 = _1532.xz + _1549;
                float2 _1552 = _1547.yw;
                float2 _1553 = _1547.xz + _1552;
                float2 _1559 = ((_1549 / _1550) + float2(-1.5f, 0.5f)) * _46_m4.xx;
                float2 _1561 = ((_1552 / _1553) + float2(-1.5f, 0.5f)) * _46_m4.yy;
                float2 _1563 = _1516 * _46_m4.xy;
                float _1564 = _1559.x;
                float _1565 = _1561.x;
                float _1568 = _1559.y;
                float _1571 = _1561.y;
                float _1576 = _1550.x;
                float _1577 = _1553.x;
                float _1579 = _1550.y;
                float _1581 = _1553.y;
                _1616 = _1496 ? 1.0f : (((((_1576 * _1577) * _47.SampleCmpLevelZero(_26, float3(_1563 + float2(_1564, _1565), _360).xy, _1486)) + ((_1579 * _1577) * _47.SampleCmpLevelZero(_26, float3(_1563 + float2(_1568, _1565), _360).xy, _1486))) + ((_1576 * _1581) * _47.SampleCmpLevelZero(_26, float3(_1563 + float2(_1564, _1571), _360).xy, _1486))) + ((_1579 * _1581) * _47.SampleCmpLevelZero(_26, float3(_1563 + float2(_1568, _1571), _360).xy, _1486)));
                _1617 = _1496;
            }
            else
            {
                _1616 = 1.0f;
                _1617 = false;
            }
            _1618 = _1616;
            _1619 = _1617;
        }
        else
        {
            _1618 = 1.0f;
            _1619 = false;
        }
        float _1819;
        float _1820;
        if ((_1401 < 1.0f) || (_46_m8.x > 0.5f))
        {
            float _1630 = 1.0f - clamp(dot(_545, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1647 = float4((_402 - (_44_m0.xyz * (_1630 * _46_m24.x))) + (_545 * (_1630 * _46_m24.y)), 1.0f);
            float4 _1648 = mul(_46_m23, _1647);
            float2 _1649 = _1648.xy;
            float _1817;
            if (all(bool2(_1649.x > 0.0f.xx.x, _1649.y > 0.0f.xx.y)) && all(bool2(_1649.x < 1.0f.xx.x, _1649.y < 1.0f.xx.y)))
            {
                uint _1668 = clamp(uint((floor(_1648.y * _46_m25.z) + _1648.x) * _46_m25.y), 0u, 127u);
                uint _1672 = asuint(_46_m27[_1668].x);
                float2 _1673 = spvUnpackHalf2x16(_1672);
                float _1674 = _1673.x;
                float _1816;
                if (_1674 >= 0.0f)
                {
                    float4x4 _1683 = _46_m22;
                    _1683[0].w = _46_m27[_1668].y;
                    _1683[1].w = _46_m27[_1668].z;
                    _1683[2].w = _46_m27[_1668].w;
                    float4 _1690 = mul(_1683, _1647);
                    float3 _1691 = _1690.xyz;
                    float _1815;
                    if (all(bool3(_1691.x > 0.0f.xxx.x, _1691.y > 0.0f.xxx.y, _1691.z > 0.0f.xxx.z)) && all(bool3(_1691.x < 1.0f.xxx.x, _1691.y < 1.0f.xxx.y, _1691.z < 1.0f.xxx.z)))
                    {
                        float _1708 = _1690.z;
                        float2 _1714 = float4((_1690.xy * _46_m24.zw) + float2(_1674, spvUnpackHalf2x16(_1672 >> 16u).x), _1708, 1.0f).xy * _46_m26.zw;
                        float2 _1716 = floor(_1714 + 0.5f.xx);
                        float2 _1717 = _1714 - _1716;
                        float _1718 = _1717.x;
                        float _1719 = _1718 + 0.5f;
                        float _1721 = (_1719 * _1719) * 0.5f;
                        float _1724 = min(_1718, 0.0f);
                        float _1728 = max(_1718, 0.0f);
                        float4 _1732 = float4(_1721 - _1718, (1.0f - _1718) - (_1724 * _1724), (_1718 + 1.0f) - (_1728 * _1728), _1721) * 0.44444000720977783203125f;
                        float _1733 = _1717.y;
                        float _1734 = _1733 + 0.5f;
                        float _1736 = (_1734 * _1734) * 0.5f;
                        float _1739 = min(_1733, 0.0f);
                        float _1743 = max(_1733, 0.0f);
                        float4 _1747 = float4(_1736 - _1733, (1.0f - _1733) - (_1739 * _1739), (_1733 + 1.0f) - (_1743 * _1743), _1736) * 0.44444000720977783203125f;
                        float2 _1750 = _1732.xz + _1732.yw;
                        float2 _1753 = _1747.xz + _1747.yw;
                        float2 _1759 = ((_1732.yw / _1750) + float2(-1.5f, 0.5f)) * _46_m26.xx;
                        float2 _1761 = ((_1747.yw / _1753) + float2(-1.5f, 0.5f)) * _46_m26.yy;
                        float2 _1763 = _1716 * _46_m26.xy;
                        float _1764 = _1759.x;
                        float _1765 = _1761.x;
                        float2 _1767 = _1763 + float2(_1764, _1765);
                        float _1768 = _1759.y;
                        float2 _1770 = _1763 + float2(_1768, _1765);
                        float _1771 = _1761.y;
                        float2 _1773 = _1763 + float2(_1764, _1771);
                        float2 _1775 = _1763 + float2(_1768, _1771);
                        float _1776 = _1750.x;
                        float _1777 = _1753.x;
                        float _1779 = _1750.y;
                        float _1781 = _1753.y;
                        _1815 = ((((_1776 * _1777) * _50.SampleCmpLevelZero(_26, float3(_1767, _360).xy, _1708)) + ((_1779 * _1777) * _50.SampleCmpLevelZero(_26, float3(_1770, _360).xy, _1708))) + ((_1776 * _1781) * _50.SampleCmpLevelZero(_26, float3(_1773, _360).xy, _1708))) + ((_1779 * _1781) * _50.SampleCmpLevelZero(_26, float3(_1775, _360).xy, _1708));
                    }
                    else
                    {
                        _1815 = 1.0f;
                    }
                    _1816 = _1815;
                }
                else
                {
                    _1816 = 1.0f;
                }
                _1817 = _1816;
            }
            else
            {
                _1817 = 1.0f;
            }
            _1819 = _1619 ? _1817 : _1618;
            _1820 = _1817;
        }
        else
        {
            _1819 = _1618;
            _1820 = 1.0f;
        }
        float _1823 = lerp(lerp(_1820, _1819, _1401), min(_1820, _1819), _46_m8.x);
        float _1874;
        if (_1823 > 0.001000000047497451305389404296875f)
        {
            float3 _1830 = _402 - _18_m65.xyz;
            float2 _1840 = (_1830 + (_18_m68.xyz * _1830.y)).xz * _18_m66.z;
            float2 _1849 = _18_m67.xy * _18_m75.w;
            _1874 = _1823 * lerp(1.0f, lerp(_49.SampleLevel(_24, _1840 + _1849, 0.0f), _49.SampleLevel(_24, (_1840 * _18_m67.w) + _1849, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1830.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1874 = _1823;
        }
        _1879 = float2(lerp(_1874, _46_m7.z, _46_m7.w), _1874);
        break;
    } while(false);
    float _1884 = lerp(1.0f, min(1.0f, _1879.x), _46_m6.x);
    float4 _2019;
    if (_1884 > 0.001000000047497451305389404296875f)
    {
        float3 _1894 = -_44_m0.xyz;
        float _1899 = dot(_1894, _1085);
        float3 _1901 = _1085 - (_1894 * _1899);
        bool3 _1903 = (_1899 < _44_m4.z).xxx;
        float3 _1911 = normalize((_1894 * _44_m4.z) + ((_1901 * rsqrt(max(6.103515625e-05f, dot(_1901, _1901)))) * _44_m4.y));
        float3 _1912 = float3(_1903.x ? _1911.x : _1085.x, _1903.y ? _1911.y : _1085.y, _1903.z ? _1911.z : _1085.z);
        float3 _1916 = _1912 + _439;
        float3 _1920 = _1916 * rsqrt(max(6.103515625e-05f, dot(_1916, _1916)));
        float _1921 = clamp(dot(_1912, _545), 0.0f, 1.0f);
        float _1923 = clamp(dot(_545, _1920), 0.0f, 1.0f);
        float _1926 = clamp(_603, 0.0f, 1.0f);
        float _1927 = _522 * _522;
        float _1928 = _1927 * _1927;
        float _1949 = (((_1923 * _1928) - _1923) * _1923) + 1.0f;
        float _1952 = 1.0f - clamp(dot(_439, _1920), 0.0f, 1.0f);
        float _1953 = _1952 * _1952;
        float _1955 = (_1952 * _1953) * _1953;
        float _1979 = 1.0f - _522;
        float _1986 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1979 * (1.04997003078460693359375f + (_1979 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1979))))));
        float _1987 = 1.0f - _1986;
        float3 _1990 = _602 + ((1.0f.xxx - _602) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0x2B2AADD6:
        float3 _2006 = ((clamp((min(((_602 * (1.0f - _1955)) + _1955.xxx) * ((_1928 / (_1949 * _1949)) * (0.5f / (((_1921 * sqrt(((((-_1926) * _1928) + _1926) * _1926) + _1928)) + (_1926 * sqrt(((((-_1921) * _1928) + _1921) * _1921) + _1928))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1990 * (((_54.SampleLevel(_23, (float2(_1926, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_1921, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1986) / _1987)) * _1990) / (1.0f.xxx - (_1990 * _1987)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1921) + ((_598 * 1.0f) * _1921)) * _44_m1.xyz;
        */
        // RenoDX code: reduce opaque glass specular lighting when the transparency improvement is enabled.
        float3 _2006 = ((clamp((min(((_602 * (1.0f - _1955)) + _1955.xxx) * ((_1928 / (_1949 * _1949)) * (0.5f / (((_1921 * sqrt(((((-_1926) * _1928) + _1926) * _1926) + _1928)) + (_1926 * sqrt(((((-_1921) * _1928) + _1921) * _1921) + _1928))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1990 * (((_54.SampleLevel(_23, (float2(_1926, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_1921, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1986) / _1987)) * _1990) / (1.0f.xxx - (_1990 * _1987)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f) * _1921) + ((_598 * 1.0f) * _1921)) * _44_m1.xyz;
        float3 _2017 = lerp(_2006, _2006 * _51.SampleBias(_23, float2(_1884, 0.5f), _18_m16).xyz, (1.0f - _1884).xxx) * 1.0f;
        _2019 = float4(_2017.x, _2017.y, _2017.z, 0.0f.xxxx.w);
    }
    else
    {
        _2019 = 0.0f.xxxx;
    }
    float2 _2021 = floor(_1094 * 0.03125f);
    int _2029 = int((_2021.x + (_2021.y * _42_m5)) * 8.0f);
    float _2036 = floor(_658 - (_18_m3.y * _42_m11));
    float _2040 = clamp(_2036, 0.0f, _42_m7 - 1.0f);
    int _2042 = int(_2040 * 8.0f);
    float3 _2044;
    float _2047;
    _2044 = 0.0f.xxx;
    _2047 = 1.0f;
    float3 _2045;
    float _2048;
    [loop]
    for (int _2049 = 0; _2049 <= 7; _2044 = _2045, _2047 = _2048, _2049++)
    {
        uint _2067 = (_2036 <= _2040) ? (_31.Load(uint(_2029 + _2049) * 4 + 0) & _31.Load(uint((_18_m21.y + _2042) + _2049) * 4 + 0)) : 0u;
        uint _2068 = uint(_2049);
        float3 _2072;
        _2048 = _2047;
        _2072 = 0.0f.xxx;
        uint _2075;
        float _2070;
        float3 _2073;
        [loop]
        for (uint _2074 = _2067; _2074 != 0u; _2048 = _2070, _2072 = _2073, _2074 = _2075)
        {
            uint _2079 = firstbitlow(_2074);
            _2075 = _2074 ^ (1u << (_2079 & 31u));
            int _2085 = int((32u * _2068) + _2079) * 8;
            int _2088 = _2085 + 1;
            int _2091 = _2085 + 2;
            int _2094 = _2085 + 3;
            int _2097 = _2085 + 5;
            int _2100 = _2085 + 6;
            int _2103 = _2085 + 7;
            uint _2107 = uint(_44_m6[_2097].w);
            float _2182;
            if ((_2107 & 1u) == 1u)
            {
                uint _2113 = asuint(_44_m6[_2097].x);
                uint _2120 = asuint(_44_m6[_2097].y);
                uint _2127 = asuint(_44_m6[_2097].z);
                uint _2134 = asuint(_44_m6[_2100].x);
                uint _2141 = asuint(_44_m6[_2100].y);
                uint _2148 = asuint(_44_m6[_2100].z);
                float3 _2167 = abs(mul(float4(_402 - _44_m6[_2088].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2113).x, spvUnpackHalf2x16(_2127).x, spvUnpackHalf2x16(_2141).x, 0.0f), float4(spvUnpackHalf2x16(_2113 >> 16u).x, spvUnpackHalf2x16(_2127 >> 16u).x, spvUnpackHalf2x16(_2141 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2120).x, spvUnpackHalf2x16(_2134).x, spvUnpackHalf2x16(_2148).x, 0.0f), float4(spvUnpackHalf2x16(_2120 >> 16u).x, spvUnpackHalf2x16(_2134 >> 16u).x, spvUnpackHalf2x16(_2148 >> 16u).x, 0.0f))).xyz);
                float _2174 = _44_m6[_2103].x * 0.5f;
                float _2180 = 1.0f - clamp((max(max(_2167.x, _2167.y), _2167.z) - (_2174 + 0.5f)) / (0.5f - _2174), 0.0f, 1.0f);
                _2182 = _2180 * _2180;
            }
            else
            {
                _2182 = 1.0f;
            }
            bool _2186 = _44_m6[_2094].z > 0.5f;
            if ((false || (_2182 < 0.001000000047497451305389404296875f)) || _2186)
            {
                _2070 = _2048;
                _2073 = _2072;
                continue;
            }
            float _3297;
            float3 _3298;
            if (_44_m6[_2085].w < 1.5f)
            {
                float3 _2674 = float3(0.100000001490116119384765625f, _522, 1.0f);
                float _2683 = (0.5f + (0.5f * _44_m6[_2091].y)) - abs(_44_m6[_2091].x);
                float _2684 = _44_m6[_2091].y - _2683;
                float _2691 = abs(max((1.0f - abs(_2683)) - abs(_2684), 0.00048828125f));
                float3 _2695 = normalize(float3(_2683, _2684, (_44_m6[_2091].x >= 0.0f) ? _2691 : (-_2691)));
                float3 _2696 = _44_m6[_2088].xyz - _402;
                float _2697 = dot(_2696, _2696);
                float _2698 = rsqrt(_2697);
                float3 _2699 = _2696 * _2698;
                float _2703 = clamp(_44_m6[_2103].y * _2698, 0.0f, 1.0f);
                int _2708 = int(_44_m6[_2103].w);
                float3 _2709 = _2695 * _44_m6[_2091].z;
                float3 _2710 = _2709 * 0.5f;
                float3 _2711 = _2696 - _2710;
                float3 _2712 = _2696 + _2710;
                bool _2715 = (uint(_44_m6[_2085].w) & 1u) == 0u;
                bool _2718 = _2715 || ((_2107 & 2u) != 0u);
                bool _2721 = (!_2715) && (_44_m6[_2091].z > 0.0f);
                float _2740;
                float _2741;
                if (_2721)
                {
                    float _2725 = length(_2711);
                    float _2726 = length(_2712);
                    _2740 = clamp(0.5f * ((dot(_545, _2711) / _2725) + (dot(_545, _2712) / _2726)), 0.0f, 1.0f);
                    _2741 = 1.0f / ((((_2725 * _2726) + dot(_2711, _2712)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2740 = clamp(dot(_545, _2699), 0.0f, 1.0f);
                    _2741 = 1.0f;
                }
                float _2763;
                if (_44_m6[_2100].w < 0.0f)
                {
                    float _2757 = _2697 * (_44_m6[_2088].w * _44_m6[_2088].w);
                    float _2760 = clamp(1.0f - (_2757 * _2757), 0.0f, 1.0f);
                    _2763 = lerp(1.0f / (_2697 + 1.0f), _2741, float(_2721)) * (_2760 * _2760);
                }
                else
                {
                    float3 _2746 = _2696 * _44_m6[_2088].w;
                    _2763 = _2741 * pow(1.0f - clamp(dot(_2746, _2746), 0.0f, 1.0f), _44_m6[_2100].w);
                }
                float _2769 = clamp((dot(_2699, -_2695) - _44_m6[_2091].z) * _44_m6[_2091].w, 0.0f, 1.0f);
                float _2773 = _2763 * lerp(1.0f, _2769 * _2769, float(_2715));
                float _2873;
                if ((!_2721) && (_2708 >= 0))
                {
                    uint _2779 = uint(_2708);
                    float2 _2866;
                    [branch]
                    if (_2715)
                    {
                        float4 _2856 = mul(_64_m1[_2779], _406);
                        _2866 = _64_m0[_2779].xy + (clamp(_2856.xy / _2856.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2779].zw);
                    }
                    else
                    {
                        float3 _2793 = mul(float4(-_2696, 0.0f), _64_m1[_2779]).xyz;
                        float3 _367 = _2793;
                        float3 _366 = _2793;
                        float3 _365 = abs(_2793);
                        uint _2802 = uint(int(_365.y > _365.x));
                        uint _2808 = (_365.z > _365[_2802]) ? 2u : _2802;
                        uint _2814 = (_2808 * 2u) + uint(_366[_2808] < 0.0f);
                        float _2818 = abs(_367[_2814 / 2u]);
                        float _2838 = 0.5f - (0.000244140625f / _64_m0[_2779].w);
                        _2866 = _64_m0[_2779].xy + (clamp(float2((float(_2814) + ((((_367[uint(_341[_2814].x)] * _342[_2814].x) / _2818) * _2838) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_367[uint(_341[_2814].y)] * _342[_2814].y) / _2818) * _2838)), 0.0f.xx, 1.0f.xx) * _64_m0[_2779].zw);
                    }
                    _2873 = _2773 * _62.SampleLevel(_23, _2866, 0.0f).x;
                }
                else
                {
                    _2873 = _2773;
                }
                bool _2874 = _2873 > 0.0f;
                float _3162;
                if (_2874)
                {
                    int _2926;
                    if (_2718)
                    {
                        _2926 = int(_44_m6[_2094].x);
                    }
                    else
                    {
                        uint _2881 = asuint(_44_m6[_2091].w);
                        uint _2883 = asuint(_44_m6[_2094].x);
                        float3 _2884 = _402 - _44_m6[_2088].xyz;
                        float3 _2885 = abs(_2884);
                        float _2886 = _2885.x;
                        float _2887 = _2885.y;
                        float _2889 = _2885.z;
                        int _2921;
                        if ((_2886 > _2887) && (_2886 > _2889))
                        {
                            _2921 = int((_2884.x > 0.0f) ? (_2881 >> 24u) : ((_2881 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2913;
                            if (_2887 > _2889)
                            {
                                _2913 = int((_2884.y > 0.0f) ? ((_2881 >> 8u) & 255u) : (_2881 & 255u));
                            }
                            else
                            {
                                _2913 = int((_2884.z > 0.0f) ? ((_2883 >> 8u) & 255u) : (_2883 & 255u));
                            }
                            _2921 = _2913;
                        }
                        _2926 = (_2921 < 80) ? _2921 : (-1);
                    }
                    float4 _2943 = mul(_46_m10[_2926], float4((_402 - ((-_2699) * _46_m11[_2926].x)) + (_545 * (_46_m11[_2926].y * 5.0f)), 1.0f));
                    float _2944 = _2943.w;
                    float3 _2947 = _2943.xyz / _2944.xxx;
                    float2 _2948 = _2947.xy;
                    float3 _2956 = _2947.xyz;
                    bool3 _2957 = bool3(_2956.x <= 0.0f.xxx.x, _2956.y <= 0.0f.xxx.y, _2956.z <= 0.0f.xxx.z);
                    bool3 _2958 = bool3(_2956.x >= 1.0f.xxx.x, _2956.y >= 1.0f.xxx.y, _2956.z >= 1.0f.xxx.z);
                    float _2961 = _2947.z;
                    float2 _2972 = ((_2948 * (_46_m12[_2926].zw - _46_m12[_2926].xy)) + _46_m12[_2926].xy).xy * _46_m13.zw;
                    float2 _2974 = floor(_2972 + 0.5f.xx);
                    float2 _2975 = _2972 - _2974;
                    float _2976 = _2975.x;
                    float _2977 = _2976 + 0.5f;
                    float _2978 = _2977 * _2977;
                    float _2981 = 1.0f - _2976;
                    float _2982 = min(_2976, 0.0f);
                    float _2985 = _2976 + 1.0f;
                    float _2986 = max(_2976, 0.0f);
                    float _2997 = _2975.y;
                    float _2998 = _2997 + 0.5f;
                    float _2999 = _2998 * _2998;
                    float _3002 = 1.0f - _2997;
                    float _3003 = min(_2997, 0.0f);
                    float _3006 = _2997 + 1.0f;
                    float _3007 = max(_2997, 0.0f);
                    float3 _3019 = float3(0.1599999964237213134765625f * _2981, 0.1599999964237213134765625f * ((_2985 - (_2986 * _2986)) + 1.0f), _2978 * 0.07999999821186065673828125f);
                    float3 _3020 = float3(0.1599999964237213134765625f * ((_2978 * 0.5f) - _2976), 0.1599999964237213134765625f * ((_2981 - (_2982 * _2982)) + 1.0f), 0.1599999964237213134765625f * _2985) + _3019;
                    float3 _3022 = float3(0.1599999964237213134765625f * _3002, 0.1599999964237213134765625f * ((_3006 - (_3007 * _3007)) + 1.0f), _2999 * 0.07999999821186065673828125f);
                    float3 _3023 = float3(0.1599999964237213134765625f * ((_2999 * 0.5f) - _2997), 0.1599999964237213134765625f * ((_3002 - (_3003 * _3003)) + 1.0f), 0.1599999964237213134765625f * _3006) + _3022;
                    float3 _3029 = ((_3019 / _3020) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.xxx;
                    float3 _3031 = ((_3022 / _3023) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.yyy;
                    float2 _3033 = _2974 * _46_m13.xy;
                    float _3034 = _3029.x;
                    float _3035 = _3031.x;
                    float _3038 = _3029.y;
                    float _3041 = _3029.z;
                    float _3044 = _3031.y;
                    float _3051 = _3031.z;
                    float _3058 = _3020.x;
                    float _3059 = _3023.x;
                    float _3061 = _3020.y;
                    float _3063 = _3020.z;
                    float _3065 = _3023.y;
                    float _3069 = _3023.z;
                    float _3127 = (((((((_3058 * _3059) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3034, _3035), _360).xy, _2961)) + ((_3061 * _3059) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3038, _3035), _360).xy, _2961))) + ((_3063 * _3059) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3041, _3035), _360).xy, _2961))) + ((_3058 * _3065) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3034, _3044), _360).xy, _2961))) + ((_3061 * _3065) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3038, _3044), _360).xy, _2961))) + ((_3063 * _3065) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3041, _3044), _360).xy, _2961))) + ((_3058 * _3069) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3034, _3051), _360).xy, _2961));
                    float2 _3148 = min(_2948, 1.0f.xx - _2948);
                    _3162 = (_2926 >= 0) ? lerp(1.0f, (any(bool3(_2957.x || _2958.x, _2957.y || _2958.y, _2957.z || _2958.z)) || ((asuint(_2961) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3127 + ((_3061 * _3069) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3038, _3051), _360).xy, _2961))) + ((_3063 * _3069) * _48.SampleCmpLevelZero(_26, float3(_3033 + float2(_3041, _3051), _360).xy, _2961))), _2718 ? min(_46_m11[_2926].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_46_m11[_2926].z - _2944) * 0.25f, min(_3148.x, _3148.y)))) : _46_m11[_2926].w) : 1.0f;
                }
                else
                {
                    _3162 = 1.0f;
                }
                float3 _3185;
                float3 _3186;
                if (_2721)
                {
                    float3 _3165 = _2674 * _2674;
                    float _3174 = dot(_1085, _2709);
                    _3185 = _3165 / clamp(_3165 + (0.5f * clamp(_44_m6[_2091].z * _2698, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3186 = normalize(_2711 + (_2709 * clamp(dot(_2711, (_1085 * _3174) - _2709) / ((_44_m6[_2091].z * _44_m6[_2091].z) - (_3174 * _3174)), 0.0f, 1.0f)));
                }
                else
                {
                    _3185 = 1.0f.xxx;
                    _3186 = _2699;
                }
                float3 _3187 = _3186 + _439;
                float3 _3191 = _3187 * rsqrt(max(6.103515625e-05f, dot(_3187, _3187)));
                float3 _3296;
                if (_2874)
                {
                    float _3194 = clamp(_2740, 0.0f, 1.0f);
                    float _3196 = clamp(dot(_545, _3191), 0.0f, 1.0f);
                    float _3198 = clamp(dot(_439, _3191), 0.0f, 1.0f);
                    float _3199 = clamp(_603, 0.0f, 1.0f);
                    float _3200 = _522 * _522;
                    float _3210;
                    if (_2703 > 0.0f)
                    {
                        _3210 = clamp(_3200 + ((_2703 * _2703) / ((_3198 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3210 = _3200;
                    }
                    float _3211 = _3210 * _3210;
                    float _3232 = (((_3196 * _3211) - _3196) * _3196) + 1.0f;
                    float _3237 = 1.0f - _3198;
                    float _3238 = _3237 * _3237;
                    float _3240 = (_3237 * _3238) * _3238;
                    float _3264 = 1.0f - _522;
                    float _3271 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3264 * (1.04997003078460693359375f + (_3264 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3264))))));
                    float _3272 = 1.0f - _3271;
                    float3 _3275 = _602 + ((1.0f.xxx - _602) * 0.0476190485060214996337890625f);
                    float3 _3295 = ((clamp((min(((_602 * (1.0f - _3240)) + _3240.xxx) * (((_3211 / (_3232 * _3232)) * _3185.y) * (0.5f / (((_3194 * sqrt(((((-_3199) * _3211) + _3199) * _3199) + _3211)) + (_3199 * sqrt(((((-_3194) * _3211) + _3194) * _3194) + _3211))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3275 * (((_54.SampleLevel(_23, (float2(_3199, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_3194, _522) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3271) / _3272)) * _3275) / (1.0f.xxx - (_3275 * _3272)))) * _44_m6[_2103].z, 0.0f.xxx, 1000.0f.xxx) * _2740) + ((_598 * _3185.z) * _2740)) * (((_44_m6[_2085].xyz * _2873) * _3162) * _2182);
                    _3296 = _3295;
                }
                else
                {
                    _3296 = 0.0f.xxx;
                }
                _3297 = _2048;
                _3298 = _3296;
            }
            else
            {
                float _2672;
                do
                {
                    if (_2186)
                    {
                        _2672 = 1.0f;
                        break;
                    }
                    float _2206 = (0.5f + (0.5f * _44_m6[_2091].y)) - abs(_44_m6[_2091].x);
                    float _2207 = _44_m6[_2091].y - _2206;
                    float _2214 = abs(max((1.0f - abs(_2206)) - abs(_2207), 0.00048828125f));
                    float3 _2218 = normalize(float3(_2206, _2207, (_44_m6[_2091].x >= 0.0f) ? _2214 : (-_2214)));
                    float3 _2219 = _44_m6[_2088].xyz - _402;
                    float _2220 = dot(_2219, _2219);
                    float3 _2222 = _2219 * rsqrt(_2220);
                    int _2225 = int(_44_m6[_2103].w);
                    float3 _2227 = (_2218 * _44_m6[_2091].z) * 0.5f;
                    float3 _2228 = _2219 - _2227;
                    float3 _2229 = _2219 + _2227;
                    bool _2232 = (uint(_44_m6[_2085].w) & 1u) == 0u;
                    bool _2235 = _2232 || ((_2107 & 2u) != 0u);
                    bool _2238 = (!_2232) && (_44_m6[_2091].z > 0.0f);
                    float _2250;
                    if (_2238)
                    {
                        _2250 = 1.0f / ((((length(_2228) * length(_2229)) + dot(_2228, _2229)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2250 = 1.0f;
                    }
                    float _2272;
                    if (_44_m6[_2100].w < 0.0f)
                    {
                        float _2266 = _2220 * (_44_m6[_2088].w * _44_m6[_2088].w);
                        float _2269 = clamp(1.0f - (_2266 * _2266), 0.0f, 1.0f);
                        _2272 = lerp(1.0f / (_2220 + 1.0f), _2250, float(_2238)) * (_2269 * _2269);
                    }
                    else
                    {
                        float3 _2255 = _2219 * _44_m6[_2088].w;
                        _2272 = _2250 * pow(1.0f - clamp(dot(_2255, _2255), 0.0f, 1.0f), _44_m6[_2100].w);
                    }
                    float _2278 = clamp((dot(_2222, -_2218) - _44_m6[_2091].z) * _44_m6[_2091].w, 0.0f, 1.0f);
                    float _2282 = _2272 * lerp(1.0f, _2278 * _2278, float(_2232));
                    float _2382;
                    if ((!_2238) && (_2225 >= 0))
                    {
                        uint _2288 = uint(_2225);
                        float2 _2375;
                        [branch]
                        if (_2232)
                        {
                            float4 _2365 = mul(_64_m1[_2288], _406);
                            _2375 = _64_m0[_2288].xy + (clamp(_2365.xy / _2365.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2288].zw);
                        }
                        else
                        {
                            float3 _2302 = mul(float4(-_2219, 0.0f), _64_m1[_2288]).xyz;
                            float3 _370 = _2302;
                            float3 _369 = _2302;
                            float3 _368 = abs(_2302);
                            uint _2311 = uint(int(_368.y > _368.x));
                            uint _2317 = (_368.z > _368[_2311]) ? 2u : _2311;
                            uint _2323 = (_2317 * 2u) + uint(_369[_2317] < 0.0f);
                            float _2327 = abs(_370[_2323 / 2u]);
                            float _2347 = 0.5f - (0.000244140625f / _64_m0[_2288].w);
                            _2375 = _64_m0[_2288].xy + (clamp(float2((float(_2323) + ((((_370[uint(_341[_2323].x)] * _342[_2323].x) / _2327) * _2347) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_370[uint(_341[_2323].y)] * _342[_2323].y) / _2327) * _2347)), 0.0f.xx, 1.0f.xx) * _64_m0[_2288].zw);
                        }
                        _2382 = _2282 * _62.SampleLevel(_23, _2375, 0.0f).x;
                    }
                    else
                    {
                        _2382 = _2282;
                    }
                    float _2671;
                    if (_2382 > 0.0f)
                    {
                        int _2435;
                        if (_2235)
                        {
                            _2435 = int(_44_m6[_2094].x);
                        }
                        else
                        {
                            uint _2390 = asuint(_44_m6[_2091].w);
                            uint _2392 = asuint(_44_m6[_2094].x);
                            float3 _2393 = _402 - _44_m6[_2088].xyz;
                            float3 _2394 = abs(_2393);
                            float _2395 = _2394.x;
                            float _2396 = _2394.y;
                            float _2398 = _2394.z;
                            int _2430;
                            if ((_2395 > _2396) && (_2395 > _2398))
                            {
                                _2430 = int((_2393.x > 0.0f) ? (_2390 >> 24u) : ((_2390 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2422;
                                if (_2396 > _2398)
                                {
                                    _2422 = int((_2393.y > 0.0f) ? ((_2390 >> 8u) & 255u) : (_2390 & 255u));
                                }
                                else
                                {
                                    _2422 = int((_2393.z > 0.0f) ? ((_2392 >> 8u) & 255u) : (_2392 & 255u));
                                }
                                _2430 = _2422;
                            }
                            _2435 = (_2430 < 80) ? _2430 : (-1);
                        }
                        float4 _2452 = mul(_46_m10[_2435], float4((_402 - ((-_2222) * _46_m11[_2435].x)) + (_545 * (_46_m11[_2435].y * 5.0f)), 1.0f));
                        float _2453 = _2452.w;
                        float3 _2456 = _2452.xyz / _2453.xxx;
                        float2 _2457 = _2456.xy;
                        float3 _2465 = _2456.xyz;
                        bool3 _2466 = bool3(_2465.x <= 0.0f.xxx.x, _2465.y <= 0.0f.xxx.y, _2465.z <= 0.0f.xxx.z);
                        bool3 _2467 = bool3(_2465.x >= 1.0f.xxx.x, _2465.y >= 1.0f.xxx.y, _2465.z >= 1.0f.xxx.z);
                        float _2470 = _2456.z;
                        float2 _2481 = ((_2457 * (_46_m12[_2435].zw - _46_m12[_2435].xy)) + _46_m12[_2435].xy).xy * _46_m13.zw;
                        float2 _2483 = floor(_2481 + 0.5f.xx);
                        float2 _2484 = _2481 - _2483;
                        float _2485 = _2484.x;
                        float _2486 = _2485 + 0.5f;
                        float _2487 = _2486 * _2486;
                        float _2490 = 1.0f - _2485;
                        float _2491 = min(_2485, 0.0f);
                        float _2494 = _2485 + 1.0f;
                        float _2495 = max(_2485, 0.0f);
                        float _2506 = _2484.y;
                        float _2507 = _2506 + 0.5f;
                        float _2508 = _2507 * _2507;
                        float _2511 = 1.0f - _2506;
                        float _2512 = min(_2506, 0.0f);
                        float _2515 = _2506 + 1.0f;
                        float _2516 = max(_2506, 0.0f);
                        float3 _2528 = float3(0.1599999964237213134765625f * _2490, 0.1599999964237213134765625f * ((_2494 - (_2495 * _2495)) + 1.0f), _2487 * 0.07999999821186065673828125f);
                        float3 _2529 = float3(0.1599999964237213134765625f * ((_2487 * 0.5f) - _2485), 0.1599999964237213134765625f * ((_2490 - (_2491 * _2491)) + 1.0f), 0.1599999964237213134765625f * _2494) + _2528;
                        float3 _2531 = float3(0.1599999964237213134765625f * _2511, 0.1599999964237213134765625f * ((_2515 - (_2516 * _2516)) + 1.0f), _2508 * 0.07999999821186065673828125f);
                        float3 _2532 = float3(0.1599999964237213134765625f * ((_2508 * 0.5f) - _2506), 0.1599999964237213134765625f * ((_2511 - (_2512 * _2512)) + 1.0f), 0.1599999964237213134765625f * _2515) + _2531;
                        float3 _2538 = ((_2528 / _2529) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.xxx;
                        float3 _2540 = ((_2531 / _2532) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.yyy;
                        float2 _2542 = _2483 * _46_m13.xy;
                        float _2543 = _2538.x;
                        float _2544 = _2540.x;
                        float _2547 = _2538.y;
                        float _2550 = _2538.z;
                        float _2553 = _2540.y;
                        float _2560 = _2540.z;
                        float _2567 = _2529.x;
                        float _2568 = _2532.x;
                        float _2570 = _2529.y;
                        float _2572 = _2529.z;
                        float _2574 = _2532.y;
                        float _2578 = _2532.z;
                        float _2636 = (((((((_2567 * _2568) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2543, _2544), _360).xy, _2470)) + ((_2570 * _2568) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2547, _2544), _360).xy, _2470))) + ((_2572 * _2568) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2550, _2544), _360).xy, _2470))) + ((_2567 * _2574) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2543, _2553), _360).xy, _2470))) + ((_2570 * _2574) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2547, _2553), _360).xy, _2470))) + ((_2572 * _2574) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2550, _2553), _360).xy, _2470))) + ((_2567 * _2578) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2543, _2560), _360).xy, _2470));
                        float2 _2657 = min(_2457, 1.0f.xx - _2457);
                        _2671 = (_2435 >= 0) ? lerp(1.0f, (any(bool3(_2466.x || _2467.x, _2466.y || _2467.y, _2466.z || _2467.z)) || ((asuint(_2470) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2636 + ((_2570 * _2578) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2547, _2560), _360).xy, _2470))) + ((_2572 * _2578) * _48.SampleCmpLevelZero(_26, float3(_2542 + float2(_2550, _2560), _360).xy, _2470))), _2235 ? min(_46_m11[_2435].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_46_m11[_2435].z - _2453) * 0.25f, min(_2657.x, _2657.y)))) : _46_m11[_2435].w) : 1.0f;
                    }
                    else
                    {
                        _2671 = 1.0f;
                    }
                    _2672 = _2671;
                    break;
                } while(false);
                _3297 = _2048 * _2672;
                _3298 = 0.0f.xxx;
            }
            _2070 = _3297;
            _2073 = _2072 + _3298;
        }
        _2045 = _2044 + _2072;
    }
    /*
    Vanilla shader code from 0x2B2AADD6:
    float3 _3304 = ((((float3(_1064, _1069, _1074) * _598) * lerp(1.0f, _493, _37_m4)) * _18_m22.x) + ((((_1358 * _18_m23.z) * _18_m22.y) * ((_602 * _617.x) + (clamp(50.0f * _602.y, 0.0f, 1.0f) * _617.y).xxx)) * 1.0f)) + (_2019.xyz + (_2044 * _2047)).xyz;
    */
    // RenoDX code: reduce opaque glass lighting terms when the transparency improvement is enabled.
    float3 _3304 = ((((float3(_1064, _1069, _1074) * (_598 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _493, _37_m4)) * _18_m22.x) + (((((_1358 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_602 * _617.x) + (clamp(50.0f * _602.y, 0.0f, 1.0f) * _617.y).xxx)) * 1.0f)) + (_2019.xyz + ((_2044 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2047)).xyz;
    float4 _3305 = float4(_3304.x, _3304.y, _3304.z, _362.w);
    _3305.w = _517;
    float _3322 = _402.y * _18_m46.w;
    float _3327 = max(0.00999999977648258209228515625f, _3322 + _18_m47.w);
    float3 _3341 = exp(_18_m45.xyz * ((-max(0.0f, (_440 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3327)) / _3327) * exp(_3322 + _18_m48.w))));
    float _3344 = dot(_1084, _18_m44.xyz);
    float _3350 = _18_m45.w * _18_m45.w;
    float _3354 = (1.0f + _3350) - ((2.0f * _18_m45.w) * _3344);
    float3 _3686;
    float _3687;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3512 = (uint3(int3(int(_657.x), int(_657.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3513 = _3512.y;
        uint _3514 = _3512.z;
        uint _3517 = _3512.x + (_3513 * _3514);
        uint _3519 = _3513 + (_3514 * _3517);
        uint _3521 = _3514 + (_3517 * _3519);
        uint _3523 = _3517 + (_3519 * _3521);
        float _3547 = dot(_1084, -_16_m0[2].xyz);
        float3 _3557 = _402 - _16_m11.xyz;
        float _3559 = (_18_m55.w * ((_3547 > 5.9604644775390625e-08f) ? (1.0f / _3547) : 0.0f)) * (1.0f / _440);
        float _3560 = _3557.y;
        float _3561 = _3559 * _3560;
        float _3563 = _16_m11.y + _3561;
        float _3564 = _3560 - _3561;
        float _3566 = (1.0f - _3559) * _440;
        float _3580 = max(-127.0f, _18_m49.z * _3564);
        float _3604 = max(-127.0f, _18_m52.x * _3564);
        float _3615 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3563 - _18_m49.x)))) * ((abs(_3580) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3580)) / _3580) : (0.693147182464599609375f - (0.2402265071868896484375f * _3580)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3563 - _18_m52.z)))) * ((abs(_3604) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3604)) / _3604) : (0.693147182464599609375f - (0.2402265071868896484375f * _3604))));
        float _3637 = clamp((_440 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3640 = clamp((max(clamp(exp2(-(_3615 * _3566)), 0.0f, 1.0f), _18_m51.w) + clamp((_440 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3637, 0.0f, 1.0f);
        float4 _3680 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_23, float3((_1094 + ((((float3(uint3(_3523, _3519 + (_3521 * _3523), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_658 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_658 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3686 = _3680.xyz + (((_18_m51.xyz * (1.0f - _3640)) + (((_18_m54.xyz * pow(clamp(dot(_439, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3615 * max(_3566 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3637))) * _3680.w);
        _3687 = _3680.w * _3640;
    }
    else
    {
        float3 _3384 = _402 - _16_m11.xyz;
        float _3386 = _3384.y;
        float _3400 = max(-127.0f, _18_m49.z * _3386);
        float _3424 = max(-127.0f, _18_m52.x * _3386);
        float _3435 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3400) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3400)) / _3400) : (0.693147182464599609375f - (0.2402265071868896484375f * _3400)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3424) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3424)) / _3424) : (0.693147182464599609375f - (0.2402265071868896484375f * _3424))));
        float _3457 = clamp((_440 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3460 = clamp((max(clamp(exp2(-(_3435 * _440)), 0.0f, 1.0f), _18_m51.w) + clamp((_440 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3457, 0.0f, 1.0f);
        _3686 = (_18_m51.xyz * (1.0f - _3460)) + (((_18_m54.xyz * pow(clamp(dot(_439, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3435 * max(_440 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3457));
        _3687 = _3460;
    }
    /*
    Vanilla shader code from 0x2B2AADD6:
    float3 _3693 = ((_3305.xyz * (_3341 * _3687)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3344 * _3344)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3350) / max((12.56637096405029296875f * _3354) * sqrt(_3354), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3341)) * _3687) + _3686)).xyz;
    */
    // RenoDX code start: apply improved glass and the selected hue-preserving fog blend.
    float3 _3693 = ((_3305.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3341 * _3687)) : (_3341 * _3687))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3344 * _3344)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3350) / max((12.56637096405029296875f * _3354) * sqrt(_3354), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3341)) * _3687 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3686 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    // RenoDX code end
    float3 _3703 = lerp(dot(_3693, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3693, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3713 = min(lerp(((sqrt(sqrt(abs(_570 * 0.5f))) * float2(int2(sign(_570)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _557.xx), 1.0f.xx);
    float4 _3714 = float4(_3713.x, _3713.y, _362.z, _362.w);
    _3714.z = float(clamp(max(dot(_3703.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _517, _517) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3714.w = lerp(0.0f, 0.699999988079071044921875f, _557);
    /*
    Vanilla shader code from 0x2B2AADD6:
    _13 = float4(_3703.x, _3703.y, _3703.z, _3305.w);
    */
    // RenoDX code start: compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3703.x, _3703.y, _3703.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3305.w);
    _14 = _3714;
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

#include "../shared.h"

// Vulkan shader 0xB8A8CA8D, decompiled from the matching game shader dump.

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

static float _360;
static float4 _362;
static uint _363;

static const float4 _340[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _341[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _342[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

cbuffer _15_16 : register(b12, space0)
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

cbuffer _17_18 : register(b16, space0)
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

cbuffer _19_21 : register(b0, space2)
{
    _20 _21_m0[256] : packoffset(c0);
};

ByteAddressBuffer _31 : register(t50, space0);
cbuffer _36_37 : register(b4, space1)
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

cbuffer _38_40 : register(b17, space0)
{
    float4 _40_m0 : packoffset(c0);
    float4 _40_m1 : packoffset(c1);
    float4 _40_m2 : packoffset(c2);
    float4 _40_m3 : packoffset(c3);
    _39 _40_m4[32] : packoffset(c4);
};

cbuffer _41_42 : register(b47, space0)
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

cbuffer _43_44 : register(b14, space0)
{
    float4 _44_m0 : packoffset(c0);
    float4 _44_m1 : packoffset(c1);
    float4 _44_m2 : packoffset(c2);
    float4 _44_m3 : packoffset(c3);
    float4 _44_m4 : packoffset(c4);
    uint4 _44_m5 : packoffset(c5);
    float4 _44_m6[2048] : packoffset(c6);
};

cbuffer _45_46 : register(b15, space0)
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

cbuffer _63_64 : register(b49, space0)
{
    float4 _64_m0[32] : packoffset(c0);
    column_major float4x4 _64_m1[32] : packoffset(c32);
};

SamplerState _23 : register(s6, space0);
SamplerState _24 : register(s4, space0);
SamplerState _25 : register(s1, space0);
SamplerComparisonState _26 : register(s7, space0);
Texture2DArray<float4> _29 : register(t25, space0);
Texture2D<float4> _32 : register(t3, space1);
SamplerState _33 : register(s1, space1);
Texture2D<float4> _34 : register(t2, space1);
SamplerState _35 : register(s0, space1);
Texture2D<float4> _47 : register(t9, space0);
Texture2D<float4> _48 : register(t26, space0);
Texture2D<float4> _49 : register(t8, space0);
Texture2D<float4> _50 : register(t11, space0);
Texture2D<float4> _51 : register(t10, space0);
Texture2D<float4> _54 : register(t27, space0);
Texture3D<float4> _55 : register(t34, space0);
Texture3D<float4> _56 : register(t31, space0);
Texture3D<float4> _57 : register(t33, space0);
Texture3D<float4> _58 : register(t30, space0);
Texture3D<float4> _59 : register(t32, space0);
Texture3D<float4> _60 : register(t29, space0);
Texture3D<float4> _61 : register(t35, space0);
Texture2D<float4> _62 : register(t28, space0);

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
    float _387 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _392 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _394 = abs(_392);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _394 : (-_394)), (1.0f - _387) - _392) < 0.0f)
    {
        discard;
    }
    float2 _414 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _417 = float4(_414, gl_FragCoord.z, 1.0f);
    _417.y = -_414.y;
    float4 _420 = mul(_16_m6, _417);
    float3 _424 = _420.xyz / _420.w.xxx;
    float4 _428 = float4(_424, 1.0f);
    float _435 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _457;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _457 = _16_m11.xyz - _424;
            break;
        }
        else
        {
            _457 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _458 = dot(_457, _457);
    float _460 = rsqrt(max(_458, 9.9999999392252902907785028219223e-09f));
    float3 _461 = _457 * _460;
    float _462 = _458 * _460;
    float4 _495 = _32.SampleBias(_33, (lerp(_4, _5, _37_m11.xx) * _37_m35.xy) + _37_m35.zw, _18_m16);
    float _497 = _495.w;
    float4 _500 = _34.SampleBias(_35, (lerp(_4, _5, _37_m12.xx) * _37_m36.xy) + _37_m36.zw, _37_m13 + _18_m16);
    float2 _503 = (_500.xy * 2.0f.xx) - 1.0f.xx;
    float2 _504 = abs(_503);
    bool2 _505 = bool2(_504.x < 0.01200000010430812835693359375f.xx.x, _504.y < 0.01200000010430812835693359375f.xx.y);
    float2 _506 = float2(_505.x ? 0.0f.xx.x : _503.x, _505.y ? 0.0f.xx.y : _503.y);
    float2 _507 = _506 * _37_m0;
    float _515 = _500.w;
    float3 _527 = lerp(clamp((_495.xyz * _37_m32.xyz) * _37_m18, 0.0f.xxx, 1.0f.xxx), _37_m32.xyz, _37_m16.xxx);
    float _533 = lerp(_497, _515, _37_m6) * _37_m32.w;
    float _539 = lerp(_533, _533 * _8.x, _37_m46);
    float _544 = lerp(_37_m2, _37_m3, _500.z);
    float _554 = lerp(_497, _37_m17, clamp(_37_m15 - 1.0f, 0.0f, 1.0f));
    float3 _567 = normalize(((_7.xyz * _507.x) + ((cross(_6, float4(_7.xyz, _435).xyz) * _435) * _507.y)) + (_6 * (sqrt(clamp(1.0f - dot(_506, _506), 0.0f, 1.0f)) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_37_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _574 = clamp(float(int(sign(_387 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _587 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _587.y = -_587.y;
    float _613 = 0.07999999821186065673828125f * _37_m1;
    float3 _614 = _527 * _554;
    float3 _615 = _527 - _614;
    float3 _619 = (_613 - (_613 * _554)).xxx + _614;
    float _620 = dot(_567, _461);
    float4 _623 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _544) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _624 = _623.x;
    float2 _634 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_624 * _624, exp2((-9.27999973297119140625f) * max(0.0f, _620))) * _624) + _623.y)) + _623.zw;
    uint2 _674;
    float _675;
    if (_18_m24.y == 1.0f)
    {
        float4 _651 = mul(_18_m135, _428);
        float4 _654 = _651;
        _654.y = -_651.y;
        float4 _657 = _654 * (1.0f / _651.w);
        _674 = uint2(clamp(((_657.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _675 = 1.0f / ((_18_m2.z * _657.z) + _18_m2.w);
    }
    else
    {
        _674 = uint2(gl_FragCoord.xy);
        _675 = abs(mul(_16_m0, _428).z);
    }
    float3 _677 = _424 + (_567 * 0.25f);
    float3 _687 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _696 = _677 - (_18_m105.xyz + (_687 * (-_18_m107.w)));
    float _710 = max(clamp((max(abs(_696.x), abs(_696.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_696.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1012;
    float4 _1013;
    float4 _1014;
    float _1015;
    float _1016;
    if ((_18_m105.w != 0.0f) && (_710 < 1.0f))
    {
        float3 _723 = _677 - (_18_m105.xyz + (_687 * (-_18_m107.y)));
        float _737 = max(clamp((max(abs(_723.x), abs(_723.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_723.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _813;
        float4 _814;
        float4 _815;
        float4 _816;
        if (_737 < 1.0f)
        {
            float3 _746 = ((_677 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _748 = _746 - floor(_746);
            float4 _752 = _55.SampleLevel(_24, _748, 0.0f);
            float _753 = 1.0f - _737;
            float _757 = _18_m106.y * 0.5f;
            float _762 = _748.x;
            float _763 = clamp(_748.y, _757, 1.0f - _757) * 0.3333333432674407958984375f;
            float _764 = _748.z;
            float4 _767 = _56.SampleLevel(_23, float3(_762, _763, _764), 0.0f);
            float _783 = _752.x;
            float _793 = _752.y;
            float _803 = _752.z;
            _813 = _710 + (_767.w * _753);
            _814 = float4(((_56.SampleLevel(_23, float3(_762, _763 + 0.666666686534881591796875f, _764), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _803, _803) * _753;
            _815 = float4(((_56.SampleLevel(_23, float3(_762, _763 + 0.3333333432674407958984375f, _764), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _793, _793) * _753;
            _816 = float4(((_767.xyz * 4.0f) - 2.0f.xxx) * _783, _783) * _753;
        }
        else
        {
            _813 = _710;
            _814 = 0.0f.xxxx;
            _815 = 0.0f.xxxx;
            _816 = 0.0f.xxxx;
        }
        float3 _822 = _677 - (_18_m105.xyz + (_687 * (-_18_m107.z)));
        float _836 = max(clamp((max(abs(_822.x), abs(_822.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_822.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _916;
        float4 _917;
        float4 _918;
        float4 _919;
        if (_836 < 1.0f)
        {
            float3 _845 = ((_677 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _847 = _845 - floor(_845);
            float4 _851 = _57.SampleLevel(_24, _847, 0.0f);
            float _853 = _737 * (1.0f - _836);
            float _857 = _18_m106.y * 0.5f;
            float _862 = _847.x;
            float _863 = clamp(_847.y, _857, 1.0f - _857) * 0.3333333432674407958984375f;
            float _864 = _847.z;
            float4 _867 = _58.SampleLevel(_23, float3(_862, _863, _864), 0.0f);
            float _883 = _851.x;
            float _894 = _851.y;
            float _905 = _851.z;
            _916 = _813 + (_867.w * _853);
            _917 = _814 + (float4(((_58.SampleLevel(_23, float3(_862, _863 + 0.666666686534881591796875f, _864), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _905, _905) * _853);
            _918 = _815 + (float4(((_58.SampleLevel(_23, float3(_862, _863 + 0.3333333432674407958984375f, _864), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _894, _894) * _853);
            _919 = _816 + (float4(((_867.xyz * 4.0f) - 2.0f.xxx) * _883, _883) * _853);
        }
        else
        {
            _916 = _813;
            _917 = _814;
            _918 = _815;
            _919 = _816;
        }
        float4 _1002;
        float4 _1003;
        float4 _1004;
        float _1005;
        if (_836 > 0.0f)
        {
            float3 _928 = ((_677 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _931 = _18_m106.xyz * 0.5f;
            float3 _933 = clamp(_928 - floor(_928), _931, 1.0f.xxx - _931);
            float4 _937 = _59.SampleLevel(_24, _933, 0.0f);
            float _939 = _836 * (1.0f - _710);
            float _943 = _18_m106.y * 0.5f;
            float _948 = _933.x;
            float _949 = clamp(_933.y, _943, 1.0f - _943) * 0.3333333432674407958984375f;
            float _950 = _933.z;
            float4 _953 = _60.SampleLevel(_23, float3(_948, _949, _950), 0.0f);
            float _969 = _937.x;
            float _980 = _937.y;
            float _991 = _937.z;
            _1002 = _917 + (float4(((_60.SampleLevel(_23, float3(_948, _949 + 0.666666686534881591796875f, _950), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _991, _991) * _939);
            _1003 = _918 + (float4(((_60.SampleLevel(_23, float3(_948, _949 + 0.3333333432674407958984375f, _950), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _980, _980) * _939);
            _1004 = _919 + (float4(((_953.xyz * 4.0f) - 2.0f.xxx) * _969, _969) * _939);
            _1005 = _916 + (_953.w * _939);
        }
        else
        {
            _1002 = _917;
            _1003 = _918;
            _1004 = _919;
            _1005 = _916;
        }
        float _1008 = clamp((_1005 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1012 = _1002;
        _1013 = _1003;
        _1014 = _1004;
        _1015 = _1008 - _710;
        _1016 = (_1008 + _710) * 0.5f;
    }
    else
    {
        _1012 = 0.0f.xxxx;
        _1013 = 0.0f.xxxx;
        _1014 = 0.0f.xxxx;
        _1015 = 0.0f;
        _1016 = 1.0f;
    }
    float4 _1036 = _1014 + float4(_18_m108.x * _1016, (_18_m108.y * _1016) + ((_18_m108.w * _1015) * 0.5f), _18_m108.z * _1016, (_18_m108.w * _1016) + ((_18_m108.y * _1015) * 0.375f));
    float4 _1056 = _1013 + float4(_18_m109.x * _1016, (_18_m109.y * _1016) + ((_18_m109.w * _1015) * 0.5f), _18_m109.z * _1016, (_18_m109.w * _1016) + ((_18_m109.y * _1015) * 0.375f));
    float4 _1076 = _1012 + float4(_18_m110.x * _1016, (_18_m110.y * _1016) + ((_18_m110.w * _1015) * 0.5f), _18_m110.z * _1016, (_18_m110.w * _1016) + ((_18_m110.y * _1015) * 0.375f));
    float _1081 = max(0.0f, dot(_1036.xyz, _567) + _1036.w);
    float _1086 = max(0.0f, dot(_1056.xyz, _567) + _1056.w);
    float _1091 = max(0.0f, dot(_1076.xyz, _567) + _1076.w);
    float3 _1101 = -_461;
    float3 _1102 = reflect(_1101, _567);
    float _1110 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_544, 0.001000000047497451305389404296875f))));
    float2 _1111 = float2(_674);
    float2 _1115 = floor(_1111 * _40_m0.w);
    float _1132 = floor(_675 - _40_m2.y);
    float _1136 = clamp(_1132, 0.0f, _40_m1.x - 1.0f);
    uint _1146 = (_1132 <= _1136) ? (_31.Load(uint(_18_m21.z + int(_1115.x + (_1115.y * _40_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1136)) * 4 + 0)) : 0u;
    float _1149 = dot(float4(_1081, _1086, _1091, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1151;
    float _1154;
    uint _1156;
    _1151 = 0.0f.xxx;
    _1154 = 1.0f;
    _1156 = _1146;
    uint _1157;
    float3 _1152;
    float _1155;
    bool _1159;
    [loop]
    for (;;)
    {
        _1159 = _1154 > 0.00999999977648258209228515625f;
        if ((_1156 != 0u) && _1159)
        {
            uint _1163 = firstbitlow(_1156);
            _1157 = _1156 ^ (1u << (_1163 & 31u));
            float3 _1183 = float3(dot(_40_m4[_1163]._m2, _428), dot(_40_m4[_1163]._m3, _428), dot(_40_m4[_1163]._m4, _428));
            float3 _1184 = abs(_1183);
            if (all(bool3(_1184.x <= _40_m4[_1163]._m1.xyz.x, _1184.y <= _40_m4[_1163]._m1.xyz.y, _1184.z <= _40_m4[_1163]._m1.xyz.z)))
            {
                float3 _1193 = _40_m4[_1163]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1195 = _1184 * 0.100000001490116119384765625f;
                float3 _1196 = _1195 * _1195;
                float3 _1199 = (_40_m4[_1163]._m1.xyz - _1184) * _40_m4[_1163]._m5.xyz;
                float3 _1247;
                [branch]
                if (_40_m4[_1163]._m6.x == 1.0f)
                {
                    float3 _1232 = float3(dot(_40_m4[_1163]._m2.xyz, _1102), dot(_40_m4[_1163]._m3.xyz, _1102), dot(_40_m4[_1163]._m4.xyz, _1102));
                    float3 _1234 = (_40_m4[_1163]._m1.xyz - _1183) / _1232;
                    float3 _1237 = ((-_40_m4[_1163]._m1.xyz) - _1183) / _1232;
                    bool3 _1238 = bool3(_1232.x > 0.0f.xxx.x, _1232.y > 0.0f.xxx.y, _1232.z > 0.0f.xxx.z);
                    float3 _1239 = float3(_1238.x ? _1234.x : _1237.x, _1238.y ? _1234.y : _1237.y, _1238.z ? _1234.z : _1237.z);
                    _1247 = _1183 + (_1232 * min(min(_1239.x, _1239.y), _1239.z));
                }
                else
                {
                    _1247 = _1102;
                }
                float3 _1248 = normalize(_1247);
                float3 _1251 = float3(int3(sign(_1248)));
                float3 _1254 = _1248 / dot(_1248, _1251).xxx;
                float3 _1268;
                if (_1254.z < 0.0f)
                {
                    float3 _1259 = abs(_1254);
                    float2 _1266 = _1251.xy * float2(1.0f - _1259.y, 1.0f - _1259.x);
                    _1268 = float3(_1266.x, _1266.y, _1254.z);
                }
                else
                {
                    _1268 = _1254;
                }
                float _1293 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_40_m4[_1163]._m0, float4(_567, 1.0f))));
                float _1306 = clamp((min(_1199.x, min(_1199.y, _1199.z)) * _40_m4[_1163]._m6.y) + ((((((_1193 * _1193).x - ((_1196.x + _1196.y) + _1196.z)) * _40_m4[_1163]._m5.x) * _40_m4[_1163]._m5.x) * (1.0f - _40_m4[_1163]._m6.y)) * 100.0f), 0.0f, 1.0f) * _40_m4[_1163]._m6.w;
                _1152 = _1151 + ((((_29.SampleLevel(_25, float3((((_1268.xy * 0.5f) + 0.5f.xx) * _40_m1.w) + _40_m2.w.xx, _40_m4[_1163]._m1.w), _1110).xyz * _40_m4[_1163]._m5.w) * ((((((clamp(abs(_1149 / _1293), 0.0f, 1.0f) * 2.0f) + _1149) / (2.0f + _1293)) - 1.0f) * _18_m23.w) + 1.0f)) * _1306) * _1154);
                _1155 = _1154 * (1.0f - _1306);
            }
            else
            {
                _1152 = _1151;
                _1155 = _1154;
            }
            _1151 = _1152;
            _1154 = _1155;
            _1156 = _1157;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1375;
    if (_1159)
    {
        float3 _1314 = normalize(_1102);
        float3 _1317 = float3(int3(sign(_1314)));
        float3 _1320 = _1314 / dot(_1314, _1317).xxx;
        float3 _1334;
        if (_1320.z < 0.0f)
        {
            float3 _1325 = abs(_1320);
            float2 _1332 = _1317.xy * float2(1.0f - _1325.y, 1.0f - _1325.x);
            _1334 = float3(_1332.x, _1332.y, _1320.z);
        }
        else
        {
            _1334 = _1320;
        }
        float _1361 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_40_m3, float4(_567, 1.0f))));
        _1375 = _1151 + ((_29.SampleLevel(_25, float3((((_1334.xy * 0.5f) + 0.5f.xx) * _40_m1.w) + _40_m2.w.xx, 0.0f), _1110).xyz * ((((((clamp(abs(_1149 / _1361), 0.0f, 1.0f) * 2.0f) + _1149) / (2.0f + _1361)) - 1.0f) * _18_m23.w) + 1.0f)) * _1154);
    }
    else
    {
        _1375 = _1151;
    }
    float2 _1896;
    do
    {
        if (_46_m7.w >= 0.9900000095367431640625f)
        {
            _1896 = float2(_46_m7.z, 1.0f);
            break;
        }
        int _1397 = int(_46_m7.x);
        bool3 _1399 = (_1397 == 2).xxx;
        float3 _1407 = _424 - float3(_1399.x ? _46_m1[0].xyz.x : _16_m11.xyz.x, _1399.y ? _46_m1[0].xyz.y : _16_m11.xyz.y, _1399.z ? _46_m1[0].xyz.z : _16_m11.xyz.z);
        float _1418 = max(clamp((_46_m6.w - dot(_1407, _1407)) * _46_m6.z, 0.0f, 1.0f), _46_m8.x);
        float _1635;
        bool _1636;
        if (_1418 > 0.0f)
        {
            float _1633;
            bool _1634;
            if (_1397 > 0)
            {
                float3 _1425 = _424 - _46_m1[0].xyz;
                float3 _1429 = _424 - _46_m1[1].xyz;
                float3 _1433 = _424 - _46_m1[2].xyz;
                float3 _1437 = _424 - _46_m1[3].xyz;
                float4 _1442 = float4(dot(_1425, _1425), dot(_1429, _1429), dot(_1433, _1433), dot(_1437, _1437));
                float4 _1451 = float4(_46_m1[0].w, _46_m1[1].w, _46_m1[2].w, _46_m1[3].w);
                float4 _1453 = float4(bool4(_1442.x < _1451.x, _1442.y < _1451.y, _1442.z < _1451.z, _1442.w < _1451.w));
                float3 _1457 = clamp(_1453.yzw - _1453.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1461 = clamp(4.0f - dot(float4(_1453.x, _1457.x, _1457.y, _1457.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1463 = clamp(_1461 + 1.0f, 0.0f, 3.0f);
                uint _1464 = uint(_1461);
                uint _1472 = uint(_1463);
                float _1478 = dot(_1442, _340[_1472]) / _46_m1[_1472].w;
                float _1495;
                if (((_1463 > _1461) && (_1478 >= 0.0f)) && (_1478 <= 1.0f))
                {
                    _1495 = _1461 + step(frac(52.98291778564453125f * frac(dot(_1111 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1442, _340[_1464]) / _46_m1[_1464].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1495 = _1461;
                }
                float _1496 = clamp(_1495, 0.0f, 4.0f);
                float4 _1500 = mul(_46_m0[uint(_1496)], _428);
                float _1503 = _1500.z;
                float4 _1504 = float4(_1500.xy, _1503, _1496);
                float3 _1505 = _1504.xyz;
                bool3 _1506 = bool3(_1505.x <= 0.0f.xxx.x, _1505.y <= 0.0f.xxx.y, _1505.z <= 0.0f.xxx.z);
                bool3 _1507 = bool3(_1505.x >= 1.0f.xxx.x, _1505.y >= 1.0f.xxx.y, _1505.z >= 1.0f.xxx.z);
                bool _1513 = any(bool3(_1506.x || _1507.x, _1506.y || _1507.y, _1506.z || _1507.z)) || ((asuint(_1503) & 2147483647u) > 2139095040u);
                int _1514 = int(_1496);
                float2 _1531 = float4(_46_m3[_1514].xy + (_1504.xy * _46_m3[_1514].zw), _1503, _1496).xy * _46_m4.zw;
                float2 _1533 = floor(_1531 + 0.5f.xx);
                float2 _1534 = _1531 - _1533;
                float _1535 = _1534.x;
                float _1536 = _1535 + 0.5f;
                float _1538 = (_1536 * _1536) * 0.5f;
                float _1541 = min(_1535, 0.0f);
                float _1545 = max(_1535, 0.0f);
                float4 _1549 = float4(_1538 - _1535, (1.0f - _1535) - (_1541 * _1541), (_1535 + 1.0f) - (_1545 * _1545), _1538) * 0.44444000720977783203125f;
                float _1550 = _1534.y;
                float _1551 = _1550 + 0.5f;
                float _1553 = (_1551 * _1551) * 0.5f;
                float _1556 = min(_1550, 0.0f);
                float _1560 = max(_1550, 0.0f);
                float4 _1564 = float4(_1553 - _1550, (1.0f - _1550) - (_1556 * _1556), (_1550 + 1.0f) - (_1560 * _1560), _1553) * 0.44444000720977783203125f;
                float2 _1566 = _1549.yw;
                float2 _1567 = _1549.xz + _1566;
                float2 _1569 = _1564.yw;
                float2 _1570 = _1564.xz + _1569;
                float2 _1576 = ((_1566 / _1567) + float2(-1.5f, 0.5f)) * _46_m4.xx;
                float2 _1578 = ((_1569 / _1570) + float2(-1.5f, 0.5f)) * _46_m4.yy;
                float2 _1580 = _1533 * _46_m4.xy;
                float _1581 = _1576.x;
                float _1582 = _1578.x;
                float _1585 = _1576.y;
                float _1588 = _1578.y;
                float _1593 = _1567.x;
                float _1594 = _1570.x;
                float _1596 = _1567.y;
                float _1598 = _1570.y;
                _1633 = _1513 ? 1.0f : (((((_1593 * _1594) * _47.SampleCmpLevelZero(_26, float3(_1580 + float2(_1581, _1582), _360).xy, _1503)) + ((_1596 * _1594) * _47.SampleCmpLevelZero(_26, float3(_1580 + float2(_1585, _1582), _360).xy, _1503))) + ((_1593 * _1598) * _47.SampleCmpLevelZero(_26, float3(_1580 + float2(_1581, _1588), _360).xy, _1503))) + ((_1596 * _1598) * _47.SampleCmpLevelZero(_26, float3(_1580 + float2(_1585, _1588), _360).xy, _1503)));
                _1634 = _1513;
            }
            else
            {
                _1633 = 1.0f;
                _1634 = false;
            }
            _1635 = _1633;
            _1636 = _1634;
        }
        else
        {
            _1635 = 1.0f;
            _1636 = false;
        }
        float _1836;
        float _1837;
        if ((_1418 < 1.0f) || (_46_m8.x > 0.5f))
        {
            float _1647 = 1.0f - clamp(dot(_567, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1664 = float4((_424 - (_44_m0.xyz * (_1647 * _46_m24.x))) + (_567 * (_1647 * _46_m24.y)), 1.0f);
            float4 _1665 = mul(_46_m23, _1664);
            float2 _1666 = _1665.xy;
            float _1834;
            if (all(bool2(_1666.x > 0.0f.xx.x, _1666.y > 0.0f.xx.y)) && all(bool2(_1666.x < 1.0f.xx.x, _1666.y < 1.0f.xx.y)))
            {
                uint _1685 = clamp(uint((floor(_1665.y * _46_m25.z) + _1665.x) * _46_m25.y), 0u, 127u);
                uint _1689 = asuint(_46_m27[_1685].x);
                float2 _1690 = spvUnpackHalf2x16(_1689);
                float _1691 = _1690.x;
                float _1833;
                if (_1691 >= 0.0f)
                {
                    float4x4 _1700 = _46_m22;
                    _1700[0].w = _46_m27[_1685].y;
                    _1700[1].w = _46_m27[_1685].z;
                    _1700[2].w = _46_m27[_1685].w;
                    float4 _1707 = mul(_1700, _1664);
                    float3 _1708 = _1707.xyz;
                    float _1832;
                    if (all(bool3(_1708.x > 0.0f.xxx.x, _1708.y > 0.0f.xxx.y, _1708.z > 0.0f.xxx.z)) && all(bool3(_1708.x < 1.0f.xxx.x, _1708.y < 1.0f.xxx.y, _1708.z < 1.0f.xxx.z)))
                    {
                        float _1725 = _1707.z;
                        float2 _1731 = float4((_1707.xy * _46_m24.zw) + float2(_1691, spvUnpackHalf2x16(_1689 >> 16u).x), _1725, 1.0f).xy * _46_m26.zw;
                        float2 _1733 = floor(_1731 + 0.5f.xx);
                        float2 _1734 = _1731 - _1733;
                        float _1735 = _1734.x;
                        float _1736 = _1735 + 0.5f;
                        float _1738 = (_1736 * _1736) * 0.5f;
                        float _1741 = min(_1735, 0.0f);
                        float _1745 = max(_1735, 0.0f);
                        float4 _1749 = float4(_1738 - _1735, (1.0f - _1735) - (_1741 * _1741), (_1735 + 1.0f) - (_1745 * _1745), _1738) * 0.44444000720977783203125f;
                        float _1750 = _1734.y;
                        float _1751 = _1750 + 0.5f;
                        float _1753 = (_1751 * _1751) * 0.5f;
                        float _1756 = min(_1750, 0.0f);
                        float _1760 = max(_1750, 0.0f);
                        float4 _1764 = float4(_1753 - _1750, (1.0f - _1750) - (_1756 * _1756), (_1750 + 1.0f) - (_1760 * _1760), _1753) * 0.44444000720977783203125f;
                        float2 _1767 = _1749.xz + _1749.yw;
                        float2 _1770 = _1764.xz + _1764.yw;
                        float2 _1776 = ((_1749.yw / _1767) + float2(-1.5f, 0.5f)) * _46_m26.xx;
                        float2 _1778 = ((_1764.yw / _1770) + float2(-1.5f, 0.5f)) * _46_m26.yy;
                        float2 _1780 = _1733 * _46_m26.xy;
                        float _1781 = _1776.x;
                        float _1782 = _1778.x;
                        float2 _1784 = _1780 + float2(_1781, _1782);
                        float _1785 = _1776.y;
                        float2 _1787 = _1780 + float2(_1785, _1782);
                        float _1788 = _1778.y;
                        float2 _1790 = _1780 + float2(_1781, _1788);
                        float2 _1792 = _1780 + float2(_1785, _1788);
                        float _1793 = _1767.x;
                        float _1794 = _1770.x;
                        float _1796 = _1767.y;
                        float _1798 = _1770.y;
                        _1832 = ((((_1793 * _1794) * _50.SampleCmpLevelZero(_26, float3(_1784, _360).xy, _1725)) + ((_1796 * _1794) * _50.SampleCmpLevelZero(_26, float3(_1787, _360).xy, _1725))) + ((_1793 * _1798) * _50.SampleCmpLevelZero(_26, float3(_1790, _360).xy, _1725))) + ((_1796 * _1798) * _50.SampleCmpLevelZero(_26, float3(_1792, _360).xy, _1725));
                    }
                    else
                    {
                        _1832 = 1.0f;
                    }
                    _1833 = _1832;
                }
                else
                {
                    _1833 = 1.0f;
                }
                _1834 = _1833;
            }
            else
            {
                _1834 = 1.0f;
            }
            _1836 = _1636 ? _1834 : _1635;
            _1837 = _1834;
        }
        else
        {
            _1836 = _1635;
            _1837 = 1.0f;
        }
        float _1840 = lerp(lerp(_1837, _1836, _1418), min(_1837, _1836), _46_m8.x);
        float _1891;
        if (_1840 > 0.001000000047497451305389404296875f)
        {
            float3 _1847 = _424 - _18_m65.xyz;
            float2 _1857 = (_1847 + (_18_m68.xyz * _1847.y)).xz * _18_m66.z;
            float2 _1866 = _18_m67.xy * _18_m75.w;
            _1891 = _1840 * lerp(1.0f, lerp(_49.SampleLevel(_24, _1857 + _1866, 0.0f), _49.SampleLevel(_24, (_1857 * _18_m67.w) + _1866, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1847.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1891 = _1840;
        }
        _1896 = float2(lerp(_1891, _46_m7.z, _46_m7.w), _1891);
        break;
    } while(false);
    float _1901 = lerp(1.0f, min(1.0f, _1896.x), _46_m6.x);
    float4 _2036;
    if (_1901 > 0.001000000047497451305389404296875f)
    {
        float3 _1911 = -_44_m0.xyz;
        float _1916 = dot(_1911, _1102);
        float3 _1918 = _1102 - (_1911 * _1916);
        bool3 _1920 = (_1916 < _44_m4.z).xxx;
        float3 _1928 = normalize((_1911 * _44_m4.z) + ((_1918 * rsqrt(max(6.103515625e-05f, dot(_1918, _1918)))) * _44_m4.y));
        float3 _1929 = float3(_1920.x ? _1928.x : _1102.x, _1920.y ? _1928.y : _1102.y, _1920.z ? _1928.z : _1102.z);
        float3 _1933 = _1929 + _461;
        float3 _1937 = _1933 * rsqrt(max(6.103515625e-05f, dot(_1933, _1933)));
        float _1938 = clamp(dot(_1929, _567), 0.0f, 1.0f);
        float _1940 = clamp(dot(_567, _1937), 0.0f, 1.0f);
        float _1943 = clamp(_620, 0.0f, 1.0f);
        float _1944 = _544 * _544;
        float _1945 = _1944 * _1944;
        float _1966 = (((_1940 * _1945) - _1940) * _1940) + 1.0f;
        float _1969 = 1.0f - clamp(dot(_461, _1937), 0.0f, 1.0f);
        float _1970 = _1969 * _1969;
        float _1972 = (_1969 * _1970) * _1970;
        float _1996 = 1.0f - _544;
        float _2003 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1996 * (1.04997003078460693359375f + (_1996 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1996))))));
        float _2004 = 1.0f - _2003;
        float3 _2007 = _619 + ((1.0f.xxx - _619) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0xB8A8CA8D:
        float3 _2023 = ((clamp((min(((_619 * (1.0f - _1972)) + _1972.xxx) * ((_1945 / (_1966 * _1966)) * (0.5f / (((_1938 * sqrt(((((-_1943) * _1945) + _1943) * _1943) + _1945)) + (_1943 * sqrt(((((-_1938) * _1945) + _1938) * _1938) + _1945))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2007 * (((_54.SampleLevel(_23, (float2(_1943, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_1938, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2003) / _2004)) * _2007) / (1.0f.xxx - (_2007 * _2004)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1938) + ((_615 * 1.0f) * _1938)) * _44_m1.xyz;
        */
        // RenoDX code: reduce opaque glass specular lighting when the transparency improvement is enabled.
        float3 _2023 = ((clamp((min(((_619 * (1.0f - _1972)) + _1972.xxx) * ((_1945 / (_1966 * _1966)) * (0.5f / (((_1938 * sqrt(((((-_1943) * _1945) + _1943) * _1943) + _1945)) + (_1943 * sqrt(((((-_1938) * _1945) + _1938) * _1938) + _1945))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2007 * (((_54.SampleLevel(_23, (float2(_1943, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_1938, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2003) / _2004)) * _2007) / (1.0f.xxx - (_2007 * _2004)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f) * _1938) + ((_615 * 1.0f) * _1938)) * _44_m1.xyz;
        float3 _2034 = lerp(_2023, _2023 * _51.SampleBias(_23, float2(_1901, 0.5f), _18_m16).xyz, (1.0f - _1901).xxx) * 1.0f;
        _2036 = float4(_2034.x, _2034.y, _2034.z, 0.0f.xxxx.w);
    }
    else
    {
        _2036 = 0.0f.xxxx;
    }
    float2 _2038 = floor(_1111 * 0.03125f);
    int _2046 = int((_2038.x + (_2038.y * _42_m5)) * 8.0f);
    float _2053 = floor(_675 - (_18_m3.y * _42_m11));
    float _2057 = clamp(_2053, 0.0f, _42_m7 - 1.0f);
    int _2059 = int(_2057 * 8.0f);
    float3 _2061;
    float _2064;
    _2061 = 0.0f.xxx;
    _2064 = 1.0f;
    float3 _2062;
    float _2065;
    [loop]
    for (int _2066 = 0; _2066 <= 7; _2061 = _2062, _2064 = _2065, _2066++)
    {
        uint _2084 = (_2053 <= _2057) ? (_31.Load(uint(_2046 + _2066) * 4 + 0) & _31.Load(uint((_18_m21.y + _2059) + _2066) * 4 + 0)) : 0u;
        uint _2085 = uint(_2066);
        float3 _2089;
        _2065 = _2064;
        _2089 = 0.0f.xxx;
        uint _2092;
        float _2087;
        float3 _2090;
        [loop]
        for (uint _2091 = _2084; _2091 != 0u; _2065 = _2087, _2089 = _2090, _2091 = _2092)
        {
            uint _2096 = firstbitlow(_2091);
            _2092 = _2091 ^ (1u << (_2096 & 31u));
            int _2102 = int((32u * _2085) + _2096) * 8;
            int _2105 = _2102 + 1;
            int _2108 = _2102 + 2;
            int _2111 = _2102 + 3;
            int _2114 = _2102 + 5;
            int _2117 = _2102 + 6;
            int _2120 = _2102 + 7;
            uint _2124 = uint(_44_m6[_2114].w);
            float _2199;
            if ((_2124 & 1u) == 1u)
            {
                uint _2130 = asuint(_44_m6[_2114].x);
                uint _2137 = asuint(_44_m6[_2114].y);
                uint _2144 = asuint(_44_m6[_2114].z);
                uint _2151 = asuint(_44_m6[_2117].x);
                uint _2158 = asuint(_44_m6[_2117].y);
                uint _2165 = asuint(_44_m6[_2117].z);
                float3 _2184 = abs(mul(float4(_424 - _44_m6[_2105].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2130).x, spvUnpackHalf2x16(_2144).x, spvUnpackHalf2x16(_2158).x, 0.0f), float4(spvUnpackHalf2x16(_2130 >> 16u).x, spvUnpackHalf2x16(_2144 >> 16u).x, spvUnpackHalf2x16(_2158 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2137).x, spvUnpackHalf2x16(_2151).x, spvUnpackHalf2x16(_2165).x, 0.0f), float4(spvUnpackHalf2x16(_2137 >> 16u).x, spvUnpackHalf2x16(_2151 >> 16u).x, spvUnpackHalf2x16(_2165 >> 16u).x, 0.0f))).xyz);
                float _2191 = _44_m6[_2120].x * 0.5f;
                float _2197 = 1.0f - clamp((max(max(_2184.x, _2184.y), _2184.z) - (_2191 + 0.5f)) / (0.5f - _2191), 0.0f, 1.0f);
                _2199 = _2197 * _2197;
            }
            else
            {
                _2199 = 1.0f;
            }
            bool _2203 = _44_m6[_2111].z > 0.5f;
            if ((false || (_2199 < 0.001000000047497451305389404296875f)) || _2203)
            {
                _2087 = _2065;
                _2090 = _2089;
                continue;
            }
            float _3314;
            float3 _3315;
            if (_44_m6[_2102].w < 1.5f)
            {
                float3 _2691 = float3(0.100000001490116119384765625f, _544, 1.0f);
                float _2700 = (0.5f + (0.5f * _44_m6[_2108].y)) - abs(_44_m6[_2108].x);
                float _2701 = _44_m6[_2108].y - _2700;
                float _2708 = abs(max((1.0f - abs(_2700)) - abs(_2701), 0.00048828125f));
                float3 _2712 = normalize(float3(_2700, _2701, (_44_m6[_2108].x >= 0.0f) ? _2708 : (-_2708)));
                float3 _2713 = _44_m6[_2105].xyz - _424;
                float _2714 = dot(_2713, _2713);
                float _2715 = rsqrt(_2714);
                float3 _2716 = _2713 * _2715;
                float _2720 = clamp(_44_m6[_2120].y * _2715, 0.0f, 1.0f);
                int _2725 = int(_44_m6[_2120].w);
                float3 _2726 = _2712 * _44_m6[_2108].z;
                float3 _2727 = _2726 * 0.5f;
                float3 _2728 = _2713 - _2727;
                float3 _2729 = _2713 + _2727;
                bool _2732 = (uint(_44_m6[_2102].w) & 1u) == 0u;
                bool _2735 = _2732 || ((_2124 & 2u) != 0u);
                bool _2738 = (!_2732) && (_44_m6[_2108].z > 0.0f);
                float _2757;
                float _2758;
                if (_2738)
                {
                    float _2742 = length(_2728);
                    float _2743 = length(_2729);
                    _2757 = clamp(0.5f * ((dot(_567, _2728) / _2742) + (dot(_567, _2729) / _2743)), 0.0f, 1.0f);
                    _2758 = 1.0f / ((((_2742 * _2743) + dot(_2728, _2729)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2757 = clamp(dot(_567, _2716), 0.0f, 1.0f);
                    _2758 = 1.0f;
                }
                float _2780;
                if (_44_m6[_2117].w < 0.0f)
                {
                    float _2774 = _2714 * (_44_m6[_2105].w * _44_m6[_2105].w);
                    float _2777 = clamp(1.0f - (_2774 * _2774), 0.0f, 1.0f);
                    _2780 = lerp(1.0f / (_2714 + 1.0f), _2758, float(_2738)) * (_2777 * _2777);
                }
                else
                {
                    float3 _2763 = _2713 * _44_m6[_2105].w;
                    _2780 = _2758 * pow(1.0f - clamp(dot(_2763, _2763), 0.0f, 1.0f), _44_m6[_2117].w);
                }
                float _2786 = clamp((dot(_2716, -_2712) - _44_m6[_2108].z) * _44_m6[_2108].w, 0.0f, 1.0f);
                float _2790 = _2780 * lerp(1.0f, _2786 * _2786, float(_2732));
                float _2890;
                if ((!_2738) && (_2725 >= 0))
                {
                    uint _2796 = uint(_2725);
                    float2 _2883;
                    [branch]
                    if (_2732)
                    {
                        float4 _2873 = mul(_64_m1[_2796], _428);
                        _2883 = _64_m0[_2796].xy + (clamp(_2873.xy / _2873.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2796].zw);
                    }
                    else
                    {
                        float3 _2810 = mul(float4(-_2713, 0.0f), _64_m1[_2796]).xyz;
                        float3 _367 = _2810;
                        float3 _366 = _2810;
                        float3 _365 = abs(_2810);
                        uint _2819 = uint(int(_365.y > _365.x));
                        uint _2825 = (_365.z > _365[_2819]) ? 2u : _2819;
                        uint _2831 = (_2825 * 2u) + uint(_366[_2825] < 0.0f);
                        float _2835 = abs(_367[_2831 / 2u]);
                        float _2855 = 0.5f - (0.000244140625f / _64_m0[_2796].w);
                        _2883 = _64_m0[_2796].xy + (clamp(float2((float(_2831) + ((((_367[uint(_341[_2831].x)] * _342[_2831].x) / _2835) * _2855) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_367[uint(_341[_2831].y)] * _342[_2831].y) / _2835) * _2855)), 0.0f.xx, 1.0f.xx) * _64_m0[_2796].zw);
                    }
                    _2890 = _2790 * _62.SampleLevel(_23, _2883, 0.0f).x;
                }
                else
                {
                    _2890 = _2790;
                }
                bool _2891 = _2890 > 0.0f;
                float _3179;
                if (_2891)
                {
                    int _2943;
                    if (_2735)
                    {
                        _2943 = int(_44_m6[_2111].x);
                    }
                    else
                    {
                        uint _2898 = asuint(_44_m6[_2108].w);
                        uint _2900 = asuint(_44_m6[_2111].x);
                        float3 _2901 = _424 - _44_m6[_2105].xyz;
                        float3 _2902 = abs(_2901);
                        float _2903 = _2902.x;
                        float _2904 = _2902.y;
                        float _2906 = _2902.z;
                        int _2938;
                        if ((_2903 > _2904) && (_2903 > _2906))
                        {
                            _2938 = int((_2901.x > 0.0f) ? (_2898 >> 24u) : ((_2898 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2930;
                            if (_2904 > _2906)
                            {
                                _2930 = int((_2901.y > 0.0f) ? ((_2898 >> 8u) & 255u) : (_2898 & 255u));
                            }
                            else
                            {
                                _2930 = int((_2901.z > 0.0f) ? ((_2900 >> 8u) & 255u) : (_2900 & 255u));
                            }
                            _2938 = _2930;
                        }
                        _2943 = (_2938 < 80) ? _2938 : (-1);
                    }
                    float4 _2960 = mul(_46_m10[_2943], float4((_424 - ((-_2716) * _46_m11[_2943].x)) + (_567 * (_46_m11[_2943].y * 5.0f)), 1.0f));
                    float _2961 = _2960.w;
                    float3 _2964 = _2960.xyz / _2961.xxx;
                    float2 _2965 = _2964.xy;
                    float3 _2973 = _2964.xyz;
                    bool3 _2974 = bool3(_2973.x <= 0.0f.xxx.x, _2973.y <= 0.0f.xxx.y, _2973.z <= 0.0f.xxx.z);
                    bool3 _2975 = bool3(_2973.x >= 1.0f.xxx.x, _2973.y >= 1.0f.xxx.y, _2973.z >= 1.0f.xxx.z);
                    float _2978 = _2964.z;
                    float2 _2989 = ((_2965 * (_46_m12[_2943].zw - _46_m12[_2943].xy)) + _46_m12[_2943].xy).xy * _46_m13.zw;
                    float2 _2991 = floor(_2989 + 0.5f.xx);
                    float2 _2992 = _2989 - _2991;
                    float _2993 = _2992.x;
                    float _2994 = _2993 + 0.5f;
                    float _2995 = _2994 * _2994;
                    float _2998 = 1.0f - _2993;
                    float _2999 = min(_2993, 0.0f);
                    float _3002 = _2993 + 1.0f;
                    float _3003 = max(_2993, 0.0f);
                    float _3014 = _2992.y;
                    float _3015 = _3014 + 0.5f;
                    float _3016 = _3015 * _3015;
                    float _3019 = 1.0f - _3014;
                    float _3020 = min(_3014, 0.0f);
                    float _3023 = _3014 + 1.0f;
                    float _3024 = max(_3014, 0.0f);
                    float3 _3036 = float3(0.1599999964237213134765625f * _2998, 0.1599999964237213134765625f * ((_3002 - (_3003 * _3003)) + 1.0f), _2995 * 0.07999999821186065673828125f);
                    float3 _3037 = float3(0.1599999964237213134765625f * ((_2995 * 0.5f) - _2993), 0.1599999964237213134765625f * ((_2998 - (_2999 * _2999)) + 1.0f), 0.1599999964237213134765625f * _3002) + _3036;
                    float3 _3039 = float3(0.1599999964237213134765625f * _3019, 0.1599999964237213134765625f * ((_3023 - (_3024 * _3024)) + 1.0f), _3016 * 0.07999999821186065673828125f);
                    float3 _3040 = float3(0.1599999964237213134765625f * ((_3016 * 0.5f) - _3014), 0.1599999964237213134765625f * ((_3019 - (_3020 * _3020)) + 1.0f), 0.1599999964237213134765625f * _3023) + _3039;
                    float3 _3046 = ((_3036 / _3037) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.xxx;
                    float3 _3048 = ((_3039 / _3040) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.yyy;
                    float2 _3050 = _2991 * _46_m13.xy;
                    float _3051 = _3046.x;
                    float _3052 = _3048.x;
                    float _3055 = _3046.y;
                    float _3058 = _3046.z;
                    float _3061 = _3048.y;
                    float _3068 = _3048.z;
                    float _3075 = _3037.x;
                    float _3076 = _3040.x;
                    float _3078 = _3037.y;
                    float _3080 = _3037.z;
                    float _3082 = _3040.y;
                    float _3086 = _3040.z;
                    float _3144 = (((((((_3075 * _3076) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3051, _3052), _360).xy, _2978)) + ((_3078 * _3076) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3055, _3052), _360).xy, _2978))) + ((_3080 * _3076) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3058, _3052), _360).xy, _2978))) + ((_3075 * _3082) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3051, _3061), _360).xy, _2978))) + ((_3078 * _3082) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3055, _3061), _360).xy, _2978))) + ((_3080 * _3082) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3058, _3061), _360).xy, _2978))) + ((_3075 * _3086) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3051, _3068), _360).xy, _2978));
                    float2 _3165 = min(_2965, 1.0f.xx - _2965);
                    _3179 = (_2943 >= 0) ? lerp(1.0f, (any(bool3(_2974.x || _2975.x, _2974.y || _2975.y, _2974.z || _2975.z)) || ((asuint(_2978) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3144 + ((_3078 * _3086) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3055, _3068), _360).xy, _2978))) + ((_3080 * _3086) * _48.SampleCmpLevelZero(_26, float3(_3050 + float2(_3058, _3068), _360).xy, _2978))), _2735 ? min(_46_m11[_2943].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_46_m11[_2943].z - _2961) * 0.25f, min(_3165.x, _3165.y)))) : _46_m11[_2943].w) : 1.0f;
                }
                else
                {
                    _3179 = 1.0f;
                }
                float3 _3202;
                float3 _3203;
                if (_2738)
                {
                    float3 _3182 = _2691 * _2691;
                    float _3191 = dot(_1102, _2726);
                    _3202 = _3182 / clamp(_3182 + (0.5f * clamp(_44_m6[_2108].z * _2715, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3203 = normalize(_2728 + (_2726 * clamp(dot(_2728, (_1102 * _3191) - _2726) / ((_44_m6[_2108].z * _44_m6[_2108].z) - (_3191 * _3191)), 0.0f, 1.0f)));
                }
                else
                {
                    _3202 = 1.0f.xxx;
                    _3203 = _2716;
                }
                float3 _3204 = _3203 + _461;
                float3 _3208 = _3204 * rsqrt(max(6.103515625e-05f, dot(_3204, _3204)));
                float3 _3313;
                if (_2891)
                {
                    float _3211 = clamp(_2757, 0.0f, 1.0f);
                    float _3213 = clamp(dot(_567, _3208), 0.0f, 1.0f);
                    float _3215 = clamp(dot(_461, _3208), 0.0f, 1.0f);
                    float _3216 = clamp(_620, 0.0f, 1.0f);
                    float _3217 = _544 * _544;
                    float _3227;
                    if (_2720 > 0.0f)
                    {
                        _3227 = clamp(_3217 + ((_2720 * _2720) / ((_3215 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3227 = _3217;
                    }
                    float _3228 = _3227 * _3227;
                    float _3249 = (((_3213 * _3228) - _3213) * _3213) + 1.0f;
                    float _3254 = 1.0f - _3215;
                    float _3255 = _3254 * _3254;
                    float _3257 = (_3254 * _3255) * _3255;
                    float _3281 = 1.0f - _544;
                    float _3288 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3281 * (1.04997003078460693359375f + (_3281 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3281))))));
                    float _3289 = 1.0f - _3288;
                    float3 _3292 = _619 + ((1.0f.xxx - _619) * 0.0476190485060214996337890625f);
                    float3 _3312 = ((clamp((min(((_619 * (1.0f - _3257)) + _3257.xxx) * (((_3228 / (_3249 * _3249)) * _3202.y) * (0.5f / (((_3211 * sqrt(((((-_3216) * _3228) + _3216) * _3216) + _3228)) + (_3216 * sqrt(((((-_3211) * _3228) + _3211) * _3211) + _3228))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3292 * (((_54.SampleLevel(_23, (float2(_3216, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_23, (float2(_3211, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3288) / _3289)) * _3292) / (1.0f.xxx - (_3292 * _3289)))) * _44_m6[_2120].z, 0.0f.xxx, 1000.0f.xxx) * _2757) + ((_615 * _3202.z) * _2757)) * (((_44_m6[_2102].xyz * _2890) * _3179) * _2199);
                    _3313 = _3312;
                }
                else
                {
                    _3313 = 0.0f.xxx;
                }
                _3314 = _2065;
                _3315 = _3313;
            }
            else
            {
                float _2689;
                do
                {
                    if (_2203)
                    {
                        _2689 = 1.0f;
                        break;
                    }
                    float _2223 = (0.5f + (0.5f * _44_m6[_2108].y)) - abs(_44_m6[_2108].x);
                    float _2224 = _44_m6[_2108].y - _2223;
                    float _2231 = abs(max((1.0f - abs(_2223)) - abs(_2224), 0.00048828125f));
                    float3 _2235 = normalize(float3(_2223, _2224, (_44_m6[_2108].x >= 0.0f) ? _2231 : (-_2231)));
                    float3 _2236 = _44_m6[_2105].xyz - _424;
                    float _2237 = dot(_2236, _2236);
                    float3 _2239 = _2236 * rsqrt(_2237);
                    int _2242 = int(_44_m6[_2120].w);
                    float3 _2244 = (_2235 * _44_m6[_2108].z) * 0.5f;
                    float3 _2245 = _2236 - _2244;
                    float3 _2246 = _2236 + _2244;
                    bool _2249 = (uint(_44_m6[_2102].w) & 1u) == 0u;
                    bool _2252 = _2249 || ((_2124 & 2u) != 0u);
                    bool _2255 = (!_2249) && (_44_m6[_2108].z > 0.0f);
                    float _2267;
                    if (_2255)
                    {
                        _2267 = 1.0f / ((((length(_2245) * length(_2246)) + dot(_2245, _2246)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2267 = 1.0f;
                    }
                    float _2289;
                    if (_44_m6[_2117].w < 0.0f)
                    {
                        float _2283 = _2237 * (_44_m6[_2105].w * _44_m6[_2105].w);
                        float _2286 = clamp(1.0f - (_2283 * _2283), 0.0f, 1.0f);
                        _2289 = lerp(1.0f / (_2237 + 1.0f), _2267, float(_2255)) * (_2286 * _2286);
                    }
                    else
                    {
                        float3 _2272 = _2236 * _44_m6[_2105].w;
                        _2289 = _2267 * pow(1.0f - clamp(dot(_2272, _2272), 0.0f, 1.0f), _44_m6[_2117].w);
                    }
                    float _2295 = clamp((dot(_2239, -_2235) - _44_m6[_2108].z) * _44_m6[_2108].w, 0.0f, 1.0f);
                    float _2299 = _2289 * lerp(1.0f, _2295 * _2295, float(_2249));
                    float _2399;
                    if ((!_2255) && (_2242 >= 0))
                    {
                        uint _2305 = uint(_2242);
                        float2 _2392;
                        [branch]
                        if (_2249)
                        {
                            float4 _2382 = mul(_64_m1[_2305], _428);
                            _2392 = _64_m0[_2305].xy + (clamp(_2382.xy / _2382.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2305].zw);
                        }
                        else
                        {
                            float3 _2319 = mul(float4(-_2236, 0.0f), _64_m1[_2305]).xyz;
                            float3 _370 = _2319;
                            float3 _369 = _2319;
                            float3 _368 = abs(_2319);
                            uint _2328 = uint(int(_368.y > _368.x));
                            uint _2334 = (_368.z > _368[_2328]) ? 2u : _2328;
                            uint _2340 = (_2334 * 2u) + uint(_369[_2334] < 0.0f);
                            float _2344 = abs(_370[_2340 / 2u]);
                            float _2364 = 0.5f - (0.000244140625f / _64_m0[_2305].w);
                            _2392 = _64_m0[_2305].xy + (clamp(float2((float(_2340) + ((((_370[uint(_341[_2340].x)] * _342[_2340].x) / _2344) * _2364) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_370[uint(_341[_2340].y)] * _342[_2340].y) / _2344) * _2364)), 0.0f.xx, 1.0f.xx) * _64_m0[_2305].zw);
                        }
                        _2399 = _2299 * _62.SampleLevel(_23, _2392, 0.0f).x;
                    }
                    else
                    {
                        _2399 = _2299;
                    }
                    float _2688;
                    if (_2399 > 0.0f)
                    {
                        int _2452;
                        if (_2252)
                        {
                            _2452 = int(_44_m6[_2111].x);
                        }
                        else
                        {
                            uint _2407 = asuint(_44_m6[_2108].w);
                            uint _2409 = asuint(_44_m6[_2111].x);
                            float3 _2410 = _424 - _44_m6[_2105].xyz;
                            float3 _2411 = abs(_2410);
                            float _2412 = _2411.x;
                            float _2413 = _2411.y;
                            float _2415 = _2411.z;
                            int _2447;
                            if ((_2412 > _2413) && (_2412 > _2415))
                            {
                                _2447 = int((_2410.x > 0.0f) ? (_2407 >> 24u) : ((_2407 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2439;
                                if (_2413 > _2415)
                                {
                                    _2439 = int((_2410.y > 0.0f) ? ((_2407 >> 8u) & 255u) : (_2407 & 255u));
                                }
                                else
                                {
                                    _2439 = int((_2410.z > 0.0f) ? ((_2409 >> 8u) & 255u) : (_2409 & 255u));
                                }
                                _2447 = _2439;
                            }
                            _2452 = (_2447 < 80) ? _2447 : (-1);
                        }
                        float4 _2469 = mul(_46_m10[_2452], float4((_424 - ((-_2239) * _46_m11[_2452].x)) + (_567 * (_46_m11[_2452].y * 5.0f)), 1.0f));
                        float _2470 = _2469.w;
                        float3 _2473 = _2469.xyz / _2470.xxx;
                        float2 _2474 = _2473.xy;
                        float3 _2482 = _2473.xyz;
                        bool3 _2483 = bool3(_2482.x <= 0.0f.xxx.x, _2482.y <= 0.0f.xxx.y, _2482.z <= 0.0f.xxx.z);
                        bool3 _2484 = bool3(_2482.x >= 1.0f.xxx.x, _2482.y >= 1.0f.xxx.y, _2482.z >= 1.0f.xxx.z);
                        float _2487 = _2473.z;
                        float2 _2498 = ((_2474 * (_46_m12[_2452].zw - _46_m12[_2452].xy)) + _46_m12[_2452].xy).xy * _46_m13.zw;
                        float2 _2500 = floor(_2498 + 0.5f.xx);
                        float2 _2501 = _2498 - _2500;
                        float _2502 = _2501.x;
                        float _2503 = _2502 + 0.5f;
                        float _2504 = _2503 * _2503;
                        float _2507 = 1.0f - _2502;
                        float _2508 = min(_2502, 0.0f);
                        float _2511 = _2502 + 1.0f;
                        float _2512 = max(_2502, 0.0f);
                        float _2523 = _2501.y;
                        float _2524 = _2523 + 0.5f;
                        float _2525 = _2524 * _2524;
                        float _2528 = 1.0f - _2523;
                        float _2529 = min(_2523, 0.0f);
                        float _2532 = _2523 + 1.0f;
                        float _2533 = max(_2523, 0.0f);
                        float3 _2545 = float3(0.1599999964237213134765625f * _2507, 0.1599999964237213134765625f * ((_2511 - (_2512 * _2512)) + 1.0f), _2504 * 0.07999999821186065673828125f);
                        float3 _2546 = float3(0.1599999964237213134765625f * ((_2504 * 0.5f) - _2502), 0.1599999964237213134765625f * ((_2507 - (_2508 * _2508)) + 1.0f), 0.1599999964237213134765625f * _2511) + _2545;
                        float3 _2548 = float3(0.1599999964237213134765625f * _2528, 0.1599999964237213134765625f * ((_2532 - (_2533 * _2533)) + 1.0f), _2525 * 0.07999999821186065673828125f);
                        float3 _2549 = float3(0.1599999964237213134765625f * ((_2525 * 0.5f) - _2523), 0.1599999964237213134765625f * ((_2528 - (_2529 * _2529)) + 1.0f), 0.1599999964237213134765625f * _2532) + _2548;
                        float3 _2555 = ((_2545 / _2546) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.xxx;
                        float3 _2557 = ((_2548 / _2549) + float3(-2.5f, -0.5f, 1.5f)) * _46_m13.yyy;
                        float2 _2559 = _2500 * _46_m13.xy;
                        float _2560 = _2555.x;
                        float _2561 = _2557.x;
                        float _2564 = _2555.y;
                        float _2567 = _2555.z;
                        float _2570 = _2557.y;
                        float _2577 = _2557.z;
                        float _2584 = _2546.x;
                        float _2585 = _2549.x;
                        float _2587 = _2546.y;
                        float _2589 = _2546.z;
                        float _2591 = _2549.y;
                        float _2595 = _2549.z;
                        float _2653 = (((((((_2584 * _2585) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2560, _2561), _360).xy, _2487)) + ((_2587 * _2585) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2564, _2561), _360).xy, _2487))) + ((_2589 * _2585) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2567, _2561), _360).xy, _2487))) + ((_2584 * _2591) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2560, _2570), _360).xy, _2487))) + ((_2587 * _2591) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2564, _2570), _360).xy, _2487))) + ((_2589 * _2591) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2567, _2570), _360).xy, _2487))) + ((_2584 * _2595) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2560, _2577), _360).xy, _2487));
                        float2 _2674 = min(_2474, 1.0f.xx - _2474);
                        _2688 = (_2452 >= 0) ? lerp(1.0f, (any(bool3(_2483.x || _2484.x, _2483.y || _2484.y, _2483.z || _2484.z)) || ((asuint(_2487) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2653 + ((_2587 * _2595) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2564, _2577), _360).xy, _2487))) + ((_2589 * _2595) * _48.SampleCmpLevelZero(_26, float3(_2559 + float2(_2567, _2577), _360).xy, _2487))), _2252 ? min(_46_m11[_2452].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_46_m11[_2452].z - _2470) * 0.25f, min(_2674.x, _2674.y)))) : _46_m11[_2452].w) : 1.0f;
                    }
                    else
                    {
                        _2688 = 1.0f;
                    }
                    _2689 = _2688;
                    break;
                } while(false);
                _3314 = _2065 * _2689;
                _3315 = 0.0f.xxx;
            }
            _2087 = _3314;
            _2090 = _2089 + _3315;
        }
        _2062 = _2061 + _2089;
    }
    /*
    Vanilla shader code from 0xB8A8CA8D:
    float3 _3321 = ((((float3(_1081, _1086, _1091) * _615) * lerp(1.0f, _515, _37_m4)) * _18_m22.x) + ((((_1375 * _18_m23.z) * _18_m22.y) * ((_619 * _634.x) + (clamp(50.0f * _619.y, 0.0f, 1.0f) * _634.y).xxx)) * 1.0f)) + (_2036.xyz + (_2061 * _2064)).xyz;
    */
    // RenoDX code: reduce opaque glass lighting terms when the transparency improvement is enabled.
    float3 _3321 = ((((float3(_1081, _1086, _1091) * (_615 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _515, _37_m4)) * _18_m22.x) + (((((_1375 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_619 * _634.x) + (clamp(50.0f * _619.y, 0.0f, 1.0f) * _634.y).xxx)) * 1.0f)) + (_2036.xyz + ((_2061 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2064)).xyz;
    float4 _3322 = float4(_3321.x, _3321.y, _3321.z, _362.w);
    _3322.w = _539;
    float _3339 = _424.y * _18_m46.w;
    float _3344 = max(0.00999999977648258209228515625f, _3339 + _18_m47.w);
    float3 _3358 = exp(_18_m45.xyz * ((-max(0.0f, (_462 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3344)) / _3344) * exp(_3339 + _18_m48.w))));
    float _3361 = dot(_1101, _18_m44.xyz);
    float _3367 = _18_m45.w * _18_m45.w;
    float _3371 = (1.0f + _3367) - ((2.0f * _18_m45.w) * _3361);
    float3 _3703;
    float _3704;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3529 = (uint3(int3(int(_674.x), int(_674.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3530 = _3529.y;
        uint _3531 = _3529.z;
        uint _3534 = _3529.x + (_3530 * _3531);
        uint _3536 = _3530 + (_3531 * _3534);
        uint _3538 = _3531 + (_3534 * _3536);
        uint _3540 = _3534 + (_3536 * _3538);
        float _3564 = dot(_1101, -_16_m0[2].xyz);
        float3 _3574 = _424 - _16_m11.xyz;
        float _3576 = (_18_m55.w * ((_3564 > 5.9604644775390625e-08f) ? (1.0f / _3564) : 0.0f)) * (1.0f / _462);
        float _3577 = _3574.y;
        float _3578 = _3576 * _3577;
        float _3580 = _16_m11.y + _3578;
        float _3581 = _3577 - _3578;
        float _3583 = (1.0f - _3576) * _462;
        float _3597 = max(-127.0f, _18_m49.z * _3581);
        float _3621 = max(-127.0f, _18_m52.x * _3581);
        float _3632 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3580 - _18_m49.x)))) * ((abs(_3597) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3597)) / _3597) : (0.693147182464599609375f - (0.2402265071868896484375f * _3597)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3580 - _18_m52.z)))) * ((abs(_3621) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3621)) / _3621) : (0.693147182464599609375f - (0.2402265071868896484375f * _3621))));
        float _3654 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3657 = clamp((max(clamp(exp2(-(_3632 * _3583)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3654, 0.0f, 1.0f);
        float4 _3697 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_23, float3((_1111 + ((((float3(uint3(_3540, _3536 + (_3538 * _3540), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_675 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_675 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3703 = _3697.xyz + (((_18_m51.xyz * (1.0f - _3657)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3632 * max(_3583 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3654))) * _3697.w);
        _3704 = _3697.w * _3657;
    }
    else
    {
        float3 _3401 = _424 - _16_m11.xyz;
        float _3403 = _3401.y;
        float _3417 = max(-127.0f, _18_m49.z * _3403);
        float _3441 = max(-127.0f, _18_m52.x * _3403);
        float _3452 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3417) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3417)) / _3417) : (0.693147182464599609375f - (0.2402265071868896484375f * _3417)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3441) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3441)) / _3441) : (0.693147182464599609375f - (0.2402265071868896484375f * _3441))));
        float _3474 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3477 = clamp((max(clamp(exp2(-(_3452 * _462)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3474, 0.0f, 1.0f);
        _3703 = (_18_m51.xyz * (1.0f - _3477)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3452 * max(_462 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3474));
        _3704 = _3477;
    }
    /*
    Vanilla shader code from 0xB8A8CA8D:
    float3 _3710 = ((_3322.xyz * (_3358 * _3704)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3361 * _3361)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3367) / max((12.56637096405029296875f * _3371) * sqrt(_3371), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3358)) * _3704) + _3703)).xyz;
    */
    // RenoDX code: apply improved glass and the selected hue-preserving fog blend.
    float3 _3710 = ((_3322.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3358 * _3704)) : (_3358 * _3704))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3361 * _3361)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3367) / max((12.56637096405029296875f * _3371) * sqrt(_3371), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3358)) * _3704 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3703 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    float3 _3720 = lerp(dot(_3710, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3710, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3730 = min(lerp(((sqrt(sqrt(abs(_587 * 0.5f))) * float2(int2(sign(_587)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _574.xx), 1.0f.xx);
    float4 _3731 = float4(_3730.x, _3730.y, _362.z, _362.w);
    _3731.z = float(clamp(max(dot(_3720.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _539, _539) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3731.w = lerp(0.0f, 0.699999988079071044921875f, _574);
    /*
    Vanilla shader code from 0xB8A8CA8D:
    _13 = float4(_3720.x, _3720.y, _3720.z, _3322.w);
    */
    // RenoDX code start: compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3720.x, _3720.y, _3720.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3322.w);
    _14 = _3731;
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

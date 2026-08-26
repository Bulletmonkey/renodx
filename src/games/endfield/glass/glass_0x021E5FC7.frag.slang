#include "../shared.h"

// Vulkan shader 0x021E5FC7, decompiled from the matching game shader dump.

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

struct _41
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

static float _364;
static float4 _366;
static uint _367;

static const float4 _344[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _345[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _346[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _38_39 : register(b6, space1)
{
    float _39_m0 : packoffset(c0);
    float _39_m1 : packoffset(c0.y);
    float _39_m2 : packoffset(c0.z);
    float _39_m3 : packoffset(c0.w);
    float _39_m4 : packoffset(c1);
    float _39_m5 : packoffset(c1.y);
    float _39_m6 : packoffset(c1.z);
    float _39_m7 : packoffset(c1.w);
    float _39_m8 : packoffset(c2);
    float _39_m9 : packoffset(c2.y);
    float _39_m10 : packoffset(c2.z);
    float _39_m11 : packoffset(c2.w);
    float _39_m12 : packoffset(c3);
    float _39_m13 : packoffset(c3.y);
    float _39_m14 : packoffset(c3.z);
    float _39_m15 : packoffset(c3.w);
    float _39_m16 : packoffset(c4);
    float _39_m17 : packoffset(c4.y);
    float _39_m18 : packoffset(c4.z);
    float _39_m19 : packoffset(c4.w);
    float _39_m20 : packoffset(c5);
    float _39_m21 : packoffset(c5.y);
    float _39_m22 : packoffset(c5.z);
    float _39_m23 : packoffset(c5.w);
    float _39_m24 : packoffset(c6);
    float _39_m25 : packoffset(c6.y);
    float _39_m26 : packoffset(c6.z);
    float _39_m27 : packoffset(c6.w);
    float _39_m28 : packoffset(c7);
    float _39_m29 : packoffset(c7.y);
    float _39_m30 : packoffset(c7.z);
    float _39_m31 : packoffset(c7.w);
    float4 _39_m32 : packoffset(c8);
    float4 _39_m33 : packoffset(c9);
    float4 _39_m34 : packoffset(c10);
    float4 _39_m35 : packoffset(c11);
    float4 _39_m36 : packoffset(c12);
    float4 _39_m37 : packoffset(c13);
    float4 _39_m38 : packoffset(c14);
    float4 _39_m39 : packoffset(c15);
    float4 _39_m40 : packoffset(c16);
    float4 _39_m41 : packoffset(c17);
    float4 _39_m42 : packoffset(c18);
    float4 _39_m43 : packoffset(c19);
    float4 _39_m44 : packoffset(c20);
    float4 _39_m45 : packoffset(c21);
    float _39_m46 : packoffset(c22);
    float _39_m47 : packoffset(c22.y);
    float _39_m48 : packoffset(c22.z);
    float _39_m49 : packoffset(c22.w);
    float _39_m50 : packoffset(c23);
    float _39_m51 : packoffset(c23.y);
    float _39_m52 : packoffset(c23.z);
    float _39_m53 : packoffset(c23.w);
    float4 _39_m54 : packoffset(c24);
    float _39_m55 : packoffset(c25);
    float _39_m56 : packoffset(c25.y);
    float _39_m57 : packoffset(c25.z);
    float _39_m58 : packoffset(c25.w);
    float _39_m59 : packoffset(c26);
    float _39_m60 : packoffset(c26.y);
    float _39_m61 : packoffset(c26.z);
    float _39_m62 : packoffset(c26.w);
};

cbuffer _40_42 : register(b17, space0)
{
    float4 _42_m0 : packoffset(c0);
    float4 _42_m1 : packoffset(c1);
    float4 _42_m2 : packoffset(c2);
    float4 _42_m3 : packoffset(c3);
    _41 _42_m4[32] : packoffset(c4);
};

cbuffer _43_44 : register(b47, space0)
{
    int _44_m0 : packoffset(c0);
    int _44_m1 : packoffset(c0.y);
    int _44_m2 : packoffset(c0.z);
    int _44_m3 : packoffset(c0.w);
    float _44_m4 : packoffset(c1);
    float _44_m5 : packoffset(c1.y);
    float _44_m6 : packoffset(c1.z);
    float _44_m7 : packoffset(c1.w);
    float _44_m8 : packoffset(c2);
    float _44_m9 : packoffset(c2.y);
    float _44_m10 : packoffset(c2.z);
    float _44_m11 : packoffset(c2.w);
};

cbuffer _45_46 : register(b14, space0)
{
    float4 _46_m0 : packoffset(c0);
    float4 _46_m1 : packoffset(c1);
    float4 _46_m2 : packoffset(c2);
    float4 _46_m3 : packoffset(c3);
    float4 _46_m4 : packoffset(c4);
    uint4 _46_m5 : packoffset(c5);
    float4 _46_m6[2048] : packoffset(c6);
};

cbuffer _47_48 : register(b15, space0)
{
    column_major float4x4 _48_m0[5] : packoffset(c0);
    float4 _48_m1[4] : packoffset(c20);
    float4 _48_m2[4] : packoffset(c24);
    float4 _48_m3[4] : packoffset(c28);
    float4 _48_m4 : packoffset(c32);
    float4 _48_m5 : packoffset(c33);
    float4 _48_m6 : packoffset(c34);
    float4 _48_m7 : packoffset(c35);
    float4 _48_m8 : packoffset(c36);
    float4 _48_m9[27] : packoffset(c37);
    column_major float4x4 _48_m10[56] : packoffset(c64);
    float4 _48_m11[56] : packoffset(c288);
    float4 _48_m12[56] : packoffset(c344);
    float4 _48_m13 : packoffset(c400);
    float4 _48_m14[47] : packoffset(c401);
    column_major float4x4 _48_m15[15] : packoffset(c448);
    float4 _48_m16[15] : packoffset(c508);
    float4 _48_m17[15] : packoffset(c523);
    float4 _48_m18[15] : packoffset(c538);
    float4 _48_m19 : packoffset(c553);
    float4 _48_m20 : packoffset(c554);
    float4 _48_m21[21] : packoffset(c555);
    column_major float4x4 _48_m22 : packoffset(c576);
    column_major float4x4 _48_m23 : packoffset(c580);
    float4 _48_m24 : packoffset(c584);
    float4 _48_m25 : packoffset(c585);
    float4 _48_m26 : packoffset(c586);
    float4 _48_m27[128] : packoffset(c587);
};

cbuffer _65_66 : register(b49, space0)
{
    float4 _66_m0[32] : packoffset(c0);
    column_major float4x4 _66_m1[32] : packoffset(c32);
};

SamplerState _23 : register(s6, space0);
SamplerState _24 : register(s4, space0);
SamplerState _25 : register(s1, space0);
SamplerComparisonState _26 : register(s7, space0);
Texture2DArray<float4> _29 : register(t25, space0);
Texture2D<float4> _32 : register(t5, space1);
SamplerState _33 : register(s2, space1);
Texture2D<float4> _34 : register(t3, space1);
SamplerState _35 : register(s0, space1);
Texture2D<float4> _36 : register(t4, space1);
SamplerState _37 : register(s1, space1);
Texture2D<float4> _49 : register(t9, space0);
Texture2D<float4> _50 : register(t26, space0);
Texture2D<float4> _51 : register(t8, space0);
Texture2D<float4> _52 : register(t11, space0);
Texture2D<float4> _53 : register(t10, space0);
Texture2D<float4> _56 : register(t27, space0);
Texture3D<float4> _57 : register(t34, space0);
Texture3D<float4> _58 : register(t31, space0);
Texture3D<float4> _59 : register(t33, space0);
Texture3D<float4> _60 : register(t30, space0);
Texture3D<float4> _61 : register(t32, space0);
Texture3D<float4> _62 : register(t29, space0);
Texture3D<float4> _63 : register(t35, space0);
Texture2D<float4> _64 : register(t28, space0);

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
    float _391 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _396 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _398 = abs(_396);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _398 : (-_398)), (1.0f - _391) - _396) < 0.0f)
    {
        discard;
    }
    float2 _418 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _421 = float4(_418, gl_FragCoord.z, 1.0f);
    _421.y = -_418.y;
    float4 _424 = mul(_16_m6, _421);
    float3 _428 = _424.xyz / _424.w.xxx;
    float4 _432 = float4(_428, 1.0f);
    float _439 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _461;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _461 = _16_m11.xyz - _428;
            break;
        }
        else
        {
            _461 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _462 = dot(_461, _461);
    float _464 = rsqrt(max(_462, 9.9999999392252902907785028219223e-09f));
    float3 _465 = _461 * _464;
    float _466 = _462 * _464;
    float2 _487 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
    float4 _501 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float4 _505 = _34.SampleBias(_35, _487, _39_m13 + _18_m16);
    _505.w = _505.w * _505.x;
    float2 _513 = ((_505.wy * 2.0f) - 1.0f.xx).xy;
    float2 _519 = _513 * _39_m0;
    float4 _521 = _36.SampleBias(_37, _487, _18_m16);
    float _537 = _501.w;
    float _540 = _537 * _39_m32.w;
    float _546 = lerp(_540, _540 * _8.x, _39_m59);
    float _551 = lerp(_39_m2, _39_m3, _521.y);
    float _561 = lerp(_521.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _569 = clamp(_39_m56, 0.0f, 1.0f);
    float _577 = clamp((lerp(1.0f, lerp(_537, _521.w, clamp(_39_m56 - 2.0f, 0.0f, 1.0f)), _569) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float _600 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _577);
    float3 _605 = lerp(clamp((_501.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _600).xxx + (_21_m0[_11]._m9.xyz * _600));
    float3 _630 = normalize(((_7.xyz * _519.x) + ((cross(_6, float4(_7.xyz, _439).xyz) * _439) * _519.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_513, _513), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _637 = clamp(float(int(sign(_391 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _650 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _650.y = -_650.y;
    float _676 = 0.07999999821186065673828125f * _39_m1;
    float3 _677 = _605 * _561;
    float3 _678 = _605 - _677;
    float3 _682 = (_676 - (_676 * _561)).xxx + _677;
    float _683 = dot(_630, _465);
    float4 _686 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _551) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _687 = _686.x;
    float2 _697 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_687 * _687, exp2((-9.27999973297119140625f) * max(0.0f, _683))) * _687) + _686.y)) + _686.zw;
    uint2 _737;
    float _738;
    if (_18_m24.y == 1.0f)
    {
        float4 _714 = mul(_18_m135, _432);
        float4 _717 = _714;
        _717.y = -_714.y;
        float4 _720 = _717 * (1.0f / _714.w);
        _737 = uint2(clamp(((_720.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _738 = 1.0f / ((_18_m2.z * _720.z) + _18_m2.w);
    }
    else
    {
        _737 = uint2(gl_FragCoord.xy);
        _738 = abs(mul(_16_m0, _432).z);
    }
    float3 _740 = _428 + (_630 * 0.25f);
    float3 _750 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _759 = _740 - (_18_m105.xyz + (_750 * (-_18_m107.w)));
    float _773 = max(clamp((max(abs(_759.x), abs(_759.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_759.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1075;
    float4 _1076;
    float4 _1077;
    float _1078;
    float _1079;
    if ((_18_m105.w != 0.0f) && (_773 < 1.0f))
    {
        float3 _786 = _740 - (_18_m105.xyz + (_750 * (-_18_m107.y)));
        float _800 = max(clamp((max(abs(_786.x), abs(_786.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_786.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _876;
        float4 _877;
        float4 _878;
        float4 _879;
        if (_800 < 1.0f)
        {
            float3 _809 = ((_740 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _811 = _809 - floor(_809);
            float4 _815 = _57.SampleLevel(_24, _811, 0.0f);
            float _816 = 1.0f - _800;
            float _820 = _18_m106.y * 0.5f;
            float _825 = _811.x;
            float _826 = clamp(_811.y, _820, 1.0f - _820) * 0.3333333432674407958984375f;
            float _827 = _811.z;
            float4 _830 = _58.SampleLevel(_23, float3(_825, _826, _827), 0.0f);
            float _846 = _815.x;
            float3 _847 = ((_830.xyz * 4.0f) - 2.0f.xxx) * _846;
            float _856 = _815.y;
            float3 _857 = ((_58.SampleLevel(_23, float3(_825, _826 + 0.3333333432674407958984375f, _827), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _856;
            float _866 = _815.z;
            float3 _867 = ((_58.SampleLevel(_23, float3(_825, _826 + 0.666666686534881591796875f, _827), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _866;
            _876 = _773 + (_830.w * _816);
            _877 = float4(_867, _866) * _816;
            _878 = float4(_857, _856) * _816;
            _879 = float4(_847, _846) * _816;
        }
        else
        {
            _876 = _773;
            _877 = 0.0f.xxxx;
            _878 = 0.0f.xxxx;
            _879 = 0.0f.xxxx;
        }
        float3 _885 = _740 - (_18_m105.xyz + (_750 * (-_18_m107.z)));
        float _899 = max(clamp((max(abs(_885.x), abs(_885.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_885.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _979;
        float4 _980;
        float4 _981;
        float4 _982;
        if (_899 < 1.0f)
        {
            float3 _908 = ((_740 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _910 = _908 - floor(_908);
            float4 _914 = _59.SampleLevel(_24, _910, 0.0f);
            float _916 = _800 * (1.0f - _899);
            float _920 = _18_m106.y * 0.5f;
            float _925 = _910.x;
            float _926 = clamp(_910.y, _920, 1.0f - _920) * 0.3333333432674407958984375f;
            float _927 = _910.z;
            float4 _930 = _60.SampleLevel(_23, float3(_925, _926, _927), 0.0f);
            float _946 = _914.x;
            float3 _947 = ((_930.xyz * 4.0f) - 2.0f.xxx) * _946;
            float _957 = _914.y;
            float3 _958 = ((_60.SampleLevel(_23, float3(_925, _926 + 0.3333333432674407958984375f, _927), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _957;
            float _968 = _914.z;
            float3 _969 = ((_60.SampleLevel(_23, float3(_925, _926 + 0.666666686534881591796875f, _927), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _968;
            _979 = _876 + (_930.w * _916);
            _980 = _877 + (float4(_969, _968) * _916);
            _981 = _878 + (float4(_958, _957) * _916);
            _982 = _879 + (float4(_947, _946) * _916);
        }
        else
        {
            _979 = _876;
            _980 = _877;
            _981 = _878;
            _982 = _879;
        }
        float4 _1065;
        float4 _1066;
        float4 _1067;
        float _1068;
        if (_899 > 0.0f)
        {
            float3 _991 = ((_740 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _994 = _18_m106.xyz * 0.5f;
            float3 _996 = clamp(_991 - floor(_991), _994, 1.0f.xxx - _994);
            float4 _1000 = _61.SampleLevel(_24, _996, 0.0f);
            float _1002 = _899 * (1.0f - _773);
            float _1006 = _18_m106.y * 0.5f;
            float _1011 = _996.x;
            float _1012 = clamp(_996.y, _1006, 1.0f - _1006) * 0.3333333432674407958984375f;
            float _1013 = _996.z;
            float4 _1016 = _62.SampleLevel(_23, float3(_1011, _1012, _1013), 0.0f);
            _1065 = _980 + (float4(((_62.SampleLevel(_23, float3(_1011, _1012 + 0.666666686534881591796875f, _1013), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1000.z, _1000.z) * _1002);
            _1066 = _981 + (float4(((_62.SampleLevel(_23, float3(_1011, _1012 + 0.3333333432674407958984375f, _1013), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1000.y, _1000.y) * _1002);
            _1067 = _982 + (float4(((_1016.xyz * 4.0f) - 2.0f.xxx) * _1000.x, _1000.x) * _1002);
            _1068 = _979 + (_1016.w * _1002);
        }
        else
        {
            _1065 = _980;
            _1066 = _981;
            _1067 = _982;
            _1068 = _979;
        }
        float _1071 = clamp((_1068 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1075 = _1065;
        _1076 = _1066;
        _1077 = _1067;
        _1078 = _1071 - _773;
        _1079 = (_1071 + _773) * 0.5f;
    }
    else
    {
        _1075 = 0.0f.xxxx;
        _1076 = 0.0f.xxxx;
        _1077 = 0.0f.xxxx;
        _1078 = 0.0f;
        _1079 = 1.0f;
    }
    float4 _1099 = _1077 + float4(_18_m108.x * _1079, (_18_m108.y * _1079) + ((_18_m108.w * _1078) * 0.5f), _18_m108.z * _1079, (_18_m108.w * _1079) + ((_18_m108.y * _1078) * 0.375f));
    float4 _1119 = _1076 + float4(_18_m109.x * _1079, (_18_m109.y * _1079) + ((_18_m109.w * _1078) * 0.5f), _18_m109.z * _1079, (_18_m109.w * _1079) + ((_18_m109.y * _1078) * 0.375f));
    float4 _1139 = _1075 + float4(_18_m110.x * _1079, (_18_m110.y * _1079) + ((_18_m110.w * _1078) * 0.5f), _18_m110.z * _1079, (_18_m110.w * _1079) + ((_18_m110.y * _1078) * 0.375f));
    float _1144 = max(0.0f, dot(_1099.xyz, _630) + _1099.w);
    float _1149 = max(0.0f, dot(_1119.xyz, _630) + _1119.w);
    float _1154 = max(0.0f, dot(_1139.xyz, _630) + _1139.w);
    float3 _1164 = -_465;
    float3 _1165 = reflect(_1164, _630);
    float _1173 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_551, 0.001000000047497451305389404296875f))));
    float2 _1174 = float2(_737);
    float2 _1178 = floor(_1174 * _42_m0.w);
    float _1195 = floor(_738 - _42_m2.y);
    float _1199 = clamp(_1195, 0.0f, _42_m1.x - 1.0f);
    uint _1209 = (_1195 <= _1199) ? (_31.Load(uint(_18_m21.z + int(_1178.x + (_1178.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1199)) * 4 + 0)) : 0u;
    float _1212 = dot(float4(_1144, _1149, _1154, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1214;
    float _1217;
    uint _1219;
    _1214 = 0.0f.xxx;
    _1217 = 1.0f;
    _1219 = _1209;
    uint _1220;
    float3 _1215;
    float _1218;
    bool _1222;
    [loop]
    for (;;)
    {
        _1222 = _1217 > 0.00999999977648258209228515625f;
        if ((_1219 != 0u) && _1222)
        {
            uint _1226 = firstbitlow(_1219);
            _1220 = _1219 ^ (1u << (_1226 & 31u));
            float3 _1246 = float3(dot(_42_m4[_1226]._m2, _432), dot(_42_m4[_1226]._m3, _432), dot(_42_m4[_1226]._m4, _432));
            float3 _1247 = abs(_1246);
            if (all(bool3(_1247.x <= _42_m4[_1226]._m1.xyz.x, _1247.y <= _42_m4[_1226]._m1.xyz.y, _1247.z <= _42_m4[_1226]._m1.xyz.z)))
            {
                float3 _1256 = _42_m4[_1226]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1258 = _1247 * 0.100000001490116119384765625f;
                float3 _1259 = _1258 * _1258;
                float3 _1262 = (_42_m4[_1226]._m1.xyz - _1247) * _42_m4[_1226]._m5.xyz;
                float3 _1310;
                [branch]
                if (_42_m4[_1226]._m6.x == 1.0f)
                {
                    float3 _1295 = float3(dot(_42_m4[_1226]._m2.xyz, _1165), dot(_42_m4[_1226]._m3.xyz, _1165), dot(_42_m4[_1226]._m4.xyz, _1165));
                    float3 _1297 = (_42_m4[_1226]._m1.xyz - _1246) / _1295;
                    float3 _1300 = ((-_42_m4[_1226]._m1.xyz) - _1246) / _1295;
                    bool3 _1301 = bool3(_1295.x > 0.0f.xxx.x, _1295.y > 0.0f.xxx.y, _1295.z > 0.0f.xxx.z);
                    float3 _1302 = float3(_1301.x ? _1297.x : _1300.x, _1301.y ? _1297.y : _1300.y, _1301.z ? _1297.z : _1300.z);
                    _1310 = _1246 + (_1295 * min(min(_1302.x, _1302.y), _1302.z));
                }
                else
                {
                    _1310 = _1165;
                }
                float3 _1311 = normalize(_1310);
                float3 _1314 = float3(int3(sign(_1311)));
                float3 _1317 = _1311 / dot(_1311, _1314).xxx;
                float3 _1331;
                if (_1317.z < 0.0f)
                {
                    float3 _1322 = abs(_1317);
                    float2 _1329 = _1314.xy * float2(1.0f - _1322.y, 1.0f - _1322.x);
                    _1331 = float3(_1329.x, _1329.y, _1317.z);
                }
                else
                {
                    _1331 = _1317;
                }
                float _1356 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1226]._m0, float4(_630, 1.0f))));
                float _1369 = clamp((min(_1262.x, min(_1262.y, _1262.z)) * _42_m4[_1226]._m6.y) + ((((((_1256 * _1256).x - ((_1259.x + _1259.y) + _1259.z)) * _42_m4[_1226]._m5.x) * _42_m4[_1226]._m5.x) * (1.0f - _42_m4[_1226]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1226]._m6.w;
                _1215 = _1214 + ((((_29.SampleLevel(_25, float3((((_1331.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1226]._m1.w), _1173).xyz * _42_m4[_1226]._m5.w) * ((((((clamp(abs(_1212 / _1356), 0.0f, 1.0f) * 2.0f) + _1212) / (2.0f + _1356)) - 1.0f) * _18_m23.w) + 1.0f)) * _1369) * _1217);
                _1218 = _1217 * (1.0f - _1369);
            }
            else
            {
                _1215 = _1214;
                _1218 = _1217;
            }
            _1214 = _1215;
            _1217 = _1218;
            _1219 = _1220;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1438;
    if (_1222)
    {
        float3 _1377 = normalize(_1165);
        float3 _1380 = float3(int3(sign(_1377)));
        float3 _1383 = _1377 / dot(_1377, _1380).xxx;
        float3 _1397;
        if (_1383.z < 0.0f)
        {
            float3 _1388 = abs(_1383);
            float2 _1395 = _1380.xy * float2(1.0f - _1388.y, 1.0f - _1388.x);
            _1397 = float3(_1395.x, _1395.y, _1383.z);
        }
        else
        {
            _1397 = _1383;
        }
        float _1424 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_630, 1.0f))));
        _1438 = _1214 + ((_29.SampleLevel(_25, float3((((_1397.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1173).xyz * ((((((clamp(abs(_1212 / _1424), 0.0f, 1.0f) * 2.0f) + _1212) / (2.0f + _1424)) - 1.0f) * _18_m23.w) + 1.0f)) * _1217);
    }
    else
    {
        _1438 = _1214;
    }
    float2 _1959;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _1959 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1460 = int(_48_m7.x);
        bool3 _1462 = (_1460 == 2).xxx;
        float3 _1470 = _428 - float3(_1462.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1462.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1462.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1481 = max(clamp((_48_m6.w - dot(_1470, _1470)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1698;
        bool _1699;
        if (_1481 > 0.0f)
        {
            float _1696;
            bool _1697;
            if (_1460 > 0)
            {
                float3 _1488 = _428 - _48_m1[0].xyz;
                float3 _1492 = _428 - _48_m1[1].xyz;
                float3 _1496 = _428 - _48_m1[2].xyz;
                float3 _1500 = _428 - _48_m1[3].xyz;
                float4 _1505 = float4(dot(_1488, _1488), dot(_1492, _1492), dot(_1496, _1496), dot(_1500, _1500));
                float4 _1514 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1516 = float4(bool4(_1505.x < _1514.x, _1505.y < _1514.y, _1505.z < _1514.z, _1505.w < _1514.w));
                float3 _1520 = clamp(_1516.yzw - _1516.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1524 = clamp(4.0f - dot(float4(_1516.x, _1520.x, _1520.y, _1520.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1526 = clamp(_1524 + 1.0f, 0.0f, 3.0f);
                uint _1527 = uint(_1524);
                uint _1535 = uint(_1526);
                float _1541 = dot(_1505, _344[_1535]) / _48_m1[_1535].w;
                float _1558;
                if (((_1526 > _1524) && (_1541 >= 0.0f)) && (_1541 <= 1.0f))
                {
                    _1558 = _1524 + step(frac(52.98291778564453125f * frac(dot(_1174 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1505, _344[_1527]) / _48_m1[_1527].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1558 = _1524;
                }
                float _1559 = clamp(_1558, 0.0f, 4.0f);
                float4 _1563 = mul(_48_m0[uint(_1559)], _432);
                float _1566 = _1563.z;
                float4 _1567 = float4(_1563.xy, _1566, _1559);
                float3 _1568 = _1567.xyz;
                bool3 _1569 = bool3(_1568.x <= 0.0f.xxx.x, _1568.y <= 0.0f.xxx.y, _1568.z <= 0.0f.xxx.z);
                bool3 _1570 = bool3(_1568.x >= 1.0f.xxx.x, _1568.y >= 1.0f.xxx.y, _1568.z >= 1.0f.xxx.z);
                bool _1576 = any(bool3(_1569.x || _1570.x, _1569.y || _1570.y, _1569.z || _1570.z)) || ((asuint(_1566) & 2147483647u) > 2139095040u);
                int _1577 = int(_1559);
                float2 _1594 = float4(_48_m3[_1577].xy + (_1567.xy * _48_m3[_1577].zw), _1566, _1559).xy * _48_m4.zw;
                float2 _1596 = floor(_1594 + 0.5f.xx);
                float2 _1597 = _1594 - _1596;
                float _1598 = _1597.x;
                float _1599 = _1598 + 0.5f;
                float _1601 = (_1599 * _1599) * 0.5f;
                float _1604 = min(_1598, 0.0f);
                float _1608 = max(_1598, 0.0f);
                float4 _1612 = float4(_1601 - _1598, (1.0f - _1598) - (_1604 * _1604), (_1598 + 1.0f) - (_1608 * _1608), _1601) * 0.44444000720977783203125f;
                float _1613 = _1597.y;
                float _1614 = _1613 + 0.5f;
                float _1616 = (_1614 * _1614) * 0.5f;
                float _1619 = min(_1613, 0.0f);
                float _1623 = max(_1613, 0.0f);
                float4 _1627 = float4(_1616 - _1613, (1.0f - _1613) - (_1619 * _1619), (_1613 + 1.0f) - (_1623 * _1623), _1616) * 0.44444000720977783203125f;
                float2 _1629 = _1612.yw;
                float2 _1630 = _1612.xz + _1629;
                float2 _1632 = _1627.yw;
                float2 _1633 = _1627.xz + _1632;
                float2 _1639 = ((_1629 / _1630) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1641 = ((_1632 / _1633) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1643 = _1596 * _48_m4.xy;
                float _1644 = _1639.x;
                float _1645 = _1641.x;
                float _1648 = _1639.y;
                float _1651 = _1641.y;
                float _1656 = _1630.x;
                float _1657 = _1633.x;
                float _1659 = _1630.y;
                float _1661 = _1633.y;
                _1696 = _1576 ? 1.0f : (((((_1656 * _1657) * _49.SampleCmpLevelZero(_26, float3(_1643 + float2(_1644, _1645), _364).xy, _1566)) + ((_1659 * _1657) * _49.SampleCmpLevelZero(_26, float3(_1643 + float2(_1648, _1645), _364).xy, _1566))) + ((_1656 * _1661) * _49.SampleCmpLevelZero(_26, float3(_1643 + float2(_1644, _1651), _364).xy, _1566))) + ((_1659 * _1661) * _49.SampleCmpLevelZero(_26, float3(_1643 + float2(_1648, _1651), _364).xy, _1566)));
                _1697 = _1576;
            }
            else
            {
                _1696 = 1.0f;
                _1697 = false;
            }
            _1698 = _1696;
            _1699 = _1697;
        }
        else
        {
            _1698 = 1.0f;
            _1699 = false;
        }
        float _1899;
        float _1900;
        if ((_1481 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1710 = 1.0f - clamp(dot(_630, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1721 = (_428 - (_46_m0.xyz * (_1710 * _48_m24.x))) + (_630 * (_1710 * _48_m24.y));
            float4 _1727 = float4(_1721, 1.0f);
            float4 _1728 = mul(_48_m23, _1727);
            float2 _1729 = _1728.xy;
            float _1897;
            if (all(bool2(_1729.x > 0.0f.xx.x, _1729.y > 0.0f.xx.y)) && all(bool2(_1729.x < 1.0f.xx.x, _1729.y < 1.0f.xx.y)))
            {
                uint _1748 = clamp(uint((floor(_1728.y * _48_m25.z) + _1728.x) * _48_m25.y), 0u, 127u);
                uint _1752 = asuint(_48_m27[_1748].x);
                float2 _1753 = spvUnpackHalf2x16(_1752);
                float _1754 = _1753.x;
                float _1896;
                if (_1754 >= 0.0f)
                {
                    float4x4 _1763 = _48_m22;
                    _1763[0].w = _48_m27[_1748].y;
                    _1763[1].w = _48_m27[_1748].z;
                    _1763[2].w = _48_m27[_1748].w;
                    float4 _1770 = mul(_1763, _1727);
                    float3 _1771 = _1770.xyz;
                    float _1895;
                    if (all(bool3(_1771.x > 0.0f.xxx.x, _1771.y > 0.0f.xxx.y, _1771.z > 0.0f.xxx.z)) && all(bool3(_1771.x < 1.0f.xxx.x, _1771.y < 1.0f.xxx.y, _1771.z < 1.0f.xxx.z)))
                    {
                        float _1788 = _1770.z;
                        float2 _1794 = float4((_1770.xy * _48_m24.zw) + float2(_1754, spvUnpackHalf2x16(_1752 >> 16u).x), _1788, 1.0f).xy * _48_m26.zw;
                        float2 _1796 = floor(_1794 + 0.5f.xx);
                        float2 _1797 = _1794 - _1796;
                        float _1798 = _1797.x;
                        float _1799 = _1798 + 0.5f;
                        float _1801 = (_1799 * _1799) * 0.5f;
                        float _1804 = min(_1798, 0.0f);
                        float _1808 = max(_1798, 0.0f);
                        float4 _1812 = float4(_1801 - _1798, (1.0f - _1798) - (_1804 * _1804), (_1798 + 1.0f) - (_1808 * _1808), _1801) * 0.44444000720977783203125f;
                        float _1813 = _1797.y;
                        float _1814 = _1813 + 0.5f;
                        float _1816 = (_1814 * _1814) * 0.5f;
                        float _1819 = min(_1813, 0.0f);
                        float _1823 = max(_1813, 0.0f);
                        float4 _1827 = float4(_1816 - _1813, (1.0f - _1813) - (_1819 * _1819), (_1813 + 1.0f) - (_1823 * _1823), _1816) * 0.44444000720977783203125f;
                        float2 _1829 = _1812.yw;
                        float2 _1830 = _1812.xz + _1829;
                        float2 _1832 = _1827.yw;
                        float2 _1833 = _1827.xz + _1832;
                        float2 _1839 = ((_1829 / _1830) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1841 = ((_1832 / _1833) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1843 = _1796 * _48_m26.xy;
                        float _1844 = _1839.x;
                        float _1845 = _1841.x;
                        float _1848 = _1839.y;
                        float _1851 = _1841.y;
                        float _1856 = _1830.x;
                        float _1857 = _1833.x;
                        float _1859 = _1830.y;
                        float _1861 = _1833.y;
                        _1895 = ((((_1856 * _1857) * _52.SampleCmpLevelZero(_26, float3(_1843 + float2(_1844, _1845), _364).xy, _1788)) + ((_1859 * _1857) * _52.SampleCmpLevelZero(_26, float3(_1843 + float2(_1848, _1845), _364).xy, _1788))) + ((_1856 * _1861) * _52.SampleCmpLevelZero(_26, float3(_1843 + float2(_1844, _1851), _364).xy, _1788))) + ((_1859 * _1861) * _52.SampleCmpLevelZero(_26, float3(_1843 + float2(_1848, _1851), _364).xy, _1788));
                    }
                    else
                    {
                        _1895 = 1.0f;
                    }
                    _1896 = _1895;
                }
                else
                {
                    _1896 = 1.0f;
                }
                _1897 = _1896;
            }
            else
            {
                _1897 = 1.0f;
            }
            _1899 = _1699 ? _1897 : _1698;
            _1900 = _1897;
        }
        else
        {
            _1899 = _1698;
            _1900 = 1.0f;
        }
        float _1903 = lerp(lerp(_1900, _1899, _1481), min(_1900, _1899), _48_m8.x);
        float _1954;
        if (_1903 > 0.001000000047497451305389404296875f)
        {
            float3 _1910 = _428 - _18_m65.xyz;
            float2 _1920 = (_1910 + (_18_m68.xyz * _1910.y)).xz * _18_m66.z;
            float2 _1929 = _18_m67.xy * _18_m75.w;
            _1954 = _1903 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1920 + _1929, 0.0f), _51.SampleLevel(_24, (_1920 * _18_m67.w) + _1929, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1910.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1954 = _1903;
        }
        _1959 = float2(lerp(_1954, _48_m7.z, _48_m7.w), _1954);
        break;
    } while(false);
    float _1964 = lerp(1.0f, min(1.0f, _1959.x), _48_m6.x);
    float4 _2099;
    if (_1964 > 0.001000000047497451305389404296875f)
    {
        float3 _1974 = -_46_m0.xyz;
        float _1979 = dot(_1974, _1165);
        float3 _1981 = _1165 - (_1974 * _1979);
        bool3 _1983 = (_1979 < _46_m4.z).xxx;
        float3 _1991 = normalize((_1974 * _46_m4.z) + ((_1981 * rsqrt(max(6.103515625e-05f, dot(_1981, _1981)))) * _46_m4.y));
        float3 _1992 = float3(_1983.x ? _1991.x : _1165.x, _1983.y ? _1991.y : _1165.y, _1983.z ? _1991.z : _1165.z);
        float3 _1996 = _1992 + _465;
        float3 _2000 = _1996 * rsqrt(max(6.103515625e-05f, dot(_1996, _1996)));
        float _2001 = clamp(dot(_1992, _630), 0.0f, 1.0f);
        float _2003 = clamp(dot(_630, _2000), 0.0f, 1.0f);
        float _2006 = clamp(_683, 0.0f, 1.0f);
        float _2007 = _551 * _551;
        float _2008 = _2007 * _2007;
        float _2029 = (((_2003 * _2008) - _2003) * _2003) + 1.0f;
        float _2032 = 1.0f - clamp(dot(_465, _2000), 0.0f, 1.0f);
        float _2033 = _2032 * _2032;
        float _2035 = (_2032 * _2033) * _2033;
        float _2059 = 1.0f - _551;
        float _2066 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2059 * (1.04997003078460693359375f + (_2059 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2059))))));
        float _2067 = 1.0f - _2066;
        float3 _2070 = _682 + ((1.0f.xxx - _682) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0x021E5FC7:
        float3 _2086 = ((clamp((min(((_682 * (1.0f - _2035)) + _2035.xxx) * ((_2008 / (_2029 * _2029)) * (0.5f / (((_2001 * sqrt(((((-_2006) * _2008) + _2006) * _2006) + _2008)) + (_2006 * sqrt(((((-_2001) * _2008) + _2001) * _2001) + _2008))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2070 * (((_56.SampleLevel(_23, (float2(_2006, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2001, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2066) / _2067)) * _2070) / (1.0f.xxx - (_2070 * _2067)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2001) + ((_678 * 1.0f) * _2001)) * _46_m1.xyz;
        */
        // RenoDX code: reduce opaque glass specular lighting when the transparency improvement is enabled.
        float3 _2086 = ((clamp((min(((_682 * (1.0f - _2035)) + _2035.xxx) * ((_2008 / (_2029 * _2029)) * (0.5f / (((_2001 * sqrt(((((-_2006) * _2008) + _2006) * _2006) + _2008)) + (_2006 * sqrt(((((-_2001) * _2008) + _2001) * _2001) + _2008))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2070 * (((_56.SampleLevel(_23, (float2(_2006, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2001, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2066) / _2067)) * _2070) / (1.0f.xxx - (_2070 * _2067)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f) * _2001) + ((_678 * 1.0f) * _2001)) * _46_m1.xyz;
        float3 _2097 = lerp(_2086, _2086 * _53.SampleBias(_23, float2(_1964, 0.5f), _18_m16).xyz, (1.0f - _1964).xxx) * 1.0f;
        _2099 = float4(_2097.x, _2097.y, _2097.z, 0.0f.xxxx.w);
    }
    else
    {
        _2099 = 0.0f.xxxx;
    }
    float2 _2101 = floor(_1174 * 0.03125f);
    int _2109 = int((_2101.x + (_2101.y * _44_m5)) * 8.0f);
    float _2116 = floor(_738 - (_18_m3.y * _44_m11));
    float _2120 = clamp(_2116, 0.0f, _44_m7 - 1.0f);
    int _2122 = int(_2120 * 8.0f);
    float3 _2124;
    float _2127;
    _2124 = 0.0f.xxx;
    _2127 = 1.0f;
    float3 _2125;
    float _2128;
    [loop]
    for (int _2129 = 0; _2129 <= 7; _2124 = _2125, _2127 = _2128, _2129++)
    {
        uint _2147 = (_2116 <= _2120) ? (_31.Load(uint(_2109 + _2129) * 4 + 0) & _31.Load(uint((_18_m21.y + _2122) + _2129) * 4 + 0)) : 0u;
        uint _2148 = uint(_2129);
        float3 _2152;
        _2128 = _2127;
        _2152 = 0.0f.xxx;
        uint _2155;
        float _2150;
        float3 _2153;
        [loop]
        for (uint _2154 = _2147; _2154 != 0u; _2128 = _2150, _2152 = _2153, _2154 = _2155)
        {
            uint _2159 = firstbitlow(_2154);
            _2155 = _2154 ^ (1u << (_2159 & 31u));
            int _2165 = int((32u * _2148) + _2159) * 8;
            int _2168 = _2165 + 1;
            int _2171 = _2165 + 2;
            int _2174 = _2165 + 3;
            int _2177 = _2165 + 5;
            int _2180 = _2165 + 6;
            int _2183 = _2165 + 7;
            uint _2187 = uint(_46_m6[_2177].w);
            float _2262;
            if ((_2187 & 1u) == 1u)
            {
                uint _2193 = asuint(_46_m6[_2177].x);
                uint _2200 = asuint(_46_m6[_2177].y);
                uint _2207 = asuint(_46_m6[_2177].z);
                uint _2214 = asuint(_46_m6[_2180].x);
                uint _2221 = asuint(_46_m6[_2180].y);
                uint _2228 = asuint(_46_m6[_2180].z);
                float3 _2247 = abs(mul(float4(_428 - _46_m6[_2168].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2193).x, spvUnpackHalf2x16(_2207).x, spvUnpackHalf2x16(_2221).x, 0.0f), float4(spvUnpackHalf2x16(_2193 >> 16u).x, spvUnpackHalf2x16(_2207 >> 16u).x, spvUnpackHalf2x16(_2221 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2200).x, spvUnpackHalf2x16(_2214).x, spvUnpackHalf2x16(_2228).x, 0.0f), float4(spvUnpackHalf2x16(_2200 >> 16u).x, spvUnpackHalf2x16(_2214 >> 16u).x, spvUnpackHalf2x16(_2228 >> 16u).x, 0.0f))).xyz);
                float _2254 = _46_m6[_2183].x * 0.5f;
                float _2260 = 1.0f - clamp((max(max(_2247.x, _2247.y), _2247.z) - (_2254 + 0.5f)) / (0.5f - _2254), 0.0f, 1.0f);
                _2262 = _2260 * _2260;
            }
            else
            {
                _2262 = 1.0f;
            }
            bool _2266 = _46_m6[_2174].z > 0.5f;
            if ((false || (_2262 < 0.001000000047497451305389404296875f)) || _2266)
            {
                _2150 = _2128;
                _2153 = _2152;
                continue;
            }
            float _3377;
            float3 _3378;
            if (_46_m6[_2165].w < 1.5f)
            {
                float3 _2754 = float3(0.100000001490116119384765625f, _551, 1.0f);
                float _2763 = (0.5f + (0.5f * _46_m6[_2171].y)) - abs(_46_m6[_2171].x);
                float _2764 = _46_m6[_2171].y - _2763;
                float _2771 = abs(max((1.0f - abs(_2763)) - abs(_2764), 0.00048828125f));
                float3 _2775 = normalize(float3(_2763, _2764, (_46_m6[_2171].x >= 0.0f) ? _2771 : (-_2771)));
                float3 _2776 = _46_m6[_2168].xyz - _428;
                float _2777 = dot(_2776, _2776);
                float _2778 = rsqrt(_2777);
                float3 _2779 = _2776 * _2778;
                float _2783 = clamp(_46_m6[_2183].y * _2778, 0.0f, 1.0f);
                int _2788 = int(_46_m6[_2183].w);
                float3 _2789 = _2775 * _46_m6[_2171].z;
                float3 _2790 = _2789 * 0.5f;
                float3 _2791 = _2776 - _2790;
                float3 _2792 = _2776 + _2790;
                bool _2795 = (uint(_46_m6[_2165].w) & 1u) == 0u;
                bool _2798 = _2795 || ((_2187 & 2u) != 0u);
                bool _2801 = (!_2795) && (_46_m6[_2171].z > 0.0f);
                float _2820;
                float _2821;
                if (_2801)
                {
                    float _2805 = length(_2791);
                    float _2806 = length(_2792);
                    _2820 = clamp(0.5f * ((dot(_630, _2791) / _2805) + (dot(_630, _2792) / _2806)), 0.0f, 1.0f);
                    _2821 = 1.0f / ((((_2805 * _2806) + dot(_2791, _2792)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2820 = clamp(dot(_630, _2779), 0.0f, 1.0f);
                    _2821 = 1.0f;
                }
                float _2843;
                if (_46_m6[_2180].w < 0.0f)
                {
                    float _2837 = _2777 * (_46_m6[_2168].w * _46_m6[_2168].w);
                    float _2840 = clamp(1.0f - (_2837 * _2837), 0.0f, 1.0f);
                    _2843 = lerp(1.0f / (_2777 + 1.0f), _2821, float(_2801)) * (_2840 * _2840);
                }
                else
                {
                    float3 _2826 = _2776 * _46_m6[_2168].w;
                    _2843 = _2821 * pow(1.0f - clamp(dot(_2826, _2826), 0.0f, 1.0f), _46_m6[_2180].w);
                }
                float _2849 = clamp((dot(_2779, -_2775) - _46_m6[_2171].z) * _46_m6[_2171].w, 0.0f, 1.0f);
                float _2853 = _2843 * lerp(1.0f, _2849 * _2849, float(_2795));
                float _2953;
                if ((!_2801) && (_2788 >= 0))
                {
                    uint _2859 = uint(_2788);
                    float2 _2946;
                    [branch]
                    if (_2795)
                    {
                        float4 _2936 = mul(_66_m1[_2859], _432);
                        _2946 = _66_m0[_2859].xy + (clamp(_2936.xy / _2936.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2859].zw);
                    }
                    else
                    {
                        float3 _2873 = mul(float4(-_2776, 0.0f), _66_m1[_2859]).xyz;
                        float3 _371 = _2873;
                        float3 _370 = _2873;
                        float3 _369 = abs(_2873);
                        uint _2882 = uint(int(_369.y > _369.x));
                        uint _2888 = (_369.z > _369[_2882]) ? 2u : _2882;
                        uint _2894 = (_2888 * 2u) + uint(_370[_2888] < 0.0f);
                        float _2898 = abs(_371[_2894 / 2u]);
                        float _2918 = 0.5f - (0.000244140625f / _66_m0[_2859].w);
                        _2946 = _66_m0[_2859].xy + (clamp(float2((float(_2894) + ((((_371[uint(_345[_2894].x)] * _346[_2894].x) / _2898) * _2918) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_371[uint(_345[_2894].y)] * _346[_2894].y) / _2898) * _2918)), 0.0f.xx, 1.0f.xx) * _66_m0[_2859].zw);
                    }
                    _2953 = _2853 * _64.SampleLevel(_23, _2946, 0.0f).x;
                }
                else
                {
                    _2953 = _2853;
                }
                bool _2954 = _2953 > 0.0f;
                float _3242;
                if (_2954)
                {
                    int _3006;
                    if (_2798)
                    {
                        _3006 = int(_46_m6[_2174].x);
                    }
                    else
                    {
                        uint _2961 = asuint(_46_m6[_2171].w);
                        uint _2963 = asuint(_46_m6[_2174].x);
                        float3 _2964 = _428 - _46_m6[_2168].xyz;
                        float3 _2965 = abs(_2964);
                        float _2966 = _2965.x;
                        float _2967 = _2965.y;
                        float _2969 = _2965.z;
                        int _3001;
                        if ((_2966 > _2967) && (_2966 > _2969))
                        {
                            _3001 = int((_2964.x > 0.0f) ? (_2961 >> 24u) : ((_2961 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2993;
                            if (_2967 > _2969)
                            {
                                _2993 = int((_2964.y > 0.0f) ? ((_2961 >> 8u) & 255u) : (_2961 & 255u));
                            }
                            else
                            {
                                _2993 = int((_2964.z > 0.0f) ? ((_2963 >> 8u) & 255u) : (_2963 & 255u));
                            }
                            _3001 = _2993;
                        }
                        _3006 = (_3001 < 80) ? _3001 : (-1);
                    }
                    float3 _3016 = (_428 - ((-_2779) * _48_m11[_3006].x)) + (_630 * (_48_m11[_3006].y * 5.0f));
                    float4 _3023 = mul(_48_m10[_3006], float4(_3016, 1.0f));
                    float _3024 = _3023.w;
                    float3 _3027 = _3023.xyz / _3024.xxx;
                    float2 _3028 = _3027.xy;
                    float3 _3036 = _3027.xyz;
                    bool3 _3037 = bool3(_3036.x <= 0.0f.xxx.x, _3036.y <= 0.0f.xxx.y, _3036.z <= 0.0f.xxx.z);
                    bool3 _3038 = bool3(_3036.x >= 1.0f.xxx.x, _3036.y >= 1.0f.xxx.y, _3036.z >= 1.0f.xxx.z);
                    float _3041 = _3027.z;
                    float2 _3052 = ((_3028 * (_48_m12[_3006].zw - _48_m12[_3006].xy)) + _48_m12[_3006].xy).xy * _48_m13.zw;
                    float2 _3054 = floor(_3052 + 0.5f.xx);
                    float2 _3055 = _3052 - _3054;
                    float _3056 = _3055.x;
                    float _3057 = _3056 + 0.5f;
                    float _3058 = _3057 * _3057;
                    float _3061 = 1.0f - _3056;
                    float _3062 = min(_3056, 0.0f);
                    float _3065 = _3056 + 1.0f;
                    float _3066 = max(_3056, 0.0f);
                    float _3077 = _3055.y;
                    float _3078 = _3077 + 0.5f;
                    float _3079 = _3078 * _3078;
                    float _3082 = 1.0f - _3077;
                    float _3083 = min(_3077, 0.0f);
                    float _3086 = _3077 + 1.0f;
                    float _3087 = max(_3077, 0.0f);
                    float3 _3099 = float3(0.1599999964237213134765625f * _3061, 0.1599999964237213134765625f * ((_3065 - (_3066 * _3066)) + 1.0f), _3058 * 0.07999999821186065673828125f);
                    float3 _3100 = float3(0.1599999964237213134765625f * ((_3058 * 0.5f) - _3056), 0.1599999964237213134765625f * ((_3061 - (_3062 * _3062)) + 1.0f), 0.1599999964237213134765625f * _3065) + _3099;
                    float3 _3102 = float3(0.1599999964237213134765625f * _3082, 0.1599999964237213134765625f * ((_3086 - (_3087 * _3087)) + 1.0f), _3079 * 0.07999999821186065673828125f);
                    float3 _3103 = float3(0.1599999964237213134765625f * ((_3079 * 0.5f) - _3077), 0.1599999964237213134765625f * ((_3082 - (_3083 * _3083)) + 1.0f), 0.1599999964237213134765625f * _3086) + _3102;
                    float3 _3109 = ((_3099 / _3100) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3111 = ((_3102 / _3103) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3113 = _3054 * _48_m13.xy;
                    float _3114 = _3109.x;
                    float _3115 = _3111.x;
                    float _3118 = _3109.y;
                    float _3121 = _3109.z;
                    float _3124 = _3111.y;
                    float _3131 = _3111.z;
                    float _3138 = _3100.x;
                    float _3139 = _3103.x;
                    float _3141 = _3100.y;
                    float _3143 = _3100.z;
                    float _3145 = _3103.y;
                    float _3149 = _3103.z;
                    float _3207 = (((((((_3138 * _3139) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3114, _3115), _364).xy, _3041)) + ((_3141 * _3139) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3118, _3115), _364).xy, _3041))) + ((_3143 * _3139) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3121, _3115), _364).xy, _3041))) + ((_3138 * _3145) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3114, _3124), _364).xy, _3041))) + ((_3141 * _3145) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3118, _3124), _364).xy, _3041))) + ((_3143 * _3145) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3121, _3124), _364).xy, _3041))) + ((_3138 * _3149) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3114, _3131), _364).xy, _3041));
                    float2 _3228 = min(_3028, 1.0f.xx - _3028);
                    _3242 = (_3006 >= 0) ? lerp(1.0f, (any(bool3(_3037.x || _3038.x, _3037.y || _3038.y, _3037.z || _3038.z)) || ((asuint(_3041) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3207 + ((_3141 * _3149) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3118, _3131), _364).xy, _3041))) + ((_3143 * _3149) * _50.SampleCmpLevelZero(_26, float3(_3113 + float2(_3121, _3131), _364).xy, _3041))), _2798 ? min(_48_m11[_3006].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_3006].z - _3024) * 0.25f, min(_3228.x, _3228.y)))) : _48_m11[_3006].w) : 1.0f;
                }
                else
                {
                    _3242 = 1.0f;
                }
                float3 _3265;
                float3 _3266;
                if (_2801)
                {
                    float3 _3245 = _2754 * _2754;
                    float _3254 = dot(_1165, _2789);
                    _3265 = _3245 / clamp(_3245 + (0.5f * clamp(_46_m6[_2171].z * _2778, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3266 = normalize(_2791 + (_2789 * clamp(dot(_2791, (_1165 * _3254) - _2789) / ((_46_m6[_2171].z * _46_m6[_2171].z) - (_3254 * _3254)), 0.0f, 1.0f)));
                }
                else
                {
                    _3265 = 1.0f.xxx;
                    _3266 = _2779;
                }
                float3 _3267 = _3266 + _465;
                float3 _3271 = _3267 * rsqrt(max(6.103515625e-05f, dot(_3267, _3267)));
                float3 _3376;
                if (_2954)
                {
                    float _3274 = clamp(_2820, 0.0f, 1.0f);
                    float _3276 = clamp(dot(_630, _3271), 0.0f, 1.0f);
                    float _3278 = clamp(dot(_465, _3271), 0.0f, 1.0f);
                    float _3279 = clamp(_683, 0.0f, 1.0f);
                    float _3280 = _551 * _551;
                    float _3290;
                    if (_2783 > 0.0f)
                    {
                        _3290 = clamp(_3280 + ((_2783 * _2783) / ((_3278 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3290 = _3280;
                    }
                    float _3291 = _3290 * _3290;
                    float _3312 = (((_3276 * _3291) - _3276) * _3276) + 1.0f;
                    float _3317 = 1.0f - _3278;
                    float _3318 = _3317 * _3317;
                    float _3320 = (_3317 * _3318) * _3318;
                    float _3344 = 1.0f - _551;
                    float _3351 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3344 * (1.04997003078460693359375f + (_3344 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3344))))));
                    float _3352 = 1.0f - _3351;
                    float3 _3355 = _682 + ((1.0f.xxx - _682) * 0.0476190485060214996337890625f);
                    float3 _3375 = ((clamp((min(((_682 * (1.0f - _3320)) + _3320.xxx) * (((_3291 / (_3312 * _3312)) * _3265.y) * (0.5f / (((_3274 * sqrt(((((-_3279) * _3291) + _3279) * _3279) + _3291)) + (_3279 * sqrt(((((-_3274) * _3291) + _3274) * _3274) + _3291))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3355 * (((_56.SampleLevel(_23, (float2(_3279, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3274, _551) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3351) / _3352)) * _3355) / (1.0f.xxx - (_3355 * _3352)))) * _46_m6[_2183].z, 0.0f.xxx, 1000.0f.xxx) * _2820) + ((_678 * _3265.z) * _2820)) * (((_46_m6[_2165].xyz * _2953) * _3242) * _2262);
                    _3376 = _3375;
                }
                else
                {
                    _3376 = 0.0f.xxx;
                }
                _3377 = _2128;
                _3378 = _3376;
            }
            else
            {
                float _2752;
                do
                {
                    if (_2266)
                    {
                        _2752 = 1.0f;
                        break;
                    }
                    float _2286 = (0.5f + (0.5f * _46_m6[_2171].y)) - abs(_46_m6[_2171].x);
                    float _2287 = _46_m6[_2171].y - _2286;
                    float _2294 = abs(max((1.0f - abs(_2286)) - abs(_2287), 0.00048828125f));
                    float3 _2298 = normalize(float3(_2286, _2287, (_46_m6[_2171].x >= 0.0f) ? _2294 : (-_2294)));
                    float3 _2299 = _46_m6[_2168].xyz - _428;
                    float _2300 = dot(_2299, _2299);
                    float3 _2302 = _2299 * rsqrt(_2300);
                    int _2305 = int(_46_m6[_2183].w);
                    float3 _2307 = (_2298 * _46_m6[_2171].z) * 0.5f;
                    float3 _2308 = _2299 - _2307;
                    float3 _2309 = _2299 + _2307;
                    bool _2312 = (uint(_46_m6[_2165].w) & 1u) == 0u;
                    bool _2315 = _2312 || ((_2187 & 2u) != 0u);
                    bool _2318 = (!_2312) && (_46_m6[_2171].z > 0.0f);
                    float _2330;
                    if (_2318)
                    {
                        _2330 = 1.0f / ((((length(_2308) * length(_2309)) + dot(_2308, _2309)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2330 = 1.0f;
                    }
                    float _2352;
                    if (_46_m6[_2180].w < 0.0f)
                    {
                        float _2346 = _2300 * (_46_m6[_2168].w * _46_m6[_2168].w);
                        float _2349 = clamp(1.0f - (_2346 * _2346), 0.0f, 1.0f);
                        _2352 = lerp(1.0f / (_2300 + 1.0f), _2330, float(_2318)) * (_2349 * _2349);
                    }
                    else
                    {
                        float3 _2335 = _2299 * _46_m6[_2168].w;
                        _2352 = _2330 * pow(1.0f - clamp(dot(_2335, _2335), 0.0f, 1.0f), _46_m6[_2180].w);
                    }
                    float _2358 = clamp((dot(_2302, -_2298) - _46_m6[_2171].z) * _46_m6[_2171].w, 0.0f, 1.0f);
                    float _2362 = _2352 * lerp(1.0f, _2358 * _2358, float(_2312));
                    float _2462;
                    if ((!_2318) && (_2305 >= 0))
                    {
                        uint _2368 = uint(_2305);
                        float2 _2455;
                        [branch]
                        if (_2312)
                        {
                            float4 _2445 = mul(_66_m1[_2368], _432);
                            _2455 = _66_m0[_2368].xy + (clamp(_2445.xy / _2445.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2368].zw);
                        }
                        else
                        {
                            float3 _2382 = mul(float4(-_2299, 0.0f), _66_m1[_2368]).xyz;
                            float3 _374 = _2382;
                            float3 _373 = _2382;
                            float3 _372 = abs(_2382);
                            uint _2391 = uint(int(_372.y > _372.x));
                            uint _2397 = (_372.z > _372[_2391]) ? 2u : _2391;
                            uint _2403 = (_2397 * 2u) + uint(_373[_2397] < 0.0f);
                            float _2407 = abs(_374[_2403 / 2u]);
                            float _2427 = 0.5f - (0.000244140625f / _66_m0[_2368].w);
                            _2455 = _66_m0[_2368].xy + (clamp(float2((float(_2403) + ((((_374[uint(_345[_2403].x)] * _346[_2403].x) / _2407) * _2427) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_374[uint(_345[_2403].y)] * _346[_2403].y) / _2407) * _2427)), 0.0f.xx, 1.0f.xx) * _66_m0[_2368].zw);
                        }
                        _2462 = _2362 * _64.SampleLevel(_23, _2455, 0.0f).x;
                    }
                    else
                    {
                        _2462 = _2362;
                    }
                    float _2751;
                    if (_2462 > 0.0f)
                    {
                        int _2515;
                        if (_2315)
                        {
                            _2515 = int(_46_m6[_2174].x);
                        }
                        else
                        {
                            uint _2470 = asuint(_46_m6[_2171].w);
                            uint _2472 = asuint(_46_m6[_2174].x);
                            float3 _2473 = _428 - _46_m6[_2168].xyz;
                            float3 _2474 = abs(_2473);
                            float _2475 = _2474.x;
                            float _2476 = _2474.y;
                            float _2478 = _2474.z;
                            int _2510;
                            if ((_2475 > _2476) && (_2475 > _2478))
                            {
                                _2510 = int((_2473.x > 0.0f) ? (_2470 >> 24u) : ((_2470 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2502;
                                if (_2476 > _2478)
                                {
                                    _2502 = int((_2473.y > 0.0f) ? ((_2470 >> 8u) & 255u) : (_2470 & 255u));
                                }
                                else
                                {
                                    _2502 = int((_2473.z > 0.0f) ? ((_2472 >> 8u) & 255u) : (_2472 & 255u));
                                }
                                _2510 = _2502;
                            }
                            _2515 = (_2510 < 80) ? _2510 : (-1);
                        }
                        float3 _2525 = (_428 - ((-_2302) * _48_m11[_2515].x)) + (_630 * (_48_m11[_2515].y * 5.0f));
                        float4 _2532 = mul(_48_m10[_2515], float4(_2525, 1.0f));
                        float _2533 = _2532.w;
                        float3 _2536 = _2532.xyz / _2533.xxx;
                        float2 _2537 = _2536.xy;
                        float3 _2545 = _2536.xyz;
                        bool3 _2546 = bool3(_2545.x <= 0.0f.xxx.x, _2545.y <= 0.0f.xxx.y, _2545.z <= 0.0f.xxx.z);
                        bool3 _2547 = bool3(_2545.x >= 1.0f.xxx.x, _2545.y >= 1.0f.xxx.y, _2545.z >= 1.0f.xxx.z);
                        float _2550 = _2536.z;
                        float2 _2561 = ((_2537 * (_48_m12[_2515].zw - _48_m12[_2515].xy)) + _48_m12[_2515].xy).xy * _48_m13.zw;
                        float2 _2563 = floor(_2561 + 0.5f.xx);
                        float2 _2564 = _2561 - _2563;
                        float _2565 = _2564.x;
                        float _2566 = _2565 + 0.5f;
                        float _2567 = _2566 * _2566;
                        float _2570 = 1.0f - _2565;
                        float _2571 = min(_2565, 0.0f);
                        float _2574 = _2565 + 1.0f;
                        float _2575 = max(_2565, 0.0f);
                        float _2586 = _2564.y;
                        float _2587 = _2586 + 0.5f;
                        float _2588 = _2587 * _2587;
                        float _2591 = 1.0f - _2586;
                        float _2592 = min(_2586, 0.0f);
                        float _2595 = _2586 + 1.0f;
                        float _2596 = max(_2586, 0.0f);
                        float3 _2608 = float3(0.1599999964237213134765625f * _2570, 0.1599999964237213134765625f * ((_2574 - (_2575 * _2575)) + 1.0f), _2567 * 0.07999999821186065673828125f);
                        float3 _2609 = float3(0.1599999964237213134765625f * ((_2567 * 0.5f) - _2565), 0.1599999964237213134765625f * ((_2570 - (_2571 * _2571)) + 1.0f), 0.1599999964237213134765625f * _2574) + _2608;
                        float3 _2611 = float3(0.1599999964237213134765625f * _2591, 0.1599999964237213134765625f * ((_2595 - (_2596 * _2596)) + 1.0f), _2588 * 0.07999999821186065673828125f);
                        float3 _2612 = float3(0.1599999964237213134765625f * ((_2588 * 0.5f) - _2586), 0.1599999964237213134765625f * ((_2591 - (_2592 * _2592)) + 1.0f), 0.1599999964237213134765625f * _2595) + _2611;
                        float3 _2618 = ((_2608 / _2609) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2620 = ((_2611 / _2612) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2622 = _2563 * _48_m13.xy;
                        float _2623 = _2618.x;
                        float _2624 = _2620.x;
                        float _2627 = _2618.y;
                        float _2630 = _2618.z;
                        float _2633 = _2620.y;
                        float _2640 = _2620.z;
                        float _2647 = _2609.x;
                        float _2648 = _2612.x;
                        float _2650 = _2609.y;
                        float _2652 = _2609.z;
                        float _2654 = _2612.y;
                        float _2658 = _2612.z;
                        float _2716 = (((((((_2647 * _2648) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2623, _2624), _364).xy, _2550)) + ((_2650 * _2648) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2627, _2624), _364).xy, _2550))) + ((_2652 * _2648) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2630, _2624), _364).xy, _2550))) + ((_2647 * _2654) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2623, _2633), _364).xy, _2550))) + ((_2650 * _2654) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2627, _2633), _364).xy, _2550))) + ((_2652 * _2654) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2630, _2633), _364).xy, _2550))) + ((_2647 * _2658) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2623, _2640), _364).xy, _2550));
                        float2 _2737 = min(_2537, 1.0f.xx - _2537);
                        _2751 = (_2515 >= 0) ? lerp(1.0f, (any(bool3(_2546.x || _2547.x, _2546.y || _2547.y, _2546.z || _2547.z)) || ((asuint(_2550) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2716 + ((_2650 * _2658) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2627, _2640), _364).xy, _2550))) + ((_2652 * _2658) * _50.SampleCmpLevelZero(_26, float3(_2622 + float2(_2630, _2640), _364).xy, _2550))), _2315 ? min(_48_m11[_2515].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2515].z - _2533) * 0.25f, min(_2737.x, _2737.y)))) : _48_m11[_2515].w) : 1.0f;
                    }
                    else
                    {
                        _2751 = 1.0f;
                    }
                    _2752 = _2751;
                    break;
                } while(false);
                _3377 = _2128 * _2752;
                _3378 = 0.0f.xxx;
            }
            _2150 = _3377;
            _2153 = _2152 + _3378;
        }
        _2125 = _2124 + _2152;
    }
    /*
    Vanilla shader code from 0x021E5FC7:
    float3 _3385 = (((((float3(_1144, _1149, _1154) * _678) * lerp(1.0f, _521.z, _39_m4)) * _18_m22.x) + ((((_1438 * _18_m23.z) * _18_m22.y) * ((_682 * _697.x) + (clamp(50.0f * _682.y, 0.0f, 1.0f) * _697.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _577) * _39_m55, _569.xxx) * lerp(_605, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2099.xyz + (_2124 * _2127)).xyz;
    */
    // RenoDX code: reduce opaque glass lighting terms when the transparency improvement is enabled.
    float3 _3385 = (((((float3(_1144, _1149, _1154) * (_678 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _521.z, _39_m4)) * _18_m22.x) + (((((_1438 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_682 * _697.x) + (clamp(50.0f * _682.y, 0.0f, 1.0f) * _697.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _577) * _39_m55, _569.xxx) * lerp(_605, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2099.xyz + ((_2124 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2127)).xyz;
    float4 _3386 = float4(_3385.x, _3385.y, _3385.z, _366.w);
    _3386.w = _546;
    float _3403 = _428.y * _18_m46.w;
    float _3408 = max(0.00999999977648258209228515625f, _3403 + _18_m47.w);
    float3 _3422 = exp(_18_m45.xyz * ((-max(0.0f, (_466 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3408)) / _3408) * exp(_3403 + _18_m48.w))));
    float _3425 = dot(_1164, _18_m44.xyz);
    float _3431 = _18_m45.w * _18_m45.w;
    float _3435 = (1.0f + _3431) - ((2.0f * _18_m45.w) * _3425);
    float3 _3767;
    float _3768;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3593 = (uint3(int3(int(_737.x), int(_737.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3594 = _3593.y;
        uint _3595 = _3593.z;
        uint _3598 = _3593.x + (_3594 * _3595);
        uint _3600 = _3594 + (_3595 * _3598);
        uint _3602 = _3595 + (_3598 * _3600);
        uint _3604 = _3598 + (_3600 * _3602);
        float _3628 = dot(_1164, -_16_m0[2].xyz);
        float3 _3638 = _428 - _16_m11.xyz;
        float _3640 = (_18_m55.w * ((_3628 > 5.9604644775390625e-08f) ? (1.0f / _3628) : 0.0f)) * (1.0f / _466);
        float _3641 = _3638.y;
        float _3642 = _3640 * _3641;
        float _3644 = _16_m11.y + _3642;
        float _3645 = _3641 - _3642;
        float _3647 = (1.0f - _3640) * _466;
        float _3661 = max(-127.0f, _18_m49.z * _3645);
        float _3685 = max(-127.0f, _18_m52.x * _3645);
        float _3696 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3644 - _18_m49.x)))) * ((abs(_3661) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3661)) / _3661) : (0.693147182464599609375f - (0.2402265071868896484375f * _3661)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3644 - _18_m52.z)))) * ((abs(_3685) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3685)) / _3685) : (0.693147182464599609375f - (0.2402265071868896484375f * _3685))));
        float _3718 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3721 = clamp((max(clamp(exp2(-(_3696 * _3647)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3718, 0.0f, 1.0f);
        float4 _3761 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1174 + ((((float3(uint3(_3604, _3600 + (_3602 * _3604), _367) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_738 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_738 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3767 = _3761.xyz + (((_18_m51.xyz * (1.0f - _3721)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3696 * max(_3647 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3718))) * _3761.w);
        _3768 = _3761.w * _3721;
    }
    else
    {
        float3 _3465 = _428 - _16_m11.xyz;
        float _3467 = _3465.y;
        float _3481 = max(-127.0f, _18_m49.z * _3467);
        float _3505 = max(-127.0f, _18_m52.x * _3467);
        float _3516 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3481) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3481)) / _3481) : (0.693147182464599609375f - (0.2402265071868896484375f * _3481)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3505) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3505)) / _3505) : (0.693147182464599609375f - (0.2402265071868896484375f * _3505))));
        float _3538 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3541 = clamp((max(clamp(exp2(-(_3516 * _466)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3538, 0.0f, 1.0f);
        _3767 = (_18_m51.xyz * (1.0f - _3541)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3516 * max(_466 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3538));
        _3768 = _3541;
    }
    /*
    Vanilla shader code from 0x021E5FC7:
    float3 _3774 = ((_3386.xyz * (_3422 * _3768)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3425 * _3425)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3431) / max((12.56637096405029296875f * _3435) * sqrt(_3435), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3422)) * _3768) + _3767)).xyz;
    */
    // RenoDX code: apply improved glass and the selected hue-preserving fog blend.
    float3 _3774 = ((_3386.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3422 * _3768)) : (_3422 * _3768))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3425 * _3425)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3431) / max((12.56637096405029296875f * _3435) * sqrt(_3435), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3422)) * _3768 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3767 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    float3 _3784 = lerp(dot(_3774, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3774, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3794 = min(lerp(((sqrt(sqrt(abs(_650 * 0.5f))) * float2(int2(sign(_650)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _637.xx), 1.0f.xx);
    float4 _3795 = float4(_3794.x, _3794.y, _366.z, _366.w);
    _3795.z = float(clamp(max(dot(_3784.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _546, _546) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3795.w = lerp(0.0f, 0.699999988079071044921875f, _637);
    /*
    Vanilla shader code from 0x021E5FC7:
    _13 = float4(_3784.x, _3784.y, _3784.z, _3386.w);
    */
    // RenoDX code start: compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3784.x, _3784.y, _3784.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3386.w);
    _14 = _3795;
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
    return stage_output;
}

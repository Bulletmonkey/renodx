#include "../shared.h"

// Vulkan shader 0x6B833E77, decompiled from the matching game shader dump.

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

static float _364 = 0.0f;
static float4 _366 = 0.0f.xxxx;
static uint _367 = 0u;

static const float4 _344[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _345[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _346[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
[[vk::binding(6, 1)]]
cbuffer _38_39 : register(b6)
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

[[vk::binding(17, 0)]]
cbuffer _40_42 : register(b17)
{
    float4 _42_m0 : packoffset(c0);
    float4 _42_m1 : packoffset(c1);
    float4 _42_m2 : packoffset(c2);
    float4 _42_m3 : packoffset(c3);
    _41 _42_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _43_44 : register(b47)
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

[[vk::binding(14, 0)]]
cbuffer _45_46 : register(b14)
{
    float4 _46_m0 : packoffset(c0);
    float4 _46_m1 : packoffset(c1);
    float4 _46_m2 : packoffset(c2);
    float4 _46_m3 : packoffset(c3);
    float4 _46_m4 : packoffset(c4);
    uint4 _46_m5 : packoffset(c5);
    float4 _46_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _47_48 : register(b15)
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

[[vk::binding(49, 0)]]
cbuffer _65_66 : register(b49)
{
    float4 _66_m0[32] : packoffset(c0);
    column_major float4x4 _66_m1[32] : packoffset(c32);
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
[[vk::binding(5, 1)]]
Texture2D<float4> _32 : register(t5);
[[vk::binding(2, 1)]]
SamplerState _33 : register(s2);
[[vk::binding(3, 1)]]
Texture2D<float4> _34 : register(t3);
[[vk::binding(0, 1)]]
SamplerState _35 : register(s0);
[[vk::binding(4, 1)]]
Texture2D<float4> _36 : register(t4);
[[vk::binding(1, 1)]]
SamplerState _37 : register(s1);
[[vk::binding(9, 0)]]
Texture2D<float4> _49 : register(t9);
[[vk::binding(26, 0)]]
Texture2D<float4> _50 : register(t26);
[[vk::binding(8, 0)]]
Texture2D<float4> _51 : register(t8);
[[vk::binding(11, 0)]]
Texture2D<float4> _52 : register(t11);
[[vk::binding(10, 0)]]
Texture2D<float4> _53 : register(t10);
[[vk::binding(27, 0)]]
Texture2D<float4> _56 : register(t27);
[[vk::binding(34, 0)]]
Texture3D<float4> _57 : register(t34);
[[vk::binding(31, 0)]]
Texture3D<float4> _58 : register(t31);
[[vk::binding(33, 0)]]
Texture3D<float4> _59 : register(t33);
[[vk::binding(30, 0)]]
Texture3D<float4> _60 : register(t30);
[[vk::binding(32, 0)]]
Texture3D<float4> _61 : register(t32);
[[vk::binding(29, 0)]]
Texture3D<float4> _62 : register(t29);
[[vk::binding(35, 0)]]
Texture3D<float4> _63 : register(t35);
[[vk::binding(28, 0)]]
Texture2D<float4> _64 : register(t28);

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
    float2 _396 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _399 = float4(_396, gl_FragCoord.z, 1.0f);
    _399.y = -_396.y;
    float4 _402 = mul(_16_m6, _399);
    float3 _406 = _402.xyz / _402.w.xxx;
    float4 _410 = float4(_406, 1.0f);
    float _417 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _439 = 0.0f.xxx;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _439 = _16_m11.xyz - _406;
            break;
        }
        else
        {
            _439 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _440 = dot(_439, _439);
    float _442 = rsqrt(max(_440, 9.9999999392252902907785028219223e-09f));
    float3 _443 = _439 * _442;
    float _444 = _440 * _442;
    float2 _465 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
    float4 _479 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float4 _483 = _34.SampleBias(_35, _465, _39_m13 + _18_m16);
    _483.w = _483.w * _483.x;
    float2 _491 = ((_483.wy * 2.0f) - 1.0f.xx).xy;
    float2 _497 = _491 * _39_m0;
    float4 _499 = _36.SampleBias(_37, _465, _18_m16);
    float _515 = _479.w;
    float _518 = _515 * _39_m32.w;
    float _524 = lerp(_518, _518 * _8.x, _39_m59);
    float _529 = lerp(_39_m2, _39_m3, _499.y);
    float _539 = lerp(_499.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _547 = clamp(_39_m56, 0.0f, 1.0f);
    float _555 = clamp((lerp(1.0f, lerp(_515, _499.w, clamp(_39_m56 - 2.0f, 0.0f, 1.0f)), _547) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float _578 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _555);
    float3 _583 = lerp(clamp((_479.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _578).xxx + (_21_m0[_11]._m9.xyz * _578));
    float3 _608 = normalize(((_7.xyz * _497.x) + ((cross(_6, float4(_7.xyz, _417).xyz) * _417) * _497.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_491, _491), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _620 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _633 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _633.y = -_633.y;
    float _659 = 0.07999999821186065673828125f * _39_m1;
    float3 _660 = _583 * _539;
    float3 _661 = _583 - _660;
    float3 _665 = (_659 - (_659 * _539)).xxx + _660;
    float _666 = dot(_608, _443);
    float4 _669 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _529) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _670 = _669.x;
    float2 _680 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_670 * _670, exp2((-9.27999973297119140625f) * max(0.0f, _666))) * _670) + _669.y)) + _669.zw;
    uint2 _720 = uint2(0u, 0u);
    float _721 = 0.0f;
    if (_18_m24.y == 1.0f)
    {
        float4 _697 = mul(_18_m135, _410);
        float4 _700 = _697;
        _700.y = -_697.y;
        float4 _703 = _700 * (1.0f / _697.w);
        _720 = uint2(clamp(((_703.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _721 = 1.0f / ((_18_m2.z * _703.z) + _18_m2.w);
    }
    else
    {
        _720 = uint2(gl_FragCoord.xy);
        _721 = abs(mul(_16_m0, _410).z);
    }
    float3 _723 = _406 + (_608 * 0.25f);
    float3 _733 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _742 = _723 - (_18_m105.xyz + (_733 * (-_18_m107.w)));
    float _756 = max(clamp((max(abs(_742.x), abs(_742.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_742.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1058 = 0.0f.xxxx;
    float4 _1059 = 0.0f.xxxx;
    float4 _1060 = 0.0f.xxxx;
    float _1061 = 0.0f;
    float _1062 = 0.0f;
    if ((_18_m105.w != 0.0f) && (_756 < 1.0f))
    {
        float3 _769 = _723 - (_18_m105.xyz + (_733 * (-_18_m107.y)));
        float _783 = max(clamp((max(abs(_769.x), abs(_769.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_769.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _859 = 0.0f;
        float4 _860 = 0.0f.xxxx;
        float4 _861 = 0.0f.xxxx;
        float4 _862 = 0.0f.xxxx;
        if (_783 < 1.0f)
        {
            float3 _792 = ((_723 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _794 = _792 - floor(_792);
            float4 _798 = _57.SampleLevel(_24, _794, 0.0f);
            float _799 = 1.0f - _783;
            float _803 = _18_m106.y * 0.5f;
            float _808 = _794.x;
            float _809 = clamp(_794.y, _803, 1.0f - _803) * 0.3333333432674407958984375f;
            float _810 = _794.z;
            float4 _813 = _58.SampleLevel(_23, float3(_808, _809, _810), 0.0f);
            float _829 = _798.x;
            float3 _830 = ((_813.xyz * 4.0f) - 2.0f.xxx) * _829;
            float _839 = _798.y;
            float3 _840 = ((_58.SampleLevel(_23, float3(_808, _809 + 0.3333333432674407958984375f, _810), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _839;
            float _849 = _798.z;
            float3 _850 = ((_58.SampleLevel(_23, float3(_808, _809 + 0.666666686534881591796875f, _810), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _849;
            _859 = _756 + (_813.w * _799);
            _860 = float4(_850, _849) * _799;
            _861 = float4(_840, _839) * _799;
            _862 = float4(_830, _829) * _799;
        }
        else
        {
            _859 = _756;
            _860 = 0.0f.xxxx;
            _861 = 0.0f.xxxx;
            _862 = 0.0f.xxxx;
        }
        float3 _868 = _723 - (_18_m105.xyz + (_733 * (-_18_m107.z)));
        float _882 = max(clamp((max(abs(_868.x), abs(_868.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_868.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _962 = 0.0f;
        float4 _963 = 0.0f.xxxx;
        float4 _964 = 0.0f.xxxx;
        float4 _965 = 0.0f.xxxx;
        if (_882 < 1.0f)
        {
            float3 _891 = ((_723 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _893 = _891 - floor(_891);
            float4 _897 = _59.SampleLevel(_24, _893, 0.0f);
            float _899 = _783 * (1.0f - _882);
            float _903 = _18_m106.y * 0.5f;
            float _908 = _893.x;
            float _909 = clamp(_893.y, _903, 1.0f - _903) * 0.3333333432674407958984375f;
            float _910 = _893.z;
            float4 _913 = _60.SampleLevel(_23, float3(_908, _909, _910), 0.0f);
            float _929 = _897.x;
            float3 _930 = ((_913.xyz * 4.0f) - 2.0f.xxx) * _929;
            float _940 = _897.y;
            float3 _941 = ((_60.SampleLevel(_23, float3(_908, _909 + 0.3333333432674407958984375f, _910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _940;
            float _951 = _897.z;
            float3 _952 = ((_60.SampleLevel(_23, float3(_908, _909 + 0.666666686534881591796875f, _910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _951;
            _962 = _859 + (_913.w * _899);
            _963 = _860 + (float4(_952, _951) * _899);
            _964 = _861 + (float4(_941, _940) * _899);
            _965 = _862 + (float4(_930, _929) * _899);
        }
        else
        {
            _962 = _859;
            _963 = _860;
            _964 = _861;
            _965 = _862;
        }
        float4 _1048 = 0.0f.xxxx;
        float4 _1049 = 0.0f.xxxx;
        float4 _1050 = 0.0f.xxxx;
        float _1051 = 0.0f;
        if (_882 > 0.0f)
        {
            float3 _974 = ((_723 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _977 = _18_m106.xyz * 0.5f;
            float3 _979 = clamp(_974 - floor(_974), _977, 1.0f.xxx - _977);
            float4 _983 = _61.SampleLevel(_24, _979, 0.0f);
            float _985 = _882 * (1.0f - _756);
            float _989 = _18_m106.y * 0.5f;
            float _994 = _979.x;
            float _995 = clamp(_979.y, _989, 1.0f - _989) * 0.3333333432674407958984375f;
            float _996 = _979.z;
            float4 _999 = _62.SampleLevel(_23, float3(_994, _995, _996), 0.0f);
            _1048 = _963 + (float4(((_62.SampleLevel(_23, float3(_994, _995 + 0.666666686534881591796875f, _996), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983.z, _983.z) * _985);
            _1049 = _964 + (float4(((_62.SampleLevel(_23, float3(_994, _995 + 0.3333333432674407958984375f, _996), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983.y, _983.y) * _985);
            _1050 = _965 + (float4(((_999.xyz * 4.0f) - 2.0f.xxx) * _983.x, _983.x) * _985);
            _1051 = _962 + (_999.w * _985);
        }
        else
        {
            _1048 = _963;
            _1049 = _964;
            _1050 = _965;
            _1051 = _962;
        }
        float _1054 = clamp((_1051 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1058 = _1048;
        _1059 = _1049;
        _1060 = _1050;
        _1061 = _1054 - _756;
        _1062 = (_1054 + _756) * 0.5f;
    }
    else
    {
        _1058 = 0.0f.xxxx;
        _1059 = 0.0f.xxxx;
        _1060 = 0.0f.xxxx;
        _1061 = 0.0f;
        _1062 = 1.0f;
    }
    float4 _1082 = _1060 + float4(_18_m108.x * _1062, (_18_m108.y * _1062) + ((_18_m108.w * _1061) * 0.5f), _18_m108.z * _1062, (_18_m108.w * _1062) + ((_18_m108.y * _1061) * 0.375f));
    float4 _1102 = _1059 + float4(_18_m109.x * _1062, (_18_m109.y * _1062) + ((_18_m109.w * _1061) * 0.5f), _18_m109.z * _1062, (_18_m109.w * _1062) + ((_18_m109.y * _1061) * 0.375f));
    float4 _1122 = _1058 + float4(_18_m110.x * _1062, (_18_m110.y * _1062) + ((_18_m110.w * _1061) * 0.5f), _18_m110.z * _1062, (_18_m110.w * _1062) + ((_18_m110.y * _1061) * 0.375f));
    float _1127 = max(0.0f, dot(_1082.xyz, _608) + _1082.w);
    float _1132 = max(0.0f, dot(_1102.xyz, _608) + _1102.w);
    float _1137 = max(0.0f, dot(_1122.xyz, _608) + _1122.w);
    float3 _1147 = -_443;
    float3 _1148 = reflect(_1147, _608);
    float _1156 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_529, 0.001000000047497451305389404296875f))));
    float2 _1157 = float2(_720);
    float2 _1161 = floor(_1157 * _42_m0.w);
    float _1178 = floor(_721 - _42_m2.y);
    float _1182 = clamp(_1178, 0.0f, _42_m1.x - 1.0f);
    uint _1192 = (_1178 <= _1182) ? (_31.Load(uint(_18_m21.z + int(_1161.x + (_1161.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1182)) * 4 + 0)) : 0u;
    float _1195 = dot(float4(_1127, _1132, _1137, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1197 = 0.0f.xxx;
    float _1200 = 0.0f;
    uint _1202 = 0u;
    _1197 = 0.0f.xxx;
    _1200 = 1.0f;
    _1202 = _1192;
    uint _1203 = 0u;
    float3 _1198 = 0.0f.xxx;
    float _1201 = 0.0f;
    bool _1205 = false;
    [loop]
    for (;;)
    {
        _1205 = _1200 > 0.00999999977648258209228515625f;
        if ((_1202 != 0u) && _1205)
        {
            uint _1209 = firstbitlow(_1202);
            _1203 = _1202 ^ (1u << (_1209 & 31u));
            float3 _1229 = float3(dot(_42_m4[_1209]._m2, _410), dot(_42_m4[_1209]._m3, _410), dot(_42_m4[_1209]._m4, _410));
            float3 _1230 = abs(_1229);
            if (all(bool3(_1230.x <= _42_m4[_1209]._m1.xyz.x, _1230.y <= _42_m4[_1209]._m1.xyz.y, _1230.z <= _42_m4[_1209]._m1.xyz.z)))
            {
                float3 _1239 = _42_m4[_1209]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1241 = _1230 * 0.100000001490116119384765625f;
                float3 _1242 = _1241 * _1241;
                float3 _1245 = (_42_m4[_1209]._m1.xyz - _1230) * _42_m4[_1209]._m5.xyz;
                float3 _1293 = 0.0f.xxx;
                [branch]
                if (_42_m4[_1209]._m6.x == 1.0f)
                {
                    float3 _1278 = float3(dot(_42_m4[_1209]._m2.xyz, _1148), dot(_42_m4[_1209]._m3.xyz, _1148), dot(_42_m4[_1209]._m4.xyz, _1148));
                    float3 _1280 = (_42_m4[_1209]._m1.xyz - _1229) / _1278;
                    float3 _1283 = ((-_42_m4[_1209]._m1.xyz) - _1229) / _1278;
                    bool3 _1284 = bool3(_1278.x > 0.0f.xxx.x, _1278.y > 0.0f.xxx.y, _1278.z > 0.0f.xxx.z);
                    float3 _1285 = float3(_1284.x ? _1280.x : _1283.x, _1284.y ? _1280.y : _1283.y, _1284.z ? _1280.z : _1283.z);
                    _1293 = _1229 + (_1278 * min(min(_1285.x, _1285.y), _1285.z));
                }
                else
                {
                    _1293 = _1148;
                }
                float3 _1294 = normalize(_1293);
                float3 _1297 = float3(int3(sign(_1294)));
                float3 _1300 = _1294 / dot(_1294, _1297).xxx;
                float3 _1314 = 0.0f.xxx;
                if (_1300.z < 0.0f)
                {
                    float3 _1305 = abs(_1300);
                    float2 _1312 = _1297.xy * float2(1.0f - _1305.y, 1.0f - _1305.x);
                    _1314 = float3(_1312.x, _1312.y, _1300.z);
                }
                else
                {
                    _1314 = _1300;
                }
                float _1339 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1209]._m0, float4(_608, 1.0f))));
                float _1352 = clamp((min(_1245.x, min(_1245.y, _1245.z)) * _42_m4[_1209]._m6.y) + ((((((_1239 * _1239).x - ((_1242.x + _1242.y) + _1242.z)) * _42_m4[_1209]._m5.x) * _42_m4[_1209]._m5.x) * (1.0f - _42_m4[_1209]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1209]._m6.w;
                _1198 = _1197 + ((((_29.SampleLevel(_25, float3((((_1314.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1209]._m1.w), _1156).xyz * _42_m4[_1209]._m5.w) * ((((((clamp(abs(_1195 / _1339), 0.0f, 1.0f) * 2.0f) + _1195) / (2.0f + _1339)) - 1.0f) * _18_m23.w) + 1.0f)) * _1352) * _1200);
                _1201 = _1200 * (1.0f - _1352);
            }
            else
            {
                _1198 = _1197;
                _1201 = _1200;
            }
            _1197 = _1198;
            _1200 = _1201;
            _1202 = _1203;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1421 = 0.0f.xxx;
    if (_1205)
    {
        float3 _1360 = normalize(_1148);
        float3 _1363 = float3(int3(sign(_1360)));
        float3 _1366 = _1360 / dot(_1360, _1363).xxx;
        float3 _1380 = 0.0f.xxx;
        if (_1366.z < 0.0f)
        {
            float3 _1371 = abs(_1366);
            float2 _1378 = _1363.xy * float2(1.0f - _1371.y, 1.0f - _1371.x);
            _1380 = float3(_1378.x, _1378.y, _1366.z);
        }
        else
        {
            _1380 = _1366;
        }
        float _1407 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_608, 1.0f))));
        _1421 = _1197 + ((_29.SampleLevel(_25, float3((((_1380.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1156).xyz * ((((((clamp(abs(_1195 / _1407), 0.0f, 1.0f) * 2.0f) + _1195) / (2.0f + _1407)) - 1.0f) * _18_m23.w) + 1.0f)) * _1200);
    }
    else
    {
        _1421 = _1197;
    }
    float2 _1942 = 0.0f.xx;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _1942 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1443 = int(_48_m7.x);
        bool3 _1445 = (_1443 == 2).xxx;
        float3 _1453 = _406 - float3(_1445.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1445.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1445.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1464 = max(clamp((_48_m6.w - dot(_1453, _1453)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1681 = 0.0f;
        bool _1682 = false;
        if (_1464 > 0.0f)
        {
            float _1679 = 0.0f;
            bool _1680 = false;
            if (_1443 > 0)
            {
                float3 _1471 = _406 - _48_m1[0].xyz;
                float3 _1475 = _406 - _48_m1[1].xyz;
                float3 _1479 = _406 - _48_m1[2].xyz;
                float3 _1483 = _406 - _48_m1[3].xyz;
                float4 _1488 = float4(dot(_1471, _1471), dot(_1475, _1475), dot(_1479, _1479), dot(_1483, _1483));
                float4 _1497 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1499 = float4(bool4(_1488.x < _1497.x, _1488.y < _1497.y, _1488.z < _1497.z, _1488.w < _1497.w));
                float3 _1503 = clamp(_1499.yzw - _1499.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1507 = clamp(4.0f - dot(float4(_1499.x, _1503.x, _1503.y, _1503.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1509 = clamp(_1507 + 1.0f, 0.0f, 3.0f);
                uint _1510 = uint(_1507);
                uint _1518 = uint(_1509);
                float _1524 = dot(_1488, _344[_1518]) / _48_m1[_1518].w;
                float _1541 = 0.0f;
                if (((_1509 > _1507) && (_1524 >= 0.0f)) && (_1524 <= 1.0f))
                {
                    _1541 = _1507 + step(frac(52.98291778564453125f * frac(dot(_1157 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1488, _344[_1510]) / _48_m1[_1510].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1541 = _1507;
                }
                float _1542 = clamp(_1541, 0.0f, 4.0f);
                float4 _1546 = mul(_48_m0[uint(_1542)], _410);
                float _1549 = _1546.z;
                float4 _1550 = float4(_1546.xy, _1549, _1542);
                float3 _1551 = _1550.xyz;
                bool3 _1552 = bool3(_1551.x <= 0.0f.xxx.x, _1551.y <= 0.0f.xxx.y, _1551.z <= 0.0f.xxx.z);
                bool3 _1553 = bool3(_1551.x >= 1.0f.xxx.x, _1551.y >= 1.0f.xxx.y, _1551.z >= 1.0f.xxx.z);
                bool _1559 = any(bool3(_1552.x || _1553.x, _1552.y || _1553.y, _1552.z || _1553.z)) || ((asuint(_1549) & 2147483647u) > 2139095040u);
                int _1560 = int(_1542);
                float2 _1577 = float4(_48_m3[_1560].xy + (_1550.xy * _48_m3[_1560].zw), _1549, _1542).xy * _48_m4.zw;
                float2 _1579 = floor(_1577 + 0.5f.xx);
                float2 _1580 = _1577 - _1579;
                float _1581 = _1580.x;
                float _1582 = _1581 + 0.5f;
                float _1584 = (_1582 * _1582) * 0.5f;
                float _1587 = min(_1581, 0.0f);
                float _1591 = max(_1581, 0.0f);
                float4 _1595 = float4(_1584 - _1581, (1.0f - _1581) - (_1587 * _1587), (_1581 + 1.0f) - (_1591 * _1591), _1584) * 0.44444000720977783203125f;
                float _1596 = _1580.y;
                float _1597 = _1596 + 0.5f;
                float _1599 = (_1597 * _1597) * 0.5f;
                float _1602 = min(_1596, 0.0f);
                float _1606 = max(_1596, 0.0f);
                float4 _1610 = float4(_1599 - _1596, (1.0f - _1596) - (_1602 * _1602), (_1596 + 1.0f) - (_1606 * _1606), _1599) * 0.44444000720977783203125f;
                float2 _1612 = _1595.yw;
                float2 _1613 = _1595.xz + _1612;
                float2 _1615 = _1610.yw;
                float2 _1616 = _1610.xz + _1615;
                float2 _1622 = ((_1612 / _1613) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1624 = ((_1615 / _1616) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1626 = _1579 * _48_m4.xy;
                float _1627 = _1622.x;
                float _1628 = _1624.x;
                float _1631 = _1622.y;
                float _1634 = _1624.y;
                float _1639 = _1613.x;
                float _1640 = _1616.x;
                float _1642 = _1613.y;
                float _1644 = _1616.y;
                _1679 = _1559 ? 1.0f : (((((_1639 * _1640) * _49.SampleCmpLevelZero(_26, float3(_1626 + float2(_1627, _1628), _364).xy, _1549)) + ((_1642 * _1640) * _49.SampleCmpLevelZero(_26, float3(_1626 + float2(_1631, _1628), _364).xy, _1549))) + ((_1639 * _1644) * _49.SampleCmpLevelZero(_26, float3(_1626 + float2(_1627, _1634), _364).xy, _1549))) + ((_1642 * _1644) * _49.SampleCmpLevelZero(_26, float3(_1626 + float2(_1631, _1634), _364).xy, _1549)));
                _1680 = _1559;
            }
            else
            {
                _1679 = 1.0f;
                _1680 = false;
            }
            _1681 = _1679;
            _1682 = _1680;
        }
        else
        {
            _1681 = 1.0f;
            _1682 = false;
        }
        float _1882 = 0.0f;
        float _1883 = 0.0f;
        if ((_1464 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1693 = 1.0f - clamp(dot(_608, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1704 = (_406 - (_46_m0.xyz * (_1693 * _48_m24.x))) + (_608 * (_1693 * _48_m24.y));
            float4 _1710 = float4(_1704, 1.0f);
            float4 _1711 = mul(_48_m23, _1710);
            float2 _1712 = _1711.xy;
            float _1880 = 0.0f;
            if (all(bool2(_1712.x > 0.0f.xx.x, _1712.y > 0.0f.xx.y)) && all(bool2(_1712.x < 1.0f.xx.x, _1712.y < 1.0f.xx.y)))
            {
                uint _1731 = clamp(uint((floor(_1711.y * _48_m25.z) + _1711.x) * _48_m25.y), 0u, 127u);
                uint _1735 = asuint(_48_m27[_1731].x);
                float2 _1736 = spvUnpackHalf2x16(_1735);
                float _1737 = _1736.x;
                float _1879 = 0.0f;
                if (_1737 >= 0.0f)
                {
                    float4x4 _1746 = _48_m22;
                    _1746[0].w = _48_m27[_1731].y;
                    _1746[1].w = _48_m27[_1731].z;
                    _1746[2].w = _48_m27[_1731].w;
                    float4 _1753 = mul(_1746, _1710);
                    float3 _1754 = _1753.xyz;
                    float _1878 = 0.0f;
                    if (all(bool3(_1754.x > 0.0f.xxx.x, _1754.y > 0.0f.xxx.y, _1754.z > 0.0f.xxx.z)) && all(bool3(_1754.x < 1.0f.xxx.x, _1754.y < 1.0f.xxx.y, _1754.z < 1.0f.xxx.z)))
                    {
                        float _1771 = _1753.z;
                        float2 _1777 = float4((_1753.xy * _48_m24.zw) + float2(_1737, spvUnpackHalf2x16(_1735 >> 16u).x), _1771, 1.0f).xy * _48_m26.zw;
                        float2 _1779 = floor(_1777 + 0.5f.xx);
                        float2 _1780 = _1777 - _1779;
                        float _1781 = _1780.x;
                        float _1782 = _1781 + 0.5f;
                        float _1784 = (_1782 * _1782) * 0.5f;
                        float _1787 = min(_1781, 0.0f);
                        float _1791 = max(_1781, 0.0f);
                        float4 _1795 = float4(_1784 - _1781, (1.0f - _1781) - (_1787 * _1787), (_1781 + 1.0f) - (_1791 * _1791), _1784) * 0.44444000720977783203125f;
                        float _1796 = _1780.y;
                        float _1797 = _1796 + 0.5f;
                        float _1799 = (_1797 * _1797) * 0.5f;
                        float _1802 = min(_1796, 0.0f);
                        float _1806 = max(_1796, 0.0f);
                        float4 _1810 = float4(_1799 - _1796, (1.0f - _1796) - (_1802 * _1802), (_1796 + 1.0f) - (_1806 * _1806), _1799) * 0.44444000720977783203125f;
                        float2 _1812 = _1795.yw;
                        float2 _1813 = _1795.xz + _1812;
                        float2 _1815 = _1810.yw;
                        float2 _1816 = _1810.xz + _1815;
                        float2 _1822 = ((_1812 / _1813) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1824 = ((_1815 / _1816) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1826 = _1779 * _48_m26.xy;
                        float _1827 = _1822.x;
                        float _1828 = _1824.x;
                        float _1831 = _1822.y;
                        float _1834 = _1824.y;
                        float _1839 = _1813.x;
                        float _1840 = _1816.x;
                        float _1842 = _1813.y;
                        float _1844 = _1816.y;
                        _1878 = ((((_1839 * _1840) * _52.SampleCmpLevelZero(_26, float3(_1826 + float2(_1827, _1828), _364).xy, _1771)) + ((_1842 * _1840) * _52.SampleCmpLevelZero(_26, float3(_1826 + float2(_1831, _1828), _364).xy, _1771))) + ((_1839 * _1844) * _52.SampleCmpLevelZero(_26, float3(_1826 + float2(_1827, _1834), _364).xy, _1771))) + ((_1842 * _1844) * _52.SampleCmpLevelZero(_26, float3(_1826 + float2(_1831, _1834), _364).xy, _1771));
                    }
                    else
                    {
                        _1878 = 1.0f;
                    }
                    _1879 = _1878;
                }
                else
                {
                    _1879 = 1.0f;
                }
                _1880 = _1879;
            }
            else
            {
                _1880 = 1.0f;
            }
            _1882 = _1682 ? _1880 : _1681;
            _1883 = _1880;
        }
        else
        {
            _1882 = _1681;
            _1883 = 1.0f;
        }
        float _1886 = lerp(lerp(_1883, _1882, _1464), min(_1883, _1882), _48_m8.x);
        float _1937 = 0.0f;
        if (_1886 > 0.001000000047497451305389404296875f)
        {
            float3 _1893 = _406 - _18_m65.xyz;
            float2 _1903 = (_1893 + (_18_m68.xyz * _1893.y)).xz * _18_m66.z;
            float2 _1912 = _18_m67.xy * _18_m75.w;
            _1937 = _1886 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1903 + _1912, 0.0f), _51.SampleLevel(_24, (_1903 * _18_m67.w) + _1912, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1893.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1937 = _1886;
        }
        _1942 = float2(lerp(_1937, _48_m7.z, _48_m7.w), _1937);
        break;
    } while(false);
    float _1947 = lerp(1.0f, min(1.0f, _1942.x), _48_m6.x);
    float4 _2082 = 0.0f.xxxx;
    if (_1947 > 0.001000000047497451305389404296875f)
    {
        float3 _1957 = -_46_m0.xyz;
        float _1962 = dot(_1957, _1148);
        float3 _1964 = _1148 - (_1957 * _1962);
        bool3 _1966 = (_1962 < _46_m4.z).xxx;
        float3 _1974 = normalize((_1957 * _46_m4.z) + ((_1964 * rsqrt(max(6.103515625e-05f, dot(_1964, _1964)))) * _46_m4.y));
        float3 _1975 = float3(_1966.x ? _1974.x : _1148.x, _1966.y ? _1974.y : _1148.y, _1966.z ? _1974.z : _1148.z);
        float3 _1979 = _1975 + _443;
        float3 _1983 = _1979 * rsqrt(max(6.103515625e-05f, dot(_1979, _1979)));
        float _1984 = clamp(dot(_1975, _608), 0.0f, 1.0f);
        float _1986 = clamp(dot(_608, _1983), 0.0f, 1.0f);
        float _1989 = clamp(_666, 0.0f, 1.0f);
        float _1990 = _529 * _529;
        float _1991 = _1990 * _1990;
        float _2012 = (((_1986 * _1991) - _1986) * _1986) + 1.0f;
        float _2015 = 1.0f - clamp(dot(_443, _1983), 0.0f, 1.0f);
        float _2016 = _2015 * _2015;
        float _2018 = (_2015 * _2016) * _2016;
        float _2042 = 1.0f - _529;
        float _2049 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2042 * (1.04997003078460693359375f + (_2042 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2042))))));
        float _2050 = 1.0f - _2049;
        float3 _2053 = _665 + ((1.0f.xxx - _665) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0x6B833E77:
        float3 _2069 = ((clamp((min(((_665 * (1.0f - _2018)) + _2018.xxx) * ((_1991 / (_2012 * _2012)) * (0.5f / (((_1984 * sqrt(((((-_1989) * _1991) + _1989) * _1989) + _1991)) + (_1989 * sqrt(((((-_1984) * _1991) + _1984) * _1984) + _1991))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2053 * (((_56.SampleLevel(_23, (float2(_1989, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1984, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2049) / _2050)) * _2053) / (1.0f.xxx - (_2053 * _2050)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1984) + ((_661 * 1.0f) * _1984)) * _46_m1.xyz;
        */
        // RenoDX: reduce opaque glass specular while the glass transparency improvement is enabled.
        float3 _2069 = (((clamp((min(((_665 * (1.0f - _2018)) + _2018.xxx) * ((_1991 / (_2012 * _2012)) * (0.5f / (((_1984 * sqrt(((((-_1989) * _1991) + _1989) * _1989) + _1991)) + (_1989 * sqrt(((((-_1984) * _1991) + _1984) * _1984) + _1991))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2053 * (((_56.SampleLevel(_23, (float2(_1989, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1984, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2049) / _2050)) * _2053) / (1.0f.xxx - (_2053 * _2050)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _1984) + ((_661 * 1.0f) * _1984)) * _46_m1.xyz;
        float3 _2080 = lerp(_2069, _2069 * _53.SampleBias(_23, float2(_1947, 0.5f), _18_m16).xyz, (1.0f - _1947).xxx) * 1.0f;
        _2082 = float4(_2080.x, _2080.y, _2080.z, 0.0f.xxxx.w);
    }
    else
    {
        _2082 = 0.0f.xxxx;
    }
    float2 _2084 = floor(_1157 * 0.03125f);
    int _2092 = int((_2084.x + (_2084.y * _44_m5)) * 8.0f);
    float _2099 = floor(_721 - (_18_m3.y * _44_m11));
    float _2103 = clamp(_2099, 0.0f, _44_m7 - 1.0f);
    int _2105 = int(_2103 * 8.0f);
    float3 _2107 = 0.0f.xxx;
    float _2110 = 0.0f;
    _2107 = 0.0f.xxx;
    _2110 = 1.0f;
    float3 _2108 = 0.0f.xxx;
    float _2111 = 0.0f;
    [loop]
    for (int _2112 = 0; _2112 <= 7; _2107 = _2108, _2110 = _2111, _2112++)
    {
        uint _2130 = (_2099 <= _2103) ? (_31.Load(uint(_2092 + _2112) * 4 + 0) & _31.Load(uint((_18_m21.y + _2105) + _2112) * 4 + 0)) : 0u;
        uint _2131 = uint(_2112);
        float3 _2135 = 0.0f.xxx;
        _2111 = _2110;
        _2135 = 0.0f.xxx;
        uint _2138 = 0u;
        float _2133 = 0.0f;
        float3 _2136 = 0.0f.xxx;
        [loop]
        for (uint _2137 = _2130; _2137 != 0u; _2111 = _2133, _2135 = _2136, _2137 = _2138)
        {
            uint _2142 = firstbitlow(_2137);
            _2138 = _2137 ^ (1u << (_2142 & 31u));
            int _2148 = int((32u * _2131) + _2142) * 8;
            int _2151 = _2148 + 1;
            int _2154 = _2148 + 2;
            int _2157 = _2148 + 3;
            int _2160 = _2148 + 5;
            int _2163 = _2148 + 6;
            int _2166 = _2148 + 7;
            uint _2170 = uint(_46_m6[_2160].w);
            float _2245 = 0.0f;
            if ((_2170 & 1u) == 1u)
            {
                uint _2176 = asuint(_46_m6[_2160].x);
                uint _2183 = asuint(_46_m6[_2160].y);
                uint _2190 = asuint(_46_m6[_2160].z);
                uint _2197 = asuint(_46_m6[_2163].x);
                uint _2204 = asuint(_46_m6[_2163].y);
                uint _2211 = asuint(_46_m6[_2163].z);
                float3 _2230 = abs(mul(float4(_406 - _46_m6[_2151].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2176).x, spvUnpackHalf2x16(_2190).x, spvUnpackHalf2x16(_2204).x, 0.0f), float4(spvUnpackHalf2x16(_2176 >> 16u).x, spvUnpackHalf2x16(_2190 >> 16u).x, spvUnpackHalf2x16(_2204 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2183).x, spvUnpackHalf2x16(_2197).x, spvUnpackHalf2x16(_2211).x, 0.0f), float4(spvUnpackHalf2x16(_2183 >> 16u).x, spvUnpackHalf2x16(_2197 >> 16u).x, spvUnpackHalf2x16(_2211 >> 16u).x, 0.0f))).xyz);
                float _2237 = _46_m6[_2166].x * 0.5f;
                float _2243 = 1.0f - clamp((max(max(_2230.x, _2230.y), _2230.z) - (_2237 + 0.5f)) / (0.5f - _2237), 0.0f, 1.0f);
                _2245 = _2243 * _2243;
            }
            else
            {
                _2245 = 1.0f;
            }
            bool _2249 = _46_m6[_2157].z > 0.5f;
            if ((false || (_2245 < 0.001000000047497451305389404296875f)) || _2249)
            {
                _2133 = _2111;
                _2136 = _2135;
                continue;
            }
            float _3360 = 0.0f;
            float3 _3361 = 0.0f.xxx;
            if (_46_m6[_2148].w < 1.5f)
            {
                float3 _2737 = float3(0.100000001490116119384765625f, _529, 1.0f);
                float _2746 = (0.5f + (0.5f * _46_m6[_2154].y)) - abs(_46_m6[_2154].x);
                float _2747 = _46_m6[_2154].y - _2746;
                float _2754 = abs(max((1.0f - abs(_2746)) - abs(_2747), 0.00048828125f));
                float3 _2758 = normalize(float3(_2746, _2747, (_46_m6[_2154].x >= 0.0f) ? _2754 : (-_2754)));
                float3 _2759 = _46_m6[_2151].xyz - _406;
                float _2760 = dot(_2759, _2759);
                float _2761 = rsqrt(_2760);
                float3 _2762 = _2759 * _2761;
                float _2766 = clamp(_46_m6[_2166].y * _2761, 0.0f, 1.0f);
                int _2771 = int(_46_m6[_2166].w);
                float3 _2772 = _2758 * _46_m6[_2154].z;
                float3 _2773 = _2772 * 0.5f;
                float3 _2774 = _2759 - _2773;
                float3 _2775 = _2759 + _2773;
                bool _2778 = (uint(_46_m6[_2148].w) & 1u) == 0u;
                bool _2781 = _2778 || ((_2170 & 2u) != 0u);
                bool _2784 = (!_2778) && (_46_m6[_2154].z > 0.0f);
                float _2803 = 0.0f;
                float _2804 = 0.0f;
                if (_2784)
                {
                    float _2788 = length(_2774);
                    float _2789 = length(_2775);
                    _2803 = clamp(0.5f * ((dot(_608, _2774) / _2788) + (dot(_608, _2775) / _2789)), 0.0f, 1.0f);
                    _2804 = 1.0f / ((((_2788 * _2789) + dot(_2774, _2775)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2803 = clamp(dot(_608, _2762), 0.0f, 1.0f);
                    _2804 = 1.0f;
                }
                float _2826 = 0.0f;
                if (_46_m6[_2163].w < 0.0f)
                {
                    float _2820 = _2760 * (_46_m6[_2151].w * _46_m6[_2151].w);
                    float _2823 = clamp(1.0f - (_2820 * _2820), 0.0f, 1.0f);
                    _2826 = lerp(1.0f / (_2760 + 1.0f), _2804, float(_2784)) * (_2823 * _2823);
                }
                else
                {
                    float3 _2809 = _2759 * _46_m6[_2151].w;
                    _2826 = _2804 * pow(1.0f - clamp(dot(_2809, _2809), 0.0f, 1.0f), _46_m6[_2163].w);
                }
                float _2832 = clamp((dot(_2762, -_2758) - _46_m6[_2154].z) * _46_m6[_2154].w, 0.0f, 1.0f);
                float _2836 = _2826 * lerp(1.0f, _2832 * _2832, float(_2778));
                float _2936 = 0.0f;
                if ((!_2784) && (_2771 >= 0))
                {
                    uint _2842 = uint(_2771);
                    float2 _2929 = 0.0f.xx;
                    [branch]
                    if (_2778)
                    {
                        float4 _2919 = mul(_66_m1[_2842], _410);
                        _2929 = _66_m0[_2842].xy + (clamp(_2919.xy / _2919.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2842].zw);
                    }
                    else
                    {
                        float3 _2856 = mul(float4(-_2759, 0.0f), _66_m1[_2842]).xyz;
                        float3 _371 = _2856;
                        float3 _370 = _2856;
                        float3 _369 = abs(_2856);
                        uint _2865 = uint(int(_369.y > _369.x));
                        uint _2871 = (_369.z > _369[_2865]) ? 2u : _2865;
                        uint _2877 = (_2871 * 2u) + uint(_370[_2871] < 0.0f);
                        float _2881 = abs(_371[_2877 / 2u]);
                        float _2901 = 0.5f - (0.000244140625f / _66_m0[_2842].w);
                        _2929 = _66_m0[_2842].xy + (clamp(float2((float(_2877) + ((((_371[uint(_345[_2877].x)] * _346[_2877].x) / _2881) * _2901) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_371[uint(_345[_2877].y)] * _346[_2877].y) / _2881) * _2901)), 0.0f.xx, 1.0f.xx) * _66_m0[_2842].zw);
                    }
                    _2936 = _2836 * _64.SampleLevel(_23, _2929, 0.0f).x;
                }
                else
                {
                    _2936 = _2836;
                }
                bool _2937 = _2936 > 0.0f;
                float _3225 = 0.0f;
                if (_2937)
                {
                    int _2989 = 0;
                    if (_2781)
                    {
                        _2989 = int(_46_m6[_2157].x);
                    }
                    else
                    {
                        uint _2944 = asuint(_46_m6[_2154].w);
                        uint _2946 = asuint(_46_m6[_2157].x);
                        float3 _2947 = _406 - _46_m6[_2151].xyz;
                        float3 _2948 = abs(_2947);
                        float _2949 = _2948.x;
                        float _2950 = _2948.y;
                        float _2952 = _2948.z;
                        int _2984 = 0;
                        if ((_2949 > _2950) && (_2949 > _2952))
                        {
                            _2984 = int((_2947.x > 0.0f) ? (_2944 >> 24u) : ((_2944 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2976 = 0;
                            if (_2950 > _2952)
                            {
                                _2976 = int((_2947.y > 0.0f) ? ((_2944 >> 8u) & 255u) : (_2944 & 255u));
                            }
                            else
                            {
                                _2976 = int((_2947.z > 0.0f) ? ((_2946 >> 8u) & 255u) : (_2946 & 255u));
                            }
                            _2984 = _2976;
                        }
                        _2989 = (_2984 < 80) ? _2984 : (-1);
                    }
                    float3 _2999 = (_406 - ((-_2762) * _48_m11[_2989].x)) + (_608 * (_48_m11[_2989].y * 5.0f));
                    float4 _3006 = mul(_48_m10[_2989], float4(_2999, 1.0f));
                    float _3007 = _3006.w;
                    float3 _3010 = _3006.xyz / _3007.xxx;
                    float2 _3011 = _3010.xy;
                    float3 _3019 = _3010.xyz;
                    bool3 _3020 = bool3(_3019.x <= 0.0f.xxx.x, _3019.y <= 0.0f.xxx.y, _3019.z <= 0.0f.xxx.z);
                    bool3 _3021 = bool3(_3019.x >= 1.0f.xxx.x, _3019.y >= 1.0f.xxx.y, _3019.z >= 1.0f.xxx.z);
                    float _3024 = _3010.z;
                    float2 _3035 = ((_3011 * (_48_m12[_2989].zw - _48_m12[_2989].xy)) + _48_m12[_2989].xy).xy * _48_m13.zw;
                    float2 _3037 = floor(_3035 + 0.5f.xx);
                    float2 _3038 = _3035 - _3037;
                    float _3039 = _3038.x;
                    float _3040 = _3039 + 0.5f;
                    float _3041 = _3040 * _3040;
                    float _3044 = 1.0f - _3039;
                    float _3045 = min(_3039, 0.0f);
                    float _3048 = _3039 + 1.0f;
                    float _3049 = max(_3039, 0.0f);
                    float _3060 = _3038.y;
                    float _3061 = _3060 + 0.5f;
                    float _3062 = _3061 * _3061;
                    float _3065 = 1.0f - _3060;
                    float _3066 = min(_3060, 0.0f);
                    float _3069 = _3060 + 1.0f;
                    float _3070 = max(_3060, 0.0f);
                    float3 _3082 = float3(0.1599999964237213134765625f * _3044, 0.1599999964237213134765625f * ((_3048 - (_3049 * _3049)) + 1.0f), _3041 * 0.07999999821186065673828125f);
                    float3 _3083 = float3(0.1599999964237213134765625f * ((_3041 * 0.5f) - _3039), 0.1599999964237213134765625f * ((_3044 - (_3045 * _3045)) + 1.0f), 0.1599999964237213134765625f * _3048) + _3082;
                    float3 _3085 = float3(0.1599999964237213134765625f * _3065, 0.1599999964237213134765625f * ((_3069 - (_3070 * _3070)) + 1.0f), _3062 * 0.07999999821186065673828125f);
                    float3 _3086 = float3(0.1599999964237213134765625f * ((_3062 * 0.5f) - _3060), 0.1599999964237213134765625f * ((_3065 - (_3066 * _3066)) + 1.0f), 0.1599999964237213134765625f * _3069) + _3085;
                    float3 _3092 = ((_3082 / _3083) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3094 = ((_3085 / _3086) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3096 = _3037 * _48_m13.xy;
                    float _3097 = _3092.x;
                    float _3098 = _3094.x;
                    float _3101 = _3092.y;
                    float _3104 = _3092.z;
                    float _3107 = _3094.y;
                    float _3114 = _3094.z;
                    float _3121 = _3083.x;
                    float _3122 = _3086.x;
                    float _3124 = _3083.y;
                    float _3126 = _3083.z;
                    float _3128 = _3086.y;
                    float _3132 = _3086.z;
                    float _3190 = (((((((_3121 * _3122) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3097, _3098), _364).xy, _3024)) + ((_3124 * _3122) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3101, _3098), _364).xy, _3024))) + ((_3126 * _3122) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3104, _3098), _364).xy, _3024))) + ((_3121 * _3128) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3097, _3107), _364).xy, _3024))) + ((_3124 * _3128) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3101, _3107), _364).xy, _3024))) + ((_3126 * _3128) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3104, _3107), _364).xy, _3024))) + ((_3121 * _3132) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3097, _3114), _364).xy, _3024));
                    float2 _3211 = min(_3011, 1.0f.xx - _3011);
                    _3225 = (_2989 >= 0) ? lerp(1.0f, (any(bool3(_3020.x || _3021.x, _3020.y || _3021.y, _3020.z || _3021.z)) || ((asuint(_3024) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3190 + ((_3124 * _3132) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3101, _3114), _364).xy, _3024))) + ((_3126 * _3132) * _50.SampleCmpLevelZero(_26, float3(_3096 + float2(_3104, _3114), _364).xy, _3024))), _2781 ? min(_48_m11[_2989].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2989].z - _3007) * 0.25f, min(_3211.x, _3211.y)))) : _48_m11[_2989].w) : 1.0f;
                }
                else
                {
                    _3225 = 1.0f;
                }
                float3 _3248 = 0.0f.xxx;
                float3 _3249 = 0.0f.xxx;
                if (_2784)
                {
                    float3 _3228 = _2737 * _2737;
                    float _3237 = dot(_1148, _2772);
                    _3248 = _3228 / clamp(_3228 + (0.5f * clamp(_46_m6[_2154].z * _2761, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3249 = normalize(_2774 + (_2772 * clamp(dot(_2774, (_1148 * _3237) - _2772) / ((_46_m6[_2154].z * _46_m6[_2154].z) - (_3237 * _3237)), 0.0f, 1.0f)));
                }
                else
                {
                    _3248 = 1.0f.xxx;
                    _3249 = _2762;
                }
                float3 _3250 = _3249 + _443;
                float3 _3254 = _3250 * rsqrt(max(6.103515625e-05f, dot(_3250, _3250)));
                float3 _3359 = 0.0f.xxx;
                if (_2937)
                {
                    float _3257 = clamp(_2803, 0.0f, 1.0f);
                    float _3259 = clamp(dot(_608, _3254), 0.0f, 1.0f);
                    float _3261 = clamp(dot(_443, _3254), 0.0f, 1.0f);
                    float _3262 = clamp(_666, 0.0f, 1.0f);
                    float _3263 = _529 * _529;
                    float _3273 = 0.0f;
                    if (_2766 > 0.0f)
                    {
                        _3273 = clamp(_3263 + ((_2766 * _2766) / ((_3261 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3273 = _3263;
                    }
                    float _3274 = _3273 * _3273;
                    float _3295 = (((_3259 * _3274) - _3259) * _3259) + 1.0f;
                    float _3300 = 1.0f - _3261;
                    float _3301 = _3300 * _3300;
                    float _3303 = (_3300 * _3301) * _3301;
                    float _3327 = 1.0f - _529;
                    float _3334 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3327 * (1.04997003078460693359375f + (_3327 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3327))))));
                    float _3335 = 1.0f - _3334;
                    float3 _3338 = _665 + ((1.0f.xxx - _665) * 0.0476190485060214996337890625f);
                    float3 _3358 = ((clamp((min(((_665 * (1.0f - _3303)) + _3303.xxx) * (((_3274 / (_3295 * _3295)) * _3248.y) * (0.5f / (((_3257 * sqrt(((((-_3262) * _3274) + _3262) * _3262) + _3274)) + (_3262 * sqrt(((((-_3257) * _3274) + _3257) * _3257) + _3274))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3338 * (((_56.SampleLevel(_23, (float2(_3262, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3257, _529) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3334) / _3335)) * _3338) / (1.0f.xxx - (_3338 * _3335)))) * _46_m6[_2166].z, 0.0f.xxx, 1000.0f.xxx) * _2803) + ((_661 * _3248.z) * _2803)) * (((_46_m6[_2148].xyz * _2936) * _3225) * _2245);
                    _3359 = _3358;
                }
                else
                {
                    _3359 = 0.0f.xxx;
                }
                _3360 = _2111;
                _3361 = _3359;
            }
            else
            {
                float _2735 = 0.0f;
                do
                {
                    if (_2249)
                    {
                        _2735 = 1.0f;
                        break;
                    }
                    float _2269 = (0.5f + (0.5f * _46_m6[_2154].y)) - abs(_46_m6[_2154].x);
                    float _2270 = _46_m6[_2154].y - _2269;
                    float _2277 = abs(max((1.0f - abs(_2269)) - abs(_2270), 0.00048828125f));
                    float3 _2281 = normalize(float3(_2269, _2270, (_46_m6[_2154].x >= 0.0f) ? _2277 : (-_2277)));
                    float3 _2282 = _46_m6[_2151].xyz - _406;
                    float _2283 = dot(_2282, _2282);
                    float3 _2285 = _2282 * rsqrt(_2283);
                    int _2288 = int(_46_m6[_2166].w);
                    float3 _2290 = (_2281 * _46_m6[_2154].z) * 0.5f;
                    float3 _2291 = _2282 - _2290;
                    float3 _2292 = _2282 + _2290;
                    bool _2295 = (uint(_46_m6[_2148].w) & 1u) == 0u;
                    bool _2298 = _2295 || ((_2170 & 2u) != 0u);
                    bool _2301 = (!_2295) && (_46_m6[_2154].z > 0.0f);
                    float _2313 = 0.0f;
                    if (_2301)
                    {
                        _2313 = 1.0f / ((((length(_2291) * length(_2292)) + dot(_2291, _2292)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2313 = 1.0f;
                    }
                    float _2335 = 0.0f;
                    if (_46_m6[_2163].w < 0.0f)
                    {
                        float _2329 = _2283 * (_46_m6[_2151].w * _46_m6[_2151].w);
                        float _2332 = clamp(1.0f - (_2329 * _2329), 0.0f, 1.0f);
                        _2335 = lerp(1.0f / (_2283 + 1.0f), _2313, float(_2301)) * (_2332 * _2332);
                    }
                    else
                    {
                        float3 _2318 = _2282 * _46_m6[_2151].w;
                        _2335 = _2313 * pow(1.0f - clamp(dot(_2318, _2318), 0.0f, 1.0f), _46_m6[_2163].w);
                    }
                    float _2341 = clamp((dot(_2285, -_2281) - _46_m6[_2154].z) * _46_m6[_2154].w, 0.0f, 1.0f);
                    float _2345 = _2335 * lerp(1.0f, _2341 * _2341, float(_2295));
                    float _2445 = 0.0f;
                    if ((!_2301) && (_2288 >= 0))
                    {
                        uint _2351 = uint(_2288);
                        float2 _2438 = 0.0f.xx;
                        [branch]
                        if (_2295)
                        {
                            float4 _2428 = mul(_66_m1[_2351], _410);
                            _2438 = _66_m0[_2351].xy + (clamp(_2428.xy / _2428.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2351].zw);
                        }
                        else
                        {
                            float3 _2365 = mul(float4(-_2282, 0.0f), _66_m1[_2351]).xyz;
                            float3 _374 = _2365;
                            float3 _373 = _2365;
                            float3 _372 = abs(_2365);
                            uint _2374 = uint(int(_372.y > _372.x));
                            uint _2380 = (_372.z > _372[_2374]) ? 2u : _2374;
                            uint _2386 = (_2380 * 2u) + uint(_373[_2380] < 0.0f);
                            float _2390 = abs(_374[_2386 / 2u]);
                            float _2410 = 0.5f - (0.000244140625f / _66_m0[_2351].w);
                            _2438 = _66_m0[_2351].xy + (clamp(float2((float(_2386) + ((((_374[uint(_345[_2386].x)] * _346[_2386].x) / _2390) * _2410) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_374[uint(_345[_2386].y)] * _346[_2386].y) / _2390) * _2410)), 0.0f.xx, 1.0f.xx) * _66_m0[_2351].zw);
                        }
                        _2445 = _2345 * _64.SampleLevel(_23, _2438, 0.0f).x;
                    }
                    else
                    {
                        _2445 = _2345;
                    }
                    float _2734 = 0.0f;
                    if (_2445 > 0.0f)
                    {
                        int _2498 = 0;
                        if (_2298)
                        {
                            _2498 = int(_46_m6[_2157].x);
                        }
                        else
                        {
                            uint _2453 = asuint(_46_m6[_2154].w);
                            uint _2455 = asuint(_46_m6[_2157].x);
                            float3 _2456 = _406 - _46_m6[_2151].xyz;
                            float3 _2457 = abs(_2456);
                            float _2458 = _2457.x;
                            float _2459 = _2457.y;
                            float _2461 = _2457.z;
                            int _2493 = 0;
                            if ((_2458 > _2459) && (_2458 > _2461))
                            {
                                _2493 = int((_2456.x > 0.0f) ? (_2453 >> 24u) : ((_2453 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2485 = 0;
                                if (_2459 > _2461)
                                {
                                    _2485 = int((_2456.y > 0.0f) ? ((_2453 >> 8u) & 255u) : (_2453 & 255u));
                                }
                                else
                                {
                                    _2485 = int((_2456.z > 0.0f) ? ((_2455 >> 8u) & 255u) : (_2455 & 255u));
                                }
                                _2493 = _2485;
                            }
                            _2498 = (_2493 < 80) ? _2493 : (-1);
                        }
                        float3 _2508 = (_406 - ((-_2285) * _48_m11[_2498].x)) + (_608 * (_48_m11[_2498].y * 5.0f));
                        float4 _2515 = mul(_48_m10[_2498], float4(_2508, 1.0f));
                        float _2516 = _2515.w;
                        float3 _2519 = _2515.xyz / _2516.xxx;
                        float2 _2520 = _2519.xy;
                        float3 _2528 = _2519.xyz;
                        bool3 _2529 = bool3(_2528.x <= 0.0f.xxx.x, _2528.y <= 0.0f.xxx.y, _2528.z <= 0.0f.xxx.z);
                        bool3 _2530 = bool3(_2528.x >= 1.0f.xxx.x, _2528.y >= 1.0f.xxx.y, _2528.z >= 1.0f.xxx.z);
                        float _2533 = _2519.z;
                        float2 _2544 = ((_2520 * (_48_m12[_2498].zw - _48_m12[_2498].xy)) + _48_m12[_2498].xy).xy * _48_m13.zw;
                        float2 _2546 = floor(_2544 + 0.5f.xx);
                        float2 _2547 = _2544 - _2546;
                        float _2548 = _2547.x;
                        float _2549 = _2548 + 0.5f;
                        float _2550 = _2549 * _2549;
                        float _2553 = 1.0f - _2548;
                        float _2554 = min(_2548, 0.0f);
                        float _2557 = _2548 + 1.0f;
                        float _2558 = max(_2548, 0.0f);
                        float _2569 = _2547.y;
                        float _2570 = _2569 + 0.5f;
                        float _2571 = _2570 * _2570;
                        float _2574 = 1.0f - _2569;
                        float _2575 = min(_2569, 0.0f);
                        float _2578 = _2569 + 1.0f;
                        float _2579 = max(_2569, 0.0f);
                        float3 _2591 = float3(0.1599999964237213134765625f * _2553, 0.1599999964237213134765625f * ((_2557 - (_2558 * _2558)) + 1.0f), _2550 * 0.07999999821186065673828125f);
                        float3 _2592 = float3(0.1599999964237213134765625f * ((_2550 * 0.5f) - _2548), 0.1599999964237213134765625f * ((_2553 - (_2554 * _2554)) + 1.0f), 0.1599999964237213134765625f * _2557) + _2591;
                        float3 _2594 = float3(0.1599999964237213134765625f * _2574, 0.1599999964237213134765625f * ((_2578 - (_2579 * _2579)) + 1.0f), _2571 * 0.07999999821186065673828125f);
                        float3 _2595 = float3(0.1599999964237213134765625f * ((_2571 * 0.5f) - _2569), 0.1599999964237213134765625f * ((_2574 - (_2575 * _2575)) + 1.0f), 0.1599999964237213134765625f * _2578) + _2594;
                        float3 _2601 = ((_2591 / _2592) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2603 = ((_2594 / _2595) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2605 = _2546 * _48_m13.xy;
                        float _2606 = _2601.x;
                        float _2607 = _2603.x;
                        float _2610 = _2601.y;
                        float _2613 = _2601.z;
                        float _2616 = _2603.y;
                        float _2623 = _2603.z;
                        float _2630 = _2592.x;
                        float _2631 = _2595.x;
                        float _2633 = _2592.y;
                        float _2635 = _2592.z;
                        float _2637 = _2595.y;
                        float _2641 = _2595.z;
                        float _2699 = (((((((_2630 * _2631) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2606, _2607), _364).xy, _2533)) + ((_2633 * _2631) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2610, _2607), _364).xy, _2533))) + ((_2635 * _2631) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2613, _2607), _364).xy, _2533))) + ((_2630 * _2637) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2606, _2616), _364).xy, _2533))) + ((_2633 * _2637) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2610, _2616), _364).xy, _2533))) + ((_2635 * _2637) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2613, _2616), _364).xy, _2533))) + ((_2630 * _2641) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2606, _2623), _364).xy, _2533));
                        float2 _2720 = min(_2520, 1.0f.xx - _2520);
                        _2734 = (_2498 >= 0) ? lerp(1.0f, (any(bool3(_2529.x || _2530.x, _2529.y || _2530.y, _2529.z || _2530.z)) || ((asuint(_2533) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2699 + ((_2633 * _2641) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2610, _2623), _364).xy, _2533))) + ((_2635 * _2641) * _50.SampleCmpLevelZero(_26, float3(_2605 + float2(_2613, _2623), _364).xy, _2533))), _2298 ? min(_48_m11[_2498].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2498].z - _2516) * 0.25f, min(_2720.x, _2720.y)))) : _48_m11[_2498].w) : 1.0f;
                    }
                    else
                    {
                        _2734 = 1.0f;
                    }
                    _2735 = _2734;
                    break;
                } while(false);
                _3360 = _2111 * _2735;
                _3361 = 0.0f.xxx;
            }
            _2133 = _3360;
            _2136 = _2135 + _3361;
        }
        _2108 = _2107 + _2135;
    }
    /*
    Vanilla shader code from 0x6B833E77:
    float3 _3368 = (((((float3(_1127, _1132, _1137) * _661) * lerp(1.0f, _499.z, _39_m4)) * _18_m22.x) + ((((_1421 * _18_m23.z) * _18_m22.y) * ((_665 * _680.x) + (clamp(50.0f * _665.y, 0.0f, 1.0f) * _680.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _555) * _39_m55, _547.xxx) * lerp(_583, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2082.xyz + (_2107 * _2110)).xyz;
    */
    // RenoDX: reduce opaque glass lighting while the glass transparency improvement is enabled.
    float3 _3368 = (((((float3(_1127, _1132, _1137) * (_661 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _499.z, _39_m4)) * _18_m22.x) + (((((_1421 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_665 * _680.x) + (clamp(50.0f * _665.y, 0.0f, 1.0f) * _680.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _555) * _39_m55, _547.xxx) * lerp(_583, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2082.xyz + ((_2107 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2110)).xyz;
    float4 _3369 = float4(_3368.x, _3368.y, _3368.z, _366.w);
    _3369.w = _524;
    float _3386 = _406.y * _18_m46.w;
    float _3391 = max(0.00999999977648258209228515625f, _3386 + _18_m47.w);
    float3 _3405 = exp(_18_m45.xyz * ((-max(0.0f, (_444 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3391)) / _3391) * exp(_3386 + _18_m48.w))));
    float _3408 = dot(_1147, _18_m44.xyz);
    float _3414 = _18_m45.w * _18_m45.w;
    float _3418 = (1.0f + _3414) - ((2.0f * _18_m45.w) * _3408);
    float3 _3750 = 0.0f.xxx;
    float _3751 = 0.0f;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3576 = (uint3(int3(int(_720.x), int(_720.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3577 = _3576.y;
        uint _3578 = _3576.z;
        uint _3581 = _3576.x + (_3577 * _3578);
        uint _3583 = _3577 + (_3578 * _3581);
        uint _3585 = _3578 + (_3581 * _3583);
        uint _3587 = _3581 + (_3583 * _3585);
        float _3611 = dot(_1147, -_16_m0[2].xyz);
        float3 _3621 = _406 - _16_m11.xyz;
        float _3623 = (_18_m55.w * ((_3611 > 5.9604644775390625e-08f) ? (1.0f / _3611) : 0.0f)) * (1.0f / _444);
        float _3624 = _3621.y;
        float _3625 = _3623 * _3624;
        float _3627 = _16_m11.y + _3625;
        float _3628 = _3624 - _3625;
        float _3630 = (1.0f - _3623) * _444;
        float _3644 = max(-127.0f, _18_m49.z * _3628);
        float _3668 = max(-127.0f, _18_m52.x * _3628);
        float _3679 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3627 - _18_m49.x)))) * ((abs(_3644) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3644)) / _3644) : (0.693147182464599609375f - (0.2402265071868896484375f * _3644)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3627 - _18_m52.z)))) * ((abs(_3668) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3668)) / _3668) : (0.693147182464599609375f - (0.2402265071868896484375f * _3668))));
        float _3701 = clamp((_444 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3704 = clamp((max(clamp(exp2(-(_3679 * _3630)), 0.0f, 1.0f), _18_m51.w) + clamp((_444 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3701, 0.0f, 1.0f);
        float4 _3744 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1157 + ((((float3(uint3(_3587, _3583 + (_3585 * _3587), _367) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_721 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_721 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3750 = _3744.xyz + (((_18_m51.xyz * (1.0f - _3704)) + (((_18_m54.xyz * pow(clamp(dot(_443, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3679 * max(_3630 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3701))) * _3744.w);
        _3751 = _3744.w * _3704;
    }
    else
    {
        float3 _3448 = _406 - _16_m11.xyz;
        float _3450 = _3448.y;
        float _3464 = max(-127.0f, _18_m49.z * _3450);
        float _3488 = max(-127.0f, _18_m52.x * _3450);
        float _3499 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3464) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3464)) / _3464) : (0.693147182464599609375f - (0.2402265071868896484375f * _3464)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3488) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3488)) / _3488) : (0.693147182464599609375f - (0.2402265071868896484375f * _3488))));
        float _3521 = clamp((_444 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3524 = clamp((max(clamp(exp2(-(_3499 * _444)), 0.0f, 1.0f), _18_m51.w) + clamp((_444 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3521, 0.0f, 1.0f);
        _3750 = (_18_m51.xyz * (1.0f - _3524)) + (((_18_m54.xyz * pow(clamp(dot(_443, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3499 * max(_444 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3521));
        _3751 = _3524;
    }
    /*
    Vanilla shader code from 0x6B833E77:
    float3 _3757 = ((_3369.xyz * (_3405 * _3751)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3408 * _3408)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3414) / max((12.56637096405029296875f * _3418) * sqrt(_3418), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3405)) * _3751) + _3750)).xyz;
    */
    // RenoDX code start: apply improved glass and the selected hue-preserving fog blend.
    float3 _3757 = ((_3369.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3405 * _3751)) : (_3405 * _3751))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3408 * _3408)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3414) / max((12.56637096405029296875f * _3418) * sqrt(_3418), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3405)) * _3751 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3750 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    // RenoDX code end
    float3 _3767 = lerp(dot(_3757, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3757, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3777 = min(lerp(((sqrt(sqrt(abs(_633 * 0.5f))) * float2(int2(sign(_633)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _620.xx), 1.0f.xx);
    float4 _3778 = float4(_3777.x, _3777.y, _366.z, _366.w);
    _3778.z = float(clamp(max(dot(_3767.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _524, _524) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3778.w = lerp(0.0f, 0.699999988079071044921875f, _620);
    /*
    Vanilla shader code from 0x6B833E77:
    _13 = float4(_3767.x, _3767.y, _3767.z, _3369.w);
    */
    // RenoDX code start: compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3767.x, _3767.y, _3767.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3369.w);
    _14 = _3778;
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

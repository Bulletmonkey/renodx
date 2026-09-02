#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x9A86EA7E, migrated from 1.4.4 shader 0x70B436EE.
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

static float _369 = (float)0;
static float4 _371 = (float4)0;
static uint _372 = (uint)0;

static const float4 _349[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _350[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _351[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _31 : register(t50);
[[vk::binding(4, 1)]]
cbuffer _38_39 : register(b4)
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
    float4 _39_m55 : packoffset(c25);
    float _39_m56 : packoffset(c26);
    float _39_m57 : packoffset(c26.y);
    float _39_m58 : packoffset(c26.z);
    float _39_m59 : packoffset(c26.w);
    float _39_m60 : packoffset(c27);
    float _39_m61 : packoffset(c27.y);
    float _39_m62 : packoffset(c27.z);
    float _39_m63 : packoffset(c27.w);
    float _39_m64 : packoffset(c28);
    float _39_m65 : packoffset(c28.y);
    float _39_m66 : packoffset(c28.z);
    float _39_m67 : packoffset(c28.w);
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

[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25);
[[vk::binding(3, 1)]] Texture2D<float4> _32 : register(t3);
[[vk::binding(1, 1)]] SamplerState _33 : register(s1);
[[vk::binding(2, 1)]] Texture2D<float4> _34 : register(t2);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0);
[[vk::binding(22, 0)]] Texture2D<float4> _36 : register(t22);
[[vk::binding(20, 0)]] SamplerState _37 : register(s20);
[[vk::binding(9, 0)]] Texture2D<float4> _49 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _50 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _51 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _52 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _53 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _56 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _57 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _58 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _59 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _60 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _61 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _62 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _63 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _64 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _4 = (float2)0;
static float2 _5 = (float2)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float3 _9 = (float3)0;
static float3 _10 = (float3)0;
static uint _11 = (uint)0;
static float4 _13 = (float4)0;
static float4 _14 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _4 : TEXCOORD0;
    [[vk::location(1)]] float2 _5 : TEXCOORD1;
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
    float _396 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _401 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _403 = abs(_401);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _403 : (-_403)), (1.0f - _396) - _401) < 0.0f)
    {
        discard;
    }
    float2 _420 = gl_FragCoord.xy * _18_m0.zw;
    float2 _423 = (_420 * 2.0f) - 1.0f.xx;
    float4 _426 = float4(_423, gl_FragCoord.z, 1.0f);
    _426.y = -_423.y;
    float4 _429 = mul(_16_m6, _426);
    float3 _433 = _429.xyz / _429.w.xxx;
    float4 _437 = float4(_433, 1.0f);
    float _444 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _451 = cross(_6, float4(_7.xyz, _444).xyz) * _444;
    float3 _466;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _466 = _16_m11.xyz - _433;
            break;
        }
        else
        {
            _466 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _467 = dot(_466, _466);
    float _469 = rsqrt(max(_467, 9.9999999392252902907785028219223e-09f));
    float3 _470 = _466 * _469;
    float _471 = _467 * _469;
    float4 _504 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float _506 = _504.w;
    float4 _509 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
    float2 _512 = (_509.xy * 2.0f.xx) - 1.0f.xx;
    float2 _513 = abs(_512);
    bool2 _514 = bool2(_513.x < 0.01200000010430812835693359375f.xx.x, _513.y < 0.01200000010430812835693359375f.xx.y);
    float2 _515 = float2(_514.x ? 0.0f.xx.x : _512.x, _514.y ? 0.0f.xx.y : _512.y);
    float2 _516 = _515 * _39_m0;
    float _520 = sqrt(clamp(1.0f - dot(_515, _515), 0.0f, 1.0f));
    float _521 = _516.x;
    float _522 = _516.y;
    float _523 = _509.z;
    float _524 = _509.w;
    float _542 = lerp(_506, _524, _39_m6) * _39_m32.w;
    float _548 = lerp(_542, _542 * _8.x, _39_m64);
    float _553 = lerp(_39_m2, _39_m3, _523);
    float _563 = lerp(_506, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _571 = clamp(_39_m57, 0.0f, 1.0f);
    float _581 = clamp((lerp(1.0f, lerp(lerp(_506, _523, clamp(_39_m57 - 1.0f, 0.0f, 1.0f)), _524, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _571) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float3 _613 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _581) * _39_m56, _571.xxx);
    float _617 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _581);
    float3 _622 = lerp(clamp((_504.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _617).xxx + (_21_m0[_11]._m9.xyz * _617));
    float3 _646;
    [branch]
    if (_39_m49 > 0.5f)
    {
        _646 = _613 + (_39_m55.xyz * ((1.0f - pow(clamp(dot(_470, lerp(normalize(((_7.xyz * _521) + (_451 * _522)) + (_6 * _520)), _6, _39_m53.xxx)) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52)));
    }
    else
    {
        _646 = _613;
    }
    float3 _668 = normalize(((_7.xyz * _521) + (_451 * _522)) + (_6 * (_520 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float3 _671 = -_470;
    float4 _692 = _36.SampleBias(_37, _420 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_671, _668, _39_m60)) * _39_m61).xy * _548), _18_m16);
    float _697 = clamp(float(int(sign(_396 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _710 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _710.y = -_710.y;
    float _736 = 0.07999999821186065673828125f * _39_m1;
    float3 _737 = _622 * _563;
    float3 _738 = _622 - _737;
    float3 _742 = (_736 - (_736 * _563)).xxx + _737;
    float _743 = dot(_668, _470);
    float4 _746 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _553) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _747 = _746.x;
    float2 _757 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_747 * _747, exp2((-9.27999973297119140625f) * max(0.0f, _743))) * _747) + _746.y)) + _746.zw;
    uint2 _797;
    float _798;
    if (_18_m24.y == 1.0f)
    {
        float4 _774 = mul(_18_m135, _437);
        float4 _777 = _774;
        _777.y = -_774.y;
        float4 _780 = _777 * (1.0f / _774.w);
        _797 = uint2(clamp(((_780.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _798 = 1.0f / ((_18_m2.z * _780.z) + _18_m2.w);
    }
    else
    {
        _797 = uint2(gl_FragCoord.xy);
        _798 = abs(mul(_16_m0, _437).z);
    }
    float3 _800 = _433 + (_668 * 0.25f);
    float3 _810 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _819 = _800 - (_18_m105.xyz + (_810 * (-_18_m107.w)));
    float _833 = max(clamp((max(abs(_819.x), abs(_819.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_819.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1135;
    float4 _1136;
    float4 _1137;
    float _1138;
    float _1139;
    if ((_18_m105.w != 0.0f) && (_833 < 1.0f))
    {
        float3 _846 = _800 - (_18_m105.xyz + (_810 * (-_18_m107.y)));
        float _860 = max(clamp((max(abs(_846.x), abs(_846.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_846.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _936;
        float4 _937;
        float4 _938;
        float4 _939;
        if (_860 < 1.0f)
        {
            float3 _869 = ((_800 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _871 = _869 - floor(_869);
            float4 _875 = _57.SampleLevel(_24, _871, 0.0f);
            float _876 = 1.0f - _860;
            float _880 = _18_m106.y * 0.5f;
            float _885 = _871.x;
            float _886 = clamp(_871.y, _880, 1.0f - _880) * 0.3333333432674407958984375f;
            float _887 = _871.z;
            float4 _890 = _58.SampleLevel(_23, float3(_885, _886, _887), 0.0f);
            float _906 = _875.x;
            float _916 = _875.y;
            float _926 = _875.z;
            _936 = _833 + (_890.w * _876);
            _937 = float4(((_58.SampleLevel(_23, float3(_885, _886 + 0.666666686534881591796875f, _887), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _926, _926) * _876;
            _938 = float4(((_58.SampleLevel(_23, float3(_885, _886 + 0.3333333432674407958984375f, _887), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _916, _916) * _876;
            _939 = float4(((_890.xyz * 4.0f) - 2.0f.xxx) * _906, _906) * _876;
        }
        else
        {
            _936 = _833;
            _937 = 0.0f.xxxx;
            _938 = 0.0f.xxxx;
            _939 = 0.0f.xxxx;
        }
        float3 _945 = _800 - (_18_m105.xyz + (_810 * (-_18_m107.z)));
        float _959 = max(clamp((max(abs(_945.x), abs(_945.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_945.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1039;
        float4 _1040;
        float4 _1041;
        float4 _1042;
        if (_959 < 1.0f)
        {
            float3 _968 = ((_800 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _970 = _968 - floor(_968);
            float4 _974 = _59.SampleLevel(_24, _970, 0.0f);
            float _976 = _860 * (1.0f - _959);
            float _980 = _18_m106.y * 0.5f;
            float _985 = _970.x;
            float _986 = clamp(_970.y, _980, 1.0f - _980) * 0.3333333432674407958984375f;
            float _987 = _970.z;
            float4 _990 = _60.SampleLevel(_23, float3(_985, _986, _987), 0.0f);
            float _1006 = _974.x;
            float _1017 = _974.y;
            float _1028 = _974.z;
            _1039 = _936 + (_990.w * _976);
            _1040 = _937 + (float4(((_60.SampleLevel(_23, float3(_985, _986 + 0.666666686534881591796875f, _987), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1028, _1028) * _976);
            _1041 = _938 + (float4(((_60.SampleLevel(_23, float3(_985, _986 + 0.3333333432674407958984375f, _987), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1017, _1017) * _976);
            _1042 = _939 + (float4(((_990.xyz * 4.0f) - 2.0f.xxx) * _1006, _1006) * _976);
        }
        else
        {
            _1039 = _936;
            _1040 = _937;
            _1041 = _938;
            _1042 = _939;
        }
        float4 _1125;
        float4 _1126;
        float4 _1127;
        float _1128;
        if (_959 > 0.0f)
        {
            float3 _1051 = ((_800 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1054 = _18_m106.xyz * 0.5f;
            float3 _1056 = clamp(_1051 - floor(_1051), _1054, 1.0f.xxx - _1054);
            float4 _1060 = _61.SampleLevel(_24, _1056, 0.0f);
            float _1062 = _959 * (1.0f - _833);
            float _1066 = _18_m106.y * 0.5f;
            float _1071 = _1056.x;
            float _1072 = clamp(_1056.y, _1066, 1.0f - _1066) * 0.3333333432674407958984375f;
            float _1073 = _1056.z;
            float4 _1076 = _62.SampleLevel(_23, float3(_1071, _1072, _1073), 0.0f);
            float _1092 = _1060.x;
            float _1103 = _1060.y;
            float _1114 = _1060.z;
            _1125 = _1040 + (float4(((_62.SampleLevel(_23, float3(_1071, _1072 + 0.666666686534881591796875f, _1073), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1114, _1114) * _1062);
            _1126 = _1041 + (float4(((_62.SampleLevel(_23, float3(_1071, _1072 + 0.3333333432674407958984375f, _1073), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1103, _1103) * _1062);
            _1127 = _1042 + (float4(((_1076.xyz * 4.0f) - 2.0f.xxx) * _1092, _1092) * _1062);
            _1128 = _1039 + (_1076.w * _1062);
        }
        else
        {
            _1125 = _1040;
            _1126 = _1041;
            _1127 = _1042;
            _1128 = _1039;
        }
        float _1131 = clamp((_1128 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1135 = _1125;
        _1136 = _1126;
        _1137 = _1127;
        _1138 = _1131 - _833;
        _1139 = (_1131 + _833) * 0.5f;
    }
    else
    {
        _1135 = 0.0f.xxxx;
        _1136 = 0.0f.xxxx;
        _1137 = 0.0f.xxxx;
        _1138 = 0.0f;
        _1139 = 1.0f;
    }
    float4 _1159 = _1137 + float4(_18_m108.x * _1139, (_18_m108.y * _1139) + ((_18_m108.w * _1138) * 0.5f), _18_m108.z * _1139, (_18_m108.w * _1139) + ((_18_m108.y * _1138) * 0.375f));
    float4 _1179 = _1136 + float4(_18_m109.x * _1139, (_18_m109.y * _1139) + ((_18_m109.w * _1138) * 0.5f), _18_m109.z * _1139, (_18_m109.w * _1139) + ((_18_m109.y * _1138) * 0.375f));
    float4 _1199 = _1135 + float4(_18_m110.x * _1139, (_18_m110.y * _1139) + ((_18_m110.w * _1138) * 0.5f), _18_m110.z * _1139, (_18_m110.w * _1139) + ((_18_m110.y * _1138) * 0.375f));
    float _1204 = max(0.0f, dot(_1159.xyz, _668) + _1159.w);
    float _1209 = max(0.0f, dot(_1179.xyz, _668) + _1179.w);
    float _1214 = max(0.0f, dot(_1199.xyz, _668) + _1199.w);
    float3 _1224 = reflect(_671, _668);
    float _1232 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_553, 0.001000000047497451305389404296875f))));
    float2 _1233 = float2(_797);
    float2 _1237 = floor(_1233 * _42_m0.w);
    float _1254 = floor(_798 - _42_m2.y);
    float _1258 = clamp(_1254, 0.0f, _42_m1.x - 1.0f);
    uint _1268 = (_1254 <= _1258) ? (_31.Load(uint(_18_m21.z + int(_1237.x + (_1237.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1258)) * 4 + 0)) : 0u;
    float _1271 = dot(float4(_1204, _1209, _1214, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1273;
    float _1276;
    uint _1278;
    _1273 = 0.0f.xxx;
    _1276 = 1.0f;
    _1278 = _1268;
    uint _1279;
    float3 _1274;
    float _1277;
    bool _1281;
    [loop]
    for (;;)
    {
        _1281 = _1276 > 0.00999999977648258209228515625f;
        if ((_1278 != 0u) && _1281)
        {
            uint _1285 = firstbitlow(_1278);
            _1279 = _1278 ^ (1u << (_1285 & 31u));
            float3 _1305 = float3(dot(_42_m4[_1285]._m2, _437), dot(_42_m4[_1285]._m3, _437), dot(_42_m4[_1285]._m4, _437));
            float3 _1306 = abs(_1305);
            if (all(bool3(_1306.x <= _42_m4[_1285]._m1.xyz.x, _1306.y <= _42_m4[_1285]._m1.xyz.y, _1306.z <= _42_m4[_1285]._m1.xyz.z)))
            {
                float3 _1315 = _42_m4[_1285]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1317 = _1306 * 0.100000001490116119384765625f;
                float3 _1318 = _1317 * _1317;
                float3 _1321 = (_42_m4[_1285]._m1.xyz - _1306) * _42_m4[_1285]._m5.xyz;
                float3 _1369;
                [branch]
                if (_42_m4[_1285]._m6.x == 1.0f)
                {
                    float3 _1354 = float3(dot(_42_m4[_1285]._m2.xyz, _1224), dot(_42_m4[_1285]._m3.xyz, _1224), dot(_42_m4[_1285]._m4.xyz, _1224));
                    float3 _1356 = (_42_m4[_1285]._m1.xyz - _1305) / _1354;
                    float3 _1359 = ((-_42_m4[_1285]._m1.xyz) - _1305) / _1354;
                    bool3 _1360 = bool3(_1354.x > 0.0f.xxx.x, _1354.y > 0.0f.xxx.y, _1354.z > 0.0f.xxx.z);
                    float3 _1361 = float3(_1360.x ? _1356.x : _1359.x, _1360.y ? _1356.y : _1359.y, _1360.z ? _1356.z : _1359.z);
                    _1369 = _1305 + (_1354 * min(min(_1361.x, _1361.y), _1361.z));
                }
                else
                {
                    _1369 = _1224;
                }
                float3 _1370 = normalize(_1369);
                float3 _1373 = float3(int3(sign(_1370)));
                float3 _1376 = _1370 / dot(_1370, _1373).xxx;
                float3 _1390;
                if (_1376.z < 0.0f)
                {
                    float3 _1381 = abs(_1376);
                    float2 _1388 = _1373.xy * float2(1.0f - _1381.y, 1.0f - _1381.x);
                    _1390 = float3(_1388.x, _1388.y, _1376.z);
                }
                else
                {
                    _1390 = _1376;
                }
                float _1415 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1285]._m0, float4(_668, 1.0f))));
                float _1428 = clamp((min(_1321.x, min(_1321.y, _1321.z)) * _42_m4[_1285]._m6.y) + ((((((_1315 * _1315).x - ((_1318.x + _1318.y) + _1318.z)) * _42_m4[_1285]._m5.x) * _42_m4[_1285]._m5.x) * (1.0f - _42_m4[_1285]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1285]._m6.w;
                _1274 = _1273 + ((((_29.SampleLevel(_25, float3((((_1390.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1285]._m1.w), _1232).xyz * _42_m4[_1285]._m5.w) * ((((((clamp(abs(_1271 / _1415), 0.0f, 1.0f) * 2.0f) + _1271) / (2.0f + _1415)) - 1.0f) * _18_m23.w) + 1.0f)) * _1428) * _1276);
                _1277 = _1276 * (1.0f - _1428);
            }
            else
            {
                _1274 = _1273;
                _1277 = _1276;
            }
            _1273 = _1274;
            _1276 = _1277;
            _1278 = _1279;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1497;
    if (_1281)
    {
        float3 _1436 = normalize(_1224);
        float3 _1439 = float3(int3(sign(_1436)));
        float3 _1442 = _1436 / dot(_1436, _1439).xxx;
        float3 _1456;
        if (_1442.z < 0.0f)
        {
            float3 _1447 = abs(_1442);
            float2 _1454 = _1439.xy * float2(1.0f - _1447.y, 1.0f - _1447.x);
            _1456 = float3(_1454.x, _1454.y, _1442.z);
        }
        else
        {
            _1456 = _1442;
        }
        float _1483 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_668, 1.0f))));
        _1497 = _1273 + ((_29.SampleLevel(_25, float3((((_1456.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1232).xyz * ((((((clamp(abs(_1271 / _1483), 0.0f, 1.0f) * 2.0f) + _1271) / (2.0f + _1483)) - 1.0f) * _18_m23.w) + 1.0f)) * _1276);
    }
    else
    {
        _1497 = _1273;
    }
    float2 _2018;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _2018 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1519 = int(_48_m7.x);
        bool3 _1521 = (_1519 == 2).xxx;
        float3 _1529 = _433 - float3(_1521.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1521.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1521.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1540 = max(clamp((_48_m6.w - dot(_1529, _1529)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1757;
        bool _1758;
        if (_1540 > 0.0f)
        {
            float _1755;
            bool _1756;
            if (_1519 > 0)
            {
                float3 _1547 = _433 - _48_m1[0].xyz;
                float3 _1551 = _433 - _48_m1[1].xyz;
                float3 _1555 = _433 - _48_m1[2].xyz;
                float3 _1559 = _433 - _48_m1[3].xyz;
                float4 _1564 = float4(dot(_1547, _1547), dot(_1551, _1551), dot(_1555, _1555), dot(_1559, _1559));
                float4 _1573 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1575 = float4(bool4(_1564.x < _1573.x, _1564.y < _1573.y, _1564.z < _1573.z, _1564.w < _1573.w));
                float3 _1579 = clamp(_1575.yzw - _1575.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1583 = clamp(4.0f - dot(float4(_1575.x, _1579.x, _1579.y, _1579.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1585 = clamp(_1583 + 1.0f, 0.0f, 3.0f);
                uint _1586 = uint(_1583);
                uint _1594 = uint(_1585);
                float _1600 = dot(_1564, _349[_1594]) / _48_m1[_1594].w;
                float _1617;
                if (((_1585 > _1583) && (_1600 >= 0.0f)) && (_1600 <= 1.0f))
                {
                    _1617 = _1583 + step(frac(52.98291778564453125f * frac(dot(_1233 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1564, _349[_1586]) / _48_m1[_1586].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1617 = _1583;
                }
                float _1618 = clamp(_1617, 0.0f, 4.0f);
                float4 _1622 = mul(_48_m0[uint(_1618)], _437);
                float _1625 = _1622.z;
                float4 _1626 = float4(_1622.xy, _1625, _1618);
                float3 _1627 = _1626.xyz;
                bool3 _1628 = bool3(_1627.x <= 0.0f.xxx.x, _1627.y <= 0.0f.xxx.y, _1627.z <= 0.0f.xxx.z);
                bool3 _1629 = bool3(_1627.x >= 1.0f.xxx.x, _1627.y >= 1.0f.xxx.y, _1627.z >= 1.0f.xxx.z);
                bool _1635 = any(bool3(_1628.x || _1629.x, _1628.y || _1629.y, _1628.z || _1629.z)) || ((asuint(_1625) & 2147483647u) > 2139095040u);
                int _1636 = int(_1618);
                float2 _1653 = float4(_48_m3[_1636].xy + (_1626.xy * _48_m3[_1636].zw), _1625, _1618).xy * _48_m4.zw;
                float2 _1655 = floor(_1653 + 0.5f.xx);
                float2 _1656 = _1653 - _1655;
                float _1657 = _1656.x;
                float _1658 = _1657 + 0.5f;
                float _1660 = (_1658 * _1658) * 0.5f;
                float _1663 = min(_1657, 0.0f);
                float _1667 = max(_1657, 0.0f);
                float4 _1671 = float4(_1660 - _1657, (1.0f - _1657) - (_1663 * _1663), (_1657 + 1.0f) - (_1667 * _1667), _1660) * 0.44444000720977783203125f;
                float _1672 = _1656.y;
                float _1673 = _1672 + 0.5f;
                float _1675 = (_1673 * _1673) * 0.5f;
                float _1678 = min(_1672, 0.0f);
                float _1682 = max(_1672, 0.0f);
                float4 _1686 = float4(_1675 - _1672, (1.0f - _1672) - (_1678 * _1678), (_1672 + 1.0f) - (_1682 * _1682), _1675) * 0.44444000720977783203125f;
                float2 _1688 = _1671.yw;
                float2 _1689 = _1671.xz + _1688;
                float2 _1691 = _1686.yw;
                float2 _1692 = _1686.xz + _1691;
                float2 _1698 = ((_1688 / _1689) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1700 = ((_1691 / _1692) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1702 = _1655 * _48_m4.xy;
                float _1703 = _1698.x;
                float _1704 = _1700.x;
                float _1707 = _1698.y;
                float _1710 = _1700.y;
                float _1715 = _1689.x;
                float _1716 = _1692.x;
                float _1718 = _1689.y;
                float _1720 = _1692.y;
                _1755 = _1635 ? 1.0f : (((((_1715 * _1716) * _49.SampleCmpLevelZero(_26, float3(_1702 + float2(_1703, _1704), _369).xy, _1625)) + ((_1718 * _1716) * _49.SampleCmpLevelZero(_26, float3(_1702 + float2(_1707, _1704), _369).xy, _1625))) + ((_1715 * _1720) * _49.SampleCmpLevelZero(_26, float3(_1702 + float2(_1703, _1710), _369).xy, _1625))) + ((_1718 * _1720) * _49.SampleCmpLevelZero(_26, float3(_1702 + float2(_1707, _1710), _369).xy, _1625)));
                _1756 = _1635;
            }
            else
            {
                _1755 = 1.0f;
                _1756 = false;
            }
            _1757 = _1755;
            _1758 = _1756;
        }
        else
        {
            _1757 = 1.0f;
            _1758 = false;
        }
        float _1958;
        float _1959;
        if ((_1540 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1769 = 1.0f - clamp(dot(_668, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1786 = float4((_433 - (_46_m0.xyz * (_1769 * _48_m24.x))) + (_668 * (_1769 * _48_m24.y)), 1.0f);
            float4 _1787 = mul(_48_m23, _1786);
            float2 _1788 = _1787.xy;
            float _1956;
            if (all(bool2(_1788.x > 0.0f.xx.x, _1788.y > 0.0f.xx.y)) && all(bool2(_1788.x < 1.0f.xx.x, _1788.y < 1.0f.xx.y)))
            {
                uint _1807 = clamp(uint((floor(_1787.y * _48_m25.z) + _1787.x) * _48_m25.y), 0u, 127u);
                uint _1811 = asuint(_48_m27[_1807].x);
                float2 _1812 = spvUnpackHalf2x16(_1811);
                float _1813 = _1812.x;
                float _1955;
                if (_1813 >= 0.0f)
                {
                    float4x4 _1822 = _48_m22;
                    _1822[0].w = _48_m27[_1807].y;
                    _1822[1].w = _48_m27[_1807].z;
                    _1822[2].w = _48_m27[_1807].w;
                    float4 _1829 = mul(_1822, _1786);
                    float3 _1830 = _1829.xyz;
                    float _1954;
                    if (all(bool3(_1830.x > 0.0f.xxx.x, _1830.y > 0.0f.xxx.y, _1830.z > 0.0f.xxx.z)) && all(bool3(_1830.x < 1.0f.xxx.x, _1830.y < 1.0f.xxx.y, _1830.z < 1.0f.xxx.z)))
                    {
                        float _1847 = _1829.z;
                        float2 _1853 = float4((_1829.xy * _48_m24.zw) + float2(_1813, spvUnpackHalf2x16(_1811 >> 16u).x), _1847, 1.0f).xy * _48_m26.zw;
                        float2 _1855 = floor(_1853 + 0.5f.xx);
                        float2 _1856 = _1853 - _1855;
                        float _1857 = _1856.x;
                        float _1858 = _1857 + 0.5f;
                        float _1860 = (_1858 * _1858) * 0.5f;
                        float _1863 = min(_1857, 0.0f);
                        float _1867 = max(_1857, 0.0f);
                        float4 _1871 = float4(_1860 - _1857, (1.0f - _1857) - (_1863 * _1863), (_1857 + 1.0f) - (_1867 * _1867), _1860) * 0.44444000720977783203125f;
                        float _1872 = _1856.y;
                        float _1873 = _1872 + 0.5f;
                        float _1875 = (_1873 * _1873) * 0.5f;
                        float _1878 = min(_1872, 0.0f);
                        float _1882 = max(_1872, 0.0f);
                        float4 _1886 = float4(_1875 - _1872, (1.0f - _1872) - (_1878 * _1878), (_1872 + 1.0f) - (_1882 * _1882), _1875) * 0.44444000720977783203125f;
                        float2 _1889 = _1871.xz + _1871.yw;
                        float2 _1892 = _1886.xz + _1886.yw;
                        float2 _1898 = ((_1871.yw / _1889) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1900 = ((_1886.yw / _1892) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1902 = _1855 * _48_m26.xy;
                        float _1903 = _1898.x;
                        float _1904 = _1900.x;
                        float2 _1906 = _1902 + float2(_1903, _1904);
                        float _1907 = _1898.y;
                        float2 _1909 = _1902 + float2(_1907, _1904);
                        float _1910 = _1900.y;
                        float2 _1912 = _1902 + float2(_1903, _1910);
                        float2 _1914 = _1902 + float2(_1907, _1910);
                        float _1915 = _1889.x;
                        float _1916 = _1892.x;
                        float _1918 = _1889.y;
                        float _1920 = _1892.y;
                        _1954 = ((((_1915 * _1916) * _52.SampleCmpLevelZero(_26, float3(_1906, _369).xy, _1847)) + ((_1918 * _1916) * _52.SampleCmpLevelZero(_26, float3(_1909, _369).xy, _1847))) + ((_1915 * _1920) * _52.SampleCmpLevelZero(_26, float3(_1912, _369).xy, _1847))) + ((_1918 * _1920) * _52.SampleCmpLevelZero(_26, float3(_1914, _369).xy, _1847));
                    }
                    else
                    {
                        _1954 = 1.0f;
                    }
                    _1955 = _1954;
                }
                else
                {
                    _1955 = 1.0f;
                }
                _1956 = _1955;
            }
            else
            {
                _1956 = 1.0f;
            }
            _1958 = _1758 ? _1956 : _1757;
            _1959 = _1956;
        }
        else
        {
            _1958 = _1757;
            _1959 = 1.0f;
        }
        float _1962 = lerp(lerp(_1959, _1958, _1540), min(_1959, _1958), _48_m8.x);
        float _2013;
        if (_1962 > 0.001000000047497451305389404296875f)
        {
            float3 _1969 = _433 - _18_m65.xyz;
            float2 _1979 = (_1969 + (_18_m68.xyz * _1969.y)).xz * _18_m66.z;
            float2 _1988 = _18_m67.xy * _18_m75.w;
            _2013 = _1962 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1979 + _1988, 0.0f), _51.SampleLevel(_24, (_1979 * _18_m67.w) + _1988, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1969.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2013 = _1962;
        }
        _2018 = float2(lerp(_2013, _48_m7.z, _48_m7.w), _2013);
        break;
    } while(false);
    float _2023 = lerp(1.0f, min(1.0f, _2018.x), _48_m6.x);
    float4 _2158;
    if (_2023 > 0.001000000047497451305389404296875f)
    {
        float3 _2033 = -_46_m0.xyz;
        float _2038 = dot(_2033, _1224);
        float3 _2040 = _1224 - (_2033 * _2038);
        bool3 _2042 = (_2038 < _46_m4.z).xxx;
        float3 _2050 = normalize((_2033 * _46_m4.z) + ((_2040 * rsqrt(max(6.103515625e-05f, dot(_2040, _2040)))) * _46_m4.y));
        float3 _2051 = float3(_2042.x ? _2050.x : _1224.x, _2042.y ? _2050.y : _1224.y, _2042.z ? _2050.z : _1224.z);
        float3 _2055 = _2051 + _470;
        float3 _2059 = _2055 * rsqrt(max(6.103515625e-05f, dot(_2055, _2055)));
        float _2060 = clamp(dot(_2051, _668), 0.0f, 1.0f);
        float _2062 = clamp(dot(_668, _2059), 0.0f, 1.0f);
        float _2065 = clamp(_743, 0.0f, 1.0f);
        float _2066 = _553 * _553;
        float _2067 = _2066 * _2066;
        float _2088 = (((_2062 * _2067) - _2062) * _2062) + 1.0f;
        float _2091 = 1.0f - clamp(dot(_470, _2059), 0.0f, 1.0f);
        float _2092 = _2091 * _2091;
        float _2094 = (_2091 * _2092) * _2092;
        float _2118 = 1.0f - _553;
        float _2125 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2118 * (1.04997003078460693359375f + (_2118 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2118))))));
        float _2126 = 1.0f - _2125;
        float3 _2129 = _742 + ((1.0f.xxx - _742) * 0.0476190485060214996337890625f);
        float3 _2145 = (((clamp((min(((_742 * (1.0f - _2094)) + _2094.xxx) * ((_2067 / (_2088 * _2088)) * (0.5f / (((_2060 * sqrt(((((-_2065) * _2067) + _2065) * _2065) + _2067)) + (_2065 * sqrt(((((-_2060) * _2067) + _2060) * _2060) + _2067))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2129 * (((_56.SampleLevel(_23, (float2(_2065, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2060, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2125) / _2126)) * _2129) / (1.0f.xxx - (_2129 * _2126)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2060) + ((_738 * 1.0f) * _2060)) * _46_m1.xyz;
        float3 _2156 = lerp(_2145, _2145 * _53.SampleBias(_23, float2(_2023, 0.5f), _18_m16).xyz, (1.0f - _2023).xxx) * 1.0f;
        _2158 = float4(_2156.x, _2156.y, _2156.z, 0.0f.xxxx.w);
    }
    else
    {
        _2158 = 0.0f.xxxx;
    }
    float2 _2160 = floor(_1233 * 0.03125f);
    int _2168 = int((_2160.x + (_2160.y * _44_m5)) * 8.0f);
    float _2175 = floor(_798 - (_18_m3.y * _44_m11));
    float _2179 = clamp(_2175, 0.0f, _44_m7 - 1.0f);
    int _2181 = int(_2179 * 8.0f);
    float3 _2183;
    float _2186;
    _2183 = 0.0f.xxx;
    _2186 = 1.0f;
    float3 _2184;
    float _2187;
    [loop]
    for (int _2188 = 0; _2188 <= 7; _2183 = _2184, _2186 = _2187, _2188++)
    {
        uint _2206 = (_2175 <= _2179) ? (_31.Load(uint(_2168 + _2188) * 4 + 0) & _31.Load(uint((_18_m21.y + _2181) + _2188) * 4 + 0)) : 0u;
        uint _2207 = uint(_2188);
        float3 _2211;
        _2187 = _2186;
        _2211 = 0.0f.xxx;
        uint _2214;
        float _2209;
        float3 _2212;
        [loop]
        for (uint _2213 = _2206; _2213 != 0u; _2187 = _2209, _2211 = _2212, _2213 = _2214)
        {
            uint _2218 = firstbitlow(_2213);
            _2214 = _2213 ^ (1u << (_2218 & 31u));
            int _2224 = int((32u * _2207) + _2218) * 8;
            int _2227 = _2224 + 1;
            int _2230 = _2224 + 2;
            int _2233 = _2224 + 3;
            int _2236 = _2224 + 5;
            int _2239 = _2224 + 6;
            int _2242 = _2224 + 7;
            uint _2246 = uint(_46_m6[_2236].w);
            float _2321;
            if ((_2246 & 1u) == 1u)
            {
                uint _2252 = asuint(_46_m6[_2236].x);
                uint _2259 = asuint(_46_m6[_2236].y);
                uint _2266 = asuint(_46_m6[_2236].z);
                uint _2273 = asuint(_46_m6[_2239].x);
                uint _2280 = asuint(_46_m6[_2239].y);
                uint _2287 = asuint(_46_m6[_2239].z);
                float3 _2306 = abs(mul(float4(_433 - _46_m6[_2227].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2252).x, spvUnpackHalf2x16(_2266).x, spvUnpackHalf2x16(_2280).x, 0.0f), float4(spvUnpackHalf2x16(_2252 >> 16u).x, spvUnpackHalf2x16(_2266 >> 16u).x, spvUnpackHalf2x16(_2280 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2259).x, spvUnpackHalf2x16(_2273).x, spvUnpackHalf2x16(_2287).x, 0.0f), float4(spvUnpackHalf2x16(_2259 >> 16u).x, spvUnpackHalf2x16(_2273 >> 16u).x, spvUnpackHalf2x16(_2287 >> 16u).x, 0.0f))).xyz);
                float _2313 = _46_m6[_2242].x * 0.5f;
                float _2319 = 1.0f - clamp((max(max(_2306.x, _2306.y), _2306.z) - (_2313 + 0.5f)) / (0.5f - _2313), 0.0f, 1.0f);
                _2321 = _2319 * _2319;
            }
            else
            {
                _2321 = 1.0f;
            }
            bool _2325 = _46_m6[_2233].z > 0.5f;
            if ((false || (_2321 < 0.001000000047497451305389404296875f)) || _2325)
            {
                _2209 = _2187;
                _2212 = _2211;
                continue;
            }
            float _3436;
            float3 _3437;
            if (_46_m6[_2224].w < 1.5f)
            {
                float3 _2813 = float3(0.100000001490116119384765625f, _553, 1.0f);
                float _2822 = (0.5f + (0.5f * _46_m6[_2230].y)) - abs(_46_m6[_2230].x);
                float _2823 = _46_m6[_2230].y - _2822;
                float _2830 = abs(max((1.0f - abs(_2822)) - abs(_2823), 0.00048828125f));
                float3 _2834 = normalize(float3(_2822, _2823, (_46_m6[_2230].x >= 0.0f) ? _2830 : (-_2830)));
                float3 _2835 = _46_m6[_2227].xyz - _433;
                float _2836 = dot(_2835, _2835);
                float _2837 = rsqrt(_2836);
                float3 _2838 = _2835 * _2837;
                float _2842 = clamp(_46_m6[_2242].y * _2837, 0.0f, 1.0f);
                int _2847 = int(_46_m6[_2242].w);
                float3 _2848 = _2834 * _46_m6[_2230].z;
                float3 _2849 = _2848 * 0.5f;
                float3 _2850 = _2835 - _2849;
                float3 _2851 = _2835 + _2849;
                bool _2854 = (uint(_46_m6[_2224].w) & 1u) == 0u;
                bool _2857 = _2854 || ((_2246 & 2u) != 0u);
                bool _2860 = (!_2854) && (_46_m6[_2230].z > 0.0f);
                float _2879;
                float _2880;
                if (_2860)
                {
                    float _2864 = length(_2850);
                    float _2865 = length(_2851);
                    _2879 = clamp(0.5f * ((dot(_668, _2850) / _2864) + (dot(_668, _2851) / _2865)), 0.0f, 1.0f);
                    _2880 = 1.0f / ((((_2864 * _2865) + dot(_2850, _2851)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2879 = clamp(dot(_668, _2838), 0.0f, 1.0f);
                    _2880 = 1.0f;
                }
                float _2902;
                if (_46_m6[_2239].w < 0.0f)
                {
                    float _2896 = _2836 * (_46_m6[_2227].w * _46_m6[_2227].w);
                    float _2899 = clamp(1.0f - (_2896 * _2896), 0.0f, 1.0f);
                    _2902 = lerp(1.0f / (_2836 + 1.0f), _2880, float(_2860)) * (_2899 * _2899);
                }
                else
                {
                    float3 _2885 = _2835 * _46_m6[_2227].w;
                    _2902 = _2880 * pow(1.0f - clamp(dot(_2885, _2885), 0.0f, 1.0f), _46_m6[_2239].w);
                }
                float _2908 = clamp((dot(_2838, -_2834) - _46_m6[_2230].z) * _46_m6[_2230].w, 0.0f, 1.0f);
                float _2912 = _2902 * lerp(1.0f, _2908 * _2908, float(_2854));
                float _3012;
                if ((!_2860) && (_2847 >= 0))
                {
                    uint _2918 = uint(_2847);
                    float2 _3005;
                    [branch]
                    if (_2854)
                    {
                        float4 _2995 = mul(_66_m1[_2918], _437);
                        _3005 = _66_m0[_2918].xy + (clamp(_2995.xy / _2995.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2918].zw);
                    }
                    else
                    {
                        float3 _2932 = mul(float4(-_2835, 0.0f), _66_m1[_2918]).xyz;
                        float3 _376 = _2932;
                        float3 _375 = _2932;
                        float3 _374 = abs(_2932);
                        uint _2941 = uint(int(_374.y > _374.x));
                        uint _2947 = (_374.z > _374[_2941]) ? 2u : _2941;
                        uint _2953 = (_2947 * 2u) + uint(_375[_2947] < 0.0f);
                        float _2957 = abs(_376[_2953 / 2u]);
                        float _2977 = 0.5f - (0.000244140625f / _66_m0[_2918].w);
                        _3005 = _66_m0[_2918].xy + (clamp(float2((float(_2953) + ((((_376[uint(_350[_2953].x)] * _351[_2953].x) / _2957) * _2977) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_376[uint(_350[_2953].y)] * _351[_2953].y) / _2957) * _2977)), 0.0f.xx, 1.0f.xx) * _66_m0[_2918].zw);
                    }
                    _3012 = _2912 * _64.SampleLevel(_23, _3005, 0.0f).x;
                }
                else
                {
                    _3012 = _2912;
                }
                bool _3013 = _3012 > 0.0f;
                float _3301;
                if (_3013)
                {
                    int _3065;
                    if (_2857)
                    {
                        _3065 = int(_46_m6[_2233].x);
                    }
                    else
                    {
                        uint _3020 = asuint(_46_m6[_2230].w);
                        uint _3022 = asuint(_46_m6[_2233].x);
                        float3 _3023 = _433 - _46_m6[_2227].xyz;
                        float3 _3024 = abs(_3023);
                        float _3025 = _3024.x;
                        float _3026 = _3024.y;
                        float _3028 = _3024.z;
                        int _3060;
                        if ((_3025 > _3026) && (_3025 > _3028))
                        {
                            _3060 = int((_3023.x > 0.0f) ? (_3020 >> 24u) : ((_3020 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3052;
                            if (_3026 > _3028)
                            {
                                _3052 = int((_3023.y > 0.0f) ? ((_3020 >> 8u) & 255u) : (_3020 & 255u));
                            }
                            else
                            {
                                _3052 = int((_3023.z > 0.0f) ? ((_3022 >> 8u) & 255u) : (_3022 & 255u));
                            }
                            _3060 = _3052;
                        }
                        _3065 = (_3060 < 80) ? _3060 : (-1);
                    }
                    float4 _3082 = mul(_48_m10[_3065], float4((_433 - ((-_2838) * _48_m11[_3065].x)) + (_668 * (_48_m11[_3065].y * 5.0f)), 1.0f));
                    float _3083 = _3082.w;
                    float3 _3086 = _3082.xyz / _3083.xxx;
                    float2 _3087 = _3086.xy;
                    float3 _3095 = _3086.xyz;
                    bool3 _3096 = bool3(_3095.x <= 0.0f.xxx.x, _3095.y <= 0.0f.xxx.y, _3095.z <= 0.0f.xxx.z);
                    bool3 _3097 = bool3(_3095.x >= 1.0f.xxx.x, _3095.y >= 1.0f.xxx.y, _3095.z >= 1.0f.xxx.z);
                    float _3100 = _3086.z;
                    float2 _3111 = ((_3087 * (_48_m12[_3065].zw - _48_m12[_3065].xy)) + _48_m12[_3065].xy).xy * _48_m13.zw;
                    float2 _3113 = floor(_3111 + 0.5f.xx);
                    float2 _3114 = _3111 - _3113;
                    float _3115 = _3114.x;
                    float _3116 = _3115 + 0.5f;
                    float _3117 = _3116 * _3116;
                    float _3120 = 1.0f - _3115;
                    float _3121 = min(_3115, 0.0f);
                    float _3124 = _3115 + 1.0f;
                    float _3125 = max(_3115, 0.0f);
                    float _3136 = _3114.y;
                    float _3137 = _3136 + 0.5f;
                    float _3138 = _3137 * _3137;
                    float _3141 = 1.0f - _3136;
                    float _3142 = min(_3136, 0.0f);
                    float _3145 = _3136 + 1.0f;
                    float _3146 = max(_3136, 0.0f);
                    float3 _3158 = float3(0.1599999964237213134765625f * _3120, 0.1599999964237213134765625f * ((_3124 - (_3125 * _3125)) + 1.0f), _3117 * 0.07999999821186065673828125f);
                    float3 _3159 = float3(0.1599999964237213134765625f * ((_3117 * 0.5f) - _3115), 0.1599999964237213134765625f * ((_3120 - (_3121 * _3121)) + 1.0f), 0.1599999964237213134765625f * _3124) + _3158;
                    float3 _3161 = float3(0.1599999964237213134765625f * _3141, 0.1599999964237213134765625f * ((_3145 - (_3146 * _3146)) + 1.0f), _3138 * 0.07999999821186065673828125f);
                    float3 _3162 = float3(0.1599999964237213134765625f * ((_3138 * 0.5f) - _3136), 0.1599999964237213134765625f * ((_3141 - (_3142 * _3142)) + 1.0f), 0.1599999964237213134765625f * _3145) + _3161;
                    float3 _3168 = ((_3158 / _3159) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3170 = ((_3161 / _3162) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3172 = _3113 * _48_m13.xy;
                    float _3173 = _3168.x;
                    float _3174 = _3170.x;
                    float _3177 = _3168.y;
                    float _3180 = _3168.z;
                    float _3183 = _3170.y;
                    float _3190 = _3170.z;
                    float _3197 = _3159.x;
                    float _3198 = _3162.x;
                    float _3200 = _3159.y;
                    float _3202 = _3159.z;
                    float _3204 = _3162.y;
                    float _3208 = _3162.z;
                    float _3266 = (((((((_3197 * _3198) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3173, _3174), _369).xy, _3100)) + ((_3200 * _3198) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3177, _3174), _369).xy, _3100))) + ((_3202 * _3198) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3180, _3174), _369).xy, _3100))) + ((_3197 * _3204) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3173, _3183), _369).xy, _3100))) + ((_3200 * _3204) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3177, _3183), _369).xy, _3100))) + ((_3202 * _3204) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3180, _3183), _369).xy, _3100))) + ((_3197 * _3208) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3173, _3190), _369).xy, _3100));
                    float2 _3287 = min(_3087, 1.0f.xx - _3087);
                    _3301 = (_3065 >= 0) ? lerp(1.0f, (any(bool3(_3096.x || _3097.x, _3096.y || _3097.y, _3096.z || _3097.z)) || ((asuint(_3100) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3266 + ((_3200 * _3208) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3177, _3190), _369).xy, _3100))) + ((_3202 * _3208) * _50.SampleCmpLevelZero(_26, float3(_3172 + float2(_3180, _3190), _369).xy, _3100))), _2857 ? min(_48_m11[_3065].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_3065].z - _3083) * 0.25f, min(_3287.x, _3287.y)))) : _48_m11[_3065].w) : 1.0f;
                }
                else
                {
                    _3301 = 1.0f;
                }
                float3 _3324;
                float3 _3325;
                if (_2860)
                {
                    float3 _3304 = _2813 * _2813;
                    float _3313 = dot(_1224, _2848);
                    _3324 = _3304 / clamp(_3304 + (0.5f * clamp(_46_m6[_2230].z * _2837, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3325 = normalize(_2850 + (_2848 * clamp(dot(_2850, (_1224 * _3313) - _2848) / ((_46_m6[_2230].z * _46_m6[_2230].z) - (_3313 * _3313)), 0.0f, 1.0f)));
                }
                else
                {
                    _3324 = 1.0f.xxx;
                    _3325 = _2838;
                }
                float3 _3326 = _3325 + _470;
                float3 _3330 = _3326 * rsqrt(max(6.103515625e-05f, dot(_3326, _3326)));
                float3 _3435;
                if (_3013)
                {
                    float _3333 = clamp(_2879, 0.0f, 1.0f);
                    float _3335 = clamp(dot(_668, _3330), 0.0f, 1.0f);
                    float _3337 = clamp(dot(_470, _3330), 0.0f, 1.0f);
                    float _3338 = clamp(_743, 0.0f, 1.0f);
                    float _3339 = _553 * _553;
                    float _3349;
                    if (_2842 > 0.0f)
                    {
                        _3349 = clamp(_3339 + ((_2842 * _2842) / ((_3337 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3349 = _3339;
                    }
                    float _3350 = _3349 * _3349;
                    float _3371 = (((_3335 * _3350) - _3335) * _3335) + 1.0f;
                    float _3376 = 1.0f - _3337;
                    float _3377 = _3376 * _3376;
                    float _3379 = (_3376 * _3377) * _3377;
                    float _3403 = 1.0f - _553;
                    float _3410 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3403 * (1.04997003078460693359375f + (_3403 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3403))))));
                    float _3411 = 1.0f - _3410;
                    float3 _3414 = _742 + ((1.0f.xxx - _742) * 0.0476190485060214996337890625f);
                    float3 _3434 = ((clamp((min(((_742 * (1.0f - _3379)) + _3379.xxx) * (((_3350 / (_3371 * _3371)) * _3324.y) * (0.5f / (((_3333 * sqrt(((((-_3338) * _3350) + _3338) * _3338) + _3350)) + (_3338 * sqrt(((((-_3333) * _3350) + _3333) * _3333) + _3350))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3414 * (((_56.SampleLevel(_23, (float2(_3338, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3333, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3410) / _3411)) * _3414) / (1.0f.xxx - (_3414 * _3411)))) * _46_m6[_2242].z, 0.0f.xxx, 1000.0f.xxx) * _2879) + ((_738 * _3324.z) * _2879)) * (((_46_m6[_2224].xyz * _3012) * _3301) * _2321);
                    _3435 = _3434;
                }
                else
                {
                    _3435 = 0.0f.xxx;
                }
                _3436 = _2187;
                _3437 = _3435;
            }
            else
            {
                float _2811;
                do
                {
                    if (_2325)
                    {
                        _2811 = 1.0f;
                        break;
                    }
                    float _2345 = (0.5f + (0.5f * _46_m6[_2230].y)) - abs(_46_m6[_2230].x);
                    float _2346 = _46_m6[_2230].y - _2345;
                    float _2353 = abs(max((1.0f - abs(_2345)) - abs(_2346), 0.00048828125f));
                    float3 _2357 = normalize(float3(_2345, _2346, (_46_m6[_2230].x >= 0.0f) ? _2353 : (-_2353)));
                    float3 _2358 = _46_m6[_2227].xyz - _433;
                    float _2359 = dot(_2358, _2358);
                    float3 _2361 = _2358 * rsqrt(_2359);
                    int _2364 = int(_46_m6[_2242].w);
                    float3 _2366 = (_2357 * _46_m6[_2230].z) * 0.5f;
                    float3 _2367 = _2358 - _2366;
                    float3 _2368 = _2358 + _2366;
                    bool _2371 = (uint(_46_m6[_2224].w) & 1u) == 0u;
                    bool _2374 = _2371 || ((_2246 & 2u) != 0u);
                    bool _2377 = (!_2371) && (_46_m6[_2230].z > 0.0f);
                    float _2389;
                    if (_2377)
                    {
                        _2389 = 1.0f / ((((length(_2367) * length(_2368)) + dot(_2367, _2368)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2389 = 1.0f;
                    }
                    float _2411;
                    if (_46_m6[_2239].w < 0.0f)
                    {
                        float _2405 = _2359 * (_46_m6[_2227].w * _46_m6[_2227].w);
                        float _2408 = clamp(1.0f - (_2405 * _2405), 0.0f, 1.0f);
                        _2411 = lerp(1.0f / (_2359 + 1.0f), _2389, float(_2377)) * (_2408 * _2408);
                    }
                    else
                    {
                        float3 _2394 = _2358 * _46_m6[_2227].w;
                        _2411 = _2389 * pow(1.0f - clamp(dot(_2394, _2394), 0.0f, 1.0f), _46_m6[_2239].w);
                    }
                    float _2417 = clamp((dot(_2361, -_2357) - _46_m6[_2230].z) * _46_m6[_2230].w, 0.0f, 1.0f);
                    float _2421 = _2411 * lerp(1.0f, _2417 * _2417, float(_2371));
                    float _2521;
                    if ((!_2377) && (_2364 >= 0))
                    {
                        uint _2427 = uint(_2364);
                        float2 _2514;
                        [branch]
                        if (_2371)
                        {
                            float4 _2504 = mul(_66_m1[_2427], _437);
                            _2514 = _66_m0[_2427].xy + (clamp(_2504.xy / _2504.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2427].zw);
                        }
                        else
                        {
                            float3 _2441 = mul(float4(-_2358, 0.0f), _66_m1[_2427]).xyz;
                            float3 _379 = _2441;
                            float3 _378 = _2441;
                            float3 _377 = abs(_2441);
                            uint _2450 = uint(int(_377.y > _377.x));
                            uint _2456 = (_377.z > _377[_2450]) ? 2u : _2450;
                            uint _2462 = (_2456 * 2u) + uint(_378[_2456] < 0.0f);
                            float _2466 = abs(_379[_2462 / 2u]);
                            float _2486 = 0.5f - (0.000244140625f / _66_m0[_2427].w);
                            _2514 = _66_m0[_2427].xy + (clamp(float2((float(_2462) + ((((_379[uint(_350[_2462].x)] * _351[_2462].x) / _2466) * _2486) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_379[uint(_350[_2462].y)] * _351[_2462].y) / _2466) * _2486)), 0.0f.xx, 1.0f.xx) * _66_m0[_2427].zw);
                        }
                        _2521 = _2421 * _64.SampleLevel(_23, _2514, 0.0f).x;
                    }
                    else
                    {
                        _2521 = _2421;
                    }
                    float _2810;
                    if (_2521 > 0.0f)
                    {
                        int _2574;
                        if (_2374)
                        {
                            _2574 = int(_46_m6[_2233].x);
                        }
                        else
                        {
                            uint _2529 = asuint(_46_m6[_2230].w);
                            uint _2531 = asuint(_46_m6[_2233].x);
                            float3 _2532 = _433 - _46_m6[_2227].xyz;
                            float3 _2533 = abs(_2532);
                            float _2534 = _2533.x;
                            float _2535 = _2533.y;
                            float _2537 = _2533.z;
                            int _2569;
                            if ((_2534 > _2535) && (_2534 > _2537))
                            {
                                _2569 = int((_2532.x > 0.0f) ? (_2529 >> 24u) : ((_2529 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2561;
                                if (_2535 > _2537)
                                {
                                    _2561 = int((_2532.y > 0.0f) ? ((_2529 >> 8u) & 255u) : (_2529 & 255u));
                                }
                                else
                                {
                                    _2561 = int((_2532.z > 0.0f) ? ((_2531 >> 8u) & 255u) : (_2531 & 255u));
                                }
                                _2569 = _2561;
                            }
                            _2574 = (_2569 < 80) ? _2569 : (-1);
                        }
                        float4 _2591 = mul(_48_m10[_2574], float4((_433 - ((-_2361) * _48_m11[_2574].x)) + (_668 * (_48_m11[_2574].y * 5.0f)), 1.0f));
                        float _2592 = _2591.w;
                        float3 _2595 = _2591.xyz / _2592.xxx;
                        float2 _2596 = _2595.xy;
                        float3 _2604 = _2595.xyz;
                        bool3 _2605 = bool3(_2604.x <= 0.0f.xxx.x, _2604.y <= 0.0f.xxx.y, _2604.z <= 0.0f.xxx.z);
                        bool3 _2606 = bool3(_2604.x >= 1.0f.xxx.x, _2604.y >= 1.0f.xxx.y, _2604.z >= 1.0f.xxx.z);
                        float _2609 = _2595.z;
                        float2 _2620 = ((_2596 * (_48_m12[_2574].zw - _48_m12[_2574].xy)) + _48_m12[_2574].xy).xy * _48_m13.zw;
                        float2 _2622 = floor(_2620 + 0.5f.xx);
                        float2 _2623 = _2620 - _2622;
                        float _2624 = _2623.x;
                        float _2625 = _2624 + 0.5f;
                        float _2626 = _2625 * _2625;
                        float _2629 = 1.0f - _2624;
                        float _2630 = min(_2624, 0.0f);
                        float _2633 = _2624 + 1.0f;
                        float _2634 = max(_2624, 0.0f);
                        float _2645 = _2623.y;
                        float _2646 = _2645 + 0.5f;
                        float _2647 = _2646 * _2646;
                        float _2650 = 1.0f - _2645;
                        float _2651 = min(_2645, 0.0f);
                        float _2654 = _2645 + 1.0f;
                        float _2655 = max(_2645, 0.0f);
                        float3 _2667 = float3(0.1599999964237213134765625f * _2629, 0.1599999964237213134765625f * ((_2633 - (_2634 * _2634)) + 1.0f), _2626 * 0.07999999821186065673828125f);
                        float3 _2668 = float3(0.1599999964237213134765625f * ((_2626 * 0.5f) - _2624), 0.1599999964237213134765625f * ((_2629 - (_2630 * _2630)) + 1.0f), 0.1599999964237213134765625f * _2633) + _2667;
                        float3 _2670 = float3(0.1599999964237213134765625f * _2650, 0.1599999964237213134765625f * ((_2654 - (_2655 * _2655)) + 1.0f), _2647 * 0.07999999821186065673828125f);
                        float3 _2671 = float3(0.1599999964237213134765625f * ((_2647 * 0.5f) - _2645), 0.1599999964237213134765625f * ((_2650 - (_2651 * _2651)) + 1.0f), 0.1599999964237213134765625f * _2654) + _2670;
                        float3 _2677 = ((_2667 / _2668) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2679 = ((_2670 / _2671) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2681 = _2622 * _48_m13.xy;
                        float _2682 = _2677.x;
                        float _2683 = _2679.x;
                        float _2686 = _2677.y;
                        float _2689 = _2677.z;
                        float _2692 = _2679.y;
                        float _2699 = _2679.z;
                        float _2706 = _2668.x;
                        float _2707 = _2671.x;
                        float _2709 = _2668.y;
                        float _2711 = _2668.z;
                        float _2713 = _2671.y;
                        float _2717 = _2671.z;
                        float _2775 = (((((((_2706 * _2707) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2682, _2683), _369).xy, _2609)) + ((_2709 * _2707) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2686, _2683), _369).xy, _2609))) + ((_2711 * _2707) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2689, _2683), _369).xy, _2609))) + ((_2706 * _2713) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2682, _2692), _369).xy, _2609))) + ((_2709 * _2713) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2686, _2692), _369).xy, _2609))) + ((_2711 * _2713) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2689, _2692), _369).xy, _2609))) + ((_2706 * _2717) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2682, _2699), _369).xy, _2609));
                        float2 _2796 = min(_2596, 1.0f.xx - _2596);
                        _2810 = (_2574 >= 0) ? lerp(1.0f, (any(bool3(_2605.x || _2606.x, _2605.y || _2606.y, _2605.z || _2606.z)) || ((asuint(_2609) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2775 + ((_2709 * _2717) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2686, _2699), _369).xy, _2609))) + ((_2711 * _2717) * _50.SampleCmpLevelZero(_26, float3(_2681 + float2(_2689, _2699), _369).xy, _2609))), _2374 ? min(_48_m11[_2574].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2574].z - _2592) * 0.25f, min(_2796.x, _2796.y)))) : _48_m11[_2574].w) : 1.0f;
                    }
                    else
                    {
                        _2810 = 1.0f;
                    }
                    _2811 = _2810;
                    break;
                } while(false);
                _3436 = _2187 * _2811;
                _3437 = 0.0f.xxx;
            }
            _2209 = _3436;
            _2212 = _2211 + _3437;
        }
        _2184 = _2183 + _2211;
    }
    float3 _3444 = (((((float3(_1204, _1209, _1214) * (_738 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _524, _39_m4)) * _18_m22.x) + (((((_1497 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_742 * _757.x) + (clamp(50.0f * _742.y, 0.0f, 1.0f) * _757.y).xxx)) * 1.0f)) + (((_646 * lerp(_622, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2158.xyz + ((_2183 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2186)).xyz;
    float4 _3445 = float4(_3444.x, _3444.y, _3444.z, _371.w);
    _3445.w = _548;
    float _3462 = _433.y * _18_m46.w;
    float _3467 = max(0.00999999977648258209228515625f, _3462 + _18_m47.w);
    float3 _3481 = exp(_18_m45.xyz * ((-max(0.0f, (_471 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3467)) / _3467) * exp(_3462 + _18_m48.w))));
    float _3484 = dot(_671, _18_m44.xyz);
    float _3490 = _18_m45.w * _18_m45.w;
    float _3494 = (1.0f + _3490) - ((2.0f * _18_m45.w) * _3484);
    float3 _3824;
    float _3825;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3652 = (uint3(int3(int(_797.x), int(_797.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3653 = _3652.y;
        uint _3654 = _3652.z;
        uint _3657 = _3652.x + (_3653 * _3654);
        uint _3659 = _3653 + (_3654 * _3657);
        uint _3661 = _3654 + (_3657 * _3659);
        uint _3663 = _3657 + (_3659 * _3661);
        float _3685 = dot(_671, -_16_m0[2].xyz);
        float3 _3695 = _433 - _16_m11.xyz;
        float _3697 = (_18_m55.w * ((_3685 > 5.9604644775390625e-08f) ? (1.0f / _3685) : 0.0f)) * (1.0f / _471);
        float _3698 = _3695.y;
        float _3699 = _3697 * _3698;
        float _3701 = _16_m11.y + _3699;
        float _3702 = _3698 - _3699;
        float _3704 = (1.0f - _3697) * _471;
        float _3718 = max(-127.0f, _18_m49.z * _3702);
        float _3742 = max(-127.0f, _18_m52.x * _3702);
        float _3753 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3701 - _18_m49.x)))) * ((abs(_3718) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3718)) / _3718) : (0.693147182464599609375f - (0.2402265071868896484375f * _3718)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3701 - _18_m52.z)))) * ((abs(_3742) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3742)) / _3742) : (0.693147182464599609375f - (0.2402265071868896484375f * _3742))));
        float _3775 = clamp((_471 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3778 = clamp((max(clamp(exp2(-(_3753 * _3704)), 0.0f, 1.0f), _18_m51.w) + clamp((_471 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3775, 0.0f, 1.0f);
        float4 _3818 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1233 + ((((float3(uint3(_3663, _3659 + (_3661 * _3663), _372) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_798 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_798 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3824 = _3818.xyz + (((_18_m51.xyz * (1.0f - _3778)) + (((_18_m54.xyz * pow(clamp(dot(_470, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3753 * max(_3704 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3775))) * _3818.w);
        _3825 = _3818.w * _3778;
    }
    else
    {
        float3 _3524 = _433 - _16_m11.xyz;
        float _3526 = _3524.y;
        float _3540 = max(-127.0f, _18_m49.z * _3526);
        float _3564 = max(-127.0f, _18_m52.x * _3526);
        float _3575 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3540) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3540)) / _3540) : (0.693147182464599609375f - (0.2402265071868896484375f * _3540)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3564) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3564)) / _3564) : (0.693147182464599609375f - (0.2402265071868896484375f * _3564))));
        float _3597 = clamp((_471 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3600 = clamp((max(clamp(exp2(-(_3575 * _471)), 0.0f, 1.0f), _18_m51.w) + clamp((_471 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3597, 0.0f, 1.0f);
        _3824 = (_18_m51.xyz * (1.0f - _3600)) + (((_18_m54.xyz * pow(clamp(dot(_470, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3575 * max(_471 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3597));
        _3825 = _3600;
    }
    float3 _3835 = lerp(_692.xyz, ((_3445.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3481 * _3825)) : (_3481 * _3825))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3484 * _3484)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3490) / max((12.56637096405029296875f * _3494) * sqrt(_3494), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3481)) * _3825 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3824 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz, _548.xxx).xyz;
    float3 _3845 = lerp(dot(_3835, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3835, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3855 = min(lerp(((sqrt(sqrt(abs(_710 * 0.5f))) * float2(int2(sign(_710)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _697.xx), 1.0f.xx);
    float4 _3856 = float4(_3855.x, _3855.y, _371.z, _371.w);
    _3856.z = float(clamp(max(dot(_3845.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _548, _548) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3856.w = lerp(0.0f, 0.699999988079071044921875f, _697);
    float3 renodx_output_color = float3(_3845.x, _3845.y, _3845.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3445.w);
    _14 = _3856;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
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

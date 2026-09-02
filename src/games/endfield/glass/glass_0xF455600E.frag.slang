#include "../shared.h"

// Endfield 1.5 Vulkan shader 0xF455600E, migrated from 1.4.4 shader 0x6F45F065.
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
    float2 _398 = gl_FragCoord.xy * _18_m0.zw;
    float2 _401 = (_398 * 2.0f) - 1.0f.xx;
    float4 _404 = float4(_401, gl_FragCoord.z, 1.0f);
    _404.y = -_401.y;
    float4 _407 = mul(_16_m6, _404);
    float3 _411 = _407.xyz / _407.w.xxx;
    float4 _415 = float4(_411, 1.0f);
    float _422 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _429 = cross(_6, float4(_7.xyz, _422).xyz) * _422;
    float3 _444;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _444 = _16_m11.xyz - _411;
            break;
        }
        else
        {
            _444 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _445 = dot(_444, _444);
    float _447 = rsqrt(max(_445, 9.9999999392252902907785028219223e-09f));
    float3 _448 = _444 * _447;
    float _449 = _445 * _447;
    float4 _482 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float _484 = _482.w;
    float4 _487 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
    float2 _490 = (_487.xy * 2.0f.xx) - 1.0f.xx;
    float2 _491 = abs(_490);
    bool2 _492 = bool2(_491.x < 0.01200000010430812835693359375f.xx.x, _491.y < 0.01200000010430812835693359375f.xx.y);
    float2 _493 = float2(_492.x ? 0.0f.xx.x : _490.x, _492.y ? 0.0f.xx.y : _490.y);
    float2 _494 = _493 * _39_m0;
    float _498 = sqrt(clamp(1.0f - dot(_493, _493), 0.0f, 1.0f));
    float _499 = _494.x;
    float _500 = _494.y;
    float _501 = _487.z;
    float _502 = _487.w;
    float _520 = lerp(_484, _502, _39_m6) * _39_m32.w;
    float _526 = lerp(_520, _520 * _8.x, _39_m64);
    float _531 = lerp(_39_m2, _39_m3, _501);
    float _541 = lerp(_484, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _549 = clamp(_39_m57, 0.0f, 1.0f);
    float _559 = clamp((lerp(1.0f, lerp(lerp(_484, _501, clamp(_39_m57 - 1.0f, 0.0f, 1.0f)), _502, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _549) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float3 _591 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _559) * _39_m56, _549.xxx);
    float _595 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _559);
    float3 _600 = lerp(clamp((_482.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _595).xxx + (_21_m0[_11]._m9.xyz * _595));
    float3 _624;
    [branch]
    if (_39_m49 > 0.5f)
    {
        _624 = _591 + (_39_m55.xyz * ((1.0f - pow(clamp(dot(_448, lerp(normalize(((_7.xyz * _499) + (_429 * _500)) + (_6 * _498)), _6, _39_m53.xxx)) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52)));
    }
    else
    {
        _624 = _591;
    }
    float3 _646 = normalize(((_7.xyz * _499) + (_429 * _500)) + (_6 * (_498 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float3 _649 = -_448;
    float4 _670 = _36.SampleBias(_37, _398 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_649, _646, _39_m60)) * _39_m61).xy * _526), _18_m16);
    float _680 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _693 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _693.y = -_693.y;
    float _719 = 0.07999999821186065673828125f * _39_m1;
    float3 _720 = _600 * _541;
    float3 _721 = _600 - _720;
    float3 _725 = (_719 - (_719 * _541)).xxx + _720;
    float _726 = dot(_646, _448);
    float4 _729 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _531) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _730 = _729.x;
    float2 _740 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_730 * _730, exp2((-9.27999973297119140625f) * max(0.0f, _726))) * _730) + _729.y)) + _729.zw;
    uint2 _780;
    float _781;
    if (_18_m24.y == 1.0f)
    {
        float4 _757 = mul(_18_m135, _415);
        float4 _760 = _757;
        _760.y = -_757.y;
        float4 _763 = _760 * (1.0f / _757.w);
        _780 = uint2(clamp(((_763.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _781 = 1.0f / ((_18_m2.z * _763.z) + _18_m2.w);
    }
    else
    {
        _780 = uint2(gl_FragCoord.xy);
        _781 = abs(mul(_16_m0, _415).z);
    }
    float3 _783 = _411 + (_646 * 0.25f);
    float3 _793 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _802 = _783 - (_18_m105.xyz + (_793 * (-_18_m107.w)));
    float _816 = max(clamp((max(abs(_802.x), abs(_802.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_802.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1118;
    float4 _1119;
    float4 _1120;
    float _1121;
    float _1122;
    if ((_18_m105.w != 0.0f) && (_816 < 1.0f))
    {
        float3 _829 = _783 - (_18_m105.xyz + (_793 * (-_18_m107.y)));
        float _843 = max(clamp((max(abs(_829.x), abs(_829.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_829.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _919;
        float4 _920;
        float4 _921;
        float4 _922;
        if (_843 < 1.0f)
        {
            float3 _852 = ((_783 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _854 = _852 - floor(_852);
            float4 _858 = _57.SampleLevel(_24, _854, 0.0f);
            float _859 = 1.0f - _843;
            float _863 = _18_m106.y * 0.5f;
            float _868 = _854.x;
            float _869 = clamp(_854.y, _863, 1.0f - _863) * 0.3333333432674407958984375f;
            float _870 = _854.z;
            float4 _873 = _58.SampleLevel(_23, float3(_868, _869, _870), 0.0f);
            float _889 = _858.x;
            float _899 = _858.y;
            float _909 = _858.z;
            _919 = _816 + (_873.w * _859);
            _920 = float4(((_58.SampleLevel(_23, float3(_868, _869 + 0.666666686534881591796875f, _870), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _909, _909) * _859;
            _921 = float4(((_58.SampleLevel(_23, float3(_868, _869 + 0.3333333432674407958984375f, _870), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _899, _899) * _859;
            _922 = float4(((_873.xyz * 4.0f) - 2.0f.xxx) * _889, _889) * _859;
        }
        else
        {
            _919 = _816;
            _920 = 0.0f.xxxx;
            _921 = 0.0f.xxxx;
            _922 = 0.0f.xxxx;
        }
        float3 _928 = _783 - (_18_m105.xyz + (_793 * (-_18_m107.z)));
        float _942 = max(clamp((max(abs(_928.x), abs(_928.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_928.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1022;
        float4 _1023;
        float4 _1024;
        float4 _1025;
        if (_942 < 1.0f)
        {
            float3 _951 = ((_783 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _953 = _951 - floor(_951);
            float4 _957 = _59.SampleLevel(_24, _953, 0.0f);
            float _959 = _843 * (1.0f - _942);
            float _963 = _18_m106.y * 0.5f;
            float _968 = _953.x;
            float _969 = clamp(_953.y, _963, 1.0f - _963) * 0.3333333432674407958984375f;
            float _970 = _953.z;
            float4 _973 = _60.SampleLevel(_23, float3(_968, _969, _970), 0.0f);
            float _989 = _957.x;
            float _1000 = _957.y;
            float _1011 = _957.z;
            _1022 = _919 + (_973.w * _959);
            _1023 = _920 + (float4(((_60.SampleLevel(_23, float3(_968, _969 + 0.666666686534881591796875f, _970), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1011, _1011) * _959);
            _1024 = _921 + (float4(((_60.SampleLevel(_23, float3(_968, _969 + 0.3333333432674407958984375f, _970), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1000, _1000) * _959);
            _1025 = _922 + (float4(((_973.xyz * 4.0f) - 2.0f.xxx) * _989, _989) * _959);
        }
        else
        {
            _1022 = _919;
            _1023 = _920;
            _1024 = _921;
            _1025 = _922;
        }
        float4 _1108;
        float4 _1109;
        float4 _1110;
        float _1111;
        if (_942 > 0.0f)
        {
            float3 _1034 = ((_783 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1037 = _18_m106.xyz * 0.5f;
            float3 _1039 = clamp(_1034 - floor(_1034), _1037, 1.0f.xxx - _1037);
            float4 _1043 = _61.SampleLevel(_24, _1039, 0.0f);
            float _1045 = _942 * (1.0f - _816);
            float _1049 = _18_m106.y * 0.5f;
            float _1054 = _1039.x;
            float _1055 = clamp(_1039.y, _1049, 1.0f - _1049) * 0.3333333432674407958984375f;
            float _1056 = _1039.z;
            float4 _1059 = _62.SampleLevel(_23, float3(_1054, _1055, _1056), 0.0f);
            float _1075 = _1043.x;
            float _1086 = _1043.y;
            float _1097 = _1043.z;
            _1108 = _1023 + (float4(((_62.SampleLevel(_23, float3(_1054, _1055 + 0.666666686534881591796875f, _1056), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1097, _1097) * _1045);
            _1109 = _1024 + (float4(((_62.SampleLevel(_23, float3(_1054, _1055 + 0.3333333432674407958984375f, _1056), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1086, _1086) * _1045);
            _1110 = _1025 + (float4(((_1059.xyz * 4.0f) - 2.0f.xxx) * _1075, _1075) * _1045);
            _1111 = _1022 + (_1059.w * _1045);
        }
        else
        {
            _1108 = _1023;
            _1109 = _1024;
            _1110 = _1025;
            _1111 = _1022;
        }
        float _1114 = clamp((_1111 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1118 = _1108;
        _1119 = _1109;
        _1120 = _1110;
        _1121 = _1114 - _816;
        _1122 = (_1114 + _816) * 0.5f;
    }
    else
    {
        _1118 = 0.0f.xxxx;
        _1119 = 0.0f.xxxx;
        _1120 = 0.0f.xxxx;
        _1121 = 0.0f;
        _1122 = 1.0f;
    }
    float4 _1142 = _1120 + float4(_18_m108.x * _1122, (_18_m108.y * _1122) + ((_18_m108.w * _1121) * 0.5f), _18_m108.z * _1122, (_18_m108.w * _1122) + ((_18_m108.y * _1121) * 0.375f));
    float4 _1162 = _1119 + float4(_18_m109.x * _1122, (_18_m109.y * _1122) + ((_18_m109.w * _1121) * 0.5f), _18_m109.z * _1122, (_18_m109.w * _1122) + ((_18_m109.y * _1121) * 0.375f));
    float4 _1182 = _1118 + float4(_18_m110.x * _1122, (_18_m110.y * _1122) + ((_18_m110.w * _1121) * 0.5f), _18_m110.z * _1122, (_18_m110.w * _1122) + ((_18_m110.y * _1121) * 0.375f));
    float _1187 = max(0.0f, dot(_1142.xyz, _646) + _1142.w);
    float _1192 = max(0.0f, dot(_1162.xyz, _646) + _1162.w);
    float _1197 = max(0.0f, dot(_1182.xyz, _646) + _1182.w);
    float3 _1207 = reflect(_649, _646);
    float _1215 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_531, 0.001000000047497451305389404296875f))));
    float2 _1216 = float2(_780);
    float2 _1220 = floor(_1216 * _42_m0.w);
    float _1237 = floor(_781 - _42_m2.y);
    float _1241 = clamp(_1237, 0.0f, _42_m1.x - 1.0f);
    uint _1251 = (_1237 <= _1241) ? (_31.Load(uint(_18_m21.z + int(_1220.x + (_1220.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1241)) * 4 + 0)) : 0u;
    float _1254 = dot(float4(_1187, _1192, _1197, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1256;
    float _1259;
    uint _1261;
    _1256 = 0.0f.xxx;
    _1259 = 1.0f;
    _1261 = _1251;
    uint _1262;
    float3 _1257;
    float _1260;
    bool _1264;
    [loop]
    for (;;)
    {
        _1264 = _1259 > 0.00999999977648258209228515625f;
        if ((_1261 != 0u) && _1264)
        {
            uint _1268 = firstbitlow(_1261);
            _1262 = _1261 ^ (1u << (_1268 & 31u));
            float3 _1288 = float3(dot(_42_m4[_1268]._m2, _415), dot(_42_m4[_1268]._m3, _415), dot(_42_m4[_1268]._m4, _415));
            float3 _1289 = abs(_1288);
            if (all(bool3(_1289.x <= _42_m4[_1268]._m1.xyz.x, _1289.y <= _42_m4[_1268]._m1.xyz.y, _1289.z <= _42_m4[_1268]._m1.xyz.z)))
            {
                float3 _1298 = _42_m4[_1268]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1300 = _1289 * 0.100000001490116119384765625f;
                float3 _1301 = _1300 * _1300;
                float3 _1304 = (_42_m4[_1268]._m1.xyz - _1289) * _42_m4[_1268]._m5.xyz;
                float3 _1352;
                [branch]
                if (_42_m4[_1268]._m6.x == 1.0f)
                {
                    float3 _1337 = float3(dot(_42_m4[_1268]._m2.xyz, _1207), dot(_42_m4[_1268]._m3.xyz, _1207), dot(_42_m4[_1268]._m4.xyz, _1207));
                    float3 _1339 = (_42_m4[_1268]._m1.xyz - _1288) / _1337;
                    float3 _1342 = ((-_42_m4[_1268]._m1.xyz) - _1288) / _1337;
                    bool3 _1343 = bool3(_1337.x > 0.0f.xxx.x, _1337.y > 0.0f.xxx.y, _1337.z > 0.0f.xxx.z);
                    float3 _1344 = float3(_1343.x ? _1339.x : _1342.x, _1343.y ? _1339.y : _1342.y, _1343.z ? _1339.z : _1342.z);
                    _1352 = _1288 + (_1337 * min(min(_1344.x, _1344.y), _1344.z));
                }
                else
                {
                    _1352 = _1207;
                }
                float3 _1353 = normalize(_1352);
                float3 _1356 = float3(int3(sign(_1353)));
                float3 _1359 = _1353 / dot(_1353, _1356).xxx;
                float3 _1373;
                if (_1359.z < 0.0f)
                {
                    float3 _1364 = abs(_1359);
                    float2 _1371 = _1356.xy * float2(1.0f - _1364.y, 1.0f - _1364.x);
                    _1373 = float3(_1371.x, _1371.y, _1359.z);
                }
                else
                {
                    _1373 = _1359;
                }
                float _1398 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1268]._m0, float4(_646, 1.0f))));
                float _1411 = clamp((min(_1304.x, min(_1304.y, _1304.z)) * _42_m4[_1268]._m6.y) + ((((((_1298 * _1298).x - ((_1301.x + _1301.y) + _1301.z)) * _42_m4[_1268]._m5.x) * _42_m4[_1268]._m5.x) * (1.0f - _42_m4[_1268]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1268]._m6.w;
                _1257 = _1256 + ((((_29.SampleLevel(_25, float3((((_1373.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1268]._m1.w), _1215).xyz * _42_m4[_1268]._m5.w) * ((((((clamp(abs(_1254 / _1398), 0.0f, 1.0f) * 2.0f) + _1254) / (2.0f + _1398)) - 1.0f) * _18_m23.w) + 1.0f)) * _1411) * _1259);
                _1260 = _1259 * (1.0f - _1411);
            }
            else
            {
                _1257 = _1256;
                _1260 = _1259;
            }
            _1256 = _1257;
            _1259 = _1260;
            _1261 = _1262;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1480;
    if (_1264)
    {
        float3 _1419 = normalize(_1207);
        float3 _1422 = float3(int3(sign(_1419)));
        float3 _1425 = _1419 / dot(_1419, _1422).xxx;
        float3 _1439;
        if (_1425.z < 0.0f)
        {
            float3 _1430 = abs(_1425);
            float2 _1437 = _1422.xy * float2(1.0f - _1430.y, 1.0f - _1430.x);
            _1439 = float3(_1437.x, _1437.y, _1425.z);
        }
        else
        {
            _1439 = _1425;
        }
        float _1466 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_646, 1.0f))));
        _1480 = _1256 + ((_29.SampleLevel(_25, float3((((_1439.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1215).xyz * ((((((clamp(abs(_1254 / _1466), 0.0f, 1.0f) * 2.0f) + _1254) / (2.0f + _1466)) - 1.0f) * _18_m23.w) + 1.0f)) * _1259);
    }
    else
    {
        _1480 = _1256;
    }
    float2 _2001;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _2001 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1502 = int(_48_m7.x);
        bool3 _1504 = (_1502 == 2).xxx;
        float3 _1512 = _411 - float3(_1504.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1504.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1504.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1523 = max(clamp((_48_m6.w - dot(_1512, _1512)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1740;
        bool _1741;
        if (_1523 > 0.0f)
        {
            float _1738;
            bool _1739;
            if (_1502 > 0)
            {
                float3 _1530 = _411 - _48_m1[0].xyz;
                float3 _1534 = _411 - _48_m1[1].xyz;
                float3 _1538 = _411 - _48_m1[2].xyz;
                float3 _1542 = _411 - _48_m1[3].xyz;
                float4 _1547 = float4(dot(_1530, _1530), dot(_1534, _1534), dot(_1538, _1538), dot(_1542, _1542));
                float4 _1556 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1558 = float4(bool4(_1547.x < _1556.x, _1547.y < _1556.y, _1547.z < _1556.z, _1547.w < _1556.w));
                float3 _1562 = clamp(_1558.yzw - _1558.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1566 = clamp(4.0f - dot(float4(_1558.x, _1562.x, _1562.y, _1562.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1568 = clamp(_1566 + 1.0f, 0.0f, 3.0f);
                uint _1569 = uint(_1566);
                uint _1577 = uint(_1568);
                float _1583 = dot(_1547, _349[_1577]) / _48_m1[_1577].w;
                float _1600;
                if (((_1568 > _1566) && (_1583 >= 0.0f)) && (_1583 <= 1.0f))
                {
                    _1600 = _1566 + step(frac(52.98291778564453125f * frac(dot(_1216 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1547, _349[_1569]) / _48_m1[_1569].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1600 = _1566;
                }
                float _1601 = clamp(_1600, 0.0f, 4.0f);
                float4 _1605 = mul(_48_m0[uint(_1601)], _415);
                float _1608 = _1605.z;
                float4 _1609 = float4(_1605.xy, _1608, _1601);
                float3 _1610 = _1609.xyz;
                bool3 _1611 = bool3(_1610.x <= 0.0f.xxx.x, _1610.y <= 0.0f.xxx.y, _1610.z <= 0.0f.xxx.z);
                bool3 _1612 = bool3(_1610.x >= 1.0f.xxx.x, _1610.y >= 1.0f.xxx.y, _1610.z >= 1.0f.xxx.z);
                bool _1618 = any(bool3(_1611.x || _1612.x, _1611.y || _1612.y, _1611.z || _1612.z)) || ((asuint(_1608) & 2147483647u) > 2139095040u);
                int _1619 = int(_1601);
                float2 _1636 = float4(_48_m3[_1619].xy + (_1609.xy * _48_m3[_1619].zw), _1608, _1601).xy * _48_m4.zw;
                float2 _1638 = floor(_1636 + 0.5f.xx);
                float2 _1639 = _1636 - _1638;
                float _1640 = _1639.x;
                float _1641 = _1640 + 0.5f;
                float _1643 = (_1641 * _1641) * 0.5f;
                float _1646 = min(_1640, 0.0f);
                float _1650 = max(_1640, 0.0f);
                float4 _1654 = float4(_1643 - _1640, (1.0f - _1640) - (_1646 * _1646), (_1640 + 1.0f) - (_1650 * _1650), _1643) * 0.44444000720977783203125f;
                float _1655 = _1639.y;
                float _1656 = _1655 + 0.5f;
                float _1658 = (_1656 * _1656) * 0.5f;
                float _1661 = min(_1655, 0.0f);
                float _1665 = max(_1655, 0.0f);
                float4 _1669 = float4(_1658 - _1655, (1.0f - _1655) - (_1661 * _1661), (_1655 + 1.0f) - (_1665 * _1665), _1658) * 0.44444000720977783203125f;
                float2 _1671 = _1654.yw;
                float2 _1672 = _1654.xz + _1671;
                float2 _1674 = _1669.yw;
                float2 _1675 = _1669.xz + _1674;
                float2 _1681 = ((_1671 / _1672) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1683 = ((_1674 / _1675) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1685 = _1638 * _48_m4.xy;
                float _1686 = _1681.x;
                float _1687 = _1683.x;
                float _1690 = _1681.y;
                float _1693 = _1683.y;
                float _1698 = _1672.x;
                float _1699 = _1675.x;
                float _1701 = _1672.y;
                float _1703 = _1675.y;
                _1738 = _1618 ? 1.0f : (((((_1698 * _1699) * _49.SampleCmpLevelZero(_26, float3(_1685 + float2(_1686, _1687), _369).xy, _1608)) + ((_1701 * _1699) * _49.SampleCmpLevelZero(_26, float3(_1685 + float2(_1690, _1687), _369).xy, _1608))) + ((_1698 * _1703) * _49.SampleCmpLevelZero(_26, float3(_1685 + float2(_1686, _1693), _369).xy, _1608))) + ((_1701 * _1703) * _49.SampleCmpLevelZero(_26, float3(_1685 + float2(_1690, _1693), _369).xy, _1608)));
                _1739 = _1618;
            }
            else
            {
                _1738 = 1.0f;
                _1739 = false;
            }
            _1740 = _1738;
            _1741 = _1739;
        }
        else
        {
            _1740 = 1.0f;
            _1741 = false;
        }
        float _1941;
        float _1942;
        if ((_1523 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1752 = 1.0f - clamp(dot(_646, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1769 = float4((_411 - (_46_m0.xyz * (_1752 * _48_m24.x))) + (_646 * (_1752 * _48_m24.y)), 1.0f);
            float4 _1770 = mul(_48_m23, _1769);
            float2 _1771 = _1770.xy;
            float _1939;
            if (all(bool2(_1771.x > 0.0f.xx.x, _1771.y > 0.0f.xx.y)) && all(bool2(_1771.x < 1.0f.xx.x, _1771.y < 1.0f.xx.y)))
            {
                uint _1790 = clamp(uint((floor(_1770.y * _48_m25.z) + _1770.x) * _48_m25.y), 0u, 127u);
                uint _1794 = asuint(_48_m27[_1790].x);
                float2 _1795 = spvUnpackHalf2x16(_1794);
                float _1796 = _1795.x;
                float _1938;
                if (_1796 >= 0.0f)
                {
                    float4x4 _1805 = _48_m22;
                    _1805[0].w = _48_m27[_1790].y;
                    _1805[1].w = _48_m27[_1790].z;
                    _1805[2].w = _48_m27[_1790].w;
                    float4 _1812 = mul(_1805, _1769);
                    float3 _1813 = _1812.xyz;
                    float _1937;
                    if (all(bool3(_1813.x > 0.0f.xxx.x, _1813.y > 0.0f.xxx.y, _1813.z > 0.0f.xxx.z)) && all(bool3(_1813.x < 1.0f.xxx.x, _1813.y < 1.0f.xxx.y, _1813.z < 1.0f.xxx.z)))
                    {
                        float _1830 = _1812.z;
                        float2 _1836 = float4((_1812.xy * _48_m24.zw) + float2(_1796, spvUnpackHalf2x16(_1794 >> 16u).x), _1830, 1.0f).xy * _48_m26.zw;
                        float2 _1838 = floor(_1836 + 0.5f.xx);
                        float2 _1839 = _1836 - _1838;
                        float _1840 = _1839.x;
                        float _1841 = _1840 + 0.5f;
                        float _1843 = (_1841 * _1841) * 0.5f;
                        float _1846 = min(_1840, 0.0f);
                        float _1850 = max(_1840, 0.0f);
                        float4 _1854 = float4(_1843 - _1840, (1.0f - _1840) - (_1846 * _1846), (_1840 + 1.0f) - (_1850 * _1850), _1843) * 0.44444000720977783203125f;
                        float _1855 = _1839.y;
                        float _1856 = _1855 + 0.5f;
                        float _1858 = (_1856 * _1856) * 0.5f;
                        float _1861 = min(_1855, 0.0f);
                        float _1865 = max(_1855, 0.0f);
                        float4 _1869 = float4(_1858 - _1855, (1.0f - _1855) - (_1861 * _1861), (_1855 + 1.0f) - (_1865 * _1865), _1858) * 0.44444000720977783203125f;
                        float2 _1872 = _1854.xz + _1854.yw;
                        float2 _1875 = _1869.xz + _1869.yw;
                        float2 _1881 = ((_1854.yw / _1872) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1883 = ((_1869.yw / _1875) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1885 = _1838 * _48_m26.xy;
                        float _1886 = _1881.x;
                        float _1887 = _1883.x;
                        float2 _1889 = _1885 + float2(_1886, _1887);
                        float _1890 = _1881.y;
                        float2 _1892 = _1885 + float2(_1890, _1887);
                        float _1893 = _1883.y;
                        float2 _1895 = _1885 + float2(_1886, _1893);
                        float2 _1897 = _1885 + float2(_1890, _1893);
                        float _1898 = _1872.x;
                        float _1899 = _1875.x;
                        float _1901 = _1872.y;
                        float _1903 = _1875.y;
                        _1937 = ((((_1898 * _1899) * _52.SampleCmpLevelZero(_26, float3(_1889, _369).xy, _1830)) + ((_1901 * _1899) * _52.SampleCmpLevelZero(_26, float3(_1892, _369).xy, _1830))) + ((_1898 * _1903) * _52.SampleCmpLevelZero(_26, float3(_1895, _369).xy, _1830))) + ((_1901 * _1903) * _52.SampleCmpLevelZero(_26, float3(_1897, _369).xy, _1830));
                    }
                    else
                    {
                        _1937 = 1.0f;
                    }
                    _1938 = _1937;
                }
                else
                {
                    _1938 = 1.0f;
                }
                _1939 = _1938;
            }
            else
            {
                _1939 = 1.0f;
            }
            _1941 = _1741 ? _1939 : _1740;
            _1942 = _1939;
        }
        else
        {
            _1941 = _1740;
            _1942 = 1.0f;
        }
        float _1945 = lerp(lerp(_1942, _1941, _1523), min(_1942, _1941), _48_m8.x);
        float _1996;
        if (_1945 > 0.001000000047497451305389404296875f)
        {
            float3 _1952 = _411 - _18_m65.xyz;
            float2 _1962 = (_1952 + (_18_m68.xyz * _1952.y)).xz * _18_m66.z;
            float2 _1971 = _18_m67.xy * _18_m75.w;
            _1996 = _1945 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1962 + _1971, 0.0f), _51.SampleLevel(_24, (_1962 * _18_m67.w) + _1971, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1952.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1996 = _1945;
        }
        _2001 = float2(lerp(_1996, _48_m7.z, _48_m7.w), _1996);
        break;
    } while(false);
    float _2006 = lerp(1.0f, min(1.0f, _2001.x), _48_m6.x);
    float4 _2141;
    if (_2006 > 0.001000000047497451305389404296875f)
    {
        float3 _2016 = -_46_m0.xyz;
        float _2021 = dot(_2016, _1207);
        float3 _2023 = _1207 - (_2016 * _2021);
        bool3 _2025 = (_2021 < _46_m4.z).xxx;
        float3 _2033 = normalize((_2016 * _46_m4.z) + ((_2023 * rsqrt(max(6.103515625e-05f, dot(_2023, _2023)))) * _46_m4.y));
        float3 _2034 = float3(_2025.x ? _2033.x : _1207.x, _2025.y ? _2033.y : _1207.y, _2025.z ? _2033.z : _1207.z);
        float3 _2038 = _2034 + _448;
        float3 _2042 = _2038 * rsqrt(max(6.103515625e-05f, dot(_2038, _2038)));
        float _2043 = clamp(dot(_2034, _646), 0.0f, 1.0f);
        float _2045 = clamp(dot(_646, _2042), 0.0f, 1.0f);
        float _2048 = clamp(_726, 0.0f, 1.0f);
        float _2049 = _531 * _531;
        float _2050 = _2049 * _2049;
        float _2071 = (((_2045 * _2050) - _2045) * _2045) + 1.0f;
        float _2074 = 1.0f - clamp(dot(_448, _2042), 0.0f, 1.0f);
        float _2075 = _2074 * _2074;
        float _2077 = (_2074 * _2075) * _2075;
        float _2101 = 1.0f - _531;
        float _2108 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2101 * (1.04997003078460693359375f + (_2101 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2101))))));
        float _2109 = 1.0f - _2108;
        float3 _2112 = _725 + ((1.0f.xxx - _725) * 0.0476190485060214996337890625f);
        float3 _2128 = (((clamp((min(((_725 * (1.0f - _2077)) + _2077.xxx) * ((_2050 / (_2071 * _2071)) * (0.5f / (((_2043 * sqrt(((((-_2048) * _2050) + _2048) * _2048) + _2050)) + (_2048 * sqrt(((((-_2043) * _2050) + _2043) * _2043) + _2050))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2112 * (((_56.SampleLevel(_23, (float2(_2048, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2043, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2108) / _2109)) * _2112) / (1.0f.xxx - (_2112 * _2109)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2043) + ((_721 * 1.0f) * _2043)) * _46_m1.xyz;
        float3 _2139 = lerp(_2128, _2128 * _53.SampleBias(_23, float2(_2006, 0.5f), _18_m16).xyz, (1.0f - _2006).xxx) * 1.0f;
        _2141 = float4(_2139.x, _2139.y, _2139.z, 0.0f.xxxx.w);
    }
    else
    {
        _2141 = 0.0f.xxxx;
    }
    float2 _2143 = floor(_1216 * 0.03125f);
    int _2151 = int((_2143.x + (_2143.y * _44_m5)) * 8.0f);
    float _2158 = floor(_781 - (_18_m3.y * _44_m11));
    float _2162 = clamp(_2158, 0.0f, _44_m7 - 1.0f);
    int _2164 = int(_2162 * 8.0f);
    float3 _2166;
    float _2169;
    _2166 = 0.0f.xxx;
    _2169 = 1.0f;
    float3 _2167;
    float _2170;
    [loop]
    for (int _2171 = 0; _2171 <= 7; _2166 = _2167, _2169 = _2170, _2171++)
    {
        uint _2189 = (_2158 <= _2162) ? (_31.Load(uint(_2151 + _2171) * 4 + 0) & _31.Load(uint((_18_m21.y + _2164) + _2171) * 4 + 0)) : 0u;
        uint _2190 = uint(_2171);
        float3 _2194;
        _2170 = _2169;
        _2194 = 0.0f.xxx;
        uint _2197;
        float _2192;
        float3 _2195;
        [loop]
        for (uint _2196 = _2189; _2196 != 0u; _2170 = _2192, _2194 = _2195, _2196 = _2197)
        {
            uint _2201 = firstbitlow(_2196);
            _2197 = _2196 ^ (1u << (_2201 & 31u));
            int _2207 = int((32u * _2190) + _2201) * 8;
            int _2210 = _2207 + 1;
            int _2213 = _2207 + 2;
            int _2216 = _2207 + 3;
            int _2219 = _2207 + 5;
            int _2222 = _2207 + 6;
            int _2225 = _2207 + 7;
            uint _2229 = uint(_46_m6[_2219].w);
            float _2304;
            if ((_2229 & 1u) == 1u)
            {
                uint _2235 = asuint(_46_m6[_2219].x);
                uint _2242 = asuint(_46_m6[_2219].y);
                uint _2249 = asuint(_46_m6[_2219].z);
                uint _2256 = asuint(_46_m6[_2222].x);
                uint _2263 = asuint(_46_m6[_2222].y);
                uint _2270 = asuint(_46_m6[_2222].z);
                float3 _2289 = abs(mul(float4(_411 - _46_m6[_2210].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2235).x, spvUnpackHalf2x16(_2249).x, spvUnpackHalf2x16(_2263).x, 0.0f), float4(spvUnpackHalf2x16(_2235 >> 16u).x, spvUnpackHalf2x16(_2249 >> 16u).x, spvUnpackHalf2x16(_2263 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2242).x, spvUnpackHalf2x16(_2256).x, spvUnpackHalf2x16(_2270).x, 0.0f), float4(spvUnpackHalf2x16(_2242 >> 16u).x, spvUnpackHalf2x16(_2256 >> 16u).x, spvUnpackHalf2x16(_2270 >> 16u).x, 0.0f))).xyz);
                float _2296 = _46_m6[_2225].x * 0.5f;
                float _2302 = 1.0f - clamp((max(max(_2289.x, _2289.y), _2289.z) - (_2296 + 0.5f)) / (0.5f - _2296), 0.0f, 1.0f);
                _2304 = _2302 * _2302;
            }
            else
            {
                _2304 = 1.0f;
            }
            bool _2308 = _46_m6[_2216].z > 0.5f;
            if ((false || (_2304 < 0.001000000047497451305389404296875f)) || _2308)
            {
                _2192 = _2170;
                _2195 = _2194;
                continue;
            }
            float _3419;
            float3 _3420;
            if (_46_m6[_2207].w < 1.5f)
            {
                float3 _2796 = float3(0.100000001490116119384765625f, _531, 1.0f);
                float _2805 = (0.5f + (0.5f * _46_m6[_2213].y)) - abs(_46_m6[_2213].x);
                float _2806 = _46_m6[_2213].y - _2805;
                float _2813 = abs(max((1.0f - abs(_2805)) - abs(_2806), 0.00048828125f));
                float3 _2817 = normalize(float3(_2805, _2806, (_46_m6[_2213].x >= 0.0f) ? _2813 : (-_2813)));
                float3 _2818 = _46_m6[_2210].xyz - _411;
                float _2819 = dot(_2818, _2818);
                float _2820 = rsqrt(_2819);
                float3 _2821 = _2818 * _2820;
                float _2825 = clamp(_46_m6[_2225].y * _2820, 0.0f, 1.0f);
                int _2830 = int(_46_m6[_2225].w);
                float3 _2831 = _2817 * _46_m6[_2213].z;
                float3 _2832 = _2831 * 0.5f;
                float3 _2833 = _2818 - _2832;
                float3 _2834 = _2818 + _2832;
                bool _2837 = (uint(_46_m6[_2207].w) & 1u) == 0u;
                bool _2840 = _2837 || ((_2229 & 2u) != 0u);
                bool _2843 = (!_2837) && (_46_m6[_2213].z > 0.0f);
                float _2862;
                float _2863;
                if (_2843)
                {
                    float _2847 = length(_2833);
                    float _2848 = length(_2834);
                    _2862 = clamp(0.5f * ((dot(_646, _2833) / _2847) + (dot(_646, _2834) / _2848)), 0.0f, 1.0f);
                    _2863 = 1.0f / ((((_2847 * _2848) + dot(_2833, _2834)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2862 = clamp(dot(_646, _2821), 0.0f, 1.0f);
                    _2863 = 1.0f;
                }
                float _2885;
                if (_46_m6[_2222].w < 0.0f)
                {
                    float _2879 = _2819 * (_46_m6[_2210].w * _46_m6[_2210].w);
                    float _2882 = clamp(1.0f - (_2879 * _2879), 0.0f, 1.0f);
                    _2885 = lerp(1.0f / (_2819 + 1.0f), _2863, float(_2843)) * (_2882 * _2882);
                }
                else
                {
                    float3 _2868 = _2818 * _46_m6[_2210].w;
                    _2885 = _2863 * pow(1.0f - clamp(dot(_2868, _2868), 0.0f, 1.0f), _46_m6[_2222].w);
                }
                float _2891 = clamp((dot(_2821, -_2817) - _46_m6[_2213].z) * _46_m6[_2213].w, 0.0f, 1.0f);
                float _2895 = _2885 * lerp(1.0f, _2891 * _2891, float(_2837));
                float _2995;
                if ((!_2843) && (_2830 >= 0))
                {
                    uint _2901 = uint(_2830);
                    float2 _2988;
                    [branch]
                    if (_2837)
                    {
                        float4 _2978 = mul(_66_m1[_2901], _415);
                        _2988 = _66_m0[_2901].xy + (clamp(_2978.xy / _2978.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2901].zw);
                    }
                    else
                    {
                        float3 _2915 = mul(float4(-_2818, 0.0f), _66_m1[_2901]).xyz;
                        float3 _376 = _2915;
                        float3 _375 = _2915;
                        float3 _374 = abs(_2915);
                        uint _2924 = uint(int(_374.y > _374.x));
                        uint _2930 = (_374.z > _374[_2924]) ? 2u : _2924;
                        uint _2936 = (_2930 * 2u) + uint(_375[_2930] < 0.0f);
                        float _2940 = abs(_376[_2936 / 2u]);
                        float _2960 = 0.5f - (0.000244140625f / _66_m0[_2901].w);
                        _2988 = _66_m0[_2901].xy + (clamp(float2((float(_2936) + ((((_376[uint(_350[_2936].x)] * _351[_2936].x) / _2940) * _2960) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_376[uint(_350[_2936].y)] * _351[_2936].y) / _2940) * _2960)), 0.0f.xx, 1.0f.xx) * _66_m0[_2901].zw);
                    }
                    _2995 = _2895 * _64.SampleLevel(_23, _2988, 0.0f).x;
                }
                else
                {
                    _2995 = _2895;
                }
                bool _2996 = _2995 > 0.0f;
                float _3284;
                if (_2996)
                {
                    int _3048;
                    if (_2840)
                    {
                        _3048 = int(_46_m6[_2216].x);
                    }
                    else
                    {
                        uint _3003 = asuint(_46_m6[_2213].w);
                        uint _3005 = asuint(_46_m6[_2216].x);
                        float3 _3006 = _411 - _46_m6[_2210].xyz;
                        float3 _3007 = abs(_3006);
                        float _3008 = _3007.x;
                        float _3009 = _3007.y;
                        float _3011 = _3007.z;
                        int _3043;
                        if ((_3008 > _3009) && (_3008 > _3011))
                        {
                            _3043 = int((_3006.x > 0.0f) ? (_3003 >> 24u) : ((_3003 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3035;
                            if (_3009 > _3011)
                            {
                                _3035 = int((_3006.y > 0.0f) ? ((_3003 >> 8u) & 255u) : (_3003 & 255u));
                            }
                            else
                            {
                                _3035 = int((_3006.z > 0.0f) ? ((_3005 >> 8u) & 255u) : (_3005 & 255u));
                            }
                            _3043 = _3035;
                        }
                        _3048 = (_3043 < 80) ? _3043 : (-1);
                    }
                    float4 _3065 = mul(_48_m10[_3048], float4((_411 - ((-_2821) * _48_m11[_3048].x)) + (_646 * (_48_m11[_3048].y * 5.0f)), 1.0f));
                    float _3066 = _3065.w;
                    float3 _3069 = _3065.xyz / _3066.xxx;
                    float2 _3070 = _3069.xy;
                    float3 _3078 = _3069.xyz;
                    bool3 _3079 = bool3(_3078.x <= 0.0f.xxx.x, _3078.y <= 0.0f.xxx.y, _3078.z <= 0.0f.xxx.z);
                    bool3 _3080 = bool3(_3078.x >= 1.0f.xxx.x, _3078.y >= 1.0f.xxx.y, _3078.z >= 1.0f.xxx.z);
                    float _3083 = _3069.z;
                    float2 _3094 = ((_3070 * (_48_m12[_3048].zw - _48_m12[_3048].xy)) + _48_m12[_3048].xy).xy * _48_m13.zw;
                    float2 _3096 = floor(_3094 + 0.5f.xx);
                    float2 _3097 = _3094 - _3096;
                    float _3098 = _3097.x;
                    float _3099 = _3098 + 0.5f;
                    float _3100 = _3099 * _3099;
                    float _3103 = 1.0f - _3098;
                    float _3104 = min(_3098, 0.0f);
                    float _3107 = _3098 + 1.0f;
                    float _3108 = max(_3098, 0.0f);
                    float _3119 = _3097.y;
                    float _3120 = _3119 + 0.5f;
                    float _3121 = _3120 * _3120;
                    float _3124 = 1.0f - _3119;
                    float _3125 = min(_3119, 0.0f);
                    float _3128 = _3119 + 1.0f;
                    float _3129 = max(_3119, 0.0f);
                    float3 _3141 = float3(0.1599999964237213134765625f * _3103, 0.1599999964237213134765625f * ((_3107 - (_3108 * _3108)) + 1.0f), _3100 * 0.07999999821186065673828125f);
                    float3 _3142 = float3(0.1599999964237213134765625f * ((_3100 * 0.5f) - _3098), 0.1599999964237213134765625f * ((_3103 - (_3104 * _3104)) + 1.0f), 0.1599999964237213134765625f * _3107) + _3141;
                    float3 _3144 = float3(0.1599999964237213134765625f * _3124, 0.1599999964237213134765625f * ((_3128 - (_3129 * _3129)) + 1.0f), _3121 * 0.07999999821186065673828125f);
                    float3 _3145 = float3(0.1599999964237213134765625f * ((_3121 * 0.5f) - _3119), 0.1599999964237213134765625f * ((_3124 - (_3125 * _3125)) + 1.0f), 0.1599999964237213134765625f * _3128) + _3144;
                    float3 _3151 = ((_3141 / _3142) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3153 = ((_3144 / _3145) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3155 = _3096 * _48_m13.xy;
                    float _3156 = _3151.x;
                    float _3157 = _3153.x;
                    float _3160 = _3151.y;
                    float _3163 = _3151.z;
                    float _3166 = _3153.y;
                    float _3173 = _3153.z;
                    float _3180 = _3142.x;
                    float _3181 = _3145.x;
                    float _3183 = _3142.y;
                    float _3185 = _3142.z;
                    float _3187 = _3145.y;
                    float _3191 = _3145.z;
                    float _3249 = (((((((_3180 * _3181) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3156, _3157), _369).xy, _3083)) + ((_3183 * _3181) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3160, _3157), _369).xy, _3083))) + ((_3185 * _3181) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3163, _3157), _369).xy, _3083))) + ((_3180 * _3187) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3156, _3166), _369).xy, _3083))) + ((_3183 * _3187) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3160, _3166), _369).xy, _3083))) + ((_3185 * _3187) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3163, _3166), _369).xy, _3083))) + ((_3180 * _3191) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3156, _3173), _369).xy, _3083));
                    float2 _3270 = min(_3070, 1.0f.xx - _3070);
                    _3284 = (_3048 >= 0) ? lerp(1.0f, (any(bool3(_3079.x || _3080.x, _3079.y || _3080.y, _3079.z || _3080.z)) || ((asuint(_3083) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3249 + ((_3183 * _3191) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3160, _3173), _369).xy, _3083))) + ((_3185 * _3191) * _50.SampleCmpLevelZero(_26, float3(_3155 + float2(_3163, _3173), _369).xy, _3083))), _2840 ? min(_48_m11[_3048].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_3048].z - _3066) * 0.25f, min(_3270.x, _3270.y)))) : _48_m11[_3048].w) : 1.0f;
                }
                else
                {
                    _3284 = 1.0f;
                }
                float3 _3307;
                float3 _3308;
                if (_2843)
                {
                    float3 _3287 = _2796 * _2796;
                    float _3296 = dot(_1207, _2831);
                    _3307 = _3287 / clamp(_3287 + (0.5f * clamp(_46_m6[_2213].z * _2820, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3308 = normalize(_2833 + (_2831 * clamp(dot(_2833, (_1207 * _3296) - _2831) / ((_46_m6[_2213].z * _46_m6[_2213].z) - (_3296 * _3296)), 0.0f, 1.0f)));
                }
                else
                {
                    _3307 = 1.0f.xxx;
                    _3308 = _2821;
                }
                float3 _3309 = _3308 + _448;
                float3 _3313 = _3309 * rsqrt(max(6.103515625e-05f, dot(_3309, _3309)));
                float3 _3418;
                if (_2996)
                {
                    float _3316 = clamp(_2862, 0.0f, 1.0f);
                    float _3318 = clamp(dot(_646, _3313), 0.0f, 1.0f);
                    float _3320 = clamp(dot(_448, _3313), 0.0f, 1.0f);
                    float _3321 = clamp(_726, 0.0f, 1.0f);
                    float _3322 = _531 * _531;
                    float _3332;
                    if (_2825 > 0.0f)
                    {
                        _3332 = clamp(_3322 + ((_2825 * _2825) / ((_3320 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3332 = _3322;
                    }
                    float _3333 = _3332 * _3332;
                    float _3354 = (((_3318 * _3333) - _3318) * _3318) + 1.0f;
                    float _3359 = 1.0f - _3320;
                    float _3360 = _3359 * _3359;
                    float _3362 = (_3359 * _3360) * _3360;
                    float _3386 = 1.0f - _531;
                    float _3393 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3386 * (1.04997003078460693359375f + (_3386 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3386))))));
                    float _3394 = 1.0f - _3393;
                    float3 _3397 = _725 + ((1.0f.xxx - _725) * 0.0476190485060214996337890625f);
                    float3 _3417 = ((clamp((min(((_725 * (1.0f - _3362)) + _3362.xxx) * (((_3333 / (_3354 * _3354)) * _3307.y) * (0.5f / (((_3316 * sqrt(((((-_3321) * _3333) + _3321) * _3321) + _3333)) + (_3321 * sqrt(((((-_3316) * _3333) + _3316) * _3316) + _3333))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3397 * (((_56.SampleLevel(_23, (float2(_3321, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3316, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3393) / _3394)) * _3397) / (1.0f.xxx - (_3397 * _3394)))) * _46_m6[_2225].z, 0.0f.xxx, 1000.0f.xxx) * _2862) + ((_721 * _3307.z) * _2862)) * (((_46_m6[_2207].xyz * _2995) * _3284) * _2304);
                    _3418 = _3417;
                }
                else
                {
                    _3418 = 0.0f.xxx;
                }
                _3419 = _2170;
                _3420 = _3418;
            }
            else
            {
                float _2794;
                do
                {
                    if (_2308)
                    {
                        _2794 = 1.0f;
                        break;
                    }
                    float _2328 = (0.5f + (0.5f * _46_m6[_2213].y)) - abs(_46_m6[_2213].x);
                    float _2329 = _46_m6[_2213].y - _2328;
                    float _2336 = abs(max((1.0f - abs(_2328)) - abs(_2329), 0.00048828125f));
                    float3 _2340 = normalize(float3(_2328, _2329, (_46_m6[_2213].x >= 0.0f) ? _2336 : (-_2336)));
                    float3 _2341 = _46_m6[_2210].xyz - _411;
                    float _2342 = dot(_2341, _2341);
                    float3 _2344 = _2341 * rsqrt(_2342);
                    int _2347 = int(_46_m6[_2225].w);
                    float3 _2349 = (_2340 * _46_m6[_2213].z) * 0.5f;
                    float3 _2350 = _2341 - _2349;
                    float3 _2351 = _2341 + _2349;
                    bool _2354 = (uint(_46_m6[_2207].w) & 1u) == 0u;
                    bool _2357 = _2354 || ((_2229 & 2u) != 0u);
                    bool _2360 = (!_2354) && (_46_m6[_2213].z > 0.0f);
                    float _2372;
                    if (_2360)
                    {
                        _2372 = 1.0f / ((((length(_2350) * length(_2351)) + dot(_2350, _2351)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2372 = 1.0f;
                    }
                    float _2394;
                    if (_46_m6[_2222].w < 0.0f)
                    {
                        float _2388 = _2342 * (_46_m6[_2210].w * _46_m6[_2210].w);
                        float _2391 = clamp(1.0f - (_2388 * _2388), 0.0f, 1.0f);
                        _2394 = lerp(1.0f / (_2342 + 1.0f), _2372, float(_2360)) * (_2391 * _2391);
                    }
                    else
                    {
                        float3 _2377 = _2341 * _46_m6[_2210].w;
                        _2394 = _2372 * pow(1.0f - clamp(dot(_2377, _2377), 0.0f, 1.0f), _46_m6[_2222].w);
                    }
                    float _2400 = clamp((dot(_2344, -_2340) - _46_m6[_2213].z) * _46_m6[_2213].w, 0.0f, 1.0f);
                    float _2404 = _2394 * lerp(1.0f, _2400 * _2400, float(_2354));
                    float _2504;
                    if ((!_2360) && (_2347 >= 0))
                    {
                        uint _2410 = uint(_2347);
                        float2 _2497;
                        [branch]
                        if (_2354)
                        {
                            float4 _2487 = mul(_66_m1[_2410], _415);
                            _2497 = _66_m0[_2410].xy + (clamp(_2487.xy / _2487.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2410].zw);
                        }
                        else
                        {
                            float3 _2424 = mul(float4(-_2341, 0.0f), _66_m1[_2410]).xyz;
                            float3 _379 = _2424;
                            float3 _378 = _2424;
                            float3 _377 = abs(_2424);
                            uint _2433 = uint(int(_377.y > _377.x));
                            uint _2439 = (_377.z > _377[_2433]) ? 2u : _2433;
                            uint _2445 = (_2439 * 2u) + uint(_378[_2439] < 0.0f);
                            float _2449 = abs(_379[_2445 / 2u]);
                            float _2469 = 0.5f - (0.000244140625f / _66_m0[_2410].w);
                            _2497 = _66_m0[_2410].xy + (clamp(float2((float(_2445) + ((((_379[uint(_350[_2445].x)] * _351[_2445].x) / _2449) * _2469) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_379[uint(_350[_2445].y)] * _351[_2445].y) / _2449) * _2469)), 0.0f.xx, 1.0f.xx) * _66_m0[_2410].zw);
                        }
                        _2504 = _2404 * _64.SampleLevel(_23, _2497, 0.0f).x;
                    }
                    else
                    {
                        _2504 = _2404;
                    }
                    float _2793;
                    if (_2504 > 0.0f)
                    {
                        int _2557;
                        if (_2357)
                        {
                            _2557 = int(_46_m6[_2216].x);
                        }
                        else
                        {
                            uint _2512 = asuint(_46_m6[_2213].w);
                            uint _2514 = asuint(_46_m6[_2216].x);
                            float3 _2515 = _411 - _46_m6[_2210].xyz;
                            float3 _2516 = abs(_2515);
                            float _2517 = _2516.x;
                            float _2518 = _2516.y;
                            float _2520 = _2516.z;
                            int _2552;
                            if ((_2517 > _2518) && (_2517 > _2520))
                            {
                                _2552 = int((_2515.x > 0.0f) ? (_2512 >> 24u) : ((_2512 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2544;
                                if (_2518 > _2520)
                                {
                                    _2544 = int((_2515.y > 0.0f) ? ((_2512 >> 8u) & 255u) : (_2512 & 255u));
                                }
                                else
                                {
                                    _2544 = int((_2515.z > 0.0f) ? ((_2514 >> 8u) & 255u) : (_2514 & 255u));
                                }
                                _2552 = _2544;
                            }
                            _2557 = (_2552 < 80) ? _2552 : (-1);
                        }
                        float4 _2574 = mul(_48_m10[_2557], float4((_411 - ((-_2344) * _48_m11[_2557].x)) + (_646 * (_48_m11[_2557].y * 5.0f)), 1.0f));
                        float _2575 = _2574.w;
                        float3 _2578 = _2574.xyz / _2575.xxx;
                        float2 _2579 = _2578.xy;
                        float3 _2587 = _2578.xyz;
                        bool3 _2588 = bool3(_2587.x <= 0.0f.xxx.x, _2587.y <= 0.0f.xxx.y, _2587.z <= 0.0f.xxx.z);
                        bool3 _2589 = bool3(_2587.x >= 1.0f.xxx.x, _2587.y >= 1.0f.xxx.y, _2587.z >= 1.0f.xxx.z);
                        float _2592 = _2578.z;
                        float2 _2603 = ((_2579 * (_48_m12[_2557].zw - _48_m12[_2557].xy)) + _48_m12[_2557].xy).xy * _48_m13.zw;
                        float2 _2605 = floor(_2603 + 0.5f.xx);
                        float2 _2606 = _2603 - _2605;
                        float _2607 = _2606.x;
                        float _2608 = _2607 + 0.5f;
                        float _2609 = _2608 * _2608;
                        float _2612 = 1.0f - _2607;
                        float _2613 = min(_2607, 0.0f);
                        float _2616 = _2607 + 1.0f;
                        float _2617 = max(_2607, 0.0f);
                        float _2628 = _2606.y;
                        float _2629 = _2628 + 0.5f;
                        float _2630 = _2629 * _2629;
                        float _2633 = 1.0f - _2628;
                        float _2634 = min(_2628, 0.0f);
                        float _2637 = _2628 + 1.0f;
                        float _2638 = max(_2628, 0.0f);
                        float3 _2650 = float3(0.1599999964237213134765625f * _2612, 0.1599999964237213134765625f * ((_2616 - (_2617 * _2617)) + 1.0f), _2609 * 0.07999999821186065673828125f);
                        float3 _2651 = float3(0.1599999964237213134765625f * ((_2609 * 0.5f) - _2607), 0.1599999964237213134765625f * ((_2612 - (_2613 * _2613)) + 1.0f), 0.1599999964237213134765625f * _2616) + _2650;
                        float3 _2653 = float3(0.1599999964237213134765625f * _2633, 0.1599999964237213134765625f * ((_2637 - (_2638 * _2638)) + 1.0f), _2630 * 0.07999999821186065673828125f);
                        float3 _2654 = float3(0.1599999964237213134765625f * ((_2630 * 0.5f) - _2628), 0.1599999964237213134765625f * ((_2633 - (_2634 * _2634)) + 1.0f), 0.1599999964237213134765625f * _2637) + _2653;
                        float3 _2660 = ((_2650 / _2651) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2662 = ((_2653 / _2654) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2664 = _2605 * _48_m13.xy;
                        float _2665 = _2660.x;
                        float _2666 = _2662.x;
                        float _2669 = _2660.y;
                        float _2672 = _2660.z;
                        float _2675 = _2662.y;
                        float _2682 = _2662.z;
                        float _2689 = _2651.x;
                        float _2690 = _2654.x;
                        float _2692 = _2651.y;
                        float _2694 = _2651.z;
                        float _2696 = _2654.y;
                        float _2700 = _2654.z;
                        float _2758 = (((((((_2689 * _2690) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2665, _2666), _369).xy, _2592)) + ((_2692 * _2690) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2669, _2666), _369).xy, _2592))) + ((_2694 * _2690) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2672, _2666), _369).xy, _2592))) + ((_2689 * _2696) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2665, _2675), _369).xy, _2592))) + ((_2692 * _2696) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2669, _2675), _369).xy, _2592))) + ((_2694 * _2696) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2672, _2675), _369).xy, _2592))) + ((_2689 * _2700) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2665, _2682), _369).xy, _2592));
                        float2 _2779 = min(_2579, 1.0f.xx - _2579);
                        _2793 = (_2557 >= 0) ? lerp(1.0f, (any(bool3(_2588.x || _2589.x, _2588.y || _2589.y, _2588.z || _2589.z)) || ((asuint(_2592) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2758 + ((_2692 * _2700) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2669, _2682), _369).xy, _2592))) + ((_2694 * _2700) * _50.SampleCmpLevelZero(_26, float3(_2664 + float2(_2672, _2682), _369).xy, _2592))), _2357 ? min(_48_m11[_2557].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2557].z - _2575) * 0.25f, min(_2779.x, _2779.y)))) : _48_m11[_2557].w) : 1.0f;
                    }
                    else
                    {
                        _2793 = 1.0f;
                    }
                    _2794 = _2793;
                    break;
                } while(false);
                _3419 = _2170 * _2794;
                _3420 = 0.0f.xxx;
            }
            _2192 = _3419;
            _2195 = _2194 + _3420;
        }
        _2167 = _2166 + _2194;
    }
    float3 _3427 = (((((float3(_1187, _1192, _1197) * (_721 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _502, _39_m4)) * _18_m22.x) + (((((_1480 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_725 * _740.x) + (clamp(50.0f * _725.y, 0.0f, 1.0f) * _740.y).xxx)) * 1.0f)) + (((_624 * lerp(_600, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2141.xyz + ((_2166 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2169)).xyz;
    float4 _3428 = float4(_3427.x, _3427.y, _3427.z, _371.w);
    _3428.w = _526;
    float _3445 = _411.y * _18_m46.w;
    float _3450 = max(0.00999999977648258209228515625f, _3445 + _18_m47.w);
    float3 _3464 = exp(_18_m45.xyz * ((-max(0.0f, (_449 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3450)) / _3450) * exp(_3445 + _18_m48.w))));
    float _3467 = dot(_649, _18_m44.xyz);
    float _3473 = _18_m45.w * _18_m45.w;
    float _3477 = (1.0f + _3473) - ((2.0f * _18_m45.w) * _3467);
    float3 _3807;
    float _3808;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3635 = (uint3(int3(int(_780.x), int(_780.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3636 = _3635.y;
        uint _3637 = _3635.z;
        uint _3640 = _3635.x + (_3636 * _3637);
        uint _3642 = _3636 + (_3637 * _3640);
        uint _3644 = _3637 + (_3640 * _3642);
        uint _3646 = _3640 + (_3642 * _3644);
        float _3668 = dot(_649, -_16_m0[2].xyz);
        float3 _3678 = _411 - _16_m11.xyz;
        float _3680 = (_18_m55.w * ((_3668 > 5.9604644775390625e-08f) ? (1.0f / _3668) : 0.0f)) * (1.0f / _449);
        float _3681 = _3678.y;
        float _3682 = _3680 * _3681;
        float _3684 = _16_m11.y + _3682;
        float _3685 = _3681 - _3682;
        float _3687 = (1.0f - _3680) * _449;
        float _3701 = max(-127.0f, _18_m49.z * _3685);
        float _3725 = max(-127.0f, _18_m52.x * _3685);
        float _3736 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3684 - _18_m49.x)))) * ((abs(_3701) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3701)) / _3701) : (0.693147182464599609375f - (0.2402265071868896484375f * _3701)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3684 - _18_m52.z)))) * ((abs(_3725) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3725)) / _3725) : (0.693147182464599609375f - (0.2402265071868896484375f * _3725))));
        float _3758 = clamp((_449 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3761 = clamp((max(clamp(exp2(-(_3736 * _3687)), 0.0f, 1.0f), _18_m51.w) + clamp((_449 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3758, 0.0f, 1.0f);
        float4 _3801 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1216 + ((((float3(uint3(_3646, _3642 + (_3644 * _3646), _372) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_781 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_781 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3807 = _3801.xyz + (((_18_m51.xyz * (1.0f - _3761)) + (((_18_m54.xyz * pow(clamp(dot(_448, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3736 * max(_3687 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3758))) * _3801.w);
        _3808 = _3801.w * _3761;
    }
    else
    {
        float3 _3507 = _411 - _16_m11.xyz;
        float _3509 = _3507.y;
        float _3523 = max(-127.0f, _18_m49.z * _3509);
        float _3547 = max(-127.0f, _18_m52.x * _3509);
        float _3558 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3523) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3523)) / _3523) : (0.693147182464599609375f - (0.2402265071868896484375f * _3523)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3547) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3547)) / _3547) : (0.693147182464599609375f - (0.2402265071868896484375f * _3547))));
        float _3580 = clamp((_449 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3583 = clamp((max(clamp(exp2(-(_3558 * _449)), 0.0f, 1.0f), _18_m51.w) + clamp((_449 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3580, 0.0f, 1.0f);
        _3807 = (_18_m51.xyz * (1.0f - _3583)) + (((_18_m54.xyz * pow(clamp(dot(_448, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3558 * max(_449 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3580));
        _3808 = _3583;
    }
    float3 _3818 = lerp(_670.xyz, ((_3428.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3464 * _3808)) : (_3464 * _3808))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3467 * _3467)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3473) / max((12.56637096405029296875f * _3477) * sqrt(_3477), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3464)) * _3808 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3807 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz, _526.xxx).xyz;
    float3 _3828 = lerp(dot(_3818, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3818, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3838 = min(lerp(((sqrt(sqrt(abs(_693 * 0.5f))) * float2(int2(sign(_693)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _680.xx), 1.0f.xx);
    float4 _3839 = float4(_3838.x, _3838.y, _371.z, _371.w);
    _3839.z = float(clamp(max(dot(_3828.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _526, _526) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3839.w = lerp(0.0f, 0.699999988079071044921875f, _680);
    float3 renodx_output_color = float3(_3828.x, _3828.y, _3828.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3428.w);
    _14 = _3839;
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

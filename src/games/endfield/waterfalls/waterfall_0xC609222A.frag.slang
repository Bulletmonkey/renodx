#include "../shared.h"

// Endfield 1.5 Vulkan shader 0xC609222A, migrated from 1.4.4 shader 0xC2D472B7.
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

static float _359 = (float)0;
static float4 _360 = (float4)0;
static float3 _361 = (float3)0;
static uint _364 = (uint)0;

static const float4 _338[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _339[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _340[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _30 : register(t50);
[[vk::binding(0, 1)]]
cbuffer _36_37 : register(b0)
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
    float4 _37_m16 : packoffset(c4);
    float _37_m17 : packoffset(c5);
    float _37_m18 : packoffset(c5.y);
    float _37_m19 : packoffset(c5.z);
    float _37_m20 : packoffset(c5.w);
    float4 _37_m21 : packoffset(c6);
    float4 _37_m22 : packoffset(c7);
    float4 _37_m23 : packoffset(c8);
    float4 _37_m24 : packoffset(c9);
    float4 _37_m25 : packoffset(c10);
    float _37_m26 : packoffset(c11);
    float _37_m27 : packoffset(c11.y);
    float _37_m28 : packoffset(c11.z);
    float _37_m29 : packoffset(c11.w);
    float _37_m30 : packoffset(c12);
    float _37_m31 : packoffset(c12.y);
    float _37_m32 : packoffset(c12.z);
    float _37_m33 : packoffset(c12.w);
    float _37_m34 : packoffset(c13);
    float _37_m35 : packoffset(c13.y);
    float _37_m36 : packoffset(c13.z);
    float _37_m37 : packoffset(c13.w);
    float _37_m38 : packoffset(c14);
    float _37_m39 : packoffset(c14.y);
    float _37_m40 : packoffset(c14.z);
    float _37_m41 : packoffset(c14.w);
    float _37_m42 : packoffset(c15);
    float _37_m43 : packoffset(c15.y);
    float _37_m44 : packoffset(c15.z);
    float _37_m45 : packoffset(c15.w);
    float4 _37_m46 : packoffset(c16);
    float4 _37_m47 : packoffset(c17);
    float4 _37_m48 : packoffset(c18);
    float4 _37_m49 : packoffset(c19);
    float4 _37_m50 : packoffset(c20);
    float _37_m51 : packoffset(c21);
    float _37_m52 : packoffset(c21.y);
    float _37_m53 : packoffset(c21.z);
    float _37_m54 : packoffset(c21.w);
    float _37_m55 : packoffset(c22);
    float _37_m56 : packoffset(c22.y);
    float _37_m57 : packoffset(c22.z);
    float _37_m58 : packoffset(c22.w);
    float _37_m59 : packoffset(c23);
    float _37_m60 : packoffset(c23.y);
    float _37_m61 : packoffset(c23.z);
    float _37_m62 : packoffset(c23.w);
    float _37_m63 : packoffset(c24);
    float _37_m64 : packoffset(c24.y);
    float _37_m65 : packoffset(c24.z);
    float _37_m66 : packoffset(c24.w);
    float _37_m67 : packoffset(c25);
    float _37_m68 : packoffset(c25.y);
    float _37_m69 : packoffset(c25.z);
    float _37_m70 : packoffset(c25.w);
    float _37_m71 : packoffset(c26);
    float _37_m72 : packoffset(c26.y);
    float _37_m73 : packoffset(c26.z);
    float _37_m74 : packoffset(c26.w);
    float _37_m75 : packoffset(c27);
    float4 _37_m76 : packoffset(c28);
    float4 _37_m77 : packoffset(c29);
    float _37_m78 : packoffset(c30);
    float _37_m79 : packoffset(c30.y);
    float _37_m80 : packoffset(c30.z);
    float _37_m81 : packoffset(c30.w);
    float4 _37_m82 : packoffset(c31);
};

[[vk::binding(47, 0)]]
cbuffer _46_47 : register(b47)
{
    int _47_m0 : packoffset(c0);
    int _47_m1 : packoffset(c0.y);
    int _47_m2 : packoffset(c0.z);
    int _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _48_49 : register(b14)
{
    float4 _49_m0 : packoffset(c0);
    float4 _49_m1 : packoffset(c1);
    float4 _49_m2 : packoffset(c2);
    float4 _49_m3 : packoffset(c3);
    float4 _49_m4 : packoffset(c4);
    uint4 _49_m5 : packoffset(c5);
    float4 _49_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _50_51 : register(b15)
{
    column_major float4x4 _51_m0[5] : packoffset(c0);
    float4 _51_m1[4] : packoffset(c20);
    float4 _51_m2[4] : packoffset(c24);
    float4 _51_m3[4] : packoffset(c28);
    float4 _51_m4 : packoffset(c32);
    float4 _51_m5 : packoffset(c33);
    float4 _51_m6 : packoffset(c34);
    float4 _51_m7 : packoffset(c35);
    float4 _51_m8 : packoffset(c36);
    float4 _51_m9[27] : packoffset(c37);
    column_major float4x4 _51_m10[56] : packoffset(c64);
    float4 _51_m11[56] : packoffset(c288);
    float4 _51_m12[56] : packoffset(c344);
    float4 _51_m13 : packoffset(c400);
    float4 _51_m14[47] : packoffset(c401);
    column_major float4x4 _51_m15[15] : packoffset(c448);
    float4 _51_m16[15] : packoffset(c508);
    float4 _51_m17[15] : packoffset(c523);
    float4 _51_m18[15] : packoffset(c538);
    float4 _51_m19 : packoffset(c553);
    float4 _51_m20 : packoffset(c554);
    float4 _51_m21[21] : packoffset(c555);
    column_major float4x4 _51_m22 : packoffset(c576);
    column_major float4x4 _51_m23 : packoffset(c580);
    float4 _51_m24 : packoffset(c584);
    float4 _51_m25 : packoffset(c585);
    float4 _51_m26 : packoffset(c586);
    float4 _51_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _60_61 : register(b49)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _28 : register(t45);
[[vk::binding(4, 1)]] Texture2D<float4> _31 : register(t4);
[[vk::binding(1, 1)]] SamplerState _32 : register(s1);
[[vk::binding(2, 1)]] Texture2D<float4> _33 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3);
[[vk::binding(22, 0)]] Texture2D<float4> _35 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _39 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _41 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _42 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _43 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _45 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _52 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _53 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _54 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _55 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _56 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _59 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
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
    float2 _391 = gl_FragCoord.xy * _18_m0.zw;
    uint2 _392 = uint2(gl_FragCoord.xy);
    float2 _394 = (_391 * 2.0f) - 1.0f.xx;
    float4 _397 = float4(_394, gl_FragCoord.z, 1.0f);
    _397.y = -_394.y;
    float4 _400 = mul(_16_m6, _397);
    float3 _404 = _400.xyz / _400.w.xxx;
    float4 _408 = float4(_404, 1.0f);
    float _411 = abs(mul(_16_m0, _408).z);
    float _415 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _420 = float4(_7.xyz, _415).xyz;
    float3 _441;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _441 = _16_m11.xyz - _404;
            break;
        }
        else
        {
            _441 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _442 = dot(_441, _441);
    float _444 = rsqrt(max(_442, 9.9999999392252902907785028219223e-09f));
    float3 _445 = _441 * _444;
    float _446 = _442 * _444;
    float2 _506 = ((mul(((((_4.xy * _37_m23.x) + ((((_4.zw * _37_m4) - (_5.xy * _37_m4)) + _5.xy) * _37_m23.y)) + (_37_m21.xy * _18_m75.w)) + (_37_m21.zw * (_5 * _37_m4).x)) - 0.5f.xx, float2x2(float2(_37_m22.xy), float2(_37_m22.zw))) + 0.5f.xx) * _37_m24.xy) + _37_m24.zw;
    float _514 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
    float _517 = lerp(0.0f, _514, _37_m70);
    _506.y = _506.y * (1.0f + min(_517, 0.5f));
    float4 _532 = _31.SampleBias(_32, _506 + _517.xx, _18_m16);
    float4 _537 = ((_37_m16 * lerp(_8, 1.0f.xxxx, _37_m5.xxxx)) * float4(_37_m6, _37_m6, _37_m6, _37_m7)) * lerp(_532, float4(1.0f, 1.0f, 1.0f, _532.x), _37_m18.xxxx);
    float2 _546 = ((float2(_392) * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _549 = float4(_546, _28.SampleLevel(_23, _391, 0.0f).x, 1.0f);
    _549.y = -_546.y;
    float4 _552 = mul(_16_m6, _549);
    float _610 = fmod(floor((_18_m75.w + lerp(0.0f, _514, _37_m43)) * _37_m40), _37_m47.y * _37_m47.x);
    float _613 = _37_m47.y - floor(_610 / _37_m47.x);
    float _616 = 1.0f / _37_m47.x;
    float _617 = 1.0f / _37_m47.y;
    float4 _620 = float4(_616, _617, (_610 - (_613 * _37_m47.x)) * _616, _613 * _617);
    float2 _624 = (_4.xy * _620.xy) + _620.zw;
    float4 _627 = _34.SampleBias(_25, _624, _18_m16);
    float4 _630 = clamp(_627 - _37_m45.xxxx, 0.0f.xxxx, 1.0f.xxxx);
    float _634 = _630.w;
    float _638 = _634 * _37_m41;
    float4 _642 = _33.SampleBias(_25, _624, _18_m16);
    _642.w = _642.w * _642.x;
    float2 _649 = (_642.wy * 2.0f) - 1.0f.xx;
    float3 _650 = float3(_649.x, _649.y, _361.z);
    float2 _651 = _649.xy;
    _650.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_651, _651), 0.0f, 1.0f)));
    float2 _659 = _650.xy * _37_m38;
    float3 _661 = mul(float3(_659.x, _659.y, _650.z), float3x3(_420 * 1.0f, (cross(_6, _420) * _415) * 1.0f, _6 * 1.0f));
    float3 _665 = _661 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_661, _661)));
    bool3 _671 = (gl_FrontFacing ? true : false).xxx;
    float3 _672 = -_665;
    float3 _673 = float3(_671.x ? _665.x : _672.x, _671.y ? _665.y : _672.y, _671.z ? _665.z : _672.z);
    float _708 = ((((clamp(((_537.w * ((_37_m26 != 0.0f) ? (clamp((_411 - _37_m27) / (_37_m28 - _37_m27), 0.0f, 1.0f) * clamp((_411 - _37_m29) / (_37_m30 - _37_m29), 0.0f, 1.0f)) : 1.0f)) * _638) - _37_m44, 0.0f, 1.0f) * _37_m41) * clamp(((abs(mul(_16_m0, float4(_552.xyz / _552.w.xxx, 1.0f)).z) - _411) + _37_m35) / _37_m34, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _37_m68)) * lerp(1.0f, pow(abs(dot(_6, _445)), _37_m61), _37_m63)) * (1.0f - _21_m0[_11]._m1.y);
    float _720 = clamp(_708, 0.0f, 1.0f);
    float3 _721 = clamp(((_537.xyz + ((_630.xyz * _37_m46.xyz) * _634)).xyz * ((1.0f - _37_m12) + (_18_m20.y * _37_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _724 = _721 * _37_m64;
    float _737 = (_37_m53 * (_638 * lerp(1.0f, _8.x, _37_m68))) * _724.x;
    float3 _751 = -_445;
    float4 _766 = _35.SampleBias(_24, _391 + mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_751, _673, _37_m79) * (_37_m75 * _720)).xy, _18_m16);
    float3 _768 = _720.xxx;
    float2 _820;
    if (clamp((_37_m3 + 1.0f) - _37_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _806 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
        _806.y = -_806.y;
        _820 = ((sqrt(sqrt(abs(_806 * 0.5f))) * float2(int2(sign(_806)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _820 = 0.0f.xx;
    }
    float3 _822 = (0.07999999821186065673828125f * _37_m67).xxx;
    uint2 _853;
    float _854;
    if (_18_m24.y == 1.0f)
    {
        float4 _830 = mul(_18_m135, _408);
        float4 _833 = _830;
        _833.y = -_830.y;
        float4 _836 = _833 * (1.0f / _830.w);
        _853 = uint2(clamp(((_836.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _854 = 1.0f / ((_18_m2.z * _836.z) + _18_m2.w);
    }
    else
    {
        _853 = _392;
        _854 = _411;
    }
    float3 _856 = _404 + (_673 * 0.25f);
    float3 _866 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _875 = _856 - (_18_m105.xyz + (_866 * (-_18_m107.w)));
    float _889 = max(clamp((max(abs(_875.x), abs(_875.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_875.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1191;
    float4 _1192;
    float4 _1193;
    float _1194;
    float _1195;
    if ((_18_m105.w != 0.0f) && (_889 < 1.0f))
    {
        float3 _902 = _856 - (_18_m105.xyz + (_866 * (-_18_m107.y)));
        float _916 = max(clamp((max(abs(_902.x), abs(_902.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_902.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _992;
        float4 _993;
        float4 _994;
        float4 _995;
        if (_916 < 1.0f)
        {
            float3 _925 = ((_856 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _927 = _925 - floor(_925);
            float4 _931 = _40.SampleLevel(_25, _927, 0.0f);
            float _932 = 1.0f - _916;
            float _936 = _18_m106.y * 0.5f;
            float _941 = _927.x;
            float _942 = clamp(_927.y, _936, 1.0f - _936) * 0.3333333432674407958984375f;
            float _943 = _927.z;
            float4 _946 = _41.SampleLevel(_24, float3(_941, _942, _943), 0.0f);
            float _962 = _931.x;
            float _972 = _931.y;
            float _982 = _931.z;
            _992 = _889 + (_946.w * _932);
            _993 = float4(((_41.SampleLevel(_24, float3(_941, _942 + 0.666666686534881591796875f, _943), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _982, _982) * _932;
            _994 = float4(((_41.SampleLevel(_24, float3(_941, _942 + 0.3333333432674407958984375f, _943), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _972, _972) * _932;
            _995 = float4(((_946.xyz * 4.0f) - 2.0f.xxx) * _962, _962) * _932;
        }
        else
        {
            _992 = _889;
            _993 = 0.0f.xxxx;
            _994 = 0.0f.xxxx;
            _995 = 0.0f.xxxx;
        }
        float3 _1001 = _856 - (_18_m105.xyz + (_866 * (-_18_m107.z)));
        float _1015 = max(clamp((max(abs(_1001.x), abs(_1001.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1001.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1095;
        float4 _1096;
        float4 _1097;
        float4 _1098;
        if (_1015 < 1.0f)
        {
            float3 _1024 = ((_856 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1026 = _1024 - floor(_1024);
            float4 _1030 = _42.SampleLevel(_25, _1026, 0.0f);
            float _1032 = _916 * (1.0f - _1015);
            float _1036 = _18_m106.y * 0.5f;
            float _1041 = _1026.x;
            float _1042 = clamp(_1026.y, _1036, 1.0f - _1036) * 0.3333333432674407958984375f;
            float _1043 = _1026.z;
            float4 _1046 = _43.SampleLevel(_24, float3(_1041, _1042, _1043), 0.0f);
            float _1062 = _1030.x;
            float _1073 = _1030.y;
            float _1084 = _1030.z;
            _1095 = _992 + (_1046.w * _1032);
            _1096 = _993 + (float4(((_43.SampleLevel(_24, float3(_1041, _1042 + 0.666666686534881591796875f, _1043), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1084, _1084) * _1032);
            _1097 = _994 + (float4(((_43.SampleLevel(_24, float3(_1041, _1042 + 0.3333333432674407958984375f, _1043), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1073, _1073) * _1032);
            _1098 = _995 + (float4(((_1046.xyz * 4.0f) - 2.0f.xxx) * _1062, _1062) * _1032);
        }
        else
        {
            _1095 = _992;
            _1096 = _993;
            _1097 = _994;
            _1098 = _995;
        }
        float4 _1181;
        float4 _1182;
        float4 _1183;
        float _1184;
        if (_1015 > 0.0f)
        {
            float3 _1107 = ((_856 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1110 = _18_m106.xyz * 0.5f;
            float3 _1112 = clamp(_1107 - floor(_1107), _1110, 1.0f.xxx - _1110);
            float4 _1116 = _44.SampleLevel(_25, _1112, 0.0f);
            float _1118 = _1015 * (1.0f - _889);
            float _1122 = _18_m106.y * 0.5f;
            float _1127 = _1112.x;
            float _1128 = clamp(_1112.y, _1122, 1.0f - _1122) * 0.3333333432674407958984375f;
            float _1129 = _1112.z;
            float4 _1132 = _45.SampleLevel(_24, float3(_1127, _1128, _1129), 0.0f);
            float _1148 = _1116.x;
            float _1159 = _1116.y;
            float _1170 = _1116.z;
            _1181 = _1096 + (float4(((_45.SampleLevel(_24, float3(_1127, _1128 + 0.666666686534881591796875f, _1129), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1170, _1170) * _1118);
            _1182 = _1097 + (float4(((_45.SampleLevel(_24, float3(_1127, _1128 + 0.3333333432674407958984375f, _1129), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1159, _1159) * _1118);
            _1183 = _1098 + (float4(((_1132.xyz * 4.0f) - 2.0f.xxx) * _1148, _1148) * _1118);
            _1184 = _1095 + (_1132.w * _1118);
        }
        else
        {
            _1181 = _1096;
            _1182 = _1097;
            _1183 = _1098;
            _1184 = _1095;
        }
        float _1187 = clamp((_1184 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1191 = _1181;
        _1192 = _1182;
        _1193 = _1183;
        _1194 = _1187 - _889;
        _1195 = (_1187 + _889) * 0.5f;
    }
    else
    {
        _1191 = 0.0f.xxxx;
        _1192 = 0.0f.xxxx;
        _1193 = 0.0f.xxxx;
        _1194 = 0.0f;
        _1195 = 1.0f;
    }
    float4 _1215 = _1193 + float4(_18_m108.x * _1195, (_18_m108.y * _1195) + ((_18_m108.w * _1194) * 0.5f), _18_m108.z * _1195, (_18_m108.w * _1195) + ((_18_m108.y * _1194) * 0.375f));
    float4 _1235 = _1192 + float4(_18_m109.x * _1195, (_18_m109.y * _1195) + ((_18_m109.w * _1194) * 0.5f), _18_m109.z * _1195, (_18_m109.w * _1195) + ((_18_m109.y * _1194) * 0.375f));
    float4 _1255 = _1191 + float4(_18_m110.x * _1195, (_18_m110.y * _1195) + ((_18_m110.w * _1194) * 0.5f), _18_m110.z * _1195, (_18_m110.w * _1195) + ((_18_m110.y * _1194) * 0.375f));
    float3 _1283 = lerp(1.0f.xxx, clamp(abs((frac(float3(_37_m51, _37_m52, _737).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _37_m52.xxx) * _737;
    float3 _1290 = ((float3(max(0.0f, dot(_1215.xyz, _673) + _1215.w), max(0.0f, dot(_1235.xyz, _673) + _1235.w), max(0.0f, dot(_1255.xyz, _673) + _1255.w)) * (_724 + (_1283 * _37_m54))) * 1.0f) * _18_m22.x;
    float3 _1299 = (((_1290.x + _1290.y) + _1290.z) * 0.3333333432674407958984375f).xxx;
    float3 _1304 = (_1299 + ((_1290 - _1299) * _37_m62)) + ((-0.0f).xxx * _37_m62);
    float3 _1310 = _18_m76.w.xxx;
    float _1318 = 1.0f - _37_m11;
    float3 _1321 = _404 + (_673 * 0.5f);
    float2 _1771;
    do
    {
        if (_51_m7.w >= 0.9900000095367431640625f)
        {
            _1771 = float2(_51_m7.z, 1.0f);
            break;
        }
        int _1334 = int(_51_m7.x);
        bool3 _1336 = (_1334 == 2).xxx;
        float3 _1344 = _1321 - float3(_1336.x ? _51_m1[0].xyz.x : _16_m11.xyz.x, _1336.y ? _51_m1[0].xyz.y : _16_m11.xyz.y, _1336.z ? _51_m1[0].xyz.z : _16_m11.xyz.z);
        float _1355 = max(clamp((_51_m6.w - dot(_1344, _1344)) * _51_m6.z, 0.0f, 1.0f), _51_m8.x);
        float _1512;
        bool _1513;
        if (_1355 > 0.0f)
        {
            float _1510;
            bool _1511;
            if (_1334 > 0)
            {
                float3 _1362 = _1321 - _51_m1[0].xyz;
                float3 _1366 = _1321 - _51_m1[1].xyz;
                float3 _1370 = _1321 - _51_m1[2].xyz;
                float3 _1374 = _1321 - _51_m1[3].xyz;
                float4 _1379 = float4(dot(_1362, _1362), dot(_1366, _1366), dot(_1370, _1370), dot(_1374, _1374));
                float4 _1388 = float4(_51_m1[0].w, _51_m1[1].w, _51_m1[2].w, _51_m1[3].w);
                float4 _1390 = float4(bool4(_1379.x < _1388.x, _1379.y < _1388.y, _1379.z < _1388.z, _1379.w < _1388.w));
                float3 _1394 = clamp(_1390.yzw - _1390.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1398 = clamp(4.0f - dot(float4(_1390.x, _1394.x, _1394.y, _1394.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1400 = clamp(_1398 + 1.0f, 0.0f, 3.0f);
                uint _1401 = uint(_1398);
                uint _1409 = uint(_1400);
                float _1415 = dot(_1379, _338[_1409]) / _51_m1[_1409].w;
                float _1433;
                if (((_1400 > _1398) && (_1415 >= 0.0f)) && (_1415 <= 1.0f))
                {
                    _1433 = _1398 + step(frac(52.98291778564453125f * frac(dot(float2(_853) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1379, _338[_1401]) / _51_m1[_1401].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1433 = _1398;
                }
                float _1434 = clamp(_1433, 0.0f, 4.0f);
                float4 _1442 = mul(_51_m0[uint(_1434)], float4(_1321, 1.0f));
                float _1445 = _1442.z;
                float4 _1446 = float4(_1442.xy, _1445, _1434);
                float3 _1447 = _1446.xyz;
                bool3 _1448 = bool3(_1447.x <= 0.0f.xxx.x, _1447.y <= 0.0f.xxx.y, _1447.z <= 0.0f.xxx.z);
                bool3 _1449 = bool3(_1447.x >= 1.0f.xxx.x, _1447.y >= 1.0f.xxx.y, _1447.z >= 1.0f.xxx.z);
                bool _1455 = any(bool3(_1448.x || _1449.x, _1448.y || _1449.y, _1448.z || _1449.z)) || ((asuint(_1445) & 2147483647u) > 2139095040u);
                int _1456 = int(_1434);
                float2 _1471 = float4(_51_m3[_1456].xy + (_1446.xy * _51_m3[_1456].zw), _1445, _1434).xy;
                _1510 = _1455 ? 1.0f : (0.25f * (((_52.SampleCmpLevelZero(_26, float3(_1471 + (_51_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _359).xy, _1445) + _52.SampleCmpLevelZero(_26, float3(_1471 + (_51_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _359).xy, _1445)) + _52.SampleCmpLevelZero(_26, float3(_1471 + (_51_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _359).xy, _1445)) + _52.SampleCmpLevelZero(_26, float3(_1471 + (_51_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _359).xy, _1445)));
                _1511 = _1455;
            }
            else
            {
                _1510 = 1.0f;
                _1511 = false;
            }
            _1512 = _1510;
            _1513 = _1511;
        }
        else
        {
            _1512 = 1.0f;
            _1513 = false;
        }
        float _1713;
        float _1714;
        if ((_1355 < 1.0f) || (_51_m8.x > 0.5f))
        {
            float _1524 = 1.0f - clamp(dot(_673, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1541 = float4((_1321 - (_49_m0.xyz * (_1524 * _51_m24.x))) + (_673 * (_1524 * _51_m24.y)), 1.0f);
            float4 _1542 = mul(_51_m23, _1541);
            float _1711;
            if (all(bool2(_1542.xy.x > 0.0f.xx.x, _1542.xy.y > 0.0f.xx.y)) && all(bool2(_1542.xy.x < 1.0f.xx.x, _1542.xy.y < 1.0f.xx.y)))
            {
                uint _1562 = clamp(uint((floor(_1542.y * _51_m25.z) + _1542.x) * _51_m25.y), 0u, 127u);
                uint _1566 = asuint(_51_m27[_1562].x);
                float2 _1567 = spvUnpackHalf2x16(_1566);
                float _1568 = _1567.x;
                float _1710;
                if (_1568 >= 0.0f)
                {
                    float4x4 _1577 = _51_m22;
                    _1577[0].w = _51_m27[_1562].y;
                    _1577[1].w = _51_m27[_1562].z;
                    _1577[2].w = _51_m27[_1562].w;
                    float4 _1584 = mul(_1577, _1541);
                    float _1709;
                    if (all(bool3(_1584.xyz.x > 0.0f.xxx.x, _1584.xyz.y > 0.0f.xxx.y, _1584.xyz.z > 0.0f.xxx.z)) && all(bool3(_1584.xyz.x < 1.0f.xxx.x, _1584.xyz.y < 1.0f.xxx.y, _1584.xyz.z < 1.0f.xxx.z)))
                    {
                        float2 _1608 = float4((_1584.xy * _51_m24.zw) + float2(_1568, spvUnpackHalf2x16(_1566 >> 16u).x), _1584.z, 1.0f).xy * _51_m26.zw;
                        float2 _1610 = floor(_1608 + 0.5f.xx);
                        float2 _1611 = _1608 - _1610;
                        float _1612 = _1611.x;
                        float _1613 = _1612 + 0.5f;
                        float _1615 = (_1613 * _1613) * 0.5f;
                        float _1618 = min(_1612, 0.0f);
                        float _1622 = max(_1612, 0.0f);
                        float4 _1626 = float4(_1615 - _1612, (1.0f - _1612) - (_1618 * _1618), (_1612 + 1.0f) - (_1622 * _1622), _1615) * 0.44444000720977783203125f;
                        float _1627 = _1611.y;
                        float _1628 = _1627 + 0.5f;
                        float _1630 = (_1628 * _1628) * 0.5f;
                        float _1633 = min(_1627, 0.0f);
                        float _1637 = max(_1627, 0.0f);
                        float4 _1641 = float4(_1630 - _1627, (1.0f - _1627) - (_1633 * _1633), (_1627 + 1.0f) - (_1637 * _1637), _1630) * 0.44444000720977783203125f;
                        float2 _1643 = _1626.yw;
                        float2 _1644 = _1626.xz + _1643;
                        float2 _1646 = _1641.yw;
                        float2 _1647 = _1641.xz + _1646;
                        float2 _1653 = ((_1643 / _1644) + float2(-1.5f, 0.5f)) * _51_m26.xx;
                        float2 _1655 = ((_1646 / _1647) + float2(-1.5f, 0.5f)) * _51_m26.yy;
                        float2 _1657 = _1610 * _51_m26.xy;
                        float _1658 = _1653.x;
                        float _1659 = _1655.x;
                        float _1662 = _1653.y;
                        float _1665 = _1655.y;
                        float _1670 = _1644.x;
                        float _1671 = _1647.x;
                        float _1673 = _1644.y;
                        float _1675 = _1647.y;
                        _1709 = ((((_1670 * _1671) * _55.SampleCmpLevelZero(_26, float3(_1657 + float2(_1658, _1659), _359).xy, _1584.z)) + ((_1673 * _1671) * _55.SampleCmpLevelZero(_26, float3(_1657 + float2(_1662, _1659), _359).xy, _1584.z))) + ((_1670 * _1675) * _55.SampleCmpLevelZero(_26, float3(_1657 + float2(_1658, _1665), _359).xy, _1584.z))) + ((_1673 * _1675) * _55.SampleCmpLevelZero(_26, float3(_1657 + float2(_1662, _1665), _359).xy, _1584.z));
                    }
                    else
                    {
                        _1709 = 1.0f;
                    }
                    _1710 = _1709;
                }
                else
                {
                    _1710 = 1.0f;
                }
                _1711 = _1710;
            }
            else
            {
                _1711 = 1.0f;
            }
            _1713 = _1513 ? _1711 : _1512;
            _1714 = _1711;
        }
        else
        {
            _1713 = _1512;
            _1714 = 1.0f;
        }
        float _1717 = lerp(lerp(_1714, _1713, _1355), min(_1714, _1713), _51_m8.x);
        float _1766;
        if (_1717 > 0.001000000047497451305389404296875f)
        {
            float3 _1724 = _1321 - _18_m65.xyz;
            float2 _1734 = (_1724 + (_18_m68.xyz * _1724.y)).xz * _18_m66.z;
            float2 _1741 = _18_m67.xy * _18_m75.w;
            _1766 = _1717 * lerp(1.0f, lerp(_54.SampleLevel(_25, _1734 + _1741, 0.0f), _54.SampleLevel(_25, (_1734 * _18_m67.w) + _1741, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1724.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1766 = _1717;
        }
        _1771 = float2(lerp(_1766, _51_m7.z, _51_m7.w), _1766);
        break;
    } while(false);
    float _1776 = lerp(1.0f, min(1.0f, _1771.x), _51_m6.x);
    float4 _1940;
    if (_1776 > 0.001000000047497451305389404296875f)
    {
        float3 _1786 = reflect(_751, _673);
        float3 _1787 = -_49_m0.xyz;
        float _1792 = dot(_1787, _1786);
        float3 _1794 = _1786 - (_1787 * _1792);
        bool3 _1796 = (_1792 < _49_m4.z).xxx;
        float3 _1804 = normalize((_1787 * _49_m4.z) + ((_1794 * rsqrt(max(6.103515625e-05f, dot(_1794, _1794)))) * _49_m4.y));
        float3 _1805 = float3(_1796.x ? _1804.x : _1786.x, _1796.y ? _1804.y : _1786.y, _1796.z ? _1804.z : _1786.z);
        float3 _1809 = _1805 + _445;
        float3 _1813 = _1809 * rsqrt(max(6.103515625e-05f, dot(_1809, _1809)));
        float _1815 = clamp(dot(_1805, _673), 0.0f, 1.0f);
        float _1817 = clamp(dot(_673, _1813), 0.0f, 1.0f);
        float _1822 = clamp(dot(_673, _445), 0.0f, 1.0f);
        float _1823 = _37_m66 * _37_m66;
        float _1824 = _1823 * _1823;
        float _1845 = (((_1817 * _1824) - _1817) * _1817) + 1.0f;
        float _1848 = 1.0f - clamp(dot(_445, _1813), 0.0f, 1.0f);
        float _1849 = _1848 * _1848;
        float _1851 = (_1848 * _1849) * _1849;
        float _1875 = 1.0f - _37_m66;
        float _1882 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1875 * (1.04997003078460693359375f + (_1875 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1875))))));
        float _1883 = 1.0f - _1882;
        float3 _1886 = _822 + ((1.0f.xxx - _822) * 0.0476190485060214996337890625f);
        float _1897 = clamp(1.0f - _737, 0.0f, 1.0f);
        float _1905 = clamp((dot(_673, _1805) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1922 = clamp((clamp((min(((_822 * (1.0f - _1851)) + _1851.xxx) * ((_1824 / (_1845 * _1845)) * (0.5f / (((_1815 * sqrt(((((-_1822) * _1824) + _1822) * _1822) + _1824)) + (_1822 * sqrt(((((-_1815) * _1824) + _1815) * _1815) + _1824))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1886 * (((_58.SampleLevel(_24, (float2(_1822, _37_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_24, (float2(_1815, _37_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1882) / _1883)) * _1886) / (1.0f.xxx - (_1886 * _1883)))) * _49_m4.x, 0.0f.xxx, 1000.0f.xxx) * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f)) / max(_720, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _37_m60;
        float3 _1927 = (((_1922 * _1815) + (_1283 * lerp(lerp(1.0f, (_1905 * sqrt(_1905)) * 1.66666662693023681640625f, _1897) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_445, _1805), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1897)))) + ((_724 * 1.0f) * _1815)) * _49_m1.xyz;
        float3 _1938 = lerp(_1927, _1927 * _56.SampleBias(_24, float2(_1776, 0.5f), _18_m16).xyz, (1.0f - _1776).xxx) * 1.0f;
        _1940 = float4(_1938.x, _1938.y, _1938.z, 0.0f.xxxx.w);
    }
    else
    {
        _1940 = 0.0f.xxxx;
    }
    float2 _1941 = float2(_853);
    float2 _1943 = floor(_1941 * 0.03125f);
    int _1951 = int((_1943.x + (_1943.y * _47_m5)) * 8.0f);
    float _1958 = floor(_854 - (_18_m3.y * _47_m11));
    float _1962 = clamp(_1958, 0.0f, _47_m7 - 1.0f);
    int _1964 = int(_1962 * 8.0f);
    float3 _1966;
    float _1969;
    _1966 = 0.0f.xxx;
    _1969 = 1.0f;
    float3 _1967;
    float _1970;
    [loop]
    for (int _1971 = 0; _1971 <= 7; _1966 = _1967, _1969 = _1970, _1971++)
    {
        uint _1989 = (_1958 <= _1962) ? (_30.Load(uint(_1951 + _1971) * 4 + 0) & _30.Load(uint((_18_m21.y + _1964) + _1971) * 4 + 0)) : 0u;
        uint _1990 = uint(_1971);
        float3 _1994;
        _1970 = _1969;
        _1994 = 0.0f.xxx;
        uint _1997;
        float _1992;
        float3 _1995;
        [loop]
        for (uint _1996 = _1989; _1996 != 0u; _1970 = _1992, _1994 = _1995, _1996 = _1997)
        {
            uint _2001 = firstbitlow(_1996);
            _1997 = _1996 ^ (1u << (_2001 & 31u));
            int _2007 = int((32u * _1990) + _2001) * 8;
            int _2010 = _2007 + 1;
            int _2013 = _2007 + 2;
            int _2016 = _2007 + 3;
            int _2019 = _2007 + 5;
            int _2022 = _2007 + 6;
            int _2025 = _2007 + 7;
            uint _2029 = uint(_49_m6[_2019].w);
            float _2104;
            if ((_2029 & 1u) == 1u)
            {
                uint _2035 = asuint(_49_m6[_2019].x);
                uint _2042 = asuint(_49_m6[_2019].y);
                uint _2049 = asuint(_49_m6[_2019].z);
                uint _2056 = asuint(_49_m6[_2022].x);
                uint _2063 = asuint(_49_m6[_2022].y);
                uint _2070 = asuint(_49_m6[_2022].z);
                float3 _2089 = abs(mul(float4(_404 - _49_m6[_2010].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2035).x, spvUnpackHalf2x16(_2049).x, spvUnpackHalf2x16(_2063).x, 0.0f), float4(spvUnpackHalf2x16(_2035 >> 16u).x, spvUnpackHalf2x16(_2049 >> 16u).x, spvUnpackHalf2x16(_2063 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2042).x, spvUnpackHalf2x16(_2056).x, spvUnpackHalf2x16(_2070).x, 0.0f), float4(spvUnpackHalf2x16(_2042 >> 16u).x, spvUnpackHalf2x16(_2056 >> 16u).x, spvUnpackHalf2x16(_2070 >> 16u).x, 0.0f))).xyz);
                float _2096 = _49_m6[_2025].x * 0.5f;
                float _2102 = 1.0f - clamp((max(max(_2089.x, _2089.y), _2089.z) - (_2096 + 0.5f)) / (0.5f - _2096), 0.0f, 1.0f);
                _2104 = _2102 * _2102;
            }
            else
            {
                _2104 = 1.0f;
            }
            bool _2108 = _49_m6[_2016].z > 0.5f;
            if ((false || (_2104 < 0.001000000047497451305389404296875f)) || _2108)
            {
                _1992 = _1970;
                _1995 = _1994;
                continue;
            }
            float _3241;
            float3 _3242;
            if (_49_m6[_2007].w < 1.5f)
            {
                float3 _2596 = float3(0.100000001490116119384765625f, _37_m66, 1.0f);
                float _2605 = (0.5f + (0.5f * _49_m6[_2013].y)) - abs(_49_m6[_2013].x);
                float _2606 = _49_m6[_2013].y - _2605;
                float _2613 = abs(max((1.0f - abs(_2605)) - abs(_2606), 0.00048828125f));
                float3 _2617 = normalize(float3(_2605, _2606, (_49_m6[_2013].x >= 0.0f) ? _2613 : (-_2613)));
                float3 _2618 = _49_m6[_2010].xyz - _404;
                float _2619 = dot(_2618, _2618);
                float _2620 = rsqrt(_2619);
                float3 _2621 = _2618 * _2620;
                float _2625 = clamp(_49_m6[_2025].y * _2620, 0.0f, 1.0f);
                int _2630 = int(_49_m6[_2025].w);
                float3 _2631 = _2617 * _49_m6[_2013].z;
                float3 _2632 = _2631 * 0.5f;
                float3 _2633 = _2618 - _2632;
                float3 _2634 = _2618 + _2632;
                bool _2637 = (uint(_49_m6[_2007].w) & 1u) == 0u;
                bool _2640 = _2637 || ((_2029 & 2u) != 0u);
                bool _2643 = (!_2637) && (_49_m6[_2013].z > 0.0f);
                float _2662;
                float _2663;
                if (_2643)
                {
                    float _2647 = length(_2633);
                    float _2648 = length(_2634);
                    _2662 = clamp(0.5f * ((dot(_673, _2633) / _2647) + (dot(_673, _2634) / _2648)), 0.0f, 1.0f);
                    _2663 = 1.0f / ((((_2647 * _2648) + dot(_2633, _2634)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2662 = clamp(dot(_673, _2621), 0.0f, 1.0f);
                    _2663 = 1.0f;
                }
                float _2685;
                if (_49_m6[_2022].w < 0.0f)
                {
                    float _2679 = _2619 * (_49_m6[_2010].w * _49_m6[_2010].w);
                    float _2682 = clamp(1.0f - (_2679 * _2679), 0.0f, 1.0f);
                    _2685 = lerp(1.0f / (_2619 + 1.0f), _2663, float(_2643)) * (_2682 * _2682);
                }
                else
                {
                    float3 _2668 = _2618 * _49_m6[_2010].w;
                    _2685 = _2663 * pow(1.0f - clamp(dot(_2668, _2668), 0.0f, 1.0f), _49_m6[_2022].w);
                }
                float _2691 = clamp((dot(_2621, -_2617) - _49_m6[_2013].z) * _49_m6[_2013].w, 0.0f, 1.0f);
                float _2695 = _2685 * lerp(1.0f, _2691 * _2691, float(_2637));
                float _2795;
                if ((!_2643) && (_2630 >= 0))
                {
                    uint _2701 = uint(_2630);
                    float2 _2788;
                    [branch]
                    if (_2637)
                    {
                        float4 _2778 = mul(_61_m1[_2701], _408);
                        _2788 = _61_m0[_2701].xy + (clamp(_2778.xy / _2778.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2701].zw);
                    }
                    else
                    {
                        float3 _2715 = mul(float4(-_2618, 0.0f), _61_m1[_2701]).xyz;
                        float3 _368 = _2715;
                        float3 _367 = _2715;
                        float3 _366 = abs(_2715);
                        uint _2724 = uint(int(_366.y > _366.x));
                        uint _2730 = (_366.z > _366[_2724]) ? 2u : _2724;
                        uint _2736 = (_2730 * 2u) + uint(_367[_2730] < 0.0f);
                        float _2740 = abs(_368[_2736 / 2u]);
                        float _2760 = 0.5f - (0.000244140625f / _61_m0[_2701].w);
                        _2788 = _61_m0[_2701].xy + (clamp(float2((float(_2736) + ((((_368[uint(_339[_2736].x)] * _340[_2736].x) / _2740) * _2760) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_368[uint(_339[_2736].y)] * _340[_2736].y) / _2740) * _2760)), 0.0f.xx, 1.0f.xx) * _61_m0[_2701].zw);
                    }
                    _2795 = _2695 * _59.SampleLevel(_24, _2788, 0.0f).x;
                }
                else
                {
                    _2795 = _2695;
                }
                bool _2796 = _2795 > 0.0f;
                float _3084;
                if (_2796)
                {
                    int _2848;
                    if (_2640)
                    {
                        _2848 = int(_49_m6[_2016].x);
                    }
                    else
                    {
                        uint _2803 = asuint(_49_m6[_2013].w);
                        uint _2805 = asuint(_49_m6[_2016].x);
                        float3 _2806 = _404 - _49_m6[_2010].xyz;
                        float3 _2807 = abs(_2806);
                        float _2808 = _2807.x;
                        float _2809 = _2807.y;
                        float _2811 = _2807.z;
                        int _2843;
                        if ((_2808 > _2809) && (_2808 > _2811))
                        {
                            _2843 = int((_2806.x > 0.0f) ? (_2803 >> 24u) : ((_2803 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2835;
                            if (_2809 > _2811)
                            {
                                _2835 = int((_2806.y > 0.0f) ? ((_2803 >> 8u) & 255u) : (_2803 & 255u));
                            }
                            else
                            {
                                _2835 = int((_2806.z > 0.0f) ? ((_2805 >> 8u) & 255u) : (_2805 & 255u));
                            }
                            _2843 = _2835;
                        }
                        _2848 = (_2843 < 80) ? _2843 : (-1);
                    }
                    float3 _2858 = (_404 - ((-_2621) * _51_m11[_2848].x)) + (_673 * (_51_m11[_2848].y * 5.0f));
                    float4 _2865 = mul(_51_m10[_2848], float4(_2858, 1.0f));
                    float _2866 = _2865.w;
                    float3 _2869 = _2865.xyz / _2866.xxx;
                    float2 _2870 = _2869.xy;
                    float3 _2878 = _2869.xyz;
                    bool3 _2879 = bool3(_2878.x <= 0.0f.xxx.x, _2878.y <= 0.0f.xxx.y, _2878.z <= 0.0f.xxx.z);
                    bool3 _2880 = bool3(_2878.x >= 1.0f.xxx.x, _2878.y >= 1.0f.xxx.y, _2878.z >= 1.0f.xxx.z);
                    float _2883 = _2869.z;
                    float2 _2894 = ((_2870 * (_51_m12[_2848].zw - _51_m12[_2848].xy)) + _51_m12[_2848].xy).xy * _51_m13.zw;
                    float2 _2896 = floor(_2894 + 0.5f.xx);
                    float2 _2897 = _2894 - _2896;
                    float _2898 = _2897.x;
                    float _2899 = _2898 + 0.5f;
                    float _2900 = _2899 * _2899;
                    float _2903 = 1.0f - _2898;
                    float _2904 = min(_2898, 0.0f);
                    float _2907 = _2898 + 1.0f;
                    float _2908 = max(_2898, 0.0f);
                    float _2919 = _2897.y;
                    float _2920 = _2919 + 0.5f;
                    float _2921 = _2920 * _2920;
                    float _2924 = 1.0f - _2919;
                    float _2925 = min(_2919, 0.0f);
                    float _2928 = _2919 + 1.0f;
                    float _2929 = max(_2919, 0.0f);
                    float3 _2941 = float3(0.1599999964237213134765625f * _2903, 0.1599999964237213134765625f * ((_2907 - (_2908 * _2908)) + 1.0f), _2900 * 0.07999999821186065673828125f);
                    float3 _2942 = float3(0.1599999964237213134765625f * ((_2900 * 0.5f) - _2898), 0.1599999964237213134765625f * ((_2903 - (_2904 * _2904)) + 1.0f), 0.1599999964237213134765625f * _2907) + _2941;
                    float3 _2944 = float3(0.1599999964237213134765625f * _2924, 0.1599999964237213134765625f * ((_2928 - (_2929 * _2929)) + 1.0f), _2921 * 0.07999999821186065673828125f);
                    float3 _2945 = float3(0.1599999964237213134765625f * ((_2921 * 0.5f) - _2919), 0.1599999964237213134765625f * ((_2924 - (_2925 * _2925)) + 1.0f), 0.1599999964237213134765625f * _2928) + _2944;
                    float3 _2951 = ((_2941 / _2942) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                    float3 _2953 = ((_2944 / _2945) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                    float2 _2955 = _2896 * _51_m13.xy;
                    float _2956 = _2951.x;
                    float _2957 = _2953.x;
                    float _2960 = _2951.y;
                    float _2963 = _2951.z;
                    float _2966 = _2953.y;
                    float _2973 = _2953.z;
                    float _2980 = _2942.x;
                    float _2981 = _2945.x;
                    float _2983 = _2942.y;
                    float _2985 = _2942.z;
                    float _2987 = _2945.y;
                    float _2991 = _2945.z;
                    float _3049 = (((((((_2980 * _2981) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2956, _2957), _359).xy, _2883)) + ((_2983 * _2981) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2960, _2957), _359).xy, _2883))) + ((_2985 * _2981) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2963, _2957), _359).xy, _2883))) + ((_2980 * _2987) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2956, _2966), _359).xy, _2883))) + ((_2983 * _2987) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2960, _2966), _359).xy, _2883))) + ((_2985 * _2987) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2963, _2966), _359).xy, _2883))) + ((_2980 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2956, _2973), _359).xy, _2883));
                    float2 _3070 = min(_2870, 1.0f.xx - _2870);
                    _3084 = (_2848 >= 0) ? lerp(1.0f, (any(bool3(_2879.x || _2880.x, _2879.y || _2880.y, _2879.z || _2880.z)) || ((asuint(_2883) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3049 + ((_2983 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2960, _2973), _359).xy, _2883))) + ((_2985 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2955 + float2(_2963, _2973), _359).xy, _2883))), _2640 ? min(_51_m11[_2848].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2848].z - _2866) * 0.25f, min(_3070.x, _3070.y)))) : _51_m11[_2848].w) : 1.0f;
                }
                else
                {
                    _3084 = 1.0f;
                }
                float3 _3108;
                float3 _3109;
                if (_2643)
                {
                    float3 _3087 = _2596 * _2596;
                    float3 _3088 = reflect(_751, _673);
                    float _3097 = dot(_3088, _2631);
                    _3108 = _3087 / clamp(_3087 + (0.5f * clamp(_49_m6[_2013].z * _2620, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3109 = normalize(_2633 + (_2631 * clamp(dot(_2633, (_3088 * _3097) - _2631) / ((_49_m6[_2013].z * _49_m6[_2013].z) - (_3097 * _3097)), 0.0f, 1.0f)));
                }
                else
                {
                    _3108 = 1.0f.xxx;
                    _3109 = _2621;
                }
                float3 _3110 = _3109 + _445;
                float3 _3114 = _3110 * rsqrt(max(6.103515625e-05f, dot(_3110, _3110)));
                float3 _3240;
                if (_2796)
                {
                    float _3118 = clamp(_2662, 0.0f, 1.0f);
                    float _3120 = clamp(dot(_673, _3114), 0.0f, 1.0f);
                    float _3122 = clamp(dot(_445, _3114), 0.0f, 1.0f);
                    float _3125 = clamp(dot(_673, _445), 0.0f, 1.0f);
                    float _3126 = _37_m66 * _37_m66;
                    float _3136;
                    if (_2625 > 0.0f)
                    {
                        _3136 = clamp(_3126 + ((_2625 * _2625) / ((_3122 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3136 = _3126;
                    }
                    float _3137 = _3136 * _3136;
                    float _3158 = (((_3120 * _3137) - _3120) * _3120) + 1.0f;
                    float _3163 = 1.0f - _3122;
                    float _3164 = _3163 * _3163;
                    float _3166 = (_3163 * _3164) * _3164;
                    float _3190 = 1.0f - _37_m66;
                    float _3197 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3190 * (1.04997003078460693359375f + (_3190 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3190))))));
                    float _3198 = 1.0f - _3197;
                    float3 _3201 = _822 + ((1.0f.xxx - _822) * 0.0476190485060214996337890625f);
                    float _3212 = clamp(1.0f - _737, 0.0f, 1.0f);
                    float _3220 = clamp((dot(_673, _3109) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3236 = (clamp((min(((_822 * (1.0f - _3166)) + _3166.xxx) * (((_3137 / (_3158 * _3158)) * _3108.y) * (0.5f / (((_3118 * sqrt(((((-_3125) * _3137) + _3125) * _3125) + _3137)) + (_3125 * sqrt(((((-_3118) * _3137) + _3118) * _3118) + _3137))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3201 * (((_58.SampleLevel(_24, (float2(_3125, _37_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_24, (float2(_3118, _37_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3197) / _3198)) * _3201) / (1.0f.xxx - (_3201 * _3198)))) * _49_m6[_2025].z, 0.0f.xxx, 1000.0f.xxx) * _2662) + (_1283 * lerp(lerp(1.0f, (_3220 * sqrt(_3220)) * 1.66666662693023681640625f, _3212) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_445, _3109), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3212)));
                    _3240 = (_3236 + ((_724 * _3108.z) * _2662)) * (((_49_m6[_2007].xyz * _2795) * _3084) * _2104);
                }
                else
                {
                    _3240 = 0.0f.xxx;
                }
                _3241 = _1970;
                _3242 = _3240;
            }
            else
            {
                float _2594;
                do
                {
                    if (_2108)
                    {
                        _2594 = 1.0f;
                        break;
                    }
                    float _2128 = (0.5f + (0.5f * _49_m6[_2013].y)) - abs(_49_m6[_2013].x);
                    float _2129 = _49_m6[_2013].y - _2128;
                    float _2136 = abs(max((1.0f - abs(_2128)) - abs(_2129), 0.00048828125f));
                    float3 _2140 = normalize(float3(_2128, _2129, (_49_m6[_2013].x >= 0.0f) ? _2136 : (-_2136)));
                    float3 _2141 = _49_m6[_2010].xyz - _404;
                    float _2142 = dot(_2141, _2141);
                    float3 _2144 = _2141 * rsqrt(_2142);
                    int _2147 = int(_49_m6[_2025].w);
                    float3 _2149 = (_2140 * _49_m6[_2013].z) * 0.5f;
                    float3 _2150 = _2141 - _2149;
                    float3 _2151 = _2141 + _2149;
                    bool _2154 = (uint(_49_m6[_2007].w) & 1u) == 0u;
                    bool _2157 = _2154 || ((_2029 & 2u) != 0u);
                    bool _2160 = (!_2154) && (_49_m6[_2013].z > 0.0f);
                    float _2172;
                    if (_2160)
                    {
                        _2172 = 1.0f / ((((length(_2150) * length(_2151)) + dot(_2150, _2151)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2172 = 1.0f;
                    }
                    float _2194;
                    if (_49_m6[_2022].w < 0.0f)
                    {
                        float _2188 = _2142 * (_49_m6[_2010].w * _49_m6[_2010].w);
                        float _2191 = clamp(1.0f - (_2188 * _2188), 0.0f, 1.0f);
                        _2194 = lerp(1.0f / (_2142 + 1.0f), _2172, float(_2160)) * (_2191 * _2191);
                    }
                    else
                    {
                        float3 _2177 = _2141 * _49_m6[_2010].w;
                        _2194 = _2172 * pow(1.0f - clamp(dot(_2177, _2177), 0.0f, 1.0f), _49_m6[_2022].w);
                    }
                    float _2200 = clamp((dot(_2144, -_2140) - _49_m6[_2013].z) * _49_m6[_2013].w, 0.0f, 1.0f);
                    float _2204 = _2194 * lerp(1.0f, _2200 * _2200, float(_2154));
                    float _2304;
                    if ((!_2160) && (_2147 >= 0))
                    {
                        uint _2210 = uint(_2147);
                        float2 _2297;
                        [branch]
                        if (_2154)
                        {
                            float4 _2287 = mul(_61_m1[_2210], _408);
                            _2297 = _61_m0[_2210].xy + (clamp(_2287.xy / _2287.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2210].zw);
                        }
                        else
                        {
                            float3 _2224 = mul(float4(-_2141, 0.0f), _61_m1[_2210]).xyz;
                            float3 _371 = _2224;
                            float3 _370 = _2224;
                            float3 _369 = abs(_2224);
                            uint _2233 = uint(int(_369.y > _369.x));
                            uint _2239 = (_369.z > _369[_2233]) ? 2u : _2233;
                            uint _2245 = (_2239 * 2u) + uint(_370[_2239] < 0.0f);
                            float _2249 = abs(_371[_2245 / 2u]);
                            float _2269 = 0.5f - (0.000244140625f / _61_m0[_2210].w);
                            _2297 = _61_m0[_2210].xy + (clamp(float2((float(_2245) + ((((_371[uint(_339[_2245].x)] * _340[_2245].x) / _2249) * _2269) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_371[uint(_339[_2245].y)] * _340[_2245].y) / _2249) * _2269)), 0.0f.xx, 1.0f.xx) * _61_m0[_2210].zw);
                        }
                        _2304 = _2204 * _59.SampleLevel(_24, _2297, 0.0f).x;
                    }
                    else
                    {
                        _2304 = _2204;
                    }
                    float _2593;
                    if (_2304 > 0.0f)
                    {
                        int _2357;
                        if (_2157)
                        {
                            _2357 = int(_49_m6[_2016].x);
                        }
                        else
                        {
                            uint _2312 = asuint(_49_m6[_2013].w);
                            uint _2314 = asuint(_49_m6[_2016].x);
                            float3 _2315 = _404 - _49_m6[_2010].xyz;
                            float3 _2316 = abs(_2315);
                            float _2317 = _2316.x;
                            float _2318 = _2316.y;
                            float _2320 = _2316.z;
                            int _2352;
                            if ((_2317 > _2318) && (_2317 > _2320))
                            {
                                _2352 = int((_2315.x > 0.0f) ? (_2312 >> 24u) : ((_2312 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2344;
                                if (_2318 > _2320)
                                {
                                    _2344 = int((_2315.y > 0.0f) ? ((_2312 >> 8u) & 255u) : (_2312 & 255u));
                                }
                                else
                                {
                                    _2344 = int((_2315.z > 0.0f) ? ((_2314 >> 8u) & 255u) : (_2314 & 255u));
                                }
                                _2352 = _2344;
                            }
                            _2357 = (_2352 < 80) ? _2352 : (-1);
                        }
                        float3 _2367 = (_404 - ((-_2144) * _51_m11[_2357].x)) + (_673 * (_51_m11[_2357].y * 5.0f));
                        float4 _2374 = mul(_51_m10[_2357], float4(_2367, 1.0f));
                        float _2375 = _2374.w;
                        float3 _2378 = _2374.xyz / _2375.xxx;
                        float2 _2379 = _2378.xy;
                        float3 _2387 = _2378.xyz;
                        bool3 _2388 = bool3(_2387.x <= 0.0f.xxx.x, _2387.y <= 0.0f.xxx.y, _2387.z <= 0.0f.xxx.z);
                        bool3 _2389 = bool3(_2387.x >= 1.0f.xxx.x, _2387.y >= 1.0f.xxx.y, _2387.z >= 1.0f.xxx.z);
                        float _2392 = _2378.z;
                        float2 _2403 = ((_2379 * (_51_m12[_2357].zw - _51_m12[_2357].xy)) + _51_m12[_2357].xy).xy * _51_m13.zw;
                        float2 _2405 = floor(_2403 + 0.5f.xx);
                        float2 _2406 = _2403 - _2405;
                        float _2407 = _2406.x;
                        float _2408 = _2407 + 0.5f;
                        float _2409 = _2408 * _2408;
                        float _2412 = 1.0f - _2407;
                        float _2413 = min(_2407, 0.0f);
                        float _2416 = _2407 + 1.0f;
                        float _2417 = max(_2407, 0.0f);
                        float _2428 = _2406.y;
                        float _2429 = _2428 + 0.5f;
                        float _2430 = _2429 * _2429;
                        float _2433 = 1.0f - _2428;
                        float _2434 = min(_2428, 0.0f);
                        float _2437 = _2428 + 1.0f;
                        float _2438 = max(_2428, 0.0f);
                        float3 _2450 = float3(0.1599999964237213134765625f * _2412, 0.1599999964237213134765625f * ((_2416 - (_2417 * _2417)) + 1.0f), _2409 * 0.07999999821186065673828125f);
                        float3 _2451 = float3(0.1599999964237213134765625f * ((_2409 * 0.5f) - _2407), 0.1599999964237213134765625f * ((_2412 - (_2413 * _2413)) + 1.0f), 0.1599999964237213134765625f * _2416) + _2450;
                        float3 _2453 = float3(0.1599999964237213134765625f * _2433, 0.1599999964237213134765625f * ((_2437 - (_2438 * _2438)) + 1.0f), _2430 * 0.07999999821186065673828125f);
                        float3 _2454 = float3(0.1599999964237213134765625f * ((_2430 * 0.5f) - _2428), 0.1599999964237213134765625f * ((_2433 - (_2434 * _2434)) + 1.0f), 0.1599999964237213134765625f * _2437) + _2453;
                        float3 _2460 = ((_2450 / _2451) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                        float3 _2462 = ((_2453 / _2454) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                        float2 _2464 = _2405 * _51_m13.xy;
                        float _2465 = _2460.x;
                        float _2466 = _2462.x;
                        float _2469 = _2460.y;
                        float _2472 = _2460.z;
                        float _2475 = _2462.y;
                        float _2482 = _2462.z;
                        float _2489 = _2451.x;
                        float _2490 = _2454.x;
                        float _2492 = _2451.y;
                        float _2494 = _2451.z;
                        float _2496 = _2454.y;
                        float _2500 = _2454.z;
                        float _2558 = (((((((_2489 * _2490) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2465, _2466), _359).xy, _2392)) + ((_2492 * _2490) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2469, _2466), _359).xy, _2392))) + ((_2494 * _2490) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2472, _2466), _359).xy, _2392))) + ((_2489 * _2496) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2465, _2475), _359).xy, _2392))) + ((_2492 * _2496) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2469, _2475), _359).xy, _2392))) + ((_2494 * _2496) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2472, _2475), _359).xy, _2392))) + ((_2489 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2465, _2482), _359).xy, _2392));
                        float2 _2579 = min(_2379, 1.0f.xx - _2379);
                        _2593 = (_2357 >= 0) ? lerp(1.0f, (any(bool3(_2388.x || _2389.x, _2388.y || _2389.y, _2388.z || _2389.z)) || ((asuint(_2392) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2558 + ((_2492 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2469, _2482), _359).xy, _2392))) + ((_2494 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2464 + float2(_2472, _2482), _359).xy, _2392))), _2157 ? min(_51_m11[_2357].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2357].z - _2375) * 0.25f, min(_2579.x, _2579.y)))) : _51_m11[_2357].w) : 1.0f;
                    }
                    else
                    {
                        _2593 = 1.0f;
                    }
                    _2594 = _2593;
                    break;
                } while(false);
                _3241 = _1970 * _2594;
                _3242 = 0.0f.xxx;
            }
            _1992 = _3241;
            _1995 = _1994 + _3242;
        }
        _1967 = _1966 + _1994;
    }
    float _3267 = _404.y * _18_m46.w;
    float _3272 = max(0.00999999977648258209228515625f, _3267 + _18_m47.w);
    float3 _3286 = exp(_18_m45.xyz * ((-max(0.0f, (_446 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3272)) / _3272) * exp(_3267 + _18_m48.w))));
    float _3289 = dot(_751, _18_m44.xyz);
    float _3295 = _18_m45.w * _18_m45.w;
    float _3299 = (1.0f + _3295) - ((2.0f * _18_m45.w) * _3289);
    float3 _3629;
    float _3630;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3457 = (uint3(int3(int(_853.x), int(_853.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3458 = _3457.y;
        uint _3459 = _3457.z;
        uint _3462 = _3457.x + (_3458 * _3459);
        uint _3464 = _3458 + (_3459 * _3462);
        uint _3466 = _3459 + (_3462 * _3464);
        uint _3468 = _3462 + (_3464 * _3466);
        float _3490 = dot(_751, -_16_m0[2].xyz);
        float3 _3500 = _404 - _16_m11.xyz;
        float _3502 = (_18_m55.w * ((_3490 > 5.9604644775390625e-08f) ? (1.0f / _3490) : 0.0f)) * (1.0f / _446);
        float _3503 = _3500.y;
        float _3504 = _3502 * _3503;
        float _3506 = _16_m11.y + _3504;
        float _3507 = _3503 - _3504;
        float _3509 = (1.0f - _3502) * _446;
        float _3523 = max(-127.0f, _18_m49.z * _3507);
        float _3547 = max(-127.0f, _18_m52.x * _3507);
        float _3558 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3506 - _18_m49.x)))) * ((abs(_3523) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3523)) / _3523) : (0.693147182464599609375f - (0.2402265071868896484375f * _3523)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3506 - _18_m52.z)))) * ((abs(_3547) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3547)) / _3547) : (0.693147182464599609375f - (0.2402265071868896484375f * _3547))));
        float _3580 = clamp((_446 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3583 = clamp((max(clamp(exp2(-(_3558 * _3509)), 0.0f, 1.0f), _18_m51.w) + clamp((_446 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3580, 0.0f, 1.0f);
        float4 _3623 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_24, float3((_1941 + ((((float3(uint3(_3468, _3464 + (_3466 * _3468), _364) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_854 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_854 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3629 = _3623.xyz + (((_18_m51.xyz * (1.0f - _3583)) + (((_18_m54.xyz * pow(clamp(dot(_445, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3558 * max(_3509 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3580))) * _3623.w);
        _3630 = _3623.w * _3583;
    }
    else
    {
        float3 _3329 = _404 - _16_m11.xyz;
        float _3331 = _3329.y;
        float _3345 = max(-127.0f, _18_m49.z * _3331);
        float _3369 = max(-127.0f, _18_m52.x * _3331);
        float _3380 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3345) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3345)) / _3345) : (0.693147182464599609375f - (0.2402265071868896484375f * _3345)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3369) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3369)) / _3369) : (0.693147182464599609375f - (0.2402265071868896484375f * _3369))));
        float _3402 = clamp((_446 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3405 = clamp((max(clamp(exp2(-(_3380 * _446)), 0.0f, 1.0f), _18_m51.w) + clamp((_446 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3402, 0.0f, 1.0f);
        _3629 = (_18_m51.xyz * (1.0f - _3405)) + (((_18_m54.xyz * pow(clamp(dot(_445, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3380 * max(_446 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3402));
        _3630 = _3405;
    }
    float3 _3638 = (((((((lerp(dot((_1304 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, (_1304 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), _1310) * _18_m76.xyz) * _37_m11) + ((_1304 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) * _1318)) + ((_721 * (FOG_MODIFICATION > 0.5f ? 0.4f : 1.0f)) * (1.0f - _37_m64))) + (_1940.xyz + ((_1966 * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f)) * _1969)).xyz).xyz * (FOG_MODIFICATION > 0.5f ? (0.5f + 0.5f * (_3286 * _3630)) : (_3286 * _3630))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3289 * _3289)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3295) / max((12.56637096405029296875f * _3299) * sqrt(_3299), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3286)) * _3630 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f)) + (_3629 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f))) * (1.0f - _37_m1))).xyz;
    float3 _3642 = lerp((_766.xyz * lerp(1.0f.xxx, _37_m82.xyz * _37_m80, _768)).xyz, (_3638 * _720).xyz, _768);
    float4 _3643 = float4(_3642.x, _3642.y, _3642.z, _360.w);
    _3643.w = 1.0f;
    float3 _3652 = ((lerp(dot(_3643.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3643.xyz, _1310) * _18_m76.xyz) * _37_m11) + (_3643.xyz * _1318);
    float2 _3661 = min(_820, 1.0f.xx);
    float4 _3662 = float4(_3661.x, _3661.y, _360.z, _360.w);
    _3662.z = float(clamp(max(dot(_3652.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 1.0f) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3662.w = (_37_m2 * _37_m0) * float(clamp(max(dot(_721, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _720, _720) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3652.x, _3652.y, _3652.z);
    if (FOG_MODIFICATION > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3643.w);
    _14 = _3662;
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

#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x05D2E036, migrated from 1.4.4 shader 0xCFDFB9C3.
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

static float _356 = (float)0;
static float4 _357 = (float4)0;
static float3 _358 = (float3)0;
static uint _361 = (uint)0;

static const float4 _335[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _336[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _337[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _35_36 : register(b0)
{
    float _36_m0 : packoffset(c0);
    float _36_m1 : packoffset(c0.y);
    float _36_m2 : packoffset(c0.z);
    float _36_m3 : packoffset(c0.w);
    float _36_m4 : packoffset(c1);
    float _36_m5 : packoffset(c1.y);
    float _36_m6 : packoffset(c1.z);
    float _36_m7 : packoffset(c1.w);
    float _36_m8 : packoffset(c2);
    float _36_m9 : packoffset(c2.y);
    float _36_m10 : packoffset(c2.z);
    float _36_m11 : packoffset(c2.w);
    float _36_m12 : packoffset(c3);
    float _36_m13 : packoffset(c3.y);
    float _36_m14 : packoffset(c3.z);
    float _36_m15 : packoffset(c3.w);
    float4 _36_m16 : packoffset(c4);
    float _36_m17 : packoffset(c5);
    float _36_m18 : packoffset(c5.y);
    float _36_m19 : packoffset(c5.z);
    float _36_m20 : packoffset(c5.w);
    float4 _36_m21 : packoffset(c6);
    float4 _36_m22 : packoffset(c7);
    float4 _36_m23 : packoffset(c8);
    float4 _36_m24 : packoffset(c9);
    float4 _36_m25 : packoffset(c10);
    float _36_m26 : packoffset(c11);
    float _36_m27 : packoffset(c11.y);
    float _36_m28 : packoffset(c11.z);
    float _36_m29 : packoffset(c11.w);
    float _36_m30 : packoffset(c12);
    float _36_m31 : packoffset(c12.y);
    float _36_m32 : packoffset(c12.z);
    float _36_m33 : packoffset(c12.w);
    float _36_m34 : packoffset(c13);
    float _36_m35 : packoffset(c13.y);
    float _36_m36 : packoffset(c13.z);
    float _36_m37 : packoffset(c13.w);
    float _36_m38 : packoffset(c14);
    float _36_m39 : packoffset(c14.y);
    float _36_m40 : packoffset(c14.z);
    float _36_m41 : packoffset(c14.w);
    float _36_m42 : packoffset(c15);
    float _36_m43 : packoffset(c15.y);
    float _36_m44 : packoffset(c15.z);
    float _36_m45 : packoffset(c15.w);
    float4 _36_m46 : packoffset(c16);
    float4 _36_m47 : packoffset(c17);
    float4 _36_m48 : packoffset(c18);
    float4 _36_m49 : packoffset(c19);
    float4 _36_m50 : packoffset(c20);
    float _36_m51 : packoffset(c21);
    float _36_m52 : packoffset(c21.y);
    float _36_m53 : packoffset(c21.z);
    float _36_m54 : packoffset(c21.w);
    float _36_m55 : packoffset(c22);
    float _36_m56 : packoffset(c22.y);
    float _36_m57 : packoffset(c22.z);
    float _36_m58 : packoffset(c22.w);
    float _36_m59 : packoffset(c23);
    float _36_m60 : packoffset(c23.y);
    float _36_m61 : packoffset(c23.z);
    float _36_m62 : packoffset(c23.w);
    float _36_m63 : packoffset(c24);
    float _36_m64 : packoffset(c24.y);
    float _36_m65 : packoffset(c24.z);
    float _36_m66 : packoffset(c24.w);
    float _36_m67 : packoffset(c25);
    float _36_m68 : packoffset(c25.y);
    float _36_m69 : packoffset(c25.z);
    float _36_m70 : packoffset(c25.w);
    float _36_m71 : packoffset(c26);
    float _36_m72 : packoffset(c26.y);
    float _36_m73 : packoffset(c26.z);
    float _36_m74 : packoffset(c26.w);
    float _36_m75 : packoffset(c27);
    float4 _36_m76 : packoffset(c28);
    float4 _36_m77 : packoffset(c29);
};

[[vk::binding(47, 0)]]
cbuffer _45_46 : register(b47)
{
    int _46_m0 : packoffset(c0);
    int _46_m1 : packoffset(c0.y);
    int _46_m2 : packoffset(c0.z);
    int _46_m3 : packoffset(c0.w);
    float _46_m4 : packoffset(c1);
    float _46_m5 : packoffset(c1.y);
    float _46_m6 : packoffset(c1.z);
    float _46_m7 : packoffset(c1.w);
    float _46_m8 : packoffset(c2);
    float _46_m9 : packoffset(c2.y);
    float _46_m10 : packoffset(c2.z);
    float _46_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _47_48 : register(b14)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    float4 _48_m4 : packoffset(c4);
    uint4 _48_m5 : packoffset(c5);
    float4 _48_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _49_50 : register(b15)
{
    column_major float4x4 _50_m0[5] : packoffset(c0);
    float4 _50_m1[4] : packoffset(c20);
    float4 _50_m2[4] : packoffset(c24);
    float4 _50_m3[4] : packoffset(c28);
    float4 _50_m4 : packoffset(c32);
    float4 _50_m5 : packoffset(c33);
    float4 _50_m6 : packoffset(c34);
    float4 _50_m7 : packoffset(c35);
    float4 _50_m8 : packoffset(c36);
    float4 _50_m9[27] : packoffset(c37);
    column_major float4x4 _50_m10[56] : packoffset(c64);
    float4 _50_m11[56] : packoffset(c288);
    float4 _50_m12[56] : packoffset(c344);
    float4 _50_m13 : packoffset(c400);
    float4 _50_m14[47] : packoffset(c401);
    column_major float4x4 _50_m15[15] : packoffset(c448);
    float4 _50_m16[15] : packoffset(c508);
    float4 _50_m17[15] : packoffset(c523);
    float4 _50_m18[15] : packoffset(c538);
    float4 _50_m19 : packoffset(c553);
    float4 _50_m20 : packoffset(c554);
    float4 _50_m21[21] : packoffset(c555);
    column_major float4x4 _50_m22 : packoffset(c576);
    column_major float4x4 _50_m23 : packoffset(c580);
    float4 _50_m24 : packoffset(c584);
    float4 _50_m25 : packoffset(c585);
    float4 _50_m26 : packoffset(c586);
    float4 _50_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _59_60 : register(b49)
{
    float4 _60_m0[32] : packoffset(c0);
    column_major float4x4 _60_m1[32] : packoffset(c32);
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
[[vk::binding(35, 0)]] Texture3D<float4> _38 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _39 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _40 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _41 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _42 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _43 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _44 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _51 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _52 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _53 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _54 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _55 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _57 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _58 : register(t28);

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
    float2 _388 = gl_FragCoord.xy * _18_m0.zw;
    uint2 _389 = uint2(gl_FragCoord.xy);
    float2 _391 = (_388 * 2.0f) - 1.0f.xx;
    float4 _394 = float4(_391, gl_FragCoord.z, 1.0f);
    _394.y = -_391.y;
    float4 _397 = mul(_16_m6, _394);
    float3 _401 = _397.xyz / _397.w.xxx;
    float4 _405 = float4(_401, 1.0f);
    float _408 = abs(mul(_16_m0, _405).z);
    float _412 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _417 = float4(_7.xyz, _412).xyz;
    float3 _438;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _438 = _16_m11.xyz - _401;
            break;
        }
        else
        {
            _438 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _439 = dot(_438, _438);
    float _441 = rsqrt(max(_439, 9.9999999392252902907785028219223e-09f));
    float3 _442 = _438 * _441;
    float _443 = _439 * _441;
    float2 _503 = ((mul(((((_4.xy * _36_m23.x) + ((((_4.zw * _36_m4) - (_5.xy * _36_m4)) + _5.xy) * _36_m23.y)) + (_36_m21.xy * _18_m75.w)) + (_36_m21.zw * (_5 * _36_m4).x)) - 0.5f.xx, float2x2(float2(_36_m22.xy), float2(_36_m22.zw))) + 0.5f.xx) * _36_m24.xy) + _36_m24.zw;
    float _511 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
    float _514 = lerp(0.0f, _511, _36_m70);
    _503.y = _503.y * (1.0f + min(_514, 0.5f));
    float4 _529 = _31.SampleBias(_32, _503 + _514.xx, _18_m16);
    float4 _534 = ((_36_m16 * lerp(_8, 1.0f.xxxx, _36_m5.xxxx)) * float4(_36_m6, _36_m6, _36_m6, _36_m7)) * lerp(_529, float4(1.0f, 1.0f, 1.0f, _529.x), _36_m18.xxxx);
    float2 _543 = ((float2(_389) * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _546 = float4(_543, _28.SampleLevel(_23, _388, 0.0f).x, 1.0f);
    _546.y = -_543.y;
    float4 _549 = mul(_16_m6, _546);
    float _607 = fmod(floor((_18_m75.w + lerp(0.0f, _511, _36_m43)) * _36_m40), _36_m47.y * _36_m47.x);
    float _610 = _36_m47.y - floor(_607 / _36_m47.x);
    float _613 = 1.0f / _36_m47.x;
    float _614 = 1.0f / _36_m47.y;
    float4 _617 = float4(_613, _614, (_607 - (_610 * _36_m47.x)) * _613, _610 * _614);
    float2 _621 = (_4.xy * _617.xy) + _617.zw;
    float4 _624 = _34.SampleBias(_25, _621, _18_m16);
    float4 _627 = clamp(_624 - _36_m45.xxxx, 0.0f.xxxx, 1.0f.xxxx);
    float _631 = _627.w;
    float _635 = _631 * _36_m41;
    float4 _639 = _33.SampleBias(_25, _621, _18_m16);
    _639.w = _639.w * _639.x;
    float2 _646 = (_639.wy * 2.0f) - 1.0f.xx;
    float3 _647 = float3(_646.x, _646.y, _358.z);
    float2 _648 = _646.xy;
    _647.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_648, _648), 0.0f, 1.0f)));
    float2 _656 = _647.xy * _36_m38;
    float3 _658 = mul(float3(_656.x, _656.y, _647.z), float3x3(_417 * 1.0f, (cross(_6, _417) * _412) * 1.0f, _6 * 1.0f));
    float3 _662 = _658 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_658, _658)));
    bool3 _668 = (gl_FrontFacing ? true : false).xxx;
    float3 _669 = -_662;
    float3 _670 = float3(_668.x ? _662.x : _669.x, _668.y ? _662.y : _669.y, _668.z ? _662.z : _669.z);
    float _705 = ((((clamp(((_534.w * ((_36_m26 != 0.0f) ? (clamp((_408 - _36_m27) / (_36_m28 - _36_m27), 0.0f, 1.0f) * clamp((_408 - _36_m29) / (_36_m30 - _36_m29), 0.0f, 1.0f)) : 1.0f)) * _635) - _36_m44, 0.0f, 1.0f) * _36_m41) * clamp(((abs(mul(_16_m0, float4(_549.xyz / _549.w.xxx, 1.0f)).z) - _408) + _36_m35) / _36_m34, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _36_m68)) * lerp(1.0f, pow(abs(dot(_6, _442)), _36_m61), _36_m63)) * (1.0f - _21_m0[_11]._m1.y);
    float _717 = clamp(_705, 0.0f, 1.0f);
    float3 _718 = clamp(((_534.xyz + ((_627.xyz * _36_m46.xyz) * _631)).xyz * ((1.0f - _36_m12) + (_18_m20.y * _36_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _721 = _718 * _36_m64;
    float _734 = (_36_m53 * (_635 * lerp(1.0f, _8.x, _36_m68))) * _721.x;
    float2 _785;
    if (clamp((_36_m3 + 1.0f) - _36_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _771 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
        _771.y = -_771.y;
        _785 = ((sqrt(sqrt(abs(_771 * 0.5f))) * float2(int2(sign(_771)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _785 = 0.0f.xx;
    }
    float3 _787 = (0.07999999821186065673828125f * _36_m67).xxx;
    uint2 _818;
    float _819;
    if (_18_m24.y == 1.0f)
    {
        float4 _795 = mul(_18_m135, _405);
        float4 _798 = _795;
        _798.y = -_795.y;
        float4 _801 = _798 * (1.0f / _795.w);
        _818 = uint2(clamp(((_801.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _819 = 1.0f / ((_18_m2.z * _801.z) + _18_m2.w);
    }
    else
    {
        _818 = _389;
        _819 = _408;
    }
    float3 _821 = _401 + (_670 * 0.25f);
    float3 _831 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _840 = _821 - (_18_m105.xyz + (_831 * (-_18_m107.w)));
    float _854 = max(clamp((max(abs(_840.x), abs(_840.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_840.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1156;
    float4 _1157;
    float4 _1158;
    float _1159;
    float _1160;
    if ((_18_m105.w != 0.0f) && (_854 < 1.0f))
    {
        float3 _867 = _821 - (_18_m105.xyz + (_831 * (-_18_m107.y)));
        float _881 = max(clamp((max(abs(_867.x), abs(_867.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_867.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _957;
        float4 _958;
        float4 _959;
        float4 _960;
        if (_881 < 1.0f)
        {
            float3 _890 = ((_821 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _892 = _890 - floor(_890);
            float4 _896 = _39.SampleLevel(_25, _892, 0.0f);
            float _897 = 1.0f - _881;
            float _901 = _18_m106.y * 0.5f;
            float _906 = _892.x;
            float _907 = clamp(_892.y, _901, 1.0f - _901) * 0.3333333432674407958984375f;
            float _908 = _892.z;
            float4 _911 = _40.SampleLevel(_24, float3(_906, _907, _908), 0.0f);
            float _927 = _896.x;
            float _937 = _896.y;
            float _947 = _896.z;
            _957 = _854 + (_911.w * _897);
            _958 = float4(((_40.SampleLevel(_24, float3(_906, _907 + 0.666666686534881591796875f, _908), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _947, _947) * _897;
            _959 = float4(((_40.SampleLevel(_24, float3(_906, _907 + 0.3333333432674407958984375f, _908), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _937, _937) * _897;
            _960 = float4(((_911.xyz * 4.0f) - 2.0f.xxx) * _927, _927) * _897;
        }
        else
        {
            _957 = _854;
            _958 = 0.0f.xxxx;
            _959 = 0.0f.xxxx;
            _960 = 0.0f.xxxx;
        }
        float3 _966 = _821 - (_18_m105.xyz + (_831 * (-_18_m107.z)));
        float _980 = max(clamp((max(abs(_966.x), abs(_966.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_966.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1060;
        float4 _1061;
        float4 _1062;
        float4 _1063;
        if (_980 < 1.0f)
        {
            float3 _989 = ((_821 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _991 = _989 - floor(_989);
            float4 _995 = _41.SampleLevel(_25, _991, 0.0f);
            float _997 = _881 * (1.0f - _980);
            float _1001 = _18_m106.y * 0.5f;
            float _1006 = _991.x;
            float _1007 = clamp(_991.y, _1001, 1.0f - _1001) * 0.3333333432674407958984375f;
            float _1008 = _991.z;
            float4 _1011 = _42.SampleLevel(_24, float3(_1006, _1007, _1008), 0.0f);
            float _1027 = _995.x;
            float _1038 = _995.y;
            float _1049 = _995.z;
            _1060 = _957 + (_1011.w * _997);
            _1061 = _958 + (float4(((_42.SampleLevel(_24, float3(_1006, _1007 + 0.666666686534881591796875f, _1008), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1049, _1049) * _997);
            _1062 = _959 + (float4(((_42.SampleLevel(_24, float3(_1006, _1007 + 0.3333333432674407958984375f, _1008), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1038, _1038) * _997);
            _1063 = _960 + (float4(((_1011.xyz * 4.0f) - 2.0f.xxx) * _1027, _1027) * _997);
        }
        else
        {
            _1060 = _957;
            _1061 = _958;
            _1062 = _959;
            _1063 = _960;
        }
        float4 _1146;
        float4 _1147;
        float4 _1148;
        float _1149;
        if (_980 > 0.0f)
        {
            float3 _1072 = ((_821 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1075 = _18_m106.xyz * 0.5f;
            float3 _1077 = clamp(_1072 - floor(_1072), _1075, 1.0f.xxx - _1075);
            float4 _1081 = _43.SampleLevel(_25, _1077, 0.0f);
            float _1083 = _980 * (1.0f - _854);
            float _1087 = _18_m106.y * 0.5f;
            float _1092 = _1077.x;
            float _1093 = clamp(_1077.y, _1087, 1.0f - _1087) * 0.3333333432674407958984375f;
            float _1094 = _1077.z;
            float4 _1097 = _44.SampleLevel(_24, float3(_1092, _1093, _1094), 0.0f);
            float _1113 = _1081.x;
            float _1124 = _1081.y;
            float _1135 = _1081.z;
            _1146 = _1061 + (float4(((_44.SampleLevel(_24, float3(_1092, _1093 + 0.666666686534881591796875f, _1094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1135, _1135) * _1083);
            _1147 = _1062 + (float4(((_44.SampleLevel(_24, float3(_1092, _1093 + 0.3333333432674407958984375f, _1094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1124, _1124) * _1083);
            _1148 = _1063 + (float4(((_1097.xyz * 4.0f) - 2.0f.xxx) * _1113, _1113) * _1083);
            _1149 = _1060 + (_1097.w * _1083);
        }
        else
        {
            _1146 = _1061;
            _1147 = _1062;
            _1148 = _1063;
            _1149 = _1060;
        }
        float _1152 = clamp((_1149 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1156 = _1146;
        _1157 = _1147;
        _1158 = _1148;
        _1159 = _1152 - _854;
        _1160 = (_1152 + _854) * 0.5f;
    }
    else
    {
        _1156 = 0.0f.xxxx;
        _1157 = 0.0f.xxxx;
        _1158 = 0.0f.xxxx;
        _1159 = 0.0f;
        _1160 = 1.0f;
    }
    float4 _1180 = _1158 + float4(_18_m108.x * _1160, (_18_m108.y * _1160) + ((_18_m108.w * _1159) * 0.5f), _18_m108.z * _1160, (_18_m108.w * _1160) + ((_18_m108.y * _1159) * 0.375f));
    float4 _1200 = _1157 + float4(_18_m109.x * _1160, (_18_m109.y * _1160) + ((_18_m109.w * _1159) * 0.5f), _18_m109.z * _1160, (_18_m109.w * _1160) + ((_18_m109.y * _1159) * 0.375f));
    float4 _1220 = _1156 + float4(_18_m110.x * _1160, (_18_m110.y * _1160) + ((_18_m110.w * _1159) * 0.5f), _18_m110.z * _1160, (_18_m110.w * _1160) + ((_18_m110.y * _1159) * 0.375f));
    float3 _1248 = lerp(1.0f.xxx, clamp(abs((frac(float3(_36_m51, _36_m52, _734).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _36_m52.xxx) * _734;
    float3 _1255 = ((float3(max(0.0f, dot(_1180.xyz, _670) + _1180.w), max(0.0f, dot(_1200.xyz, _670) + _1200.w), max(0.0f, dot(_1220.xyz, _670) + _1220.w)) * (_721 + (_1248 * _36_m54))) * 1.0f) * _18_m22.x;
    float3 _1264 = (((_1255.x + _1255.y) + _1255.z) * 0.3333333432674407958984375f).xxx;
    float3 _1269 = (_1264 + ((_1255 - _1264) * _36_m62)) + ((-0.0f).xxx * _36_m62);
    float3 _1275 = _18_m76.w.xxx;
    float _1283 = 1.0f - _36_m11;
    float3 _1286 = _401 + (_670 * 0.5f);
    float2 _1736;
    do
    {
        if (_50_m7.w >= 0.9900000095367431640625f)
        {
            _1736 = float2(_50_m7.z, 1.0f);
            break;
        }
        int _1299 = int(_50_m7.x);
        bool3 _1301 = (_1299 == 2).xxx;
        float3 _1309 = _1286 - float3(_1301.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1301.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1301.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
        float _1320 = max(clamp((_50_m6.w - dot(_1309, _1309)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
        float _1477;
        bool _1478;
        if (_1320 > 0.0f)
        {
            float _1475;
            bool _1476;
            if (_1299 > 0)
            {
                float3 _1327 = _1286 - _50_m1[0].xyz;
                float3 _1331 = _1286 - _50_m1[1].xyz;
                float3 _1335 = _1286 - _50_m1[2].xyz;
                float3 _1339 = _1286 - _50_m1[3].xyz;
                float4 _1344 = float4(dot(_1327, _1327), dot(_1331, _1331), dot(_1335, _1335), dot(_1339, _1339));
                float4 _1353 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
                float4 _1355 = float4(bool4(_1344.x < _1353.x, _1344.y < _1353.y, _1344.z < _1353.z, _1344.w < _1353.w));
                float3 _1359 = clamp(_1355.yzw - _1355.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1363 = clamp(4.0f - dot(float4(_1355.x, _1359.x, _1359.y, _1359.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1365 = clamp(_1363 + 1.0f, 0.0f, 3.0f);
                uint _1366 = uint(_1363);
                uint _1374 = uint(_1365);
                float _1380 = dot(_1344, _335[_1374]) / _50_m1[_1374].w;
                float _1398;
                if (((_1365 > _1363) && (_1380 >= 0.0f)) && (_1380 <= 1.0f))
                {
                    _1398 = _1363 + step(frac(52.98291778564453125f * frac(dot(float2(_818) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1344, _335[_1366]) / _50_m1[_1366].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1398 = _1363;
                }
                float _1399 = clamp(_1398, 0.0f, 4.0f);
                float4 _1407 = mul(_50_m0[uint(_1399)], float4(_1286, 1.0f));
                float _1410 = _1407.z;
                float4 _1411 = float4(_1407.xy, _1410, _1399);
                float3 _1412 = _1411.xyz;
                bool3 _1413 = bool3(_1412.x <= 0.0f.xxx.x, _1412.y <= 0.0f.xxx.y, _1412.z <= 0.0f.xxx.z);
                bool3 _1414 = bool3(_1412.x >= 1.0f.xxx.x, _1412.y >= 1.0f.xxx.y, _1412.z >= 1.0f.xxx.z);
                bool _1420 = any(bool3(_1413.x || _1414.x, _1413.y || _1414.y, _1413.z || _1414.z)) || ((asuint(_1410) & 2147483647u) > 2139095040u);
                int _1421 = int(_1399);
                float2 _1436 = float4(_50_m3[_1421].xy + (_1411.xy * _50_m3[_1421].zw), _1410, _1399).xy;
                _1475 = _1420 ? 1.0f : (0.25f * (((_51.SampleCmpLevelZero(_26, float3(_1436 + (_50_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _356).xy, _1410) + _51.SampleCmpLevelZero(_26, float3(_1436 + (_50_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _356).xy, _1410)) + _51.SampleCmpLevelZero(_26, float3(_1436 + (_50_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _356).xy, _1410)) + _51.SampleCmpLevelZero(_26, float3(_1436 + (_50_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _356).xy, _1410)));
                _1476 = _1420;
            }
            else
            {
                _1475 = 1.0f;
                _1476 = false;
            }
            _1477 = _1475;
            _1478 = _1476;
        }
        else
        {
            _1477 = 1.0f;
            _1478 = false;
        }
        float _1678;
        float _1679;
        if ((_1320 < 1.0f) || (_50_m8.x > 0.5f))
        {
            float _1489 = 1.0f - clamp(dot(_670, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1506 = float4((_1286 - (_48_m0.xyz * (_1489 * _50_m24.x))) + (_670 * (_1489 * _50_m24.y)), 1.0f);
            float4 _1507 = mul(_50_m23, _1506);
            float _1676;
            if (all(bool2(_1507.xy.x > 0.0f.xx.x, _1507.xy.y > 0.0f.xx.y)) && all(bool2(_1507.xy.x < 1.0f.xx.x, _1507.xy.y < 1.0f.xx.y)))
            {
                uint _1527 = clamp(uint((floor(_1507.y * _50_m25.z) + _1507.x) * _50_m25.y), 0u, 127u);
                uint _1531 = asuint(_50_m27[_1527].x);
                float2 _1532 = spvUnpackHalf2x16(_1531);
                float _1533 = _1532.x;
                float _1675;
                if (_1533 >= 0.0f)
                {
                    float4x4 _1542 = _50_m22;
                    _1542[0].w = _50_m27[_1527].y;
                    _1542[1].w = _50_m27[_1527].z;
                    _1542[2].w = _50_m27[_1527].w;
                    float4 _1549 = mul(_1542, _1506);
                    float _1674;
                    if (all(bool3(_1549.xyz.x > 0.0f.xxx.x, _1549.xyz.y > 0.0f.xxx.y, _1549.xyz.z > 0.0f.xxx.z)) && all(bool3(_1549.xyz.x < 1.0f.xxx.x, _1549.xyz.y < 1.0f.xxx.y, _1549.xyz.z < 1.0f.xxx.z)))
                    {
                        float2 _1573 = float4((_1549.xy * _50_m24.zw) + float2(_1533, spvUnpackHalf2x16(_1531 >> 16u).x), _1549.z, 1.0f).xy * _50_m26.zw;
                        float2 _1575 = floor(_1573 + 0.5f.xx);
                        float2 _1576 = _1573 - _1575;
                        float _1577 = _1576.x;
                        float _1578 = _1577 + 0.5f;
                        float _1580 = (_1578 * _1578) * 0.5f;
                        float _1583 = min(_1577, 0.0f);
                        float _1587 = max(_1577, 0.0f);
                        float4 _1591 = float4(_1580 - _1577, (1.0f - _1577) - (_1583 * _1583), (_1577 + 1.0f) - (_1587 * _1587), _1580) * 0.44444000720977783203125f;
                        float _1592 = _1576.y;
                        float _1593 = _1592 + 0.5f;
                        float _1595 = (_1593 * _1593) * 0.5f;
                        float _1598 = min(_1592, 0.0f);
                        float _1602 = max(_1592, 0.0f);
                        float4 _1606 = float4(_1595 - _1592, (1.0f - _1592) - (_1598 * _1598), (_1592 + 1.0f) - (_1602 * _1602), _1595) * 0.44444000720977783203125f;
                        float2 _1608 = _1591.yw;
                        float2 _1609 = _1591.xz + _1608;
                        float2 _1611 = _1606.yw;
                        float2 _1612 = _1606.xz + _1611;
                        float2 _1618 = ((_1608 / _1609) + float2(-1.5f, 0.5f)) * _50_m26.xx;
                        float2 _1620 = ((_1611 / _1612) + float2(-1.5f, 0.5f)) * _50_m26.yy;
                        float2 _1622 = _1575 * _50_m26.xy;
                        float _1623 = _1618.x;
                        float _1624 = _1620.x;
                        float _1627 = _1618.y;
                        float _1630 = _1620.y;
                        float _1635 = _1609.x;
                        float _1636 = _1612.x;
                        float _1638 = _1609.y;
                        float _1640 = _1612.y;
                        _1674 = ((((_1635 * _1636) * _54.SampleCmpLevelZero(_26, float3(_1622 + float2(_1623, _1624), _356).xy, _1549.z)) + ((_1638 * _1636) * _54.SampleCmpLevelZero(_26, float3(_1622 + float2(_1627, _1624), _356).xy, _1549.z))) + ((_1635 * _1640) * _54.SampleCmpLevelZero(_26, float3(_1622 + float2(_1623, _1630), _356).xy, _1549.z))) + ((_1638 * _1640) * _54.SampleCmpLevelZero(_26, float3(_1622 + float2(_1627, _1630), _356).xy, _1549.z));
                    }
                    else
                    {
                        _1674 = 1.0f;
                    }
                    _1675 = _1674;
                }
                else
                {
                    _1675 = 1.0f;
                }
                _1676 = _1675;
            }
            else
            {
                _1676 = 1.0f;
            }
            _1678 = _1478 ? _1676 : _1477;
            _1679 = _1676;
        }
        else
        {
            _1678 = _1477;
            _1679 = 1.0f;
        }
        float _1682 = lerp(lerp(_1679, _1678, _1320), min(_1679, _1678), _50_m8.x);
        float _1731;
        if (_1682 > 0.001000000047497451305389404296875f)
        {
            float3 _1689 = _1286 - _18_m65.xyz;
            float2 _1699 = (_1689 + (_18_m68.xyz * _1689.y)).xz * _18_m66.z;
            float2 _1706 = _18_m67.xy * _18_m75.w;
            _1731 = _1682 * lerp(1.0f, lerp(_53.SampleLevel(_25, _1699 + _1706, 0.0f), _53.SampleLevel(_25, (_1699 * _18_m67.w) + _1706, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1689.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1731 = _1682;
        }
        _1736 = float2(lerp(_1731, _50_m7.z, _50_m7.w), _1731);
        break;
    } while(false);
    float _1741 = lerp(1.0f, min(1.0f, _1736.x), _50_m6.x);
    float4 _1906;
    if (_1741 > 0.001000000047497451305389404296875f)
    {
        float3 _1752 = reflect(-_442, _670);
        float3 _1753 = -_48_m0.xyz;
        float _1758 = dot(_1753, _1752);
        float3 _1760 = _1752 - (_1753 * _1758);
        bool3 _1762 = (_1758 < _48_m4.z).xxx;
        float3 _1770 = normalize((_1753 * _48_m4.z) + ((_1760 * rsqrt(max(6.103515625e-05f, dot(_1760, _1760)))) * _48_m4.y));
        float3 _1771 = float3(_1762.x ? _1770.x : _1752.x, _1762.y ? _1770.y : _1752.y, _1762.z ? _1770.z : _1752.z);
        float3 _1775 = _1771 + _442;
        float3 _1779 = _1775 * rsqrt(max(6.103515625e-05f, dot(_1775, _1775)));
        float _1781 = clamp(dot(_1771, _670), 0.0f, 1.0f);
        float _1783 = clamp(dot(_670, _1779), 0.0f, 1.0f);
        float _1788 = clamp(dot(_670, _442), 0.0f, 1.0f);
        float _1789 = _36_m66 * _36_m66;
        float _1790 = _1789 * _1789;
        float _1811 = (((_1783 * _1790) - _1783) * _1783) + 1.0f;
        float _1814 = 1.0f - clamp(dot(_442, _1779), 0.0f, 1.0f);
        float _1815 = _1814 * _1814;
        float _1817 = (_1814 * _1815) * _1815;
        float _1841 = 1.0f - _36_m66;
        float _1848 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1841 * (1.04997003078460693359375f + (_1841 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1841))))));
        float _1849 = 1.0f - _1848;
        float3 _1852 = _787 + ((1.0f.xxx - _787) * 0.0476190485060214996337890625f);
        float _1863 = clamp(1.0f - _734, 0.0f, 1.0f);
        float _1871 = clamp((dot(_670, _1771) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1888 = clamp(clamp((min(((_787 * (1.0f - _1817)) + _1817.xxx) * ((_1790 / (_1811 * _1811)) * (0.5f / (((_1781 * sqrt(((((-_1788) * _1790) + _1788) * _1788) + _1790)) + (_1788 * sqrt(((((-_1781) * _1790) + _1781) * _1781) + _1790))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1852 * (((_57.SampleLevel(_24, (float2(_1788, _36_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_24, (float2(_1781, _36_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1848) / _1849)) * _1852) / (1.0f.xxx - (_1852 * _1849)))) * _48_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_717, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _36_m60;
        float3 _1893 = (((_1888 * _1781) + (_1248 * lerp(lerp(1.0f, (_1871 * sqrt(_1871)) * 1.66666662693023681640625f, _1863) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_442, _1771), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1863)))) + ((_721 * 1.0f) * _1781)) * _48_m1.xyz;
        float3 _1904 = lerp(_1893, _1893 * _55.SampleBias(_24, float2(_1741, 0.5f), _18_m16).xyz, (1.0f - _1741).xxx) * 1.0f;
        _1906 = float4(_1904.x, _1904.y, _1904.z, 0.0f.xxxx.w);
    }
    else
    {
        _1906 = 0.0f.xxxx;
    }
    float2 _1907 = float2(_818);
    float2 _1909 = floor(_1907 * 0.03125f);
    int _1917 = int((_1909.x + (_1909.y * _46_m5)) * 8.0f);
    float _1924 = floor(_819 - (_18_m3.y * _46_m11));
    float _1928 = clamp(_1924, 0.0f, _46_m7 - 1.0f);
    int _1930 = int(_1928 * 8.0f);
    float3 _1932;
    float _1935;
    _1932 = 0.0f.xxx;
    _1935 = 1.0f;
    float3 _1933;
    float _1936;
    [loop]
    for (int _1937 = 0; _1937 <= 7; _1932 = _1933, _1935 = _1936, _1937++)
    {
        uint _1955 = (_1924 <= _1928) ? (_30.Load(uint(_1917 + _1937) * 4 + 0) & _30.Load(uint((_18_m21.y + _1930) + _1937) * 4 + 0)) : 0u;
        uint _1956 = uint(_1937);
        float3 _1960;
        _1936 = _1935;
        _1960 = 0.0f.xxx;
        uint _1963;
        float _1958;
        float3 _1961;
        [loop]
        for (uint _1962 = _1955; _1962 != 0u; _1936 = _1958, _1960 = _1961, _1962 = _1963)
        {
            uint _1967 = firstbitlow(_1962);
            _1963 = _1962 ^ (1u << (_1967 & 31u));
            int _1973 = int((32u * _1956) + _1967) * 8;
            int _1976 = _1973 + 1;
            int _1979 = _1973 + 2;
            int _1982 = _1973 + 3;
            int _1985 = _1973 + 5;
            int _1988 = _1973 + 6;
            int _1991 = _1973 + 7;
            uint _1995 = uint(_48_m6[_1985].w);
            float _2070;
            if ((_1995 & 1u) == 1u)
            {
                uint _2001 = asuint(_48_m6[_1985].x);
                uint _2008 = asuint(_48_m6[_1985].y);
                uint _2015 = asuint(_48_m6[_1985].z);
                uint _2022 = asuint(_48_m6[_1988].x);
                uint _2029 = asuint(_48_m6[_1988].y);
                uint _2036 = asuint(_48_m6[_1988].z);
                float3 _2055 = abs(mul(float4(_401 - _48_m6[_1976].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2001).x, spvUnpackHalf2x16(_2015).x, spvUnpackHalf2x16(_2029).x, 0.0f), float4(spvUnpackHalf2x16(_2001 >> 16u).x, spvUnpackHalf2x16(_2015 >> 16u).x, spvUnpackHalf2x16(_2029 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2008).x, spvUnpackHalf2x16(_2022).x, spvUnpackHalf2x16(_2036).x, 0.0f), float4(spvUnpackHalf2x16(_2008 >> 16u).x, spvUnpackHalf2x16(_2022 >> 16u).x, spvUnpackHalf2x16(_2036 >> 16u).x, 0.0f))).xyz);
                float _2062 = _48_m6[_1991].x * 0.5f;
                float _2068 = 1.0f - clamp((max(max(_2055.x, _2055.y), _2055.z) - (_2062 + 0.5f)) / (0.5f - _2062), 0.0f, 1.0f);
                _2070 = _2068 * _2068;
            }
            else
            {
                _2070 = 1.0f;
            }
            bool _2074 = _48_m6[_1982].z > 0.5f;
            if ((false || (_2070 < 0.001000000047497451305389404296875f)) || _2074)
            {
                _1958 = _1936;
                _1961 = _1960;
                continue;
            }
            float _3208;
            float3 _3209;
            if (_48_m6[_1973].w < 1.5f)
            {
                float3 _2562 = float3(0.100000001490116119384765625f, _36_m66, 1.0f);
                float _2571 = (0.5f + (0.5f * _48_m6[_1979].y)) - abs(_48_m6[_1979].x);
                float _2572 = _48_m6[_1979].y - _2571;
                float _2579 = abs(max((1.0f - abs(_2571)) - abs(_2572), 0.00048828125f));
                float3 _2583 = normalize(float3(_2571, _2572, (_48_m6[_1979].x >= 0.0f) ? _2579 : (-_2579)));
                float3 _2584 = _48_m6[_1976].xyz - _401;
                float _2585 = dot(_2584, _2584);
                float _2586 = rsqrt(_2585);
                float3 _2587 = _2584 * _2586;
                float _2591 = clamp(_48_m6[_1991].y * _2586, 0.0f, 1.0f);
                int _2596 = int(_48_m6[_1991].w);
                float3 _2597 = _2583 * _48_m6[_1979].z;
                float3 _2598 = _2597 * 0.5f;
                float3 _2599 = _2584 - _2598;
                float3 _2600 = _2584 + _2598;
                bool _2603 = (uint(_48_m6[_1973].w) & 1u) == 0u;
                bool _2606 = _2603 || ((_1995 & 2u) != 0u);
                bool _2609 = (!_2603) && (_48_m6[_1979].z > 0.0f);
                float _2628;
                float _2629;
                if (_2609)
                {
                    float _2613 = length(_2599);
                    float _2614 = length(_2600);
                    _2628 = clamp(0.5f * ((dot(_670, _2599) / _2613) + (dot(_670, _2600) / _2614)), 0.0f, 1.0f);
                    _2629 = 1.0f / ((((_2613 * _2614) + dot(_2599, _2600)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2628 = clamp(dot(_670, _2587), 0.0f, 1.0f);
                    _2629 = 1.0f;
                }
                float _2651;
                if (_48_m6[_1988].w < 0.0f)
                {
                    float _2645 = _2585 * (_48_m6[_1976].w * _48_m6[_1976].w);
                    float _2648 = clamp(1.0f - (_2645 * _2645), 0.0f, 1.0f);
                    _2651 = lerp(1.0f / (_2585 + 1.0f), _2629, float(_2609)) * (_2648 * _2648);
                }
                else
                {
                    float3 _2634 = _2584 * _48_m6[_1976].w;
                    _2651 = _2629 * pow(1.0f - clamp(dot(_2634, _2634), 0.0f, 1.0f), _48_m6[_1988].w);
                }
                float _2657 = clamp((dot(_2587, -_2583) - _48_m6[_1979].z) * _48_m6[_1979].w, 0.0f, 1.0f);
                float _2661 = _2651 * lerp(1.0f, _2657 * _2657, float(_2603));
                float _2761;
                if ((!_2609) && (_2596 >= 0))
                {
                    uint _2667 = uint(_2596);
                    float2 _2754;
                    [branch]
                    if (_2603)
                    {
                        float4 _2744 = mul(_60_m1[_2667], _405);
                        _2754 = _60_m0[_2667].xy + (clamp(_2744.xy / _2744.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2667].zw);
                    }
                    else
                    {
                        float3 _2681 = mul(float4(-_2584, 0.0f), _60_m1[_2667]).xyz;
                        float3 _365 = _2681;
                        float3 _364 = _2681;
                        float3 _363 = abs(_2681);
                        uint _2690 = uint(int(_363.y > _363.x));
                        uint _2696 = (_363.z > _363[_2690]) ? 2u : _2690;
                        uint _2702 = (_2696 * 2u) + uint(_364[_2696] < 0.0f);
                        float _2706 = abs(_365[_2702 / 2u]);
                        float _2726 = 0.5f - (0.000244140625f / _60_m0[_2667].w);
                        _2754 = _60_m0[_2667].xy + (clamp(float2((float(_2702) + ((((_365[uint(_336[_2702].x)] * _337[_2702].x) / _2706) * _2726) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_365[uint(_336[_2702].y)] * _337[_2702].y) / _2706) * _2726)), 0.0f.xx, 1.0f.xx) * _60_m0[_2667].zw);
                    }
                    _2761 = _2661 * _58.SampleLevel(_24, _2754, 0.0f).x;
                }
                else
                {
                    _2761 = _2661;
                }
                bool _2762 = _2761 > 0.0f;
                float _3050;
                if (_2762)
                {
                    int _2814;
                    if (_2606)
                    {
                        _2814 = int(_48_m6[_1982].x);
                    }
                    else
                    {
                        uint _2769 = asuint(_48_m6[_1979].w);
                        uint _2771 = asuint(_48_m6[_1982].x);
                        float3 _2772 = _401 - _48_m6[_1976].xyz;
                        float3 _2773 = abs(_2772);
                        float _2774 = _2773.x;
                        float _2775 = _2773.y;
                        float _2777 = _2773.z;
                        int _2809;
                        if ((_2774 > _2775) && (_2774 > _2777))
                        {
                            _2809 = int((_2772.x > 0.0f) ? (_2769 >> 24u) : ((_2769 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2801;
                            if (_2775 > _2777)
                            {
                                _2801 = int((_2772.y > 0.0f) ? ((_2769 >> 8u) & 255u) : (_2769 & 255u));
                            }
                            else
                            {
                                _2801 = int((_2772.z > 0.0f) ? ((_2771 >> 8u) & 255u) : (_2771 & 255u));
                            }
                            _2809 = _2801;
                        }
                        _2814 = (_2809 < 80) ? _2809 : (-1);
                    }
                    float3 _2824 = (_401 - ((-_2587) * _50_m11[_2814].x)) + (_670 * (_50_m11[_2814].y * 5.0f));
                    float4 _2831 = mul(_50_m10[_2814], float4(_2824, 1.0f));
                    float _2832 = _2831.w;
                    float3 _2835 = _2831.xyz / _2832.xxx;
                    float2 _2836 = _2835.xy;
                    float3 _2844 = _2835.xyz;
                    bool3 _2845 = bool3(_2844.x <= 0.0f.xxx.x, _2844.y <= 0.0f.xxx.y, _2844.z <= 0.0f.xxx.z);
                    bool3 _2846 = bool3(_2844.x >= 1.0f.xxx.x, _2844.y >= 1.0f.xxx.y, _2844.z >= 1.0f.xxx.z);
                    float _2849 = _2835.z;
                    float2 _2860 = ((_2836 * (_50_m12[_2814].zw - _50_m12[_2814].xy)) + _50_m12[_2814].xy).xy * _50_m13.zw;
                    float2 _2862 = floor(_2860 + 0.5f.xx);
                    float2 _2863 = _2860 - _2862;
                    float _2864 = _2863.x;
                    float _2865 = _2864 + 0.5f;
                    float _2866 = _2865 * _2865;
                    float _2869 = 1.0f - _2864;
                    float _2870 = min(_2864, 0.0f);
                    float _2873 = _2864 + 1.0f;
                    float _2874 = max(_2864, 0.0f);
                    float _2885 = _2863.y;
                    float _2886 = _2885 + 0.5f;
                    float _2887 = _2886 * _2886;
                    float _2890 = 1.0f - _2885;
                    float _2891 = min(_2885, 0.0f);
                    float _2894 = _2885 + 1.0f;
                    float _2895 = max(_2885, 0.0f);
                    float3 _2907 = float3(0.1599999964237213134765625f * _2869, 0.1599999964237213134765625f * ((_2873 - (_2874 * _2874)) + 1.0f), _2866 * 0.07999999821186065673828125f);
                    float3 _2908 = float3(0.1599999964237213134765625f * ((_2866 * 0.5f) - _2864), 0.1599999964237213134765625f * ((_2869 - (_2870 * _2870)) + 1.0f), 0.1599999964237213134765625f * _2873) + _2907;
                    float3 _2910 = float3(0.1599999964237213134765625f * _2890, 0.1599999964237213134765625f * ((_2894 - (_2895 * _2895)) + 1.0f), _2887 * 0.07999999821186065673828125f);
                    float3 _2911 = float3(0.1599999964237213134765625f * ((_2887 * 0.5f) - _2885), 0.1599999964237213134765625f * ((_2890 - (_2891 * _2891)) + 1.0f), 0.1599999964237213134765625f * _2894) + _2910;
                    float3 _2917 = ((_2907 / _2908) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                    float3 _2919 = ((_2910 / _2911) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                    float2 _2921 = _2862 * _50_m13.xy;
                    float _2922 = _2917.x;
                    float _2923 = _2919.x;
                    float _2926 = _2917.y;
                    float _2929 = _2917.z;
                    float _2932 = _2919.y;
                    float _2939 = _2919.z;
                    float _2946 = _2908.x;
                    float _2947 = _2911.x;
                    float _2949 = _2908.y;
                    float _2951 = _2908.z;
                    float _2953 = _2911.y;
                    float _2957 = _2911.z;
                    float _3015 = (((((((_2946 * _2947) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2922, _2923), _356).xy, _2849)) + ((_2949 * _2947) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2926, _2923), _356).xy, _2849))) + ((_2951 * _2947) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2929, _2923), _356).xy, _2849))) + ((_2946 * _2953) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2922, _2932), _356).xy, _2849))) + ((_2949 * _2953) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2926, _2932), _356).xy, _2849))) + ((_2951 * _2953) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2929, _2932), _356).xy, _2849))) + ((_2946 * _2957) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2922, _2939), _356).xy, _2849));
                    float2 _3036 = min(_2836, 1.0f.xx - _2836);
                    _3050 = (_2814 >= 0) ? lerp(1.0f, (any(bool3(_2845.x || _2846.x, _2845.y || _2846.y, _2845.z || _2846.z)) || ((asuint(_2849) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3015 + ((_2949 * _2957) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2926, _2939), _356).xy, _2849))) + ((_2951 * _2957) * _52.SampleCmpLevelZero(_26, float3(_2921 + float2(_2929, _2939), _356).xy, _2849))), _2606 ? min(_50_m11[_2814].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2814].z - _2832) * 0.25f, min(_3036.x, _3036.y)))) : _50_m11[_2814].w) : 1.0f;
                }
                else
                {
                    _3050 = 1.0f;
                }
                float3 _3075;
                float3 _3076;
                if (_2609)
                {
                    float3 _3053 = _2562 * _2562;
                    float3 _3055 = reflect(-_442, _670);
                    float _3064 = dot(_3055, _2597);
                    _3075 = _3053 / clamp(_3053 + (0.5f * clamp(_48_m6[_1979].z * _2586, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3076 = normalize(_2599 + (_2597 * clamp(dot(_2599, (_3055 * _3064) - _2597) / ((_48_m6[_1979].z * _48_m6[_1979].z) - (_3064 * _3064)), 0.0f, 1.0f)));
                }
                else
                {
                    _3075 = 1.0f.xxx;
                    _3076 = _2587;
                }
                float3 _3077 = _3076 + _442;
                float3 _3081 = _3077 * rsqrt(max(6.103515625e-05f, dot(_3077, _3077)));
                float3 _3207;
                if (_2762)
                {
                    float _3085 = clamp(_2628, 0.0f, 1.0f);
                    float _3087 = clamp(dot(_670, _3081), 0.0f, 1.0f);
                    float _3089 = clamp(dot(_442, _3081), 0.0f, 1.0f);
                    float _3092 = clamp(dot(_670, _442), 0.0f, 1.0f);
                    float _3093 = _36_m66 * _36_m66;
                    float _3103;
                    if (_2591 > 0.0f)
                    {
                        _3103 = clamp(_3093 + ((_2591 * _2591) / ((_3089 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3103 = _3093;
                    }
                    float _3104 = _3103 * _3103;
                    float _3125 = (((_3087 * _3104) - _3087) * _3087) + 1.0f;
                    float _3130 = 1.0f - _3089;
                    float _3131 = _3130 * _3130;
                    float _3133 = (_3130 * _3131) * _3131;
                    float _3157 = 1.0f - _36_m66;
                    float _3164 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3157 * (1.04997003078460693359375f + (_3157 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3157))))));
                    float _3165 = 1.0f - _3164;
                    float3 _3168 = _787 + ((1.0f.xxx - _787) * 0.0476190485060214996337890625f);
                    float _3179 = clamp(1.0f - _734, 0.0f, 1.0f);
                    float _3187 = clamp((dot(_670, _3076) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3203 = (clamp((min(((_787 * (1.0f - _3133)) + _3133.xxx) * (((_3104 / (_3125 * _3125)) * _3075.y) * (0.5f / (((_3085 * sqrt(((((-_3092) * _3104) + _3092) * _3092) + _3104)) + (_3092 * sqrt(((((-_3085) * _3104) + _3085) * _3085) + _3104))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3168 * (((_57.SampleLevel(_24, (float2(_3092, _36_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_24, (float2(_3085, _36_m66) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3164) / _3165)) * _3168) / (1.0f.xxx - (_3168 * _3165)))) * _48_m6[_1991].z, 0.0f.xxx, 1000.0f.xxx) * _2628) + (_1248 * lerp(lerp(1.0f, (_3187 * sqrt(_3187)) * 1.66666662693023681640625f, _3179) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_442, _3076), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3179)));
                    _3207 = (_3203 + ((_721 * _3075.z) * _2628)) * (((_48_m6[_1973].xyz * _2761) * _3050) * _2070);
                }
                else
                {
                    _3207 = 0.0f.xxx;
                }
                _3208 = _1936;
                _3209 = _3207;
            }
            else
            {
                float _2560;
                do
                {
                    if (_2074)
                    {
                        _2560 = 1.0f;
                        break;
                    }
                    float _2094 = (0.5f + (0.5f * _48_m6[_1979].y)) - abs(_48_m6[_1979].x);
                    float _2095 = _48_m6[_1979].y - _2094;
                    float _2102 = abs(max((1.0f - abs(_2094)) - abs(_2095), 0.00048828125f));
                    float3 _2106 = normalize(float3(_2094, _2095, (_48_m6[_1979].x >= 0.0f) ? _2102 : (-_2102)));
                    float3 _2107 = _48_m6[_1976].xyz - _401;
                    float _2108 = dot(_2107, _2107);
                    float3 _2110 = _2107 * rsqrt(_2108);
                    int _2113 = int(_48_m6[_1991].w);
                    float3 _2115 = (_2106 * _48_m6[_1979].z) * 0.5f;
                    float3 _2116 = _2107 - _2115;
                    float3 _2117 = _2107 + _2115;
                    bool _2120 = (uint(_48_m6[_1973].w) & 1u) == 0u;
                    bool _2123 = _2120 || ((_1995 & 2u) != 0u);
                    bool _2126 = (!_2120) && (_48_m6[_1979].z > 0.0f);
                    float _2138;
                    if (_2126)
                    {
                        _2138 = 1.0f / ((((length(_2116) * length(_2117)) + dot(_2116, _2117)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2138 = 1.0f;
                    }
                    float _2160;
                    if (_48_m6[_1988].w < 0.0f)
                    {
                        float _2154 = _2108 * (_48_m6[_1976].w * _48_m6[_1976].w);
                        float _2157 = clamp(1.0f - (_2154 * _2154), 0.0f, 1.0f);
                        _2160 = lerp(1.0f / (_2108 + 1.0f), _2138, float(_2126)) * (_2157 * _2157);
                    }
                    else
                    {
                        float3 _2143 = _2107 * _48_m6[_1976].w;
                        _2160 = _2138 * pow(1.0f - clamp(dot(_2143, _2143), 0.0f, 1.0f), _48_m6[_1988].w);
                    }
                    float _2166 = clamp((dot(_2110, -_2106) - _48_m6[_1979].z) * _48_m6[_1979].w, 0.0f, 1.0f);
                    float _2170 = _2160 * lerp(1.0f, _2166 * _2166, float(_2120));
                    float _2270;
                    if ((!_2126) && (_2113 >= 0))
                    {
                        uint _2176 = uint(_2113);
                        float2 _2263;
                        [branch]
                        if (_2120)
                        {
                            float4 _2253 = mul(_60_m1[_2176], _405);
                            _2263 = _60_m0[_2176].xy + (clamp(_2253.xy / _2253.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2176].zw);
                        }
                        else
                        {
                            float3 _2190 = mul(float4(-_2107, 0.0f), _60_m1[_2176]).xyz;
                            float3 _368 = _2190;
                            float3 _367 = _2190;
                            float3 _366 = abs(_2190);
                            uint _2199 = uint(int(_366.y > _366.x));
                            uint _2205 = (_366.z > _366[_2199]) ? 2u : _2199;
                            uint _2211 = (_2205 * 2u) + uint(_367[_2205] < 0.0f);
                            float _2215 = abs(_368[_2211 / 2u]);
                            float _2235 = 0.5f - (0.000244140625f / _60_m0[_2176].w);
                            _2263 = _60_m0[_2176].xy + (clamp(float2((float(_2211) + ((((_368[uint(_336[_2211].x)] * _337[_2211].x) / _2215) * _2235) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_368[uint(_336[_2211].y)] * _337[_2211].y) / _2215) * _2235)), 0.0f.xx, 1.0f.xx) * _60_m0[_2176].zw);
                        }
                        _2270 = _2170 * _58.SampleLevel(_24, _2263, 0.0f).x;
                    }
                    else
                    {
                        _2270 = _2170;
                    }
                    float _2559;
                    if (_2270 > 0.0f)
                    {
                        int _2323;
                        if (_2123)
                        {
                            _2323 = int(_48_m6[_1982].x);
                        }
                        else
                        {
                            uint _2278 = asuint(_48_m6[_1979].w);
                            uint _2280 = asuint(_48_m6[_1982].x);
                            float3 _2281 = _401 - _48_m6[_1976].xyz;
                            float3 _2282 = abs(_2281);
                            float _2283 = _2282.x;
                            float _2284 = _2282.y;
                            float _2286 = _2282.z;
                            int _2318;
                            if ((_2283 > _2284) && (_2283 > _2286))
                            {
                                _2318 = int((_2281.x > 0.0f) ? (_2278 >> 24u) : ((_2278 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2310;
                                if (_2284 > _2286)
                                {
                                    _2310 = int((_2281.y > 0.0f) ? ((_2278 >> 8u) & 255u) : (_2278 & 255u));
                                }
                                else
                                {
                                    _2310 = int((_2281.z > 0.0f) ? ((_2280 >> 8u) & 255u) : (_2280 & 255u));
                                }
                                _2318 = _2310;
                            }
                            _2323 = (_2318 < 80) ? _2318 : (-1);
                        }
                        float3 _2333 = (_401 - ((-_2110) * _50_m11[_2323].x)) + (_670 * (_50_m11[_2323].y * 5.0f));
                        float4 _2340 = mul(_50_m10[_2323], float4(_2333, 1.0f));
                        float _2341 = _2340.w;
                        float3 _2344 = _2340.xyz / _2341.xxx;
                        float2 _2345 = _2344.xy;
                        float3 _2353 = _2344.xyz;
                        bool3 _2354 = bool3(_2353.x <= 0.0f.xxx.x, _2353.y <= 0.0f.xxx.y, _2353.z <= 0.0f.xxx.z);
                        bool3 _2355 = bool3(_2353.x >= 1.0f.xxx.x, _2353.y >= 1.0f.xxx.y, _2353.z >= 1.0f.xxx.z);
                        float _2358 = _2344.z;
                        float2 _2369 = ((_2345 * (_50_m12[_2323].zw - _50_m12[_2323].xy)) + _50_m12[_2323].xy).xy * _50_m13.zw;
                        float2 _2371 = floor(_2369 + 0.5f.xx);
                        float2 _2372 = _2369 - _2371;
                        float _2373 = _2372.x;
                        float _2374 = _2373 + 0.5f;
                        float _2375 = _2374 * _2374;
                        float _2378 = 1.0f - _2373;
                        float _2379 = min(_2373, 0.0f);
                        float _2382 = _2373 + 1.0f;
                        float _2383 = max(_2373, 0.0f);
                        float _2394 = _2372.y;
                        float _2395 = _2394 + 0.5f;
                        float _2396 = _2395 * _2395;
                        float _2399 = 1.0f - _2394;
                        float _2400 = min(_2394, 0.0f);
                        float _2403 = _2394 + 1.0f;
                        float _2404 = max(_2394, 0.0f);
                        float3 _2416 = float3(0.1599999964237213134765625f * _2378, 0.1599999964237213134765625f * ((_2382 - (_2383 * _2383)) + 1.0f), _2375 * 0.07999999821186065673828125f);
                        float3 _2417 = float3(0.1599999964237213134765625f * ((_2375 * 0.5f) - _2373), 0.1599999964237213134765625f * ((_2378 - (_2379 * _2379)) + 1.0f), 0.1599999964237213134765625f * _2382) + _2416;
                        float3 _2419 = float3(0.1599999964237213134765625f * _2399, 0.1599999964237213134765625f * ((_2403 - (_2404 * _2404)) + 1.0f), _2396 * 0.07999999821186065673828125f);
                        float3 _2420 = float3(0.1599999964237213134765625f * ((_2396 * 0.5f) - _2394), 0.1599999964237213134765625f * ((_2399 - (_2400 * _2400)) + 1.0f), 0.1599999964237213134765625f * _2403) + _2419;
                        float3 _2426 = ((_2416 / _2417) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                        float3 _2428 = ((_2419 / _2420) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                        float2 _2430 = _2371 * _50_m13.xy;
                        float _2431 = _2426.x;
                        float _2432 = _2428.x;
                        float _2435 = _2426.y;
                        float _2438 = _2426.z;
                        float _2441 = _2428.y;
                        float _2448 = _2428.z;
                        float _2455 = _2417.x;
                        float _2456 = _2420.x;
                        float _2458 = _2417.y;
                        float _2460 = _2417.z;
                        float _2462 = _2420.y;
                        float _2466 = _2420.z;
                        float _2524 = (((((((_2455 * _2456) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2431, _2432), _356).xy, _2358)) + ((_2458 * _2456) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2435, _2432), _356).xy, _2358))) + ((_2460 * _2456) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2438, _2432), _356).xy, _2358))) + ((_2455 * _2462) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2431, _2441), _356).xy, _2358))) + ((_2458 * _2462) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2435, _2441), _356).xy, _2358))) + ((_2460 * _2462) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2438, _2441), _356).xy, _2358))) + ((_2455 * _2466) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2431, _2448), _356).xy, _2358));
                        float2 _2545 = min(_2345, 1.0f.xx - _2345);
                        _2559 = (_2323 >= 0) ? lerp(1.0f, (any(bool3(_2354.x || _2355.x, _2354.y || _2355.y, _2354.z || _2355.z)) || ((asuint(_2358) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2524 + ((_2458 * _2466) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2435, _2448), _356).xy, _2358))) + ((_2460 * _2466) * _52.SampleCmpLevelZero(_26, float3(_2430 + float2(_2438, _2448), _356).xy, _2358))), _2123 ? min(_50_m11[_2323].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2323].z - _2341) * 0.25f, min(_2545.x, _2545.y)))) : _50_m11[_2323].w) : 1.0f;
                    }
                    else
                    {
                        _2559 = 1.0f;
                    }
                    _2560 = _2559;
                    break;
                } while(false);
                _3208 = _1936 * _2560;
                _3209 = 0.0f.xxx;
            }
            _1958 = _3208;
            _1961 = _1960 + _3209;
        }
        _1933 = _1932 + _1960;
    }
    float3 _3219 = -_442;
    float _3220 = 1.0f - _36_m1;
    float _3235 = _401.y * _18_m46.w;
    float _3240 = max(0.00999999977648258209228515625f, _3235 + _18_m47.w);
    float3 _3254 = exp(_18_m45.xyz * ((-max(0.0f, (_443 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3240)) / _3240) * exp(_3235 + _18_m48.w))));
    float _3257 = dot(_3219, _18_m44.xyz);
    float _3263 = _18_m45.w * _18_m45.w;
    float _3267 = (1.0f + _3263) - ((2.0f * _18_m45.w) * _3257);
    float3 _3599;
    float _3600;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3425 = (uint3(int3(int(_818.x), int(_818.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3426 = _3425.y;
        uint _3427 = _3425.z;
        uint _3430 = _3425.x + (_3426 * _3427);
        uint _3432 = _3426 + (_3427 * _3430);
        uint _3434 = _3427 + (_3430 * _3432);
        uint _3436 = _3430 + (_3432 * _3434);
        float _3460 = dot(_3219, -_16_m0[2].xyz);
        float3 _3470 = _401 - _16_m11.xyz;
        float _3472 = (_18_m55.w * ((_3460 > 5.9604644775390625e-08f) ? (1.0f / _3460) : 0.0f)) * (1.0f / _443);
        float _3473 = _3470.y;
        float _3474 = _3472 * _3473;
        float _3476 = _16_m11.y + _3474;
        float _3477 = _3473 - _3474;
        float _3479 = (1.0f - _3472) * _443;
        float _3493 = max(-127.0f, _18_m49.z * _3477);
        float _3517 = max(-127.0f, _18_m52.x * _3477);
        float _3528 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3476 - _18_m49.x)))) * ((abs(_3493) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3493)) / _3493) : (0.693147182464599609375f - (0.2402265071868896484375f * _3493)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3476 - _18_m52.z)))) * ((abs(_3517) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3517)) / _3517) : (0.693147182464599609375f - (0.2402265071868896484375f * _3517))));
        float _3550 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3553 = clamp((max(clamp(exp2(-(_3528 * _3479)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3550, 0.0f, 1.0f);
        float4 _3593 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _38.SampleLevel(_24, float3((_1907 + ((((float3(uint3(_3436, _3432 + (_3434 * _3436), _361) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_819 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_819 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3599 = _3593.xyz + (((_18_m51.xyz * (1.0f - _3553)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3528 * max(_3479 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3550))) * _3593.w);
        _3600 = _3593.w * _3553;
    }
    else
    {
        float3 _3297 = _401 - _16_m11.xyz;
        float _3299 = _3297.y;
        float _3313 = max(-127.0f, _18_m49.z * _3299);
        float _3337 = max(-127.0f, _18_m52.x * _3299);
        float _3348 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3313) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3313)) / _3313) : (0.693147182464599609375f - (0.2402265071868896484375f * _3313)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3337) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3337)) / _3337) : (0.693147182464599609375f - (0.2402265071868896484375f * _3337))));
        float _3370 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3373 = clamp((max(clamp(exp2(-(_3348 * _443)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3370, 0.0f, 1.0f);
        _3599 = (_18_m51.xyz * (1.0f - _3373)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3348 * max(_443 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3370));
        _3600 = _3373;
    }
    float3 _3609 = (((((((lerp(dot(_1269, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1269, _1275) * _18_m76.xyz) * _36_m11) + (_1269 * _1283)) + (_718 * (1.0f - _36_m64))) + (_1906.xyz + (_1932 * _1935)).xyz).xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3254 * _3600)) : (_3254 * _3600))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3257 * _3257)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3263) / max((12.56637096405029296875f * _3267) * sqrt(_3267), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3254)) * _3600 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3599 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _3220)).xyz * _717;
    float4 _3610 = float4(_3609.x, _3609.y, _3609.z, _357.w);
    float _3611 = _717 * _3220;
    _3610.w = _3611;
    float3 _3620 = ((lerp(dot(_3610.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3610.xyz, _1275) * _18_m76.xyz) * _36_m11) + (_3610.xyz * _1283);
    float2 _3630 = min(_785, 1.0f.xx);
    float4 _3631 = float4(_3630.x, _3630.y, _357.z, _357.w);
    _3631.z = float(clamp(max(dot(_3620.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3611, _3611) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3631.w = (_36_m2 * _36_m0) * float(clamp(max(dot(_718, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _717, _717) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3620.x, _3620.y, _3620.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3610.w);
    _14 = _3631;
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

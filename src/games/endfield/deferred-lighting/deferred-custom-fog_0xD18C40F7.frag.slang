// Endfield 1.5 Vulkan shader 0xD18C40F7, migrated from 1.4.4 shader 0xB7CCDFC4.
#include "./renodx_injection.hlsli"

struct _22
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

static float3 _380 = (float3)0;
static float _381 = (float)0;
static float3 _382 = (float3)0;
static float _386 = (float)0;
static uint _387 = (uint)0;

static const int2 _358[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _359[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _17_18 : register(b12)
{
    column_major float4x4 _18_m0 : packoffset(c0);
    column_major float4x4 _18_m1 : packoffset(c4);
    column_major float4x4 _18_m2 : packoffset(c8);
    column_major float4x4 _18_m3 : packoffset(c12);
    column_major float4x4 _18_m4 : packoffset(c16);
    column_major float4x4 _18_m5 : packoffset(c20);
    column_major float4x4 _18_m6 : packoffset(c24);
    column_major float4x4 _18_m7 : packoffset(c28);
    column_major float4x4 _18_m8 : packoffset(c32);
    column_major float4x4 _18_m9 : packoffset(c36);
    column_major float4x4 _18_m10 : packoffset(c40);
    float4 _18_m11 : packoffset(c44);
    column_major float4x4 _18_m12 : packoffset(c45);
    column_major float4x4 _18_m13 : packoffset(c49);
    column_major float4x4 _18_m14 : packoffset(c53);
    column_major float4x4 _18_m15 : packoffset(c57);
    column_major float4x4 _18_m16 : packoffset(c61);
    column_major float4x4 _18_m17 : packoffset(c65);
    column_major float4x4 _18_m18 : packoffset(c69);
    column_major float4x4 _18_m19 : packoffset(c73);
    column_major float4x4 _18_m20 : packoffset(c77);
    float4 _18_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _19_20 : register(b16)
{
    float4 _20_m0 : packoffset(c0);
    float4 _20_m1 : packoffset(c1);
    float4 _20_m2 : packoffset(c2);
    float4 _20_m3 : packoffset(c3);
    float4 _20_m4 : packoffset(c4);
    float4 _20_m5 : packoffset(c5);
    float4 _20_m6[6] : packoffset(c6);
    float4 _20_m7[6] : packoffset(c12);
    float4 _20_m8 : packoffset(c18);
    float4 _20_m9 : packoffset(c19);
    float4 _20_m10 : packoffset(c20);
    float4 _20_m11 : packoffset(c21);
    float4 _20_m12 : packoffset(c22);
    float4 _20_m13 : packoffset(c23);
    float4 _20_m14 : packoffset(c24);
    float4 _20_m15 : packoffset(c25);
    float _20_m16 : packoffset(c26);
    float _20_m17 : packoffset(c26.y);
    float _20_m18 : packoffset(c26.z);
    uint _20_m19 : packoffset(c26.w);
    float4 _20_m20 : packoffset(c27);
    int4 _20_m21 : packoffset(c28);
    float4 _20_m22 : packoffset(c29);
    float4 _20_m23 : packoffset(c30);
    float4 _20_m24 : packoffset(c31);
    float4 _20_m25 : packoffset(c32);
    float4 _20_m26 : packoffset(c33);
    float4 _20_m27 : packoffset(c34);
    float4 _20_m28 : packoffset(c35);
    float4 _20_m29 : packoffset(c36);
    float4 _20_m30 : packoffset(c37);
    float4 _20_m31 : packoffset(c38);
    float4 _20_m32[4] : packoffset(c39);
    float4 _20_m33[4] : packoffset(c43);
    float4 _20_m34[4] : packoffset(c47);
    float4 _20_m35[4] : packoffset(c51);
    float4 _20_m36 : packoffset(c55);
    float4 _20_m37 : packoffset(c56);
    float4 _20_m38[4] : packoffset(c57);
    float4 _20_m39[4] : packoffset(c61);
    float4 _20_m40[4] : packoffset(c65);
    float4 _20_m41 : packoffset(c69);
    float4 _20_m42 : packoffset(c70);
    float4 _20_m43 : packoffset(c71);
    float4 _20_m44 : packoffset(c72);
    float4 _20_m45 : packoffset(c73);
    float4 _20_m46 : packoffset(c74);
    float4 _20_m47 : packoffset(c75);
    float4 _20_m48 : packoffset(c76);
    float4 _20_m49 : packoffset(c77);
    float4 _20_m50 : packoffset(c78);
    float4 _20_m51 : packoffset(c79);
    float4 _20_m52 : packoffset(c80);
    float4 _20_m53 : packoffset(c81);
    float4 _20_m54 : packoffset(c82);
    float4 _20_m55 : packoffset(c83);
    float4 _20_m56 : packoffset(c84);
    float4 _20_m57 : packoffset(c85);
    float4 _20_m58 : packoffset(c86);
    float4 _20_m59 : packoffset(c87);
    float4 _20_m60 : packoffset(c88);
    float4 _20_m61 : packoffset(c89);
    float4 _20_m62 : packoffset(c90);
    float4 _20_m63 : packoffset(c91);
    float4 _20_m64 : packoffset(c92);
    float4 _20_m65 : packoffset(c93);
    float4 _20_m66 : packoffset(c94);
    float4 _20_m67 : packoffset(c95);
    float4 _20_m68 : packoffset(c96);
    float4 _20_m69 : packoffset(c97);
    float4 _20_m70 : packoffset(c98);
    float4 _20_m71 : packoffset(c99);
    float4 _20_m72 : packoffset(c100);
    float4 _20_m73 : packoffset(c101);
    float4 _20_m74 : packoffset(c102);
    float4 _20_m75 : packoffset(c103);
    float4 _20_m76 : packoffset(c104);
    float4 _20_m77 : packoffset(c105);
    float4 _20_m78 : packoffset(c106);
    float4 _20_m79 : packoffset(c107);
    float4 _20_m80 : packoffset(c108);
    float4 _20_m81 : packoffset(c109);
    float4 _20_m82 : packoffset(c110);
    float4 _20_m83 : packoffset(c111);
    float4 _20_m84 : packoffset(c112);
    float4 _20_m85 : packoffset(c113);
    float4 _20_m86 : packoffset(c114);
    float4 _20_m87 : packoffset(c115);
    float4 _20_m88 : packoffset(c116);
    float4 _20_m89 : packoffset(c117);
    float4 _20_m90 : packoffset(c118);
    float4 _20_m91 : packoffset(c119);
    float4 _20_m92 : packoffset(c120);
    float4 _20_m93 : packoffset(c121);
    float4 _20_m94 : packoffset(c122);
    float4 _20_m95 : packoffset(c123);
    float4 _20_m96 : packoffset(c124);
    float4 _20_m97 : packoffset(c125);
    float4 _20_m98 : packoffset(c126);
    float4 _20_m99[2] : packoffset(c127);
    float4 _20_m100[2] : packoffset(c129);
    float _20_m101 : packoffset(c131);
    float _20_m102 : packoffset(c131.y);
    float _20_m103 : packoffset(c131.z);
    float _20_m104 : packoffset(c131.w);
    float4 _20_m105 : packoffset(c132);
    float4 _20_m106 : packoffset(c133);
    float4 _20_m107 : packoffset(c134);
    float4 _20_m108 : packoffset(c135);
    float4 _20_m109 : packoffset(c136);
    float4 _20_m110 : packoffset(c137);
    float4 _20_m111 : packoffset(c138);
    float4 _20_m112 : packoffset(c139);
    float4 _20_m113 : packoffset(c140);
    float4 _20_m114 : packoffset(c141);
    float4 _20_m115 : packoffset(c142);
    float4 _20_m116 : packoffset(c143);
    float4 _20_m117 : packoffset(c144);
    float4 _20_m118 : packoffset(c145);
    float4 _20_m119 : packoffset(c146);
    float4 _20_m120 : packoffset(c147);
    float4 _20_m121 : packoffset(c148);
    float4 _20_m122 : packoffset(c149);
    float4 _20_m123 : packoffset(c150);
    float4 _20_m124 : packoffset(c151);
    float4 _20_m125 : packoffset(c152);
    float4 _20_m126 : packoffset(c153);
    float4 _20_m127 : packoffset(c154);
    float4 _20_m128 : packoffset(c155);
    float4 _20_m129 : packoffset(c156);
    float4 _20_m130 : packoffset(c157);
    float4 _20_m131 : packoffset(c158);
    float4 _20_m132 : packoffset(c159);
    float4 _20_m133 : packoffset(c160);
    float4 _20_m134 : packoffset(c161);
    column_major float4x4 _20_m135 : packoffset(c162);
    float4 _20_m136 : packoffset(c166);
    float4 _20_m137 : packoffset(c167);
    float4 _20_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _21_23 : register(b0)
{
    _22 _23_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _32 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _34 : register(t18);

uint4 _34_Load4(uint byte_offset)
{
    return asuint(_34[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _35_36 : register(b48)
{
    int _36_m0 : packoffset(c0);
    int _36_m1 : packoffset(c0.y);
    int _36_m2 : packoffset(c0.z);
    int _36_m3 : packoffset(c0.w);
    float _36_m4 : packoffset(c1);
    float _36_m5 : packoffset(c1.y);
    float _36_m6 : packoffset(c1.z);
    float _36_m7 : packoffset(c1.w);
    float _36_m8 : packoffset(c2);
    float _36_m9 : packoffset(c2.y);
    float _36_m10 : packoffset(c2.z);
    float _36_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _37_38 : register(b14)
{
    float4 _38_m0 : packoffset(c0);
    float4 _38_m1 : packoffset(c1);
    float4 _38_m2 : packoffset(c2);
    float4 _38_m3 : packoffset(c3);
    float4 _38_m4 : packoffset(c4);
    uint4 _38_m5 : packoffset(c5);
    float4 _38_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _39_40 : register(b15)
{
    column_major float4x4 _40_m0[5] : packoffset(c0);
    float4 _40_m1[4] : packoffset(c20);
    float4 _40_m2[4] : packoffset(c24);
    float4 _40_m3[4] : packoffset(c28);
    float4 _40_m4 : packoffset(c32);
    float4 _40_m5 : packoffset(c33);
    float4 _40_m6 : packoffset(c34);
    float4 _40_m7 : packoffset(c35);
    float4 _40_m8 : packoffset(c36);
    float4 _40_m9[27] : packoffset(c37);
    column_major float4x4 _40_m10[56] : packoffset(c64);
    float4 _40_m11[56] : packoffset(c288);
    float4 _40_m12[56] : packoffset(c344);
    float4 _40_m13 : packoffset(c400);
    float4 _40_m14[47] : packoffset(c401);
    column_major float4x4 _40_m15[15] : packoffset(c448);
    float4 _40_m16[15] : packoffset(c508);
    float4 _40_m17[15] : packoffset(c523);
    float4 _40_m18[15] : packoffset(c538);
    float4 _40_m19 : packoffset(c553);
    float4 _40_m20 : packoffset(c554);
    float4 _40_m21[21] : packoffset(c555);
    column_major float4x4 _40_m22 : packoffset(c576);
    column_major float4x4 _40_m23 : packoffset(c580);
    float4 _40_m24 : packoffset(c584);
    float4 _40_m25 : packoffset(c585);
    float4 _40_m26 : packoffset(c586);
    float4 _40_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _50_51 : register(b0)
{
    float _51_m0 : packoffset(c0);
    float _51_m1 : packoffset(c0.y);
    float _51_m2 : packoffset(c0.z);
    float _51_m3 : packoffset(c0.w);
    float _51_m4 : packoffset(c1);
    float _51_m5 : packoffset(c1.y);
    float _51_m6 : packoffset(c1.z);
    float _51_m7 : packoffset(c1.w);
    float _51_m8 : packoffset(c2);
    float _51_m9 : packoffset(c2.y);
    float _51_m10 : packoffset(c2.z);
    float _51_m11 : packoffset(c2.w);
    float _51_m12 : packoffset(c3);
    float _51_m13 : packoffset(c3.y);
    float _51_m14 : packoffset(c3.z);
    float _51_m15 : packoffset(c3.w);
    float _51_m16 : packoffset(c4);
    float _51_m17 : packoffset(c4.y);
    float _51_m18 : packoffset(c4.z);
    float _51_m19 : packoffset(c4.w);
    float _51_m20 : packoffset(c5);
    float _51_m21 : packoffset(c5.y);
    float _51_m22 : packoffset(c5.z);
    float _51_m23 : packoffset(c5.w);
    float4 _51_m24 : packoffset(c6);
    float4 _51_m25 : packoffset(c7);
    float4 _51_m26 : packoffset(c8);
    float4 _51_m27 : packoffset(c9);
    float4 _51_m28 : packoffset(c10);
    float4 _51_m29 : packoffset(c11);
    float _51_m30 : packoffset(c12);
    float _51_m31 : packoffset(c12.y);
    float _51_m32 : packoffset(c12.z);
    float _51_m33 : packoffset(c12.w);
    float _51_m34 : packoffset(c13);
    float _51_m35 : packoffset(c13.y);
    float _51_m36 : packoffset(c13.z);
    float _51_m37 : packoffset(c13.w);
    float _51_m38 : packoffset(c14);
    float _51_m39 : packoffset(c14.y);
    float _51_m40 : packoffset(c14.z);
    float _51_m41 : packoffset(c14.w);
    float4 _51_m42 : packoffset(c15);
    float _51_m43 : packoffset(c16);
    float _51_m44 : packoffset(c16.y);
    float _51_m45 : packoffset(c16.z);
    float _51_m46 : packoffset(c16.w);
    float4 _51_m47 : packoffset(c17);
    float4 _51_m48 : packoffset(c18);
    float4 _51_m49 : packoffset(c19);
    float4 _51_m50 : packoffset(c20);
    float4 _51_m51 : packoffset(c21);
    float4 _51_m52 : packoffset(c22);
    float _51_m53 : packoffset(c23);
    float _51_m54 : packoffset(c23.y);
    float _51_m55 : packoffset(c23.z);
    float _51_m56 : packoffset(c23.w);
    float _51_m57 : packoffset(c24);
    float _51_m58 : packoffset(c24.y);
    float _51_m59 : packoffset(c24.z);
    float _51_m60 : packoffset(c24.w);
};

[[vk::binding(50, 0)]]
cbuffer _59_60 : register(b50)
{
    float4 _60_m0[32] : packoffset(c0);
    column_major float4x4 _60_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _25 : register(s3);
[[vk::binding(6, 0)]] SamplerState _26 : register(s6);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _28 : register(s7);
[[vk::binding(46, 0)]] Texture2D<float4> _30 : register(t46);
[[vk::binding(27, 0)]] Texture2D<float4> _41 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _44 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _45 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _46 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _47 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _48 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _49 : register(t30);
[[vk::binding(4, 1)]] Texture2D<float4> _52 : register(t4);
[[vk::binding(2, 1)]] Texture2D<float4> _53 : register(t2);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(5, 1)]] Texture2D<float4> _55 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _56 : register(t3);
[[vk::binding(1, 1)]] Texture2D<float4> _57 : register(t1);
[[vk::binding(29, 0)]] Texture2D<float4> _58 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _63 : register(t36);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _3 = (float2)0;
static float3 _4 = (float3)0;
static float3 _5 = (float3)0;
static float4 _6 = (float4)0;
static float3 _7 = (float3)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static float4 _10 = (float4)0;
static float3 _11 = (float3)0;
static uint _13 = (uint)0;
static float4 _15 = (float4)0;
static float4 _16 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float4 _10 : TEXCOORD7;
    [[vk::location(8)]] float3 _11 : TEXCOORD8;
    [[vk::location(9)]] nointerpolation uint _13 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _15 : SV_Target0;
    [[vk::location(1)]] float4 _16 : SV_Target1;
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
    float _403 = 1.0f / gl_FragCoord.w;
    float3 _418 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _419 = dot(_418, _418);
    float _421 = rsqrt(max(_419, 9.9999999392252902907785028219223e-09f));
    float3 _422 = _418 * _421;
    float _423 = _419 * _421;
    uint _426 = asuint(_23_m0[_13]._m2.x);
    bool _431 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _448;
    float4 _449;
    float4 _450;
    if (_431)
    {
        _448 = asfloat(_34_Load4((_426 + 2u) * 16 + 0));
        _449 = asfloat(_34_Load4((_426 + 1u) * 16 + 0));
        _450 = asfloat(_34_Load4(_426 * 16 + 0));
    }
    else
    {
        _448 = _23_m0[_13]._m0[2];
        _449 = _23_m0[_13]._m0[1];
        _450 = _23_m0[_13]._m0[0];
    }
    float4 _456 = _55.SampleBias(_27, _3, _20_m16);
    float3 _461 = _456.xyz * _51_m24.xyz;
    float4 _465 = _56.SampleBias(_27, _3, _20_m16);
    float _466 = _465.x;
    float _467 = _465.y;
    float _468 = _465.z;
    float _472 = _456.w * _51_m24.w;
    float3 _490 = _461 * _51_m18;
    float3 _494 = lerp(dot(_490, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _490, _51_m19.xxx);
    float4 _498 = _57.SampleBias(_27, _3, _20_m16);
    float2 _503 = (_498.xy * 2.0f) - 1.0f.xx;
    float3 _504 = float3(_503.x, _503.y, _382.z);
    float2 _505 = _503.xy;
    _504.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_505, _505), 0.0f, 1.0f)));
    float2 _513 = _504.xy * _51_m3;
    float3 _518 = _4 + _18_m11.xyz;
    float3 _522 = _518 - float3(_450.w, _386, _448.w);
    _522.y = 6.103515625e-05f;
    float3 _525 = normalize(_522);
    float3 _531 = _6.xyz * 1.0f;
    float3 _532 = (cross(_5, _6.xyz) * _6.w) * 1.0f;
    float3 _533 = _5 * 1.0f;
    float3x3 _534 = float3x3(_531, _532, _533);
    float3 _535 = mul(float3(_513.x, _513.y, _504.z), _534);
    float _544 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _51_m5));
    float3 _545 = (_535 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_535, _535)))) * _544;
    float3 _546 = normalize(_5) * _544;
    float2 _551 = (_498.zw * 2.0f) - 1.0f.xx;
    float3 _552 = float3(_551.x, _551.y, _382.z);
    float2 _553 = _551.xy;
    _552.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_553, _553), 0.0f, 1.0f)));
    float2 _561 = _552.xy * _51_m31;
    float3 _564 = normalize(mul(float3(_561.x, _561.y, _552.z), _534));
    float3x3 _571 = float3x3(_450.xyz, _449.xyz, _448.xyz);
    float3 _572 = mul(_571, float3(_51_m39, 1.0f, 0.0f));
    float3 _584 = cross(_564, lerp(cross(_564, (_572 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_572, _572)))).xyz), _6.xyz, _466.xxx).xyz) * lerp(1.0f, _6.w, _466);
    float3 _586 = mul(_422, _571);
    float _595 = pow(clamp(dot(normalize(mul(_564, _571).xz), normalize(_586.xz)), 0.0f, 1.0f), _51_m37);
    float2 _600 = gl_FragCoord.xy * _20_m0.zw;
    uint2 _601 = uint2(gl_FragCoord.xy);
    float3 _611 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _620 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _633 = float4(float(_620 & 255u), float((_620 >> 8u) & 255u), float((_620 >> 16u) & 255u), float((_620 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _634 = _633.x;
    float _637 = _633.w;
    float _643 = _518.y;
    float _647 = max(_633.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _643) * _633.y);
    float _648 = max(_634, _647);
    float _656 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1150;
    float3 _1151;
    float3 _1152;
    float _1153;
    if (_20_m80.y < 0.5f)
    {
        float3 _674 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.w)));
        float _688 = max(clamp((max(abs(_674.x), abs(_674.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_674.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _990;
        float4 _991;
        float4 _992;
        float _993;
        float _994;
        if ((_20_m105.w != 0.0f) && (_688 < 1.0f))
        {
            float3 _701 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.y)));
            float _715 = max(clamp((max(abs(_701.x), abs(_701.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_701.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _791;
            float4 _792;
            float4 _793;
            float4 _794;
            if (_715 < 1.0f)
            {
                float3 _724 = ((_518 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _726 = _724 - floor(_724);
                float4 _730 = _44.SampleLevel(_27, _726, 0.0f);
                float _731 = 1.0f - _715;
                float _735 = _20_m106.y * 0.5f;
                float _740 = _726.x;
                float _741 = clamp(_726.y, _735, 1.0f - _735) * 0.3333333432674407958984375f;
                float _742 = _726.z;
                float4 _745 = _45.SampleLevel(_26, float3(_740, _741, _742), 0.0f);
                float _761 = _730.x;
                float _771 = _730.y;
                float _781 = _730.z;
                _791 = _688 + (_745.w * _731);
                _792 = float4(((_45.SampleLevel(_26, float3(_740, _741 + 0.666666686534881591796875f, _742), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _781, _781) * _731;
                _793 = float4(((_45.SampleLevel(_26, float3(_740, _741 + 0.3333333432674407958984375f, _742), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _771, _771) * _731;
                _794 = float4(((_745.xyz * 4.0f) - 2.0f.xxx) * _761, _761) * _731;
            }
            else
            {
                _791 = _688;
                _792 = 0.0f.xxxx;
                _793 = 0.0f.xxxx;
                _794 = 0.0f.xxxx;
            }
            float3 _800 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.z)));
            float _814 = max(clamp((max(abs(_800.x), abs(_800.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_800.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _894;
            float4 _895;
            float4 _896;
            float4 _897;
            if (_814 < 1.0f)
            {
                float3 _823 = ((_518 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _825 = _823 - floor(_823);
                float4 _829 = _46.SampleLevel(_27, _825, 0.0f);
                float _831 = _715 * (1.0f - _814);
                float _835 = _20_m106.y * 0.5f;
                float _840 = _825.x;
                float _841 = clamp(_825.y, _835, 1.0f - _835) * 0.3333333432674407958984375f;
                float _842 = _825.z;
                float4 _845 = _47.SampleLevel(_26, float3(_840, _841, _842), 0.0f);
                float _861 = _829.x;
                float _872 = _829.y;
                float _883 = _829.z;
                _894 = _791 + (_845.w * _831);
                _895 = _792 + (float4(((_47.SampleLevel(_26, float3(_840, _841 + 0.666666686534881591796875f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _883, _883) * _831);
                _896 = _793 + (float4(((_47.SampleLevel(_26, float3(_840, _841 + 0.3333333432674407958984375f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _872, _872) * _831);
                _897 = _794 + (float4(((_845.xyz * 4.0f) - 2.0f.xxx) * _861, _861) * _831);
            }
            else
            {
                _894 = _791;
                _895 = _792;
                _896 = _793;
                _897 = _794;
            }
            float4 _980;
            float4 _981;
            float4 _982;
            float _983;
            if (_814 > 0.0f)
            {
                float3 _906 = ((_518 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _909 = _20_m106.xyz * 0.5f;
                float3 _911 = clamp(_906 - floor(_906), _909, 1.0f.xxx - _909);
                float4 _915 = _48.SampleLevel(_27, _911, 0.0f);
                float _917 = _814 * (1.0f - _688);
                float _921 = _20_m106.y * 0.5f;
                float _926 = _911.x;
                float _927 = clamp(_911.y, _921, 1.0f - _921) * 0.3333333432674407958984375f;
                float _928 = _911.z;
                float4 _931 = _49.SampleLevel(_26, float3(_926, _927, _928), 0.0f);
                float _947 = _915.x;
                float _958 = _915.y;
                float _969 = _915.z;
                _980 = _895 + (float4(((_49.SampleLevel(_26, float3(_926, _927 + 0.666666686534881591796875f, _928), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _969, _969) * _917);
                _981 = _896 + (float4(((_49.SampleLevel(_26, float3(_926, _927 + 0.3333333432674407958984375f, _928), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _958, _958) * _917);
                _982 = _897 + (float4(((_931.xyz * 4.0f) - 2.0f.xxx) * _947, _947) * _917);
                _983 = _894 + (_931.w * _917);
            }
            else
            {
                _980 = _895;
                _981 = _896;
                _982 = _897;
                _983 = _894;
            }
            float _986 = clamp((_983 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _990 = _980;
            _991 = _981;
            _992 = _982;
            _993 = _986 - _688;
            _994 = (_986 + _688) * 0.5f;
        }
        else
        {
            _990 = 0.0f.xxxx;
            _991 = 0.0f.xxxx;
            _992 = 0.0f.xxxx;
            _993 = 0.0f;
            _994 = 1.0f;
        }
        float4 _1014 = _992 + float4(_20_m108.x * _994, (_20_m108.y * _994) + ((_20_m108.w * _993) * 0.5f), _20_m108.z * _994, (_20_m108.w * _994) + ((_20_m108.y * _993) * 0.375f));
        float4 _1034 = _991 + float4(_20_m109.x * _994, (_20_m109.y * _994) + ((_20_m109.w * _993) * 0.5f), _20_m109.z * _994, (_20_m109.w * _994) + ((_20_m109.y * _993) * 0.375f));
        float4 _1054 = _990 + float4(_20_m110.x * _994, (_20_m110.y * _994) + ((_20_m110.w * _993) * 0.5f), _20_m110.z * _994, (_20_m110.w * _994) + ((_20_m110.y * _993) * 0.375f));
        float4 _1058 = float4(_545, 1.0f);
        float3 _1064 = max(float3(dot(_1014, _1058), dot(_1034, _1058), dot(_1054, _1058)), 0.0f.xxx) * _656;
        float3 _1072 = ((_1014.xyz * 0.2125999927520751953125f) + (_1034.xyz * 0.715200006961822509765625f)) + (_1054.xyz * 0.072200000286102294921875f);
        float3 _1076 = _1072 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1072, _1072)));
        float _1078 = abs(_1076.y);
        float3 _1079 = _1076;
        _1079.y = _1078;
        float4 _1080 = float4(_1079.x, _1079.y, _1079.z, 0.0f.xxxx.w);
        _1080.w = 1.0f;
        float4 _1084 = float4(_1076.x, _1078, _1076.z, 1.0f);
        float3 _1089 = max(float3(dot(_1014, _1084), dot(_1034, _1084), dot(_1054, _1084)), 0.0f.xxx);
        float _1097 = _1064.z;
        float _1098 = _1064.y;
        float4 _1103 = lerp(float4(_1097, _1098, -1.0f, 0.666666686534881591796875f), float4(_1098, _1097, 0.0f, -0.3333333432674407958984375f), step(_1097, _1098).xxxx);
        float _1104 = _1064.x;
        float _1105 = _1103.x;
        float4 _1113 = lerp(float4(_1105, _1103.yw, _1104), float4(_1104, _1103.yz, _1105), step(_1105, _1104).xxxx);
        float _1114 = _1113.x;
        float _1115 = _1113.w;
        float _1116 = _1113.y;
        float _1118 = _1114 - min(_1115, _1116);
        float _1128 = frac(abs(_1113.z + ((_1115 - _1116) / ((6.0f * _1118) + 9.9999997473787516355514526367188e-05f))));
        float _1135 = min(_1118 / (_1114 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1128 - 0.5f))) * clamp(_1114, 0.0f, 1.0f));
        float _1137 = 2.0f / (2.0f - _1135);
        _1150 = _1080;
        _1151 = _1064;
        _1152 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1128, _1135, _1137).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1135.xxx) * _1137;
        _1153 = max(max(max(_1089.x, _1089.y), _1089.z), 0.0f) * _656;
    }
    else
    {
        _1150 = 0.0f.xxxx;
        _1151 = 1.0f.xxx;
        _1152 = _20_m81.xyz;
        _1153 = _656;
    }
    float3 _1960;
    float _1961;
    float _1962;
    float _1963;
    float _1964;
    float3 _1965;
    float3 _1966;
    [branch]
    if ((clamp(_634 + _647, 0.0f, 1.0f) - _51_m20) > 0.00999999977648258209228515625f)
    {
        float _1310;
        bool _1311;
        bool _1180 = (step(_634, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _647)) != 0.0f;
        bool3 _1181 = _431.xxx;
        float3 _1183 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1187 = float3(_1181.x ? _1183.x : _11.x, _1181.y ? _1183.y : _11.y, _1181.z ? _1183.z : _11.z) * _20_m89.z;
        float3 _1197 = float3(0.0f, -1.0f, 0.0f) + (_533 * _533.y);
        float3 _1205 = ((_10.xyz * dot(_1197, _531)) + ((cross(_9, _10.xyz) * _10.w) * dot(_1197, _532))) + (_9 * dot(_1197, _533));
        float3 _1207 = _1205.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1208 = float3(_1181.x ? _1207.x : _1205.x, _1181.y ? _1207.y : _1205.y, _1181.z ? _1207.z : _1205.z);
        bool _1209 = !_1180;
        bool2 _1210 = _1209.xx;
        float2 _1212 = (1.0f - _647).xx;
        float2 _1213 = float2(_1210.x ? float2(3.0f, 4.340000152587890625f).x : _1212.x, _1210.y ? float2(3.0f, 4.340000152587890625f).y : _1212.y);
        float _1216 = 1.0f - ((_1180 ? _647 : _634) * 0.64999997615814208984375f);
        float3 _1224 = frac(floor(((_3.xx * _20_m89.z) * 32.0f) * 1.5f).xyx * 0.103100001811981201171875f);
        float3 _1229 = _1224 + dot(_1224, _1224.yzx + 33.3300018310546875f.xxx).xxx;
        float _1246 = lerp(0.60000002384185791015625f, 1.0f, clamp((1.2000000476837158203125f * frac((_1187.y * (-3.0f)) + frac((_1229.x + _1229.y) * _1229.z))) + clamp(_1187.z * 10.0f, 0.0f, 1.0f), 0.0f, 1.0f));
        float _1247 = 1.0f - _648;
        float _1249 = _1247 + (0.800000011920928955078125f * _648);
        float _1252 = _1209 ? _20_m10.x : 1.0f;
        float _1254 = _1252 * _1213.x;
        float _1256 = _1252 * _1213.y;
        float3 _1257 = _1187 * 32.0f;
        float3 _1258 = _1187 * 48.345600128173828125f;
        float3 _1262 = pow(max(abs(float3(_1181.x ? _9.xzy.x : _9.x, _1181.y ? _9.xzy.y : _9.y, _1181.z ? _9.xzy.z : _9.z)) - 0.20000000298023223876953125f.xxx, 0.0f.xxx), 10.0f.xxx);
        float3 _1266 = _1262 / max(dot(_1262, 1.0f.xxx), 6.103515625e-05f).xxx;
        float2 _1268 = _1208.xz;
        float _1269 = _1266.y;
        float2 _1270 = _1257.xz * 1.0f;
        float2 _1271 = floor(_1270);
        float2 _1274 = frac(_1271 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1278 = _1274 + dot(_1274, _1274 + 34.345001220703125f.xx).xx;
        float _1279 = _1278.x;
        float _1280 = _1278.y;
        float2 _1284 = frac(float2(_1279 * _1280, _1279 + _1280));
        float2 _1287 = frac((_1271 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1291 = _1287 + dot(_1287, _1287 + 34.345001220703125f.xx).xx;
        float _1292 = _1291.x;
        float _1293 = _1291.y;
        float2 _1297 = frac(float2(_1292 * _1293, _1292 + _1293));
        float _1303 = _1284.x;
        float _1306 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1303)) * _1246;
        float2 _1307 = ((_1270 - _1271) + ((((_1297 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1324;
        do
        {
            _1310 = dot(_1268, _1268);
            _1311 = _1310 <= 9.9999997473787516355514526367188e-06f;
            if (_1311)
            {
                _1324 = _1307;
                break;
            }
            float2 _1315 = _1268 * rsqrt(_1310);
            _1324 = float2(dot(_1307, float2(-_1315.y, _1315.x)), -dot(_1307, _1315));
            break;
        } while(false);
        float _1407;
        bool _1408;
        float2 _1331 = float2(_1324.x * 1.25f, _1324.y * ((_1324.y < 0.0f) ? 1.25f : 0.75f));
        float _1332 = length(_1331);
        float _1334 = _1254 + _1303;
        float _1338 = _1209 ? frac(_1334) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1334, 0.0f, 1.0f));
        float _1350 = _1284.y;
        float _1353 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1338) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1338)) * step(0.001000000047497451305389404296875f, smoothstep(_1306, 0.0f, _1332))) * step(_1216, _1350 - 0.100000001490116119384765625f);
        float _1356 = _1353 * _1269;
        float2 _1365 = _1208.xy;
        float _1366 = _1266.z;
        float2 _1367 = _1257.xy * 1.0f;
        float2 _1368 = floor(_1367);
        float2 _1371 = frac(_1368 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1375 = _1371 + dot(_1371, _1371 + 34.345001220703125f.xx).xx;
        float _1376 = _1375.x;
        float _1377 = _1375.y;
        float2 _1381 = frac(float2(_1376 * _1377, _1376 + _1377));
        float2 _1384 = frac((_1368 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1388 = _1384 + dot(_1384, _1384 + 34.345001220703125f.xx).xx;
        float _1389 = _1388.x;
        float _1390 = _1388.y;
        float2 _1394 = frac(float2(_1389 * _1390, _1389 + _1390));
        float _1400 = _1381.x;
        float _1403 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1400)) * _1246;
        float2 _1404 = ((_1367 - _1368) + ((((_1394 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1421;
        do
        {
            _1407 = dot(_1365, _1365);
            _1408 = _1407 <= 9.9999997473787516355514526367188e-06f;
            if (_1408)
            {
                _1421 = _1404;
                break;
            }
            float2 _1412 = _1365 * rsqrt(_1407);
            _1421 = float2(dot(_1404, float2(-_1412.y, _1412.x)), -dot(_1404, _1412));
            break;
        } while(false);
        float _1504;
        bool _1505;
        float2 _1428 = float2(_1421.x * 1.25f, _1421.y * ((_1421.y < 0.0f) ? 1.25f : 0.75f));
        float _1429 = length(_1428);
        float _1431 = _1254 + _1400;
        float _1435 = _1209 ? frac(_1431) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1431, 0.0f, 1.0f));
        float _1447 = _1381.y;
        float _1450 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1435) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1435)) * step(0.001000000047497451305389404296875f, smoothstep(_1403, 0.0f, _1429))) * step(_1216, _1447 - 0.100000001490116119384765625f);
        float _1453 = _1450 * _1366;
        float2 _1462 = _1208.zy;
        float _1463 = _1266.x;
        float2 _1464 = _1257.zy * 1.0f;
        float2 _1465 = floor(_1464);
        float2 _1468 = frac(_1465 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1472 = _1468 + dot(_1468, _1468 + 34.345001220703125f.xx).xx;
        float _1473 = _1472.x;
        float _1474 = _1472.y;
        float2 _1478 = frac(float2(_1473 * _1474, _1473 + _1474));
        float2 _1481 = frac((_1465 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1485 = _1481 + dot(_1481, _1481 + 34.345001220703125f.xx).xx;
        float _1486 = _1485.x;
        float _1487 = _1485.y;
        float2 _1491 = frac(float2(_1486 * _1487, _1486 + _1487));
        float _1497 = _1478.x;
        float _1500 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1497)) * _1246;
        float2 _1501 = ((_1464 - _1465) + ((((_1491 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1518;
        do
        {
            _1504 = dot(_1462, _1462);
            _1505 = _1504 <= 9.9999997473787516355514526367188e-06f;
            if (_1505)
            {
                _1518 = _1501;
                break;
            }
            float2 _1509 = _1462 * rsqrt(_1504);
            _1518 = float2(dot(_1501, float2(-_1509.y, _1509.x)), -dot(_1501, _1509));
            break;
        } while(false);
        float2 _1525 = float2(_1518.x * 1.25f, _1518.y * ((_1518.y < 0.0f) ? 1.25f : 0.75f));
        float _1526 = length(_1525);
        float _1528 = _1254 + _1497;
        float _1532 = _1209 ? frac(_1528) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1528, 0.0f, 1.0f));
        float _1544 = _1478.y;
        float _1547 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1532) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1532)) * step(0.001000000047497451305389404296875f, smoothstep(_1500, 0.0f, _1526))) * step(_1216, _1544 - 0.100000001490116119384765625f);
        float _1550 = _1547 * _1463;
        float2 _1559 = max(float2(_1306 * _1353, _1306 - _1332) * _1269, max(float2(_1403 * _1450, _1403 - _1429) * _1366, float2(_1500 * _1547, _1500 - _1526) * _1463));
        float2 _1564 = (float4(((clamp(_1331 / _1306.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1297.x)) * _1353) * _1269, _1356, _1350).xy + float4(((clamp(_1428 / _1403.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1394.x)) * _1450) * _1366, _1453, _1447).xy) + float4(((clamp(_1525 / _1500.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1491.x)) * _1547) * _1463, _1550, _1544).xy;
        float _1566 = max(_1550, max(_1356, _1453));
        float4 _1569 = float4(_1564, _1566, 0.0f);
        float2 _1571 = _1258.xz * 1.0f;
        float2 _1572 = floor(_1571);
        float2 _1575 = frac(_1572 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1579 = _1575 + dot(_1575, _1575 + 34.345001220703125f.xx).xx;
        float _1580 = _1579.x;
        float _1581 = _1579.y;
        float2 _1585 = frac(float2(_1580 * _1581, _1580 + _1581));
        float2 _1588 = frac((_1572 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1592 = _1588 + dot(_1588, _1588 + 34.345001220703125f.xx).xx;
        float _1593 = _1592.x;
        float _1594 = _1592.y;
        float2 _1598 = frac(float2(_1593 * _1594, _1593 + _1594));
        float _1604 = _1585.x;
        float _1607 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1604)) * _1246;
        float2 _1608 = ((_1571 - _1572) + ((((_1598 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1623;
        do
        {
            if (_1311)
            {
                _1623 = _1608;
                break;
            }
            float2 _1614 = _1268 * rsqrt(_1310);
            _1623 = float2(dot(_1608, float2(-_1614.y, _1614.x)), -dot(_1608, _1614));
            break;
        } while(false);
        float2 _1630 = float2(_1623.x * 1.25f, _1623.y * ((_1623.y < 0.0f) ? 1.25f : 0.75f));
        float _1631 = length(_1630);
        float _1633 = _1256 + _1604;
        float _1637 = _1209 ? frac(_1633) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1633, 0.0f, 1.0f));
        float _1649 = _1585.y;
        float _1652 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1637) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1637)) * step(0.001000000047497451305389404296875f, smoothstep(_1607, 0.0f, _1631))) * step(_1216, _1649 - 0.100000001490116119384765625f);
        float _1655 = _1652 * _1269;
        float2 _1664 = _1258.xy * 1.0f;
        float2 _1665 = floor(_1664);
        float2 _1668 = frac(_1665 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1672 = _1668 + dot(_1668, _1668 + 34.345001220703125f.xx).xx;
        float _1673 = _1672.x;
        float _1674 = _1672.y;
        float2 _1678 = frac(float2(_1673 * _1674, _1673 + _1674));
        float2 _1681 = frac((_1665 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1685 = _1681 + dot(_1681, _1681 + 34.345001220703125f.xx).xx;
        float _1686 = _1685.x;
        float _1687 = _1685.y;
        float2 _1691 = frac(float2(_1686 * _1687, _1686 + _1687));
        float _1697 = _1678.x;
        float _1700 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1697)) * _1246;
        float2 _1701 = ((_1664 - _1665) + ((((_1691 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1716;
        do
        {
            if (_1408)
            {
                _1716 = _1701;
                break;
            }
            float2 _1707 = _1365 * rsqrt(_1407);
            _1716 = float2(dot(_1701, float2(-_1707.y, _1707.x)), -dot(_1701, _1707));
            break;
        } while(false);
        float2 _1723 = float2(_1716.x * 1.25f, _1716.y * ((_1716.y < 0.0f) ? 1.25f : 0.75f));
        float _1724 = length(_1723);
        float _1726 = _1256 + _1697;
        float _1730 = _1209 ? frac(_1726) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1726, 0.0f, 1.0f));
        float _1742 = _1678.y;
        float _1745 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1730) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1730)) * step(0.001000000047497451305389404296875f, smoothstep(_1700, 0.0f, _1724))) * step(_1216, _1742 - 0.100000001490116119384765625f);
        float _1748 = _1745 * _1366;
        float2 _1757 = _1258.zy * 1.0f;
        float2 _1758 = floor(_1757);
        float2 _1761 = frac(_1758 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1765 = _1761 + dot(_1761, _1761 + 34.345001220703125f.xx).xx;
        float _1766 = _1765.x;
        float _1767 = _1765.y;
        float2 _1771 = frac(float2(_1766 * _1767, _1766 + _1767));
        float2 _1774 = frac((_1758 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1778 = _1774 + dot(_1774, _1774 + 34.345001220703125f.xx).xx;
        float _1779 = _1778.x;
        float _1780 = _1778.y;
        float2 _1784 = frac(float2(_1779 * _1780, _1779 + _1780));
        float _1790 = _1771.x;
        float _1793 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1790)) * _1246;
        float2 _1794 = ((_1757 - _1758) + ((((_1784 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1809;
        do
        {
            if (_1505)
            {
                _1809 = _1794;
                break;
            }
            float2 _1800 = _1462 * rsqrt(_1504);
            _1809 = float2(dot(_1794, float2(-_1800.y, _1800.x)), -dot(_1794, _1800));
            break;
        } while(false);
        float2 _1816 = float2(_1809.x * 1.25f, _1809.y * ((_1809.y < 0.0f) ? 1.25f : 0.75f));
        float _1817 = length(_1816);
        float _1819 = _1256 + _1790;
        float _1823 = _1209 ? frac(_1819) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1819, 0.0f, 1.0f));
        float _1835 = _1771.y;
        float _1838 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1823) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1823)) * step(0.001000000047497451305389404296875f, smoothstep(_1793, 0.0f, _1817))) * step(_1216, _1835 - 0.100000001490116119384765625f);
        float _1841 = _1838 * _1463;
        float2 _1855 = (float4(((clamp(_1630 / _1607.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1598.x)) * _1652) * _1269, _1655, _1649).xy + float4(((clamp(_1723 / _1700.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1691.x)) * _1745) * _1366, _1748, _1742).xy) + float4(((clamp(_1816 / _1793.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1784.x)) * _1838) * _1463, _1841, _1835).xy;
        float4 _1860 = float4(_1855, max(_1841, max(_1655, _1748)), 0.0f);
        float _1862 = step(_1559.x, 0.00999999977648258209228515625f);
        float2 _1875 = max(_1559, (max(float2(_1607 * _1652, _1607 - _1631) * _1269, max(float2(_1700 * _1745, _1700 - _1724) * _1366, float2(_1793 * _1838, _1793 - _1817) * _1463)) * float2(0.661900997161865234375f, 1.0f)) * _1862);
        float _1880 = clamp(dot(_422, _545), 0.0f, 1.0f);
        float _1889 = max(_1569.zw * step(0.00999999977648258209228515625f, _1566), _1860.zw * _1862).x * (_1880 * lerp(0.4000000059604644775390625f, 1.0f, smoothstep(0.0f, 4.0f, abs(_18_m2[1].y) / _423)));
        float2 _1890 = (_1569.xy + (_1860.xy * _1862)).xy;
        float3 _1901 = normalize(float3(_1890 * (2.5f * _1880), max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1890, _1890), 0.0f, 1.0f)))));
        float3 _1902 = float3(_1901.x, _1901.y, 0.0f.xxx.z);
        float2 _1903 = _1901.xy;
        _1902.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1903, _1903), 0.0f, 1.0f)));
        float3 _1910 = normalize(_1902);
        float3 _1911 = cross(_545, float3(0.0f, 1.0f, 0.0f));
        bool3 _1914 = (dot(_1911, _1911) > 6.103515625e-05f).xxx;
        float3 _1915 = normalize(_1911);
        float3 _1916 = float3(_1914.x ? _1915.x : float3(1.0f, 0.0f, 0.0f).x, _1914.y ? _1915.y : float3(1.0f, 0.0f, 0.0f).y, _1914.z ? _1915.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1920 = _1910.y;
        float _1927 = _1875.x * 4.0f;
        float _1937 = clamp(dot(_1910, normalize(float3(0.0f, -1.0f, 0.75f))), 0.0f, 1.0f);
        float _1943 = (0.60000002384185791015625f * _1889) * _1927;
        float _1946 = (1.0f - _1943) + (clamp(clamp(clamp(_1875.y * 17.54000091552734375f, 0.0f, 1.0f), 0.0f, 1.0f) + clamp(1.60000002384185791015625f * _1920, 0.0f, 1.0f), 0.0f, 1.0f) * _1943);
        float _1949 = smoothstep(0.60000002384185791015625f, 1.0f, _1946);
        _1960 = normalize(((_1916 * _1910.x) + (cross(_1916, _545) * _1920)) + (_545 * _1910.z));
        _1961 = _1247 + (2.0f * _648);
        _1962 = _1889 * _1927;
        _1963 = ((lerp(0.0500000007450580596923828125f, 1.7999999523162841796875f, (_1937 * _1937) * _1937) * _1927) * _1949) * _1889;
        _1964 = lerp(1.0f, 0.800000011920928955078125f * lerp(0.5f, 1.0f, _1949), _1889);
        _1965 = (_494 * _1946) * _1249;
        _1966 = (_461 * _1946) * _1249;
    }
    else
    {
        _1960 = _545;
        _1961 = 1.0f;
        _1962 = 0.0f;
        _1963 = 0.0f;
        _1964 = 1.0f;
        _1965 = _494;
        _1966 = _461;
    }
    float3 _2081;
    float3 _2082;
    float3 _2083;
    float _2084;
    [branch]
    if ((_637 - _51_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1971 = _431.xxx;
        float3 _1973 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1974 = float3(_1971.x ? _1973.x : _11.x, _1971.y ? _1973.y : _11.y, _1971.z ? _1973.z : _11.z);
        float3 _1977 = _1974 * _20_m89.z;
        float3 _1979 = float3(_1971.x ? _9.xzy.x : _9.x, _1971.y ? _9.xzy.y : _9.y, _1971.z ? _9.xzy.z : _9.z);
        float3 _1981 = abs(_1979) - 0.20000000298023223876953125f.xxx;
        float3 _1984 = max((_1981 * _1981) * _1981, 6.103515625e-05f.xxx);
        float3 _1987 = _1984 / dot(_1984, 1.0f.xxx).xxx;
        float4 _2010 = ((_54.SampleBias(_27, _1977.xz, _20_m16) * _1987.y) + (_54.SampleBias(_27, _1977.xy, _20_m16) * _1987.z)) + (_54.SampleBias(_27, _1977.zy, _20_m16) * _1987.x);
        float _2018 = clamp(_637 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1974.y) * clamp(_637 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _2024 = _2018 * (2.0f - _2018);
        float _2031 = smoothstep(2.0f - _2024, 2.349999904632568359375f - _2024, ((_1979.y * 0.4000000059604644775390625f) + 0.60000002384185791015625f) + _2010.z) * ((_468 * _468) * float(gl_FrontFacing));
        float3 _2033 = _2031.xxx;
        float2 _2039 = (_2010.xy * 2.0f) - 1.0f.xx;
        float3 _2040 = float3(_2039.x, _2039.y, _382.z);
        float2 _2041 = _2039.xy;
        _2040.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2041, _2041), 0.0f, 1.0f)));
        float2 _2049 = _2040.xy * 2.0f;
        float3 _2051 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2049.x, _2049.y, _2040.z), _2033);
        float3 _2055 = _2051 * rsqrt(max(6.103515625e-05f, dot(_2051, _2051)));
        float _2056 = _545.y;
        float _2059 = step(0.00999999977648258209228515625f, 1.0f - (_2056 * _2056));
        float _2063 = lerp(_545.z, _2056, _2059);
        float3 _2070 = (float3(0.0f, _2059, 1.0f - _2059) - (_545 * _2063)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2063 * _2063)));
        _2081 = ((cross(_2070, _545) * _2055.x) + (_2070 * _2055.y)) + (_545 * _2055.z);
        _2082 = lerp(_1965 * 1.0f, 0.3079999983310699462890625f.xxx, _2033);
        _2083 = lerp(_1966 * 1.0f, 0.87999999523162841796875f.xxx, _2033);
        _2084 = lerp(0.0f, 0.0f, _2031);
    }
    else
    {
        _2081 = _545;
        _2082 = _1965;
        _2083 = _1966;
        _2084 = 0.0f;
    }
    float _2086 = 0.959999978542327880859375f - (_2084 * 0.959999978542327880859375f);
    float3 _2087 = _2083 * _2086;
    float3 _2090 = lerp(0.039999999105930328369140625f.xxx * _467, _2083, _2084.xxx);
    float3 _2091 = _2082 * _2086;
    bool _2098 = (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) < 0.9900000095367431640625f;
    float2 _2111 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2111.y = -_2111.y;
    float2 _2127 = lerp(((sqrt(sqrt(abs(_2111 * 0.5f))) * float2(int2(sign(_2111)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2098).xx);
    float4 _2129 = float4(_2127.x, _2127.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2129.z = 1.0f;
    _2129.w = _2098 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2142 = lerp(-_38_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2146 = normalize(float3(_2142.x, 6.103515625e-05f, _2142.z));
    float3 _2156 = lerp(_38_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2160 = _2156 * lerp(_38_m3.w, 1.0f, _20_m91.w);
    int _2164 = int(_601.x);
    int _2165 = int(_601.y);
    float4 _2169 = _42.Load(int3(int3(_2164, _2165, 0).xy, 0));
    float _2174 = _2169.y;
    float _2177 = lerp(lerp(1.0f, _2169.x, _40_m6.x), 1.0f, _20_m80.z);
    float _2178 = dot(_2081, _2142);
    float3 _2185 = _2091 * _20_m79.z;
    float3 _2186 = _2185 * 0.64999997615814208984375f;
    float _2190 = dot(_2087, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2203 = clamp(-dot(_2146.xz, normalize(_611.xz)), 0.0f, 1.0f);
    float _2207 = 1.0f - _20_m91.x;
    float4 _2221 = _52.SampleLevel(_26, float2((clamp(lerp(_2178, ((-_2178) * ((_2178 * 0.5f) - 1.0f)) + 0.5f, (_2203 * smoothstep(0.25f, 0.75f, 1.0f - abs(_611.y))) * _2207) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2222 = _2221.w;
    float _2224 = _2221.x;
    float _2225 = _2221.y;
    float _2226 = _2221.z;
    float _2231 = max(max(_2224, _2225), _2226) - min(min(_2224, _2225), _2226);
    float4 _2239 = _52.SampleLevel(_26, float2((dot(_2081, _611) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2240 = _2239.w;
    float _2241 = _468 * _2174;
    float _2248 = min(min(_2174, _468), _2222);
    float _2249 = _2240 * _2241;
    float3 _2253 = ((clamp(dot(_545, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1152, 1.0f.xxx, (_20_m80.y * _2248).xxx);
    float3 _2255 = _2248.xxx;
    float3 _2278 = _2177.xxx;
    float3 _2279 = lerp((_2253 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1153), 1.5f), clamp(_1153, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2160, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2160, _2255) + ((_2253 * clamp(_1153, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2156 * _20_m91.y)))) * _20_m79.y, _2278);
    float3 _2280 = lerp(lerp(lerp(dot(_2186, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2186, 1.2000000476837158203125f.xxx), _2185, clamp((_2241 * _2240) + _2222, 0.0f, 1.0f).xxx), _2087, _2255);
    float3 _2286 = _2280 * ((1.0f - _2231).xxx + (_2221.xyz * _2231));
    float3 _2295 = lerp(lerp(_2185, lerp(_2190.xxx, _2087, 1.2000000476837158203125f.xxx), _2249.xxx), _2286 * clamp(dot(_2280, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2286, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2278);
    float4 _2299 = float4(_2295, _2177);
    float3 _2300 = _2279 * _2295;
    float _2301 = lerp(_2249, _2248, _2177);
    float3 _2307 = (_2279 * (((_2301 * 0.5f) + 0.5f) * lerp(_20_m79.z, 1.0f, _2301))) * 1.0f;
    float _2310 = lerp(0.5f, _2142.y, _2177);
    float3 _2313 = mul(_571, float3(_586.x, _2310, _586.z));
    float3 _2315 = _2142 * _2177;
    float3 _2321 = normalize(_584 + (_564 * ((_51_m34 * 2.0f) - 1.0f)));
    float3 _2322 = normalize(_2315 + (float3(_2313.x, _2313.y, _2313.z) * 2.0f)) + _422;
    float3 _2326 = _2322 * rsqrt(max(6.103515625e-05f, dot(_2322, _2322)));
    float _2327 = dot(_2321, _2326);
    float3 _2335 = clamp(pow(max(sqrt(1.0f - (_2327 * _2327)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _467, 0.0f.xxx, 1.0f.xxx);
    float _2338 = _595 * _595;
    float3 _2348 = (_2335 * _53.SampleLevel(_26, float2(_2335.x, float(_2327 > 0.0f) * _2338), 0.0f).xyz) * _595;
    float _2369 = dot(normalize(_584 + (_564 * ((_51_m35 * 2.0f) - 1.0f))), _2326);
    float3 _2386 = ((((((_2348 * _2090) * _51_m36) * 5.0f) * _1961) + lerp(((pow(max(sqrt(1.0f - (_2369 * _2369)), 9.9999997473787516355514526367188e-05f), float(int(200.0f * max(1.0f - _51_m38, 0.0f)))).xxx * _595) * (_51_m42.xyz * _465.w)) * _1961, 0.0f.xxx, max(max(_2348.x, _2348.y), _2348.z).xxx)) * _2307) * _20_m92.w;
    float3 _2392 = float3(_611.x, _2310, _611.z);
    float3 _2402 = normalize((_2315 + ((_2392 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2392, _2392)))) * 2.0f)) + (_422 * (2.0f + _2177)));
    float3 _2407 = normalize(float3(-_1960.z, 0.001000000047497451305389404296875f, _1960.x));
    float _2429 = (1.0f - _51_m6) + (_472 * _51_m6);
    float3 _2431 = (_2300 * _2429) + ((_2386 * _1964) + (((_2300 + _2386) * _1963) + (((((smoothstep(0.1500000059604644775390625f, 0.100000001490116119384765625f, abs(dot(_2402, _2407))) * smoothstep(0.070000000298023223876953125f, 0.0199999995529651641845703125f, abs(dot(_2402, cross(_1960, _2407))))) * max(0.0f, dot(_1960, _2402))) * 2.0f) * _1962).xxx * _2307)));
    float _2432 = dot(_2431, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2435 = clamp(_2432 - 0.5f, 0.0f, 0.5f);
    float3 _2471 = normalize(cross(_611, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float2 _2495 = normalize(mul(float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz), _2081).xy) * float2(_20_m5.y / _20_m5.x, 1.0f);
    float2 _2501 = _20_m5.zw - 1.0f.xx;
    float2 _2502 = 2.0f.xx - _20_m5.zw;
    float _2536 = dot(_2146, _2081);
    float _2547 = dot(_422, _2081);
    float _2551 = 1.0f - _2177;
    float3 _2578 = lerp(_2432.xxx, _2431, ((_2435 * _2435) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_600 + ((_2495 * _20_m88.w) * 0.006000000052154064178466796875f), _2501, _2502), 0.0f).x) + _20_m2.w)) - _403)) * _20_m87.w) * min(min(clamp(dot(_525, _2471) + 1.0f, 0.0f, 1.0f), _468), _2174)) * (lerp(0.25f.xxx, _2087, _20_m88.z.xxx) * clamp(dot(_2471, _2081), 0.0f, 1.0f))) + ((((((lerp(_1151 * (1.0f / max(max(max(_1151.x, _1151.y), _1151.z) * 0.5f, 1.0f)), _2160, _2278) * clamp(lerp(dot(_1150.xyz, _2081) * _1150.w, ((-_2536) * ((_2536 * 0.5f) - 1.0f)) + 0.5f, _2177), 0.0f, 1.0f)) * ((_2551 + (_2203 * _2177)) * _2207)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, 1.0f - abs(_2547))) * min(_468, _2174)) * (_2551 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2190) * _2177))) * max(0.1500000059604644775390625f.xxx, _2087)));
    float2 _2579 = float2(_601);
    float2 _2581 = floor(_2579 * 0.03125f);
    int _2589 = int((_2581.x + (_2581.y * _36_m5)) * 8.0f);
    float _2596 = floor(_403 - (_20_m3.y * _36_m11));
    float _2600 = clamp(_2596, 0.0f, _36_m7 - 1.0f);
    int _2602 = int(_2600 * 8.0f);
    float3 _2604;
    _2604 = _2578;
    float3 _2605;
    [loop]
    for (int _2607 = 0; _2607 <= 7; _2604 = _2605, _2607++)
    {
        uint _2625 = (_2596 <= _2600) ? (_32.Load(uint(_2589 + _2607) * 4 + 0) & _32.Load(uint((_20_m21.y + _2602) + _2607) * 4 + 0)) : 0u;
        uint _2626 = uint(_2607);
        _2605 = _2604;
        uint _2631;
        float3 _2628;
        [loop]
        for (uint _2630 = _2625; _2630 != 0u; _2605 = _2628, _2630 = _2631)
        {
            uint _2635 = firstbitlow(_2630);
            _2631 = _2630 ^ (1u << (_2635 & 31u));
            int _2641 = int((32u * _2626) + _2635) * 8;
            int _2644 = _2641 + 1;
            int _2647 = _2641 + 2;
            int _2650 = _2641 + 3;
            int _2653 = _2641 + 4;
            int _2656 = _2641 + 5;
            int _2659 = _2641 + 6;
            int _2662 = _2641 + 7;
            uint _2666 = uint(_38_m6[_2656].w);
            float _2741;
            if ((_2666 & 1u) == 1u)
            {
                uint _2672 = asuint(_38_m6[_2656].x);
                uint _2679 = asuint(_38_m6[_2656].y);
                uint _2686 = asuint(_38_m6[_2656].z);
                uint _2693 = asuint(_38_m6[_2659].x);
                uint _2700 = asuint(_38_m6[_2659].y);
                uint _2707 = asuint(_38_m6[_2659].z);
                float3 _2726 = abs(mul(float4(_518 - _38_m6[_2644].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2672).x, spvUnpackHalf2x16(_2686).x, spvUnpackHalf2x16(_2700).x, 0.0f), float4(spvUnpackHalf2x16(_2672 >> 16u).x, spvUnpackHalf2x16(_2686 >> 16u).x, spvUnpackHalf2x16(_2700 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2679).x, spvUnpackHalf2x16(_2693).x, spvUnpackHalf2x16(_2707).x, 0.0f), float4(spvUnpackHalf2x16(_2679 >> 16u).x, spvUnpackHalf2x16(_2693 >> 16u).x, spvUnpackHalf2x16(_2707 >> 16u).x, 0.0f))).xyz);
                float _2733 = _38_m6[_2662].x * 0.5f;
                float _2739 = 1.0f - clamp((max(max(_2726.x, _2726.y), _2726.z) - (_2733 + 0.5f)) / (0.5f - _2733), 0.0f, 1.0f);
                _2741 = _2739 * _2739;
            }
            else
            {
                _2741 = 1.0f;
            }
            if (false || (_2741 < 0.001000000047497451305389404296875f))
            {
                _2628 = _2605;
                continue;
            }
            float3 _3434;
            if (_38_m6[_2641].w < 1.5f)
            {
                float3 _3433;
                do
                {
                    uint _2754 = asuint(_38_m6[_2650].w);
                    if ((_2754 == 16u) || ((_38_m6[_2650].z + _20_m91.z) < 0.5f))
                    {
                        _3433 = _2605;
                        break;
                    }
                    bool _2766 = (uint(_38_m6[_2641].w) & 1u) == 0u;
                    bool _2770 = (!_2766) && (_38_m6[_2647].z > 0.0f);
                    bool _2771 = _2754 == 4u;
                    float _2772 = float(_2766);
                    float _2780 = (0.5f + (0.5f * _38_m6[_2647].y)) - abs(_38_m6[_2647].x);
                    float _2781 = _38_m6[_2647].y - _2780;
                    float _2788 = abs(max((1.0f - abs(_2780)) - abs(_2781), 0.00048828125f));
                    float3 _2792 = normalize(float3(_2780, _2781, (_38_m6[_2647].x >= 0.0f) ? _2788 : (-_2788)));
                    float _2798 = lerp(_38_m6[_2659].w, max(2.0f * _38_m6[_2653].y, 0.100000001490116119384765625f), float(_2771));
                    float3 _2803 = _38_m6[_2644].xyz - _518;
                    float3 _2804 = -_2792;
                    float3 _2809 = lerp(_2803, _2804 * dot(_2803, _2804), (float(_2771 && (_38_m6[_2653].z > 0.5f)) * _2772).xxx);
                    float _2810 = dot(_2809, _2809);
                    float _2811 = rsqrt(_2810);
                    float3 _2812 = _2809 * _2811;
                    float3 _2845;
                    float _2846;
                    if (_2770)
                    {
                        float3 _2816 = (_2792 * _38_m6[_2647].z) * 0.5f;
                        float3 _2817 = _2809 - _2816;
                        float3 _2818 = _2809 + _2816;
                        float _2819 = length(_2817);
                        float _2820 = length(_2818);
                        float3 _2829 = normalize(cross(cross(_2792, _2812), _2792));
                        _2845 = _2829;
                        _2846 = ((1.0f / ((((_2819 * _2820) + dot(_2817, _2818)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2829, _2817) / _2819) + (dot(_2829, _2818) / _2820)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_38_m6[_2647].z * _2811, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2845 = _2812;
                        _2846 = 1.0f;
                    }
                    float _2868;
                    if (_2798 < 0.0f)
                    {
                        float _2862 = _2810 * (_38_m6[_2644].w * _38_m6[_2644].w);
                        float _2865 = clamp(1.0f - (_2862 * _2862), 0.0f, 1.0f);
                        _2868 = lerp(1.0f / (_2810 + 1.0f), _2846, float(_2770)) * (_2865 * _2865);
                    }
                    else
                    {
                        float3 _2851 = _2809 * _38_m6[_2644].w;
                        _2868 = _2846 * pow(1.0f - clamp(dot(_2851, _2851), 0.0f, 1.0f), _2798);
                    }
                    float _2873 = clamp((dot(_2845, _2804) - _38_m6[_2647].z) * _38_m6[_2647].w, 0.0f, 1.0f);
                    float _2876 = _2868 * lerp(1.0f, _2873 * _2873, _2772);
                    int _2878 = int(_38_m6[_2662].w);
                    float _2982;
                    if ((!_2770) && (_2878 >= 0))
                    {
                        uint _2884 = uint(_2878);
                        float2 _2975;
                        [branch]
                        if (_2772 != 0.0f)
                        {
                            float4 _2965 = mul(_60_m1[_2884], float4(_518.x, _643, _518.z, 1.0f));
                            _2975 = _60_m0[_2884].xy + (clamp(_2965.xy / _2965.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2884].zw);
                        }
                        else
                        {
                            float3 _2899 = mul(float4(-_2809, 0.0f), _60_m1[_2884]).xyz;
                            float3 _391 = _2899;
                            float3 _390 = _2899;
                            float3 _389 = abs(_2899);
                            uint _2908 = uint(int(_389.y > _389.x));
                            uint _2914 = (_389.z > _389[_2908]) ? 2u : _2908;
                            uint _2920 = (_2914 * 2u) + uint(_390[_2914] < 0.0f);
                            float _2924 = abs(_391[_2920 / 2u]);
                            float _2944 = 0.5f - (0.000244140625f / _60_m0[_2884].w);
                            _2975 = _60_m0[_2884].xy + (clamp(float2((float(_2920) + ((((_391[uint(_358[_2920].x)] * _359[_2920].x) / _2924) * _2944) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_391[uint(_358[_2920].y)] * _359[_2920].y) / _2924) * _2944)), 0.0f.xx, 1.0f.xx) * _60_m0[_2884].zw);
                        }
                        _2982 = _2876 * _58.SampleLevel(_26, _2975, 0.0f).x;
                    }
                    else
                    {
                        _2982 = _2876;
                    }
                    float _2983 = _2982 * _2741;
                    float3 _3432;
                    do
                    {
                        float3 _3431;
                        [branch]
                        if (_2983 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2771)
                            {
                                _3432 = lerp(_2605, _38_m6[_2641].xyz, (_2983 * (_38_m6[_2653].x * ((1.0f - _38_m6[_2653].w) + (smoothstep(-0.5f, 0.5f, dot(_546, _2845)) * _38_m6[_2653].w)))).xxx);
                                break;
                            }
                            float _3003 = dot(_2081, _2845);
                            float _3004 = clamp(_3003, 0.0f, 1.0f);
                            float _3307;
                            if (_2754 != 0u)
                            {
                                bool _3010 = _2766 || ((_2666 & 2u) != 0u);
                                int _3059;
                                if (_3010)
                                {
                                    _3059 = int(_38_m6[_2650].x);
                                }
                                else
                                {
                                    uint _3014 = asuint(_38_m6[_2647].w);
                                    uint _3016 = asuint(_38_m6[_2650].x);
                                    float3 _3017 = _518 - _38_m6[_2644].xyz;
                                    float3 _3018 = abs(_3017);
                                    float _3019 = _3018.x;
                                    float _3020 = _3018.y;
                                    float _3022 = _3018.z;
                                    int _3054;
                                    if ((_3019 > _3020) && (_3019 > _3022))
                                    {
                                        _3054 = int((_3017.x > 0.0f) ? (_3014 >> 24u) : ((_3014 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3046;
                                        if (_3020 > _3022)
                                        {
                                            _3046 = int((_3017.y > 0.0f) ? ((_3014 >> 8u) & 255u) : (_3014 & 255u));
                                        }
                                        else
                                        {
                                            _3046 = int((_3017.z > 0.0f) ? ((_3016 >> 8u) & 255u) : (_3016 & 255u));
                                        }
                                        _3054 = _3046;
                                    }
                                    _3059 = (_3054 < 80) ? _3054 : (-1);
                                }
                                bool _3060 = _3059 >= 0;
                                float _3306;
                                if (_3060)
                                {
                                    float3 _3067 = _518 - _38_m6[_2644].xyz;
                                    float4 _3087 = mul(_40_m10[_3059], float4((_518 - ((_3067 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3067, _3067)))) * _40_m11[_3059].x)) + (_546 * (_40_m11[_3059].y * 5.0f)), 1.0f));
                                    float _3088 = _3087.w;
                                    float3 _3091 = _3087.xyz / _3088.xxx;
                                    float2 _3092 = _3091.xy;
                                    float3 _3100 = _3091.xyz;
                                    bool3 _3101 = bool3(_3100.x <= 0.0f.xxx.x, _3100.y <= 0.0f.xxx.y, _3100.z <= 0.0f.xxx.z);
                                    bool3 _3102 = bool3(_3100.x >= 1.0f.xxx.x, _3100.y >= 1.0f.xxx.y, _3100.z >= 1.0f.xxx.z);
                                    float _3105 = _3091.z;
                                    float2 _3116 = ((_3092 * (_40_m12[_3059].zw - _40_m12[_3059].xy)) + _40_m12[_3059].xy).xy * _40_m13.zw;
                                    float2 _3118 = floor(_3116 + 0.5f.xx);
                                    float2 _3119 = _3116 - _3118;
                                    float _3121 = _3119.x + 0.5f;
                                    float _3122 = _3121 * _3121;
                                    float _3125 = 1.0f - _3119.x;
                                    float _3126 = min(_3119.x, 0.0f);
                                    float _3129 = _3119.x + 1.0f;
                                    float _3130 = max(_3119.x, 0.0f);
                                    float _3142 = _3119.y + 0.5f;
                                    float _3143 = _3142 * _3142;
                                    float _3146 = 1.0f - _3119.y;
                                    float _3147 = min(_3119.y, 0.0f);
                                    float _3150 = _3119.y + 1.0f;
                                    float _3151 = max(_3119.y, 0.0f);
                                    float3 _3163 = float3(0.1599999964237213134765625f * _3125, 0.1599999964237213134765625f * ((_3129 - (_3130 * _3130)) + 1.0f), _3122 * 0.07999999821186065673828125f);
                                    float3 _3164 = float3(0.1599999964237213134765625f * ((_3122 * 0.5f) - _3119.x), 0.1599999964237213134765625f * ((_3125 - (_3126 * _3126)) + 1.0f), 0.1599999964237213134765625f * _3129) + _3163;
                                    float3 _3166 = float3(0.1599999964237213134765625f * _3146, 0.1599999964237213134765625f * ((_3150 - (_3151 * _3151)) + 1.0f), _3143 * 0.07999999821186065673828125f);
                                    float3 _3167 = float3(0.1599999964237213134765625f * ((_3143 * 0.5f) - _3119.y), 0.1599999964237213134765625f * ((_3146 - (_3147 * _3147)) + 1.0f), 0.1599999964237213134765625f * _3150) + _3166;
                                    float3 _3173 = ((_3163 / _3164) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.xxx;
                                    float3 _3175 = ((_3166 / _3167) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.yyy;
                                    float2 _3177 = _3118 * _40_m13.xy;
                                    float _3178 = _3173.x;
                                    float _3179 = _3175.x;
                                    float _3182 = _3173.y;
                                    float _3185 = _3173.z;
                                    float _3188 = _3175.y;
                                    float _3195 = _3175.z;
                                    float _3202 = _3164.x;
                                    float _3203 = _3167.x;
                                    float _3205 = _3164.y;
                                    float _3207 = _3164.z;
                                    float _3209 = _3167.y;
                                    float _3213 = _3167.z;
                                    float _3271 = (((((((_3202 * _3203) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3178, _3179), _381).xy, _3105)) + ((_3205 * _3203) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3182, _3179), _381).xy, _3105))) + ((_3207 * _3203) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3185, _3179), _381).xy, _3105))) + ((_3202 * _3209) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3178, _3188), _381).xy, _3105))) + ((_3205 * _3209) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3182, _3188), _381).xy, _3105))) + ((_3207 * _3209) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3185, _3188), _381).xy, _3105))) + ((_3202 * _3213) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3178, _3195), _381).xy, _3105));
                                    float2 _3292 = min(_3092, 1.0f.xx - _3092);
                                    _3306 = _3060 ? lerp(1.0f, (any(bool3(_3101.x || _3102.x, _3101.y || _3102.y, _3101.z || _3102.z)) || ((asuint(_3105) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3271 + ((_3205 * _3213) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3182, _3195), _381).xy, _3105))) + ((_3207 * _3213) * _41.SampleCmpLevelZero(_28, float3(_3177 + float2(_3185, _3195), _381).xy, _3105))), _3010 ? min(_40_m11[_3059].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_40_m11[_3059].z - _3088) * 0.25f, min(_3292.x, _3292.y)))) : _40_m11[_3059].w) : 1.0f;
                                }
                                else
                                {
                                    _3306 = clamp(dot(_525, _2845) + 1.0f, 0.0f, 1.0f);
                                }
                                _3307 = _3306;
                            }
                            else
                            {
                                _3307 = 1.0f;
                            }
                            float _3380;
                            float3 _3381;
                            float _3382;
                            float3 _3383;
                            float3 _3384;
                            [branch]
                            if (_2754 == 0u)
                            {
                                float3 _3360 = _38_m6[_2641].xyz * _2983;
                                float3 _3373 = _2299.xyz;
                                _3380 = _2983;
                                _3381 = (_38_m6[_2641].xyz * ((1.0f - _38_m6[_2653].y) + ((1.0f / max(1.0f, max(max(_3360.x, _3360.y), _3360.z) * lerp(0.75f, 0.5f, _2551))) * _38_m6[_2653].y))) * lerp(0.25f * _38_m6[_2653].x, 1.0f, clamp(_3003 + 0.5f, 0.0f, 1.0f));
                                _3382 = _3004;
                                _3383 = _3373;
                                _3384 = _3373;
                            }
                            else
                            {
                                float _3355;
                                float _3356;
                                float3 _3357;
                                float3 _3358;
                                if (_2754 == 3u)
                                {
                                    _3355 = _2983 * (smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_600 + ((_2495 * _38_m6[_2653].x) * 0.006000000052154064178466796875f), _2501, _2502), 0.0f).x) + _20_m2.w)) - _403) * _3307);
                                    _3356 = clamp(dot(_2081, -normalize(cross(_611, cross(_611, _2845)))), 0.0f, 1.0f);
                                    _3357 = lerp(0.5f.xxx, _2087, _38_m6[_2653].y.xxx);
                                    _3358 = 0.0f.xxx;
                                }
                                else
                                {
                                    bool _3316 = _2754 == 1u;
                                    float _3326;
                                    float3 _3327;
                                    if (_3316)
                                    {
                                        _3326 = clamp(clamp(_3003 + _38_m6[_2653].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3307;
                                        _3327 = _2091 * _38_m6[_2653].y;
                                    }
                                    else
                                    {
                                        _3326 = _3004;
                                        _3327 = 0.0f.xxx;
                                    }
                                    bool3 _3328 = _3316.xxx;
                                    _3355 = _2983;
                                    _3356 = _3326;
                                    _3357 = float3(_3328.x ? _2087.x : 0.0f.xxx.x, _3328.y ? _2087.y : 0.0f.xxx.y, _3328.z ? _2087.z : 0.0f.xxx.z);
                                    _3358 = _3327;
                                }
                                _3380 = _3355;
                                _3381 = _38_m6[_2641].xyz;
                                _3382 = _3356;
                                _3383 = _3357;
                                _3384 = _3358;
                            }
                            float3 _3421;
                            [branch]
                            if (_2754 != 3u)
                            {
                                float3 _3389 = _2845 + _422;
                                float _3394 = dot(_2321, _3389 * rsqrt(max(6.103515625e-05f, dot(_3389, _3389))));
                                float3 _3402 = clamp(pow(max(sqrt(1.0f - (_3394 * _3394)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _467, 0.0f.xxx, 1.0f.xxx);
                                _3421 = (((((((_3402 * _53.SampleLevel(_26, float2(_3402.x, float(_3394 > 0.0f) * _2338), 0.0f).xyz) * _595) * _2090) * _51_m36) * 5.0f) * _1961) * 1.0f) * _38_m6[_2662].z;
                            }
                            else
                            {
                                _3421 = 0.0f.xxx;
                            }
                            float3 _3424 = _3381 * _3380;
                            _3431 = _2605 + (((_3424 * lerp(_3384, _3383, _3382.xxx)) * _2429) + ((_3424 * _3421) * _3382));
                        }
                        else
                        {
                            _3431 = _2605;
                        }
                        _3432 = _3431;
                        break;
                    } while(false);
                    _3433 = _3432;
                    break;
                } while(false);
                _3434 = _3433;
            }
            else
            {
                _3434 = _2605;
            }
            _2628 = _3434;
        }
    }
    float3 _3474;
    [branch]
    if (_51_m12 > 0.5f)
    {
        _3474 = lerp(lerp(0.5f.xxx, lerp(dot(_2604, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2604, _51_m14.xxx), _51_m15.xxx) * _51_m13, _51_m26.xyz, _51_m26.w.xxx) + ((_51_m27.xyz * smoothstep(1.0f - _51_m16, 1.0f, 1.0f - clamp(_2547, 0.0f, 1.0f))) * _51_m17);
    }
    else
    {
        _3474 = _2604;
    }
    float4 _3481 = float4(_3474 * _20_m20.y, _472);
    _3481.w = (_51_m8 == 1.0f) ? _472 : 1.0f;
    float4 _3866;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float3 _3490 = -_422;
        float _3506 = _643 * _20_m46.w;
        float _3511 = max(0.00999999977648258209228515625f, _3506 + _20_m47.w);
        float3 _3525 = exp(_20_m45.xyz * ((-max(0.0f, (_423 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3511)) / _3511) * exp(_3506 + _20_m48.w))));
        float _3528 = dot(_3490, _20_m44.xyz);
        float _3534 = _20_m45.w * _20_m45.w;
        float _3538 = (1.0f + _3534) - ((2.0f * _20_m45.w) * _3528);
        float3 _3858;
        float _3859;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3689 = (uint3(int3(_2164, _2165, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3690 = _3689.y;
            uint _3691 = _3689.z;
            uint _3694 = _3689.x + (_3690 * _3691);
            uint _3696 = _3690 + (_3691 * _3694);
            uint _3698 = _3691 + (_3694 * _3696);
            uint _3700 = _3694 + (_3696 * _3698);
            float _3722 = dot(_3490, -_18_m0[2].xyz);
            float3 _3729 = _518 - _18_m11.xyz;
            float _3731 = (_20_m55.w * ((_3722 > 5.9604644775390625e-08f) ? (1.0f / _3722) : 0.0f)) * (1.0f / _423);
            float _3732 = _3729.y;
            float _3733 = _3731 * _3732;
            float _3735 = _18_m11.y + _3733;
            float _3736 = _3732 - _3733;
            float _3738 = (1.0f - _3731) * _423;
            float _3752 = max(-127.0f, _20_m49.z * _3736);
            float _3776 = max(-127.0f, _20_m52.x * _3736);
            float _3787 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3735 - _20_m49.x)))) * ((abs(_3752) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3752)) / _3752) : (0.693147182464599609375f - (0.2402265071868896484375f * _3752)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3735 - _20_m52.z)))) * ((abs(_3776) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3776)) / _3776) : (0.693147182464599609375f - (0.2402265071868896484375f * _3776))));
            float _3809 = clamp((_423 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3812 = clamp((max(clamp(exp2(-(_3787 * _3738)), 0.0f, 1.0f), _20_m51.w) + clamp((_423 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3809, 0.0f, 1.0f);
            float4 _3852 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_26, float3((_2579 + ((((float3(uint3(_3700, _3696 + (_3698 * _3700), _387) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_403 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_403 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3858 = _3852.xyz + (((_20_m51.xyz * (1.0f - _3812)) + (((_20_m54.xyz * pow(clamp(dot(_422, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3787 * max(_3738 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3809))) * _3852.w);
            _3859 = _3852.w * _3812;
        }
        else
        {
            float3 _3565 = _518 - _18_m11.xyz;
            float _3567 = _3565.y;
            float _3581 = max(-127.0f, _20_m49.z * _3567);
            float _3605 = max(-127.0f, _20_m52.x * _3567);
            float _3616 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3581) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3581)) / _3581) : (0.693147182464599609375f - (0.2402265071868896484375f * _3581)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3605) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3605)) / _3605) : (0.693147182464599609375f - (0.2402265071868896484375f * _3605))));
            float _3638 = clamp((_423 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3641 = clamp((max(clamp(exp2(-(_3616 * _423)), 0.0f, 1.0f), _20_m51.w) + clamp((_423 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3638, 0.0f, 1.0f);
            _3858 = (_20_m51.xyz * (1.0f - _3641)) + (((_20_m54.xyz * pow(clamp(dot(_422, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3616 * max(_423 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3638));
            _3859 = _3641;
        }
        float3 _3864 = (_3481.xyz * (_3525 * _3859)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3528 * _3528)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3534) / max((12.56637096405029296875f * _3538) * sqrt(_3538), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3525)) * _3859) + _3858);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3864 = (_3864 * 0.65f) + (_3481.xyz * 0.35f);

        }

        // RenoDX code end
        _3866 = float4(_3864.x, _3864.y, _3864.z, _3481.w);
    }
    else
    {
        _3866 = _3481;
    }
    _15 = _3866;
    _16 = _2129;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _11 = stage_input._11;
    _13 = stage_input._13;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._15 = _15;
    stage_output._16 = _16;
    return stage_output;
}

// Endfield 1.5 Vulkan shader 0x04EF314D, migrated from 1.4.4 shader 0xF8501E8E.
#include "./renodx_injection.hlsli"

struct _21
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

static float _412 = (float)0;
static float3 _413 = (float3)0;
static float _415 = (float)0;
static uint _416 = (uint)0;

static const int2 _370[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _371[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _16_17 : register(b12)
{
    column_major float4x4 _17_m0 : packoffset(c0);
    column_major float4x4 _17_m1 : packoffset(c4);
    column_major float4x4 _17_m2 : packoffset(c8);
    column_major float4x4 _17_m3 : packoffset(c12);
    column_major float4x4 _17_m4 : packoffset(c16);
    column_major float4x4 _17_m5 : packoffset(c20);
    column_major float4x4 _17_m6 : packoffset(c24);
    column_major float4x4 _17_m7 : packoffset(c28);
    column_major float4x4 _17_m8 : packoffset(c32);
    column_major float4x4 _17_m9 : packoffset(c36);
    column_major float4x4 _17_m10 : packoffset(c40);
    float4 _17_m11 : packoffset(c44);
    column_major float4x4 _17_m12 : packoffset(c45);
    column_major float4x4 _17_m13 : packoffset(c49);
    column_major float4x4 _17_m14 : packoffset(c53);
    column_major float4x4 _17_m15 : packoffset(c57);
    column_major float4x4 _17_m16 : packoffset(c61);
    column_major float4x4 _17_m17 : packoffset(c65);
    column_major float4x4 _17_m18 : packoffset(c69);
    column_major float4x4 _17_m19 : packoffset(c73);
    column_major float4x4 _17_m20 : packoffset(c77);
    float4 _17_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _18_19 : register(b16)
{
    float4 _19_m0 : packoffset(c0);
    float4 _19_m1 : packoffset(c1);
    float4 _19_m2 : packoffset(c2);
    float4 _19_m3 : packoffset(c3);
    float4 _19_m4 : packoffset(c4);
    float4 _19_m5 : packoffset(c5);
    float4 _19_m6[6] : packoffset(c6);
    float4 _19_m7[6] : packoffset(c12);
    float4 _19_m8 : packoffset(c18);
    float4 _19_m9 : packoffset(c19);
    float4 _19_m10 : packoffset(c20);
    float4 _19_m11 : packoffset(c21);
    float4 _19_m12 : packoffset(c22);
    float4 _19_m13 : packoffset(c23);
    float4 _19_m14 : packoffset(c24);
    float4 _19_m15 : packoffset(c25);
    float _19_m16 : packoffset(c26);
    float _19_m17 : packoffset(c26.y);
    float _19_m18 : packoffset(c26.z);
    uint _19_m19 : packoffset(c26.w);
    float4 _19_m20 : packoffset(c27);
    int4 _19_m21 : packoffset(c28);
    float4 _19_m22 : packoffset(c29);
    float4 _19_m23 : packoffset(c30);
    float4 _19_m24 : packoffset(c31);
    float4 _19_m25 : packoffset(c32);
    float4 _19_m26 : packoffset(c33);
    float4 _19_m27 : packoffset(c34);
    float4 _19_m28 : packoffset(c35);
    float4 _19_m29 : packoffset(c36);
    float4 _19_m30 : packoffset(c37);
    float4 _19_m31 : packoffset(c38);
    float4 _19_m32[4] : packoffset(c39);
    float4 _19_m33[4] : packoffset(c43);
    float4 _19_m34[4] : packoffset(c47);
    float4 _19_m35[4] : packoffset(c51);
    float4 _19_m36 : packoffset(c55);
    float4 _19_m37 : packoffset(c56);
    float4 _19_m38[4] : packoffset(c57);
    float4 _19_m39[4] : packoffset(c61);
    float4 _19_m40[4] : packoffset(c65);
    float4 _19_m41 : packoffset(c69);
    float4 _19_m42 : packoffset(c70);
    float4 _19_m43 : packoffset(c71);
    float4 _19_m44 : packoffset(c72);
    float4 _19_m45 : packoffset(c73);
    float4 _19_m46 : packoffset(c74);
    float4 _19_m47 : packoffset(c75);
    float4 _19_m48 : packoffset(c76);
    float4 _19_m49 : packoffset(c77);
    float4 _19_m50 : packoffset(c78);
    float4 _19_m51 : packoffset(c79);
    float4 _19_m52 : packoffset(c80);
    float4 _19_m53 : packoffset(c81);
    float4 _19_m54 : packoffset(c82);
    float4 _19_m55 : packoffset(c83);
    float4 _19_m56 : packoffset(c84);
    float4 _19_m57 : packoffset(c85);
    float4 _19_m58 : packoffset(c86);
    float4 _19_m59 : packoffset(c87);
    float4 _19_m60 : packoffset(c88);
    float4 _19_m61 : packoffset(c89);
    float4 _19_m62 : packoffset(c90);
    float4 _19_m63 : packoffset(c91);
    float4 _19_m64 : packoffset(c92);
    float4 _19_m65 : packoffset(c93);
    float4 _19_m66 : packoffset(c94);
    float4 _19_m67 : packoffset(c95);
    float4 _19_m68 : packoffset(c96);
    float4 _19_m69 : packoffset(c97);
    float4 _19_m70 : packoffset(c98);
    float4 _19_m71 : packoffset(c99);
    float4 _19_m72 : packoffset(c100);
    float4 _19_m73 : packoffset(c101);
    float4 _19_m74 : packoffset(c102);
    float4 _19_m75 : packoffset(c103);
    float4 _19_m76 : packoffset(c104);
    float4 _19_m77 : packoffset(c105);
    float4 _19_m78 : packoffset(c106);
    float4 _19_m79 : packoffset(c107);
    float4 _19_m80 : packoffset(c108);
    float4 _19_m81 : packoffset(c109);
    float4 _19_m82 : packoffset(c110);
    float4 _19_m83 : packoffset(c111);
    float4 _19_m84 : packoffset(c112);
    float4 _19_m85 : packoffset(c113);
    float4 _19_m86 : packoffset(c114);
    float4 _19_m87 : packoffset(c115);
    float4 _19_m88 : packoffset(c116);
    float4 _19_m89 : packoffset(c117);
    float4 _19_m90 : packoffset(c118);
    float4 _19_m91 : packoffset(c119);
    float4 _19_m92 : packoffset(c120);
    float4 _19_m93 : packoffset(c121);
    float4 _19_m94 : packoffset(c122);
    float4 _19_m95 : packoffset(c123);
    float4 _19_m96 : packoffset(c124);
    float4 _19_m97 : packoffset(c125);
    float4 _19_m98 : packoffset(c126);
    float4 _19_m99[2] : packoffset(c127);
    float4 _19_m100[2] : packoffset(c129);
    float _19_m101 : packoffset(c131);
    float _19_m102 : packoffset(c131.y);
    float _19_m103 : packoffset(c131.z);
    float _19_m104 : packoffset(c131.w);
    float4 _19_m105 : packoffset(c132);
    float4 _19_m106 : packoffset(c133);
    float4 _19_m107 : packoffset(c134);
    float4 _19_m108 : packoffset(c135);
    float4 _19_m109 : packoffset(c136);
    float4 _19_m110 : packoffset(c137);
    float4 _19_m111 : packoffset(c138);
    float4 _19_m112 : packoffset(c139);
    float4 _19_m113 : packoffset(c140);
    float4 _19_m114 : packoffset(c141);
    float4 _19_m115 : packoffset(c142);
    float4 _19_m116 : packoffset(c143);
    float4 _19_m117 : packoffset(c144);
    float4 _19_m118 : packoffset(c145);
    float4 _19_m119 : packoffset(c146);
    float4 _19_m120 : packoffset(c147);
    float4 _19_m121 : packoffset(c148);
    float4 _19_m122 : packoffset(c149);
    float4 _19_m123 : packoffset(c150);
    float4 _19_m124 : packoffset(c151);
    float4 _19_m125 : packoffset(c152);
    float4 _19_m126 : packoffset(c153);
    float4 _19_m127 : packoffset(c154);
    float4 _19_m128 : packoffset(c155);
    float4 _19_m129 : packoffset(c156);
    float4 _19_m130 : packoffset(c157);
    float4 _19_m131 : packoffset(c158);
    float4 _19_m132 : packoffset(c159);
    float4 _19_m133 : packoffset(c160);
    float4 _19_m134 : packoffset(c161);
    column_major float4x4 _19_m135 : packoffset(c162);
    float4 _19_m136 : packoffset(c166);
    float4 _19_m137 : packoffset(c167);
    float4 _19_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _20_22 : register(b0)
{
    _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _29 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _31 : register(t18);

uint4 _31_Load4(uint byte_offset)
{
    return asuint(_31[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _32_33 : register(b48)
{
    int _33_m0 : packoffset(c0);
    int _33_m1 : packoffset(c0.y);
    int _33_m2 : packoffset(c0.z);
    int _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _34_35 : register(b14)
{
    float4 _35_m0 : packoffset(c0);
    float4 _35_m1 : packoffset(c1);
    float4 _35_m2 : packoffset(c2);
    float4 _35_m3 : packoffset(c3);
    float4 _35_m4 : packoffset(c4);
    uint4 _35_m5 : packoffset(c5);
    float4 _35_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _36_37 : register(b15)
{
    column_major float4x4 _37_m0[5] : packoffset(c0);
    float4 _37_m1[4] : packoffset(c20);
    float4 _37_m2[4] : packoffset(c24);
    float4 _37_m3[4] : packoffset(c28);
    float4 _37_m4 : packoffset(c32);
    float4 _37_m5 : packoffset(c33);
    float4 _37_m6 : packoffset(c34);
    float4 _37_m7 : packoffset(c35);
    float4 _37_m8 : packoffset(c36);
    float4 _37_m9[27] : packoffset(c37);
    column_major float4x4 _37_m10[56] : packoffset(c64);
    float4 _37_m11[56] : packoffset(c288);
    float4 _37_m12[56] : packoffset(c344);
    float4 _37_m13 : packoffset(c400);
    float4 _37_m14[47] : packoffset(c401);
    column_major float4x4 _37_m15[15] : packoffset(c448);
    float4 _37_m16[15] : packoffset(c508);
    float4 _37_m17[15] : packoffset(c523);
    float4 _37_m18[15] : packoffset(c538);
    float4 _37_m19 : packoffset(c553);
    float4 _37_m20 : packoffset(c554);
    float4 _37_m21[21] : packoffset(c555);
    column_major float4x4 _37_m22 : packoffset(c576);
    column_major float4x4 _37_m23 : packoffset(c580);
    float4 _37_m24 : packoffset(c584);
    float4 _37_m25 : packoffset(c585);
    float4 _37_m26 : packoffset(c586);
    float4 _37_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _47_48 : register(b0)
{
    float _48_m0 : packoffset(c0);
    float _48_m1 : packoffset(c0.y);
    float _48_m2 : packoffset(c0.z);
    float _48_m3 : packoffset(c0.w);
    float _48_m4 : packoffset(c1);
    float _48_m5 : packoffset(c1.y);
    float _48_m6 : packoffset(c1.z);
    float _48_m7 : packoffset(c1.w);
    float _48_m8 : packoffset(c2);
    float _48_m9 : packoffset(c2.y);
    float _48_m10 : packoffset(c2.z);
    float _48_m11 : packoffset(c2.w);
    float _48_m12 : packoffset(c3);
    float _48_m13 : packoffset(c3.y);
    float _48_m14 : packoffset(c3.z);
    float _48_m15 : packoffset(c3.w);
    float _48_m16 : packoffset(c4);
    float _48_m17 : packoffset(c4.y);
    float _48_m18 : packoffset(c4.z);
    float _48_m19 : packoffset(c4.w);
    float _48_m20 : packoffset(c5);
    float _48_m21 : packoffset(c5.y);
    float _48_m22 : packoffset(c5.z);
    float _48_m23 : packoffset(c5.w);
    float4 _48_m24 : packoffset(c6);
    float4 _48_m25 : packoffset(c7);
    float4 _48_m26 : packoffset(c8);
    float4 _48_m27 : packoffset(c9);
    float4 _48_m28 : packoffset(c10);
    float4 _48_m29 : packoffset(c11);
    float _48_m30 : packoffset(c12);
    float _48_m31 : packoffset(c12.y);
    float _48_m32 : packoffset(c12.z);
    float _48_m33 : packoffset(c12.w);
    float _48_m34 : packoffset(c13);
    float _48_m35 : packoffset(c13.y);
    float _48_m36 : packoffset(c13.z);
    float _48_m37 : packoffset(c13.w);
    float4 _48_m38 : packoffset(c14);
    float _48_m39 : packoffset(c15);
    float _48_m40 : packoffset(c15.y);
    float _48_m41 : packoffset(c15.z);
    float _48_m42 : packoffset(c15.w);
    float4 _48_m43 : packoffset(c16);
    float4 _48_m44 : packoffset(c17);
    float4 _48_m45 : packoffset(c18);
    float4 _48_m46 : packoffset(c19);
    float4 _48_m47 : packoffset(c20);
    float4 _48_m48 : packoffset(c21);
    float _48_m49 : packoffset(c22);
    float _48_m50 : packoffset(c22.y);
    float _48_m51 : packoffset(c22.z);
    float _48_m52 : packoffset(c22.w);
    float _48_m53 : packoffset(c23);
    float _48_m54 : packoffset(c23.y);
    float _48_m55 : packoffset(c23.z);
    float _48_m56 : packoffset(c23.w);
};

[[vk::binding(50, 0)]]
cbuffer _61_62 : register(b50)
{
    float4 _62_m0[32] : packoffset(c0);
    column_major float4x4 _62_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _38 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _39 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _41 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _42 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _43 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _44 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _45 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _46 : register(t30);
[[vk::binding(4, 1)]] Texture2D<float4> _49 : register(t4);
[[vk::binding(1, 1)]] Texture2D<float4> _50 : register(t1);
[[vk::binding(44, 0)]] Texture2D<float4> _51 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _53 : register(t39);
[[vk::binding(6, 1)]] Texture2D<float4> _54 : register(t6);
[[vk::binding(2, 1)]] Texture2D<float4> _55 : register(t2);
[[vk::binding(5, 1)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3);
[[vk::binding(45, 0)]] TextureCube<float4> _59 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _60 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _65 : register(t36);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _3 = (float2)0;
static float3 _4 = (float3)0;
static float3 _5 = (float3)0;
static float4 _6 = (float4)0;
static float3 _7 = (float3)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static float3 _10 = (float3)0;
static uint _12 = (uint)0;
static float4 _14 = (float4)0;
static float4 _15 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float3 _10 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _12 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _14 : SV_Target0;
    [[vk::location(1)]] float4 _15 : SV_Target1;
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
    float _431 = 1.0f / gl_FragCoord.w;
    float3 _446 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _447 = dot(_446, _446);
    float _449 = rsqrt(max(_447, 9.9999999392252902907785028219223e-09f));
    float3 _450 = _446 * _449;
    float _451 = _447 * _449;
    uint _454 = asuint(_22_m0[_12]._m2.x);
    bool _459 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _472;
    float4 _473;
    if (_459)
    {
        _472 = asfloat(_31_Load4((_454 + 2u) * 16 + 0));
        _473 = asfloat(_31_Load4(_454 * 16 + 0));
    }
    else
    {
        _472 = _22_m0[_12]._m0[2];
        _473 = _22_m0[_12]._m0[0];
    }
    float4 _479 = _54.SampleBias(_25, _3, _19_m16);
    float3 _484 = _479.xyz * _48_m24.xyz;
    float4 _488 = _55.SampleBias(_25, _3, _19_m16);
    float _489 = _488.x;
    float _490 = _488.y;
    float _491 = _488.z;
    float _493 = 1.0f - _488.w;
    float _497 = _479.w * _48_m24.w;
    float3 _502 = _484 * _48_m18;
    float3 _506 = lerp(dot(_502, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _502, _48_m19.xxx);
    float4 _510 = _56.SampleBias(_25, _3, _19_m16);
    _510.w = _510.w * _510.x;
    float2 _519 = (_510.wy * 2.0f) - 1.0f.xx;
    float3 _520 = float3(_519.x, _519.y, _413.z);
    float2 _521 = _519.xy;
    _520.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_521, _521), 0.0f, 1.0f)));
    float2 _529 = _520.xy * _48_m3;
    float4 _534 = _57.SampleBias(_25, _3, _19_m16);
    float3 _546 = _4 + _17_m11.xyz;
    float3 _550 = _546 - float3(_473.w, _415, _472.w);
    _550.y = 6.103515625e-05f;
    float3 _553 = normalize(_550);
    float3 _563 = mul(float3(_529.x, _529.y, _520.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _572 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _573 = (_563 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_563, _563)))) * _572;
    float3 _574 = normalize(_5) * _572;
    bool3 _578 = (_48_m34 > 0.5f).xxx;
    float3 _579 = cross(_5, float3(0.0f, 1.0f, 0.0f));
    float3 _583 = _579 * rsqrt(max(6.103515625e-05f, dot(_579, _579)));
    float3 _585 = float3(_578.x ? _6.xyz.x : _583.x, _578.y ? _6.xyz.y : _583.y, _578.z ? _6.xyz.z : _583.z).xyz;
    float3 _589 = normalize(_585 - (_573 * dot(_585, _573)));
    float3 _590 = _589.xyz;
    float3 _593 = cross(_573, _590) * _6.w;
    uint2 _595 = uint2(gl_FragCoord.xy);
    float3 _605 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _614 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _627 = float4(float(_614 & 255u), float((_614 >> 8u) & 255u), float((_614 >> 16u) & 255u), float((_614 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _628 = _627.x;
    float _631 = _627.w;
    float _637 = _546.y;
    float _640 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _637) * _627.y;
    float _641 = max(_627.z, _640);
    float _650 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1144;
    float3 _1145;
    float3 _1146;
    float _1147;
    if (_19_m80.y < 0.5f)
    {
        float3 _665 = _546 - (_19_m105.xyz + (_605 * (-_19_m107.w)));
        float _679 = max(clamp((max(abs(_665.x), abs(_665.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_665.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _981;
        float4 _982;
        float4 _983;
        float _984;
        float _985;
        if ((_19_m105.w != 0.0f) && (_679 < 1.0f))
        {
            float3 _692 = _546 - (_19_m105.xyz + (_605 * (-_19_m107.y)));
            float _706 = max(clamp((max(abs(_692.x), abs(_692.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_692.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _782;
            float4 _783;
            float4 _784;
            float4 _785;
            if (_706 < 1.0f)
            {
                float3 _715 = ((_546 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _717 = _715 - floor(_715);
                float4 _721 = _41.SampleLevel(_25, _717, 0.0f);
                float _722 = 1.0f - _706;
                float _726 = _19_m106.y * 0.5f;
                float _731 = _717.x;
                float _732 = clamp(_717.y, _726, 1.0f - _726) * 0.3333333432674407958984375f;
                float _733 = _717.z;
                float4 _736 = _42.SampleLevel(_24, float3(_731, _732, _733), 0.0f);
                float _752 = _721.x;
                float _762 = _721.y;
                float _772 = _721.z;
                _782 = _679 + (_736.w * _722);
                _783 = float4(((_42.SampleLevel(_24, float3(_731, _732 + 0.666666686534881591796875f, _733), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _772, _772) * _722;
                _784 = float4(((_42.SampleLevel(_24, float3(_731, _732 + 0.3333333432674407958984375f, _733), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _762, _762) * _722;
                _785 = float4(((_736.xyz * 4.0f) - 2.0f.xxx) * _752, _752) * _722;
            }
            else
            {
                _782 = _679;
                _783 = 0.0f.xxxx;
                _784 = 0.0f.xxxx;
                _785 = 0.0f.xxxx;
            }
            float3 _791 = _546 - (_19_m105.xyz + (_605 * (-_19_m107.z)));
            float _805 = max(clamp((max(abs(_791.x), abs(_791.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_791.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _885;
            float4 _886;
            float4 _887;
            float4 _888;
            if (_805 < 1.0f)
            {
                float3 _814 = ((_546 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _816 = _814 - floor(_814);
                float4 _820 = _43.SampleLevel(_25, _816, 0.0f);
                float _822 = _706 * (1.0f - _805);
                float _826 = _19_m106.y * 0.5f;
                float _831 = _816.x;
                float _832 = clamp(_816.y, _826, 1.0f - _826) * 0.3333333432674407958984375f;
                float _833 = _816.z;
                float4 _836 = _44.SampleLevel(_24, float3(_831, _832, _833), 0.0f);
                float _852 = _820.x;
                float _863 = _820.y;
                float _874 = _820.z;
                _885 = _782 + (_836.w * _822);
                _886 = _783 + (float4(((_44.SampleLevel(_24, float3(_831, _832 + 0.666666686534881591796875f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _874, _874) * _822);
                _887 = _784 + (float4(((_44.SampleLevel(_24, float3(_831, _832 + 0.3333333432674407958984375f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _863, _863) * _822);
                _888 = _785 + (float4(((_836.xyz * 4.0f) - 2.0f.xxx) * _852, _852) * _822);
            }
            else
            {
                _885 = _782;
                _886 = _783;
                _887 = _784;
                _888 = _785;
            }
            float4 _971;
            float4 _972;
            float4 _973;
            float _974;
            if (_805 > 0.0f)
            {
                float3 _897 = ((_546 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _900 = _19_m106.xyz * 0.5f;
                float3 _902 = clamp(_897 - floor(_897), _900, 1.0f.xxx - _900);
                float4 _906 = _45.SampleLevel(_25, _902, 0.0f);
                float _908 = _805 * (1.0f - _679);
                float _912 = _19_m106.y * 0.5f;
                float _917 = _902.x;
                float _918 = clamp(_902.y, _912, 1.0f - _912) * 0.3333333432674407958984375f;
                float _919 = _902.z;
                float4 _922 = _46.SampleLevel(_24, float3(_917, _918, _919), 0.0f);
                float _938 = _906.x;
                float _949 = _906.y;
                float _960 = _906.z;
                _971 = _886 + (float4(((_46.SampleLevel(_24, float3(_917, _918 + 0.666666686534881591796875f, _919), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _960, _960) * _908);
                _972 = _887 + (float4(((_46.SampleLevel(_24, float3(_917, _918 + 0.3333333432674407958984375f, _919), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _949, _949) * _908);
                _973 = _888 + (float4(((_922.xyz * 4.0f) - 2.0f.xxx) * _938, _938) * _908);
                _974 = _885 + (_922.w * _908);
            }
            else
            {
                _971 = _886;
                _972 = _887;
                _973 = _888;
                _974 = _885;
            }
            float _977 = clamp((_974 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _981 = _971;
            _982 = _972;
            _983 = _973;
            _984 = _977 - _679;
            _985 = (_977 + _679) * 0.5f;
        }
        else
        {
            _981 = 0.0f.xxxx;
            _982 = 0.0f.xxxx;
            _983 = 0.0f.xxxx;
            _984 = 0.0f;
            _985 = 1.0f;
        }
        float4 _1005 = _983 + float4(_19_m108.x * _985, (_19_m108.y * _985) + ((_19_m108.w * _984) * 0.5f), _19_m108.z * _985, (_19_m108.w * _985) + ((_19_m108.y * _984) * 0.375f));
        float4 _1025 = _982 + float4(_19_m109.x * _985, (_19_m109.y * _985) + ((_19_m109.w * _984) * 0.5f), _19_m109.z * _985, (_19_m109.w * _985) + ((_19_m109.y * _984) * 0.375f));
        float4 _1045 = _981 + float4(_19_m110.x * _985, (_19_m110.y * _985) + ((_19_m110.w * _984) * 0.5f), _19_m110.z * _985, (_19_m110.w * _985) + ((_19_m110.y * _984) * 0.375f));
        float4 _1049 = float4(_573, 1.0f);
        float3 _1055 = max(float3(dot(_1005, _1049), dot(_1025, _1049), dot(_1045, _1049)), 0.0f.xxx) * _650;
        float3 _1063 = ((_1005.xyz * 0.2125999927520751953125f) + (_1025.xyz * 0.715200006961822509765625f)) + (_1045.xyz * 0.072200000286102294921875f);
        float3 _1067 = _1063 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1063, _1063)));
        float _1069 = abs(_1067.y);
        float3 _1070 = _1067;
        _1070.y = _1069;
        float4 _1071 = float4(_1070.x, _1070.y, _1070.z, 0.0f.xxxx.w);
        _1071.w = 1.0f;
        float4 _1075 = float4(_1067.x, _1069, _1067.z, 1.0f);
        float3 _1080 = max(float3(dot(_1005, _1075), dot(_1025, _1075), dot(_1045, _1075)), 0.0f.xxx);
        float _1088 = _1055.z;
        float _1089 = _1055.y;
        float4 _1094 = lerp(float4(_1088, _1089, -1.0f, 0.666666686534881591796875f), float4(_1089, _1088, 0.0f, -0.3333333432674407958984375f), step(_1088, _1089).xxxx);
        float _1095 = _1055.x;
        float _1096 = _1094.x;
        float4 _1104 = lerp(float4(_1096, _1094.yw, _1095), float4(_1095, _1094.yz, _1096), step(_1096, _1095).xxxx);
        float _1105 = _1104.x;
        float _1106 = _1104.w;
        float _1107 = _1104.y;
        float _1109 = _1105 - min(_1106, _1107);
        float _1119 = frac(abs(_1104.z + ((_1106 - _1107) / ((6.0f * _1109) + 9.9999997473787516355514526367188e-05f))));
        float _1126 = min(_1109 / (_1105 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1119 - 0.5f))) * clamp(_1105, 0.0f, 1.0f));
        float _1128 = 2.0f / (2.0f - _1126);
        _1144 = _1071;
        _1145 = _1055;
        _1146 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1119, _1126, _1128).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1126.xxx) * _1128;
        _1147 = max(max(max(_1080.x, _1080.y), _1080.z), 0.0f) * _650;
    }
    else
    {
        _1144 = 0.0f.xxxx;
        _1145 = 1.0f.xxx;
        _1146 = _19_m81.xyz;
        _1147 = _650;
    }
    float3 _1867;
    float _1868;
    float _1869;
    float _1870;
    float3 _1871;
    float3 _1872;
    [branch]
    if ((clamp(_628 + _641, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1175 = 1.0f - _489;
        float _1178 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_484 * _1175, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1181 = _459.xxx;
        float3 _1183 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1187 = float3(_1181.x ? _1183.x : _10.x, _1181.y ? _1183.y : _10.y, _1181.z ? _1183.z : _10.z) * _19_m89.z;
        float3 _1189 = float3(_1181.x ? _9.xzy.x : _9.x, _1181.y ? _9.xzy.y : _9.y, _1181.z ? _9.xzy.z : _9.z);
        float3 _1191 = abs(_1189) - 0.20000000298023223876953125f.xxx;
        float3 _1194 = max((_1191 * _1191) * _1191, 6.103515625e-05f.xxx);
        float3 _1197 = _1194 / dot(_1194, 1.0f.xxx).xxx;
        float2 _1205 = _1187.xy;
        float2 _1210 = _1187.zy;
        float4 _1220 = ((_51.SampleBias(_25, _1187.xz, _19_m16) * _1197.y) + (_51.SampleBias(_25, _1205, _19_m16) * _1197.z)) + (_51.SampleBias(_25, _1210, _19_m16) * _1197.x);
        float _1221 = _1220.w;
        float _1223 = 1.10000002384185791015625f - _1221;
        float _1232 = max(smoothstep(0.800000011920928955078125f - _1221, _1223, clamp((_628 * _1175) + (_573.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1221, _1223, clamp(_640 * _1175, 0.0f, 1.0f)));
        float _1239 = smoothstep(0.5f, 0.75f, _489);
        float _1241 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _493) * _1178;
        float _1244 = clamp(_1241 + _1239, 0.0f, 1.0f) * max(_628, _641);
        bool _1248 = !((step(_628, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _641)) != 0.0f);
        bool2 _1249 = _1248.xx;
        float2 _1251 = (1.0f - _641).xx;
        float2 _1252 = float2(_1249.x ? float2(3.0f, 4.345600128173828125f).x : _1251.x, _1249.y ? float2(3.0f, 4.345600128173828125f).y : _1251.y);
        float _1253 = 1.0f - _1244;
        float _1256 = _1248 ? _19_m10.x : 1.0f;
        float _1258 = _1256 * _1252.x;
        float _1260 = _1256 * _1252.y;
        float3 _1261 = _1187 * 20.0f;
        float3 _1262 = _1187 * 34.345600128173828125f;
        float3 _1264 = pow(max(_1191, 0.0f.xxx), 10.0f.xxx);
        float3 _1268 = _1264 / max(dot(_1264, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1270 = _1268.y;
        float2 _1271 = _1261.xz * 1.0f;
        float2 _1272 = floor(_1271);
        float2 _1275 = frac(_1272 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1279 = _1275 + dot(_1275, _1275 + 34.345001220703125f.xx).xx;
        float _1280 = _1279.x;
        float _1281 = _1279.y;
        float2 _1285 = frac(float2(_1280 * _1281, _1280 + _1281));
        float2 _1288 = frac((_1272 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1292 = _1288 + dot(_1288, _1288 + 34.345001220703125f.xx).xx;
        float _1293 = _1292.x;
        float _1294 = _1292.y;
        float2 _1298 = frac(float2(_1293 * _1294, _1293 + _1294));
        float _1304 = _1285.x;
        float _1306 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1304);
        float2 _1307 = ((_1271 - _1272) + ((((_1298 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1310 = _1307.y;
        float2 _1314 = float2(_1307.x * 1.25f, _1310 * ((_1310 < 0.0f) ? 1.25f : 0.75f));
        float _1317 = _1258 + _1304;
        float _1321 = _1248 ? frac(_1317) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1317, 0.0f, 1.0f));
        float _1333 = _1285.y;
        float _1336 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1321) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1321)) * step(0.001000000047497451305389404296875f, smoothstep(_1306, 0.0f, length(_1314)))) * step(_1253, _1333 - 0.100000001490116119384765625f);
        float _1339 = _1336 * _1270;
        float _1347 = _1268.z;
        float2 _1348 = _1261.xy * 1.0f;
        float2 _1349 = floor(_1348);
        float2 _1352 = frac(_1349 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1356 = _1352 + dot(_1352, _1352 + 34.345001220703125f.xx).xx;
        float _1357 = _1356.x;
        float _1358 = _1356.y;
        float2 _1362 = frac(float2(_1357 * _1358, _1357 + _1358));
        float2 _1365 = frac((_1349 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1369 = _1365 + dot(_1365, _1365 + 34.345001220703125f.xx).xx;
        float _1370 = _1369.x;
        float _1371 = _1369.y;
        float2 _1375 = frac(float2(_1370 * _1371, _1370 + _1371));
        float _1381 = _1362.x;
        float _1383 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1381);
        float2 _1384 = ((_1348 - _1349) + ((((_1375 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1387 = _1384.y;
        float2 _1391 = float2(_1384.x * 1.25f, _1387 * ((_1387 < 0.0f) ? 1.25f : 0.75f));
        float _1394 = _1258 + _1381;
        float _1398 = _1248 ? frac(_1394) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1394, 0.0f, 1.0f));
        float _1410 = _1362.y;
        float _1413 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1398) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1398)) * step(0.001000000047497451305389404296875f, smoothstep(_1383, 0.0f, length(_1391)))) * step(_1253, _1410 - 0.100000001490116119384765625f);
        float _1416 = _1413 * _1347;
        float _1424 = _1268.x;
        float2 _1425 = _1261.zy * 1.0f;
        float2 _1426 = floor(_1425);
        float2 _1429 = frac(_1426 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1433 = _1429 + dot(_1429, _1429 + 34.345001220703125f.xx).xx;
        float _1434 = _1433.x;
        float _1435 = _1433.y;
        float2 _1439 = frac(float2(_1434 * _1435, _1434 + _1435));
        float2 _1442 = frac((_1426 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1446 = _1442 + dot(_1442, _1442 + 34.345001220703125f.xx).xx;
        float _1447 = _1446.x;
        float _1448 = _1446.y;
        float2 _1452 = frac(float2(_1447 * _1448, _1447 + _1448));
        float _1458 = _1439.x;
        float _1460 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1458);
        float2 _1461 = ((_1425 - _1426) + ((((_1452 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1464 = _1461.y;
        float2 _1468 = float2(_1461.x * 1.25f, _1464 * ((_1464 < 0.0f) ? 1.25f : 0.75f));
        float _1471 = _1258 + _1458;
        float _1475 = _1248 ? frac(_1471) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1471, 0.0f, 1.0f));
        float _1487 = _1439.y;
        float _1490 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1475) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1475)) * step(0.001000000047497451305389404296875f, smoothstep(_1460, 0.0f, length(_1468)))) * step(_1253, _1487 - 0.100000001490116119384765625f);
        float _1493 = _1490 * _1424;
        float2 _1506 = (float4(((clamp(_1314 / _1306.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1298.x)) * _1336) * _1270, _1339, _1333).xy + float4(((clamp(_1391 / _1383.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1375.x)) * _1413) * _1347, _1416, _1410).xy) + float4(((clamp(_1468 / _1460.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1452.x)) * _1490) * _1424, _1493, _1487).xy;
        float _1508 = max(_1493, max(_1339, _1416));
        float4 _1511 = float4(_1506, _1508, 0.0f);
        float2 _1513 = _1262.xz * 1.0f;
        float2 _1514 = floor(_1513);
        float2 _1517 = frac(_1514 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1521 = _1517 + dot(_1517, _1517 + 34.345001220703125f.xx).xx;
        float _1522 = _1521.x;
        float _1523 = _1521.y;
        float2 _1527 = frac(float2(_1522 * _1523, _1522 + _1523));
        float2 _1530 = frac((_1514 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1534 = _1530 + dot(_1530, _1530 + 34.345001220703125f.xx).xx;
        float _1535 = _1534.x;
        float _1536 = _1534.y;
        float2 _1540 = frac(float2(_1535 * _1536, _1535 + _1536));
        float _1546 = _1527.x;
        float _1548 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1546);
        float2 _1549 = ((_1513 - _1514) + ((((_1540 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1552 = _1549.y;
        float2 _1556 = float2(_1549.x * 1.25f, _1552 * ((_1552 < 0.0f) ? 1.25f : 0.75f));
        float _1559 = _1260 + _1546;
        float _1563 = _1248 ? frac(_1559) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1559, 0.0f, 1.0f));
        float _1575 = _1527.y;
        float _1578 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1563) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1563)) * step(0.001000000047497451305389404296875f, smoothstep(_1548, 0.0f, length(_1556)))) * step(_1253, _1575 - 0.100000001490116119384765625f);
        float _1581 = _1578 * _1270;
        float2 _1586 = _1262.xy * 1.0f;
        float2 _1587 = floor(_1586);
        float2 _1590 = frac(_1587 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1594 = _1590 + dot(_1590, _1590 + 34.345001220703125f.xx).xx;
        float _1595 = _1594.x;
        float _1596 = _1594.y;
        float2 _1600 = frac(float2(_1595 * _1596, _1595 + _1596));
        float2 _1603 = frac((_1587 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1607 = _1603 + dot(_1603, _1603 + 34.345001220703125f.xx).xx;
        float _1608 = _1607.x;
        float _1609 = _1607.y;
        float2 _1613 = frac(float2(_1608 * _1609, _1608 + _1609));
        float _1619 = _1600.x;
        float _1621 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1619);
        float2 _1622 = ((_1586 - _1587) + ((((_1613 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1625 = _1622.y;
        float2 _1629 = float2(_1622.x * 1.25f, _1625 * ((_1625 < 0.0f) ? 1.25f : 0.75f));
        float _1632 = _1260 + _1619;
        float _1636 = _1248 ? frac(_1632) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1632, 0.0f, 1.0f));
        float _1648 = _1600.y;
        float _1651 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1636) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1636)) * step(0.001000000047497451305389404296875f, smoothstep(_1621, 0.0f, length(_1629)))) * step(_1253, _1648 - 0.100000001490116119384765625f);
        float _1654 = _1651 * _1347;
        float2 _1659 = _1262.zy * 1.0f;
        float2 _1660 = floor(_1659);
        float2 _1663 = frac(_1660 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1667 = _1663 + dot(_1663, _1663 + 34.345001220703125f.xx).xx;
        float _1668 = _1667.x;
        float _1669 = _1667.y;
        float2 _1673 = frac(float2(_1668 * _1669, _1668 + _1669));
        float2 _1676 = frac((_1660 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1680 = _1676 + dot(_1676, _1676 + 34.345001220703125f.xx).xx;
        float _1681 = _1680.x;
        float _1682 = _1680.y;
        float2 _1686 = frac(float2(_1681 * _1682, _1681 + _1682));
        float _1692 = _1673.x;
        float _1694 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1692);
        float2 _1695 = ((_1659 - _1660) + ((((_1686 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1698 = _1695.y;
        float2 _1702 = float2(_1695.x * 1.25f, _1698 * ((_1698 < 0.0f) ? 1.25f : 0.75f));
        float _1705 = _1260 + _1692;
        float _1709 = _1248 ? frac(_1705) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1705, 0.0f, 1.0f));
        float _1721 = _1673.y;
        float _1724 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1709) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1709)) * step(0.001000000047497451305389404296875f, smoothstep(_1694, 0.0f, length(_1702)))) * step(_1253, _1721 - 0.100000001490116119384765625f);
        float _1727 = _1724 * _1424;
        float2 _1735 = (float4(((clamp(_1556 / _1548.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1540.x)) * _1578) * _1270, _1581, _1575).xy + float4(((clamp(_1629 / _1621.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1613.x)) * _1651) * _1347, _1654, _1648).xy) + float4(((clamp(_1702 / _1694.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1686.x)) * _1724) * _1424, _1727, _1721).xy;
        float4 _1740 = float4(_1735, max(_1727, max(_1581, _1654)), 0.0f);
        float _1742 = step(max(float2(_1306 * _1336, _415) * _1270, max(float2(_1383 * _1413, _415) * _1347, float2(_1460 * _1490, _415) * _1424)).x, 0.00999999977648258209228515625f);
        float2 _1746 = _1511.xy + (_1740.xy * _1742);
        float3 _1755 = float3((_1220.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1746.x, _1746.y, 0.0f.xxx.z);
        float2 _1759 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1762 = float3(_1189.x, 0.0f, _1189.z);
        float3 _1768 = abs(_1762 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1762, _1762)))) - 0.20000000298023223876953125f.xxx;
        float3 _1771 = max((_1768 * _1768) * _1768, 6.103515625e-05f.xxx);
        float3 _1774 = _1771 / dot(_1771, 1.0f.xxx).xxx;
        float _1793 = _1774.z;
        float _1795 = _1774.x;
        float4 _1797 = (_52.SampleBias(_25, _1205, _19_m16) * _1793) + (_52.SampleBias(_25, _1210, _19_m16) * _1795);
        float2 _1809 = _1755.xy + ((((_1797.xy * 2.0f) - 1.0f.xx) * ((_52.SampleBias(_25, _1205 + _1759, _19_m16).w * _1793) + (_52.SampleBias(_25, _1210 + _1759, _19_m16).w * _1795))) * _1244);
        float3 _1810 = float3(_1809.x, _1809.y, _1755.z);
        float _1811 = _1797.z;
        float _1816 = max(max(max(_1511.zw * step(0.00999999977648258209228515625f, _1508), _1740.zw * _1742).x, step(1.0099999904632568359375f - _1244, _1220.z)), smoothstep(1.0f - _1811, 1.10000002384185791015625f - _1811, _1244) * _1244);
        float2 _1817 = _1809.xy;
        _1810.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1817, _1817), 0.0f, 1.0f)));
        float3 _1824 = normalize(_1810);
        float3 _1825 = cross(_573, float3(0.0f, 1.0f, 0.0f));
        bool3 _1828 = (dot(_1825, _1825) > 6.103515625e-05f).xxx;
        float3 _1829 = normalize(_1825);
        float3 _1830 = float3(_1828.x ? _1829.x : float3(1.0f, 0.0f, 0.0f).x, _1828.y ? _1829.y : float3(1.0f, 0.0f, 0.0f).y, _1828.z ? _1829.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1841 = min(_493, 0.0500000007450580596923828125f);
        float _1842 = lerp(_493, _1841, _1816);
        float _1859 = lerp(1.0f, 0.5f, (_1232 * (1.0f - _1178)) * (1.0f - _1241));
        _1867 = normalize(lerp(_573, normalize(((_1830 * _1824.x) + (cross(_1830, _573) * _1824.y)) + (_573 * _1824.z)), _1816.xxx));
        _1868 = _1816;
        _1869 = _1841;
        _1870 = max(_1842 - ((0.20000000298023223876953125f * _1178) * _1232), min(0.20000000298023223876953125f, _1842));
        _1871 = _506 * _1859;
        _1872 = lerp(_484, _484 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_484, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1816 * _1239).xxx) * _1859;
    }
    else
    {
        _1867 = _573;
        _1868 = 0.0f;
        _1869 = 0.00999999977648258209228515625f;
        _1870 = _493;
        _1871 = _506;
        _1872 = _484;
    }
    float3 _2002;
    float _2003;
    float3 _2004;
    float3 _2005;
    float _2006;
    [branch]
    if ((_631 - _48_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1877 = _459.xxx;
        float3 _1879 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1880 = float3(_1877.x ? _1879.x : _10.x, _1877.y ? _1879.y : _10.y, _1877.z ? _1879.z : _10.z);
        float3 _1883 = _1880 * _19_m89.z;
        float3 _1885 = float3(_1877.x ? _9.xzy.x : _9.x, _1877.y ? _9.xzy.y : _9.y, _1877.z ? _9.xzy.z : _9.z);
        float3 _1887 = abs(_1885) - 0.20000000298023223876953125f.xxx;
        float3 _1890 = max((_1887 * _1887) * _1887, 6.103515625e-05f.xxx);
        float3 _1893 = _1890 / dot(_1890, 1.0f.xxx).xxx;
        float4 _1916 = ((_53.SampleBias(_25, _1883.xz, _19_m16) * _1893.y) + (_53.SampleBias(_25, _1883.xy, _19_m16) * _1893.z)) + (_53.SampleBias(_25, _1883.zy, _19_m16) * _1893.x);
        float _1917 = _1885.y;
        float _1924 = clamp(_631 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1880.y) * clamp(_631 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1930 = _1924 * (2.0f - _1924);
        float _1937 = smoothstep(2.0f - _1930, 2.349999904632568359375f - _1930, ((_1917 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1916.z) * ((_491 * _491) * float(gl_FrontFacing));
        float _1949 = lerp(1.0f, 0.5f, ((_1924 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1872 * (1.0f - _489), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1916.w) * ((_1917 * 0.25f) + 0.75f));
        float3 _1951 = _1937.xxx;
        float2 _1957 = (_1916.xy * 2.0f) - 1.0f.xx;
        float3 _1958 = float3(_1957.x, _1957.y, _413.z);
        float2 _1959 = _1957.xy;
        _1958.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1959, _1959), 0.0f, 1.0f)));
        float2 _1967 = _1958.xy * 2.0f;
        float3 _1969 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1967.x, _1967.y, _1958.z), _1951);
        float3 _1973 = _1969 * rsqrt(max(6.103515625e-05f, dot(_1969, _1969)));
        float _1974 = _573.y;
        float _1977 = step(0.00999999977648258209228515625f, 1.0f - (_1974 * _1974));
        float _1981 = lerp(_573.z, _1974, _1977);
        float3 _1988 = (float3(0.0f, _1977, 1.0f - _1977) - (_573 * _1981)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1981 * _1981)));
        _2002 = ((cross(_1988, _573) * _1973.x) + (_1988 * _1973.y)) + (_573 * _1973.z);
        _2003 = lerp(_1870, 0.89999997615814208984375f, clamp(_1937 * 4.0f, 0.0f, 1.0f));
        _2004 = lerp(_1871 * _1949, 0.3079999983310699462890625f.xxx, _1951);
        _2005 = lerp(_1872 * _1949, 0.87999999523162841796875f.xxx, _1951);
        _2006 = lerp(_489, 0.0f, _1937);
    }
    else
    {
        _2002 = _573;
        _2003 = _1870;
        _2004 = _1871;
        _2005 = _1872;
        _2006 = _489;
    }
    float _2008 = 0.959999978542327880859375f - (_2006 * 0.959999978542327880859375f);
    float _2011 = _48_m30 * _490;
    float3 _2021 = _2005 * _2008;
    float3 _2024 = lerp(0.039999999105930328369140625f.xxx * lerp(1.0f, _48_m33, _490), _2005, _2006.xxx);
    float3 _2025 = _2004 * _2008;
    float _2027 = max(_2003 * _2003, 0.0078125f);
    float2 _2029 = float4(_2011, _48_m31 * _490, _48_m32, _490).xy;
    float2 _2031 = (1.0f.xx + _2029) * _2027;
    float2 _2033 = (1.0f.xx - _2029) * _2027;
    bool _2045 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _2058 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2058.y = -_2058.y;
    float2 _2074 = lerp(((sqrt(sqrt(abs(_2058 * 0.5f))) * float2(int2(sign(_2058)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2045).xx);
    float4 _2076 = float4(_2074.x, _2074.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2076.z = 1.0f;
    _2076.w = _2045 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2089 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2093 = normalize(float3(_2089.x, 6.103515625e-05f, _2089.z));
    float3 _2103 = lerp(_35_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2107 = _2103 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _2111 = int(_595.x);
    int _2112 = int(_595.y);
    float4 _2116 = _39.Load(int3(int3(_2111, _2112, 0).xy, 0));
    float _2121 = _2116.y;
    float _2124 = lerp(lerp(1.0f, _2116.x, _37_m6.x), 1.0f, _19_m80.z);
    float _2125 = dot(_2002, _2089);
    float3 _2132 = _2025 * _19_m79.z;
    float3 _2133 = _2132 * 0.64999997615814208984375f;
    float _2137 = dot(_2021, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2150 = clamp(-dot(_2093.xz, normalize(_605.xz)), 0.0f, 1.0f);
    float _2154 = 1.0f - _19_m91.x;
    float4 _2168 = _49.SampleLevel(_24, float2((clamp(lerp(_2125, ((-_2125) * ((_2125 * 0.5f) - 1.0f)) + 0.5f, (_2150 * smoothstep(0.25f, 0.75f, 1.0f - abs(_605.y))) * _2154) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2169 = _2168.w;
    float _2171 = _2168.x;
    float _2172 = _2168.y;
    float _2173 = _2168.z;
    float _2178 = max(max(_2171, _2172), _2173) - min(min(_2171, _2172), _2173);
    float4 _2186 = _49.SampleLevel(_24, float2((dot(_2002, _605) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2187 = _2186.w;
    float _2188 = _491 * _2121;
    float _2195 = min(min(_2121, _491), _2169);
    float _2196 = _2187 * _2188;
    float3 _2200 = ((clamp(dot(_573, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1146, 1.0f.xxx, (_19_m80.y * _2195).xxx);
    float3 _2202 = _2195.xxx;
    float3 _2225 = _2124.xxx;
    float3 _2226 = lerp((_2200 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1147), 1.5f), clamp(_1147, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2107, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2107, _2202) + ((_2200 * clamp(_1147, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2103 * _19_m91.y)))) * _19_m79.y, _2225);
    float3 _2227 = lerp(lerp(lerp(dot(_2133, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2133, 1.2000000476837158203125f.xxx), _2132, clamp((_2188 * _2187) + _2169, 0.0f, 1.0f).xxx), _2021, _2202);
    float3 _2233 = _2227 * ((1.0f - _2178).xxx + (_2168.xyz * _2178));
    float3 _2242 = lerp(lerp(_2132, lerp(_2137.xxx, _2021, 1.2000000476837158203125f.xxx), _2196.xxx), _2233 * clamp(dot(_2227, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2233, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2225);
    float4 _2246 = float4(_2242, _2124);
    float _2248 = lerp(_2196, _2195, _2124);
    float _2251 = lerp(_19_m79.z, 1.0f, _2248);
    float3 _2259 = float3(_605.x, lerp(0.5f, _2089.y, _2124), _605.z);
    float3 _2270 = normalize(((_2089 * _2124) + ((_2259 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2259, _2259)))) * 2.0f)) + (_450 * (2.0f + _2124)));
    float _2272 = clamp(dot(_1867, _450), 0.0f, 1.0f);
    float _2276 = _2031.x;
    float _2277 = _2033.x;
    float _2278 = _2276 * _2277;
    float3 _2282 = float3(_2277 * dot(_590, _2270), _2276 * dot(_593, _2270), _2278 * dot(_1867, _2270));
    float _2283 = dot(_2282, _2282);
    float _2285 = (_2278 * _2278) * _2278;
    float _2286 = _2283 * _2283;
    float _2289 = (_2285 != _2286) ? (_2285 / _2286) : 1.0f;
    float _2290 = 2.0f * _2272;
    float _2292 = (1.0f + _2272) - _2272;
    float _2301 = _2272 * _2272;
    float3 _2313 = _2024 * _50.SampleLevel(_24, float2(lerp(_2289 / min(1.0f / ((_2027 * _2027) + 9.9999997473787516355514526367188e-05f), 65504.0f), _2301, _48_m4), _2003 * (1.0f - _2006)), 0.0f).xyz;
    float3 _2315 = lerp(_2024, _2313, _48_m4.xxx);
    float3 _2322 = normalize(_2270 + (_450 * _48_m32));
    float _2326 = _2031.y;
    float _2327 = _2033.y;
    float _2328 = _2326 * _2327;
    float3 _2332 = float3(_2327 * dot(_590, _2322), _2326 * dot(_593, _2322), _2328 * dot(_1867, _2322));
    float _2333 = dot(_2332, _2332);
    float _2335 = (_2328 * _2328) * _2328;
    float _2336 = _2333 * _2333;
    float _2351 = (1.0f - _48_m6) + (_497 * _48_m6);
    float3 _2353 = ((_2226 * _2242) * _2351) + ((((_2313 * clamp((_2289 * (0.5f / ((_2290 + (_2027 * _2292)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) + (((_2024 * _48_m38.xyz) * _490) * clamp((_2335 != _2336) ? (_2335 / _2336) : 1.0f, 0.0f, 20.0f))) * ((_2226 * (((_2248 * 0.5f) + 0.5f) * _2251)) * 1.0f)) * _19_m92.w);
    float _2354 = dot(_2353, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2357 = clamp(_2354 - 0.5f, 0.0f, 0.5f);
    float3 _2393 = normalize(cross(_605, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2399 = dot(_450, _2002);
    float _2401 = 1.0f - abs(_2399);
    float _2423 = dot(_2093, _2002);
    float _2435 = 1.0f - _2124;
    float _2462 = lerp(_2003, _1869, _1868);
    float _2463 = _2462 * _2462;
    float _2464 = _2301 * _2272;
    float2 _2465 = float2(1.0f, _2272);
    float2 _2468 = float2(1.0f, _2463);
    float3 _2471 = float3(1.0f, _2463, (_2463 * _2463) * _2463);
    float _2476 = dot(mul(_2465, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2468) / dot(mul(float3(1.0f, _2301, _2464), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2471);
    float _2481 = dot(mul(_2465, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2468) / dot(mul(float3(1.0f, _2272, _2464), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2471);
    float3 _2484 = (_2315 * _2476) + _2481.xxx;
    float _2485 = _2476 + _2481;
    bool3 _2492 = (_2011 > 0.0f).xxx;
    float3 _2493 = float3(_2492.x ? _593.x : _589.x, _2492.y ? _593.y : _589.y, _2492.z ? _593.z : _589.z);
    float3 _2498 = lerp(_1867, cross(cross(_2493, _450), _2493), abs(_2011).xxx);
    float3 _2503 = -_450;
    float3 _2522 = lerp(_2354.xxx, _2353, ((_2357 * _2357) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2401)) * _19_m87.w) * min(min(clamp(dot(_553, _2393) + 1.0f, 0.0f, 1.0f), _491), _2121)) * (lerp(0.25f.xxx, _2021, _19_m88.z.xxx) * clamp(dot(_2393, _2002), 0.0f, 1.0f))) + ((((((lerp(_1145 * (1.0f / max(max(max(_1145.x, _1145.y), _1145.z) * 0.5f, 1.0f)), _2107, _2225) * clamp(lerp(dot(_1144.xyz, _2002) * _1144.w, ((-_2423) * ((_2423 * 0.5f) - 1.0f)) + 0.5f, _2124), 0.0f, 1.0f)) * ((_2435 + (_2150 * _2124)) * _2154)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2401)) * min(_491, _2121)) * (_2435 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2137) * _2124))) * max(0.1500000059604644775390625f.xxx, _2021)));
    float2 _2525 = float2(_595);
    float2 _2527 = floor(_2525 * 0.03125f);
    int _2535 = int((_2527.x + (_2527.y * _33_m5)) * 8.0f);
    float _2542 = floor(_431 - (_19_m3.y * _33_m11));
    float _2546 = clamp(_2542, 0.0f, _33_m7 - 1.0f);
    int _2548 = int(_2546 * 8.0f);
    float3 _2550;
    _2550 = (_2522 + (((_534.xyz * _48_m25.xyz) * _48_m7) * _2351)) + (((_59.SampleLevel(_24, reflect(_2503, _2498 * rsqrt(max(6.103515625e-05f, dot(_2498, _2498)))), (1.2000000476837158203125f * log2(max(_2462, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2484 + ((_2315 * ((1.0f - _2485) / _2485)) * _2484)) * 1.0f)) * ((clamp(_1147, 0.5f, 1.5f) * _19_m79.w) * _2251)) * _1146);
    float3 _2551;
    [loop]
    for (int _2553 = 0; _2553 <= 7; _2550 = _2551, _2553++)
    {
        uint _2571 = (_2542 <= _2546) ? (_29.Load(uint(_2535 + _2553) * 4 + 0) & _29.Load(uint((_19_m21.y + _2548) + _2553) * 4 + 0)) : 0u;
        uint _2572 = uint(_2553);
        _2551 = _2550;
        uint _2577;
        float3 _2574;
        [loop]
        for (uint _2576 = _2571; _2576 != 0u; _2551 = _2574, _2576 = _2577)
        {
            uint _2581 = firstbitlow(_2576);
            _2577 = _2576 ^ (1u << (_2581 & 31u));
            int _2587 = int((32u * _2572) + _2581) * 8;
            int _2590 = _2587 + 1;
            int _2593 = _2587 + 2;
            int _2596 = _2587 + 3;
            int _2599 = _2587 + 4;
            int _2602 = _2587 + 5;
            int _2605 = _2587 + 6;
            int _2608 = _2587 + 7;
            uint _2612 = uint(_35_m6[_2602].w);
            float _2687;
            if ((_2612 & 1u) == 1u)
            {
                uint _2618 = asuint(_35_m6[_2602].x);
                uint _2625 = asuint(_35_m6[_2602].y);
                uint _2632 = asuint(_35_m6[_2602].z);
                uint _2639 = asuint(_35_m6[_2605].x);
                uint _2646 = asuint(_35_m6[_2605].y);
                uint _2653 = asuint(_35_m6[_2605].z);
                float3 _2672 = abs(mul(float4(_546 - _35_m6[_2590].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2618).x, spvUnpackHalf2x16(_2632).x, spvUnpackHalf2x16(_2646).x, 0.0f), float4(spvUnpackHalf2x16(_2618 >> 16u).x, spvUnpackHalf2x16(_2632 >> 16u).x, spvUnpackHalf2x16(_2646 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2625).x, spvUnpackHalf2x16(_2639).x, spvUnpackHalf2x16(_2653).x, 0.0f), float4(spvUnpackHalf2x16(_2625 >> 16u).x, spvUnpackHalf2x16(_2639 >> 16u).x, spvUnpackHalf2x16(_2653 >> 16u).x, 0.0f))).xyz);
                float _2679 = _35_m6[_2608].x * 0.5f;
                float _2685 = 1.0f - clamp((max(max(_2672.x, _2672.y), _2672.z) - (_2679 + 0.5f)) / (0.5f - _2679), 0.0f, 1.0f);
                _2687 = _2685 * _2685;
            }
            else
            {
                _2687 = 1.0f;
            }
            if (false || (_2687 < 0.001000000047497451305389404296875f))
            {
                _2574 = _2551;
                continue;
            }
            float3 _3382;
            if (_35_m6[_2587].w < 1.5f)
            {
                float3 _3381;
                do
                {
                    uint _2700 = asuint(_35_m6[_2596].w);
                    if ((_2700 == 16u) || ((_35_m6[_2596].z + _19_m91.z) < 0.5f))
                    {
                        _3381 = _2551;
                        break;
                    }
                    bool _2712 = (uint(_35_m6[_2587].w) & 1u) == 0u;
                    bool _2716 = (!_2712) && (_35_m6[_2593].z > 0.0f);
                    bool _2717 = _2700 == 4u;
                    float _2718 = float(_2712);
                    float _2726 = (0.5f + (0.5f * _35_m6[_2593].y)) - abs(_35_m6[_2593].x);
                    float _2727 = _35_m6[_2593].y - _2726;
                    float _2734 = abs(max((1.0f - abs(_2726)) - abs(_2727), 0.00048828125f));
                    float3 _2738 = normalize(float3(_2726, _2727, (_35_m6[_2593].x >= 0.0f) ? _2734 : (-_2734)));
                    float _2744 = lerp(_35_m6[_2605].w, max(2.0f * _35_m6[_2599].y, 0.100000001490116119384765625f), float(_2717));
                    float3 _2749 = _35_m6[_2590].xyz - _546;
                    float3 _2750 = -_2738;
                    float3 _2755 = lerp(_2749, _2750 * dot(_2749, _2750), (float(_2717 && (_35_m6[_2599].z > 0.5f)) * _2718).xxx);
                    float _2756 = dot(_2755, _2755);
                    float _2757 = rsqrt(_2756);
                    float3 _2758 = _2755 * _2757;
                    float3 _2791;
                    float _2792;
                    if (_2716)
                    {
                        float3 _2762 = (_2738 * _35_m6[_2593].z) * 0.5f;
                        float3 _2763 = _2755 - _2762;
                        float3 _2764 = _2755 + _2762;
                        float _2765 = length(_2763);
                        float _2766 = length(_2764);
                        float3 _2775 = normalize(cross(cross(_2738, _2758), _2738));
                        _2791 = _2775;
                        _2792 = ((1.0f / ((((_2765 * _2766) + dot(_2763, _2764)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2775, _2763) / _2765) + (dot(_2775, _2764) / _2766)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_2593].z * _2757, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2791 = _2758;
                        _2792 = 1.0f;
                    }
                    float _2814;
                    if (_2744 < 0.0f)
                    {
                        float _2802 = _2756 * (_35_m6[_2590].w * _35_m6[_2590].w);
                        float _2805 = clamp(1.0f - (_2802 * _2802), 0.0f, 1.0f);
                        _2814 = lerp(1.0f / (_2756 + 1.0f), _2792, float(_2716)) * (_2805 * _2805);
                    }
                    else
                    {
                        float3 _2808 = _2755 * _35_m6[_2590].w;
                        _2814 = _2792 * pow(1.0f - clamp(dot(_2808, _2808), 0.0f, 1.0f), _2744);
                    }
                    float _2819 = clamp((dot(_2791, _2750) - _35_m6[_2593].z) * _35_m6[_2593].w, 0.0f, 1.0f);
                    float _2822 = _2814 * lerp(1.0f, _2819 * _2819, _2718);
                    int _2824 = int(_35_m6[_2608].w);
                    float _2928;
                    if ((!_2716) && (_2824 >= 0))
                    {
                        uint _2830 = uint(_2824);
                        float2 _2921;
                        [branch]
                        if (_2718 != 0.0f)
                        {
                            float4 _2842 = mul(_62_m1[_2830], float4(_546.x, _637, _546.z, 1.0f));
                            _2921 = _62_m0[_2830].xy + (clamp(_2842.xy / _2842.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2830].zw);
                        }
                        else
                        {
                            float3 _2862 = mul(float4(-_2755, 0.0f), _62_m1[_2830]).xyz;
                            float3 _420 = _2862;
                            float3 _419 = _2862;
                            float3 _418 = abs(_2862);
                            uint _2871 = uint(int(_418.y > _418.x));
                            uint _2877 = (_418.z > _418[_2871]) ? 2u : _2871;
                            uint _2883 = (_2877 * 2u) + uint(_419[_2877] < 0.0f);
                            float _2887 = abs(_420[_2883 / 2u]);
                            float _2907 = 0.5f - (0.000244140625f / _62_m0[_2830].w);
                            _2921 = _62_m0[_2830].xy + (clamp(float2((float(_2883) + ((((_420[uint(_370[_2883].x)] * _371[_2883].x) / _2887) * _2907) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_420[uint(_370[_2883].y)] * _371[_2883].y) / _2887) * _2907)), 0.0f.xx, 1.0f.xx) * _62_m0[_2830].zw);
                        }
                        _2928 = _2822 * _60.SampleLevel(_24, _2921, 0.0f).x;
                    }
                    else
                    {
                        _2928 = _2822;
                    }
                    float _2929 = _2928 * _2687;
                    float3 _3380;
                    do
                    {
                        float3 _3379;
                        [branch]
                        if (_2929 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2717)
                            {
                                _3380 = lerp(_2551, _35_m6[_2587].xyz, (_2929 * (_35_m6[_2599].x * ((1.0f - _35_m6[_2599].w) + (smoothstep(-0.5f, 0.5f, dot(_574, _2791)) * _35_m6[_2599].w)))).xxx);
                                break;
                            }
                            float _2949 = dot(_2002, _2791);
                            float _2950 = clamp(_2949, 0.0f, 1.0f);
                            float _3253;
                            if (_2700 != 0u)
                            {
                                bool _2956 = _2712 || ((_2612 & 2u) != 0u);
                                int _3005;
                                if (_2956)
                                {
                                    _3005 = int(_35_m6[_2596].x);
                                }
                                else
                                {
                                    uint _2962 = asuint(_35_m6[_2593].w);
                                    uint _2964 = asuint(_35_m6[_2596].x);
                                    float3 _2965 = _546 - _35_m6[_2590].xyz;
                                    float3 _2966 = abs(_2965);
                                    float _2967 = _2966.x;
                                    float _2968 = _2966.y;
                                    float _2970 = _2966.z;
                                    int _3002;
                                    if ((_2967 > _2968) && (_2967 > _2970))
                                    {
                                        _3002 = int((_2965.x > 0.0f) ? (_2962 >> 24u) : ((_2962 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3001;
                                        if (_2968 > _2970)
                                        {
                                            _3001 = int((_2965.y > 0.0f) ? ((_2962 >> 8u) & 255u) : (_2962 & 255u));
                                        }
                                        else
                                        {
                                            _3001 = int((_2965.z > 0.0f) ? ((_2964 >> 8u) & 255u) : (_2964 & 255u));
                                        }
                                        _3002 = _3001;
                                    }
                                    _3005 = (_3002 < 80) ? _3002 : (-1);
                                }
                                bool _3006 = _3005 >= 0;
                                float _3252;
                                if (_3006)
                                {
                                    float3 _3010 = _546 - _35_m6[_2590].xyz;
                                    float4 _3030 = mul(_37_m10[_3005], float4((_546 - ((_3010 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3010, _3010)))) * _37_m11[_3005].x)) + (_574 * (_37_m11[_3005].y * 5.0f)), 1.0f));
                                    float _3031 = _3030.w;
                                    float3 _3034 = _3030.xyz / _3031.xxx;
                                    float2 _3035 = _3034.xy;
                                    float3 _3043 = _3034.xyz;
                                    bool3 _3044 = bool3(_3043.x <= 0.0f.xxx.x, _3043.y <= 0.0f.xxx.y, _3043.z <= 0.0f.xxx.z);
                                    bool3 _3045 = bool3(_3043.x >= 1.0f.xxx.x, _3043.y >= 1.0f.xxx.y, _3043.z >= 1.0f.xxx.z);
                                    float _3048 = _3034.z;
                                    float2 _3059 = ((_3035 * (_37_m12[_3005].zw - _37_m12[_3005].xy)) + _37_m12[_3005].xy).xy * _37_m13.zw;
                                    float2 _3061 = floor(_3059 + 0.5f.xx);
                                    float2 _3062 = _3059 - _3061;
                                    float _3064 = _3062.x + 0.5f;
                                    float _3065 = _3064 * _3064;
                                    float _3068 = 1.0f - _3062.x;
                                    float _3069 = min(_3062.x, 0.0f);
                                    float _3072 = _3062.x + 1.0f;
                                    float _3073 = max(_3062.x, 0.0f);
                                    float _3085 = _3062.y + 0.5f;
                                    float _3086 = _3085 * _3085;
                                    float _3089 = 1.0f - _3062.y;
                                    float _3090 = min(_3062.y, 0.0f);
                                    float _3093 = _3062.y + 1.0f;
                                    float _3094 = max(_3062.y, 0.0f);
                                    float3 _3106 = float3(0.1599999964237213134765625f * _3068, 0.1599999964237213134765625f * ((_3072 - (_3073 * _3073)) + 1.0f), _3065 * 0.07999999821186065673828125f);
                                    float3 _3107 = float3(0.1599999964237213134765625f * ((_3065 * 0.5f) - _3062.x), 0.1599999964237213134765625f * ((_3068 - (_3069 * _3069)) + 1.0f), 0.1599999964237213134765625f * _3072) + _3106;
                                    float3 _3109 = float3(0.1599999964237213134765625f * _3089, 0.1599999964237213134765625f * ((_3093 - (_3094 * _3094)) + 1.0f), _3086 * 0.07999999821186065673828125f);
                                    float3 _3110 = float3(0.1599999964237213134765625f * ((_3086 * 0.5f) - _3062.y), 0.1599999964237213134765625f * ((_3089 - (_3090 * _3090)) + 1.0f), 0.1599999964237213134765625f * _3093) + _3109;
                                    float3 _3116 = ((_3106 / _3107) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _3118 = ((_3109 / _3110) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _3120 = _3061 * _37_m13.xy;
                                    float _3121 = _3116.x;
                                    float _3122 = _3118.x;
                                    float _3125 = _3116.y;
                                    float _3128 = _3116.z;
                                    float _3131 = _3118.y;
                                    float _3138 = _3118.z;
                                    float _3145 = _3107.x;
                                    float _3146 = _3110.x;
                                    float _3148 = _3107.y;
                                    float _3150 = _3107.z;
                                    float _3152 = _3110.y;
                                    float _3156 = _3110.z;
                                    float _3214 = (((((((_3145 * _3146) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3121, _3122), _412).xy, _3048)) + ((_3148 * _3146) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3125, _3122), _412).xy, _3048))) + ((_3150 * _3146) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3128, _3122), _412).xy, _3048))) + ((_3145 * _3152) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3121, _3131), _412).xy, _3048))) + ((_3148 * _3152) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3125, _3131), _412).xy, _3048))) + ((_3150 * _3152) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3128, _3131), _412).xy, _3048))) + ((_3145 * _3156) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3121, _3138), _412).xy, _3048));
                                    float2 _3235 = min(_3035, 1.0f.xx - _3035);
                                    _3252 = _3006 ? lerp(1.0f, (any(bool3(_3044.x || _3045.x, _3044.y || _3045.y, _3044.z || _3045.z)) || ((asuint(_3048) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3214 + ((_3148 * _3156) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3125, _3138), _412).xy, _3048))) + ((_3150 * _3156) * _38.SampleCmpLevelZero(_26, float3(_3120 + float2(_3128, _3138), _412).xy, _3048))), _2956 ? min(_37_m11[_3005].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_3005].z - _3031) * 0.25f, min(_3235.x, _3235.y)))) : _37_m11[_3005].w) : 1.0f;
                                }
                                else
                                {
                                    _3252 = clamp(dot(_553, _2791) + 1.0f, 0.0f, 1.0f);
                                }
                                _3253 = _3252;
                            }
                            else
                            {
                                _3253 = 1.0f;
                            }
                            float _3333;
                            float3 _3334;
                            float _3335;
                            float3 _3336;
                            float3 _3337;
                            float _3338;
                            float _3339;
                            [branch]
                            if (_2700 == 0u)
                            {
                                float3 _3259 = _35_m6[_2587].xyz * _2929;
                                float3 _3272 = _2246.xyz;
                                _3333 = _2929;
                                _3334 = (_35_m6[_2587].xyz * ((1.0f - _35_m6[_2599].y) + ((1.0f / max(1.0f, max(max(_3259.x, _3259.y), _3259.z) * lerp(0.75f, 0.5f, _2435))) * _35_m6[_2599].y))) * lerp(0.25f * _35_m6[_2599].x, 1.0f, clamp(_2949 + 0.5f, 0.0f, 1.0f));
                                _3335 = _2950;
                                _3336 = _3272;
                                _3337 = _3272;
                                _3338 = 1.0f;
                                _3339 = 0.0f;
                            }
                            else
                            {
                                float _3327;
                                float _3328;
                                float3 _3329;
                                float3 _3330;
                                float _3331;
                                float _3332;
                                if (_2700 == 3u)
                                {
                                    _3327 = _2929 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_2599].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_2599].x), _2401) * _3253);
                                    _3328 = clamp(dot(_2002, -normalize(cross(_605, cross(_605, _2791)))), 0.0f, 1.0f);
                                    _3329 = lerp(0.5f.xxx, _2021, _35_m6[_2599].y.xxx);
                                    _3330 = 0.0f.xxx;
                                    _3331 = 1.0f;
                                    _3332 = 0.0f;
                                }
                                else
                                {
                                    bool _3297 = _2700 == 1u;
                                    float _3321;
                                    float3 _3322;
                                    float _3323;
                                    float _3324;
                                    if (_3297)
                                    {
                                        _3321 = clamp(clamp(_2949 + _35_m6[_2599].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3253;
                                        _3322 = _2025 * _35_m6[_2599].y;
                                        _3323 = 1.0f;
                                        _3324 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3307 = _2700 == 2u;
                                        float _3319;
                                        if (_3307)
                                        {
                                            _3319 = smoothstep(_35_m6[_2599].x + 0.0500000007450580596923828125f, _35_m6[_2599].x - 0.0500000007450580596923828125f, _2003) * ((1.0f - _35_m6[_2599].z) + (step(0.5f, _2006) * _35_m6[_2599].z));
                                        }
                                        else
                                        {
                                            _3319 = 1.0f;
                                        }
                                        _3321 = _2950;
                                        _3322 = 0.0f.xxx;
                                        _3323 = _3319;
                                        _3324 = _3307 ? _35_m6[_2599].y : 0.0f;
                                    }
                                    bool3 _3325 = _3297.xxx;
                                    _3327 = _2929;
                                    _3328 = _3321;
                                    _3329 = float3(_3325.x ? _2021.x : 0.0f.xxx.x, _3325.y ? _2021.y : 0.0f.xxx.y, _3325.z ? _2021.z : 0.0f.xxx.z);
                                    _3330 = _3322;
                                    _3331 = _3323;
                                    _3332 = _3324;
                                }
                                _3333 = _3327;
                                _3334 = _35_m6[_2587].xyz;
                                _3335 = _3328;
                                _3336 = _3329;
                                _3337 = _3330;
                                _3338 = _3331;
                                _3339 = _3332;
                            }
                            float3 _3369;
                            [branch]
                            if (_2700 != 3u)
                            {
                                float3 _3346 = normalize(_2791 + _450);
                                float3 _3353 = float3(_2277 * dot(_590, _3346), _2276 * dot(_593, _3346), _2278 * dot(_1867, _3346));
                                float _3354 = dot(_3353, _3353);
                                float _3355 = _3354 * _3354;
                                _3369 = ((_2313 * clamp((((_2285 != _3355) ? (_2285 / _3355) : 1.0f) * (0.5f / ((_2290 + (lerp(_2027, 0.00999999977648258209228515625f, _3339) * _2292)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3338) * _35_m6[_2608].z;
                            }
                            else
                            {
                                _3369 = 0.0f.xxx;
                            }
                            float3 _3372 = _3334 * _3333;
                            _3379 = _2551 + (((_3372 * lerp(_3337, _3336, _3335.xxx)) * _2351) + ((_3372 * _3369) * _3335));
                        }
                        else
                        {
                            _3379 = _2551;
                        }
                        _3380 = _3379;
                        break;
                    } while(false);
                    _3381 = _3380;
                    break;
                } while(false);
                _3382 = _3381;
            }
            else
            {
                _3382 = _2551;
            }
            _2574 = _3382;
        }
    }
    float3 _3422;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _3422 = lerp(lerp(0.5f.xxx, lerp(dot(_2550, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2550, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_2399, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _3422 = _2550;
    }
    float4 _3429 = float4(_3422 * _19_m20.y, _497);
    _3429.w = (_48_m8 == 1.0f) ? _497 : 1.0f;
    float4 _3816;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3453 = _637 * _19_m46.w;
        float _3458 = max(0.00999999977648258209228515625f, _3453 + _19_m47.w);
        float3 _3472 = exp(_19_m45.xyz * ((-max(0.0f, (_451 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3458)) / _3458) * exp(_3453 + _19_m48.w))));
        float _3475 = dot(_2503, _19_m44.xyz);
        float _3481 = _19_m45.w * _19_m45.w;
        float _3485 = (1.0f + _3481) - ((2.0f * _19_m45.w) * _3475);
        float3 _3808;
        float _3809;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3530 = (uint3(int3(_2111, _2112, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3531 = _3530.y;
            uint _3532 = _3530.z;
            uint _3535 = _3530.x + (_3531 * _3532);
            uint _3537 = _3531 + (_3532 * _3535);
            uint _3539 = _3532 + (_3535 * _3537);
            uint _3541 = _3535 + (_3537 * _3539);
            float _3566 = dot(_2503, -_17_m0[2].xyz);
            float3 _3573 = _546 - _17_m11.xyz;
            float _3575 = (_19_m55.w * ((_3566 > 5.9604644775390625e-08f) ? (1.0f / _3566) : 0.0f)) * (1.0f / _451);
            float _3576 = _3573.y;
            float _3577 = _3575 * _3576;
            float _3579 = _17_m11.y + _3577;
            float _3580 = _3576 - _3577;
            float _3582 = (1.0f - _3575) * _451;
            float _3596 = max(-127.0f, _19_m49.z * _3580);
            float _3620 = max(-127.0f, _19_m52.x * _3580);
            float _3631 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3579 - _19_m49.x)))) * ((abs(_3596) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3596)) / _3596) : (0.693147182464599609375f - (0.2402265071868896484375f * _3596)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3579 - _19_m52.z)))) * ((abs(_3620) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3620)) / _3620) : (0.693147182464599609375f - (0.2402265071868896484375f * _3620))));
            float _3653 = clamp((_451 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3656 = clamp((max(clamp(exp2(-(_3631 * _3582)), 0.0f, 1.0f), _19_m51.w) + clamp((_451 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3653, 0.0f, 1.0f);
            float4 _3696 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_24, float3((_2525 + ((((float3(uint3(_3541, _3537 + (_3539 * _3541), _416) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_431 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_431 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3808 = _3696.xyz + (((_19_m51.xyz * (1.0f - _3656)) + (((_19_m54.xyz * pow(clamp(dot(_450, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3631 * max(_3582 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3653))) * _3696.w);
            _3809 = _3696.w * _3656;
        }
        else
        {
            float3 _3702 = _546 - _17_m11.xyz;
            float _3704 = _3702.y;
            float _3718 = max(-127.0f, _19_m49.z * _3704);
            float _3742 = max(-127.0f, _19_m52.x * _3704);
            float _3753 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3718) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3718)) / _3718) : (0.693147182464599609375f - (0.2402265071868896484375f * _3718)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3742) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3742)) / _3742) : (0.693147182464599609375f - (0.2402265071868896484375f * _3742))));
            float _3775 = clamp((_451 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3778 = clamp((max(clamp(exp2(-(_3753 * _451)), 0.0f, 1.0f), _19_m51.w) + clamp((_451 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3775, 0.0f, 1.0f);
            _3808 = (_19_m51.xyz * (1.0f - _3778)) + (((_19_m54.xyz * pow(clamp(dot(_450, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3753 * max(_451 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3775));
            _3809 = _3778;
        }
        float3 _3814 = (_3429.xyz * (_3472 * _3809)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3475 * _3475)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3481) / max((12.56637096405029296875f * _3485) * sqrt(_3485), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3472)) * _3809) + _3808);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3814 = (_3814 * 0.65f) + (_3429.xyz * 0.35f);

        }

        // RenoDX code end
        _3816 = float4(_3814.x, _3814.y, _3814.z, _3429.w);
    }
    else
    {
        _3816 = _3429;
    }
    _14 = _3816;
    _15 = _2076;
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
    _12 = stage_input._12;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._14 = _14;
    stage_output._15 = _15;
    return stage_output;
}

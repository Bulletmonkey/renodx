// Endfield 1.5 Vulkan shader 0x723AA6A9, migrated from 1.4.4 shader 0x56AEE0AF.
// Classification is provisional: runtime observation does not currently look
// like fog. Keep the replacement enabled pending a new DevKit pass trace.
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

static float _408 = (float)0;
static float3 _409 = (float3)0;
static float _411 = (float)0;
static uint _412 = (uint)0;

static const int2 _365[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _366[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float4 _48_m34 : packoffset(c13);
    float4 _48_m35 : packoffset(c14);
    float4 _48_m36 : packoffset(c15);
    float4 _48_m37 : packoffset(c16);
    float4 _48_m38 : packoffset(c17);
    float4 _48_m39 : packoffset(c18);
    float _48_m40 : packoffset(c19);
    float _48_m41 : packoffset(c19.y);
    float _48_m42 : packoffset(c19.z);
    float _48_m43 : packoffset(c19.w);
    float _48_m44 : packoffset(c20);
    float _48_m45 : packoffset(c20.y);
    float _48_m46 : packoffset(c20.z);
    float _48_m47 : packoffset(c20.w);
};

[[vk::binding(50, 0)]]
cbuffer _60_61 : register(b50)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
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
[[vk::binding(2, 1)]] Texture2D<float4> _49 : register(t2);
[[vk::binding(1, 1)]] SamplerState _50 : register(s1);
[[vk::binding(44, 0)]] Texture2D<float4> _51 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _53 : register(t39);
[[vk::binding(5, 1)]] Texture2D<float4> _54 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _55 : register(t3);
[[vk::binding(4, 1)]] Texture2D<float4> _56 : register(t4);
[[vk::binding(45, 0)]] TextureCube<float4> _58 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _59 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _64 : register(t36);

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
    float _427 = 1.0f / gl_FragCoord.w;
    float3 _442 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _443 = dot(_442, _442);
    float _445 = rsqrt(max(_443, 9.9999999392252902907785028219223e-09f));
    float3 _446 = _442 * _445;
    float _447 = _443 * _445;
    uint _450 = asuint(_22_m0[_12]._m2.x);
    bool _455 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _468;
    float4 _469;
    if (_455)
    {
        _468 = asfloat(_31_Load4((_450 + 2u) * 16 + 0));
        _469 = asfloat(_31_Load4(_450 * 16 + 0));
    }
    else
    {
        _468 = _22_m0[_12]._m0[2];
        _469 = _22_m0[_12]._m0[0];
    }
    float4 _475 = _54.SampleBias(_25, _3, _19_m16);
    float3 _480 = _475.xyz * _48_m24.xyz;
    float4 _484 = _55.SampleBias(_25, _3, _19_m16);
    float _485 = _484.x;
    float _487 = _484.z;
    float _489 = 1.0f - _484.w;
    float _493 = _475.w * _48_m24.w;
    float3 _498 = _480 * _48_m18;
    float3 _502 = lerp(dot(_498, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _498, _48_m19.xxx);
    float4 _506 = _56.SampleBias(_25, _3, _19_m16);
    _506.w = _506.w * _506.x;
    float2 _515 = (_506.wy * 2.0f) - 1.0f.xx;
    float3 _516 = float3(_515.x, _515.y, _409.z);
    float2 _517 = _515.xy;
    _516.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_517, _517), 0.0f, 1.0f)));
    float2 _525 = _516.xy * _48_m3;
    float3 _530 = _4 + _17_m11.xyz;
    float3 _534 = _530 - float3(_469.w, _411, _468.w);
    _534.y = 6.103515625e-05f;
    float3 _537 = normalize(_534);
    float3 _547 = mul(float3(_525.x, _525.y, _516.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _556 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _557 = (_547 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_547, _547)))) * _556;
    float3 _558 = normalize(_5) * _556;
    uint2 _560 = uint2(gl_FragCoord.xy);
    float3 _570 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _579 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _592 = float4(float(_579 & 255u), float((_579 >> 8u) & 255u), float((_579 >> 16u) & 255u), float((_579 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _593 = _592.x;
    float _596 = _592.w;
    float _602 = _530.y;
    float _605 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _602) * _592.y;
    float _606 = max(_592.z, _605);
    float _615 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1109;
    float3 _1110;
    float3 _1111;
    float _1112;
    if (_19_m80.y < 0.5f)
    {
        float3 _630 = _530 - (_19_m105.xyz + (_570 * (-_19_m107.w)));
        float _644 = max(clamp((max(abs(_630.x), abs(_630.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_630.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _946;
        float4 _947;
        float4 _948;
        float _949;
        float _950;
        if ((_19_m105.w != 0.0f) && (_644 < 1.0f))
        {
            float3 _657 = _530 - (_19_m105.xyz + (_570 * (-_19_m107.y)));
            float _671 = max(clamp((max(abs(_657.x), abs(_657.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_657.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _747;
            float4 _748;
            float4 _749;
            float4 _750;
            if (_671 < 1.0f)
            {
                float3 _680 = ((_530 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _682 = _680 - floor(_680);
                float4 _686 = _41.SampleLevel(_25, _682, 0.0f);
                float _687 = 1.0f - _671;
                float _691 = _19_m106.y * 0.5f;
                float _696 = _682.x;
                float _697 = clamp(_682.y, _691, 1.0f - _691) * 0.3333333432674407958984375f;
                float _698 = _682.z;
                float4 _701 = _42.SampleLevel(_24, float3(_696, _697, _698), 0.0f);
                float _717 = _686.x;
                float _727 = _686.y;
                float _737 = _686.z;
                _747 = _644 + (_701.w * _687);
                _748 = float4(((_42.SampleLevel(_24, float3(_696, _697 + 0.666666686534881591796875f, _698), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _737, _737) * _687;
                _749 = float4(((_42.SampleLevel(_24, float3(_696, _697 + 0.3333333432674407958984375f, _698), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _727, _727) * _687;
                _750 = float4(((_701.xyz * 4.0f) - 2.0f.xxx) * _717, _717) * _687;
            }
            else
            {
                _747 = _644;
                _748 = 0.0f.xxxx;
                _749 = 0.0f.xxxx;
                _750 = 0.0f.xxxx;
            }
            float3 _756 = _530 - (_19_m105.xyz + (_570 * (-_19_m107.z)));
            float _770 = max(clamp((max(abs(_756.x), abs(_756.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_756.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _850;
            float4 _851;
            float4 _852;
            float4 _853;
            if (_770 < 1.0f)
            {
                float3 _779 = ((_530 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _781 = _779 - floor(_779);
                float4 _785 = _43.SampleLevel(_25, _781, 0.0f);
                float _787 = _671 * (1.0f - _770);
                float _791 = _19_m106.y * 0.5f;
                float _796 = _781.x;
                float _797 = clamp(_781.y, _791, 1.0f - _791) * 0.3333333432674407958984375f;
                float _798 = _781.z;
                float4 _801 = _44.SampleLevel(_24, float3(_796, _797, _798), 0.0f);
                float _817 = _785.x;
                float _828 = _785.y;
                float _839 = _785.z;
                _850 = _747 + (_801.w * _787);
                _851 = _748 + (float4(((_44.SampleLevel(_24, float3(_796, _797 + 0.666666686534881591796875f, _798), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _839, _839) * _787);
                _852 = _749 + (float4(((_44.SampleLevel(_24, float3(_796, _797 + 0.3333333432674407958984375f, _798), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _828, _828) * _787);
                _853 = _750 + (float4(((_801.xyz * 4.0f) - 2.0f.xxx) * _817, _817) * _787);
            }
            else
            {
                _850 = _747;
                _851 = _748;
                _852 = _749;
                _853 = _750;
            }
            float4 _936;
            float4 _937;
            float4 _938;
            float _939;
            if (_770 > 0.0f)
            {
                float3 _862 = ((_530 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _865 = _19_m106.xyz * 0.5f;
                float3 _867 = clamp(_862 - floor(_862), _865, 1.0f.xxx - _865);
                float4 _871 = _45.SampleLevel(_25, _867, 0.0f);
                float _873 = _770 * (1.0f - _644);
                float _877 = _19_m106.y * 0.5f;
                float _882 = _867.x;
                float _883 = clamp(_867.y, _877, 1.0f - _877) * 0.3333333432674407958984375f;
                float _884 = _867.z;
                float4 _887 = _46.SampleLevel(_24, float3(_882, _883, _884), 0.0f);
                float _903 = _871.x;
                float _914 = _871.y;
                float _925 = _871.z;
                _936 = _851 + (float4(((_46.SampleLevel(_24, float3(_882, _883 + 0.666666686534881591796875f, _884), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _925, _925) * _873);
                _937 = _852 + (float4(((_46.SampleLevel(_24, float3(_882, _883 + 0.3333333432674407958984375f, _884), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _914, _914) * _873);
                _938 = _853 + (float4(((_887.xyz * 4.0f) - 2.0f.xxx) * _903, _903) * _873);
                _939 = _850 + (_887.w * _873);
            }
            else
            {
                _936 = _851;
                _937 = _852;
                _938 = _853;
                _939 = _850;
            }
            float _942 = clamp((_939 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _946 = _936;
            _947 = _937;
            _948 = _938;
            _949 = _942 - _644;
            _950 = (_942 + _644) * 0.5f;
        }
        else
        {
            _946 = 0.0f.xxxx;
            _947 = 0.0f.xxxx;
            _948 = 0.0f.xxxx;
            _949 = 0.0f;
            _950 = 1.0f;
        }
        float4 _970 = _948 + float4(_19_m108.x * _950, (_19_m108.y * _950) + ((_19_m108.w * _949) * 0.5f), _19_m108.z * _950, (_19_m108.w * _950) + ((_19_m108.y * _949) * 0.375f));
        float4 _990 = _947 + float4(_19_m109.x * _950, (_19_m109.y * _950) + ((_19_m109.w * _949) * 0.5f), _19_m109.z * _950, (_19_m109.w * _950) + ((_19_m109.y * _949) * 0.375f));
        float4 _1010 = _946 + float4(_19_m110.x * _950, (_19_m110.y * _950) + ((_19_m110.w * _949) * 0.5f), _19_m110.z * _950, (_19_m110.w * _950) + ((_19_m110.y * _949) * 0.375f));
        float4 _1014 = float4(_557, 1.0f);
        float3 _1020 = max(float3(dot(_970, _1014), dot(_990, _1014), dot(_1010, _1014)), 0.0f.xxx) * _615;
        float3 _1028 = ((_970.xyz * 0.2125999927520751953125f) + (_990.xyz * 0.715200006961822509765625f)) + (_1010.xyz * 0.072200000286102294921875f);
        float3 _1032 = _1028 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1028, _1028)));
        float _1034 = abs(_1032.y);
        float3 _1035 = _1032;
        _1035.y = _1034;
        float4 _1036 = float4(_1035.x, _1035.y, _1035.z, 0.0f.xxxx.w);
        _1036.w = 1.0f;
        float4 _1040 = float4(_1032.x, _1034, _1032.z, 1.0f);
        float3 _1045 = max(float3(dot(_970, _1040), dot(_990, _1040), dot(_1010, _1040)), 0.0f.xxx);
        float _1053 = _1020.z;
        float _1054 = _1020.y;
        float4 _1059 = lerp(float4(_1053, _1054, -1.0f, 0.666666686534881591796875f), float4(_1054, _1053, 0.0f, -0.3333333432674407958984375f), step(_1053, _1054).xxxx);
        float _1060 = _1020.x;
        float _1061 = _1059.x;
        float4 _1069 = lerp(float4(_1061, _1059.yw, _1060), float4(_1060, _1059.yz, _1061), step(_1061, _1060).xxxx);
        float _1070 = _1069.x;
        float _1071 = _1069.w;
        float _1072 = _1069.y;
        float _1074 = _1070 - min(_1071, _1072);
        float _1084 = frac(abs(_1069.z + ((_1071 - _1072) / ((6.0f * _1074) + 9.9999997473787516355514526367188e-05f))));
        float _1091 = min(_1074 / (_1070 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1084 - 0.5f))) * clamp(_1070, 0.0f, 1.0f));
        float _1093 = 2.0f / (2.0f - _1091);
        _1109 = _1036;
        _1110 = _1020;
        _1111 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1084, _1091, _1093).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1091.xxx) * _1093;
        _1112 = max(max(max(_1045.x, _1045.y), _1045.z), 0.0f) * _615;
    }
    else
    {
        _1109 = 0.0f.xxxx;
        _1110 = 1.0f.xxx;
        _1111 = _19_m81.xyz;
        _1112 = _615;
    }
    bool3 _1131 = (_48_m32 > 0.5f).xxx;
    float3 _1132 = _5 * _556;
    float3 _1133 = float3(_1131.x ? _557.x : _1132.x, _1131.y ? _557.y : _1132.y, _1131.z ? _557.z : _1132.z);
    float _1135 = 1.0f / length(_1133);
    float3 _1145 = normalize(mul(float3x3(_6.xyz * _1135, (cross(_1133, _6.xyz) * ((_6.w > 0.0f) ? 1.0f : (-1.0f))) * _1135, _1133 * _1135), _446));
    float2 _1151 = (_3 * _48_m35.xy) + _48_m35.zw;
    float2 _1152 = ddx(_3);
    float2 _1153 = ddy(_3);
    float _1160 = min(_48_m30, 20.0f);
    float _1161 = 1.0f / _1160;
    float2 _1169 = ((_1145.xy / max(_1145.z, 0.001000000047497451305389404296875f).xx) * ((-1.0f) * _48_m31)) * _1161;
    float _1172;
    float _1172_copy;
    float2 _1175;
    float2 _1175_copy;
    float2 _1179;
    float _1180;
    float _1182;
    _1172 = 1.0f - _1161;
    _1175 = _1169;
    _1179 = 0.0f.xx;
    _1180 = 0.0f;
    _1182 = 1.0f;
    float _1173;
    float2 _1176;
    float _1178;
    float _1181;
    float _1197;
    float _1177 = 0.0f;
    [loop]
    for (;;)
    {
        if (_1177 < (_1160 + 1.0f))
        {
            _1181 = _49.SampleGrad(_50, _1151 + _1175, _1152 * _19_m17, _1153 * _19_m17).x;
            if (_1181 > _1172)
            {
                _1197 = _1181;
                break;
            }
            _1178 = _1177 + 1.0f;
            _1176 = _1175 + _1169;
            _1173 = _1172 - _1161;
            _1172_copy = _1172;
            _1172 = _1173;
            _1175_copy = _1175;
            _1175 = _1176;
            _1177 = _1178;
            _1179 = _1175_copy;
            _1180 = _1181;
            _1182 = _1172_copy;
            continue;
        }
        else
        {
            _1197 = _1180;
            break;
        }
    }
    float4 _1209 = _49.SampleBias(_50, (_1179 + (_1169 * ((_1180 - _1182) / (((_1180 - _1197) + _1172) - _1182)))) + _1151, _19_m16);
    float3 _1920;
    float _1921;
    float _1922;
    float _1923;
    float _1924;
    float3 _1925;
    float3 _1926;
    [branch]
    if ((clamp(_593 + _606, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1228 = 1.0f - _485;
        float _1231 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_480 * _1228, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1234 = _455.xxx;
        float3 _1236 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1240 = float3(_1234.x ? _1236.x : _10.x, _1234.y ? _1236.y : _10.y, _1234.z ? _1236.z : _10.z) * _19_m89.z;
        float3 _1242 = float3(_1234.x ? _9.xzy.x : _9.x, _1234.y ? _9.xzy.y : _9.y, _1234.z ? _9.xzy.z : _9.z);
        float3 _1244 = abs(_1242) - 0.20000000298023223876953125f.xxx;
        float3 _1247 = max((_1244 * _1244) * _1244, 6.103515625e-05f.xxx);
        float3 _1250 = _1247 / dot(_1247, 1.0f.xxx).xxx;
        float2 _1258 = _1240.xy;
        float2 _1263 = _1240.zy;
        float4 _1273 = ((_51.SampleBias(_25, _1240.xz, _19_m16) * _1250.y) + (_51.SampleBias(_25, _1258, _19_m16) * _1250.z)) + (_51.SampleBias(_25, _1263, _19_m16) * _1250.x);
        float _1274 = _1273.w;
        float _1276 = 1.10000002384185791015625f - _1274;
        float _1285 = max(smoothstep(0.800000011920928955078125f - _1274, _1276, clamp((_593 * _1228) + (_557.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1274, _1276, clamp(_605 * _1228, 0.0f, 1.0f)));
        float _1292 = smoothstep(0.5f, 0.75f, _485);
        float _1294 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _489) * _1231;
        float _1297 = clamp(_1294 + _1292, 0.0f, 1.0f) * max(_593, _606);
        bool _1301 = !((step(_593, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _606)) != 0.0f);
        bool2 _1302 = _1301.xx;
        float2 _1304 = (1.0f - _606).xx;
        float2 _1305 = float2(_1302.x ? float2(3.0f, 4.345600128173828125f).x : _1304.x, _1302.y ? float2(3.0f, 4.345600128173828125f).y : _1304.y);
        float _1306 = 1.0f - _1297;
        float _1309 = _1301 ? _19_m10.x : 1.0f;
        float _1311 = _1309 * _1305.x;
        float _1313 = _1309 * _1305.y;
        float3 _1314 = _1240 * 20.0f;
        float3 _1315 = _1240 * 34.345600128173828125f;
        float3 _1317 = pow(max(_1244, 0.0f.xxx), 10.0f.xxx);
        float3 _1321 = _1317 / max(dot(_1317, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1323 = _1321.y;
        float2 _1324 = _1314.xz * 1.0f;
        float2 _1325 = floor(_1324);
        float2 _1328 = frac(_1325 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1332 = _1328 + dot(_1328, _1328 + 34.345001220703125f.xx).xx;
        float _1333 = _1332.x;
        float _1334 = _1332.y;
        float2 _1338 = frac(float2(_1333 * _1334, _1333 + _1334));
        float2 _1341 = frac((_1325 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1345 = _1341 + dot(_1341, _1341 + 34.345001220703125f.xx).xx;
        float _1346 = _1345.x;
        float _1347 = _1345.y;
        float2 _1351 = frac(float2(_1346 * _1347, _1346 + _1347));
        float _1357 = _1338.x;
        float _1359 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1357);
        float2 _1360 = ((_1324 - _1325) + ((((_1351 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1363 = _1360.y;
        float2 _1367 = float2(_1360.x * 1.25f, _1363 * ((_1363 < 0.0f) ? 1.25f : 0.75f));
        float _1370 = _1311 + _1357;
        float _1374 = _1301 ? frac(_1370) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1370, 0.0f, 1.0f));
        float _1386 = _1338.y;
        float _1389 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1374) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1374)) * step(0.001000000047497451305389404296875f, smoothstep(_1359, 0.0f, length(_1367)))) * step(_1306, _1386 - 0.100000001490116119384765625f);
        float _1392 = _1389 * _1323;
        float _1400 = _1321.z;
        float2 _1401 = _1314.xy * 1.0f;
        float2 _1402 = floor(_1401);
        float2 _1405 = frac(_1402 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1409 = _1405 + dot(_1405, _1405 + 34.345001220703125f.xx).xx;
        float _1410 = _1409.x;
        float _1411 = _1409.y;
        float2 _1415 = frac(float2(_1410 * _1411, _1410 + _1411));
        float2 _1418 = frac((_1402 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1422 = _1418 + dot(_1418, _1418 + 34.345001220703125f.xx).xx;
        float _1423 = _1422.x;
        float _1424 = _1422.y;
        float2 _1428 = frac(float2(_1423 * _1424, _1423 + _1424));
        float _1434 = _1415.x;
        float _1436 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1434);
        float2 _1437 = ((_1401 - _1402) + ((((_1428 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1440 = _1437.y;
        float2 _1444 = float2(_1437.x * 1.25f, _1440 * ((_1440 < 0.0f) ? 1.25f : 0.75f));
        float _1447 = _1311 + _1434;
        float _1451 = _1301 ? frac(_1447) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1447, 0.0f, 1.0f));
        float _1463 = _1415.y;
        float _1466 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1451) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1451)) * step(0.001000000047497451305389404296875f, smoothstep(_1436, 0.0f, length(_1444)))) * step(_1306, _1463 - 0.100000001490116119384765625f);
        float _1469 = _1466 * _1400;
        float _1477 = _1321.x;
        float2 _1478 = _1314.zy * 1.0f;
        float2 _1479 = floor(_1478);
        float2 _1482 = frac(_1479 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1486 = _1482 + dot(_1482, _1482 + 34.345001220703125f.xx).xx;
        float _1487 = _1486.x;
        float _1488 = _1486.y;
        float2 _1492 = frac(float2(_1487 * _1488, _1487 + _1488));
        float2 _1495 = frac((_1479 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1499 = _1495 + dot(_1495, _1495 + 34.345001220703125f.xx).xx;
        float _1500 = _1499.x;
        float _1501 = _1499.y;
        float2 _1505 = frac(float2(_1500 * _1501, _1500 + _1501));
        float _1511 = _1492.x;
        float _1513 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1511);
        float2 _1514 = ((_1478 - _1479) + ((((_1505 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1517 = _1514.y;
        float2 _1521 = float2(_1514.x * 1.25f, _1517 * ((_1517 < 0.0f) ? 1.25f : 0.75f));
        float _1524 = _1311 + _1511;
        float _1528 = _1301 ? frac(_1524) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1524, 0.0f, 1.0f));
        float _1540 = _1492.y;
        float _1543 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1528) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1528)) * step(0.001000000047497451305389404296875f, smoothstep(_1513, 0.0f, length(_1521)))) * step(_1306, _1540 - 0.100000001490116119384765625f);
        float _1546 = _1543 * _1477;
        float2 _1559 = (float4(((clamp(_1367 / _1359.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1351.x)) * _1389) * _1323, _1392, _1386).xy + float4(((clamp(_1444 / _1436.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1428.x)) * _1466) * _1400, _1469, _1463).xy) + float4(((clamp(_1521 / _1513.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1505.x)) * _1543) * _1477, _1546, _1540).xy;
        float _1561 = max(_1546, max(_1392, _1469));
        float4 _1564 = float4(_1559, _1561, 0.0f);
        float2 _1566 = _1315.xz * 1.0f;
        float2 _1567 = floor(_1566);
        float2 _1570 = frac(_1567 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1574 = _1570 + dot(_1570, _1570 + 34.345001220703125f.xx).xx;
        float _1575 = _1574.x;
        float _1576 = _1574.y;
        float2 _1580 = frac(float2(_1575 * _1576, _1575 + _1576));
        float2 _1583 = frac((_1567 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1587 = _1583 + dot(_1583, _1583 + 34.345001220703125f.xx).xx;
        float _1588 = _1587.x;
        float _1589 = _1587.y;
        float2 _1593 = frac(float2(_1588 * _1589, _1588 + _1589));
        float _1599 = _1580.x;
        float _1601 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1599);
        float2 _1602 = ((_1566 - _1567) + ((((_1593 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1605 = _1602.y;
        float2 _1609 = float2(_1602.x * 1.25f, _1605 * ((_1605 < 0.0f) ? 1.25f : 0.75f));
        float _1612 = _1313 + _1599;
        float _1616 = _1301 ? frac(_1612) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1612, 0.0f, 1.0f));
        float _1628 = _1580.y;
        float _1631 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1616) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1616)) * step(0.001000000047497451305389404296875f, smoothstep(_1601, 0.0f, length(_1609)))) * step(_1306, _1628 - 0.100000001490116119384765625f);
        float _1634 = _1631 * _1323;
        float2 _1639 = _1315.xy * 1.0f;
        float2 _1640 = floor(_1639);
        float2 _1643 = frac(_1640 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1647 = _1643 + dot(_1643, _1643 + 34.345001220703125f.xx).xx;
        float _1648 = _1647.x;
        float _1649 = _1647.y;
        float2 _1653 = frac(float2(_1648 * _1649, _1648 + _1649));
        float2 _1656 = frac((_1640 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1660 = _1656 + dot(_1656, _1656 + 34.345001220703125f.xx).xx;
        float _1661 = _1660.x;
        float _1662 = _1660.y;
        float2 _1666 = frac(float2(_1661 * _1662, _1661 + _1662));
        float _1672 = _1653.x;
        float _1674 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1672);
        float2 _1675 = ((_1639 - _1640) + ((((_1666 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1678 = _1675.y;
        float2 _1682 = float2(_1675.x * 1.25f, _1678 * ((_1678 < 0.0f) ? 1.25f : 0.75f));
        float _1685 = _1313 + _1672;
        float _1689 = _1301 ? frac(_1685) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1685, 0.0f, 1.0f));
        float _1701 = _1653.y;
        float _1704 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1689) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1689)) * step(0.001000000047497451305389404296875f, smoothstep(_1674, 0.0f, length(_1682)))) * step(_1306, _1701 - 0.100000001490116119384765625f);
        float _1707 = _1704 * _1400;
        float2 _1712 = _1315.zy * 1.0f;
        float2 _1713 = floor(_1712);
        float2 _1716 = frac(_1713 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1720 = _1716 + dot(_1716, _1716 + 34.345001220703125f.xx).xx;
        float _1721 = _1720.x;
        float _1722 = _1720.y;
        float2 _1726 = frac(float2(_1721 * _1722, _1721 + _1722));
        float2 _1729 = frac((_1713 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1733 = _1729 + dot(_1729, _1729 + 34.345001220703125f.xx).xx;
        float _1734 = _1733.x;
        float _1735 = _1733.y;
        float2 _1739 = frac(float2(_1734 * _1735, _1734 + _1735));
        float _1745 = _1726.x;
        float _1747 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1745);
        float2 _1748 = ((_1712 - _1713) + ((((_1739 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1751 = _1748.y;
        float2 _1755 = float2(_1748.x * 1.25f, _1751 * ((_1751 < 0.0f) ? 1.25f : 0.75f));
        float _1758 = _1313 + _1745;
        float _1762 = _1301 ? frac(_1758) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1758, 0.0f, 1.0f));
        float _1774 = _1726.y;
        float _1777 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1762) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1762)) * step(0.001000000047497451305389404296875f, smoothstep(_1747, 0.0f, length(_1755)))) * step(_1306, _1774 - 0.100000001490116119384765625f);
        float _1780 = _1777 * _1477;
        float2 _1788 = (float4(((clamp(_1609 / _1601.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1593.x)) * _1631) * _1323, _1634, _1628).xy + float4(((clamp(_1682 / _1674.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1666.x)) * _1704) * _1400, _1707, _1701).xy) + float4(((clamp(_1755 / _1747.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1739.x)) * _1777) * _1477, _1780, _1774).xy;
        float4 _1793 = float4(_1788, max(_1780, max(_1634, _1707)), 0.0f);
        float _1795 = step(max(float2(_1359 * _1389, _411) * _1323, max(float2(_1436 * _1466, _411) * _1400, float2(_1513 * _1543, _411) * _1477)).x, 0.00999999977648258209228515625f);
        float2 _1799 = _1564.xy + (_1793.xy * _1795);
        float3 _1808 = float3((_1273.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1799.x, _1799.y, 0.0f.xxx.z);
        float2 _1812 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1815 = float3(_1242.x, 0.0f, _1242.z);
        float3 _1821 = abs(_1815 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1815, _1815)))) - 0.20000000298023223876953125f.xxx;
        float3 _1824 = max((_1821 * _1821) * _1821, 6.103515625e-05f.xxx);
        float3 _1827 = _1824 / dot(_1824, 1.0f.xxx).xxx;
        float _1846 = _1827.z;
        float _1848 = _1827.x;
        float4 _1850 = (_52.SampleBias(_25, _1258, _19_m16) * _1846) + (_52.SampleBias(_25, _1263, _19_m16) * _1848);
        float2 _1862 = _1808.xy + ((((_1850.xy * 2.0f) - 1.0f.xx) * ((_52.SampleBias(_25, _1258 + _1812, _19_m16).w * _1846) + (_52.SampleBias(_25, _1263 + _1812, _19_m16).w * _1848))) * _1297);
        float3 _1863 = float3(_1862.x, _1862.y, _1808.z);
        float _1864 = _1850.z;
        float _1869 = max(max(max(_1564.zw * step(0.00999999977648258209228515625f, _1561), _1793.zw * _1795).x, step(1.0099999904632568359375f - _1297, _1273.z)), smoothstep(1.0f - _1864, 1.10000002384185791015625f - _1864, _1297) * _1297);
        float2 _1870 = _1862.xy;
        _1863.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1870, _1870), 0.0f, 1.0f)));
        float3 _1877 = normalize(_1863);
        float3 _1878 = cross(_557, float3(0.0f, 1.0f, 0.0f));
        bool3 _1881 = (dot(_1878, _1878) > 6.103515625e-05f).xxx;
        float3 _1882 = normalize(_1878);
        float3 _1883 = float3(_1881.x ? _1882.x : float3(1.0f, 0.0f, 0.0f).x, _1881.y ? _1882.y : float3(1.0f, 0.0f, 0.0f).y, _1881.z ? _1882.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1894 = min(_489, 0.0500000007450580596923828125f);
        float _1895 = lerp(_489, _1894, _1869);
        float _1912 = lerp(1.0f, 0.5f, (_1285 * (1.0f - _1231)) * (1.0f - _1294));
        _1920 = normalize(lerp(_557, normalize(((_1883 * _1877.x) + (cross(_1883, _557) * _1877.y)) + (_557 * _1877.z)), _1869.xxx));
        _1921 = _1869;
        _1922 = _1894;
        _1923 = _1869;
        _1924 = max(_1895 - ((0.20000000298023223876953125f * _1231) * _1285), min(0.20000000298023223876953125f, _1895));
        _1925 = _502 * _1912;
        _1926 = lerp(_480, _480 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_480, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1869 * _1292).xxx) * _1912;
    }
    else
    {
        _1920 = _557;
        _1921 = 0.0f;
        _1922 = 0.00999999977648258209228515625f;
        _1923 = 0.0f;
        _1924 = _489;
        _1925 = _502;
        _1926 = _480;
    }
    float3 _2056;
    float _2057;
    float3 _2058;
    float3 _2059;
    float _2060;
    [branch]
    if ((_596 - _48_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1931 = _455.xxx;
        float3 _1933 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1934 = float3(_1931.x ? _1933.x : _10.x, _1931.y ? _1933.y : _10.y, _1931.z ? _1933.z : _10.z);
        float3 _1937 = _1934 * _19_m89.z;
        float3 _1939 = float3(_1931.x ? _9.xzy.x : _9.x, _1931.y ? _9.xzy.y : _9.y, _1931.z ? _9.xzy.z : _9.z);
        float3 _1941 = abs(_1939) - 0.20000000298023223876953125f.xxx;
        float3 _1944 = max((_1941 * _1941) * _1941, 6.103515625e-05f.xxx);
        float3 _1947 = _1944 / dot(_1944, 1.0f.xxx).xxx;
        float4 _1970 = ((_53.SampleBias(_25, _1937.xz, _19_m16) * _1947.y) + (_53.SampleBias(_25, _1937.xy, _19_m16) * _1947.z)) + (_53.SampleBias(_25, _1937.zy, _19_m16) * _1947.x);
        float _1971 = _1939.y;
        float _1978 = clamp(_596 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1934.y) * clamp(_596 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1984 = _1978 * (2.0f - _1978);
        float _1991 = smoothstep(2.0f - _1984, 2.349999904632568359375f - _1984, ((_1971 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1970.z) * ((_487 * _487) * float(gl_FrontFacing));
        float _2003 = lerp(1.0f, 0.5f, ((_1978 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1926 * (1.0f - _485), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1970.w) * ((_1971 * 0.25f) + 0.75f));
        float3 _2005 = _1991.xxx;
        float2 _2011 = (_1970.xy * 2.0f) - 1.0f.xx;
        float3 _2012 = float3(_2011.x, _2011.y, _409.z);
        float2 _2013 = _2011.xy;
        _2012.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2013, _2013), 0.0f, 1.0f)));
        float2 _2021 = _2012.xy * 2.0f;
        float3 _2023 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2021.x, _2021.y, _2012.z), _2005);
        float3 _2027 = _2023 * rsqrt(max(6.103515625e-05f, dot(_2023, _2023)));
        float _2028 = _557.y;
        float _2031 = step(0.00999999977648258209228515625f, 1.0f - (_2028 * _2028));
        float _2035 = lerp(_557.z, _2028, _2031);
        float3 _2042 = (float3(0.0f, _2031, 1.0f - _2031) - (_557 * _2035)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2035 * _2035)));
        _2056 = ((cross(_2042, _557) * _2027.x) + (_2042 * _2027.y)) + (_557 * _2027.z);
        _2057 = lerp(_1924, 0.89999997615814208984375f, clamp(_1991 * 4.0f, 0.0f, 1.0f));
        _2058 = lerp(_1925 * _2003, 0.3079999983310699462890625f.xxx, _2005);
        _2059 = lerp(_1926 * _2003, 0.87999999523162841796875f.xxx, _2005);
        _2060 = lerp(_485, 0.0f, _1991);
    }
    else
    {
        _2056 = _557;
        _2057 = _1924;
        _2058 = _1925;
        _2059 = _1926;
        _2060 = _485;
    }
    float _2062 = 0.959999978542327880859375f - (_2060 * 0.959999978542327880859375f);
    float3 _2063 = _2059 * _2062;
    float3 _2066 = lerp(0.039999999105930328369140625f.xxx * _484.y, _2059, _2060.xxx);
    float3 _2067 = _2058 * _2062;
    float _2069 = max(_2057 * _2057, 0.0078125f);
    float2 _2082 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2082.y = -_2082.y;
    float2 _2095 = ((sqrt(sqrt(abs(_2082 * 0.5f))) * float2(int2(sign(_2082)))) * 0.5f) + 0.5f.xx;
    float4 _2098 = float4(_2095.x, _2095.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2098.z = 1.0f;
    _2098.w = (_1923 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2111 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2115 = normalize(float3(_2111.x, 6.103515625e-05f, _2111.z));
    float3 _2125 = lerp(_35_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2129 = _2125 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _2133 = int(_560.x);
    int _2134 = int(_560.y);
    float4 _2138 = _39.Load(int3(int3(_2133, _2134, 0).xy, 0));
    float _2143 = _2138.y;
    float _2146 = lerp(lerp(1.0f, _2138.x, _37_m6.x), 1.0f, _19_m80.z);
    float _2147 = dot(_2056, _2111);
    float3 _2154 = _2067 * _19_m79.z;
    float3 _2155 = _2154 * 0.64999997615814208984375f;
    float _2159 = dot(_2063, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2172 = clamp(-dot(_2115.xz, normalize(_570.xz)), 0.0f, 1.0f);
    float _2176 = 1.0f - _19_m91.x;
    float _2184 = smoothstep(0.25f, 1.0f, clamp(lerp(_2147, ((-_2147) * ((_2147 * 0.5f) - 1.0f)) + 0.5f, (_2172 * smoothstep(0.25f, 0.75f, 1.0f - abs(_570.y))) * _2176) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2191 = max(max(_2184, _2184), _2184) - min(min(_2184, _2184), _2184);
    float _2193 = smoothstep(0.25f, 1.0f, dot(_2056, _570));
    float _2194 = _487 * _2143;
    float _2201 = min(min(_2143, _487), _2184);
    float _2202 = _2193 * _2194;
    float3 _2206 = ((clamp(dot(_557, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1111, 1.0f.xxx, (_19_m80.y * _2201).xxx);
    float3 _2208 = _2201.xxx;
    float3 _2231 = _2146.xxx;
    float3 _2232 = lerp((_2206 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1112), 1.5f), clamp(_1112, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2129, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2129, _2208) + ((_2206 * clamp(_1112, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2125 * _19_m91.y)))) * _19_m79.y, _2231);
    float3 _2233 = lerp(lerp(lerp(dot(_2155, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2155, 1.2000000476837158203125f.xxx), _2154, clamp((_2194 * _2193) + _2184, 0.0f, 1.0f).xxx), _2063, _2208);
    float3 _2239 = _2233 * ((1.0f - _2191).xxx + (_2184.xxxx.xyz * _2191));
    float3 _2248 = lerp(lerp(_2154, lerp(_2159.xxx, _2063, 1.2000000476837158203125f.xxx), _2202.xxx), _2239 * clamp(dot(_2233, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2239, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2231);
    float4 _2252 = float4(_2248, _2146);
    float _2254 = lerp(_2202, _2201, _2146);
    float _2257 = lerp(_19_m79.z, 1.0f, _2254);
    float3 _2265 = float3(_570.x, lerp(0.5f, _2111.y, _2146), _570.z);
    float _2278 = clamp(dot(_1920, _446), 0.0f, 1.0f);
    float _2279 = dot(_1920, normalize(((_2111 * _2146) + ((_2265 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2265, _2265)))) * 2.0f)) + (_446 * (2.0f + _2146))));
    float _2280 = _2069 * _2069;
    float _2284 = (((_2279 * _2280) - _2279) * _2279) + 1.0f;
    float _2285 = _2284 * _2284;
    float _2289 = 2.0f * _2278;
    float _2291 = (1.0f + _2278) - _2278;
    float _2308 = (1.0f - _48_m6) + (_493 * _48_m6);
    float3 _2310 = ((_2232 * _2248) * _2308) + (((_2066 * clamp((((_2280 != _2285) ? (_2280 / _2285) : 1.0f) * (0.5f / ((_2289 + (_2069 * _2291)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2232 * (((_2254 * 0.5f) + 0.5f) * _2257)) * 1.0f)) * _19_m92.w);
    float _2311 = dot(_2310, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2314 = clamp(_2311 - 0.5f, 0.0f, 0.5f);
    float3 _2350 = normalize(cross(_570, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2356 = dot(_446, _2056);
    float _2358 = 1.0f - abs(_2356);
    float _2380 = dot(_2115, _2056);
    float _2392 = 1.0f - _2146;
    float _2419 = lerp(_2057, _1922, _1921);
    float _2420 = _2419 * _2419;
    float _2421 = _2278 * _2278;
    float _2422 = _2421 * _2278;
    float2 _2423 = float2(1.0f, _2278);
    float2 _2426 = float2(1.0f, _2420);
    float3 _2429 = float3(1.0f, _2420, (_2420 * _2420) * _2420);
    float _2434 = dot(mul(_2423, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2426) / dot(mul(float3(1.0f, _2421, _2422), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2429);
    float _2439 = dot(mul(_2423, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2426) / dot(mul(float3(1.0f, _2278, _2422), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2429);
    float3 _2442 = (_2066 * _2434) + _2439.xxx;
    float _2443 = _2434 + _2439;
    float3 _2449 = -_446;
    float3 _2468 = lerp(_2311.xxx, _2310, ((_2314 * _2314) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2358)) * _19_m87.w) * min(min(clamp(dot(_537, _2350) + 1.0f, 0.0f, 1.0f), _487), _2143)) * (lerp(0.25f.xxx, _2063, _19_m88.z.xxx) * clamp(dot(_2350, _2056), 0.0f, 1.0f))) + ((((((lerp(_1110 * (1.0f / max(max(max(_1110.x, _1110.y), _1110.z) * 0.5f, 1.0f)), _2129, _2231) * clamp(lerp(dot(_1109.xyz, _2056) * _1109.w, ((-_2380) * ((_2380 * 0.5f) - 1.0f)) + 0.5f, _2146), 0.0f, 1.0f)) * ((_2392 + (_2172 * _2146)) * _2176)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2358)) * min(_487, _2143)) * (_2392 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2159) * _2146))) * max(0.1500000059604644775390625f.xxx, _2063)));
    float2 _2471 = float2(_560);
    float2 _2473 = floor(_2471 * 0.03125f);
    int _2481 = int((_2473.x + (_2473.y * _33_m5)) * 8.0f);
    float _2488 = floor(_427 - (_19_m3.y * _33_m11));
    float _2492 = clamp(_2488, 0.0f, _33_m7 - 1.0f);
    int _2494 = int(_2492 * 8.0f);
    float3 _2496;
    _2496 = (_2468 + (((_48_m34.xyz * _1209.x) * _493) * _2308)) + (((_58.SampleLevel(_24, reflect(_2449, _1920), (1.2000000476837158203125f * log2(max(_2419, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2442 + ((_2066 * ((1.0f - _2443) / _2443)) * _2442)) * 1.0f)) * ((clamp(_1112, 0.5f, 1.5f) * _19_m79.w) * _2257)) * _1111);
    float3 _2497;
    [loop]
    for (int _2499 = 0; _2499 <= 7; _2496 = _2497, _2499++)
    {
        uint _2517 = (_2488 <= _2492) ? (_29.Load(uint(_2481 + _2499) * 4 + 0) & _29.Load(uint((_19_m21.y + _2494) + _2499) * 4 + 0)) : 0u;
        uint _2518 = uint(_2499);
        _2497 = _2496;
        uint _2523;
        float3 _2520;
        [loop]
        for (uint _2522 = _2517; _2522 != 0u; _2497 = _2520, _2522 = _2523)
        {
            uint _2527 = firstbitlow(_2522);
            _2523 = _2522 ^ (1u << (_2527 & 31u));
            int _2533 = int((32u * _2518) + _2527) * 8;
            int _2536 = _2533 + 1;
            int _2539 = _2533 + 2;
            int _2542 = _2533 + 3;
            int _2545 = _2533 + 4;
            int _2548 = _2533 + 5;
            int _2551 = _2533 + 6;
            int _2554 = _2533 + 7;
            uint _2558 = uint(_35_m6[_2548].w);
            float _2633;
            if ((_2558 & 1u) == 1u)
            {
                uint _2564 = asuint(_35_m6[_2548].x);
                uint _2571 = asuint(_35_m6[_2548].y);
                uint _2578 = asuint(_35_m6[_2548].z);
                uint _2585 = asuint(_35_m6[_2551].x);
                uint _2592 = asuint(_35_m6[_2551].y);
                uint _2599 = asuint(_35_m6[_2551].z);
                float3 _2618 = abs(mul(float4(_530 - _35_m6[_2536].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2564).x, spvUnpackHalf2x16(_2578).x, spvUnpackHalf2x16(_2592).x, 0.0f), float4(spvUnpackHalf2x16(_2564 >> 16u).x, spvUnpackHalf2x16(_2578 >> 16u).x, spvUnpackHalf2x16(_2592 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2571).x, spvUnpackHalf2x16(_2585).x, spvUnpackHalf2x16(_2599).x, 0.0f), float4(spvUnpackHalf2x16(_2571 >> 16u).x, spvUnpackHalf2x16(_2585 >> 16u).x, spvUnpackHalf2x16(_2599 >> 16u).x, 0.0f))).xyz);
                float _2625 = _35_m6[_2554].x * 0.5f;
                float _2631 = 1.0f - clamp((max(max(_2618.x, _2618.y), _2618.z) - (_2625 + 0.5f)) / (0.5f - _2625), 0.0f, 1.0f);
                _2633 = _2631 * _2631;
            }
            else
            {
                _2633 = 1.0f;
            }
            if (false || (_2633 < 0.001000000047497451305389404296875f))
            {
                _2520 = _2497;
                continue;
            }
            float3 _3326;
            if (_35_m6[_2533].w < 1.5f)
            {
                float3 _3325;
                do
                {
                    uint _2646 = asuint(_35_m6[_2542].w);
                    if ((_2646 == 16u) || ((_35_m6[_2542].z + _19_m91.z) < 0.5f))
                    {
                        _3325 = _2497;
                        break;
                    }
                    bool _2658 = (uint(_35_m6[_2533].w) & 1u) == 0u;
                    bool _2662 = (!_2658) && (_35_m6[_2539].z > 0.0f);
                    bool _2663 = _2646 == 4u;
                    float _2664 = float(_2658);
                    float _2672 = (0.5f + (0.5f * _35_m6[_2539].y)) - abs(_35_m6[_2539].x);
                    float _2673 = _35_m6[_2539].y - _2672;
                    float _2680 = abs(max((1.0f - abs(_2672)) - abs(_2673), 0.00048828125f));
                    float3 _2684 = normalize(float3(_2672, _2673, (_35_m6[_2539].x >= 0.0f) ? _2680 : (-_2680)));
                    float _2690 = lerp(_35_m6[_2551].w, max(2.0f * _35_m6[_2545].y, 0.100000001490116119384765625f), float(_2663));
                    float3 _2695 = _35_m6[_2536].xyz - _530;
                    float3 _2696 = -_2684;
                    float3 _2701 = lerp(_2695, _2696 * dot(_2695, _2696), (float(_2663 && (_35_m6[_2545].z > 0.5f)) * _2664).xxx);
                    float _2702 = dot(_2701, _2701);
                    float _2703 = rsqrt(_2702);
                    float3 _2704 = _2701 * _2703;
                    float3 _2737;
                    float _2738;
                    if (_2662)
                    {
                        float3 _2708 = (_2684 * _35_m6[_2539].z) * 0.5f;
                        float3 _2709 = _2701 - _2708;
                        float3 _2710 = _2701 + _2708;
                        float _2711 = length(_2709);
                        float _2712 = length(_2710);
                        float3 _2721 = normalize(cross(cross(_2684, _2704), _2684));
                        _2737 = _2721;
                        _2738 = ((1.0f / ((((_2711 * _2712) + dot(_2709, _2710)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2721, _2709) / _2711) + (dot(_2721, _2710) / _2712)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_2539].z * _2703, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2737 = _2704;
                        _2738 = 1.0f;
                    }
                    float _2760;
                    if (_2690 < 0.0f)
                    {
                        float _2748 = _2702 * (_35_m6[_2536].w * _35_m6[_2536].w);
                        float _2751 = clamp(1.0f - (_2748 * _2748), 0.0f, 1.0f);
                        _2760 = lerp(1.0f / (_2702 + 1.0f), _2738, float(_2662)) * (_2751 * _2751);
                    }
                    else
                    {
                        float3 _2754 = _2701 * _35_m6[_2536].w;
                        _2760 = _2738 * pow(1.0f - clamp(dot(_2754, _2754), 0.0f, 1.0f), _2690);
                    }
                    float _2765 = clamp((dot(_2737, _2696) - _35_m6[_2539].z) * _35_m6[_2539].w, 0.0f, 1.0f);
                    float _2768 = _2760 * lerp(1.0f, _2765 * _2765, _2664);
                    int _2770 = int(_35_m6[_2554].w);
                    float _2874;
                    if ((!_2662) && (_2770 >= 0))
                    {
                        uint _2776 = uint(_2770);
                        float2 _2867;
                        [branch]
                        if (_2664 != 0.0f)
                        {
                            float4 _2788 = mul(_61_m1[_2776], float4(_530.x, _602, _530.z, 1.0f));
                            _2867 = _61_m0[_2776].xy + (clamp(_2788.xy / _2788.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2776].zw);
                        }
                        else
                        {
                            float3 _2808 = mul(float4(-_2701, 0.0f), _61_m1[_2776]).xyz;
                            float3 _416 = _2808;
                            float3 _415 = _2808;
                            float3 _414 = abs(_2808);
                            uint _2817 = uint(int(_414.y > _414.x));
                            uint _2823 = (_414.z > _414[_2817]) ? 2u : _2817;
                            uint _2829 = (_2823 * 2u) + uint(_415[_2823] < 0.0f);
                            float _2833 = abs(_416[_2829 / 2u]);
                            float _2853 = 0.5f - (0.000244140625f / _61_m0[_2776].w);
                            _2867 = _61_m0[_2776].xy + (clamp(float2((float(_2829) + ((((_416[uint(_365[_2829].x)] * _366[_2829].x) / _2833) * _2853) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_416[uint(_365[_2829].y)] * _366[_2829].y) / _2833) * _2853)), 0.0f.xx, 1.0f.xx) * _61_m0[_2776].zw);
                        }
                        _2874 = _2768 * _59.SampleLevel(_24, _2867, 0.0f).x;
                    }
                    else
                    {
                        _2874 = _2768;
                    }
                    float _2875 = _2874 * _2633;
                    float3 _3324;
                    do
                    {
                        float3 _3323;
                        [branch]
                        if (_2875 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2663)
                            {
                                _3324 = lerp(_2497, _35_m6[_2533].xyz, (_2875 * (_35_m6[_2545].x * ((1.0f - _35_m6[_2545].w) + (smoothstep(-0.5f, 0.5f, dot(_558, _2737)) * _35_m6[_2545].w)))).xxx);
                                break;
                            }
                            float _2895 = dot(_2056, _2737);
                            float _2896 = clamp(_2895, 0.0f, 1.0f);
                            float _3199;
                            if (_2646 != 0u)
                            {
                                bool _2902 = _2658 || ((_2558 & 2u) != 0u);
                                int _2951;
                                if (_2902)
                                {
                                    _2951 = int(_35_m6[_2542].x);
                                }
                                else
                                {
                                    uint _2908 = asuint(_35_m6[_2539].w);
                                    uint _2910 = asuint(_35_m6[_2542].x);
                                    float3 _2911 = _530 - _35_m6[_2536].xyz;
                                    float3 _2912 = abs(_2911);
                                    float _2913 = _2912.x;
                                    float _2914 = _2912.y;
                                    float _2916 = _2912.z;
                                    int _2948;
                                    if ((_2913 > _2914) && (_2913 > _2916))
                                    {
                                        _2948 = int((_2911.x > 0.0f) ? (_2908 >> 24u) : ((_2908 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2947;
                                        if (_2914 > _2916)
                                        {
                                            _2947 = int((_2911.y > 0.0f) ? ((_2908 >> 8u) & 255u) : (_2908 & 255u));
                                        }
                                        else
                                        {
                                            _2947 = int((_2911.z > 0.0f) ? ((_2910 >> 8u) & 255u) : (_2910 & 255u));
                                        }
                                        _2948 = _2947;
                                    }
                                    _2951 = (_2948 < 80) ? _2948 : (-1);
                                }
                                bool _2952 = _2951 >= 0;
                                float _3198;
                                if (_2952)
                                {
                                    float3 _2956 = _530 - _35_m6[_2536].xyz;
                                    float4 _2976 = mul(_37_m10[_2951], float4((_530 - ((_2956 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2956, _2956)))) * _37_m11[_2951].x)) + (_558 * (_37_m11[_2951].y * 5.0f)), 1.0f));
                                    float _2977 = _2976.w;
                                    float3 _2980 = _2976.xyz / _2977.xxx;
                                    float2 _2981 = _2980.xy;
                                    float3 _2989 = _2980.xyz;
                                    bool3 _2990 = bool3(_2989.x <= 0.0f.xxx.x, _2989.y <= 0.0f.xxx.y, _2989.z <= 0.0f.xxx.z);
                                    bool3 _2991 = bool3(_2989.x >= 1.0f.xxx.x, _2989.y >= 1.0f.xxx.y, _2989.z >= 1.0f.xxx.z);
                                    float _2994 = _2980.z;
                                    float2 _3005 = ((_2981 * (_37_m12[_2951].zw - _37_m12[_2951].xy)) + _37_m12[_2951].xy).xy * _37_m13.zw;
                                    float2 _3007 = floor(_3005 + 0.5f.xx);
                                    float2 _3008 = _3005 - _3007;
                                    float _3010 = _3008.x + 0.5f;
                                    float _3011 = _3010 * _3010;
                                    float _3014 = 1.0f - _3008.x;
                                    float _3015 = min(_3008.x, 0.0f);
                                    float _3018 = _3008.x + 1.0f;
                                    float _3019 = max(_3008.x, 0.0f);
                                    float _3031 = _3008.y + 0.5f;
                                    float _3032 = _3031 * _3031;
                                    float _3035 = 1.0f - _3008.y;
                                    float _3036 = min(_3008.y, 0.0f);
                                    float _3039 = _3008.y + 1.0f;
                                    float _3040 = max(_3008.y, 0.0f);
                                    float3 _3052 = float3(0.1599999964237213134765625f * _3014, 0.1599999964237213134765625f * ((_3018 - (_3019 * _3019)) + 1.0f), _3011 * 0.07999999821186065673828125f);
                                    float3 _3053 = float3(0.1599999964237213134765625f * ((_3011 * 0.5f) - _3008.x), 0.1599999964237213134765625f * ((_3014 - (_3015 * _3015)) + 1.0f), 0.1599999964237213134765625f * _3018) + _3052;
                                    float3 _3055 = float3(0.1599999964237213134765625f * _3035, 0.1599999964237213134765625f * ((_3039 - (_3040 * _3040)) + 1.0f), _3032 * 0.07999999821186065673828125f);
                                    float3 _3056 = float3(0.1599999964237213134765625f * ((_3032 * 0.5f) - _3008.y), 0.1599999964237213134765625f * ((_3035 - (_3036 * _3036)) + 1.0f), 0.1599999964237213134765625f * _3039) + _3055;
                                    float3 _3062 = ((_3052 / _3053) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _3064 = ((_3055 / _3056) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _3066 = _3007 * _37_m13.xy;
                                    float _3067 = _3062.x;
                                    float _3068 = _3064.x;
                                    float _3071 = _3062.y;
                                    float _3074 = _3062.z;
                                    float _3077 = _3064.y;
                                    float _3084 = _3064.z;
                                    float _3091 = _3053.x;
                                    float _3092 = _3056.x;
                                    float _3094 = _3053.y;
                                    float _3096 = _3053.z;
                                    float _3098 = _3056.y;
                                    float _3102 = _3056.z;
                                    float _3160 = (((((((_3091 * _3092) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3067, _3068), _408).xy, _2994)) + ((_3094 * _3092) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3071, _3068), _408).xy, _2994))) + ((_3096 * _3092) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3074, _3068), _408).xy, _2994))) + ((_3091 * _3098) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3067, _3077), _408).xy, _2994))) + ((_3094 * _3098) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3071, _3077), _408).xy, _2994))) + ((_3096 * _3098) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3074, _3077), _408).xy, _2994))) + ((_3091 * _3102) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3067, _3084), _408).xy, _2994));
                                    float2 _3181 = min(_2981, 1.0f.xx - _2981);
                                    _3198 = _2952 ? lerp(1.0f, (any(bool3(_2990.x || _2991.x, _2990.y || _2991.y, _2990.z || _2991.z)) || ((asuint(_2994) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3160 + ((_3094 * _3102) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3071, _3084), _408).xy, _2994))) + ((_3096 * _3102) * _38.SampleCmpLevelZero(_26, float3(_3066 + float2(_3074, _3084), _408).xy, _2994))), _2902 ? min(_37_m11[_2951].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2951].z - _2977) * 0.25f, min(_3181.x, _3181.y)))) : _37_m11[_2951].w) : 1.0f;
                                }
                                else
                                {
                                    _3198 = clamp(dot(_537, _2737) + 1.0f, 0.0f, 1.0f);
                                }
                                _3199 = _3198;
                            }
                            else
                            {
                                _3199 = 1.0f;
                            }
                            float _3279;
                            float3 _3280;
                            float _3281;
                            float3 _3282;
                            float3 _3283;
                            float _3284;
                            float _3285;
                            [branch]
                            if (_2646 == 0u)
                            {
                                float3 _3205 = _35_m6[_2533].xyz * _2875;
                                float3 _3218 = _2252.xyz;
                                _3279 = _2875;
                                _3280 = (_35_m6[_2533].xyz * ((1.0f - _35_m6[_2545].y) + ((1.0f / max(1.0f, max(max(_3205.x, _3205.y), _3205.z) * lerp(0.75f, 0.5f, _2392))) * _35_m6[_2545].y))) * lerp(0.25f * _35_m6[_2545].x, 1.0f, clamp(_2895 + 0.5f, 0.0f, 1.0f));
                                _3281 = _2896;
                                _3282 = _3218;
                                _3283 = _3218;
                                _3284 = 1.0f;
                                _3285 = 0.0f;
                            }
                            else
                            {
                                float _3273;
                                float _3274;
                                float3 _3275;
                                float3 _3276;
                                float _3277;
                                float _3278;
                                if (_2646 == 3u)
                                {
                                    _3273 = _2875 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_2545].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_2545].x), _2358) * _3199);
                                    _3274 = clamp(dot(_2056, -normalize(cross(_570, cross(_570, _2737)))), 0.0f, 1.0f);
                                    _3275 = lerp(0.5f.xxx, _2063, _35_m6[_2545].y.xxx);
                                    _3276 = 0.0f.xxx;
                                    _3277 = 1.0f;
                                    _3278 = 0.0f;
                                }
                                else
                                {
                                    bool _3243 = _2646 == 1u;
                                    float _3267;
                                    float3 _3268;
                                    float _3269;
                                    float _3270;
                                    if (_3243)
                                    {
                                        _3267 = clamp(clamp(_2895 + _35_m6[_2545].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3199;
                                        _3268 = _2067 * _35_m6[_2545].y;
                                        _3269 = 1.0f;
                                        _3270 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3253 = _2646 == 2u;
                                        float _3265;
                                        if (_3253)
                                        {
                                            _3265 = smoothstep(_35_m6[_2545].x + 0.0500000007450580596923828125f, _35_m6[_2545].x - 0.0500000007450580596923828125f, _2057) * ((1.0f - _35_m6[_2545].z) + (step(0.5f, _2060) * _35_m6[_2545].z));
                                        }
                                        else
                                        {
                                            _3265 = 1.0f;
                                        }
                                        _3267 = _2896;
                                        _3268 = 0.0f.xxx;
                                        _3269 = _3265;
                                        _3270 = _3253 ? _35_m6[_2545].y : 0.0f;
                                    }
                                    bool3 _3271 = _3243.xxx;
                                    _3273 = _2875;
                                    _3274 = _3267;
                                    _3275 = float3(_3271.x ? _2063.x : 0.0f.xxx.x, _3271.y ? _2063.y : 0.0f.xxx.y, _3271.z ? _2063.z : 0.0f.xxx.z);
                                    _3276 = _3268;
                                    _3277 = _3269;
                                    _3278 = _3270;
                                }
                                _3279 = _3273;
                                _3280 = _35_m6[_2533].xyz;
                                _3281 = _3274;
                                _3282 = _3275;
                                _3283 = _3276;
                                _3284 = _3277;
                                _3285 = _3278;
                            }
                            float3 _3313;
                            [branch]
                            if (_2646 != 3u)
                            {
                                float _3290 = lerp(_2069, 0.00999999977648258209228515625f, _3285);
                                float _3293 = dot(_1920, normalize(_2737 + _446));
                                float _3294 = _3290 * _3290;
                                float _3298 = (((_3293 * _3294) - _3293) * _3293) + 1.0f;
                                float _3299 = _3298 * _3298;
                                _3313 = ((_2066 * clamp((((_3294 != _3299) ? (_3294 / _3299) : 1.0f) * (0.5f / ((_2289 + (_3290 * _2291)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3284) * _35_m6[_2554].z;
                            }
                            else
                            {
                                _3313 = 0.0f.xxx;
                            }
                            float3 _3316 = _3280 * _3279;
                            _3323 = _2497 + (((_3316 * lerp(_3283, _3282, _3281.xxx)) * _2308) + ((_3316 * _3313) * _3281));
                        }
                        else
                        {
                            _3323 = _2497;
                        }
                        _3324 = _3323;
                        break;
                    } while(false);
                    _3325 = _3324;
                    break;
                } while(false);
                _3326 = _3325;
            }
            else
            {
                _3326 = _2497;
            }
            _2520 = _3326;
        }
    }
    float3 _3366;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _3366 = lerp(lerp(0.5f.xxx, lerp(dot(_2496, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2496, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_2356, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _3366 = _2496;
    }
    float4 _3373 = float4(_3366 * _19_m20.y, _493);
    _3373.w = (_48_m8 == 1.0f) ? _493 : 1.0f;
    float4 _3760;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3397 = _602 * _19_m46.w;
        float _3402 = max(0.00999999977648258209228515625f, _3397 + _19_m47.w);
        float3 _3416 = exp(_19_m45.xyz * ((-max(0.0f, (_447 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3402)) / _3402) * exp(_3397 + _19_m48.w))));
        float _3419 = dot(_2449, _19_m44.xyz);
        float _3425 = _19_m45.w * _19_m45.w;
        float _3429 = (1.0f + _3425) - ((2.0f * _19_m45.w) * _3419);
        float3 _3752;
        float _3753;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3474 = (uint3(int3(_2133, _2134, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3475 = _3474.y;
            uint _3476 = _3474.z;
            uint _3479 = _3474.x + (_3475 * _3476);
            uint _3481 = _3475 + (_3476 * _3479);
            uint _3483 = _3476 + (_3479 * _3481);
            uint _3485 = _3479 + (_3481 * _3483);
            float _3510 = dot(_2449, -_17_m0[2].xyz);
            float3 _3517 = _530 - _17_m11.xyz;
            float _3519 = (_19_m55.w * ((_3510 > 5.9604644775390625e-08f) ? (1.0f / _3510) : 0.0f)) * (1.0f / _447);
            float _3520 = _3517.y;
            float _3521 = _3519 * _3520;
            float _3523 = _17_m11.y + _3521;
            float _3524 = _3520 - _3521;
            float _3526 = (1.0f - _3519) * _447;
            float _3540 = max(-127.0f, _19_m49.z * _3524);
            float _3564 = max(-127.0f, _19_m52.x * _3524);
            float _3575 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3523 - _19_m49.x)))) * ((abs(_3540) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3540)) / _3540) : (0.693147182464599609375f - (0.2402265071868896484375f * _3540)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3523 - _19_m52.z)))) * ((abs(_3564) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3564)) / _3564) : (0.693147182464599609375f - (0.2402265071868896484375f * _3564))));
            float _3597 = clamp((_447 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3600 = clamp((max(clamp(exp2(-(_3575 * _3526)), 0.0f, 1.0f), _19_m51.w) + clamp((_447 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3597, 0.0f, 1.0f);
            float4 _3640 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_24, float3((_2471 + ((((float3(uint3(_3485, _3481 + (_3483 * _3485), _412) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_427 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_427 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3752 = _3640.xyz + (((_19_m51.xyz * (1.0f - _3600)) + (((_19_m54.xyz * pow(clamp(dot(_446, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3575 * max(_3526 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3597))) * _3640.w);
            _3753 = _3640.w * _3600;
        }
        else
        {
            float3 _3646 = _530 - _17_m11.xyz;
            float _3648 = _3646.y;
            float _3662 = max(-127.0f, _19_m49.z * _3648);
            float _3686 = max(-127.0f, _19_m52.x * _3648);
            float _3697 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3662) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3662)) / _3662) : (0.693147182464599609375f - (0.2402265071868896484375f * _3662)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3686) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3686)) / _3686) : (0.693147182464599609375f - (0.2402265071868896484375f * _3686))));
            float _3719 = clamp((_447 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3722 = clamp((max(clamp(exp2(-(_3697 * _447)), 0.0f, 1.0f), _19_m51.w) + clamp((_447 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3719, 0.0f, 1.0f);
            _3752 = (_19_m51.xyz * (1.0f - _3722)) + (((_19_m54.xyz * pow(clamp(dot(_446, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3697 * max(_447 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3719));
            _3753 = _3722;
        }
        float3 _3758 = (_3373.xyz * (_3416 * _3753)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3419 * _3419)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3425) / max((12.56637096405029296875f * _3429) * sqrt(_3429), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3416)) * _3753) + _3752);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3758 = (_3758 * 0.65f) + (_3373.xyz * 0.35f);

        }

        // RenoDX code end
        _3760 = float4(_3758.x, _3758.y, _3758.z, _3373.w);
    }
    else
    {
        _3760 = _3373;
    }
    _14 = _3760;
    _15 = _2098;
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

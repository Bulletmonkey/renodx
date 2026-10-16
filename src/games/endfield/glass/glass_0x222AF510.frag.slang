#include "../shared.h"

// Ported from the native 0x222AF510 Vulkan dump.
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

static float _387;
static float4 _388;
static uint _389;

static const float4 _365[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _366[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _367[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(11, 0)]] cbuffer _15_16 : register(b11, space0)
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

[[vk::binding(15, 0)]] cbuffer _17_18 : register(b15, space0)
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
    float4 _18_m99 : packoffset(c127);
    float4 _18_m100 : packoffset(c128);
    float4 _18_m101 : packoffset(c129);
    float4 _18_m102[2] : packoffset(c130);
    float4 _18_m103[2] : packoffset(c132);
    float _18_m104 : packoffset(c134);
    float _18_m105 : packoffset(c134.y);
    float _18_m106 : packoffset(c134.z);
    float _18_m107 : packoffset(c134.w);
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
    float4 _18_m135 : packoffset(c162);
    float4 _18_m136 : packoffset(c163);
    float4 _18_m137 : packoffset(c164);
    column_major float4x4 _18_m138 : packoffset(c165);
    float4 _18_m139 : packoffset(c169);
    float4 _18_m140 : packoffset(c170);
    float4 _18_m141 : packoffset(c171);
    float4 _18_m142 : packoffset(c172);
    int4 _18_m143 : packoffset(c173);
    int4 _18_m144 : packoffset(c174);
    int4 _18_m145 : packoffset(c175);
    float4 _18_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0, space2)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _31 : register(t53, space0);
[[vk::binding(4, 1)]] cbuffer _38_39 : register(b4, space1)
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

[[vk::binding(16, 0)]] cbuffer _40_42 : register(b16, space0)
{
    float4 _42_m0 : packoffset(c0);
    float4 _42_m1 : packoffset(c1);
    float4 _42_m2 : packoffset(c2);
    float4 _42_m3 : packoffset(c3);
    _41 _42_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _43_44 : register(b13, space0)
{
    float4 _44_m0 : packoffset(c0);
    float4 _44_m1 : packoffset(c1);
    float4 _44_m2 : packoffset(c2);
    float4 _44_m3 : packoffset(c3);
    float4 _44_m4 : packoffset(c4);
    uint4 _44_m5 : packoffset(c5);
    float4 _44_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _45_46 : register(b49, space0)
{
    int _46_m0 : packoffset(c0);
    int _46_m1 : packoffset(c0.y);
    int _46_m2 : packoffset(c0.z);
    int _46_m3 : packoffset(c0.w);
    int _46_m4 : packoffset(c1);
    int _46_m5 : packoffset(c1.y);
    int _46_m6 : packoffset(c1.z);
    int _46_m7 : packoffset(c1.w);
    float _46_m8 : packoffset(c2);
    float _46_m9 : packoffset(c2.y);
    float _46_m10 : packoffset(c2.z);
    float _46_m11 : packoffset(c2.w);
    float _46_m12 : packoffset(c3);
    float _46_m13 : packoffset(c3.y);
    float _46_m14 : packoffset(c3.z);
    float _46_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _47_48 : register(b14, space0)
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
    float4 _48_m10 : packoffset(c64);
    float4 _48_m11 : packoffset(c65);
    float4 _48_m12[62] : packoffset(c66);
    column_major float4x4 _48_m13[15] : packoffset(c128);
    float4 _48_m14[15] : packoffset(c188);
    float4 _48_m15[15] : packoffset(c203);
    float4 _48_m16[15] : packoffset(c218);
    float4 _48_m17 : packoffset(c233);
    float4 _48_m18 : packoffset(c234);
    float4 _48_m19[21] : packoffset(c235);
    column_major float4x4 _48_m20 : packoffset(c256);
    column_major float4x4 _48_m21 : packoffset(c260);
    float4 _48_m22 : packoffset(c264);
    float4 _48_m23 : packoffset(c265);
    float4 _48_m24 : packoffset(c266);
    float4 _48_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _52 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _67_68 : register(b51, space0)
{
    float4 _68_m0[32] : packoffset(c0);
    column_major float4x4 _68_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25, space0);
[[vk::binding(3, 1)]] Texture2D<float4> _32 : register(t3, space1);
[[vk::binding(1, 1)]] SamplerState _33 : register(s1, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _34 : register(t2, space1);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _36 : register(t22, space0);
[[vk::binding(20, 0)]] SamplerState _37 : register(s20, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _49 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _50 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _53 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _54 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _55 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _59 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _60 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _61 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _62 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _63 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _64 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _65 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _66 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _71 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _72 : register(t29, space0);

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
float2 _415 = gl_FragCoord.xy * _18_m0.zw;
float2 _418 = (_415 * 2.0f) - 1.0f.xx;
float4 _421 = float4(_418, gl_FragCoord.z, 1.0f);
_421.y = -_418.y;
float4 _424 = mul(_16_m6, _421);
float3 _428 = _424.xyz / _424.w.xxx;
float4 _432 = float4(_428, 1.0f);
float _439 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
float3 _446 = cross(_6, float4(_7.xyz, _439).xyz) * _439;
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
break;
}
while(false);
float _462 = dot(_461, _461);
float _464 = rsqrt(max(_462, 9.9999999392252902907785028219223e-09f));
float3 _465 = _461 * _464;
float _466 = _462 * _464;
float4 _499 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
float _501 = _499.w;
float4 _504 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
float2 _507 = (_504.xy * 2.0f.xx) - 1.0f.xx;
float2 _508 = abs(_507);
bool2 _509 = bool2(_508.x < 0.01200000010430812835693359375f.xx.x, _508.y < 0.01200000010430812835693359375f.xx.y);
float2 _510 = float2(_509.x ? 0.0f.xx.x : _507.x, _509.y ? 0.0f.xx.y : _507.y);
float2 _511 = _510 * _39_m0;
float _516 = max(0.00048828125f, sqrt(clamp(1.0f - dot(_510, _510), 0.0f, 1.0f)));
float _517 = _511.x;
float _518 = _511.y;
float _519 = _504.z;
float _520 = _504.w;
float _538 = lerp(_501, _520, _39_m6) * _39_m32.w;
float _544 = lerp(_538, _538 * _8.x, _39_m64);
float _549 = lerp(_39_m2, _39_m3, _519);
float _559 = lerp(_501, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
float _567 = clamp(_39_m57, 0.0f, 1.0f);
float _577 = clamp((lerp(1.0f, lerp(lerp(_501, _519, clamp(_39_m57 - 1.0f, 0.0f, 1.0f)), _520, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _567) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
float3 _609 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _577) * _39_m56, _567.xxx);
float _613 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _577);
float3 _618 = lerp(clamp((_499.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _613).xxx + (_21_m0[_11]._m9.xyz * _613));
float3 _644;
[branch]
if (_39_m49 > 0.5f)
{
_644 = _609 + ((_39_m55.xyz * ((1.0f - pow(clamp(abs(dot(_465, lerp(normalize(((_7.xyz * _517) + (_446 * _518)) + (_6 * _516)), _6, _39_m53.xxx))) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52))) * 1.0f);
}
else
{
_644 = _609;
}
float3 _665 = ((_7.xyz * _517) + (_446 * _518)) + (_6 * (_516 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f))));
float3 _669 = _665 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_665, _665)));
float3 _672 = -_465;
float4 _693 = _36.SampleBias(_37, _415 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_672, _669, _39_m60)) * _39_m61).xy * _544), _18_m16);
float _703 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
float2 _716 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
_716.y = -_716.y;
float _742 = 0.07999999821186065673828125f * _39_m1;
float3 _743 = _618 * _559;
float3 _744 = _618 - _743;
float3 _748 = (_742 - (_742 * _559)).xxx + _743;
float _749 = dot(_669, _465);
float4 _752 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _549) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
float _753 = _752.x;
float2 _763 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_753 * _753, exp2((-9.27999973297119140625f) * max(0.0f, _749))) * _753) + _752.y)) + _752.zw;
uint2 _803;
float _804;
if (_18_m24.y == 1.0f)
{
float4 _780 = mul(_18_m138, _432);
float4 _783 = _780;
_783.y = -_780.y;
float4 _786 = _783 * (1.0f / _780.w);
_803 = uint2(clamp(((_786.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
_804 = 1.0f / ((_18_m2.z * _786.z) + _18_m2.w);
}
else
{
_803 = uint2(gl_FragCoord.xy);
_804 = abs(mul(_16_m0, _432).z);
}
float3 _806 = _428 + (_669 * 0.25f);
float3 _816 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
float3 _825 = _806 - (_18_m108.xyz + (_816 * (-_18_m110.w)));
float _840 = max(min(max((max(abs(_825.x), abs(_825.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_825.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
float4 _1142;
float4 _1143;
float4 _1144;
float _1145;
float _1146;
if ((_18_m108.w != 0.0f) && (_840 < 1.0f))
{
float3 _853 = _806 - (_18_m108.xyz + (_816 * (-_18_m110.y)));
float _867 = max(clamp((max(abs(_853.x), abs(_853.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_853.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
float _943;
float4 _944;
float4 _945;
float4 _946;
if (_867 < 1.0f)
{
float3 _876 = ((_806 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
float3 _878 = _876 - floor(_876);
float4 _882 = _59.SampleLevel(_24, _878, 0.0f);
float _883 = 1.0f - _867;
float _887 = _18_m109.y * 0.5f;
float _892 = _878.x;
float _893 = clamp(_878.y, _887, 1.0f - _887) * 0.3333333432674407958984375f;
float _894 = _878.z;
float4 _897 = _60.SampleLevel(_23, float3(_892, _893, _894), 0.0f);
float _913 = _882.x;
float _923 = _882.y;
float _933 = _882.z;
_943 = _840 + (_897.w * _883);
_944 = float4(((_60.SampleLevel(_23, float3(_892, _893 + 0.666666686534881591796875f, _894), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _933, _933) * _883;
_945 = float4(((_60.SampleLevel(_23, float3(_892, _893 + 0.3333333432674407958984375f, _894), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _923, _923) * _883;
_946 = float4(((_897.xyz * 4.0f) - 2.0f.xxx) * _913, _913) * _883;
}
else
{
_943 = _840;
_944 = 0.0f.xxxx;
_945 = 0.0f.xxxx;
_946 = 0.0f.xxxx;
}
float3 _952 = _806 - (_18_m108.xyz + (_816 * (-_18_m110.z)));
float _966 = max(clamp((max(abs(_952.x), abs(_952.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_952.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
float _1046;
float4 _1047;
float4 _1048;
float4 _1049;
if (_966 < 1.0f)
{
float3 _975 = ((_806 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
float3 _977 = _975 - floor(_975);
float4 _981 = _61.SampleLevel(_24, _977, 0.0f);
float _983 = _867 * (1.0f - _966);
float _987 = _18_m109.y * 0.5f;
float _992 = _977.x;
float _993 = clamp(_977.y, _987, 1.0f - _987) * 0.3333333432674407958984375f;
float _994 = _977.z;
float4 _997 = _62.SampleLevel(_23, float3(_992, _993, _994), 0.0f);
float _1013 = _981.x;
float _1024 = _981.y;
float _1035 = _981.z;
_1046 = _943 + (_997.w * _983);
_1047 = _944 + (float4(((_62.SampleLevel(_23, float3(_992, _993 + 0.666666686534881591796875f, _994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1035, _1035) * _983);
_1048 = _945 + (float4(((_62.SampleLevel(_23, float3(_992, _993 + 0.3333333432674407958984375f, _994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1024, _1024) * _983);
_1049 = _946 + (float4(((_997.xyz * 4.0f) - 2.0f.xxx) * _1013, _1013) * _983);
}
else
{
_1046 = _943;
_1047 = _944;
_1048 = _945;
_1049 = _946;
}
float4 _1132;
float4 _1133;
float4 _1134;
float _1135;
if (_966 > 0.0f)
{
float3 _1058 = ((_806 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
float3 _1061 = _18_m109.xyz * 0.5f;
float3 _1063 = clamp(_1058 - floor(_1058), _1061, 1.0f.xxx - _1061);
float4 _1067 = _63.SampleLevel(_24, _1063, 0.0f);
float _1069 = _966 * (1.0f - _840);
float _1073 = _18_m109.y * 0.5f;
float _1078 = _1063.x;
float _1079 = clamp(_1063.y, _1073, 1.0f - _1073) * 0.3333333432674407958984375f;
float _1080 = _1063.z;
float4 _1083 = _64.SampleLevel(_23, float3(_1078, _1079, _1080), 0.0f);
float _1099 = _1067.x;
float _1110 = _1067.y;
float _1121 = _1067.z;
_1132 = _1047 + (float4(((_64.SampleLevel(_23, float3(_1078, _1079 + 0.666666686534881591796875f, _1080), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1121, _1121) * _1069);
_1133 = _1048 + (float4(((_64.SampleLevel(_23, float3(_1078, _1079 + 0.3333333432674407958984375f, _1080), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1110, _1110) * _1069);
_1134 = _1049 + (float4(((_1083.xyz * 4.0f) - 2.0f.xxx) * _1099, _1099) * _1069);
_1135 = _1046 + (_1083.w * _1069);
}
else
{
_1132 = _1047;
_1133 = _1048;
_1134 = _1049;
_1135 = _1046;
}
float _1138 = clamp((_1135 * 2.0f) - 1.0f, 0.0f, 1.0f);
_1142 = _1132;
_1143 = _1133;
_1144 = _1134;
_1145 = _1138 - _840;
_1146 = (_1138 + _840) * 0.5f;
}
else
{
_1142 = 0.0f.xxxx;
_1143 = 0.0f.xxxx;
_1144 = 0.0f.xxxx;
_1145 = 0.0f;
_1146 = 1.0f;
}
float4 _1166 = _1144 + float4(_18_m111.x * _1146, (_18_m111.y * _1146) + ((_18_m111.w * _1145) * 0.5f), _18_m111.z * _1146, (_18_m111.w * _1146) + ((_18_m111.y * _1145) * 0.375f));
float4 _1186 = _1143 + float4(_18_m112.x * _1146, (_18_m112.y * _1146) + ((_18_m112.w * _1145) * 0.5f), _18_m112.z * _1146, (_18_m112.w * _1146) + ((_18_m112.y * _1145) * 0.375f));
float4 _1206 = _1142 + float4(_18_m113.x * _1146, (_18_m113.y * _1146) + ((_18_m113.w * _1145) * 0.5f), _18_m113.z * _1146, (_18_m113.w * _1146) + ((_18_m113.y * _1145) * 0.375f));
float _1211 = max(0.0f, dot(_1166.xyz, _669) + _1166.w);
float _1216 = max(0.0f, dot(_1186.xyz, _669) + _1186.w);
float _1221 = max(0.0f, dot(_1206.xyz, _669) + _1206.w);
float3 _1231 = reflect(_672, _669);
float _1239 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_549, 0.001000000047497451305389404296875f))));
float2 _1240 = float2(_803);
float2 _1244 = floor(_1240 * _42_m0.w);
float _1261 = floor(_804 - _42_m2.y);
float _1265 = clamp(_1261, 0.0f, _42_m1.x - 1.0f);
uint _1275 = (_1261 <= _1265) ? (_31.Load(uint(_18_m21.z + int(_1244.x + (_1244.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1265)) * 4 + 0)) : 0u;
float _1278 = dot(float4(_1211, _1216, _1221, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
float3 _1280;
float _1283;
uint _1285;
_1280 = 0.0f.xxx;
_1283 = 1.0f;
_1285 = _1275;
uint _1286;
float3 _1281;
float _1284;
bool _1288;
[loop]
for (;;)
{
bool _1287 = _1285 != 0u;
_1288 = _1283 > 0.00999999977648258209228515625f;
if (_1287 && _1288)
{
uint _1292 = firstbitlow(_1285);
_1286 = _1285 ^ (1u << (_1292 & 31u));
float3 _1312 = float3(dot(_42_m4[_1292]._m2, _432), dot(_42_m4[_1292]._m3, _432), dot(_42_m4[_1292]._m4, _432));
float3 _1313 = abs(_1312);
if (all(bool3(_1313.x <= _42_m4[_1292]._m1.xyz.x, _1313.y <= _42_m4[_1292]._m1.xyz.y, _1313.z <= _42_m4[_1292]._m1.xyz.z)))
{
float3 _1322 = _42_m4[_1292]._m1.xyz * 0.100000001490116119384765625f;
float3 _1324 = _1313 * 0.100000001490116119384765625f;
float3 _1325 = _1324 * _1324;
float3 _1328 = (_42_m4[_1292]._m1.xyz - _1313) * _42_m4[_1292]._m5.xyz;
float3 _1376;
[branch]
if (_42_m4[_1292]._m6.x == 1.0f)
{
float3 _1361 = float3(dot(_42_m4[_1292]._m2.xyz, _1231), dot(_42_m4[_1292]._m3.xyz, _1231), dot(_42_m4[_1292]._m4.xyz, _1231));
float3 _1363 = (_42_m4[_1292]._m1.xyz - _1312) / _1361;
float3 _1366 = ((-_42_m4[_1292]._m1.xyz) - _1312) / _1361;
bool3 _1367 = bool3(_1361.x > 0.0f.xxx.x, _1361.y > 0.0f.xxx.y, _1361.z > 0.0f.xxx.z);
float3 _1368 = float3(_1367.x ? _1363.x : _1366.x, _1367.y ? _1363.y : _1366.y, _1367.z ? _1363.z : _1366.z);
_1376 = _1312 + (_1361 * min(min(_1368.x, _1368.y), _1368.z));
}
else
{
_1376 = _1231;
}
float3 _1377 = normalize(_1376);
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
float _1422 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1292]._m0, float4(_669, 1.0f))));
float _1435 = clamp((min(_1328.x, min(_1328.y, _1328.z)) * _42_m4[_1292]._m6.y) + ((((((_1322 * _1322).x - ((_1325.x + _1325.y) + _1325.z)) * _42_m4[_1292]._m5.x) * _42_m4[_1292]._m5.x) * (1.0f - _42_m4[_1292]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1292]._m6.w;
_1281 = _1280 + ((((_29.SampleLevel(_25, float3((((_1397.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1292]._m1.w), _1239).xyz * _42_m4[_1292]._m5.w) * ((((((clamp(abs(_1278 / _1422), 0.0f, 1.0f) * 2.0f) + _1278) / (2.0f + _1422)) - 1.0f) * _18_m23.w) + 1.0f)) * _1435) * _1283);
_1284 = _1283 * (1.0f - _1435);
}
else
{
_1281 = _1280;
_1284 = _1283;
}
_1280 = _1281;
_1283 = _1284;
_1285 = _1286;
continue;
}
else
{
break;
}
}
float3 _1504;
if (_1288)
{
float3 _1443 = normalize(_1231);
float3 _1446 = float3(int3(sign(_1443)));
float3 _1449 = _1443 / dot(_1443, _1446).xxx;
float3 _1463;
if (_1449.z < 0.0f)
{
float3 _1454 = abs(_1449);
float2 _1461 = _1446.xy * float2(1.0f - _1454.y, 1.0f - _1454.x);
_1463 = float3(_1461.x, _1461.y, _1449.z);
}
else
{
_1463 = _1449;
}
float _1490 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_669, 1.0f))));
_1504 = _1280 + ((_29.SampleLevel(_25, float3((((_1463.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1239).xyz * ((((((clamp(abs(_1278 / _1490), 0.0f, 1.0f) * 2.0f) + _1278) / (2.0f + _1490)) - 1.0f) * _18_m23.w) + 1.0f)) * _1283);
}
else
{
_1504 = _1280;
}
float4 _2195;
do
{
[branch]
if (_46_m4 == 0)
{
_2195 = 0.0f.xxxx;
break;
}
float2 _2054;
do
{
if (_48_m7.w >= 0.9900000095367431640625f)
{
_2054 = float2(_48_m7.z, 1.0f);
break;
}
int _1533 = int(_48_m7.x);
bool3 _1535 = (_1533 == 2).xxx;
float3 _1543 = _428 - float3(_1535.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1535.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1535.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
float _1554 = max(clamp((_48_m6.w - dot(_1543, _1543)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
float _1771;
bool _1772;
if (_1554 > 0.0f)
{
float _1769;
bool _1770;
if (_1533 > 0)
{
float3 _1561 = _428 - _48_m1[0].xyz;
float3 _1565 = _428 - _48_m1[1].xyz;
float3 _1569 = _428 - _48_m1[2].xyz;
float3 _1573 = _428 - _48_m1[3].xyz;
float4 _1578 = float4(dot(_1561, _1561), dot(_1565, _1565), dot(_1569, _1569), dot(_1573, _1573));
float4 _1587 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
float4 _1589 = float4(bool4(_1578.x < _1587.x, _1578.y < _1587.y, _1578.z < _1587.z, _1578.w < _1587.w));
float3 _1593 = clamp(_1589.yzw - _1589.xyz, 0.0f.xxx, 1.0f.xxx);
float _1597 = clamp(4.0f - dot(float4(_1589.x, _1593.x, _1593.y, _1593.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
float _1599 = clamp(_1597 + 1.0f, 0.0f, 3.0f);
uint _1600 = uint(_1597);
uint _1608 = uint(_1599);
float _1614 = dot(_1578, _365[_1608]) / _48_m1[_1608].w;
float _1631;
if (((_1599 > _1597) && (_1614 >= 0.0f)) && (_1614 <= 1.0f))
{
_1631 = _1597 + step(frac(52.98291778564453125f * frac(dot(_1240 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1578, _365[_1600]) / _48_m1[_1600].w) - 0.89999997615814208984375f) * 12.0f);
}
else
{
_1631 = _1597;
}
float _1632 = clamp(_1631, 0.0f, 4.0f);
float4 _1636 = mul(_48_m0[uint(_1632)], _432);
float _1639 = _1636.z;
float4 _1640 = float4(_1636.xy, _1639, _1632);
float3 _1641 = _1640.xyz;
bool3 _1642 = bool3(_1641.x <= 0.0f.xxx.x, _1641.y <= 0.0f.xxx.y, _1641.z <= 0.0f.xxx.z);
bool3 _1643 = bool3(_1641.x >= 1.0f.xxx.x, _1641.y >= 1.0f.xxx.y, _1641.z >= 1.0f.xxx.z);
bool _1649 = any(bool3(_1642.x || _1643.x, _1642.y || _1643.y, _1642.z || _1643.z)) || ((asuint(_1639) & 2147483647u) > 2139095040u);
int _1650 = int(_1632);
float2 _1667 = float4(_48_m3[_1650].xy + (_1640.xy * _48_m3[_1650].zw), _1639, _1632).xy * _48_m4.zw;
float2 _1669 = floor(_1667 + 0.5f.xx);
float2 _1670 = _1667 - _1669;
float _1671 = _1670.x;
float _1672 = _1671 + 0.5f;
float _1674 = (_1672 * _1672) * 0.5f;
float _1677 = min(_1671, 0.0f);
float _1681 = max(_1671, 0.0f);
float4 _1685 = float4(_1674 - _1671, (1.0f - _1671) - (_1677 * _1677), (_1671 + 1.0f) - (_1681 * _1681), _1674) * 0.44444000720977783203125f;
float _1686 = _1670.y;
float _1687 = _1686 + 0.5f;
float _1689 = (_1687 * _1687) * 0.5f;
float _1692 = min(_1686, 0.0f);
float _1696 = max(_1686, 0.0f);
float4 _1700 = float4(_1689 - _1686, (1.0f - _1686) - (_1692 * _1692), (_1686 + 1.0f) - (_1696 * _1696), _1689) * 0.44444000720977783203125f;
float2 _1702 = _1685.yw;
float2 _1703 = _1685.xz + _1702;
float2 _1705 = _1700.yw;
float2 _1706 = _1700.xz + _1705;
float2 _1712 = ((_1702 / _1703) + float2(-1.5f, 0.5f)) * _48_m4.xx;
float2 _1714 = ((_1705 / _1706) + float2(-1.5f, 0.5f)) * _48_m4.yy;
float2 _1716 = _1669 * _48_m4.xy;
float _1717 = _1712.x;
float _1718 = _1714.x;
float _1721 = _1712.y;
float _1724 = _1714.y;
float _1729 = _1703.x;
float _1730 = _1706.x;
float _1732 = _1703.y;
float _1734 = _1706.y;
_1769 = _1649 ? 1.0f : (((((_1729 * _1730) * _49.SampleCmpLevelZero(_26, float3(_1716 + float2(_1717, _1718), _387).xy, _1639)) + ((_1732 * _1730) * _49.SampleCmpLevelZero(_26, float3(_1716 + float2(_1721, _1718), _387).xy, _1639))) + ((_1729 * _1734) * _49.SampleCmpLevelZero(_26, float3(_1716 + float2(_1717, _1724), _387).xy, _1639))) + ((_1732 * _1734) * _49.SampleCmpLevelZero(_26, float3(_1716 + float2(_1721, _1724), _387).xy, _1639)));
_1770 = _1649;
}
else
{
_1769 = 1.0f;
_1770 = false;
}
_1771 = _1769;
_1772 = _1770;
}
else
{
_1771 = 1.0f;
_1772 = false;
}
float _1972;
float _1973;
if ((_1554 < 1.0f) || (_48_m8.x > 0.5f))
{
float _1783 = 1.0f - clamp(dot(_669, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
float4 _1800 = float4((_428 - (_44_m0.xyz * (_1783 * _48_m22.x))) + (_669 * (_1783 * _48_m22.y)), 1.0f);
float4 _1801 = mul(_48_m21, _1800);
float2 _1802 = _1801.xy;
float _1970;
if (all(bool2(_1802.x > 0.0f.xx.x, _1802.y > 0.0f.xx.y)) && all(bool2(_1802.x < 1.0f.xx.x, _1802.y < 1.0f.xx.y)))
{
uint _1821 = clamp(uint((floor(_1801.y * _48_m23.z) + _1801.x) * _48_m23.y), 0u, 127u);
uint _1825 = asuint(_48_m25[_1821].x);
float2 _1826 = spvUnpackHalf2x16(_1825);
float _1827 = _1826.x;
float _1969;
if (_1827 >= 0.0f)
{
float4x4 _1836 = _48_m20;
_1836[0].w = _48_m25[_1821].y;
_1836[1].w = _48_m25[_1821].z;
_1836[2].w = _48_m25[_1821].w;
float4 _1843 = mul(_1836, _1800);
float3 _1844 = _1843.xyz;
float _1968;
if (all(bool3(_1844.x > 0.0f.xxx.x, _1844.y > 0.0f.xxx.y, _1844.z > 0.0f.xxx.z)) && all(bool3(_1844.x < 1.0f.xxx.x, _1844.y < 1.0f.xxx.y, _1844.z < 1.0f.xxx.z)))
{
float _1861 = _1843.z;
float2 _1867 = float4((_1843.xy * _48_m22.zw) + float2(_1827, spvUnpackHalf2x16(_1825 >> 16u).x), _1861, 1.0f).xy * _48_m24.zw;
float2 _1869 = floor(_1867 + 0.5f.xx);
float2 _1870 = _1867 - _1869;
float _1871 = _1870.x;
float _1872 = _1871 + 0.5f;
float _1874 = (_1872 * _1872) * 0.5f;
float _1877 = min(_1871, 0.0f);
float _1881 = max(_1871, 0.0f);
float4 _1885 = float4(_1874 - _1871, (1.0f - _1871) - (_1877 * _1877), (_1871 + 1.0f) - (_1881 * _1881), _1874) * 0.44444000720977783203125f;
float _1886 = _1870.y;
float _1887 = _1886 + 0.5f;
float _1889 = (_1887 * _1887) * 0.5f;
float _1892 = min(_1886, 0.0f);
float _1896 = max(_1886, 0.0f);
float4 _1900 = float4(_1889 - _1886, (1.0f - _1886) - (_1892 * _1892), (_1886 + 1.0f) - (_1896 * _1896), _1889) * 0.44444000720977783203125f;
float2 _1902 = _1885.yw;
float2 _1903 = _1885.xz + _1902;
float2 _1905 = _1900.yw;
float2 _1906 = _1900.xz + _1905;
float2 _1912 = ((_1902 / _1903) + float2(-1.5f, 0.5f)) * _48_m24.xx;
float2 _1914 = ((_1905 / _1906) + float2(-1.5f, 0.5f)) * _48_m24.yy;
float2 _1916 = _1869 * _48_m24.xy;
float _1917 = _1912.x;
float _1918 = _1914.x;
float _1921 = _1912.y;
float _1924 = _1914.y;
float _1929 = _1903.x;
float _1930 = _1906.x;
float _1932 = _1903.y;
float _1934 = _1906.y;
_1968 = ((((_1929 * _1930) * _54.SampleCmpLevelZero(_26, float3(_1916 + float2(_1917, _1918), _387).xy, _1861)) + ((_1932 * _1930) * _54.SampleCmpLevelZero(_26, float3(_1916 + float2(_1921, _1918), _387).xy, _1861))) + ((_1929 * _1934) * _54.SampleCmpLevelZero(_26, float3(_1916 + float2(_1917, _1924), _387).xy, _1861))) + ((_1932 * _1934) * _54.SampleCmpLevelZero(_26, float3(_1916 + float2(_1921, _1924), _387).xy, _1861));
}
else
{
_1968 = 1.0f;
}
_1969 = _1968;
}
else
{
_1969 = 1.0f;
}
_1970 = _1969;
}
else
{
_1970 = 1.0f;
}
_1972 = _1772 ? _1970 : _1771;
_1973 = _1970;
}
else
{
_1972 = _1771;
_1973 = 1.0f;
}
float _1976 = lerp(lerp(_1973, _1972, _1554), min(_1973, _1972), _48_m8.x);
float _2049;
if (_1976 > 0.001000000047497451305389404296875f)
{
float3 _2011 = _428 - _18_m65.xyz;
float2 _2016 = (_2011 + (_18_m68.xyz * _2011.y)).xz * _18_m66.z;
float2 _2017 = _18_m67.xy * _18_m77.w;
float3 _2024 = _428 - _18_m69.xyz;
float2 _2032 = _18_m69.w.xx;
float4 _2039 = _53.SampleLevel(_24, lerp(_2016 * _18_m67.w, (_2024 + (_18_m68.xyz * _2024.y)).xz * _18_m70.x, _2032) + lerp(_2017, _18_m70.yz * _18_m77.w, _2032), 0.0f);
_2049 = _1976 * lerp(1.0f, lerp(_53.SampleLevel(_24, _2016 + _2017, 0.0f).x, lerp(_2039.x, _2039.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2011.xz))), _18_m67.z);
}
else
{
_2049 = _1976;
}
_2054 = float2(lerp(_2049, _48_m7.z, _48_m7.w), _2049);
break;
}
while(false);
float _2059 = lerp(1.0f, min(1.0f, _2054.x), _48_m6.x);
float4 _2194;
if (_2059 > 0.001000000047497451305389404296875f)
{
float3 _2069 = -_44_m0.xyz;
float _2074 = dot(_2069, _1231);
float3 _2076 = _1231 - (_2069 * _2074);
bool3 _2078 = (_2074 < _44_m4.z).xxx;
float3 _2086 = normalize((_2069 * _44_m4.z) + ((_2076 * rsqrt(max(6.103515625e-05f, dot(_2076, _2076)))) * _44_m4.y));
float3 _2087 = float3(_2078.x ? _2086.x : _1231.x, _2078.y ? _2086.y : _1231.y, _2078.z ? _2086.z : _1231.z);
float3 _2091 = _2087 + _465;
float3 _2095 = _2091 * rsqrt(max(6.103515625e-05f, dot(_2091, _2091)));
float _2096 = clamp(dot(_2087, _669), 0.0f, 1.0f);
float _2098 = clamp(dot(_669, _2095), 0.0f, 1.0f);
float _2101 = clamp(_749, 0.0f, 1.0f);
float _2102 = _549 * _549;
float _2103 = _2102 * _2102;
float _2124 = (((_2098 * _2103) - _2098) * _2098) + 1.0f;
float _2127 = 1.0f - clamp(dot(_465, _2095), 0.0f, 1.0f);
float _2128 = _2127 * _2127;
float _2130 = (_2127 * _2128) * _2128;
float _2154 = 1.0f - _549;
float _2161 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2154 * (1.04997003078460693359375f + (_2154 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2154))))));
float _2162 = 1.0f - _2161;
float3 _2165 = _748 + ((1.0f.xxx - _748) * 0.0476190485060214996337890625f);
// RenoDX code start: preserve the existing glass controls.
/* Vanilla 0x222AF510:
float3 _2181 = ((clamp((min(((_748 * (1.0f - _2130)) + _2130.xxx) * ((_2103 / (_2124 * _2124)) * (0.5f / (((_2096 * sqrt(((((-_2101) * _2103) + _2101) * _2101) + _2103)) + (_2101 * sqrt(((((-_2096) * _2103) + _2096) * _2096) + _2103))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2165 * (((_58.SampleLevel(_23, (float2(_2101, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2096, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2161) / _2162)) * _2165) / (1.0f.xxx - (_2165 * _2162)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2096) + ((_744 * 1.0f) * _2096)) * _44_m1.xyz;
*/
float3 _2181 = (((clamp((min(((_748 * (1.0f - _2130)) + _2130.xxx) * ((_2103 / (_2124 * _2124)) * (0.5f / (((_2096 * sqrt(((((-_2101) * _2103) + _2101) * _2101) + _2103)) + (_2101 * sqrt(((((-_2096) * _2103) + _2096) * _2096) + _2103))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2165 * (((_58.SampleLevel(_23, (float2(_2101, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2096, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2161) / _2162)) * _2165) / (1.0f.xxx - (_2165 * _2162)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2096) + ((_744 * 1.0f) * _2096)) * _44_m1.xyz;
// RenoDX code end
float3 _2192 = lerp(_2181, _2181 * _55.SampleBias(_23, float2(_2059, 0.5f), _18_m16).xyz, (1.0f - _2059).xxx) * 1.0f;
_2194 = float4(_2192.x, _2192.y, _2192.z, 0.0f.xxxx.w);
}
else
{
_2194 = 0.0f.xxxx;
}
_2195 = _2194;
break;
}
while(false);
float2 _2197 = floor(_1240 * 0.03125f);
int _2205 = int((_2197.x + (_2197.y * _46_m9)) * 8.0f);
float _2212 = floor(_804 - (_18_m3.y * _46_m15));
float _2216 = clamp(_2212, 0.0f, _46_m11 - 1.0f);
int _2218 = int(_2216 * 8.0f);
float3 _2220;
float _2223;
_2220 = 0.0f.xxx;
_2223 = 1.0f;
float3 _2221;
float _2224;
[loop]
for (int _2225 = 0; _2225 <= 7; _2220 = _2221, _2223 = _2224, _2225++)
{
uint _2246 = (_2212 <= _2216) ? (_31.Load(uint((_46_m2 + _2205) + _2225) * 4 + 0) & _31.Load(uint((_46_m3 + _2218) + _2225) * 4 + 0)) : 0u;
uint _2247 = uint(_2225);
float3 _2251;
_2224 = _2223;
_2251 = 0.0f.xxx;
uint _2254;
float _2249;
float3 _2252;
[loop]
for (uint _2253 = _2246; _2253 != 0u; _2224 = _2249, _2251 = _2252, _2253 = _2254)
{
uint _2258 = firstbitlow(_2253);
_2254 = _2253 ^ (1u << (_2258 & 31u));
int _2264 = int((32u * _2247) + _2258) * 8;
int _2267 = _2264 + 1;
int _2270 = _2264 + 2;
int _2273 = _2264 + 3;
int _2276 = _2264 + 4;
int _2279 = _2264 + 5;
int _2282 = _2264 + 6;
int _2285 = _2264 + 7;
uint _2289 = uint(_44_m6[_2279].w);
float _2364;
if ((_2289 & 1u) == 1u)
{
uint _2295 = asuint(_44_m6[_2279].x);
uint _2302 = asuint(_44_m6[_2279].y);
uint _2309 = asuint(_44_m6[_2279].z);
uint _2316 = asuint(_44_m6[_2282].x);
uint _2323 = asuint(_44_m6[_2282].y);
uint _2330 = asuint(_44_m6[_2282].z);
float3 _2349 = abs(mul(float4(_428 - _44_m6[_2267].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2295).x, spvUnpackHalf2x16(_2309).x, spvUnpackHalf2x16(_2323).x, 0.0f), float4(spvUnpackHalf2x16(_2295 >> 16u).x, spvUnpackHalf2x16(_2309 >> 16u).x, spvUnpackHalf2x16(_2323 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2302).x, spvUnpackHalf2x16(_2316).x, spvUnpackHalf2x16(_2330).x, 0.0f), float4(spvUnpackHalf2x16(_2302 >> 16u).x, spvUnpackHalf2x16(_2316 >> 16u).x, spvUnpackHalf2x16(_2330 >> 16u).x, 0.0f))).xyz);
float _2356 = _44_m6[_2285].x * 0.5f;
float _2362 = 1.0f - clamp((max(max(_2349.x, _2349.y), _2349.z) - (_2356 + 0.5f)) / (0.5f - _2356), 0.0f, 1.0f);
_2364 = _2362 * _2362;
}
else
{
_2364 = 1.0f;
}
uint _2368 = uint(_44_m6[_2264].w);
bool _2371 = _44_m6[_2273].z > 0.5f;
if ((false || (_2364 < 0.001000000047497451305389404296875f)) || ((_2368 < 4u) && _2371))
{
_2249 = _2224;
_2252 = _2251;
continue;
}
float _4900;
float3 _4901;
do
{
[branch]
if (_2368 >= 4u)
{
float3 _3600;
do
{
float3 _2390 = _44_m6[_2267].xyz - _428;
if (dot(_44_m6[_2273].xyz, _2390) > 0.0f)
{
_3600 = 0.0f.xxx;
break;
}
float _2397 = dot(_2390, _2390) * _44_m6[_2267].w;
float _2400 = clamp(1.0f - (_2397 * _2397), 0.0f, 1.0f);
float _2401 = _2400 * _2400;
if (_2401 <= 0.0f)
{
_3600 = 0.0f.xxx;
break;
}
float3 _2439;
float _2440;
bool _2441;
float3 _2469;
float3 _2471;
float3 _2473;
float3 _2475;
float3 _2405 = _44_m6[_2270].xyz * _44_m6[_2270].w;
float3 _2406 = _44_m6[_2267].xyz - _2405;
float3 _2407 = _44_m6[_2276].xyz * _44_m6[_2273].w;
float3 _2410 = _44_m6[_2267].xyz + _2405;
float2 _2420 = (float2(clamp(_549, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_749, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
float4 _2424 = _71.SampleLevel(_23, _2420, 0.0f);
float4 _2428 = _72.SampleLevel(_23, _2420, 0.0f);
float _2823;
do
{
_2439 = _465 - (_669 * dot(_465, _669));
_2440 = dot(_2439, _2439);
_2441 = _2440 > 9.9999997473787516355514526367188e-05f;
float3 _2464;
if (_2441)
{
_2464 = _2439 * rsqrt(_2440);
}
else
{
float _2447 = (_669.z >= 0.0f) ? 1.0f : (-1.0f);
float _2449 = (-1.0f) / (_2447 + _669.z);
_2464 = float3(1.0f + (((_2447 * _2449) * _669.x) * _669.x), ((_2447 * _669.x) * _669.y) * _2449, (-_2447) * _669.x);
}
float3x3 _2468 = mul(float3x3(float3(_2424.x, 0.0f, _2424.z), float3(0.0f, 1.0f, 0.0f), float3(_2424.y, 0.0f, _2424.w)), float3x3(_2464, cross(_669, _2464), _669));
_2469 = (_2406 - _2407) - _428;
float3 _2470 = mul(_2468, _2469);
_2471 = (_2406 + _2407) - _428;
float3 _2472 = mul(_2468, _2471);
_2473 = (_2410 + _2407) - _428;
float3 _2474 = mul(_2468, _2473);
_2475 = (_2410 - _2407) - _428;
float3 _2476 = mul(_2468, _2475);
float _2477 = _2470.z;
float _2480 = _2472.z;
float _2484 = _2474.z;
float _2488 = _2476.z;
int _2492 = (((int(_2477 > 0.0f) | ((_2480 > 0.0f) ? 2 : 0)) | ((_2484 > 0.0f) ? 4 : 0)) | ((_2488 > 0.0f) ? 8 : 0));
float3 _2729;
float3 _2730;
float3 _2731;
float3 _2732;
float3 _2733;
int _2734;
if (_2492 == 0)
{
_2729 = _2476;
_2730 = _2474;
_2731 = _2472;
_2732 = _2470;
_2733 = 0.0f.xxx;
_2734 = 0;
}
else
{
float3 _2723;
float3 _2724;
float3 _2725;
float3 _2726;
float3 _2727;
int _2728;
if (_2492 == 1)
{
_2723 = _2476;
_2724 = (_2470 * (-_2488)) + (_2476 * _2477);
_2725 = (_2470 * (-_2480)) + (_2472 * _2477);
_2726 = _2470;
_2727 = 0.0f.xxx;
_2728 = 3;
}
else
{
float3 _2709;
float3 _2710;
float3 _2711;
float3 _2712;
float3 _2713;
int _2714;
if (_2492 == 2)
{
_2709 = _2476;
_2710 = (_2472 * (-_2484)) + (_2474 * _2480);
_2711 = _2472;
_2712 = (_2472 * (-_2477)) + (_2470 * _2480);
_2713 = 0.0f.xxx;
_2714 = 3;
}
else
{
float3 _2695;
float3 _2696;
float3 _2697;
float3 _2698;
float3 _2699;
int _2700;
if (_2492 == 3)
{
_2695 = (_2470 * (-_2488)) + (_2476 * _2477);
_2696 = (_2472 * (-_2484)) + (_2474 * _2480);
_2697 = _2472;
_2698 = _2470;
_2699 = 0.0f.xxx;
_2700 = 4;
}
else
{
float3 _2681;
float3 _2682;
float3 _2683;
float3 _2684;
float3 _2685;
int _2686;
if (_2492 == 4)
{
_2681 = _2476;
_2682 = _2474;
_2683 = (_2474 * (-_2480)) + (_2472 * _2484);
_2684 = (_2474 * (-_2488)) + (_2476 * _2484);
_2685 = 0.0f.xxx;
_2686 = 3;
}
else
{
float3 _2667;
float3 _2668;
float3 _2669;
float3 _2670;
float3 _2671;
int _2672;
if (_2492 == 5)
{
_2667 = _2476;
_2668 = _2474;
_2669 = _2472;
_2670 = _2470;
_2671 = 0.0f.xxx;
_2672 = 0;
}
else
{
float3 _2661;
float3 _2662;
float3 _2663;
float3 _2664;
float3 _2665;
int _2666;
if (_2492 == 6)
{
_2661 = (_2474 * (-_2488)) + (_2476 * _2484);
_2662 = _2474;
_2663 = _2472;
_2664 = (_2472 * (-_2477)) + (_2470 * _2480);
_2665 = 0.0f.xxx;
_2666 = 4;
}
else
{
float3 _2647;
float3 _2648;
float3 _2649;
float3 _2650;
float3 _2651;
int _2652;
if (_2492 == 7)
{
float _2640 = -_2488;
_2647 = (_2474 * _2640) + (_2476 * _2484);
_2648 = _2474;
_2649 = _2472;
_2650 = _2470;
_2651 = (_2470 * _2640) + (_2476 * _2477);
_2652 = 5;
}
else
{
float3 _2634;
float3 _2635;
float3 _2636;
float3 _2637;
float3 _2638;
int _2639;
if (_2492 == 8)
{
_2634 = _2476;
_2635 = _2476;
_2636 = (_2476 * (-_2484)) + (_2474 * _2488);
_2637 = (_2476 * (-_2477)) + (_2470 * _2488);
_2638 = 0.0f.xxx;
_2639 = 3;
}
else
{
float3 _2620;
float3 _2621;
float3 _2622;
float3 _2623;
float3 _2624;
int _2625;
if (_2492 == 9)
{
_2620 = _2476;
_2621 = (_2476 * (-_2484)) + (_2474 * _2488);
_2622 = (_2470 * (-_2480)) + (_2472 * _2477);
_2623 = _2470;
_2624 = 0.0f.xxx;
_2625 = 4;
}
else
{
float3 _2606;
float3 _2607;
float3 _2608;
float3 _2609;
float3 _2610;
int _2611;
if (_2492 == 10)
{
_2606 = _2476;
_2607 = _2474;
_2608 = _2472;
_2609 = _2470;
_2610 = 0.0f.xxx;
_2611 = 0;
}
else
{
float3 _2600;
float3 _2601;
float3 _2602;
float3 _2603;
float3 _2604;
int _2605;
if (_2492 == 11)
{
float _2593 = -_2484;
_2600 = (_2476 * _2593) + (_2474 * _2488);
_2601 = (_2472 * _2593) + (_2474 * _2480);
_2602 = _2472;
_2603 = _2470;
_2604 = _2476;
_2605 = 5;
}
else
{
float3 _2587;
float3 _2588;
float3 _2589;
float3 _2590;
float3 _2591;
int _2592;
if (_2492 == 12)
{
_2587 = _2476;
_2588 = _2474;
_2589 = (_2474 * (-_2480)) + (_2472 * _2484);
_2590 = (_2476 * (-_2477)) + (_2470 * _2488);
_2591 = 0.0f.xxx;
_2592 = 4;
}
else
{
bool _2545 = _2492 == 13;
float3 _2572;
float3 _2573;
float3 _2574;
float3 _2575;
int _2576;
if (_2545)
{
float _2565 = -_2480;
_2572 = (_2474 * _2565) + (_2472 * _2484);
_2573 = (_2470 * _2565) + (_2472 * _2477);
_2574 = _2470;
_2575 = _2476;
_2576 = 5;
}
else
{
float3 _2562;
float3 _2563;
int _2564;
if (_2492 == 14)
{
float _2555 = -_2477;
_2562 = (_2472 * _2555) + (_2470 * _2480);
_2563 = (_2476 * _2555) + (_2470 * _2488);
_2564 = 5;
}
else
{
_2562 = _2470;
_2563 = 0.0f.xxx;
_2564 = (_2492 == 15) ? 4 : 0;
}
_2572 = _2474;
_2573 = _2472;
_2574 = _2562;
_2575 = _2563;
_2576 = _2564;
}
bool3 _2577 = _2545.xxx;
_2587 = float3(_2577.x ? _2474.x : _2476.x, _2577.y ? _2474.y : _2476.y, _2577.z ? _2474.z : _2476.z);
_2588 = _2572;
_2589 = _2573;
_2590 = _2574;
_2591 = _2575;
_2592 = _2576;
}
_2600 = _2587;
_2601 = _2588;
_2602 = _2589;
_2603 = _2590;
_2604 = _2591;
_2605 = _2592;
}
_2606 = _2600;
_2607 = _2601;
_2608 = _2602;
_2609 = _2603;
_2610 = _2604;
_2611 = _2605;
}
_2620 = _2606;
_2621 = _2607;
_2622 = _2608;
_2623 = _2609;
_2624 = _2610;
_2625 = _2611;
}
_2634 = _2620;
_2635 = _2621;
_2636 = _2622;
_2637 = _2623;
_2638 = _2624;
_2639 = _2625;
}
_2647 = _2634;
_2648 = _2635;
_2649 = _2636;
_2650 = _2637;
_2651 = _2638;
_2652 = _2639;
}
_2661 = _2647;
_2662 = _2648;
_2663 = _2649;
_2664 = _2650;
_2665 = _2651;
_2666 = _2652;
}
_2667 = _2661;
_2668 = _2662;
_2669 = _2663;
_2670 = _2664;
_2671 = _2665;
_2672 = _2666;
}
_2681 = _2667;
_2682 = _2668;
_2683 = _2669;
_2684 = _2670;
_2685 = _2671;
_2686 = _2672;
}
_2695 = _2681;
_2696 = _2682;
_2697 = _2683;
_2698 = _2684;
_2699 = _2685;
_2700 = _2686;
}
_2709 = _2695;
_2710 = _2696;
_2711 = _2697;
_2712 = _2698;
_2713 = _2699;
_2714 = _2700;
}
_2723 = _2709;
_2724 = _2710;
_2725 = _2711;
_2726 = _2712;
_2727 = _2713;
_2728 = _2714;
}
_2729 = _2723;
_2730 = _2724;
_2731 = _2725;
_2732 = _2726;
_2733 = _2727;
_2734 = _2728;
}
bool3 _2736 = (_2734 == 3).xxx;
bool3 _2739 = (_2734 == 4).xxx;
if (_2734 == 0)
{
_2823 = 0.0f;
break;
}
float3 _2744 = normalize(_2732);
float3 _2745 = normalize(_2731);
float3 _2746 = normalize(_2730);
float3 _2747 = normalize(float3(_2736.x ? _2732.x : _2729.x, _2736.y ? _2732.y : _2729.y, _2736.z ? _2732.z : _2729.z));
float3 _2748 = normalize(float3(_2739.x ? _2732.x : _2733.x, _2739.y ? _2732.y : _2733.y, _2739.z ? _2732.z : _2733.z));
float _2750 = clamp(dot(_2744, _2745), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _2754 = sqrt(1.0f - (_2750 * _2750));
float _2762 = clamp(dot(_2745, _2746), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _2766 = sqrt(1.0f - (_2762 * _2762));
float _2775 = clamp(dot(_2746, _2747), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _2779 = sqrt(1.0f - (_2775 * _2775));
float _2786 = ((cross(_2744, _2745).z * ((_2754 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2750) / _2754))) + (cross(_2745, _2746).z * ((_2766 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2762) / _2766)))) + (cross(_2746, _2747).z * ((_2779 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2775) / _2779)));
float _2803;
if (_2734 >= 4)
{
float _2791 = clamp(dot(_2747, _2748), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _2795 = sqrt(1.0f - (_2791 * _2791));
_2803 = _2786 + (cross(_2747, _2748).z * ((_2795 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2791) / _2795)));
}
else
{
_2803 = _2786;
}
float _2820;
if (_2734 == 5)
{
float _2808 = clamp(dot(_2748, _2744), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _2812 = sqrt(1.0f - (_2808 * _2808));
_2820 = _2803 + (cross(_2748, _2744).z * ((_2812 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2808) / _2812)));
}
else
{
_2820 = _2803;
}
_2823 = max(_2820, 0.0f) * 0.15915493667125701904296875f;
break;
}
while(false);
float _3211;
do
{
float3 _2857;
if (_2441)
{
_2857 = _2439 * rsqrt(_2440);
}
else
{
float _2840 = (_669.z >= 0.0f) ? 1.0f : (-1.0f);
float _2842 = (-1.0f) / (_2840 + _669.z);
_2857 = float3(1.0f + (((_2840 * _2842) * _669.x) * _669.x), ((_2840 * _669.x) * _669.y) * _2842, (-_2840) * _669.x);
}
float3x3 _2860 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2857, cross(_669, _2857), _669));
float3 _2861 = mul(_2860, _2469);
float3 _2862 = mul(_2860, _2471);
float3 _2863 = mul(_2860, _2473);
float3 _2864 = mul(_2860, _2475);
float _2865 = _2861.z;
float _2868 = _2862.z;
float _2872 = _2863.z;
float _2876 = _2864.z;
int _2880 = (((int(_2865 > 0.0f) | ((_2868 > 0.0f) ? 2 : 0)) | ((_2872 > 0.0f) ? 4 : 0)) | ((_2876 > 0.0f) ? 8 : 0));
float3 _3117;
float3 _3118;
float3 _3119;
float3 _3120;
float3 _3121;
int _3122;
if (_2880 == 0)
{
_3117 = _2864;
_3118 = _2863;
_3119 = _2862;
_3120 = _2861;
_3121 = 0.0f.xxx;
_3122 = 0;
}
else
{
float3 _3111;
float3 _3112;
float3 _3113;
float3 _3114;
float3 _3115;
int _3116;
if (_2880 == 1)
{
_3111 = _2864;
_3112 = (_2861 * (-_2876)) + (_2864 * _2865);
_3113 = (_2861 * (-_2868)) + (_2862 * _2865);
_3114 = _2861;
_3115 = 0.0f.xxx;
_3116 = 3;
}
else
{
float3 _3097;
float3 _3098;
float3 _3099;
float3 _3100;
float3 _3101;
int _3102;
if (_2880 == 2)
{
_3097 = _2864;
_3098 = (_2862 * (-_2872)) + (_2863 * _2868);
_3099 = _2862;
_3100 = (_2862 * (-_2865)) + (_2861 * _2868);
_3101 = 0.0f.xxx;
_3102 = 3;
}
else
{
float3 _3083;
float3 _3084;
float3 _3085;
float3 _3086;
float3 _3087;
int _3088;
if (_2880 == 3)
{
_3083 = (_2861 * (-_2876)) + (_2864 * _2865);
_3084 = (_2862 * (-_2872)) + (_2863 * _2868);
_3085 = _2862;
_3086 = _2861;
_3087 = 0.0f.xxx;
_3088 = 4;
}
else
{
float3 _3069;
float3 _3070;
float3 _3071;
float3 _3072;
float3 _3073;
int _3074;
if (_2880 == 4)
{
_3069 = _2864;
_3070 = _2863;
_3071 = (_2863 * (-_2868)) + (_2862 * _2872);
_3072 = (_2863 * (-_2876)) + (_2864 * _2872);
_3073 = 0.0f.xxx;
_3074 = 3;
}
else
{
float3 _3055;
float3 _3056;
float3 _3057;
float3 _3058;
float3 _3059;
int _3060;
if (_2880 == 5)
{
_3055 = _2864;
_3056 = _2863;
_3057 = _2862;
_3058 = _2861;
_3059 = 0.0f.xxx;
_3060 = 0;
}
else
{
float3 _3049;
float3 _3050;
float3 _3051;
float3 _3052;
float3 _3053;
int _3054;
if (_2880 == 6)
{
_3049 = (_2863 * (-_2876)) + (_2864 * _2872);
_3050 = _2863;
_3051 = _2862;
_3052 = (_2862 * (-_2865)) + (_2861 * _2868);
_3053 = 0.0f.xxx;
_3054 = 4;
}
else
{
float3 _3035;
float3 _3036;
float3 _3037;
float3 _3038;
float3 _3039;
int _3040;
if (_2880 == 7)
{
float _3028 = -_2876;
_3035 = (_2863 * _3028) + (_2864 * _2872);
_3036 = _2863;
_3037 = _2862;
_3038 = _2861;
_3039 = (_2861 * _3028) + (_2864 * _2865);
_3040 = 5;
}
else
{
float3 _3022;
float3 _3023;
float3 _3024;
float3 _3025;
float3 _3026;
int _3027;
if (_2880 == 8)
{
_3022 = _2864;
_3023 = _2864;
_3024 = (_2864 * (-_2872)) + (_2863 * _2876);
_3025 = (_2864 * (-_2865)) + (_2861 * _2876);
_3026 = 0.0f.xxx;
_3027 = 3;
}
else
{
float3 _3008;
float3 _3009;
float3 _3010;
float3 _3011;
float3 _3012;
int _3013;
if (_2880 == 9)
{
_3008 = _2864;
_3009 = (_2864 * (-_2872)) + (_2863 * _2876);
_3010 = (_2861 * (-_2868)) + (_2862 * _2865);
_3011 = _2861;
_3012 = 0.0f.xxx;
_3013 = 4;
}
else
{
float3 _2994;
float3 _2995;
float3 _2996;
float3 _2997;
float3 _2998;
int _2999;
if (_2880 == 10)
{
_2994 = _2864;
_2995 = _2863;
_2996 = _2862;
_2997 = _2861;
_2998 = 0.0f.xxx;
_2999 = 0;
}
else
{
float3 _2988;
float3 _2989;
float3 _2990;
float3 _2991;
float3 _2992;
int _2993;
if (_2880 == 11)
{
float _2981 = -_2872;
_2988 = (_2864 * _2981) + (_2863 * _2876);
_2989 = (_2862 * _2981) + (_2863 * _2868);
_2990 = _2862;
_2991 = _2861;
_2992 = _2864;
_2993 = 5;
}
else
{
float3 _2975;
float3 _2976;
float3 _2977;
float3 _2978;
float3 _2979;
int _2980;
if (_2880 == 12)
{
_2975 = _2864;
_2976 = _2863;
_2977 = (_2863 * (-_2868)) + (_2862 * _2872);
_2978 = (_2864 * (-_2865)) + (_2861 * _2876);
_2979 = 0.0f.xxx;
_2980 = 4;
}
else
{
bool _2933 = _2880 == 13;
float3 _2960;
float3 _2961;
float3 _2962;
float3 _2963;
int _2964;
if (_2933)
{
float _2953 = -_2868;
_2960 = (_2863 * _2953) + (_2862 * _2872);
_2961 = (_2861 * _2953) + (_2862 * _2865);
_2962 = _2861;
_2963 = _2864;
_2964 = 5;
}
else
{
float3 _2950;
float3 _2951;
int _2952;
if (_2880 == 14)
{
float _2943 = -_2865;
_2950 = (_2862 * _2943) + (_2861 * _2868);
_2951 = (_2864 * _2943) + (_2861 * _2876);
_2952 = 5;
}
else
{
_2950 = _2861;
_2951 = 0.0f.xxx;
_2952 = (_2880 == 15) ? 4 : 0;
}
_2960 = _2863;
_2961 = _2862;
_2962 = _2950;
_2963 = _2951;
_2964 = _2952;
}
bool3 _2965 = _2933.xxx;
_2975 = float3(_2965.x ? _2863.x : _2864.x, _2965.y ? _2863.y : _2864.y, _2965.z ? _2863.z : _2864.z);
_2976 = _2960;
_2977 = _2961;
_2978 = _2962;
_2979 = _2963;
_2980 = _2964;
}
_2988 = _2975;
_2989 = _2976;
_2990 = _2977;
_2991 = _2978;
_2992 = _2979;
_2993 = _2980;
}
_2994 = _2988;
_2995 = _2989;
_2996 = _2990;
_2997 = _2991;
_2998 = _2992;
_2999 = _2993;
}
_3008 = _2994;
_3009 = _2995;
_3010 = _2996;
_3011 = _2997;
_3012 = _2998;
_3013 = _2999;
}
_3022 = _3008;
_3023 = _3009;
_3024 = _3010;
_3025 = _3011;
_3026 = _3012;
_3027 = _3013;
}
_3035 = _3022;
_3036 = _3023;
_3037 = _3024;
_3038 = _3025;
_3039 = _3026;
_3040 = _3027;
}
_3049 = _3035;
_3050 = _3036;
_3051 = _3037;
_3052 = _3038;
_3053 = _3039;
_3054 = _3040;
}
_3055 = _3049;
_3056 = _3050;
_3057 = _3051;
_3058 = _3052;
_3059 = _3053;
_3060 = _3054;
}
_3069 = _3055;
_3070 = _3056;
_3071 = _3057;
_3072 = _3058;
_3073 = _3059;
_3074 = _3060;
}
_3083 = _3069;
_3084 = _3070;
_3085 = _3071;
_3086 = _3072;
_3087 = _3073;
_3088 = _3074;
}
_3097 = _3083;
_3098 = _3084;
_3099 = _3085;
_3100 = _3086;
_3101 = _3087;
_3102 = _3088;
}
_3111 = _3097;
_3112 = _3098;
_3113 = _3099;
_3114 = _3100;
_3115 = _3101;
_3116 = _3102;
}
_3117 = _3111;
_3118 = _3112;
_3119 = _3113;
_3120 = _3114;
_3121 = _3115;
_3122 = _3116;
}
bool3 _3124 = (_3122 == 3).xxx;
bool3 _3127 = (_3122 == 4).xxx;
if (_3122 == 0)
{
_3211 = 0.0f;
break;
}
float3 _3132 = normalize(_3120);
float3 _3133 = normalize(_3119);
float3 _3134 = normalize(_3118);
float3 _3135 = normalize(float3(_3124.x ? _3120.x : _3117.x, _3124.y ? _3120.y : _3117.y, _3124.z ? _3120.z : _3117.z));
float3 _3136 = normalize(float3(_3127.x ? _3120.x : _3121.x, _3127.y ? _3120.y : _3121.y, _3127.z ? _3120.z : _3121.z));
float _3138 = clamp(dot(_3132, _3133), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _3142 = sqrt(1.0f - (_3138 * _3138));
float _3150 = clamp(dot(_3133, _3134), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _3154 = sqrt(1.0f - (_3150 * _3150));
float _3163 = clamp(dot(_3134, _3135), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _3167 = sqrt(1.0f - (_3163 * _3163));
float _3174 = ((cross(_3132, _3133).z * ((_3142 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3138) / _3142))) + (cross(_3133, _3134).z * ((_3154 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3150) / _3154)))) + (cross(_3134, _3135).z * ((_3167 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3163) / _3167)));
float _3191;
if (_3122 >= 4)
{
float _3179 = clamp(dot(_3135, _3136), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _3183 = sqrt(1.0f - (_3179 * _3179));
_3191 = _3174 + (cross(_3135, _3136).z * ((_3183 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3179) / _3183)));
}
else
{
_3191 = _3174;
}
float _3208;
if (_3122 == 5)
{
float _3196 = clamp(dot(_3136, _3132), -0.99989998340606689453125f, 0.99989998340606689453125f);
float _3200 = sqrt(1.0f - (_3196 * _3196));
_3208 = _3191 + (cross(_3136, _3132).z * ((_3200 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3196) / _3200)));
}
else
{
_3208 = _3191;
}
_3211 = max(_3208, 0.0f) * 0.15915493667125701904296875f;
break;
}
while(false);
bool _3214 = (_2289 & 2u) != 0u;
uint _3218 = asuint(_44_m6[_2276].w);
uint _3219 = asuint(_44_m6[_2282].w);
float3 _3220 = _428 - _44_m6[_2267].xyz;
float3 _3221 = abs(_3220);
float _3222 = _3221.x;
float _3223 = _3221.y;
float _3225 = _3221.z;
int _3258;
if ((_3222 > _3223) && (_3222 > _3225))
{
_3258 = int((_3220.x > 0.0f) ? (_3218 & 1023u) : ((_3218 >> 10u) & 1023u));
}
else
{
int _3250;
if (_3223 > _3225)
{
_3250 = int((_3220.y > 0.0f) ? ((_3218 >> 20u) & 1023u) : (_3219 & 1023u));
}
else
{
_3250 = int((_3220.z > 0.0f) ? ((_3219 >> 10u) & 1023u) : ((_3219 >> 20u) & 1023u));
}
_3258 = _3250;
}
int _3261 = _3214 ? int(_44_m6[_2276].w) : ((_3258 == 1023) ? (-1) : _3258);
uint _3272 = asuint(_48_m11.x) + (uint(_3261) * 96u);
uint _3274 = (_3272 + 64u) >> 2u;
uint _3277 = _3274 + 1u;
uint _3280 = _3274 + 2u;
uint _3283 = _3274 + 3u;
float4 _3287 = asfloat(uint4(_52.Load(_3274 * 4 + 0), _52.Load(_3277 * 4 + 0), _52.Load(_3280 * 4 + 0), _52.Load(_3283 * 4 + 0)));
uint _3295 = _3272 >> 2u;
uint _3310 = (_3272 + 16u) >> 2u;
uint _3325 = (_3272 + 32u) >> 2u;
uint _3340 = (_3272 + 48u) >> 2u;
float4 _3360 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3295 * 4 + 0), _52.Load((_3295 + 1u) * 4 + 0), _52.Load((_3295 + 2u) * 4 + 0), _52.Load((_3295 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3310 * 4 + 0), _52.Load((_3310 + 1u) * 4 + 0), _52.Load((_3310 + 2u) * 4 + 0), _52.Load((_3310 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3325 * 4 + 0), _52.Load((_3325 + 1u) * 4 + 0), _52.Load((_3325 + 2u) * 4 + 0), _52.Load((_3325 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3340 * 4 + 0), _52.Load((_3340 + 1u) * 4 + 0), _52.Load((_3340 + 2u) * 4 + 0), _52.Load((_3340 + 3u) * 4 + 0))))), float4((_428 - ((_3220 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3220, _3220)))) * _3287.x)) + (_669 * (_3287.y * 5.0f)), 1.0f));
float3 _3364 = _3360.xyz / _3360.w.xxx;
uint _3366 = (_3272 + 80u) >> 2u;
float4 _3379 = asfloat(uint4(_52.Load(_3366 * 4 + 0), _52.Load((_3366 + 1u) * 4 + 0), _52.Load((_3366 + 2u) * 4 + 0), _52.Load((_3366 + 3u) * 4 + 0)));
float2 _3380 = _3364.xy;
float2 _3382 = _3379.xy;
float3 _3386 = _3364.xyz;
bool3 _3387 = bool3(_3386.x <= 0.0f.xxx.x, _3386.y <= 0.0f.xxx.y, _3386.z <= 0.0f.xxx.z);
bool3 _3388 = bool3(_3386.x >= 1.0f.xxx.x, _3386.y >= 1.0f.xxx.y, _3386.z >= 1.0f.xxx.z);
float _3391 = _3364.z;
float2 _3402 = ((_3380 * (_3379.zw - _3382)) + _3382).xy * _48_m10.zw;
float2 _3404 = floor(_3402 + 0.5f.xx);
float2 _3405 = _3402 - _3404;
float _3406 = _3405.x;
float _3407 = _3406 + 0.5f;
float _3408 = _3407 * _3407;
float _3411 = 1.0f - _3406;
float _3412 = min(_3406, 0.0f);
float _3415 = _3406 + 1.0f;
float _3416 = max(_3406, 0.0f);
float _3427 = _3405.y;
float _3428 = _3427 + 0.5f;
float _3429 = _3428 * _3428;
float _3432 = 1.0f - _3427;
float _3433 = min(_3427, 0.0f);
float _3436 = _3427 + 1.0f;
float _3437 = max(_3427, 0.0f);
float3 _3449 = float3(0.1599999964237213134765625f * _3411, 0.1599999964237213134765625f * ((_3415 - (_3416 * _3416)) + 1.0f), _3408 * 0.07999999821186065673828125f);
float3 _3450 = float3(0.1599999964237213134765625f * ((_3408 * 0.5f) - _3406), 0.1599999964237213134765625f * ((_3411 - (_3412 * _3412)) + 1.0f), 0.1599999964237213134765625f * _3415) + _3449;
float3 _3452 = float3(0.1599999964237213134765625f * _3432, 0.1599999964237213134765625f * ((_3436 - (_3437 * _3437)) + 1.0f), _3429 * 0.07999999821186065673828125f);
float3 _3453 = float3(0.1599999964237213134765625f * ((_3429 * 0.5f) - _3427), 0.1599999964237213134765625f * ((_3432 - (_3433 * _3433)) + 1.0f), 0.1599999964237213134765625f * _3436) + _3452;
float3 _3459 = ((_3449 / _3450) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
float3 _3461 = ((_3452 / _3453) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
float2 _3463 = _3404 * _48_m10.xy;
float _3464 = _3459.x;
float _3465 = _3461.x;
float _3468 = _3459.y;
float _3471 = _3459.z;
float _3474 = _3461.y;
float _3481 = _3461.z;
float _3488 = _3450.x;
float _3489 = _3453.x;
float _3491 = _3450.y;
float _3493 = _3450.z;
float _3495 = _3453.y;
float _3499 = _3453.z;
float _3557 = (((((((_3488 * _3489) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3464, _3465), _387).xy, _3391)) + ((_3491 * _3489) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3468, _3465), _387).xy, _3391))) + ((_3493 * _3489) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3471, _3465), _387).xy, _3391))) + ((_3488 * _3495) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3464, _3474), _387).xy, _3391))) + ((_3491 * _3495) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3468, _3474), _387).xy, _3391))) + ((_3493 * _3495) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3471, _3474), _387).xy, _3391))) + ((_3488 * _3499) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3464, _3481), _387).xy, _3391));
float4 _3580 = asfloat(uint4(_52.Load(_3274 * 4 + 0), _52.Load(_3277 * 4 + 0), _52.Load(_3280 * 4 + 0), _52.Load(_3283 * 4 + 0)));
float _3581 = _3580.w;
float2 _3583 = min(_3380, 1.0f.xx - _3380);
_3600 = ((_44_m6[_2264].xyz * (((((_748 * _2428.x) + ((1.0f.xxx - _748) * _2428.y)) * _2823) * _44_m6[_2285].z) + (_744 * _3211))) * _2401) * ((_3261 >= 0) ? lerp(1.0f, (any(bool3(_3387.x || _3388.x, _3387.y || _3388.y, _3387.z || _3388.z)) || ((asuint(_3391) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3557 + ((_3491 * _3499) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3468, _3481), _387).xy, _3391))) + ((_3493 * _3499) * _50.SampleCmpLevelZero(_26, float3(_3463 + float2(_3471, _3481), _387).xy, _3391))), _3214 ? min(_3581, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3580.z - _3360.w) * 0.25f, min(_3583.x, _3583.y)))) : _3581) : 1.0f);
break;
}
while(false);
_4900 = _2224;
_4901 = _3600 * _2364;
break;
}
float _4898;
float3 _4899;
if (_44_m6[_2264].w < 1.5f)
{
float3 _4180 = float3(0.100000001490116119384765625f, _549, 1.0f);
float _4189 = (0.5f + (0.5f * _44_m6[_2270].y)) - abs(_44_m6[_2270].x);
float _4190 = _44_m6[_2270].y - _4189;
float _4197 = abs(max((1.0f - abs(_4189)) - abs(_4190), 0.00048828125f));
float3 _4201 = normalize(float3(_4189, _4190, (_44_m6[_2270].x >= 0.0f) ? _4197 : (-_4197)));
float3 _4202 = _44_m6[_2267].xyz - _428;
float _4203 = dot(_4202, _4202);
float _4204 = rsqrt(_4203);
float3 _4205 = _4202 * _4204;
float _4209 = clamp(_44_m6[_2285].y * _4204, 0.0f, 1.0f);
int _4214 = int(_44_m6[_2285].w);
float3 _4215 = _4201 * _44_m6[_2270].z;
float3 _4216 = _4215 * 0.5f;
float3 _4217 = _4202 - _4216;
float3 _4218 = _4202 + _4216;
bool _4220 = (_2368 & 1u) == 0u;
bool _4223 = _4220 || ((_2289 & 2u) != 0u);
bool _4226 = (!_4220) && (_44_m6[_2270].z > 0.0f);
float _4245;
float _4246;
if (_4226)
{
float _4230 = length(_4217);
float _4231 = length(_4218);
_4245 = clamp(0.5f * ((dot(_669, _4217) / _4230) + (dot(_669, _4218) / _4231)), 0.0f, 1.0f);
_4246 = 1.0f / ((((_4230 * _4231) + dot(_4217, _4218)) * 0.5f) + 1.0f);
}
else
{
_4245 = clamp(dot(_669, _4205), 0.0f, 1.0f);
_4246 = 1.0f;
}
float _4268;
if (_44_m6[_2282].w < 0.0f)
{
float _4262 = _4203 * (_44_m6[_2267].w * _44_m6[_2267].w);
float _4265 = clamp(1.0f - (_4262 * _4262), 0.0f, 1.0f);
_4268 = lerp(1.0f / (_4203 + 1.0f), _4246, float(_4226)) * (_4265 * _4265);
}
else
{
float3 _4251 = _4202 * _44_m6[_2267].w;
_4268 = _4246 * pow(1.0f - clamp(dot(_4251, _4251), 0.0f, 1.0f), _44_m6[_2282].w);
}
float _4274 = clamp((dot(_4205, -_4201) - _44_m6[_2270].z) * _44_m6[_2270].w, 0.0f, 1.0f);
float _4278 = _4268 * lerp(1.0f, _4274 * _4274, float(_4220));
float _4378;
if ((!_4226) && (_4214 >= 0))
{
uint _4284 = uint(_4214);
float2 _4371;
[branch]
if (_4220)
{
float4 _4361 = mul(_68_m1[_4284], _432);
_4371 = _68_m0[_4284].xy + (clamp(_4361.xy / _4361.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_4284].zw);
}
else
{
float3 _4298 = mul(float4(-_4202, 0.0f), _68_m1[_4284]).xyz;
float3 _393 = _4298;
float3 _392 = _4298;
float3 _391 = abs(_4298);
uint _4307 = uint(int(_391.y > _391.x));
uint _4313 = (_391.z > _391[_4307]) ? 2u : _4307;
uint _4319 = (_4313 * 2u) + uint(_392[_4313] < 0.0f);
float _4323 = abs(_393[_4319 / 2u]);
float _4343 = 0.5f - (0.000244140625f / _68_m0[_4284].w);
_4371 = _68_m0[_4284].xy + (clamp(float2((float(_4319) + ((((_393[uint(_366[_4319].x)] * _367[_4319].x) / _4323) * _4343) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_393[uint(_366[_4319].y)] * _367[_4319].y) / _4323) * _4343)), 0.0f.xx, 1.0f.xx) * _68_m0[_4284].zw);
}
_4378 = _4278 * _66.SampleLevel(_23, _4371, 0.0f).x;
}
else
{
_4378 = _4278;
}
bool _4379 = _4378 > 0.0f;
float _4763;
if (_4379)
{
int _4432;
if (_4223)
{
_4432 = int(_44_m6[_2273].x);
}
else
{
uint _4387 = asuint(_44_m6[_2270].w);
uint _4388 = asuint(_44_m6[_2273].x);
float3 _4389 = _428 - _44_m6[_2267].xyz;
float3 _4390 = abs(_4389);
float _4391 = _4390.x;
float _4392 = _4390.y;
float _4394 = _4390.z;
int _4427;
if ((_4391 > _4392) && (_4391 > _4394))
{
_4427 = int((_4389.x > 0.0f) ? (_4387 & 1023u) : ((_4387 >> 10u) & 1023u));
}
else
{
int _4419;
if (_4392 > _4394)
{
_4419 = int((_4389.y > 0.0f) ? ((_4387 >> 20u) & 1023u) : (_4388 & 1023u));
}
else
{
_4419 = int((_4389.z > 0.0f) ? ((_4388 >> 10u) & 1023u) : ((_4388 >> 20u) & 1023u));
}
_4427 = _4419;
}
_4432 = (_4427 == 1023) ? (-1) : _4427;
}
uint _4439 = asuint(_48_m11.x) + (uint(_4432) * 96u);
uint _4441 = (_4439 + 64u) >> 2u;
uint _4444 = _4441 + 1u;
uint _4447 = _4441 + 2u;
uint _4450 = _4441 + 3u;
float4 _4454 = asfloat(uint4(_52.Load(_4441 * 4 + 0), _52.Load(_4444 * 4 + 0), _52.Load(_4447 * 4 + 0), _52.Load(_4450 * 4 + 0)));
uint _4462 = _4439 >> 2u;
uint _4477 = (_4439 + 16u) >> 2u;
uint _4492 = (_4439 + 32u) >> 2u;
uint _4507 = (_4439 + 48u) >> 2u;
float4 _4527 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4462 * 4 + 0), _52.Load((_4462 + 1u) * 4 + 0), _52.Load((_4462 + 2u) * 4 + 0), _52.Load((_4462 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4477 * 4 + 0), _52.Load((_4477 + 1u) * 4 + 0), _52.Load((_4477 + 2u) * 4 + 0), _52.Load((_4477 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4492 * 4 + 0), _52.Load((_4492 + 1u) * 4 + 0), _52.Load((_4492 + 2u) * 4 + 0), _52.Load((_4492 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4507 * 4 + 0), _52.Load((_4507 + 1u) * 4 + 0), _52.Load((_4507 + 2u) * 4 + 0), _52.Load((_4507 + 3u) * 4 + 0))))), float4((_428 - ((-_4205) * _4454.x)) + (_669 * (_4454.y * 5.0f)), 1.0f));
float3 _4531 = _4527.xyz / _4527.w.xxx;
uint _4533 = (_4439 + 80u) >> 2u;
float4 _4546 = asfloat(uint4(_52.Load(_4533 * 4 + 0), _52.Load((_4533 + 1u) * 4 + 0), _52.Load((_4533 + 2u) * 4 + 0), _52.Load((_4533 + 3u) * 4 + 0)));
float2 _4547 = _4531.xy;
float2 _4549 = _4546.xy;
float3 _4553 = _4531.xyz;
bool3 _4554 = bool3(_4553.x <= 0.0f.xxx.x, _4553.y <= 0.0f.xxx.y, _4553.z <= 0.0f.xxx.z);
bool3 _4555 = bool3(_4553.x >= 1.0f.xxx.x, _4553.y >= 1.0f.xxx.y, _4553.z >= 1.0f.xxx.z);
float _4558 = _4531.z;
float2 _4569 = ((_4547 * (_4546.zw - _4549)) + _4549).xy * _48_m10.zw;
float2 _4571 = floor(_4569 + 0.5f.xx);
float2 _4572 = _4569 - _4571;
float _4573 = _4572.x;
float _4574 = _4573 + 0.5f;
float _4575 = _4574 * _4574;
float _4578 = 1.0f - _4573;
float _4579 = min(_4573, 0.0f);
float _4582 = _4573 + 1.0f;
float _4583 = max(_4573, 0.0f);
float _4594 = _4572.y;
float _4595 = _4594 + 0.5f;
float _4596 = _4595 * _4595;
float _4599 = 1.0f - _4594;
float _4600 = min(_4594, 0.0f);
float _4603 = _4594 + 1.0f;
float _4604 = max(_4594, 0.0f);
float3 _4616 = float3(0.1599999964237213134765625f * _4578, 0.1599999964237213134765625f * ((_4582 - (_4583 * _4583)) + 1.0f), _4575 * 0.07999999821186065673828125f);
float3 _4617 = float3(0.1599999964237213134765625f * ((_4575 * 0.5f) - _4573), 0.1599999964237213134765625f * ((_4578 - (_4579 * _4579)) + 1.0f), 0.1599999964237213134765625f * _4582) + _4616;
float3 _4619 = float3(0.1599999964237213134765625f * _4599, 0.1599999964237213134765625f * ((_4603 - (_4604 * _4604)) + 1.0f), _4596 * 0.07999999821186065673828125f);
float3 _4620 = float3(0.1599999964237213134765625f * ((_4596 * 0.5f) - _4594), 0.1599999964237213134765625f * ((_4599 - (_4600 * _4600)) + 1.0f), 0.1599999964237213134765625f * _4603) + _4619;
float3 _4626 = ((_4616 / _4617) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
float3 _4628 = ((_4619 / _4620) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
float2 _4630 = _4571 * _48_m10.xy;
float _4631 = _4626.x;
float _4632 = _4628.x;
float _4635 = _4626.y;
float _4638 = _4626.z;
float _4641 = _4628.y;
float _4648 = _4628.z;
float _4655 = _4617.x;
float _4656 = _4620.x;
float _4658 = _4617.y;
float _4660 = _4617.z;
float _4662 = _4620.y;
float _4666 = _4620.z;
float _4724 = (((((((_4655 * _4656) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4631, _4632), _387).xy, _4558)) + ((_4658 * _4656) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4635, _4632), _387).xy, _4558))) + ((_4660 * _4656) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4638, _4632), _387).xy, _4558))) + ((_4655 * _4662) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4631, _4641), _387).xy, _4558))) + ((_4658 * _4662) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4635, _4641), _387).xy, _4558))) + ((_4660 * _4662) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4638, _4641), _387).xy, _4558))) + ((_4655 * _4666) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4631, _4648), _387).xy, _4558));
float4 _4747 = asfloat(uint4(_52.Load(_4441 * 4 + 0), _52.Load(_4444 * 4 + 0), _52.Load(_4447 * 4 + 0), _52.Load(_4450 * 4 + 0)));
float _4748 = _4747.w;
float2 _4750 = min(_4547, 1.0f.xx - _4547);
_4763 = (_4432 >= 0) ? lerp(1.0f, (any(bool3(_4554.x || _4555.x, _4554.y || _4555.y, _4554.z || _4555.z)) || ((asuint(_4558) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4724 + ((_4658 * _4666) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4635, _4648), _387).xy, _4558))) + ((_4660 * _4666) * _50.SampleCmpLevelZero(_26, float3(_4630 + float2(_4638, _4648), _387).xy, _4558))), _4223 ? min(_4748, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4747.z - _4527.w) * 0.25f, min(_4750.x, _4750.y)))) : _4748) : 1.0f;
}
else
{
_4763 = 1.0f;
}
float3 _4786;
float3 _4787;
if (_4226)
{
float3 _4766 = _4180 * _4180;
float _4775 = dot(_1231, _4215);
_4786 = _4766 / clamp(_4766 + (0.5f * clamp(_44_m6[_2270].z * _4204, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
_4787 = normalize(_4217 + (_4215 * clamp(dot(_4217, (_1231 * _4775) - _4215) / ((_44_m6[_2270].z * _44_m6[_2270].z) - (_4775 * _4775)), 0.0f, 1.0f)));
}
else
{
_4786 = 1.0f.xxx;
_4787 = _4205;
}
float3 _4788 = _4787 + _465;
float3 _4792 = _4788 * rsqrt(max(6.103515625e-05f, dot(_4788, _4788)));
float3 _4897;
if (_4379)
{
float _4795 = clamp(_4245, 0.0f, 1.0f);
float _4797 = clamp(dot(_669, _4792), 0.0f, 1.0f);
float _4799 = clamp(dot(_465, _4792), 0.0f, 1.0f);
float _4800 = clamp(_749, 0.0f, 1.0f);
float _4801 = _549 * _549;
float _4811;
if (_4209 > 0.0f)
{
_4811 = clamp(_4801 + ((_4209 * _4209) / ((_4799 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
}
else
{
_4811 = _4801;
}
float _4812 = _4811 * _4811;
float _4833 = (((_4797 * _4812) - _4797) * _4797) + 1.0f;
float _4838 = 1.0f - _4799;
float _4839 = _4838 * _4838;
float _4841 = (_4838 * _4839) * _4839;
float _4865 = 1.0f - _549;
float _4872 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4865 * (1.04997003078460693359375f + (_4865 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4865))))));
float _4873 = 1.0f - _4872;
float3 _4876 = _748 + ((1.0f.xxx - _748) * 0.0476190485060214996337890625f);
float3 _4896 = ((clamp((min(((_748 * (1.0f - _4841)) + _4841.xxx) * (((_4812 / (_4833 * _4833)) * _4786.y) * (0.5f / (((_4795 * sqrt(((((-_4800) * _4812) + _4800) * _4800) + _4812)) + (_4800 * sqrt(((((-_4795) * _4812) + _4795) * _4795) + _4812))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4876 * (((_58.SampleLevel(_23, (float2(_4800, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_4795, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4872) / _4873)) * _4876) / (1.0f.xxx - (_4876 * _4873)))) * _44_m6[_2285].z, 0.0f.xxx, 1000.0f.xxx) * _4245) + ((_744 * _4786.z) * _4245)) * (((_44_m6[_2264].xyz * _4378) * _4763) * _2364);
_4897 = _4896;
}
else
{
_4897 = 0.0f.xxx;
}
_4898 = _2224;
_4899 = _4897;
}
else
{
float _4178;
do
{
if (_2371)
{
_4178 = 1.0f;
break;
}
float _3617 = (0.5f + (0.5f * _44_m6[_2270].y)) - abs(_44_m6[_2270].x);
float _3618 = _44_m6[_2270].y - _3617;
float _3625 = abs(max((1.0f - abs(_3617)) - abs(_3618), 0.00048828125f));
float3 _3629 = normalize(float3(_3617, _3618, (_44_m6[_2270].x >= 0.0f) ? _3625 : (-_3625)));
float3 _3630 = _44_m6[_2267].xyz - _428;
float _3631 = dot(_3630, _3630);
float3 _3633 = _3630 * rsqrt(_3631);
int _3636 = int(_44_m6[_2285].w);
float3 _3638 = (_3629 * _44_m6[_2270].z) * 0.5f;
float3 _3639 = _3630 - _3638;
float3 _3640 = _3630 + _3638;
bool _3642 = (_2368 & 1u) == 0u;
bool _3645 = _3642 || ((_2289 & 2u) != 0u);
bool _3648 = (!_3642) && (_44_m6[_2270].z > 0.0f);
float _3660;
if (_3648)
{
_3660 = 1.0f / ((((length(_3639) * length(_3640)) + dot(_3639, _3640)) * 0.5f) + 1.0f);
}
else
{
_3660 = 1.0f;
}
float _3682;
if (_44_m6[_2282].w < 0.0f)
{
float _3676 = _3631 * (_44_m6[_2267].w * _44_m6[_2267].w);
float _3679 = clamp(1.0f - (_3676 * _3676), 0.0f, 1.0f);
_3682 = lerp(1.0f / (_3631 + 1.0f), _3660, float(_3648)) * (_3679 * _3679);
}
else
{
float3 _3665 = _3630 * _44_m6[_2267].w;
_3682 = _3660 * pow(1.0f - clamp(dot(_3665, _3665), 0.0f, 1.0f), _44_m6[_2282].w);
}
float _3688 = clamp((dot(_3633, -_3629) - _44_m6[_2270].z) * _44_m6[_2270].w, 0.0f, 1.0f);
float _3692 = _3682 * lerp(1.0f, _3688 * _3688, float(_3642));
float _3792;
if ((!_3648) && (_3636 >= 0))
{
uint _3698 = uint(_3636);
float2 _3785;
[branch]
if (_3642)
{
float4 _3775 = mul(_68_m1[_3698], _432);
_3785 = _68_m0[_3698].xy + (clamp(_3775.xy / _3775.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_3698].zw);
}
else
{
float3 _3712 = mul(float4(-_3630, 0.0f), _68_m1[_3698]).xyz;
float3 _396 = _3712;
float3 _395 = _3712;
float3 _394 = abs(_3712);
uint _3721 = uint(int(_394.y > _394.x));
uint _3727 = (_394.z > _394[_3721]) ? 2u : _3721;
uint _3733 = (_3727 * 2u) + uint(_395[_3727] < 0.0f);
float _3737 = abs(_396[_3733 / 2u]);
float _3757 = 0.5f - (0.000244140625f / _68_m0[_3698].w);
_3785 = _68_m0[_3698].xy + (clamp(float2((float(_3733) + ((((_396[uint(_366[_3733].x)] * _367[_3733].x) / _3737) * _3757) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_396[uint(_366[_3733].y)] * _367[_3733].y) / _3737) * _3757)), 0.0f.xx, 1.0f.xx) * _68_m0[_3698].zw);
}
_3792 = _3692 * _66.SampleLevel(_23, _3785, 0.0f).x;
}
else
{
_3792 = _3692;
}
float _4177;
if (_3792 > 0.0f)
{
int _3846;
if (_3645)
{
_3846 = int(_44_m6[_2273].x);
}
else
{
uint _3801 = asuint(_44_m6[_2270].w);
uint _3802 = asuint(_44_m6[_2273].x);
float3 _3803 = _428 - _44_m6[_2267].xyz;
float3 _3804 = abs(_3803);
float _3805 = _3804.x;
float _3806 = _3804.y;
float _3808 = _3804.z;
int _3841;
if ((_3805 > _3806) && (_3805 > _3808))
{
_3841 = int((_3803.x > 0.0f) ? (_3801 & 1023u) : ((_3801 >> 10u) & 1023u));
}
else
{
int _3833;
if (_3806 > _3808)
{
_3833 = int((_3803.y > 0.0f) ? ((_3801 >> 20u) & 1023u) : (_3802 & 1023u));
}
else
{
_3833 = int((_3803.z > 0.0f) ? ((_3802 >> 10u) & 1023u) : ((_3802 >> 20u) & 1023u));
}
_3841 = _3833;
}
_3846 = (_3841 == 1023) ? (-1) : _3841;
}
uint _3853 = asuint(_48_m11.x) + (uint(_3846) * 96u);
uint _3855 = (_3853 + 64u) >> 2u;
uint _3858 = _3855 + 1u;
uint _3861 = _3855 + 2u;
uint _3864 = _3855 + 3u;
float4 _3868 = asfloat(uint4(_52.Load(_3855 * 4 + 0), _52.Load(_3858 * 4 + 0), _52.Load(_3861 * 4 + 0), _52.Load(_3864 * 4 + 0)));
uint _3876 = _3853 >> 2u;
uint _3891 = (_3853 + 16u) >> 2u;
uint _3906 = (_3853 + 32u) >> 2u;
uint _3921 = (_3853 + 48u) >> 2u;
float4 _3941 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3876 * 4 + 0), _52.Load((_3876 + 1u) * 4 + 0), _52.Load((_3876 + 2u) * 4 + 0), _52.Load((_3876 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3891 * 4 + 0), _52.Load((_3891 + 1u) * 4 + 0), _52.Load((_3891 + 2u) * 4 + 0), _52.Load((_3891 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3906 * 4 + 0), _52.Load((_3906 + 1u) * 4 + 0), _52.Load((_3906 + 2u) * 4 + 0), _52.Load((_3906 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3921 * 4 + 0), _52.Load((_3921 + 1u) * 4 + 0), _52.Load((_3921 + 2u) * 4 + 0), _52.Load((_3921 + 3u) * 4 + 0))))), float4((_428 - ((-_3633) * _3868.x)) + (_669 * (_3868.y * 5.0f)), 1.0f));
float3 _3945 = _3941.xyz / _3941.w.xxx;
uint _3947 = (_3853 + 80u) >> 2u;
float4 _3960 = asfloat(uint4(_52.Load(_3947 * 4 + 0), _52.Load((_3947 + 1u) * 4 + 0), _52.Load((_3947 + 2u) * 4 + 0), _52.Load((_3947 + 3u) * 4 + 0)));
float2 _3961 = _3945.xy;
float2 _3963 = _3960.xy;
float3 _3967 = _3945.xyz;
bool3 _3968 = bool3(_3967.x <= 0.0f.xxx.x, _3967.y <= 0.0f.xxx.y, _3967.z <= 0.0f.xxx.z);
bool3 _3969 = bool3(_3967.x >= 1.0f.xxx.x, _3967.y >= 1.0f.xxx.y, _3967.z >= 1.0f.xxx.z);
float _3972 = _3945.z;
float2 _3983 = ((_3961 * (_3960.zw - _3963)) + _3963).xy * _48_m10.zw;
float2 _3985 = floor(_3983 + 0.5f.xx);
float2 _3986 = _3983 - _3985;
float _3987 = _3986.x;
float _3988 = _3987 + 0.5f;
float _3989 = _3988 * _3988;
float _3992 = 1.0f - _3987;
float _3993 = min(_3987, 0.0f);
float _3996 = _3987 + 1.0f;
float _3997 = max(_3987, 0.0f);
float _4008 = _3986.y;
float _4009 = _4008 + 0.5f;
float _4010 = _4009 * _4009;
float _4013 = 1.0f - _4008;
float _4014 = min(_4008, 0.0f);
float _4017 = _4008 + 1.0f;
float _4018 = max(_4008, 0.0f);
float3 _4030 = float3(0.1599999964237213134765625f * _3992, 0.1599999964237213134765625f * ((_3996 - (_3997 * _3997)) + 1.0f), _3989 * 0.07999999821186065673828125f);
float3 _4031 = float3(0.1599999964237213134765625f * ((_3989 * 0.5f) - _3987), 0.1599999964237213134765625f * ((_3992 - (_3993 * _3993)) + 1.0f), 0.1599999964237213134765625f * _3996) + _4030;
float3 _4033 = float3(0.1599999964237213134765625f * _4013, 0.1599999964237213134765625f * ((_4017 - (_4018 * _4018)) + 1.0f), _4010 * 0.07999999821186065673828125f);
float3 _4034 = float3(0.1599999964237213134765625f * ((_4010 * 0.5f) - _4008), 0.1599999964237213134765625f * ((_4013 - (_4014 * _4014)) + 1.0f), 0.1599999964237213134765625f * _4017) + _4033;
float3 _4040 = ((_4030 / _4031) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
float3 _4042 = ((_4033 / _4034) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
float2 _4044 = _3985 * _48_m10.xy;
float _4045 = _4040.x;
float _4046 = _4042.x;
float _4049 = _4040.y;
float _4052 = _4040.z;
float _4055 = _4042.y;
float _4062 = _4042.z;
float _4069 = _4031.x;
float _4070 = _4034.x;
float _4072 = _4031.y;
float _4074 = _4031.z;
float _4076 = _4034.y;
float _4080 = _4034.z;
float _4138 = (((((((_4069 * _4070) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4045, _4046), _387).xy, _3972)) + ((_4072 * _4070) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4049, _4046), _387).xy, _3972))) + ((_4074 * _4070) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4052, _4046), _387).xy, _3972))) + ((_4069 * _4076) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4045, _4055), _387).xy, _3972))) + ((_4072 * _4076) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4049, _4055), _387).xy, _3972))) + ((_4074 * _4076) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4052, _4055), _387).xy, _3972))) + ((_4069 * _4080) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4045, _4062), _387).xy, _3972));
float4 _4161 = asfloat(uint4(_52.Load(_3855 * 4 + 0), _52.Load(_3858 * 4 + 0), _52.Load(_3861 * 4 + 0), _52.Load(_3864 * 4 + 0)));
float _4162 = _4161.w;
float2 _4164 = min(_3961, 1.0f.xx - _3961);
_4177 = (_3846 >= 0) ? lerp(1.0f, (any(bool3(_3968.x || _3969.x, _3968.y || _3969.y, _3968.z || _3969.z)) || ((asuint(_3972) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4138 + ((_4072 * _4080) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4049, _4062), _387).xy, _3972))) + ((_4074 * _4080) * _50.SampleCmpLevelZero(_26, float3(_4044 + float2(_4052, _4062), _387).xy, _3972))), _3645 ? min(_4162, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4161.z - _3941.w) * 0.25f, min(_4164.x, _4164.y)))) : _4162) : 1.0f;
}
else
{
_4177 = 1.0f;
}
_4178 = _4177;
break;
}
while(false);
_4898 = _2224 * _4178;
_4899 = 0.0f.xxx;
}
_4900 = _4898;
_4901 = _4899;
break;
}
while(false);
_2249 = _4900;
_2252 = _2251 + _4901;
}
_2221 = _2220 + _2251;
}
// RenoDX code start: preserve the existing glass controls.
/* Vanilla 0x222AF510:
float3 _4908 = (((((float3(_1211, _1216, _1221) * _744) * lerp(1.0f, _520, _39_m4)) * _18_m22.x) + ((((_1504 * _18_m23.z) * _18_m22.y) * ((_748 * _763.x) + (clamp(50.0f * _748.y, 0.0f, 1.0f) * _763.y).xxx)) * 1.0f)) + (((_644 * lerp(_618, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2195.xyz + (_2220 * _2223)).xyz;
*/
float3 _4908 = (((((float3(_1211, _1216, _1221) * (_744 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _520, _39_m4)) * _18_m22.x) + (((((_1504 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_748 * _763.x) + (clamp(50.0f * _748.y, 0.0f, 1.0f) * _763.y).xxx)) * 1.0f)) + (((_644 * lerp(_618, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2195.xyz + ((_2220 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2223)).xyz;
// RenoDX code end
float4 _4909 = float4(_4908.x, _4908.y, _4908.z, _388.w);
_4909.w = _544;
float _4926 = _428.y * _18_m46.w;
float _4931 = max(0.00999999977648258209228515625f, _4926 + _18_m47.w);
float3 _4945 = exp(_18_m45.xyz * ((-max(0.0f, (_466 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4931)) / _4931) * exp(_4926 + _18_m48.w))));
float _4948 = dot(_672, _18_m44.xyz);
float _4954 = _18_m45.w * _18_m45.w;
float _4958 = (1.0f + _4954) - ((2.0f * _18_m45.w) * _4948);
float3 _5288;
float _5289;
if (_18_m55.z > 0.0f)
{
uint3 _5116 = (uint3(int3(int(_803.x), int(_803.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
uint _5117 = _5116.y;
uint _5118 = _5116.z;
uint _5121 = _5116.x + (_5117 * _5118);
uint _5123 = _5117 + (_5118 * _5121);
uint _5125 = _5118 + (_5121 * _5123);
uint _5127 = _5121 + (_5123 * _5125);
float _5149 = dot(_672, -_16_m0[2].xyz);
float3 _5159 = _428 - _16_m11.xyz;
float _5161 = (_18_m55.w * ((_5149 > 5.9604644775390625e-08f) ? (1.0f / _5149) : 0.0f)) * (1.0f / _466);
float _5162 = _5159.y;
float _5163 = _5161 * _5162;
float _5165 = _16_m11.y + _5163;
float _5166 = _5162 - _5163;
float _5168 = (1.0f - _5161) * _466;
float _5182 = max(-127.0f, _18_m49.z * _5166);
float _5206 = max(-127.0f, _18_m52.x * _5166);
float _5217 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5165 - _18_m49.x)))) * ((abs(_5182) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5182)) / _5182) : (0.693147182464599609375f - (0.2402265071868896484375f * _5182)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5165 - _18_m52.z)))) * ((abs(_5206) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5206)) / _5206) : (0.693147182464599609375f - (0.2402265071868896484375f * _5206))));
float _5239 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
float _5242 = clamp((max(clamp(exp2(-(_5217 * _5168)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5239, 0.0f, 1.0f);
float4 _5282 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1240 + ((((float3(uint3(_5127, _5123 + (_5125 * _5127), _389) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_804 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_804 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
_5288 = _5282.xyz + (((_18_m51.xyz * (1.0f - _5242)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5217 * max(_5168 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5239))) * _5282.w);
_5289 = _5282.w * _5242;
}
else
{
float3 _4988 = _428 - _16_m11.xyz;
float _4990 = _4988.y;
float _5004 = max(-127.0f, _18_m49.z * _4990);
float _5028 = max(-127.0f, _18_m52.x * _4990);
float _5039 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5004) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5004)) / _5004) : (0.693147182464599609375f - (0.2402265071868896484375f * _5004)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5028) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5028)) / _5028) : (0.693147182464599609375f - (0.2402265071868896484375f * _5028))));
float _5061 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
float _5064 = clamp((max(clamp(exp2(-(_5039 * _466)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5061, 0.0f, 1.0f);
_5288 = (_18_m51.xyz * (1.0f - _5064)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5039 * max(_466 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5061));
_5289 = _5064;
}
// RenoDX code start: preserve the existing glass controls.
/* Vanilla 0x222AF510:
float3 _5299 = lerp(_693.xyz, ((_4909.xyz * (_4945 * _5289)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4948 * _4948)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4954) / max((12.56637096405029296875f * _4958) * sqrt(_4958), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4945)) * _5289) + _5288)).xyz, _544.xxx).xyz;
*/
float3 _5299 = lerp(_693.xyz, ((_4909.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4945 * _5289)) : (_4945 * _5289))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4948 * _4948)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4954) / max((12.56637096405029296875f * _4958) * sqrt(_4958), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4945)) * _5289 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5288 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz, _544.xxx).xyz;
// RenoDX code end
float3 _5309 = lerp(dot(_5299, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5299, _18_m78.w.xxx) * _18_m78.xyz;
float2 _5319 = min(lerp(((sqrt(sqrt(abs(_716 * 0.5f))) * float2(int2(sign(_716)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _703.xx), 1.0f.xx);
float4 _5320 = float4(_5319.x, _5319.y, _388.z, _388.w);
_5320.z = float(clamp(max(dot(_5309.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _544, _544) * 10.0f, 0.0f, 1.0f) > 0.5f);
_5320.w = lerp(0.0f, 0.699999988079071044921875f, _703);
// RenoDX code start: preserve the existing glass controls.
/* Vanilla 0x222AF510:
_13 = float4(_5309.x, _5309.y, _5309.z, _4909.w);
*/
float3 renodx_output_color = float3(_5309.x, _5309.y, _5309.z);
if (GLASS_TRANSPARENCY > 0.5f)
{
float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
if (renodx_luminance > 0.5f)
{
float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
}
}
_13 = float4(renodx_output_color, _4909.w);
// RenoDX code end
_14 = _5320;
// RenoDX code start: preserve the existing glass controls.
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

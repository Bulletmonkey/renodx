#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x7A188763, migrated from 1.4.4 shader 0xDEB1C940.
struct _19
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

static float _374 = (float)0;
static float4 _375 = (float4)0;
static uint _378 = (uint)0;

static const float4 _352[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _353[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _354[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _14_15 : register(b12)
{
    column_major float4x4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c4);
    column_major float4x4 _15_m2 : packoffset(c8);
    column_major float4x4 _15_m3 : packoffset(c12);
    column_major float4x4 _15_m4 : packoffset(c16);
    column_major float4x4 _15_m5 : packoffset(c20);
    column_major float4x4 _15_m6 : packoffset(c24);
    column_major float4x4 _15_m7 : packoffset(c28);
    column_major float4x4 _15_m8 : packoffset(c32);
    column_major float4x4 _15_m9 : packoffset(c36);
    column_major float4x4 _15_m10 : packoffset(c40);
    float4 _15_m11 : packoffset(c44);
    column_major float4x4 _15_m12 : packoffset(c45);
    column_major float4x4 _15_m13 : packoffset(c49);
    column_major float4x4 _15_m14 : packoffset(c53);
    column_major float4x4 _15_m15 : packoffset(c57);
    column_major float4x4 _15_m16 : packoffset(c61);
    column_major float4x4 _15_m17 : packoffset(c65);
    column_major float4x4 _15_m18 : packoffset(c69);
    column_major float4x4 _15_m19 : packoffset(c73);
    column_major float4x4 _15_m20 : packoffset(c77);
    float4 _15_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _16_17 : register(b16)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float4 _17_m2 : packoffset(c2);
    float4 _17_m3 : packoffset(c3);
    float4 _17_m4 : packoffset(c4);
    float4 _17_m5 : packoffset(c5);
    float4 _17_m6[6] : packoffset(c6);
    float4 _17_m7[6] : packoffset(c12);
    float4 _17_m8 : packoffset(c18);
    float4 _17_m9 : packoffset(c19);
    float4 _17_m10 : packoffset(c20);
    float4 _17_m11 : packoffset(c21);
    float4 _17_m12 : packoffset(c22);
    float4 _17_m13 : packoffset(c23);
    float4 _17_m14 : packoffset(c24);
    float4 _17_m15 : packoffset(c25);
    float _17_m16 : packoffset(c26);
    float _17_m17 : packoffset(c26.y);
    float _17_m18 : packoffset(c26.z);
    uint _17_m19 : packoffset(c26.w);
    float4 _17_m20 : packoffset(c27);
    int4 _17_m21 : packoffset(c28);
    float4 _17_m22 : packoffset(c29);
    float4 _17_m23 : packoffset(c30);
    float4 _17_m24 : packoffset(c31);
    float4 _17_m25 : packoffset(c32);
    float4 _17_m26 : packoffset(c33);
    float4 _17_m27 : packoffset(c34);
    float4 _17_m28 : packoffset(c35);
    float4 _17_m29 : packoffset(c36);
    float4 _17_m30 : packoffset(c37);
    float4 _17_m31 : packoffset(c38);
    float4 _17_m32[4] : packoffset(c39);
    float4 _17_m33[4] : packoffset(c43);
    float4 _17_m34[4] : packoffset(c47);
    float4 _17_m35[4] : packoffset(c51);
    float4 _17_m36 : packoffset(c55);
    float4 _17_m37 : packoffset(c56);
    float4 _17_m38[4] : packoffset(c57);
    float4 _17_m39[4] : packoffset(c61);
    float4 _17_m40[4] : packoffset(c65);
    float4 _17_m41 : packoffset(c69);
    float4 _17_m42 : packoffset(c70);
    float4 _17_m43 : packoffset(c71);
    float4 _17_m44 : packoffset(c72);
    float4 _17_m45 : packoffset(c73);
    float4 _17_m46 : packoffset(c74);
    float4 _17_m47 : packoffset(c75);
    float4 _17_m48 : packoffset(c76);
    float4 _17_m49 : packoffset(c77);
    float4 _17_m50 : packoffset(c78);
    float4 _17_m51 : packoffset(c79);
    float4 _17_m52 : packoffset(c80);
    float4 _17_m53 : packoffset(c81);
    float4 _17_m54 : packoffset(c82);
    float4 _17_m55 : packoffset(c83);
    float4 _17_m56 : packoffset(c84);
    float4 _17_m57 : packoffset(c85);
    float4 _17_m58 : packoffset(c86);
    float4 _17_m59 : packoffset(c87);
    float4 _17_m60 : packoffset(c88);
    float4 _17_m61 : packoffset(c89);
    float4 _17_m62 : packoffset(c90);
    float4 _17_m63 : packoffset(c91);
    float4 _17_m64 : packoffset(c92);
    float4 _17_m65 : packoffset(c93);
    float4 _17_m66 : packoffset(c94);
    float4 _17_m67 : packoffset(c95);
    float4 _17_m68 : packoffset(c96);
    float4 _17_m69 : packoffset(c97);
    float4 _17_m70 : packoffset(c98);
    float4 _17_m71 : packoffset(c99);
    float4 _17_m72 : packoffset(c100);
    float4 _17_m73 : packoffset(c101);
    float4 _17_m74 : packoffset(c102);
    float4 _17_m75 : packoffset(c103);
    float4 _17_m76 : packoffset(c104);
    float4 _17_m77 : packoffset(c105);
    float4 _17_m78 : packoffset(c106);
    float4 _17_m79 : packoffset(c107);
    float4 _17_m80 : packoffset(c108);
    float4 _17_m81 : packoffset(c109);
    float4 _17_m82 : packoffset(c110);
    float4 _17_m83 : packoffset(c111);
    float4 _17_m84 : packoffset(c112);
    float4 _17_m85 : packoffset(c113);
    float4 _17_m86 : packoffset(c114);
    float4 _17_m87 : packoffset(c115);
    float4 _17_m88 : packoffset(c116);
    float4 _17_m89 : packoffset(c117);
    float4 _17_m90 : packoffset(c118);
    float4 _17_m91 : packoffset(c119);
    float4 _17_m92 : packoffset(c120);
    float4 _17_m93 : packoffset(c121);
    float4 _17_m94 : packoffset(c122);
    float4 _17_m95 : packoffset(c123);
    float4 _17_m96 : packoffset(c124);
    float4 _17_m97 : packoffset(c125);
    float4 _17_m98 : packoffset(c126);
    float4 _17_m99[2] : packoffset(c127);
    float4 _17_m100[2] : packoffset(c129);
    float _17_m101 : packoffset(c131);
    float _17_m102 : packoffset(c131.y);
    float _17_m103 : packoffset(c131.z);
    float _17_m104 : packoffset(c131.w);
    float4 _17_m105 : packoffset(c132);
    float4 _17_m106 : packoffset(c133);
    float4 _17_m107 : packoffset(c134);
    float4 _17_m108 : packoffset(c135);
    float4 _17_m109 : packoffset(c136);
    float4 _17_m110 : packoffset(c137);
    float4 _17_m111 : packoffset(c138);
    float4 _17_m112 : packoffset(c139);
    float4 _17_m113 : packoffset(c140);
    float4 _17_m114 : packoffset(c141);
    float4 _17_m115 : packoffset(c142);
    float4 _17_m116 : packoffset(c143);
    float4 _17_m117 : packoffset(c144);
    float4 _17_m118 : packoffset(c145);
    float4 _17_m119 : packoffset(c146);
    float4 _17_m120 : packoffset(c147);
    float4 _17_m121 : packoffset(c148);
    float4 _17_m122 : packoffset(c149);
    float4 _17_m123 : packoffset(c150);
    float4 _17_m124 : packoffset(c151);
    float4 _17_m125 : packoffset(c152);
    float4 _17_m126 : packoffset(c153);
    float4 _17_m127 : packoffset(c154);
    float4 _17_m128 : packoffset(c155);
    float4 _17_m129 : packoffset(c156);
    float4 _17_m130 : packoffset(c157);
    float4 _17_m131 : packoffset(c158);
    float4 _17_m132 : packoffset(c159);
    float4 _17_m133 : packoffset(c160);
    float4 _17_m134 : packoffset(c161);
    column_major float4x4 _17_m135 : packoffset(c162);
    float4 _17_m136 : packoffset(c166);
    float4 _17_m137 : packoffset(c167);
    float4 _17_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _18_20 : register(b0)
{
    _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _29 : register(t50);
[[vk::binding(4, 1)]]
cbuffer _36_37 : register(b4)
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
    float _37_m21 : packoffset(c6);
    float _37_m22 : packoffset(c6.y);
    float _37_m23 : packoffset(c6.z);
    float _37_m24 : packoffset(c6.w);
    float _37_m25 : packoffset(c7);
    float _37_m26 : packoffset(c7.y);
    float _37_m27 : packoffset(c7.z);
    float _37_m28 : packoffset(c7.w);
    float _37_m29 : packoffset(c8);
    float _37_m30 : packoffset(c8.y);
    float _37_m31 : packoffset(c8.z);
    float _37_m32 : packoffset(c8.w);
    float _37_m33 : packoffset(c9);
    float _37_m34 : packoffset(c9.y);
    float _37_m35 : packoffset(c9.z);
    float _37_m36 : packoffset(c9.w);
    float _37_m37 : packoffset(c10);
    float _37_m38 : packoffset(c10.y);
    float _37_m39 : packoffset(c10.z);
    float _37_m40 : packoffset(c10.w);
    float _37_m41 : packoffset(c11);
    float _37_m42 : packoffset(c11.y);
    float _37_m43 : packoffset(c11.z);
    float _37_m44 : packoffset(c11.w);
    float _37_m45 : packoffset(c12);
    float _37_m46 : packoffset(c12.y);
    float _37_m47 : packoffset(c12.z);
    float _37_m48 : packoffset(c12.w);
    float _37_m49 : packoffset(c13);
    float _37_m50 : packoffset(c13.y);
    float _37_m51 : packoffset(c13.z);
    float _37_m52 : packoffset(c13.w);
    float _37_m53 : packoffset(c14);
    float _37_m54 : packoffset(c14.y);
    float _37_m55 : packoffset(c14.z);
    float _37_m56 : packoffset(c14.w);
    float4 _37_m57 : packoffset(c15);
    float4 _37_m58 : packoffset(c16);
    float4 _37_m59 : packoffset(c17);
    float4 _37_m60 : packoffset(c18);
    float4 _37_m61 : packoffset(c19);
    float _37_m62 : packoffset(c20);
    float _37_m63 : packoffset(c20.y);
    float _37_m64 : packoffset(c20.z);
    float _37_m65 : packoffset(c20.w);
    float4 _37_m66 : packoffset(c21);
    float4 _37_m67 : packoffset(c22);
    float4 _37_m68 : packoffset(c23);
    float4 _37_m69 : packoffset(c24);
    float4 _37_m70 : packoffset(c25);
    float _37_m71 : packoffset(c26);
    float _37_m72 : packoffset(c26.y);
    float _37_m73 : packoffset(c26.z);
    float _37_m74 : packoffset(c26.w);
    float _37_m75 : packoffset(c27);
    float _37_m76 : packoffset(c27.y);
    float _37_m77 : packoffset(c27.z);
    float _37_m78 : packoffset(c27.w);
    float4 _37_m79 : packoffset(c28);
    float4 _37_m80 : packoffset(c29);
    float4 _37_m81 : packoffset(c30);
    float4 _37_m82 : packoffset(c31);
    float _37_m83 : packoffset(c32);
    float _37_m84 : packoffset(c32.y);
    float _37_m85 : packoffset(c32.z);
    float _37_m86 : packoffset(c32.w);
    float _37_m87 : packoffset(c33);
    float _37_m88 : packoffset(c33.y);
    float _37_m89 : packoffset(c33.z);
    float _37_m90 : packoffset(c33.w);
    float _37_m91 : packoffset(c34);
    float _37_m92 : packoffset(c34.y);
    float _37_m93 : packoffset(c34.z);
    float _37_m94 : packoffset(c34.w);
    float _37_m95 : packoffset(c35);
    float _37_m96 : packoffset(c35.y);
    float _37_m97 : packoffset(c35.z);
    float _37_m98 : packoffset(c35.w);
    float _37_m99 : packoffset(c36);
    float _37_m100 : packoffset(c36.y);
    float _37_m101 : packoffset(c36.z);
    float _37_m102 : packoffset(c36.w);
    float _37_m103 : packoffset(c37);
    float _37_m104 : packoffset(c37.y);
    float _37_m105 : packoffset(c37.z);
    float _37_m106 : packoffset(c37.w);
    float _37_m107 : packoffset(c38);
    float _37_m108 : packoffset(c38.y);
    float _37_m109 : packoffset(c38.z);
    float _37_m110 : packoffset(c38.w);
    float _37_m111 : packoffset(c39);
    float _37_m112 : packoffset(c39.y);
    float _37_m113 : packoffset(c39.z);
    float _37_m114 : packoffset(c39.w);
    float _37_m115 : packoffset(c40);
    float _37_m116 : packoffset(c40.y);
    float _37_m117 : packoffset(c40.z);
    float _37_m118 : packoffset(c40.w);
    float _37_m119 : packoffset(c41);
    float4 _37_m120 : packoffset(c42);
    float4 _37_m121 : packoffset(c43);
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

[[vk::binding(3, 0)]] SamplerState _22 : register(s3);
[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _25 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _27 : register(t45);
[[vk::binding(8, 1)]] Texture2D<float4> _30 : register(t8);
[[vk::binding(5, 1)]] SamplerState _31 : register(s5);
[[vk::binding(10, 1)]] Texture2D<float4> _32 : register(t10);
[[vk::binding(7, 1)]] SamplerState _33 : register(s7);
[[vk::binding(9, 1)]] Texture2D<float4> _34 : register(t9);
[[vk::binding(6, 1)]] SamplerState _35 : register(s6);
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
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static uint _10 = (uint)0;
static float4 _12 = (float4)0;
static float4 _13 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _10 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _12 : SV_Target0;
    [[vk::location(1)]] float4 _13 : SV_Target1;
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
    float2 _404 = gl_FragCoord.xy * _17_m0.zw;
    uint2 _405 = uint2(gl_FragCoord.xy);
    float2 _407 = (_404 * 2.0f) - 1.0f.xx;
    float4 _410 = float4(_407, gl_FragCoord.z, 1.0f);
    _410.y = -_407.y;
    float4 _413 = mul(_15_m6, _410);
    float3 _417 = _413.xyz / _413.w.xxx;
    float4 _421 = float4(_417, 1.0f);
    float _424 = abs(mul(_15_m0, _421).z);
    float3 _425 = _6 * 1.0f;
    float3 _440;
    do
    {
        if (_17_m4.w == 0.0f)
        {
            _440 = _15_m11.xyz - _417;
            break;
        }
        else
        {
            _440 = _15_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _441 = dot(_440, _440);
    float _443 = rsqrt(max(_441, 9.9999999392252902907785028219223e-09f));
    float3 _444 = _440 * _443;
    float _445 = _441 * _443;
    float2 _468 = ((_4.zw * _37_m4) - (_5.xy * _37_m4)) + _5.xy;
    float4 _469 = _5 * _37_m4;
    float2 _505 = ((mul(((((_4.xy * _37_m59.x) + (_468 * _37_m59.y)) + (_37_m57.xy * _17_m75.w)) + (_37_m57.zw * _469.x)) - 0.5f.xx, float2x2(float2(_37_m58.xy), float2(_37_m58.zw))) + 0.5f.xx) * _37_m60.xy) + _37_m60.zw;
    float _513 = _469.y;
    float _586 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _37_m114);
    _505.y = _505.y * (1.0f + min(_586, 0.5f));
    float4 _611 = _34.SampleBias(_35, float4(((mul(((((_4.xy * _37_m82.x) + (_468 * _37_m82.y)) + (_37_m80.xy * _17_m75.w)) + (_37_m80.zw * _513)) - 0.5f.xx, float2x2(float2(_37_m81.xy), float2(_37_m81.zw))) + 0.5f.xx) * _37_m79.xy) + _37_m79.zw, 0.0f, 0.0f).xy, _17_m16);
    float _615 = (_611.x * (_37_m71 + 1.0f)) - _37_m71;
    float2 _618 = float2(_615 * _37_m73, _615 * _37_m74);
    float4 _621 = _611;
    _621.w = _611.w * _615;
    float2 _627 = (((_621.wy * 2.0f) - 1.0f.xx).xy * _37_m73).xy;
    bool2 _629 = (_37_m72 != 0.0f).xx;
    float2 _631 = float2(_629.x ? _627.x : _618.x, _629.y ? _627.y : _618.y) * 1.0f;
    float4 _641 = _30.SampleBias(_31, (_505 + _586.xx) + (_631 * _37_m53), _17_m16);
    float4 _646 = ((_37_m16 * lerp(_7, 1.0f.xxxx, _37_m5.xxxx)) * float4(_37_m6, _37_m6, _37_m6, _37_m7)) * lerp(_641, float4(1.0f, 1.0f, 1.0f, _641.x), _37_m54.xxxx);
    float _682 = _32.SampleBias(_33, (((mul(((((_4.xy * _37_m69.x) + (_468 * _37_m69.y)) + (_37_m67.xy * _17_m75.w)) + (_37_m67.zw * _513)) - 0.5f.xx, float2x2(float2(_37_m68.xy), float2(_37_m68.zw))) + 0.5f.xx) * _37_m66.xy) + _37_m66.zw) + (_631 * _37_m62), _17_m16).x - lerp(-1.0f, ((_37_m63 + (_5.z * _37_m4)) * 2.019999980926513671875f) - 1.0099999904632568359375f, clamp(lerp(1.0f, lerp(_7.x, _7.w, _37_m115), _37_m116) - _37_m117, 0.0f, 1.0f));
    float _684 = clamp(_682 * _37_m64, 0.0f, 1.0f);
    float _687 = clamp((_37_m65 - _682) * _37_m64, 0.0f, 1.0f);
    float2 _706 = ((float2(_405) * _17_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _709 = float4(_706, _27.SampleLevel(_22, _404, 0.0f).x, 1.0f);
    _709.y = -_706.y;
    float4 _712 = mul(_15_m6, _709);
    bool3 _746 = (gl_FrontFacing ? true : false).xxx;
    float3 _747 = -_425;
    float3 _748 = float3(_746.x ? _425.x : _747.x, _746.y ? _425.y : _747.y, _746.z ? _425.z : _747.z);
    float _778 = (((((_646.w * lerp(_684, _684, _37_m70.w)) * ((_37_m83 != 0.0f) ? (clamp((_424 - _37_m84) / (_37_m85 - _37_m84), 0.0f, 1.0f) * clamp((_424 - _37_m86) / (_37_m87 - _37_m86), 0.0f, 1.0f)) : 1.0f)) * clamp(((abs(mul(_15_m0, float4(_712.xyz / _712.w.xxx, 1.0f)).z) - _424) + _37_m92) / _37_m91, 0.0f, 1.0f)) * lerp(1.0f, _7.w, _37_m112)) * lerp(1.0f, pow(abs(dot(_6, _444)), _37_m105), _37_m107)) * (1.0f - _20_m0[_10]._m1.y);
    float _790 = clamp(_778, 0.0f, 1.0f);
    float3 _791 = clamp((lerp(_646.xyz, (_37_m70.xyz * _687) * _37_m6, _687.xxx).xyz * ((1.0f - _37_m12) + (_17_m20.y * _37_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _794 = _791 * _37_m108;
    float _807 = (_37_m97 * lerp(1.0f, _7.x, _37_m112)) * _794.x;
    float2 _858;
    if (clamp((_37_m3 + 1.0f) - _37_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _844 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _844.y = -_844.y;
        _858 = ((sqrt(sqrt(abs(_844 * 0.5f))) * float2(int2(sign(_844)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _858 = 0.0f.xx;
    }
    float3 _860 = (0.07999999821186065673828125f * _37_m111).xxx;
    uint2 _891;
    float _892;
    if (_17_m24.y == 1.0f)
    {
        float4 _868 = mul(_17_m135, _421);
        float4 _871 = _868;
        _871.y = -_868.y;
        float4 _874 = _871 * (1.0f / _868.w);
        _891 = uint2(clamp(((_874.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
        _892 = 1.0f / ((_17_m2.z * _874.z) + _17_m2.w);
    }
    else
    {
        _891 = _405;
        _892 = _424;
    }
    float3 _894 = _417 + (_748 * 0.25f);
    float3 _904 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _913 = _894 - (_17_m105.xyz + (_904 * (-_17_m107.w)));
    float _927 = max(clamp((max(abs(_913.x), abs(_913.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_913.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1229;
    float4 _1230;
    float4 _1231;
    float _1232;
    float _1233;
    if ((_17_m105.w != 0.0f) && (_927 < 1.0f))
    {
        float3 _940 = _894 - (_17_m105.xyz + (_904 * (-_17_m107.y)));
        float _954 = max(clamp((max(abs(_940.x), abs(_940.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_940.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1030;
        float4 _1031;
        float4 _1032;
        float4 _1033;
        if (_954 < 1.0f)
        {
            float3 _963 = ((_894 * 2.0f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _965 = _963 - floor(_963);
            float4 _969 = _40.SampleLevel(_24, _965, 0.0f);
            float _970 = 1.0f - _954;
            float _974 = _17_m106.y * 0.5f;
            float _979 = _965.x;
            float _980 = clamp(_965.y, _974, 1.0f - _974) * 0.3333333432674407958984375f;
            float _981 = _965.z;
            float4 _984 = _41.SampleLevel(_23, float3(_979, _980, _981), 0.0f);
            float _1000 = _969.x;
            float _1010 = _969.y;
            float _1020 = _969.z;
            _1030 = _927 + (_984.w * _970);
            _1031 = float4(((_41.SampleLevel(_23, float3(_979, _980 + 0.666666686534881591796875f, _981), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1020, _1020) * _970;
            _1032 = float4(((_41.SampleLevel(_23, float3(_979, _980 + 0.3333333432674407958984375f, _981), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1010, _1010) * _970;
            _1033 = float4(((_984.xyz * 4.0f) - 2.0f.xxx) * _1000, _1000) * _970;
        }
        else
        {
            _1030 = _927;
            _1031 = 0.0f.xxxx;
            _1032 = 0.0f.xxxx;
            _1033 = 0.0f.xxxx;
        }
        float3 _1039 = _894 - (_17_m105.xyz + (_904 * (-_17_m107.z)));
        float _1053 = max(clamp((max(abs(_1039.x), abs(_1039.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1039.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1133;
        float4 _1134;
        float4 _1135;
        float4 _1136;
        if (_1053 < 1.0f)
        {
            float3 _1062 = ((_894 * 0.5f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1064 = _1062 - floor(_1062);
            float4 _1068 = _42.SampleLevel(_24, _1064, 0.0f);
            float _1070 = _954 * (1.0f - _1053);
            float _1074 = _17_m106.y * 0.5f;
            float _1079 = _1064.x;
            float _1080 = clamp(_1064.y, _1074, 1.0f - _1074) * 0.3333333432674407958984375f;
            float _1081 = _1064.z;
            float4 _1084 = _43.SampleLevel(_23, float3(_1079, _1080, _1081), 0.0f);
            float _1100 = _1068.x;
            float _1111 = _1068.y;
            float _1122 = _1068.z;
            _1133 = _1030 + (_1084.w * _1070);
            _1134 = _1031 + (float4(((_43.SampleLevel(_23, float3(_1079, _1080 + 0.666666686534881591796875f, _1081), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1122, _1122) * _1070);
            _1135 = _1032 + (float4(((_43.SampleLevel(_23, float3(_1079, _1080 + 0.3333333432674407958984375f, _1081), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1111, _1111) * _1070);
            _1136 = _1033 + (float4(((_1084.xyz * 4.0f) - 2.0f.xxx) * _1100, _1100) * _1070);
        }
        else
        {
            _1133 = _1030;
            _1134 = _1031;
            _1135 = _1032;
            _1136 = _1033;
        }
        float4 _1219;
        float4 _1220;
        float4 _1221;
        float _1222;
        if (_1053 > 0.0f)
        {
            float3 _1145 = ((_894 * 0.125f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1148 = _17_m106.xyz * 0.5f;
            float3 _1150 = clamp(_1145 - floor(_1145), _1148, 1.0f.xxx - _1148);
            float4 _1154 = _44.SampleLevel(_24, _1150, 0.0f);
            float _1156 = _1053 * (1.0f - _927);
            float _1160 = _17_m106.y * 0.5f;
            float _1165 = _1150.x;
            float _1166 = clamp(_1150.y, _1160, 1.0f - _1160) * 0.3333333432674407958984375f;
            float _1167 = _1150.z;
            float4 _1170 = _45.SampleLevel(_23, float3(_1165, _1166, _1167), 0.0f);
            float _1186 = _1154.x;
            float _1197 = _1154.y;
            float _1208 = _1154.z;
            _1219 = _1134 + (float4(((_45.SampleLevel(_23, float3(_1165, _1166 + 0.666666686534881591796875f, _1167), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1208, _1208) * _1156);
            _1220 = _1135 + (float4(((_45.SampleLevel(_23, float3(_1165, _1166 + 0.3333333432674407958984375f, _1167), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1197, _1197) * _1156);
            _1221 = _1136 + (float4(((_1170.xyz * 4.0f) - 2.0f.xxx) * _1186, _1186) * _1156);
            _1222 = _1133 + (_1170.w * _1156);
        }
        else
        {
            _1219 = _1134;
            _1220 = _1135;
            _1221 = _1136;
            _1222 = _1133;
        }
        float _1225 = clamp((_1222 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1229 = _1219;
        _1230 = _1220;
        _1231 = _1221;
        _1232 = _1225 - _927;
        _1233 = (_1225 + _927) * 0.5f;
    }
    else
    {
        _1229 = 0.0f.xxxx;
        _1230 = 0.0f.xxxx;
        _1231 = 0.0f.xxxx;
        _1232 = 0.0f;
        _1233 = 1.0f;
    }
    float4 _1253 = _1231 + float4(_17_m108.x * _1233, (_17_m108.y * _1233) + ((_17_m108.w * _1232) * 0.5f), _17_m108.z * _1233, (_17_m108.w * _1233) + ((_17_m108.y * _1232) * 0.375f));
    float4 _1273 = _1230 + float4(_17_m109.x * _1233, (_17_m109.y * _1233) + ((_17_m109.w * _1232) * 0.5f), _17_m109.z * _1233, (_17_m109.w * _1233) + ((_17_m109.y * _1232) * 0.375f));
    float4 _1293 = _1229 + float4(_17_m110.x * _1233, (_17_m110.y * _1233) + ((_17_m110.w * _1232) * 0.5f), _17_m110.z * _1233, (_17_m110.w * _1233) + ((_17_m110.y * _1232) * 0.375f));
    float3 _1321 = lerp(1.0f.xxx, clamp(abs((frac(float3(_37_m95, _37_m96, _807).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _37_m96.xxx) * _807;
    float3 _1328 = ((float3(max(0.0f, dot(_1253.xyz, _748) + _1253.w), max(0.0f, dot(_1273.xyz, _748) + _1273.w), max(0.0f, dot(_1293.xyz, _748) + _1293.w)) * (_794 + (_1321 * _37_m98))) * 1.0f) * _17_m22.x;
    float3 _1337 = (((_1328.x + _1328.y) + _1328.z) * 0.3333333432674407958984375f).xxx;
    float3 _1342 = (_1337 + ((_1328 - _1337) * _37_m106)) + ((-0.0f).xxx * _37_m106);
    float3 _1348 = _17_m76.w.xxx;
    float _1356 = 1.0f - _37_m11;
    float3 _1359 = _417 + (_748 * 0.5f);
    float2 _1809;
    do
    {
        if (_51_m7.w >= 0.9900000095367431640625f)
        {
            _1809 = float2(_51_m7.z, 1.0f);
            break;
        }
        int _1372 = int(_51_m7.x);
        bool3 _1374 = (_1372 == 2).xxx;
        float3 _1382 = _1359 - float3(_1374.x ? _51_m1[0].xyz.x : _15_m11.xyz.x, _1374.y ? _51_m1[0].xyz.y : _15_m11.xyz.y, _1374.z ? _51_m1[0].xyz.z : _15_m11.xyz.z);
        float _1393 = max(clamp((_51_m6.w - dot(_1382, _1382)) * _51_m6.z, 0.0f, 1.0f), _51_m8.x);
        float _1550;
        bool _1551;
        if (_1393 > 0.0f)
        {
            float _1548;
            bool _1549;
            if (_1372 > 0)
            {
                float3 _1400 = _1359 - _51_m1[0].xyz;
                float3 _1404 = _1359 - _51_m1[1].xyz;
                float3 _1408 = _1359 - _51_m1[2].xyz;
                float3 _1412 = _1359 - _51_m1[3].xyz;
                float4 _1417 = float4(dot(_1400, _1400), dot(_1404, _1404), dot(_1408, _1408), dot(_1412, _1412));
                float4 _1426 = float4(_51_m1[0].w, _51_m1[1].w, _51_m1[2].w, _51_m1[3].w);
                float4 _1428 = float4(bool4(_1417.x < _1426.x, _1417.y < _1426.y, _1417.z < _1426.z, _1417.w < _1426.w));
                float3 _1432 = clamp(_1428.yzw - _1428.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1436 = clamp(4.0f - dot(float4(_1428.x, _1432.x, _1432.y, _1432.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1438 = clamp(_1436 + 1.0f, 0.0f, 3.0f);
                uint _1439 = uint(_1436);
                uint _1447 = uint(_1438);
                float _1453 = dot(_1417, _352[_1447]) / _51_m1[_1447].w;
                float _1471;
                if (((_1438 > _1436) && (_1453 >= 0.0f)) && (_1453 <= 1.0f))
                {
                    _1471 = _1436 + step(frac(52.98291778564453125f * frac(dot(float2(_891) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1417, _352[_1439]) / _51_m1[_1439].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1471 = _1436;
                }
                float _1472 = clamp(_1471, 0.0f, 4.0f);
                float4 _1480 = mul(_51_m0[uint(_1472)], float4(_1359, 1.0f));
                float _1483 = _1480.z;
                float4 _1484 = float4(_1480.xy, _1483, _1472);
                float3 _1485 = _1484.xyz;
                bool3 _1486 = bool3(_1485.x <= 0.0f.xxx.x, _1485.y <= 0.0f.xxx.y, _1485.z <= 0.0f.xxx.z);
                bool3 _1487 = bool3(_1485.x >= 1.0f.xxx.x, _1485.y >= 1.0f.xxx.y, _1485.z >= 1.0f.xxx.z);
                bool _1493 = any(bool3(_1486.x || _1487.x, _1486.y || _1487.y, _1486.z || _1487.z)) || ((asuint(_1483) & 2147483647u) > 2139095040u);
                int _1494 = int(_1472);
                float2 _1509 = float4(_51_m3[_1494].xy + (_1484.xy * _51_m3[_1494].zw), _1483, _1472).xy;
                _1548 = _1493 ? 1.0f : (0.25f * (((_52.SampleCmpLevelZero(_25, float3(_1509 + (_51_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _374).xy, _1483) + _52.SampleCmpLevelZero(_25, float3(_1509 + (_51_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _374).xy, _1483)) + _52.SampleCmpLevelZero(_25, float3(_1509 + (_51_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _374).xy, _1483)) + _52.SampleCmpLevelZero(_25, float3(_1509 + (_51_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _374).xy, _1483)));
                _1549 = _1493;
            }
            else
            {
                _1548 = 1.0f;
                _1549 = false;
            }
            _1550 = _1548;
            _1551 = _1549;
        }
        else
        {
            _1550 = 1.0f;
            _1551 = false;
        }
        float _1751;
        float _1752;
        if ((_1393 < 1.0f) || (_51_m8.x > 0.5f))
        {
            float _1562 = 1.0f - clamp(dot(_748, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1579 = float4((_1359 - (_49_m0.xyz * (_1562 * _51_m24.x))) + (_748 * (_1562 * _51_m24.y)), 1.0f);
            float4 _1580 = mul(_51_m23, _1579);
            float2 _1581 = _1580.xy;
            float _1749;
            if (all(bool2(_1581.x > 0.0f.xx.x, _1581.y > 0.0f.xx.y)) && all(bool2(_1581.x < 1.0f.xx.x, _1581.y < 1.0f.xx.y)))
            {
                uint _1600 = clamp(uint((floor(_1580.y * _51_m25.z) + _1580.x) * _51_m25.y), 0u, 127u);
                uint _1604 = asuint(_51_m27[_1600].x);
                float2 _1605 = spvUnpackHalf2x16(_1604);
                float _1606 = _1605.x;
                float _1748;
                if (_1606 >= 0.0f)
                {
                    float4x4 _1615 = _51_m22;
                    _1615[0].w = _51_m27[_1600].y;
                    _1615[1].w = _51_m27[_1600].z;
                    _1615[2].w = _51_m27[_1600].w;
                    float4 _1622 = mul(_1615, _1579);
                    float3 _1623 = _1622.xyz;
                    float _1747;
                    if (all(bool3(_1623.x > 0.0f.xxx.x, _1623.y > 0.0f.xxx.y, _1623.z > 0.0f.xxx.z)) && all(bool3(_1623.x < 1.0f.xxx.x, _1623.y < 1.0f.xxx.y, _1623.z < 1.0f.xxx.z)))
                    {
                        float2 _1635 = (_1622.xy * _51_m24.zw) + float2(_1606, spvUnpackHalf2x16(_1604 >> 16u).x);
                        float _1640 = _1622.z;
                        float2 _1646 = float4(_1635, _1640, 1.0f).xy * _51_m26.zw;
                        float2 _1648 = floor(_1646 + 0.5f.xx);
                        float2 _1649 = _1646 - _1648;
                        float _1650 = _1649.x;
                        float _1651 = _1650 + 0.5f;
                        float _1653 = (_1651 * _1651) * 0.5f;
                        float _1656 = min(_1650, 0.0f);
                        float _1660 = max(_1650, 0.0f);
                        float4 _1664 = float4(_1653 - _1650, (1.0f - _1650) - (_1656 * _1656), (_1650 + 1.0f) - (_1660 * _1660), _1653) * 0.44444000720977783203125f;
                        float _1665 = _1649.y;
                        float _1666 = _1665 + 0.5f;
                        float _1668 = (_1666 * _1666) * 0.5f;
                        float _1671 = min(_1665, 0.0f);
                        float _1675 = max(_1665, 0.0f);
                        float4 _1679 = float4(_1668 - _1665, (1.0f - _1665) - (_1671 * _1671), (_1665 + 1.0f) - (_1675 * _1675), _1668) * 0.44444000720977783203125f;
                        float2 _1681 = _1664.yw;
                        float2 _1682 = _1664.xz + _1681;
                        float2 _1684 = _1679.yw;
                        float2 _1685 = _1679.xz + _1684;
                        float2 _1691 = ((_1681 / _1682) + float2(-1.5f, 0.5f)) * _51_m26.xx;
                        float2 _1693 = ((_1684 / _1685) + float2(-1.5f, 0.5f)) * _51_m26.yy;
                        float2 _1695 = _1648 * _51_m26.xy;
                        float _1696 = _1691.x;
                        float _1697 = _1693.x;
                        float2 _1699 = _1695 + float2(_1696, _1697);
                        float _1700 = _1691.y;
                        float2 _1702 = _1695 + float2(_1700, _1697);
                        float _1703 = _1693.y;
                        float2 _1705 = _1695 + float2(_1696, _1703);
                        float2 _1707 = _1695 + float2(_1700, _1703);
                        float _1708 = _1682.x;
                        float _1709 = _1685.x;
                        float _1711 = _1682.y;
                        float _1713 = _1685.y;
                        _1747 = ((((_1708 * _1709) * _55.SampleCmpLevelZero(_25, float3(_1699, _374).xy, _1640)) + ((_1711 * _1709) * _55.SampleCmpLevelZero(_25, float3(_1702, _374).xy, _1640))) + ((_1708 * _1713) * _55.SampleCmpLevelZero(_25, float3(_1705, _374).xy, _1640))) + ((_1711 * _1713) * _55.SampleCmpLevelZero(_25, float3(_1707, _374).xy, _1640));
                    }
                    else
                    {
                        _1747 = 1.0f;
                    }
                    _1748 = _1747;
                }
                else
                {
                    _1748 = 1.0f;
                }
                _1749 = _1748;
            }
            else
            {
                _1749 = 1.0f;
            }
            _1751 = _1551 ? _1749 : _1550;
            _1752 = _1749;
        }
        else
        {
            _1751 = _1550;
            _1752 = 1.0f;
        }
        float _1755 = lerp(lerp(_1752, _1751, _1393), min(_1752, _1751), _51_m8.x);
        float _1804;
        if (_1755 > 0.001000000047497451305389404296875f)
        {
            float3 _1762 = _1359 - _17_m65.xyz;
            float2 _1772 = (_1762 + (_17_m68.xyz * _1762.y)).xz * _17_m66.z;
            float2 _1779 = _17_m67.xy * _17_m75.w;
            _1804 = _1755 * lerp(1.0f, lerp(_54.SampleLevel(_24, _1772 + _1779, 0.0f), _54.SampleLevel(_24, (_1772 * _17_m67.w) + _1779, 0.0f), smoothstep(_17_m66.x, _17_m66.y, length(_1762.xz)).xxxx).x, _17_m67.z);
        }
        else
        {
            _1804 = _1755;
        }
        _1809 = float2(lerp(_1804, _51_m7.z, _51_m7.w), _1804);
        break;
    } while(false);
    float _1814 = lerp(1.0f, min(1.0f, _1809.x), _51_m6.x);
    float4 _1979;
    if (_1814 > 0.001000000047497451305389404296875f)
    {
        float3 _1825 = reflect(-_444, _748);
        float3 _1826 = -_49_m0.xyz;
        float _1831 = dot(_1826, _1825);
        float3 _1833 = _1825 - (_1826 * _1831);
        bool3 _1835 = (_1831 < _49_m4.z).xxx;
        float3 _1843 = normalize((_1826 * _49_m4.z) + ((_1833 * rsqrt(max(6.103515625e-05f, dot(_1833, _1833)))) * _49_m4.y));
        float3 _1844 = float3(_1835.x ? _1843.x : _1825.x, _1835.y ? _1843.y : _1825.y, _1835.z ? _1843.z : _1825.z);
        float3 _1848 = _1844 + _444;
        float3 _1852 = _1848 * rsqrt(max(6.103515625e-05f, dot(_1848, _1848)));
        float _1854 = clamp(dot(_1844, _748), 0.0f, 1.0f);
        float _1856 = clamp(dot(_748, _1852), 0.0f, 1.0f);
        float _1861 = clamp(dot(_748, _444), 0.0f, 1.0f);
        float _1862 = _37_m110 * _37_m110;
        float _1863 = _1862 * _1862;
        float _1884 = (((_1856 * _1863) - _1856) * _1856) + 1.0f;
        float _1887 = 1.0f - clamp(dot(_444, _1852), 0.0f, 1.0f);
        float _1888 = _1887 * _1887;
        float _1890 = (_1887 * _1888) * _1888;
        float _1914 = 1.0f - _37_m110;
        float _1921 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1914 * (1.04997003078460693359375f + (_1914 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1914))))));
        float _1922 = 1.0f - _1921;
        float3 _1925 = _860 + ((1.0f.xxx - _860) * 0.0476190485060214996337890625f);
        float _1936 = clamp(1.0f - _807, 0.0f, 1.0f);
        float _1944 = clamp((dot(_748, _1844) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1961 = clamp(clamp((min(((_860 * (1.0f - _1890)) + _1890.xxx) * ((_1863 / (_1884 * _1884)) * (0.5f / (((_1854 * sqrt(((((-_1861) * _1863) + _1861) * _1861) + _1863)) + (_1861 * sqrt(((((-_1854) * _1863) + _1854) * _1854) + _1863))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1925 * (((_58.SampleLevel(_23, (float2(_1861, _37_m110) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1854, _37_m110) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1921) / _1922)) * _1925) / (1.0f.xxx - (_1925 * _1922)))) * _49_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_790, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _37_m104;
        float3 _1966 = (((_1961 * _1854) + (_1321 * lerp(lerp(1.0f, (_1944 * sqrt(_1944)) * 1.66666662693023681640625f, _1936) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_444, _1844), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1936)))) + ((_794 * 1.0f) * _1854)) * _49_m1.xyz;
        float3 _1977 = lerp(_1966, _1966 * _56.SampleBias(_23, float2(_1814, 0.5f), _17_m16).xyz, (1.0f - _1814).xxx) * 1.0f;
        _1979 = float4(_1977.x, _1977.y, _1977.z, 0.0f.xxxx.w);
    }
    else
    {
        _1979 = 0.0f.xxxx;
    }
    float2 _1980 = float2(_891);
    float2 _1982 = floor(_1980 * 0.03125f);
    int _1990 = int((_1982.x + (_1982.y * _47_m5)) * 8.0f);
    float _1997 = floor(_892 - (_17_m3.y * _47_m11));
    float _2001 = clamp(_1997, 0.0f, _47_m7 - 1.0f);
    int _2003 = int(_2001 * 8.0f);
    float3 _2005;
    float _2008;
    _2005 = 0.0f.xxx;
    _2008 = 1.0f;
    float3 _2006;
    float _2009;
    [loop]
    for (int _2010 = 0; _2010 <= 7; _2005 = _2006, _2008 = _2009, _2010++)
    {
        uint _2028 = (_1997 <= _2001) ? (_29.Load(uint(_1990 + _2010) * 4 + 0) & _29.Load(uint((_17_m21.y + _2003) + _2010) * 4 + 0)) : 0u;
        uint _2029 = uint(_2010);
        float3 _2033;
        _2009 = _2008;
        _2033 = 0.0f.xxx;
        uint _2036;
        float _2031;
        float3 _2034;
        [loop]
        for (uint _2035 = _2028; _2035 != 0u; _2009 = _2031, _2033 = _2034, _2035 = _2036)
        {
            uint _2040 = firstbitlow(_2035);
            _2036 = _2035 ^ (1u << (_2040 & 31u));
            int _2046 = int((32u * _2029) + _2040) * 8;
            int _2049 = _2046 + 1;
            int _2052 = _2046 + 2;
            int _2055 = _2046 + 3;
            int _2058 = _2046 + 5;
            int _2061 = _2046 + 6;
            int _2064 = _2046 + 7;
            uint _2068 = uint(_49_m6[_2058].w);
            float _2143;
            if ((_2068 & 1u) == 1u)
            {
                uint _2074 = asuint(_49_m6[_2058].x);
                uint _2081 = asuint(_49_m6[_2058].y);
                uint _2088 = asuint(_49_m6[_2058].z);
                uint _2095 = asuint(_49_m6[_2061].x);
                uint _2102 = asuint(_49_m6[_2061].y);
                uint _2109 = asuint(_49_m6[_2061].z);
                float3 _2128 = abs(mul(float4(_417 - _49_m6[_2049].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2074).x, spvUnpackHalf2x16(_2088).x, spvUnpackHalf2x16(_2102).x, 0.0f), float4(spvUnpackHalf2x16(_2074 >> 16u).x, spvUnpackHalf2x16(_2088 >> 16u).x, spvUnpackHalf2x16(_2102 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2081).x, spvUnpackHalf2x16(_2095).x, spvUnpackHalf2x16(_2109).x, 0.0f), float4(spvUnpackHalf2x16(_2081 >> 16u).x, spvUnpackHalf2x16(_2095 >> 16u).x, spvUnpackHalf2x16(_2109 >> 16u).x, 0.0f))).xyz);
                float _2135 = _49_m6[_2064].x * 0.5f;
                float _2141 = 1.0f - clamp((max(max(_2128.x, _2128.y), _2128.z) - (_2135 + 0.5f)) / (0.5f - _2135), 0.0f, 1.0f);
                _2143 = _2141 * _2141;
            }
            else
            {
                _2143 = 1.0f;
            }
            bool _2147 = _49_m6[_2055].z > 0.5f;
            if ((false || (_2143 < 0.001000000047497451305389404296875f)) || _2147)
            {
                _2031 = _2009;
                _2034 = _2033;
                continue;
            }
            float _3281;
            float3 _3282;
            if (_49_m6[_2046].w < 1.5f)
            {
                float3 _2635 = float3(0.100000001490116119384765625f, _37_m110, 1.0f);
                float _2644 = (0.5f + (0.5f * _49_m6[_2052].y)) - abs(_49_m6[_2052].x);
                float _2645 = _49_m6[_2052].y - _2644;
                float _2652 = abs(max((1.0f - abs(_2644)) - abs(_2645), 0.00048828125f));
                float3 _2656 = normalize(float3(_2644, _2645, (_49_m6[_2052].x >= 0.0f) ? _2652 : (-_2652)));
                float3 _2657 = _49_m6[_2049].xyz - _417;
                float _2658 = dot(_2657, _2657);
                float _2659 = rsqrt(_2658);
                float3 _2660 = _2657 * _2659;
                float _2664 = clamp(_49_m6[_2064].y * _2659, 0.0f, 1.0f);
                int _2669 = int(_49_m6[_2064].w);
                float3 _2670 = _2656 * _49_m6[_2052].z;
                float3 _2671 = _2670 * 0.5f;
                float3 _2672 = _2657 - _2671;
                float3 _2673 = _2657 + _2671;
                bool _2676 = (uint(_49_m6[_2046].w) & 1u) == 0u;
                bool _2679 = _2676 || ((_2068 & 2u) != 0u);
                bool _2682 = (!_2676) && (_49_m6[_2052].z > 0.0f);
                float _2701;
                float _2702;
                if (_2682)
                {
                    float _2686 = length(_2672);
                    float _2687 = length(_2673);
                    _2701 = clamp(0.5f * ((dot(_748, _2672) / _2686) + (dot(_748, _2673) / _2687)), 0.0f, 1.0f);
                    _2702 = 1.0f / ((((_2686 * _2687) + dot(_2672, _2673)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2701 = clamp(dot(_748, _2660), 0.0f, 1.0f);
                    _2702 = 1.0f;
                }
                float _2724;
                if (_49_m6[_2061].w < 0.0f)
                {
                    float _2718 = _2658 * (_49_m6[_2049].w * _49_m6[_2049].w);
                    float _2721 = clamp(1.0f - (_2718 * _2718), 0.0f, 1.0f);
                    _2724 = lerp(1.0f / (_2658 + 1.0f), _2702, float(_2682)) * (_2721 * _2721);
                }
                else
                {
                    float3 _2707 = _2657 * _49_m6[_2049].w;
                    _2724 = _2702 * pow(1.0f - clamp(dot(_2707, _2707), 0.0f, 1.0f), _49_m6[_2061].w);
                }
                float _2730 = clamp((dot(_2660, -_2656) - _49_m6[_2052].z) * _49_m6[_2052].w, 0.0f, 1.0f);
                float _2734 = _2724 * lerp(1.0f, _2730 * _2730, float(_2676));
                float _2834;
                if ((!_2682) && (_2669 >= 0))
                {
                    uint _2740 = uint(_2669);
                    float2 _2827;
                    [branch]
                    if (_2676)
                    {
                        float4 _2817 = mul(_61_m1[_2740], _421);
                        _2827 = _61_m0[_2740].xy + (clamp(_2817.xy / _2817.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2740].zw);
                    }
                    else
                    {
                        float3 _2754 = mul(float4(-_2657, 0.0f), _61_m1[_2740]).xyz;
                        float3 _382 = _2754;
                        float3 _381 = _2754;
                        float3 _380 = abs(_2754);
                        uint _2763 = uint(int(_380.y > _380.x));
                        uint _2769 = (_380.z > _380[_2763]) ? 2u : _2763;
                        uint _2775 = (_2769 * 2u) + uint(_381[_2769] < 0.0f);
                        float _2779 = abs(_382[_2775 / 2u]);
                        float _2799 = 0.5f - (0.000244140625f / _61_m0[_2740].w);
                        _2827 = _61_m0[_2740].xy + (clamp(float2((float(_2775) + ((((_382[uint(_353[_2775].x)] * _354[_2775].x) / _2779) * _2799) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_382[uint(_353[_2775].y)] * _354[_2775].y) / _2779) * _2799)), 0.0f.xx, 1.0f.xx) * _61_m0[_2740].zw);
                    }
                    _2834 = _2734 * _59.SampleLevel(_23, _2827, 0.0f).x;
                }
                else
                {
                    _2834 = _2734;
                }
                bool _2835 = _2834 > 0.0f;
                float _3123;
                if (_2835)
                {
                    int _2887;
                    if (_2679)
                    {
                        _2887 = int(_49_m6[_2055].x);
                    }
                    else
                    {
                        uint _2842 = asuint(_49_m6[_2052].w);
                        uint _2844 = asuint(_49_m6[_2055].x);
                        float3 _2845 = _417 - _49_m6[_2049].xyz;
                        float3 _2846 = abs(_2845);
                        float _2847 = _2846.x;
                        float _2848 = _2846.y;
                        float _2850 = _2846.z;
                        int _2882;
                        if ((_2847 > _2848) && (_2847 > _2850))
                        {
                            _2882 = int((_2845.x > 0.0f) ? (_2842 >> 24u) : ((_2842 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2874;
                            if (_2848 > _2850)
                            {
                                _2874 = int((_2845.y > 0.0f) ? ((_2842 >> 8u) & 255u) : (_2842 & 255u));
                            }
                            else
                            {
                                _2874 = int((_2845.z > 0.0f) ? ((_2844 >> 8u) & 255u) : (_2844 & 255u));
                            }
                            _2882 = _2874;
                        }
                        _2887 = (_2882 < 80) ? _2882 : (-1);
                    }
                    float4 _2904 = mul(_51_m10[_2887], float4((_417 - ((-_2660) * _51_m11[_2887].x)) + (_748 * (_51_m11[_2887].y * 5.0f)), 1.0f));
                    float _2905 = _2904.w;
                    float3 _2908 = _2904.xyz / _2905.xxx;
                    float2 _2909 = _2908.xy;
                    float3 _2917 = _2908.xyz;
                    bool3 _2918 = bool3(_2917.x <= 0.0f.xxx.x, _2917.y <= 0.0f.xxx.y, _2917.z <= 0.0f.xxx.z);
                    bool3 _2919 = bool3(_2917.x >= 1.0f.xxx.x, _2917.y >= 1.0f.xxx.y, _2917.z >= 1.0f.xxx.z);
                    float _2922 = _2908.z;
                    float2 _2933 = ((_2909 * (_51_m12[_2887].zw - _51_m12[_2887].xy)) + _51_m12[_2887].xy).xy * _51_m13.zw;
                    float2 _2935 = floor(_2933 + 0.5f.xx);
                    float2 _2936 = _2933 - _2935;
                    float _2937 = _2936.x;
                    float _2938 = _2937 + 0.5f;
                    float _2939 = _2938 * _2938;
                    float _2942 = 1.0f - _2937;
                    float _2943 = min(_2937, 0.0f);
                    float _2946 = _2937 + 1.0f;
                    float _2947 = max(_2937, 0.0f);
                    float _2958 = _2936.y;
                    float _2959 = _2958 + 0.5f;
                    float _2960 = _2959 * _2959;
                    float _2963 = 1.0f - _2958;
                    float _2964 = min(_2958, 0.0f);
                    float _2967 = _2958 + 1.0f;
                    float _2968 = max(_2958, 0.0f);
                    float3 _2980 = float3(0.1599999964237213134765625f * _2942, 0.1599999964237213134765625f * ((_2946 - (_2947 * _2947)) + 1.0f), _2939 * 0.07999999821186065673828125f);
                    float3 _2981 = float3(0.1599999964237213134765625f * ((_2939 * 0.5f) - _2937), 0.1599999964237213134765625f * ((_2942 - (_2943 * _2943)) + 1.0f), 0.1599999964237213134765625f * _2946) + _2980;
                    float3 _2983 = float3(0.1599999964237213134765625f * _2963, 0.1599999964237213134765625f * ((_2967 - (_2968 * _2968)) + 1.0f), _2960 * 0.07999999821186065673828125f);
                    float3 _2984 = float3(0.1599999964237213134765625f * ((_2960 * 0.5f) - _2958), 0.1599999964237213134765625f * ((_2963 - (_2964 * _2964)) + 1.0f), 0.1599999964237213134765625f * _2967) + _2983;
                    float3 _2990 = ((_2980 / _2981) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                    float3 _2992 = ((_2983 / _2984) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                    float2 _2994 = _2935 * _51_m13.xy;
                    float _2995 = _2990.x;
                    float _2996 = _2992.x;
                    float _2999 = _2990.y;
                    float _3002 = _2990.z;
                    float _3005 = _2992.y;
                    float _3012 = _2992.z;
                    float _3019 = _2981.x;
                    float _3020 = _2984.x;
                    float _3022 = _2981.y;
                    float _3024 = _2981.z;
                    float _3026 = _2984.y;
                    float _3030 = _2984.z;
                    float _3088 = (((((((_3019 * _3020) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2995, _2996), _374).xy, _2922)) + ((_3022 * _3020) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2999, _2996), _374).xy, _2922))) + ((_3024 * _3020) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_3002, _2996), _374).xy, _2922))) + ((_3019 * _3026) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2995, _3005), _374).xy, _2922))) + ((_3022 * _3026) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2999, _3005), _374).xy, _2922))) + ((_3024 * _3026) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_3002, _3005), _374).xy, _2922))) + ((_3019 * _3030) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2995, _3012), _374).xy, _2922));
                    float2 _3109 = min(_2909, 1.0f.xx - _2909);
                    _3123 = (_2887 >= 0) ? lerp(1.0f, (any(bool3(_2918.x || _2919.x, _2918.y || _2919.y, _2918.z || _2919.z)) || ((asuint(_2922) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3088 + ((_3022 * _3030) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_2999, _3012), _374).xy, _2922))) + ((_3024 * _3030) * _53.SampleCmpLevelZero(_25, float3(_2994 + float2(_3002, _3012), _374).xy, _2922))), _2679 ? min(_51_m11[_2887].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2887].z - _2905) * 0.25f, min(_3109.x, _3109.y)))) : _51_m11[_2887].w) : 1.0f;
                }
                else
                {
                    _3123 = 1.0f;
                }
                float3 _3148;
                float3 _3149;
                if (_2682)
                {
                    float3 _3126 = _2635 * _2635;
                    float3 _3128 = reflect(-_444, _748);
                    float _3137 = dot(_3128, _2670);
                    _3148 = _3126 / clamp(_3126 + (0.5f * clamp(_49_m6[_2052].z * _2659, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3149 = normalize(_2672 + (_2670 * clamp(dot(_2672, (_3128 * _3137) - _2670) / ((_49_m6[_2052].z * _49_m6[_2052].z) - (_3137 * _3137)), 0.0f, 1.0f)));
                }
                else
                {
                    _3148 = 1.0f.xxx;
                    _3149 = _2660;
                }
                float3 _3150 = _3149 + _444;
                float3 _3154 = _3150 * rsqrt(max(6.103515625e-05f, dot(_3150, _3150)));
                float3 _3280;
                if (_2835)
                {
                    float _3158 = clamp(_2701, 0.0f, 1.0f);
                    float _3160 = clamp(dot(_748, _3154), 0.0f, 1.0f);
                    float _3162 = clamp(dot(_444, _3154), 0.0f, 1.0f);
                    float _3165 = clamp(dot(_748, _444), 0.0f, 1.0f);
                    float _3166 = _37_m110 * _37_m110;
                    float _3176;
                    if (_2664 > 0.0f)
                    {
                        _3176 = clamp(_3166 + ((_2664 * _2664) / ((_3162 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3176 = _3166;
                    }
                    float _3177 = _3176 * _3176;
                    float _3198 = (((_3160 * _3177) - _3160) * _3160) + 1.0f;
                    float _3203 = 1.0f - _3162;
                    float _3204 = _3203 * _3203;
                    float _3206 = (_3203 * _3204) * _3204;
                    float _3230 = 1.0f - _37_m110;
                    float _3237 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3230 * (1.04997003078460693359375f + (_3230 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3230))))));
                    float _3238 = 1.0f - _3237;
                    float3 _3241 = _860 + ((1.0f.xxx - _860) * 0.0476190485060214996337890625f);
                    float _3252 = clamp(1.0f - _807, 0.0f, 1.0f);
                    float _3260 = clamp((dot(_748, _3149) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3276 = (clamp((min(((_860 * (1.0f - _3206)) + _3206.xxx) * (((_3177 / (_3198 * _3198)) * _3148.y) * (0.5f / (((_3158 * sqrt(((((-_3165) * _3177) + _3165) * _3165) + _3177)) + (_3165 * sqrt(((((-_3158) * _3177) + _3158) * _3158) + _3177))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3241 * (((_58.SampleLevel(_23, (float2(_3165, _37_m110) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_3158, _37_m110) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3237) / _3238)) * _3241) / (1.0f.xxx - (_3241 * _3238)))) * _49_m6[_2064].z, 0.0f.xxx, 1000.0f.xxx) * _2701) + (_1321 * lerp(lerp(1.0f, (_3260 * sqrt(_3260)) * 1.66666662693023681640625f, _3252) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_444, _3149), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3252)));
                    _3280 = (_3276 + ((_794 * _3148.z) * _2701)) * (((_49_m6[_2046].xyz * _2834) * _3123) * _2143);
                }
                else
                {
                    _3280 = 0.0f.xxx;
                }
                _3281 = _2009;
                _3282 = _3280;
            }
            else
            {
                float _2633;
                do
                {
                    if (_2147)
                    {
                        _2633 = 1.0f;
                        break;
                    }
                    float _2167 = (0.5f + (0.5f * _49_m6[_2052].y)) - abs(_49_m6[_2052].x);
                    float _2168 = _49_m6[_2052].y - _2167;
                    float _2175 = abs(max((1.0f - abs(_2167)) - abs(_2168), 0.00048828125f));
                    float3 _2179 = normalize(float3(_2167, _2168, (_49_m6[_2052].x >= 0.0f) ? _2175 : (-_2175)));
                    float3 _2180 = _49_m6[_2049].xyz - _417;
                    float _2181 = dot(_2180, _2180);
                    float3 _2183 = _2180 * rsqrt(_2181);
                    int _2186 = int(_49_m6[_2064].w);
                    float3 _2188 = (_2179 * _49_m6[_2052].z) * 0.5f;
                    float3 _2189 = _2180 - _2188;
                    float3 _2190 = _2180 + _2188;
                    bool _2193 = (uint(_49_m6[_2046].w) & 1u) == 0u;
                    bool _2196 = _2193 || ((_2068 & 2u) != 0u);
                    bool _2199 = (!_2193) && (_49_m6[_2052].z > 0.0f);
                    float _2211;
                    if (_2199)
                    {
                        _2211 = 1.0f / ((((length(_2189) * length(_2190)) + dot(_2189, _2190)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2211 = 1.0f;
                    }
                    float _2233;
                    if (_49_m6[_2061].w < 0.0f)
                    {
                        float _2227 = _2181 * (_49_m6[_2049].w * _49_m6[_2049].w);
                        float _2230 = clamp(1.0f - (_2227 * _2227), 0.0f, 1.0f);
                        _2233 = lerp(1.0f / (_2181 + 1.0f), _2211, float(_2199)) * (_2230 * _2230);
                    }
                    else
                    {
                        float3 _2216 = _2180 * _49_m6[_2049].w;
                        _2233 = _2211 * pow(1.0f - clamp(dot(_2216, _2216), 0.0f, 1.0f), _49_m6[_2061].w);
                    }
                    float _2239 = clamp((dot(_2183, -_2179) - _49_m6[_2052].z) * _49_m6[_2052].w, 0.0f, 1.0f);
                    float _2243 = _2233 * lerp(1.0f, _2239 * _2239, float(_2193));
                    float _2343;
                    if ((!_2199) && (_2186 >= 0))
                    {
                        uint _2249 = uint(_2186);
                        float2 _2336;
                        [branch]
                        if (_2193)
                        {
                            float4 _2326 = mul(_61_m1[_2249], _421);
                            _2336 = _61_m0[_2249].xy + (clamp(_2326.xy / _2326.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2249].zw);
                        }
                        else
                        {
                            float3 _2263 = mul(float4(-_2180, 0.0f), _61_m1[_2249]).xyz;
                            float3 _385 = _2263;
                            float3 _384 = _2263;
                            float3 _383 = abs(_2263);
                            uint _2272 = uint(int(_383.y > _383.x));
                            uint _2278 = (_383.z > _383[_2272]) ? 2u : _2272;
                            uint _2284 = (_2278 * 2u) + uint(_384[_2278] < 0.0f);
                            float _2288 = abs(_385[_2284 / 2u]);
                            float _2308 = 0.5f - (0.000244140625f / _61_m0[_2249].w);
                            _2336 = _61_m0[_2249].xy + (clamp(float2((float(_2284) + ((((_385[uint(_353[_2284].x)] * _354[_2284].x) / _2288) * _2308) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_385[uint(_353[_2284].y)] * _354[_2284].y) / _2288) * _2308)), 0.0f.xx, 1.0f.xx) * _61_m0[_2249].zw);
                        }
                        _2343 = _2243 * _59.SampleLevel(_23, _2336, 0.0f).x;
                    }
                    else
                    {
                        _2343 = _2243;
                    }
                    float _2632;
                    if (_2343 > 0.0f)
                    {
                        int _2396;
                        if (_2196)
                        {
                            _2396 = int(_49_m6[_2055].x);
                        }
                        else
                        {
                            uint _2351 = asuint(_49_m6[_2052].w);
                            uint _2353 = asuint(_49_m6[_2055].x);
                            float3 _2354 = _417 - _49_m6[_2049].xyz;
                            float3 _2355 = abs(_2354);
                            float _2356 = _2355.x;
                            float _2357 = _2355.y;
                            float _2359 = _2355.z;
                            int _2391;
                            if ((_2356 > _2357) && (_2356 > _2359))
                            {
                                _2391 = int((_2354.x > 0.0f) ? (_2351 >> 24u) : ((_2351 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2383;
                                if (_2357 > _2359)
                                {
                                    _2383 = int((_2354.y > 0.0f) ? ((_2351 >> 8u) & 255u) : (_2351 & 255u));
                                }
                                else
                                {
                                    _2383 = int((_2354.z > 0.0f) ? ((_2353 >> 8u) & 255u) : (_2353 & 255u));
                                }
                                _2391 = _2383;
                            }
                            _2396 = (_2391 < 80) ? _2391 : (-1);
                        }
                        float4 _2413 = mul(_51_m10[_2396], float4((_417 - ((-_2183) * _51_m11[_2396].x)) + (_748 * (_51_m11[_2396].y * 5.0f)), 1.0f));
                        float _2414 = _2413.w;
                        float3 _2417 = _2413.xyz / _2414.xxx;
                        float2 _2418 = _2417.xy;
                        float3 _2426 = _2417.xyz;
                        bool3 _2427 = bool3(_2426.x <= 0.0f.xxx.x, _2426.y <= 0.0f.xxx.y, _2426.z <= 0.0f.xxx.z);
                        bool3 _2428 = bool3(_2426.x >= 1.0f.xxx.x, _2426.y >= 1.0f.xxx.y, _2426.z >= 1.0f.xxx.z);
                        float _2431 = _2417.z;
                        float2 _2442 = ((_2418 * (_51_m12[_2396].zw - _51_m12[_2396].xy)) + _51_m12[_2396].xy).xy * _51_m13.zw;
                        float2 _2444 = floor(_2442 + 0.5f.xx);
                        float2 _2445 = _2442 - _2444;
                        float _2446 = _2445.x;
                        float _2447 = _2446 + 0.5f;
                        float _2448 = _2447 * _2447;
                        float _2451 = 1.0f - _2446;
                        float _2452 = min(_2446, 0.0f);
                        float _2455 = _2446 + 1.0f;
                        float _2456 = max(_2446, 0.0f);
                        float _2467 = _2445.y;
                        float _2468 = _2467 + 0.5f;
                        float _2469 = _2468 * _2468;
                        float _2472 = 1.0f - _2467;
                        float _2473 = min(_2467, 0.0f);
                        float _2476 = _2467 + 1.0f;
                        float _2477 = max(_2467, 0.0f);
                        float3 _2489 = float3(0.1599999964237213134765625f * _2451, 0.1599999964237213134765625f * ((_2455 - (_2456 * _2456)) + 1.0f), _2448 * 0.07999999821186065673828125f);
                        float3 _2490 = float3(0.1599999964237213134765625f * ((_2448 * 0.5f) - _2446), 0.1599999964237213134765625f * ((_2451 - (_2452 * _2452)) + 1.0f), 0.1599999964237213134765625f * _2455) + _2489;
                        float3 _2492 = float3(0.1599999964237213134765625f * _2472, 0.1599999964237213134765625f * ((_2476 - (_2477 * _2477)) + 1.0f), _2469 * 0.07999999821186065673828125f);
                        float3 _2493 = float3(0.1599999964237213134765625f * ((_2469 * 0.5f) - _2467), 0.1599999964237213134765625f * ((_2472 - (_2473 * _2473)) + 1.0f), 0.1599999964237213134765625f * _2476) + _2492;
                        float3 _2499 = ((_2489 / _2490) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                        float3 _2501 = ((_2492 / _2493) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                        float2 _2503 = _2444 * _51_m13.xy;
                        float _2504 = _2499.x;
                        float _2505 = _2501.x;
                        float _2508 = _2499.y;
                        float _2511 = _2499.z;
                        float _2514 = _2501.y;
                        float _2521 = _2501.z;
                        float _2528 = _2490.x;
                        float _2529 = _2493.x;
                        float _2531 = _2490.y;
                        float _2533 = _2490.z;
                        float _2535 = _2493.y;
                        float _2539 = _2493.z;
                        float _2597 = (((((((_2528 * _2529) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2504, _2505), _374).xy, _2431)) + ((_2531 * _2529) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2508, _2505), _374).xy, _2431))) + ((_2533 * _2529) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2511, _2505), _374).xy, _2431))) + ((_2528 * _2535) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2504, _2514), _374).xy, _2431))) + ((_2531 * _2535) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2508, _2514), _374).xy, _2431))) + ((_2533 * _2535) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2511, _2514), _374).xy, _2431))) + ((_2528 * _2539) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2504, _2521), _374).xy, _2431));
                        float2 _2618 = min(_2418, 1.0f.xx - _2418);
                        _2632 = (_2396 >= 0) ? lerp(1.0f, (any(bool3(_2427.x || _2428.x, _2427.y || _2428.y, _2427.z || _2428.z)) || ((asuint(_2431) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2597 + ((_2531 * _2539) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2508, _2521), _374).xy, _2431))) + ((_2533 * _2539) * _53.SampleCmpLevelZero(_25, float3(_2503 + float2(_2511, _2521), _374).xy, _2431))), _2196 ? min(_51_m11[_2396].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2396].z - _2414) * 0.25f, min(_2618.x, _2618.y)))) : _51_m11[_2396].w) : 1.0f;
                    }
                    else
                    {
                        _2632 = 1.0f;
                    }
                    _2633 = _2632;
                    break;
                } while(false);
                _3281 = _2009 * _2633;
                _3282 = 0.0f.xxx;
            }
            _2031 = _3281;
            _2034 = _2033 + _3282;
        }
        _2006 = _2005 + _2033;
    }
    float3 _3292 = -_444;
    float _3293 = 1.0f - _37_m1;
    float _3308 = _417.y * _17_m46.w;
    float _3313 = max(0.00999999977648258209228515625f, _3308 + _17_m47.w);
    float3 _3327 = exp(_17_m45.xyz * ((-max(0.0f, (_445 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_3313)) / _3313) * exp(_3308 + _17_m48.w))));
    float _3330 = dot(_3292, _17_m44.xyz);
    float _3336 = _17_m45.w * _17_m45.w;
    float _3340 = (1.0f + _3336) - ((2.0f * _17_m45.w) * _3330);
    float3 _3672;
    float _3673;
    if (_17_m55.z > 0.0f)
    {
        uint3 _3498 = (uint3(int3(int(_891.x), int(_891.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3499 = _3498.y;
        uint _3500 = _3498.z;
        uint _3503 = _3498.x + (_3499 * _3500);
        uint _3505 = _3499 + (_3500 * _3503);
        uint _3507 = _3500 + (_3503 * _3505);
        uint _3509 = _3503 + (_3505 * _3507);
        float _3533 = dot(_3292, -_15_m0[2].xyz);
        float3 _3543 = _417 - _15_m11.xyz;
        float _3545 = (_17_m55.w * ((_3533 > 5.9604644775390625e-08f) ? (1.0f / _3533) : 0.0f)) * (1.0f / _445);
        float _3546 = _3543.y;
        float _3547 = _3545 * _3546;
        float _3549 = _15_m11.y + _3547;
        float _3550 = _3546 - _3547;
        float _3552 = (1.0f - _3545) * _445;
        float _3566 = max(-127.0f, _17_m49.z * _3550);
        float _3590 = max(-127.0f, _17_m52.x * _3550);
        float _3601 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_3549 - _17_m49.x)))) * ((abs(_3566) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3566)) / _3566) : (0.693147182464599609375f - (0.2402265071868896484375f * _3566)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_3549 - _17_m52.z)))) * ((abs(_3590) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3590)) / _3590) : (0.693147182464599609375f - (0.2402265071868896484375f * _3590))));
        float _3623 = clamp((_445 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3626 = clamp((max(clamp(exp2(-(_3601 * _3552)), 0.0f, 1.0f), _17_m51.w) + clamp((_445 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3623, 0.0f, 1.0f);
        float4 _3666 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_23, float3((_1980 + ((((float3(uint3(_3509, _3505 + (_3507 * _3509), _378) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_892 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_892 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3672 = _3666.xyz + (((_17_m51.xyz * (1.0f - _3626)) + (((_17_m54.xyz * pow(clamp(dot(_444, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3601 * max(_3552 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3623))) * _3666.w);
        _3673 = _3666.w * _3626;
    }
    else
    {
        float3 _3370 = _417 - _15_m11.xyz;
        float _3372 = _3370.y;
        float _3386 = max(-127.0f, _17_m49.z * _3372);
        float _3410 = max(-127.0f, _17_m52.x * _3372);
        float _3421 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_3386) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3386)) / _3386) : (0.693147182464599609375f - (0.2402265071868896484375f * _3386)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_3410) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3410)) / _3410) : (0.693147182464599609375f - (0.2402265071868896484375f * _3410))));
        float _3443 = clamp((_445 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3446 = clamp((max(clamp(exp2(-(_3421 * _445)), 0.0f, 1.0f), _17_m51.w) + clamp((_445 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3443, 0.0f, 1.0f);
        _3672 = (_17_m51.xyz * (1.0f - _3446)) + (((_17_m54.xyz * pow(clamp(dot(_444, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3421 * max(_445 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3443));
        _3673 = _3446;
    }
    float3 _3682 = (((((((lerp(dot(_1342, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1342, _1348) * _17_m76.xyz) * _37_m11) + (_1342 * _1356)) + (_791 * (1.0f - _37_m108))) + (_1979.xyz + (_2005 * _2008)).xyz).xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3327 * _3673)) : (_3327 * _3673))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3330 * _3330)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _3336) / max((12.56637096405029296875f * _3340) * sqrt(_3340), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3327)) * _3673 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3672 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _3293)).xyz * _790;
    float4 _3683 = float4(_3682.x, _3682.y, _3682.z, _375.w);
    float _3684 = _790 * _3293;
    _3683.w = _3684;
    float3 _3693 = ((lerp(dot(_3683.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3683.xyz, _1348) * _17_m76.xyz) * _37_m11) + (_3683.xyz * _1356);
    float2 _3703 = min(_858, 1.0f.xx);
    float4 _3704 = float4(_3703.x, _3703.y, _375.z, _375.w);
    _3704.z = float(clamp(max(dot(_3693.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3684, _3684) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3704.w = (_37_m2 * _37_m0) * float(clamp(max(dot(_791, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _790, _790) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3693.x, _3693.y, _3693.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _12 = float4(renodx_output_color, _3683.w);
    _13 = _3704;
    if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
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
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._12 = _12;
    stage_output._13 = _13;
    return stage_output;
}

#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x87DCA0D5, migrated from 1.4.4 shader 0x2A5048E2.
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

struct _47
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

static float _387 = (float)0;
static float4 _389 = (float4)0;
static uint _390 = (uint)0;

static const float4 _367[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _368[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _369[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _33 : register(t50);
[[vk::binding(8, 1)]]
cbuffer _44_45 : register(b8)
{
    float _45_m0 : packoffset(c0);
    float _45_m1 : packoffset(c0.y);
    float _45_m2 : packoffset(c0.z);
    float _45_m3 : packoffset(c0.w);
    float _45_m4 : packoffset(c1);
    float _45_m5 : packoffset(c1.y);
    float _45_m6 : packoffset(c1.z);
    float _45_m7 : packoffset(c1.w);
    float _45_m8 : packoffset(c2);
    float _45_m9 : packoffset(c2.y);
    float _45_m10 : packoffset(c2.z);
    float _45_m11 : packoffset(c2.w);
    float _45_m12 : packoffset(c3);
    float _45_m13 : packoffset(c3.y);
    float _45_m14 : packoffset(c3.z);
    float _45_m15 : packoffset(c3.w);
    float _45_m16 : packoffset(c4);
    float _45_m17 : packoffset(c4.y);
    float _45_m18 : packoffset(c4.z);
    float _45_m19 : packoffset(c4.w);
    float _45_m20 : packoffset(c5);
    float _45_m21 : packoffset(c5.y);
    float _45_m22 : packoffset(c5.z);
    float _45_m23 : packoffset(c5.w);
    float _45_m24 : packoffset(c6);
    float _45_m25 : packoffset(c6.y);
    float _45_m26 : packoffset(c6.z);
    float _45_m27 : packoffset(c6.w);
    float _45_m28 : packoffset(c7);
    float _45_m29 : packoffset(c7.y);
    float _45_m30 : packoffset(c7.z);
    float _45_m31 : packoffset(c7.w);
    float4 _45_m32 : packoffset(c8);
    float4 _45_m33 : packoffset(c9);
    float4 _45_m34 : packoffset(c10);
    float4 _45_m35 : packoffset(c11);
    float4 _45_m36 : packoffset(c12);
    float4 _45_m37 : packoffset(c13);
    float4 _45_m38 : packoffset(c14);
    float4 _45_m39 : packoffset(c15);
    float4 _45_m40 : packoffset(c16);
    float4 _45_m41 : packoffset(c17);
    float4 _45_m42 : packoffset(c18);
    float4 _45_m43 : packoffset(c19);
    float4 _45_m44 : packoffset(c20);
    float4 _45_m45 : packoffset(c21);
    float _45_m46 : packoffset(c22);
    float _45_m47 : packoffset(c22.y);
    float _45_m48 : packoffset(c22.z);
    float _45_m49 : packoffset(c22.w);
    float _45_m50 : packoffset(c23);
    float _45_m51 : packoffset(c23.y);
    float _45_m52 : packoffset(c23.z);
    float _45_m53 : packoffset(c23.w);
    float4 _45_m54 : packoffset(c24);
    float4 _45_m55 : packoffset(c25);
    float _45_m56 : packoffset(c26);
    float _45_m57 : packoffset(c26.y);
    float _45_m58 : packoffset(c26.z);
    float _45_m59 : packoffset(c26.w);
    float4 _45_m60 : packoffset(c27);
    float4 _45_m61 : packoffset(c28);
    float4 _45_m62 : packoffset(c29);
    float4 _45_m63 : packoffset(c30);
    float4 _45_m64 : packoffset(c31);
    float _45_m65 : packoffset(c32);
    float _45_m66 : packoffset(c32.y);
    float _45_m67 : packoffset(c32.z);
    float _45_m68 : packoffset(c32.w);
    float _45_m69 : packoffset(c33);
    float _45_m70 : packoffset(c33.y);
    float _45_m71 : packoffset(c33.z);
    float _45_m72 : packoffset(c33.w);
    float4 _45_m73 : packoffset(c34);
    float4 _45_m74 : packoffset(c35);
    float _45_m75 : packoffset(c36);
    float _45_m76 : packoffset(c36.y);
    float _45_m77 : packoffset(c36.z);
    float _45_m78 : packoffset(c36.w);
    float _45_m79 : packoffset(c37);
    float _45_m80 : packoffset(c37.y);
    float _45_m81 : packoffset(c37.z);
    float _45_m82 : packoffset(c37.w);
    float _45_m83 : packoffset(c38);
    float _45_m84 : packoffset(c38.y);
    float _45_m85 : packoffset(c38.z);
    float _45_m86 : packoffset(c38.w);
    float4 _45_m87 : packoffset(c39);
    float _45_m88 : packoffset(c40);
    float _45_m89 : packoffset(c40.y);
    float _45_m90 : packoffset(c40.z);
    float _45_m91 : packoffset(c40.w);
};

[[vk::binding(17, 0)]]
cbuffer _46_48 : register(b17)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _51_52 : register(b47)
{
    int _52_m0 : packoffset(c0);
    int _52_m1 : packoffset(c0.y);
    int _52_m2 : packoffset(c0.z);
    int _52_m3 : packoffset(c0.w);
    float _52_m4 : packoffset(c1);
    float _52_m5 : packoffset(c1.y);
    float _52_m6 : packoffset(c1.z);
    float _52_m7 : packoffset(c1.w);
    float _52_m8 : packoffset(c2);
    float _52_m9 : packoffset(c2.y);
    float _52_m10 : packoffset(c2.z);
    float _52_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _53_54 : register(b14)
{
    float4 _54_m0 : packoffset(c0);
    float4 _54_m1 : packoffset(c1);
    float4 _54_m2 : packoffset(c2);
    float4 _54_m3 : packoffset(c3);
    float4 _54_m4 : packoffset(c4);
    uint4 _54_m5 : packoffset(c5);
    float4 _54_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _55_56 : register(b15)
{
    column_major float4x4 _56_m0[5] : packoffset(c0);
    float4 _56_m1[4] : packoffset(c20);
    float4 _56_m2[4] : packoffset(c24);
    float4 _56_m3[4] : packoffset(c28);
    float4 _56_m4 : packoffset(c32);
    float4 _56_m5 : packoffset(c33);
    float4 _56_m6 : packoffset(c34);
    float4 _56_m7 : packoffset(c35);
    float4 _56_m8 : packoffset(c36);
    float4 _56_m9[27] : packoffset(c37);
    column_major float4x4 _56_m10[56] : packoffset(c64);
    float4 _56_m11[56] : packoffset(c288);
    float4 _56_m12[56] : packoffset(c344);
    float4 _56_m13 : packoffset(c400);
    float4 _56_m14[47] : packoffset(c401);
    column_major float4x4 _56_m15[15] : packoffset(c448);
    float4 _56_m16[15] : packoffset(c508);
    float4 _56_m17[15] : packoffset(c523);
    float4 _56_m18[15] : packoffset(c538);
    float4 _56_m19 : packoffset(c553);
    float4 _56_m20 : packoffset(c554);
    float4 _56_m21[21] : packoffset(c555);
    column_major float4x4 _56_m22 : packoffset(c576);
    column_major float4x4 _56_m23 : packoffset(c580);
    float4 _56_m24 : packoffset(c584);
    float4 _56_m25 : packoffset(c585);
    float4 _56_m26 : packoffset(c586);
    float4 _56_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _71_72 : register(b49)
{
    float4 _72_m0[32] : packoffset(c0);
    column_major float4x4 _72_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25);
[[vk::binding(7, 1)]] Texture2D<float4> _34 : register(t7);
[[vk::binding(3, 1)]] SamplerState _35 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _38 : register(t6);
[[vk::binding(2, 1)]] SamplerState _39 : register(s2);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22);
[[vk::binding(4, 1)]] Texture2D<float4> _41 : register(t4);
[[vk::binding(0, 1)]] SamplerState _42 : register(s0);
[[vk::binding(20, 0)]] SamplerState _43 : register(s20);
[[vk::binding(35, 0)]] Texture3D<float4> _50 : register(t35);
[[vk::binding(9, 0)]] Texture2D<float4> _57 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _59 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _60 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _61 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _63 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _64 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _65 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _66 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _67 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _68 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _69 : register(t29);
[[vk::binding(28, 0)]] Texture2D<float4> _70 : register(t28);

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
    float _414 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _419 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _421 = abs(_419);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _421 : (-_421)), (1.0f - _414) - _419) < 0.0f)
    {
        discard;
    }
    float2 _438 = gl_FragCoord.xy * _18_m0.zw;
    float2 _441 = (_438 * 2.0f) - 1.0f.xx;
    float4 _444 = float4(_441, gl_FragCoord.z, 1.0f);
    _444.y = -_441.y;
    float4 _447 = mul(_16_m6, _444);
    float3 _451 = _447.xyz / _447.w.xxx;
    float4 _455 = float4(_451, 1.0f);
    float _458 = abs(mul(_16_m0, _455).z);
    float _462 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _469 = cross(_6, float4(_7.xyz, _462).xyz) * _462;
    float3 _484;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _484 = _16_m11.xyz - _451;
            break;
        }
        else
        {
            _484 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _485 = dot(_484, _484);
    float _487 = rsqrt(max(_485, 9.9999999392252902907785028219223e-09f));
    float3 _488 = _484 * _487;
    float _489 = _485 * _487;
    bool _490 = gl_FrontFacing ? true : false;
    float4 _522 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float _524 = _522.w;
    float4 _527 = _36.SampleBias(_37, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
    float2 _530 = (_527.xy * 2.0f.xx) - 1.0f.xx;
    float2 _531 = abs(_530);
    bool2 _532 = bool2(_531.x < 0.01200000010430812835693359375f.xx.x, _531.y < 0.01200000010430812835693359375f.xx.y);
    float2 _533 = float2(_532.x ? 0.0f.xx.x : _530.x, _532.y ? 0.0f.xx.y : _530.y);
    float2 _534 = _533 * _45_m0;
    float _538 = sqrt(clamp(1.0f - dot(_533, _533), 0.0f, 1.0f));
    float _539 = _534.x;
    float _540 = _534.y;
    float _541 = _527.z;
    float _542 = _527.w;
    float _560 = lerp(_524, _542, _45_m6) * _45_m32.w;
    float _571 = lerp(_45_m2, _45_m3, _541);
    float _581 = lerp(_524, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float4 _646 = _38.SampleBias(_39, ((lerp(_4, _5, _45_m56.xx) * _45_m64.xy) + _45_m64.zw) + (_45_m63.xy * _18_m75.w), _18_m16);
    float _656 = _646.x;
    float3 _658 = (lerp(_45_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _656) + ((((_45_m60.xyz * _646.y) + (_45_m61.xyz * _646.z)) + (_45_m62.xyz * _646.w)) * _45_m57);
    float _663 = (_21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _656)) * _45_m48;
    float3 _668 = lerp(clamp((_522.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx) * ((1.0f - _663).xxx + (_21_m0[_11]._m9.xyz * _663));
    float3 _692;
    [branch]
    if (_45_m49 > 0.5f)
    {
        _692 = _658 + (_45_m55.xyz * ((1.0f - pow(clamp(dot(_488, lerp(normalize(((_7.xyz * _539) + (_469 * _540)) + (_6 * _538)), _6, _45_m53.xxx)) + _45_m50, 0.0f, 1.0f), _45_m51)) * lerp(1.0f, _8.y, _45_m52)));
    }
    else
    {
        _692 = _658;
    }
    float3 _714 = normalize(((_7.xyz * _539) + (_469 * _540)) + (_6 * (_538 * (_490 ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _731 = clamp((1.0f - lerp(lerp(_524, _541, clamp(_45_m80, 0.0f, 1.0f)), _542, clamp(_45_m80 - 1.0f, 0.0f, 1.0f))) + _45_m81, 0.0f, 1.0f);
    float3 _735 = lerp(_714, _6, _45_m83.xxx);
    bool3 _750 = _490.xxx;
    float3 _751 = -_735;
    float _756 = pow(clamp(dot(_488, float3(_750.x ? _735.x : _751.x, _750.y ? _735.y : _751.y, _750.z ? _735.z : _751.z)) + _45_m75, 0.0f, 1.0f), _45_m78);
    float _758 = lerp(1.0f - _756, _756, _45_m79);
    float _777 = lerp(_560, _560 * _8.x, _45_m88) * ((1.0f - _45_m76) + (_758 * _45_m76));
    float _801 = dot(_714, _488);
    float3 _802 = -_488;
    float4 _822 = _41.SampleBias(_42, (_4 * _45_m74.xy) + _45_m74.zw, _18_m16);
    float2 _830 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_802, _714, _45_m67) * lerp(_45_m68, _45_m68 / max(gl_FragCoord.z * _801, 0.5f), _45_m69)).xy, ((_822 * 2.0f) - 1.0f.xxxx).xy * _45_m66, _45_m65.xx).xy;
    float2 _831 = _438 + _830;
    float2 _833 = _438 + (_830 * 0.25f);
    float4 _861 = _40.SampleBias(_43, lerp(lerp(_438, _833, step(_458, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _833, _18_m16).x) + _18_m2.w)).xx), _831, step(_458, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _831, _18_m16).x) + _18_m2.w)).xx), _18_m16);
    float _874 = clamp(float(int(sign(_414 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _887 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _887.y = -_887.y;
    float _913 = 0.07999999821186065673828125f * _45_m1;
    float3 _914 = _668 * _581;
    float3 _915 = _668 - _914;
    float3 _919 = (_913 - (_913 * _581)).xxx + _914;
    float4 _922 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _571) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _923 = _922.x;
    float2 _933 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_923 * _923, exp2((-9.27999973297119140625f) * max(0.0f, _801))) * _923) + _922.y)) + _922.zw;
    uint2 _969;
    float _970;
    if (_18_m24.y == 1.0f)
    {
        float4 _950 = mul(_18_m135, _455);
        float4 _953 = _950;
        _953.y = -_950.y;
        float4 _956 = _953 * (1.0f / _950.w);
        _969 = uint2(clamp(((_956.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _970 = 1.0f / ((_18_m2.z * _956.z) + _18_m2.w);
    }
    else
    {
        _969 = uint2(gl_FragCoord.xy);
        _970 = _458;
    }
    float3 _972 = _451 + (_714 * 0.25f);
    float3 _982 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _991 = _972 - (_18_m105.xyz + (_982 * (-_18_m107.w)));
    float _1005 = max(clamp((max(abs(_991.x), abs(_991.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_991.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1307;
    float4 _1308;
    float4 _1309;
    float _1310;
    float _1311;
    if ((_18_m105.w != 0.0f) && (_1005 < 1.0f))
    {
        float3 _1018 = _972 - (_18_m105.xyz + (_982 * (-_18_m107.y)));
        float _1032 = max(clamp((max(abs(_1018.x), abs(_1018.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1018.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1108;
        float4 _1109;
        float4 _1110;
        float4 _1111;
        if (_1032 < 1.0f)
        {
            float3 _1041 = ((_972 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1043 = _1041 - floor(_1041);
            float4 _1047 = _64.SampleLevel(_25, _1043, 0.0f);
            float _1048 = 1.0f - _1032;
            float _1052 = _18_m106.y * 0.5f;
            float _1057 = _1043.x;
            float _1058 = clamp(_1043.y, _1052, 1.0f - _1052) * 0.3333333432674407958984375f;
            float _1059 = _1043.z;
            float4 _1062 = _65.SampleLevel(_24, float3(_1057, _1058, _1059), 0.0f);
            float _1078 = _1047.x;
            float _1088 = _1047.y;
            float _1098 = _1047.z;
            _1108 = _1005 + (_1062.w * _1048);
            _1109 = float4(((_65.SampleLevel(_24, float3(_1057, _1058 + 0.666666686534881591796875f, _1059), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1098, _1098) * _1048;
            _1110 = float4(((_65.SampleLevel(_24, float3(_1057, _1058 + 0.3333333432674407958984375f, _1059), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1088, _1088) * _1048;
            _1111 = float4(((_1062.xyz * 4.0f) - 2.0f.xxx) * _1078, _1078) * _1048;
        }
        else
        {
            _1108 = _1005;
            _1109 = 0.0f.xxxx;
            _1110 = 0.0f.xxxx;
            _1111 = 0.0f.xxxx;
        }
        float3 _1117 = _972 - (_18_m105.xyz + (_982 * (-_18_m107.z)));
        float _1131 = max(clamp((max(abs(_1117.x), abs(_1117.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1117.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1211;
        float4 _1212;
        float4 _1213;
        float4 _1214;
        if (_1131 < 1.0f)
        {
            float3 _1140 = ((_972 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1142 = _1140 - floor(_1140);
            float4 _1146 = _66.SampleLevel(_25, _1142, 0.0f);
            float _1148 = _1032 * (1.0f - _1131);
            float _1152 = _18_m106.y * 0.5f;
            float _1157 = _1142.x;
            float _1158 = clamp(_1142.y, _1152, 1.0f - _1152) * 0.3333333432674407958984375f;
            float _1159 = _1142.z;
            float4 _1162 = _67.SampleLevel(_24, float3(_1157, _1158, _1159), 0.0f);
            float _1178 = _1146.x;
            float _1189 = _1146.y;
            float _1200 = _1146.z;
            _1211 = _1108 + (_1162.w * _1148);
            _1212 = _1109 + (float4(((_67.SampleLevel(_24, float3(_1157, _1158 + 0.666666686534881591796875f, _1159), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1200, _1200) * _1148);
            _1213 = _1110 + (float4(((_67.SampleLevel(_24, float3(_1157, _1158 + 0.3333333432674407958984375f, _1159), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1189, _1189) * _1148);
            _1214 = _1111 + (float4(((_1162.xyz * 4.0f) - 2.0f.xxx) * _1178, _1178) * _1148);
        }
        else
        {
            _1211 = _1108;
            _1212 = _1109;
            _1213 = _1110;
            _1214 = _1111;
        }
        float4 _1297;
        float4 _1298;
        float4 _1299;
        float _1300;
        if (_1131 > 0.0f)
        {
            float3 _1223 = ((_972 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1226 = _18_m106.xyz * 0.5f;
            float3 _1228 = clamp(_1223 - floor(_1223), _1226, 1.0f.xxx - _1226);
            float4 _1232 = _68.SampleLevel(_25, _1228, 0.0f);
            float _1234 = _1131 * (1.0f - _1005);
            float _1238 = _18_m106.y * 0.5f;
            float _1243 = _1228.x;
            float _1244 = clamp(_1228.y, _1238, 1.0f - _1238) * 0.3333333432674407958984375f;
            float _1245 = _1228.z;
            float4 _1248 = _69.SampleLevel(_24, float3(_1243, _1244, _1245), 0.0f);
            float _1264 = _1232.x;
            float _1275 = _1232.y;
            float _1286 = _1232.z;
            _1297 = _1212 + (float4(((_69.SampleLevel(_24, float3(_1243, _1244 + 0.666666686534881591796875f, _1245), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1286, _1286) * _1234);
            _1298 = _1213 + (float4(((_69.SampleLevel(_24, float3(_1243, _1244 + 0.3333333432674407958984375f, _1245), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1275, _1275) * _1234);
            _1299 = _1214 + (float4(((_1248.xyz * 4.0f) - 2.0f.xxx) * _1264, _1264) * _1234);
            _1300 = _1211 + (_1248.w * _1234);
        }
        else
        {
            _1297 = _1212;
            _1298 = _1213;
            _1299 = _1214;
            _1300 = _1211;
        }
        float _1303 = clamp((_1300 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1307 = _1297;
        _1308 = _1298;
        _1309 = _1299;
        _1310 = _1303 - _1005;
        _1311 = (_1303 + _1005) * 0.5f;
    }
    else
    {
        _1307 = 0.0f.xxxx;
        _1308 = 0.0f.xxxx;
        _1309 = 0.0f.xxxx;
        _1310 = 0.0f;
        _1311 = 1.0f;
    }
    float4 _1331 = _1309 + float4(_18_m108.x * _1311, (_18_m108.y * _1311) + ((_18_m108.w * _1310) * 0.5f), _18_m108.z * _1311, (_18_m108.w * _1311) + ((_18_m108.y * _1310) * 0.375f));
    float4 _1351 = _1308 + float4(_18_m109.x * _1311, (_18_m109.y * _1311) + ((_18_m109.w * _1310) * 0.5f), _18_m109.z * _1311, (_18_m109.w * _1311) + ((_18_m109.y * _1310) * 0.375f));
    float4 _1371 = _1307 + float4(_18_m110.x * _1311, (_18_m110.y * _1311) + ((_18_m110.w * _1310) * 0.5f), _18_m110.z * _1311, (_18_m110.w * _1311) + ((_18_m110.y * _1310) * 0.375f));
    float _1376 = max(0.0f, dot(_1331.xyz, _714) + _1331.w);
    float _1381 = max(0.0f, dot(_1351.xyz, _714) + _1351.w);
    float _1386 = max(0.0f, dot(_1371.xyz, _714) + _1371.w);
    float3 _1396 = reflect(_802, _714);
    float _1404 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_571, 0.001000000047497451305389404296875f))));
    float2 _1405 = float2(_969);
    float2 _1409 = floor(_1405 * _48_m0.w);
    float _1426 = floor(_970 - _48_m2.y);
    float _1430 = clamp(_1426, 0.0f, _48_m1.x - 1.0f);
    uint _1440 = (_1426 <= _1430) ? (_33.Load(uint(_18_m21.z + int(_1409.x + (_1409.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1430)) * 4 + 0)) : 0u;
    float _1443 = dot(float4(_1376, _1381, _1386, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1445;
    float _1448;
    uint _1450;
    _1445 = 0.0f.xxx;
    _1448 = 1.0f;
    _1450 = _1440;
    uint _1451;
    float3 _1446;
    float _1449;
    bool _1453;
    [loop]
    for (;;)
    {
        _1453 = _1448 > 0.00999999977648258209228515625f;
        if ((_1450 != 0u) && _1453)
        {
            uint _1457 = firstbitlow(_1450);
            _1451 = _1450 ^ (1u << (_1457 & 31u));
            float3 _1477 = float3(dot(_48_m4[_1457]._m2, _455), dot(_48_m4[_1457]._m3, _455), dot(_48_m4[_1457]._m4, _455));
            float3 _1478 = abs(_1477);
            if (all(bool3(_1478.x <= _48_m4[_1457]._m1.xyz.x, _1478.y <= _48_m4[_1457]._m1.xyz.y, _1478.z <= _48_m4[_1457]._m1.xyz.z)))
            {
                float3 _1487 = _48_m4[_1457]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1489 = _1478 * 0.100000001490116119384765625f;
                float3 _1490 = _1489 * _1489;
                float3 _1493 = (_48_m4[_1457]._m1.xyz - _1478) * _48_m4[_1457]._m5.xyz;
                float3 _1541;
                [branch]
                if (_48_m4[_1457]._m6.x == 1.0f)
                {
                    float3 _1526 = float3(dot(_48_m4[_1457]._m2.xyz, _1396), dot(_48_m4[_1457]._m3.xyz, _1396), dot(_48_m4[_1457]._m4.xyz, _1396));
                    float3 _1528 = (_48_m4[_1457]._m1.xyz - _1477) / _1526;
                    float3 _1531 = ((-_48_m4[_1457]._m1.xyz) - _1477) / _1526;
                    bool3 _1532 = bool3(_1526.x > 0.0f.xxx.x, _1526.y > 0.0f.xxx.y, _1526.z > 0.0f.xxx.z);
                    float3 _1533 = float3(_1532.x ? _1528.x : _1531.x, _1532.y ? _1528.y : _1531.y, _1532.z ? _1528.z : _1531.z);
                    _1541 = _1477 + (_1526 * min(min(_1533.x, _1533.y), _1533.z));
                }
                else
                {
                    _1541 = _1396;
                }
                float3 _1542 = normalize(_1541);
                float3 _1545 = float3(int3(sign(_1542)));
                float3 _1548 = _1542 / dot(_1542, _1545).xxx;
                float3 _1562;
                if (_1548.z < 0.0f)
                {
                    float3 _1553 = abs(_1548);
                    float2 _1560 = _1545.xy * float2(1.0f - _1553.y, 1.0f - _1553.x);
                    _1562 = float3(_1560.x, _1560.y, _1548.z);
                }
                else
                {
                    _1562 = _1548;
                }
                float _1587 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1457]._m0, float4(_714, 1.0f))));
                float _1600 = clamp((min(_1493.x, min(_1493.y, _1493.z)) * _48_m4[_1457]._m6.y) + ((((((_1487 * _1487).x - ((_1490.x + _1490.y) + _1490.z)) * _48_m4[_1457]._m5.x) * _48_m4[_1457]._m5.x) * (1.0f - _48_m4[_1457]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1457]._m6.w;
                _1446 = _1445 + ((((_31.SampleLevel(_26, float3((((_1562.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1457]._m1.w), _1404).xyz * _48_m4[_1457]._m5.w) * ((((((clamp(abs(_1443 / _1587), 0.0f, 1.0f) * 2.0f) + _1443) / (2.0f + _1587)) - 1.0f) * _18_m23.w) + 1.0f)) * _1600) * _1448);
                _1449 = _1448 * (1.0f - _1600);
            }
            else
            {
                _1446 = _1445;
                _1449 = _1448;
            }
            _1445 = _1446;
            _1448 = _1449;
            _1450 = _1451;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1669;
    if (_1453)
    {
        float3 _1608 = normalize(_1396);
        float3 _1611 = float3(int3(sign(_1608)));
        float3 _1614 = _1608 / dot(_1608, _1611).xxx;
        float3 _1628;
        if (_1614.z < 0.0f)
        {
            float3 _1619 = abs(_1614);
            float2 _1626 = _1611.xy * float2(1.0f - _1619.y, 1.0f - _1619.x);
            _1628 = float3(_1626.x, _1626.y, _1614.z);
        }
        else
        {
            _1628 = _1614;
        }
        float _1655 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_714, 1.0f))));
        _1669 = _1445 + ((_31.SampleLevel(_26, float3((((_1628.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1404).xyz * ((((((clamp(abs(_1443 / _1655), 0.0f, 1.0f) * 2.0f) + _1443) / (2.0f + _1655)) - 1.0f) * _18_m23.w) + 1.0f)) * _1448);
    }
    else
    {
        _1669 = _1445;
    }
    float2 _2188;
    do
    {
        if (_56_m7.w >= 0.9900000095367431640625f)
        {
            _2188 = float2(_56_m7.z, 1.0f);
            break;
        }
        int _1691 = int(_56_m7.x);
        bool3 _1693 = (_1691 == 2).xxx;
        float3 _1701 = _451 - float3(_1693.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1693.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1693.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
        float _1712 = max(clamp((_56_m6.w - dot(_1701, _1701)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
        float _1929;
        bool _1930;
        if (_1712 > 0.0f)
        {
            float _1927;
            bool _1928;
            if (_1691 > 0)
            {
                float3 _1719 = _451 - _56_m1[0].xyz;
                float3 _1723 = _451 - _56_m1[1].xyz;
                float3 _1727 = _451 - _56_m1[2].xyz;
                float3 _1731 = _451 - _56_m1[3].xyz;
                float4 _1736 = float4(dot(_1719, _1719), dot(_1723, _1723), dot(_1727, _1727), dot(_1731, _1731));
                float4 _1745 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
                float4 _1747 = float4(bool4(_1736.x < _1745.x, _1736.y < _1745.y, _1736.z < _1745.z, _1736.w < _1745.w));
                float3 _1751 = clamp(_1747.yzw - _1747.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1755 = clamp(4.0f - dot(float4(_1747.x, _1751.x, _1751.y, _1751.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1757 = clamp(_1755 + 1.0f, 0.0f, 3.0f);
                uint _1758 = uint(_1755);
                uint _1766 = uint(_1757);
                float _1772 = dot(_1736, _367[_1766]) / _56_m1[_1766].w;
                float _1789;
                if (((_1757 > _1755) && (_1772 >= 0.0f)) && (_1772 <= 1.0f))
                {
                    _1789 = _1755 + step(frac(52.98291778564453125f * frac(dot(_1405 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1736, _367[_1758]) / _56_m1[_1758].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1789 = _1755;
                }
                float _1790 = clamp(_1789, 0.0f, 4.0f);
                float4 _1794 = mul(_56_m0[uint(_1790)], _455);
                float _1797 = _1794.z;
                float4 _1798 = float4(_1794.xy, _1797, _1790);
                float3 _1799 = _1798.xyz;
                bool3 _1800 = bool3(_1799.x <= 0.0f.xxx.x, _1799.y <= 0.0f.xxx.y, _1799.z <= 0.0f.xxx.z);
                bool3 _1801 = bool3(_1799.x >= 1.0f.xxx.x, _1799.y >= 1.0f.xxx.y, _1799.z >= 1.0f.xxx.z);
                bool _1807 = any(bool3(_1800.x || _1801.x, _1800.y || _1801.y, _1800.z || _1801.z)) || ((asuint(_1797) & 2147483647u) > 2139095040u);
                int _1808 = int(_1790);
                float2 _1825 = float4(_56_m3[_1808].xy + (_1798.xy * _56_m3[_1808].zw), _1797, _1790).xy * _56_m4.zw;
                float2 _1827 = floor(_1825 + 0.5f.xx);
                float2 _1828 = _1825 - _1827;
                float _1829 = _1828.x;
                float _1830 = _1829 + 0.5f;
                float _1832 = (_1830 * _1830) * 0.5f;
                float _1835 = min(_1829, 0.0f);
                float _1839 = max(_1829, 0.0f);
                float4 _1843 = float4(_1832 - _1829, (1.0f - _1829) - (_1835 * _1835), (_1829 + 1.0f) - (_1839 * _1839), _1832) * 0.44444000720977783203125f;
                float _1844 = _1828.y;
                float _1845 = _1844 + 0.5f;
                float _1847 = (_1845 * _1845) * 0.5f;
                float _1850 = min(_1844, 0.0f);
                float _1854 = max(_1844, 0.0f);
                float4 _1858 = float4(_1847 - _1844, (1.0f - _1844) - (_1850 * _1850), (_1844 + 1.0f) - (_1854 * _1854), _1847) * 0.44444000720977783203125f;
                float2 _1860 = _1843.yw;
                float2 _1861 = _1843.xz + _1860;
                float2 _1863 = _1858.yw;
                float2 _1864 = _1858.xz + _1863;
                float2 _1870 = ((_1860 / _1861) + float2(-1.5f, 0.5f)) * _56_m4.xx;
                float2 _1872 = ((_1863 / _1864) + float2(-1.5f, 0.5f)) * _56_m4.yy;
                float2 _1874 = _1827 * _56_m4.xy;
                float _1875 = _1870.x;
                float _1876 = _1872.x;
                float _1879 = _1870.y;
                float _1882 = _1872.y;
                float _1887 = _1861.x;
                float _1888 = _1864.x;
                float _1890 = _1861.y;
                float _1892 = _1864.y;
                _1927 = _1807 ? 1.0f : (((((_1887 * _1888) * _57.SampleCmpLevelZero(_27, float3(_1874 + float2(_1875, _1876), _387).xy, _1797)) + ((_1890 * _1888) * _57.SampleCmpLevelZero(_27, float3(_1874 + float2(_1879, _1876), _387).xy, _1797))) + ((_1887 * _1892) * _57.SampleCmpLevelZero(_27, float3(_1874 + float2(_1875, _1882), _387).xy, _1797))) + ((_1890 * _1892) * _57.SampleCmpLevelZero(_27, float3(_1874 + float2(_1879, _1882), _387).xy, _1797)));
                _1928 = _1807;
            }
            else
            {
                _1927 = 1.0f;
                _1928 = false;
            }
            _1929 = _1927;
            _1930 = _1928;
        }
        else
        {
            _1929 = 1.0f;
            _1930 = false;
        }
        float _2130;
        float _2131;
        if ((_1712 < 1.0f) || (_56_m8.x > 0.5f))
        {
            float _1941 = 1.0f - clamp(dot(_714, _54_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1958 = float4((_451 - (_54_m0.xyz * (_1941 * _56_m24.x))) + (_714 * (_1941 * _56_m24.y)), 1.0f);
            float4 _1959 = mul(_56_m23, _1958);
            float2 _1960 = _1959.xy;
            float _2128;
            if (all(bool2(_1960.x > 0.0f.xx.x, _1960.y > 0.0f.xx.y)) && all(bool2(_1960.x < 1.0f.xx.x, _1960.y < 1.0f.xx.y)))
            {
                uint _1979 = clamp(uint((floor(_1959.y * _56_m25.z) + _1959.x) * _56_m25.y), 0u, 127u);
                uint _1983 = asuint(_56_m27[_1979].x);
                float2 _1984 = spvUnpackHalf2x16(_1983);
                float _1985 = _1984.x;
                float _2127;
                if (_1985 >= 0.0f)
                {
                    float4x4 _1994 = _56_m22;
                    _1994[0].w = _56_m27[_1979].y;
                    _1994[1].w = _56_m27[_1979].z;
                    _1994[2].w = _56_m27[_1979].w;
                    float4 _2001 = mul(_1994, _1958);
                    float3 _2002 = _2001.xyz;
                    float _2126;
                    if (all(bool3(_2002.x > 0.0f.xxx.x, _2002.y > 0.0f.xxx.y, _2002.z > 0.0f.xxx.z)) && all(bool3(_2002.x < 1.0f.xxx.x, _2002.y < 1.0f.xxx.y, _2002.z < 1.0f.xxx.z)))
                    {
                        float _2019 = _2001.z;
                        float2 _2025 = float4((_2001.xy * _56_m24.zw) + float2(_1985, spvUnpackHalf2x16(_1983 >> 16u).x), _2019, 1.0f).xy * _56_m26.zw;
                        float2 _2027 = floor(_2025 + 0.5f.xx);
                        float2 _2028 = _2025 - _2027;
                        float _2029 = _2028.x;
                        float _2030 = _2029 + 0.5f;
                        float _2032 = (_2030 * _2030) * 0.5f;
                        float _2035 = min(_2029, 0.0f);
                        float _2039 = max(_2029, 0.0f);
                        float4 _2043 = float4(_2032 - _2029, (1.0f - _2029) - (_2035 * _2035), (_2029 + 1.0f) - (_2039 * _2039), _2032) * 0.44444000720977783203125f;
                        float _2044 = _2028.y;
                        float _2045 = _2044 + 0.5f;
                        float _2047 = (_2045 * _2045) * 0.5f;
                        float _2050 = min(_2044, 0.0f);
                        float _2054 = max(_2044, 0.0f);
                        float4 _2058 = float4(_2047 - _2044, (1.0f - _2044) - (_2050 * _2050), (_2044 + 1.0f) - (_2054 * _2054), _2047) * 0.44444000720977783203125f;
                        float2 _2061 = _2043.xz + _2043.yw;
                        float2 _2064 = _2058.xz + _2058.yw;
                        float2 _2070 = ((_2043.yw / _2061) + float2(-1.5f, 0.5f)) * _56_m26.xx;
                        float2 _2072 = ((_2058.yw / _2064) + float2(-1.5f, 0.5f)) * _56_m26.yy;
                        float2 _2074 = _2027 * _56_m26.xy;
                        float _2075 = _2070.x;
                        float _2076 = _2072.x;
                        float2 _2078 = _2074 + float2(_2075, _2076);
                        float _2079 = _2070.y;
                        float2 _2081 = _2074 + float2(_2079, _2076);
                        float _2082 = _2072.y;
                        float2 _2084 = _2074 + float2(_2075, _2082);
                        float2 _2086 = _2074 + float2(_2079, _2082);
                        float _2087 = _2061.x;
                        float _2088 = _2064.x;
                        float _2090 = _2061.y;
                        float _2092 = _2064.y;
                        _2126 = ((((_2087 * _2088) * _60.SampleCmpLevelZero(_27, float3(_2078, _387).xy, _2019)) + ((_2090 * _2088) * _60.SampleCmpLevelZero(_27, float3(_2081, _387).xy, _2019))) + ((_2087 * _2092) * _60.SampleCmpLevelZero(_27, float3(_2084, _387).xy, _2019))) + ((_2090 * _2092) * _60.SampleCmpLevelZero(_27, float3(_2086, _387).xy, _2019));
                    }
                    else
                    {
                        _2126 = 1.0f;
                    }
                    _2127 = _2126;
                }
                else
                {
                    _2127 = 1.0f;
                }
                _2128 = _2127;
            }
            else
            {
                _2128 = 1.0f;
            }
            _2130 = _1930 ? _2128 : _1929;
            _2131 = _2128;
        }
        else
        {
            _2130 = _1929;
            _2131 = 1.0f;
        }
        float _2134 = lerp(lerp(_2131, _2130, _1712), min(_2131, _2130), _56_m8.x);
        float _2183;
        if (_2134 > 0.001000000047497451305389404296875f)
        {
            float3 _2141 = _451 - _18_m65.xyz;
            float2 _2151 = (_2141 + (_18_m68.xyz * _2141.y)).xz * _18_m66.z;
            float2 _2158 = _18_m67.xy * _18_m75.w;
            _2183 = _2134 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2151 + _2158, 0.0f), _59.SampleLevel(_25, (_2151 * _18_m67.w) + _2158, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_2141.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2183 = _2134;
        }
        _2188 = float2(lerp(_2183, _56_m7.z, _56_m7.w), _2183);
        break;
    } while(false);
    float _2193 = lerp(1.0f, min(1.0f, _2188.x), _56_m6.x);
    float4 _2332;
    if (_2193 > 0.001000000047497451305389404296875f)
    {
        float3 _2203 = -_54_m0.xyz;
        float _2208 = dot(_2203, _1396);
        float3 _2210 = _1396 - (_2203 * _2208);
        bool3 _2212 = (_2208 < _54_m4.z).xxx;
        float3 _2220 = normalize((_2203 * _54_m4.z) + ((_2210 * rsqrt(max(6.103515625e-05f, dot(_2210, _2210)))) * _54_m4.y));
        float3 _2221 = float3(_2212.x ? _2220.x : _1396.x, _2212.y ? _2220.y : _1396.y, _2212.z ? _2220.z : _1396.z);
        float3 _2225 = _2221 + _488;
        float3 _2229 = _2225 * rsqrt(max(6.103515625e-05f, dot(_2225, _2225)));
        float _2230 = clamp(dot(_2221, _714), 0.0f, 1.0f);
        float _2232 = clamp(dot(_714, _2229), 0.0f, 1.0f);
        float _2235 = clamp(_801, 0.0f, 1.0f);
        float _2236 = _571 * _571;
        float _2237 = _2236 * _2236;
        float _2258 = (((_2232 * _2237) - _2232) * _2232) + 1.0f;
        float _2261 = 1.0f - clamp(dot(_488, _2229), 0.0f, 1.0f);
        float _2262 = _2261 * _2261;
        float _2264 = (_2261 * _2262) * _2262;
        float _2288 = 1.0f - _571;
        float _2295 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2288 * (1.04997003078460693359375f + (_2288 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2288))))));
        float _2296 = 1.0f - _2295;
        float3 _2299 = _919 + ((1.0f.xxx - _919) * 0.0476190485060214996337890625f);
        float3 _2318 = (clamp((clamp((min(((_919 * (1.0f - _2264)) + _2264.xxx) * ((_2237 / (_2258 * _2258)) * (0.5f / (((_2230 * sqrt(((((-_2235) * _2237) + _2235) * _2235) + _2237)) + (_2235 * sqrt(((((-_2230) * _2237) + _2230) * _2230) + _2237))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2299 * (((_63.SampleLevel(_24, (float2(_2235, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_2230, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2295) / _2296)) * _2299) / (1.0f.xxx - (_2299 * _2296)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_777, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2230) + ((_915 * 1.0f) * _2230);
        float3 _2319 = _2318 * _54_m1.xyz;
        float3 _2330 = lerp(_2319, _2319 * _61.SampleBias(_24, float2(_2193, 0.5f), _18_m16).xyz, (1.0f - _2193).xxx) * 1.0f;
        _2332 = float4(_2330.x, _2330.y, _2330.z, 0.0f.xxxx.w);
    }
    else
    {
        _2332 = 0.0f.xxxx;
    }
    float2 _2334 = floor(_1405 * 0.03125f);
    int _2342 = int((_2334.x + (_2334.y * _52_m5)) * 8.0f);
    float _2349 = floor(_970 - (_18_m3.y * _52_m11));
    float _2353 = clamp(_2349, 0.0f, _52_m7 - 1.0f);
    int _2355 = int(_2353 * 8.0f);
    float3 _2357;
    float _2360;
    _2357 = 0.0f.xxx;
    _2360 = 1.0f;
    float3 _2358;
    float _2361;
    [loop]
    for (int _2362 = 0; _2362 <= 7; _2357 = _2358, _2360 = _2361, _2362++)
    {
        uint _2380 = (_2349 <= _2353) ? (_33.Load(uint(_2342 + _2362) * 4 + 0) & _33.Load(uint((_18_m21.y + _2355) + _2362) * 4 + 0)) : 0u;
        uint _2381 = uint(_2362);
        float3 _2385;
        _2361 = _2360;
        _2385 = 0.0f.xxx;
        uint _2388;
        float _2383;
        float3 _2386;
        [loop]
        for (uint _2387 = _2380; _2387 != 0u; _2361 = _2383, _2385 = _2386, _2387 = _2388)
        {
            uint _2392 = firstbitlow(_2387);
            _2388 = _2387 ^ (1u << (_2392 & 31u));
            int _2398 = int((32u * _2381) + _2392) * 8;
            int _2401 = _2398 + 1;
            int _2404 = _2398 + 2;
            int _2407 = _2398 + 3;
            int _2410 = _2398 + 5;
            int _2413 = _2398 + 6;
            int _2416 = _2398 + 7;
            uint _2420 = uint(_54_m6[_2410].w);
            float _2495;
            if ((_2420 & 1u) == 1u)
            {
                uint _2426 = asuint(_54_m6[_2410].x);
                uint _2433 = asuint(_54_m6[_2410].y);
                uint _2440 = asuint(_54_m6[_2410].z);
                uint _2447 = asuint(_54_m6[_2413].x);
                uint _2454 = asuint(_54_m6[_2413].y);
                uint _2461 = asuint(_54_m6[_2413].z);
                float3 _2480 = abs(mul(float4(_451 - _54_m6[_2401].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2426).x, spvUnpackHalf2x16(_2440).x, spvUnpackHalf2x16(_2454).x, 0.0f), float4(spvUnpackHalf2x16(_2426 >> 16u).x, spvUnpackHalf2x16(_2440 >> 16u).x, spvUnpackHalf2x16(_2454 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2433).x, spvUnpackHalf2x16(_2447).x, spvUnpackHalf2x16(_2461).x, 0.0f), float4(spvUnpackHalf2x16(_2433 >> 16u).x, spvUnpackHalf2x16(_2447 >> 16u).x, spvUnpackHalf2x16(_2461 >> 16u).x, 0.0f))).xyz);
                float _2487 = _54_m6[_2416].x * 0.5f;
                float _2493 = 1.0f - clamp((max(max(_2480.x, _2480.y), _2480.z) - (_2487 + 0.5f)) / (0.5f - _2487), 0.0f, 1.0f);
                _2495 = _2493 * _2493;
            }
            else
            {
                _2495 = 1.0f;
            }
            bool _2499 = _54_m6[_2407].z > 0.5f;
            if ((false || (_2495 < 0.001000000047497451305389404296875f)) || _2499)
            {
                _2383 = _2361;
                _2386 = _2385;
                continue;
            }
            float _3610;
            float3 _3611;
            if (_54_m6[_2398].w < 1.5f)
            {
                float3 _2987 = float3(0.100000001490116119384765625f, _571, 1.0f);
                float _2996 = (0.5f + (0.5f * _54_m6[_2404].y)) - abs(_54_m6[_2404].x);
                float _2997 = _54_m6[_2404].y - _2996;
                float _3004 = abs(max((1.0f - abs(_2996)) - abs(_2997), 0.00048828125f));
                float3 _3008 = normalize(float3(_2996, _2997, (_54_m6[_2404].x >= 0.0f) ? _3004 : (-_3004)));
                float3 _3009 = _54_m6[_2401].xyz - _451;
                float _3010 = dot(_3009, _3009);
                float _3011 = rsqrt(_3010);
                float3 _3012 = _3009 * _3011;
                float _3016 = clamp(_54_m6[_2416].y * _3011, 0.0f, 1.0f);
                int _3021 = int(_54_m6[_2416].w);
                float3 _3022 = _3008 * _54_m6[_2404].z;
                float3 _3023 = _3022 * 0.5f;
                float3 _3024 = _3009 - _3023;
                float3 _3025 = _3009 + _3023;
                bool _3028 = (uint(_54_m6[_2398].w) & 1u) == 0u;
                bool _3031 = _3028 || ((_2420 & 2u) != 0u);
                bool _3034 = (!_3028) && (_54_m6[_2404].z > 0.0f);
                float _3053;
                float _3054;
                if (_3034)
                {
                    float _3038 = length(_3024);
                    float _3039 = length(_3025);
                    _3053 = clamp(0.5f * ((dot(_714, _3024) / _3038) + (dot(_714, _3025) / _3039)), 0.0f, 1.0f);
                    _3054 = 1.0f / ((((_3038 * _3039) + dot(_3024, _3025)) * 0.5f) + 1.0f);
                }
                else
                {
                    _3053 = clamp(dot(_714, _3012), 0.0f, 1.0f);
                    _3054 = 1.0f;
                }
                float _3076;
                if (_54_m6[_2413].w < 0.0f)
                {
                    float _3070 = _3010 * (_54_m6[_2401].w * _54_m6[_2401].w);
                    float _3073 = clamp(1.0f - (_3070 * _3070), 0.0f, 1.0f);
                    _3076 = lerp(1.0f / (_3010 + 1.0f), _3054, float(_3034)) * (_3073 * _3073);
                }
                else
                {
                    float3 _3059 = _3009 * _54_m6[_2401].w;
                    _3076 = _3054 * pow(1.0f - clamp(dot(_3059, _3059), 0.0f, 1.0f), _54_m6[_2413].w);
                }
                float _3082 = clamp((dot(_3012, -_3008) - _54_m6[_2404].z) * _54_m6[_2404].w, 0.0f, 1.0f);
                float _3086 = _3076 * lerp(1.0f, _3082 * _3082, float(_3028));
                float _3186;
                if ((!_3034) && (_3021 >= 0))
                {
                    uint _3092 = uint(_3021);
                    float2 _3179;
                    [branch]
                    if (_3028)
                    {
                        float4 _3169 = mul(_72_m1[_3092], _455);
                        _3179 = _72_m0[_3092].xy + (clamp(_3169.xy / _3169.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_3092].zw);
                    }
                    else
                    {
                        float3 _3106 = mul(float4(-_3009, 0.0f), _72_m1[_3092]).xyz;
                        float3 _394 = _3106;
                        float3 _393 = _3106;
                        float3 _392 = abs(_3106);
                        uint _3115 = uint(int(_392.y > _392.x));
                        uint _3121 = (_392.z > _392[_3115]) ? 2u : _3115;
                        uint _3127 = (_3121 * 2u) + uint(_393[_3121] < 0.0f);
                        float _3131 = abs(_394[_3127 / 2u]);
                        float _3151 = 0.5f - (0.000244140625f / _72_m0[_3092].w);
                        _3179 = _72_m0[_3092].xy + (clamp(float2((float(_3127) + ((((_394[uint(_368[_3127].x)] * _369[_3127].x) / _3131) * _3151) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_368[_3127].y)] * _369[_3127].y) / _3131) * _3151)), 0.0f.xx, 1.0f.xx) * _72_m0[_3092].zw);
                    }
                    _3186 = _3086 * _70.SampleLevel(_24, _3179, 0.0f).x;
                }
                else
                {
                    _3186 = _3086;
                }
                bool _3187 = _3186 > 0.0f;
                float _3475;
                if (_3187)
                {
                    int _3239;
                    if (_3031)
                    {
                        _3239 = int(_54_m6[_2407].x);
                    }
                    else
                    {
                        uint _3194 = asuint(_54_m6[_2404].w);
                        uint _3196 = asuint(_54_m6[_2407].x);
                        float3 _3197 = _451 - _54_m6[_2401].xyz;
                        float3 _3198 = abs(_3197);
                        float _3199 = _3198.x;
                        float _3200 = _3198.y;
                        float _3202 = _3198.z;
                        int _3234;
                        if ((_3199 > _3200) && (_3199 > _3202))
                        {
                            _3234 = int((_3197.x > 0.0f) ? (_3194 >> 24u) : ((_3194 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3226;
                            if (_3200 > _3202)
                            {
                                _3226 = int((_3197.y > 0.0f) ? ((_3194 >> 8u) & 255u) : (_3194 & 255u));
                            }
                            else
                            {
                                _3226 = int((_3197.z > 0.0f) ? ((_3196 >> 8u) & 255u) : (_3196 & 255u));
                            }
                            _3234 = _3226;
                        }
                        _3239 = (_3234 < 80) ? _3234 : (-1);
                    }
                    float4 _3256 = mul(_56_m10[_3239], float4((_451 - ((-_3012) * _56_m11[_3239].x)) + (_714 * (_56_m11[_3239].y * 5.0f)), 1.0f));
                    float _3257 = _3256.w;
                    float3 _3260 = _3256.xyz / _3257.xxx;
                    float2 _3261 = _3260.xy;
                    float3 _3269 = _3260.xyz;
                    bool3 _3270 = bool3(_3269.x <= 0.0f.xxx.x, _3269.y <= 0.0f.xxx.y, _3269.z <= 0.0f.xxx.z);
                    bool3 _3271 = bool3(_3269.x >= 1.0f.xxx.x, _3269.y >= 1.0f.xxx.y, _3269.z >= 1.0f.xxx.z);
                    float _3274 = _3260.z;
                    float2 _3285 = ((_3261 * (_56_m12[_3239].zw - _56_m12[_3239].xy)) + _56_m12[_3239].xy).xy * _56_m13.zw;
                    float2 _3287 = floor(_3285 + 0.5f.xx);
                    float2 _3288 = _3285 - _3287;
                    float _3289 = _3288.x;
                    float _3290 = _3289 + 0.5f;
                    float _3291 = _3290 * _3290;
                    float _3294 = 1.0f - _3289;
                    float _3295 = min(_3289, 0.0f);
                    float _3298 = _3289 + 1.0f;
                    float _3299 = max(_3289, 0.0f);
                    float _3310 = _3288.y;
                    float _3311 = _3310 + 0.5f;
                    float _3312 = _3311 * _3311;
                    float _3315 = 1.0f - _3310;
                    float _3316 = min(_3310, 0.0f);
                    float _3319 = _3310 + 1.0f;
                    float _3320 = max(_3310, 0.0f);
                    float3 _3332 = float3(0.1599999964237213134765625f * _3294, 0.1599999964237213134765625f * ((_3298 - (_3299 * _3299)) + 1.0f), _3291 * 0.07999999821186065673828125f);
                    float3 _3333 = float3(0.1599999964237213134765625f * ((_3291 * 0.5f) - _3289), 0.1599999964237213134765625f * ((_3294 - (_3295 * _3295)) + 1.0f), 0.1599999964237213134765625f * _3298) + _3332;
                    float3 _3335 = float3(0.1599999964237213134765625f * _3315, 0.1599999964237213134765625f * ((_3319 - (_3320 * _3320)) + 1.0f), _3312 * 0.07999999821186065673828125f);
                    float3 _3336 = float3(0.1599999964237213134765625f * ((_3312 * 0.5f) - _3310), 0.1599999964237213134765625f * ((_3315 - (_3316 * _3316)) + 1.0f), 0.1599999964237213134765625f * _3319) + _3335;
                    float3 _3342 = ((_3332 / _3333) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                    float3 _3344 = ((_3335 / _3336) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                    float2 _3346 = _3287 * _56_m13.xy;
                    float _3347 = _3342.x;
                    float _3348 = _3344.x;
                    float _3351 = _3342.y;
                    float _3354 = _3342.z;
                    float _3357 = _3344.y;
                    float _3364 = _3344.z;
                    float _3371 = _3333.x;
                    float _3372 = _3336.x;
                    float _3374 = _3333.y;
                    float _3376 = _3333.z;
                    float _3378 = _3336.y;
                    float _3382 = _3336.z;
                    float _3440 = (((((((_3371 * _3372) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3347, _3348), _387).xy, _3274)) + ((_3374 * _3372) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3351, _3348), _387).xy, _3274))) + ((_3376 * _3372) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3354, _3348), _387).xy, _3274))) + ((_3371 * _3378) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3347, _3357), _387).xy, _3274))) + ((_3374 * _3378) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3351, _3357), _387).xy, _3274))) + ((_3376 * _3378) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3354, _3357), _387).xy, _3274))) + ((_3371 * _3382) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3347, _3364), _387).xy, _3274));
                    float2 _3461 = min(_3261, 1.0f.xx - _3261);
                    _3475 = (_3239 >= 0) ? lerp(1.0f, (any(bool3(_3270.x || _3271.x, _3270.y || _3271.y, _3270.z || _3271.z)) || ((asuint(_3274) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3440 + ((_3374 * _3382) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3351, _3364), _387).xy, _3274))) + ((_3376 * _3382) * _58.SampleCmpLevelZero(_27, float3(_3346 + float2(_3354, _3364), _387).xy, _3274))), _3031 ? min(_56_m11[_3239].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_3239].z - _3257) * 0.25f, min(_3461.x, _3461.y)))) : _56_m11[_3239].w) : 1.0f;
                }
                else
                {
                    _3475 = 1.0f;
                }
                float3 _3498;
                float3 _3499;
                if (_3034)
                {
                    float3 _3478 = _2987 * _2987;
                    float _3487 = dot(_1396, _3022);
                    _3498 = _3478 / clamp(_3478 + (0.5f * clamp(_54_m6[_2404].z * _3011, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3499 = normalize(_3024 + (_3022 * clamp(dot(_3024, (_1396 * _3487) - _3022) / ((_54_m6[_2404].z * _54_m6[_2404].z) - (_3487 * _3487)), 0.0f, 1.0f)));
                }
                else
                {
                    _3498 = 1.0f.xxx;
                    _3499 = _3012;
                }
                float3 _3500 = _3499 + _488;
                float3 _3504 = _3500 * rsqrt(max(6.103515625e-05f, dot(_3500, _3500)));
                float3 _3609;
                if (_3187)
                {
                    float _3507 = clamp(_3053, 0.0f, 1.0f);
                    float _3509 = clamp(dot(_714, _3504), 0.0f, 1.0f);
                    float _3511 = clamp(dot(_488, _3504), 0.0f, 1.0f);
                    float _3512 = clamp(_801, 0.0f, 1.0f);
                    float _3513 = _571 * _571;
                    float _3523;
                    if (_3016 > 0.0f)
                    {
                        _3523 = clamp(_3513 + ((_3016 * _3016) / ((_3511 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3523 = _3513;
                    }
                    float _3524 = _3523 * _3523;
                    float _3545 = (((_3509 * _3524) - _3509) * _3509) + 1.0f;
                    float _3550 = 1.0f - _3511;
                    float _3551 = _3550 * _3550;
                    float _3553 = (_3550 * _3551) * _3551;
                    float _3577 = 1.0f - _571;
                    float _3584 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3577 * (1.04997003078460693359375f + (_3577 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3577))))));
                    float _3585 = 1.0f - _3584;
                    float3 _3588 = _919 + ((1.0f.xxx - _919) * 0.0476190485060214996337890625f);
                    float3 _3608 = ((clamp((min(((_919 * (1.0f - _3553)) + _3553.xxx) * (((_3524 / (_3545 * _3545)) * _3498.y) * (0.5f / (((_3507 * sqrt(((((-_3512) * _3524) + _3512) * _3512) + _3524)) + (_3512 * sqrt(((((-_3507) * _3524) + _3507) * _3507) + _3524))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3588 * (((_63.SampleLevel(_24, (float2(_3512, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_3507, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3584) / _3585)) * _3588) / (1.0f.xxx - (_3588 * _3585)))) * _54_m6[_2416].z, 0.0f.xxx, 1000.0f.xxx) * _3053) + ((_915 * _3498.z) * _3053)) * (((_54_m6[_2398].xyz * _3186) * _3475) * _2495);
                    _3609 = _3608;
                }
                else
                {
                    _3609 = 0.0f.xxx;
                }
                _3610 = _2361;
                _3611 = _3609;
            }
            else
            {
                float _2985;
                do
                {
                    if (_2499)
                    {
                        _2985 = 1.0f;
                        break;
                    }
                    float _2519 = (0.5f + (0.5f * _54_m6[_2404].y)) - abs(_54_m6[_2404].x);
                    float _2520 = _54_m6[_2404].y - _2519;
                    float _2527 = abs(max((1.0f - abs(_2519)) - abs(_2520), 0.00048828125f));
                    float3 _2531 = normalize(float3(_2519, _2520, (_54_m6[_2404].x >= 0.0f) ? _2527 : (-_2527)));
                    float3 _2532 = _54_m6[_2401].xyz - _451;
                    float _2533 = dot(_2532, _2532);
                    float3 _2535 = _2532 * rsqrt(_2533);
                    int _2538 = int(_54_m6[_2416].w);
                    float3 _2540 = (_2531 * _54_m6[_2404].z) * 0.5f;
                    float3 _2541 = _2532 - _2540;
                    float3 _2542 = _2532 + _2540;
                    bool _2545 = (uint(_54_m6[_2398].w) & 1u) == 0u;
                    bool _2548 = _2545 || ((_2420 & 2u) != 0u);
                    bool _2551 = (!_2545) && (_54_m6[_2404].z > 0.0f);
                    float _2563;
                    if (_2551)
                    {
                        _2563 = 1.0f / ((((length(_2541) * length(_2542)) + dot(_2541, _2542)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2563 = 1.0f;
                    }
                    float _2585;
                    if (_54_m6[_2413].w < 0.0f)
                    {
                        float _2579 = _2533 * (_54_m6[_2401].w * _54_m6[_2401].w);
                        float _2582 = clamp(1.0f - (_2579 * _2579), 0.0f, 1.0f);
                        _2585 = lerp(1.0f / (_2533 + 1.0f), _2563, float(_2551)) * (_2582 * _2582);
                    }
                    else
                    {
                        float3 _2568 = _2532 * _54_m6[_2401].w;
                        _2585 = _2563 * pow(1.0f - clamp(dot(_2568, _2568), 0.0f, 1.0f), _54_m6[_2413].w);
                    }
                    float _2591 = clamp((dot(_2535, -_2531) - _54_m6[_2404].z) * _54_m6[_2404].w, 0.0f, 1.0f);
                    float _2595 = _2585 * lerp(1.0f, _2591 * _2591, float(_2545));
                    float _2695;
                    if ((!_2551) && (_2538 >= 0))
                    {
                        uint _2601 = uint(_2538);
                        float2 _2688;
                        [branch]
                        if (_2545)
                        {
                            float4 _2678 = mul(_72_m1[_2601], _455);
                            _2688 = _72_m0[_2601].xy + (clamp(_2678.xy / _2678.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2601].zw);
                        }
                        else
                        {
                            float3 _2615 = mul(float4(-_2532, 0.0f), _72_m1[_2601]).xyz;
                            float3 _397 = _2615;
                            float3 _396 = _2615;
                            float3 _395 = abs(_2615);
                            uint _2624 = uint(int(_395.y > _395.x));
                            uint _2630 = (_395.z > _395[_2624]) ? 2u : _2624;
                            uint _2636 = (_2630 * 2u) + uint(_396[_2630] < 0.0f);
                            float _2640 = abs(_397[_2636 / 2u]);
                            float _2660 = 0.5f - (0.000244140625f / _72_m0[_2601].w);
                            _2688 = _72_m0[_2601].xy + (clamp(float2((float(_2636) + ((((_397[uint(_368[_2636].x)] * _369[_2636].x) / _2640) * _2660) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_368[_2636].y)] * _369[_2636].y) / _2640) * _2660)), 0.0f.xx, 1.0f.xx) * _72_m0[_2601].zw);
                        }
                        _2695 = _2595 * _70.SampleLevel(_24, _2688, 0.0f).x;
                    }
                    else
                    {
                        _2695 = _2595;
                    }
                    float _2984;
                    if (_2695 > 0.0f)
                    {
                        int _2748;
                        if (_2548)
                        {
                            _2748 = int(_54_m6[_2407].x);
                        }
                        else
                        {
                            uint _2703 = asuint(_54_m6[_2404].w);
                            uint _2705 = asuint(_54_m6[_2407].x);
                            float3 _2706 = _451 - _54_m6[_2401].xyz;
                            float3 _2707 = abs(_2706);
                            float _2708 = _2707.x;
                            float _2709 = _2707.y;
                            float _2711 = _2707.z;
                            int _2743;
                            if ((_2708 > _2709) && (_2708 > _2711))
                            {
                                _2743 = int((_2706.x > 0.0f) ? (_2703 >> 24u) : ((_2703 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2735;
                                if (_2709 > _2711)
                                {
                                    _2735 = int((_2706.y > 0.0f) ? ((_2703 >> 8u) & 255u) : (_2703 & 255u));
                                }
                                else
                                {
                                    _2735 = int((_2706.z > 0.0f) ? ((_2705 >> 8u) & 255u) : (_2705 & 255u));
                                }
                                _2743 = _2735;
                            }
                            _2748 = (_2743 < 80) ? _2743 : (-1);
                        }
                        float4 _2765 = mul(_56_m10[_2748], float4((_451 - ((-_2535) * _56_m11[_2748].x)) + (_714 * (_56_m11[_2748].y * 5.0f)), 1.0f));
                        float _2766 = _2765.w;
                        float3 _2769 = _2765.xyz / _2766.xxx;
                        float2 _2770 = _2769.xy;
                        float3 _2778 = _2769.xyz;
                        bool3 _2779 = bool3(_2778.x <= 0.0f.xxx.x, _2778.y <= 0.0f.xxx.y, _2778.z <= 0.0f.xxx.z);
                        bool3 _2780 = bool3(_2778.x >= 1.0f.xxx.x, _2778.y >= 1.0f.xxx.y, _2778.z >= 1.0f.xxx.z);
                        float _2783 = _2769.z;
                        float2 _2794 = ((_2770 * (_56_m12[_2748].zw - _56_m12[_2748].xy)) + _56_m12[_2748].xy).xy * _56_m13.zw;
                        float2 _2796 = floor(_2794 + 0.5f.xx);
                        float2 _2797 = _2794 - _2796;
                        float _2798 = _2797.x;
                        float _2799 = _2798 + 0.5f;
                        float _2800 = _2799 * _2799;
                        float _2803 = 1.0f - _2798;
                        float _2804 = min(_2798, 0.0f);
                        float _2807 = _2798 + 1.0f;
                        float _2808 = max(_2798, 0.0f);
                        float _2819 = _2797.y;
                        float _2820 = _2819 + 0.5f;
                        float _2821 = _2820 * _2820;
                        float _2824 = 1.0f - _2819;
                        float _2825 = min(_2819, 0.0f);
                        float _2828 = _2819 + 1.0f;
                        float _2829 = max(_2819, 0.0f);
                        float3 _2841 = float3(0.1599999964237213134765625f * _2803, 0.1599999964237213134765625f * ((_2807 - (_2808 * _2808)) + 1.0f), _2800 * 0.07999999821186065673828125f);
                        float3 _2842 = float3(0.1599999964237213134765625f * ((_2800 * 0.5f) - _2798), 0.1599999964237213134765625f * ((_2803 - (_2804 * _2804)) + 1.0f), 0.1599999964237213134765625f * _2807) + _2841;
                        float3 _2844 = float3(0.1599999964237213134765625f * _2824, 0.1599999964237213134765625f * ((_2828 - (_2829 * _2829)) + 1.0f), _2821 * 0.07999999821186065673828125f);
                        float3 _2845 = float3(0.1599999964237213134765625f * ((_2821 * 0.5f) - _2819), 0.1599999964237213134765625f * ((_2824 - (_2825 * _2825)) + 1.0f), 0.1599999964237213134765625f * _2828) + _2844;
                        float3 _2851 = ((_2841 / _2842) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                        float3 _2853 = ((_2844 / _2845) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                        float2 _2855 = _2796 * _56_m13.xy;
                        float _2856 = _2851.x;
                        float _2857 = _2853.x;
                        float _2860 = _2851.y;
                        float _2863 = _2851.z;
                        float _2866 = _2853.y;
                        float _2873 = _2853.z;
                        float _2880 = _2842.x;
                        float _2881 = _2845.x;
                        float _2883 = _2842.y;
                        float _2885 = _2842.z;
                        float _2887 = _2845.y;
                        float _2891 = _2845.z;
                        float _2949 = (((((((_2880 * _2881) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2856, _2857), _387).xy, _2783)) + ((_2883 * _2881) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2860, _2857), _387).xy, _2783))) + ((_2885 * _2881) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2863, _2857), _387).xy, _2783))) + ((_2880 * _2887) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2856, _2866), _387).xy, _2783))) + ((_2883 * _2887) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2860, _2866), _387).xy, _2783))) + ((_2885 * _2887) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2863, _2866), _387).xy, _2783))) + ((_2880 * _2891) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2856, _2873), _387).xy, _2783));
                        float2 _2970 = min(_2770, 1.0f.xx - _2770);
                        _2984 = (_2748 >= 0) ? lerp(1.0f, (any(bool3(_2779.x || _2780.x, _2779.y || _2780.y, _2779.z || _2780.z)) || ((asuint(_2783) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2949 + ((_2883 * _2891) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2860, _2873), _387).xy, _2783))) + ((_2885 * _2891) * _58.SampleCmpLevelZero(_27, float3(_2855 + float2(_2863, _2873), _387).xy, _2783))), _2548 ? min(_56_m11[_2748].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_2748].z - _2766) * 0.25f, min(_2970.x, _2970.y)))) : _56_m11[_2748].w) : 1.0f;
                    }
                    else
                    {
                        _2984 = 1.0f;
                    }
                    _2985 = _2984;
                    break;
                } while(false);
                _3610 = _2361 * _2985;
                _3611 = 0.0f.xxx;
            }
            _2383 = _3610;
            _2386 = _2385 + _3611;
        }
        _2358 = _2357 + _2385;
    }
    float3 _3622 = (((((float3(_1376, _1381, _1386) * (_915 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _542, _45_m4)) * _18_m22.x) + (((((_1669 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_919 * _933.x) + (clamp(50.0f * _919.y, 0.0f, 1.0f) * _933.y).xxx)) * 1.0f)) + (((((_692 * lerp(_668, 1.0f.xxx, _45_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _45_m46) + (_18_m20.y * _45_m46))) * _45_m58) + (lerp(float4(_668, 1.0f).xyz, _45_m87.xyz, (_45_m87.w * _758).xxx).xyz * lerp(_731, _731 * _8.y, _45_m82)))) + lerp((_2332.xyz + ((_2357 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2360)).xyz, (_861.xyz * (_45_m73.xyz * _45_m71)).xyz, clamp((1.0f - _777) / max(1.0f - _45_m70, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3623 = float4(_3622.x, _3622.y, _3622.z, _389.w);
    _3623.w = _777;
    float _3640 = _451.y * _18_m46.w;
    float _3645 = max(0.00999999977648258209228515625f, _3640 + _18_m47.w);
    float3 _3659 = exp(_18_m45.xyz * ((-max(0.0f, (_489 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3645)) / _3645) * exp(_3640 + _18_m48.w))));
    float _3662 = dot(_802, _18_m44.xyz);
    float _3668 = _18_m45.w * _18_m45.w;
    float _3672 = (1.0f + _3668) - ((2.0f * _18_m45.w) * _3662);
    float3 _4002;
    float _4003;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3830 = (uint3(int3(int(_969.x), int(_969.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3831 = _3830.y;
        uint _3832 = _3830.z;
        uint _3835 = _3830.x + (_3831 * _3832);
        uint _3837 = _3831 + (_3832 * _3835);
        uint _3839 = _3832 + (_3835 * _3837);
        uint _3841 = _3835 + (_3837 * _3839);
        float _3863 = dot(_802, -_16_m0[2].xyz);
        float3 _3873 = _451 - _16_m11.xyz;
        float _3875 = (_18_m55.w * ((_3863 > 5.9604644775390625e-08f) ? (1.0f / _3863) : 0.0f)) * (1.0f / _489);
        float _3876 = _3873.y;
        float _3877 = _3875 * _3876;
        float _3879 = _16_m11.y + _3877;
        float _3880 = _3876 - _3877;
        float _3882 = (1.0f - _3875) * _489;
        float _3896 = max(-127.0f, _18_m49.z * _3880);
        float _3920 = max(-127.0f, _18_m52.x * _3880);
        float _3931 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3879 - _18_m49.x)))) * ((abs(_3896) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3896)) / _3896) : (0.693147182464599609375f - (0.2402265071868896484375f * _3896)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3879 - _18_m52.z)))) * ((abs(_3920) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3920)) / _3920) : (0.693147182464599609375f - (0.2402265071868896484375f * _3920))));
        float _3953 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3956 = clamp((max(clamp(exp2(-(_3931 * _3882)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3953, 0.0f, 1.0f);
        float4 _3996 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_24, float3((_1405 + ((((float3(uint3(_3841, _3837 + (_3839 * _3841), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_970 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_970 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _4002 = _3996.xyz + (((_18_m51.xyz * (1.0f - _3956)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3931 * max(_3882 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3953))) * _3996.w);
        _4003 = _3996.w * _3956;
    }
    else
    {
        float3 _3702 = _451 - _16_m11.xyz;
        float _3704 = _3702.y;
        float _3718 = max(-127.0f, _18_m49.z * _3704);
        float _3742 = max(-127.0f, _18_m52.x * _3704);
        float _3753 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3718) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3718)) / _3718) : (0.693147182464599609375f - (0.2402265071868896484375f * _3718)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3742) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3742)) / _3742) : (0.693147182464599609375f - (0.2402265071868896484375f * _3742))));
        float _3775 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3778 = clamp((max(clamp(exp2(-(_3753 * _489)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3775, 0.0f, 1.0f);
        _4002 = (_18_m51.xyz * (1.0f - _3778)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3753 * max(_489 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3775));
        _4003 = _3778;
    }
    float3 _4009 = ((_3623.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3659 * _4003)) : (_3659 * _4003))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3662 * _3662)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3668) / max((12.56637096405029296875f * _3672) * sqrt(_3672), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3659)) * _4003 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_4002 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _4019 = lerp(dot(_4009, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _4009, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _4029 = min(lerp(((sqrt(sqrt(abs(_887 * 0.5f))) * float2(int2(sign(_887)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _874.xx), 1.0f.xx);
    float4 _4030 = float4(_4029.x, _4029.y, _389.z, _389.w);
    _4030.z = float(clamp(max(dot(_4019.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _777, _777) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _4030.w = lerp(0.0f, 0.699999988079071044921875f, _874);
    float3 renodx_output_color = float3(_4019.x, _4019.y, _4019.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3623.w);
    _14 = _4030;
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

#include "./renodx_injection.hlsli"

// Ported from the native 0xA7691461 Vulkan dump.
struct _22 {
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

static float _517;
static float3 _518;
static float3 _519;
static float _523;
static uint _524;

static const float2 _492[16] = {float2(-0.94201624393463134765625f, -0.39906215667724609375f), float2(0.94558608531951904296875f, -0.768907248973846435546875f), float2(-0.094184100627899169921875f, -0.929388701915740966796875f), float2(0.34495937824249267578125f, 0.29387760162353515625f), float2(-0.91588580608367919921875f, 0.4577143192291259765625f), float2(-0.8154423236846923828125f, -0.87912464141845703125f), float2(-0.38277542591094970703125f, 0.2767684459686279296875f), float2(0.9748439788818359375f, 0.7564837932586669921875f), float2(0.4432332515716552734375f, -0.9751155376434326171875f), float2(0.5374298095703125f, -0.473734200000762939453125f), float2(-0.2649691104888916015625f, -0.418930232524871826171875f), float2(0.79197514057159423828125f, 0.19090187549591064453125f), float2(-0.24188840389251708984375f, 0.997065067291259765625f), float2(-0.8140995502471923828125f, 0.91437590122222900390625f), float2(0.1998412609100341796875f, 0.786413669586181640625f), float2(0.14383161067962646484375f, -0.141007900238037109375f)};
static const float2 _493[16] = {float2(-0.3996559083461761474609375f, 0.91666519641876220703125f), float2(0.12451229989528656005859375f, -0.992218077182769775390625f), float2(0.8523542881011962890625f, 0.5229647159576416015625f), float2(-0.22931249439716339111328125f, 0.973352909088134765625f), float2(-0.772406101226806640625f, 0.63512897491455078125f), float2(0.7927525043487548828125f, -0.60954368114471435546875f), float2(-0.578049719333648681640625f, 0.816001594066619873046875f), float2(-0.831129610538482666015625f, -0.55607879161834716796875f), float2(0.8077948093414306640625f, 0.589463770389556884765625f), float2(0.47141540050506591796875f, 0.88191127777099609375f), float2(-0.3139738142490386962890625f, -0.949431717395782470703125f), float2(-0.94500672817230224609375f, -0.3270510137081146240234375f), float2(-0.1850374042987823486328125f, -0.982731521129608154296875f), float2(-0.9337558746337890625f, 0.35791051387786865234375f), float2(-0.997614085674285888671875f, 0.069036297500133514404296875f), float2(0.3061277866363525390625f, 0.951990425586700439453125f)};
static const int2 _494[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _495[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _17_18 : register(b11, space0) {
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

[[vk::binding(15, 0)]] cbuffer _19_20 : register(b15, space0) {
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
  float4 _20_m99 : packoffset(c127);
  float4 _20_m100 : packoffset(c128);
  float4 _20_m101 : packoffset(c129);
  float4 _20_m102[2] : packoffset(c130);
  float4 _20_m103[2] : packoffset(c132);
  float _20_m104 : packoffset(c134);
  float _20_m105 : packoffset(c134.y);
  float _20_m106 : packoffset(c134.z);
  float _20_m107 : packoffset(c134.w);
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
  float4 _20_m135 : packoffset(c162);
  float4 _20_m136 : packoffset(c163);
  float4 _20_m137 : packoffset(c164);
  column_major float4x4 _20_m138 : packoffset(c165);
  float4 _20_m139 : packoffset(c169);
  float4 _20_m140 : packoffset(c170);
  float4 _20_m141 : packoffset(c171);
  float4 _20_m142 : packoffset(c172);
  int4 _20_m143 : packoffset(c173);
  int4 _20_m144 : packoffset(c174);
  int4 _20_m145 : packoffset(c175);
  float4 _20_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _21_23 : register(b0, space2) {
  _22 _23_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _32 : register(t53, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _34 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _35_36 : register(b13, space0) {
  float4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c1);
  float4 _36_m2 : packoffset(c2);
  float4 _36_m3 : packoffset(c3);
  float4 _36_m4 : packoffset(c4);
  uint4 _36_m5 : packoffset(c5);
  float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _37_38 : register(b49, space0) {
  int _38_m0 : packoffset(c0);
  int _38_m1 : packoffset(c0.y);
  int _38_m2 : packoffset(c0.z);
  int _38_m3 : packoffset(c0.w);
  int _38_m4 : packoffset(c1);
  int _38_m5 : packoffset(c1.y);
  int _38_m6 : packoffset(c1.z);
  int _38_m7 : packoffset(c1.w);
  float _38_m8 : packoffset(c2);
  float _38_m9 : packoffset(c2.y);
  float _38_m10 : packoffset(c2.z);
  float _38_m11 : packoffset(c2.w);
  float _38_m12 : packoffset(c3);
  float _38_m13 : packoffset(c3.y);
  float _38_m14 : packoffset(c3.z);
  float _38_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _41_42 : register(b14, space0) {
  column_major float4x4 _42_m0[5] : packoffset(c0);
  float4 _42_m1[4] : packoffset(c20);
  float4 _42_m2[4] : packoffset(c24);
  float4 _42_m3[4] : packoffset(c28);
  float4 _42_m4 : packoffset(c32);
  float4 _42_m5 : packoffset(c33);
  float4 _42_m6 : packoffset(c34);
  float4 _42_m7 : packoffset(c35);
  float4 _42_m8 : packoffset(c36);
  float4 _42_m9[27] : packoffset(c37);
  float4 _42_m10 : packoffset(c64);
  float4 _42_m11 : packoffset(c65);
  float4 _42_m12[62] : packoffset(c66);
  column_major float4x4 _42_m13[15] : packoffset(c128);
  float4 _42_m14[15] : packoffset(c188);
  float4 _42_m15[15] : packoffset(c203);
  float4 _42_m16[15] : packoffset(c218);
  float4 _42_m17 : packoffset(c233);
  float4 _42_m18 : packoffset(c234);
  float4 _42_m19[21] : packoffset(c235);
  column_major float4x4 _42_m20 : packoffset(c256);
  column_major float4x4 _42_m21 : packoffset(c260);
  float4 _42_m22 : packoffset(c264);
  float4 _42_m23 : packoffset(c265);
  float4 _42_m24 : packoffset(c266);
  float4 _42_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _46 : register(t52, space0);
[[vk::binding(0, 1)]] cbuffer _57_58 : register(b0, space1) {
  float _58_m0 : packoffset(c0);
  float _58_m1 : packoffset(c0.y);
  float _58_m2 : packoffset(c0.z);
  float _58_m3 : packoffset(c0.w);
  float _58_m4 : packoffset(c1);
  float _58_m5 : packoffset(c1.y);
  float _58_m6 : packoffset(c1.z);
  float _58_m7 : packoffset(c1.w);
  float _58_m8 : packoffset(c2);
  float _58_m9 : packoffset(c2.y);
  float _58_m10 : packoffset(c2.z);
  float _58_m11 : packoffset(c2.w);
  float _58_m12 : packoffset(c3);
  float _58_m13 : packoffset(c3.y);
  float _58_m14 : packoffset(c3.z);
  float _58_m15 : packoffset(c3.w);
  float _58_m16 : packoffset(c4);
  float _58_m17 : packoffset(c4.y);
  float _58_m18 : packoffset(c4.z);
  float _58_m19 : packoffset(c4.w);
  float _58_m20 : packoffset(c5);
  float _58_m21 : packoffset(c5.y);
  float _58_m22 : packoffset(c5.z);
  float _58_m23 : packoffset(c5.w);
  float4 _58_m24 : packoffset(c6);
  float4 _58_m25 : packoffset(c7);
  float4 _58_m26 : packoffset(c8);
  float4 _58_m27 : packoffset(c9);
  float4 _58_m28 : packoffset(c10);
  float4 _58_m29 : packoffset(c11);
  float _58_m30 : packoffset(c12);
  float _58_m31 : packoffset(c12.y);
  float _58_m32 : packoffset(c12.z);
  float _58_m33 : packoffset(c12.w);
  float _58_m34 : packoffset(c13);
  float _58_m35 : packoffset(c13.y);
  float _58_m36 : packoffset(c13.z);
  float _58_m37 : packoffset(c13.w);
  float _58_m38 : packoffset(c14);
  float _58_m39 : packoffset(c14.y);
  float _58_m40 : packoffset(c14.z);
  float _58_m41 : packoffset(c14.w);
  float4 _58_m42 : packoffset(c15);
  float _58_m43 : packoffset(c16);
  float _58_m44 : packoffset(c16.y);
  float _58_m45 : packoffset(c16.z);
  float _58_m46 : packoffset(c16.w);
  float _58_m47 : packoffset(c17);
  float _58_m48 : packoffset(c17.y);
  float _58_m49 : packoffset(c17.z);
  float _58_m50 : packoffset(c17.w);
  float4 _58_m51 : packoffset(c18);
  float _58_m52 : packoffset(c19);
  float _58_m53 : packoffset(c19.y);
  float _58_m54 : packoffset(c19.z);
  float _58_m55 : packoffset(c19.w);
  float4 _58_m56 : packoffset(c20);
  float4 _58_m57 : packoffset(c21);
  float4 _58_m58 : packoffset(c22);
  float4 _58_m59 : packoffset(c23);
  float4 _58_m60 : packoffset(c24);
  float4 _58_m61 : packoffset(c25);
  float _58_m62 : packoffset(c26);
  float _58_m63 : packoffset(c26.y);
  float _58_m64 : packoffset(c26.z);
  float _58_m65 : packoffset(c26.w);
  float _58_m66 : packoffset(c27);
  float _58_m67 : packoffset(c27.y);
  float _58_m68 : packoffset(c27.z);
  float _58_m69 : packoffset(c27.w);
};

[[vk::binding(51, 0)]] cbuffer _66_67 : register(b51, space0) {
  float4 _67_m0[32] : packoffset(c0);
  column_major float4x4 _67_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _25 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _26 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _28 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _30 : register(t47, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _43 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _44 : register(t26, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _47 : register(t41, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _48 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _49 : register(t10, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _51 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _52 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _53 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _54 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _55 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _56 : register(t31, space0);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _60 : register(t4, space1);
[[vk::binding(40, 0)]] Texture2D<float4> _61 : register(t40, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _62 : register(t5, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _63 : register(t2, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _64 : register(t1, space1);
[[vk::binding(28, 0)]] Texture2D<float4> _65 : register(t28, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _70 : register(t37, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static float4 _10;
static float3 _11;
static uint _13;
static float4 _15;
static float4 _16;

struct SPIRV_Cross_Input {
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

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _15 : SV_Target0;
  [[vk::location(1)]] float4 _16 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

uint4 _34_Load4(uint byte_offset) { return asuint(_34[byte_offset >> 4u]); }
void frag_main() {
  float _540 = 1.0f / gl_FragCoord.w;
  if (((gl_FragCoord.z - _30.SampleLevel(_25, gl_FragCoord.xy * _20_m0.zw, 0.0f).x) - 9.9999999747524270787835121154785e-07f) < 0.0f) {
    discard;
  }
  float3 _571 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _572 = dot(_571, _571);
  float _574 = rsqrt(max(_572, 9.9999999392252902907785028219223e-09f));
  float3 _575 = _571 * _574;
  float _576 = _572 * _574;
  uint _579 = asuint(_23_m0[_13]._m2.x);
  bool _584 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _601;
  float4 _602;
  float4 _603;
  if (_584) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xA7691461:
    _601 = asfloat(_34_Load4((_579 + 2u) * 16 + 0));
    _602 = asfloat(_34_Load4((_579 + 1u) * 16 + 0));
    _603 = asfloat(_34_Load4(_579 * 16 + 0));
    */
    _601 = asfloat(_34_Load4((_579 + 2u) * 16 + 0));
    _602 = asfloat(_34_Load4((_579 + 1u) * 16 + 0));
    _603 = asfloat(_34_Load4(_579 * 16 + 0));
    // RenoDX code end
  } else {
    _601 = _23_m0[_13]._m0[2];
    _602 = _23_m0[_13]._m0[1];
    _603 = _23_m0[_13]._m0[0];
  }
  float _609 = 1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z);
  float _619 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(1.0f, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _621 = abs(_619);
  if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _621 : (-_621)), _609 - _619) < 0.0f) {
    discard;
  }
  float4 _635 = _62.SampleBias(_27, _3, _20_m16);
  float3 _640 = _635.xyz * _58_m24.xyz;
  float4 _644 = _63.SampleBias(_27, _3, _20_m16);
  float _645 = _644.x;
  float _646 = _644.y;
  float _647 = _644.z;
  float _651 = _635.w * _58_m24.w;
  if ((_651 - _58_m9) < 0.0f) {
    discard;
  }
  float3 _661 = _4 + _18_m11.xyz;
  float3 _665 = _661 - float3(_603.w, _523, _601.w);
  _665.y = 6.103515625e-05f;
  float3 _668 = normalize(_665);
  float3 _674 = _6.xyz * 1.0f;
  float3 _675 = (cross(_5, _6.xyz) * _6.w) * 1.0f;
  float3 _676 = _5 * 1.0f;
  float3x3 _677 = float3x3(_674, _675, _676);
  float4 _681 = _64.SampleBias(_27, _3, _20_m16);
  float2 _686 = (_681.xy * 2.0f) - 1.0f.xx;
  float3 _687 = float3(_686.x, _686.y, _519.z);
  float2 _688 = _686.xy;
  _687.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_688, _688), 0.0f, 1.0f)));
  float2 _696 = _687.xy * _58_m3;
  float2 _702 = (_681.zw * 2.0f) - 1.0f.xx;
  float3 _703 = float3(_702.x, _702.y, _519.z);
  float2 _704 = _702.xy;
  _703.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_704, _704), 0.0f, 1.0f)));
  float2 _712 = _703.xy * _58_m31;
  float3 _715 = normalize(mul(float3(_712.x, _712.y, _703.z), _677));
  float3 _733 = _640 * _58_m18;
  float3 _737 = lerp(dot(_733, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _733, _58_m19.xxx);
  float4 _747 = _59.Sample(_27, (_3 * _58_m51.xy) + _58_m51.zw);
  float3 _749 = mul(float3(_696.x, _696.y, _687.z), _677);
  float _758 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _58_m5));
  float3 _759 = (_749 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_749, _749)))) * _758;
  float3 _760 = normalize(_5) * _758;
  float3x3 _767 = float3x3(_603.xyz, _602.xyz, _601.xyz);
  float3 _768 = mul(_767, float3(_58_m39, 1.0f, 0.0f));
  float3 _780 = cross(_715, lerp(cross(_715, (_768 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_768, _768)))).xyz), _6.xyz, _645.xxx).xyz) * lerp(1.0f, _6.w, _645);
  float3 _782 = mul(_575, _767);
  float _791 = pow(clamp(dot(normalize(mul(_715, _767).xz), normalize(_782.xz)), 0.0f, 1.0f), _58_m37);
  uint2 _792 = uint2(gl_FragCoord.xy);
  float3 _802 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _811 = asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x);
  float4 _824 = float4(float(_811 & 255u), float((_811 >> 8u) & 255u), float((_811 >> 16u) & 255u), float((_811 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _825 = _824.x;
  float _828 = _824.w;
  float _834 = _661.y;
  float _838 = max(_824.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m92.w, _20_m92.x) - _834) * _824.y);
  float _839 = max(_825, _838);
  float _847 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1342;
  float3 _1343;
  float3 _1344;
  float _1345;
  if (_20_m83.y < 0.5f) {
    float3 _865 = _661 - (_20_m108.xyz + (_802 * (-_20_m110.w)));
    float _880 = max(min(max((max(abs(_865.x), abs(_865.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_865.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1182;
    float4 _1183;
    float4 _1184;
    float _1185;
    float _1186;
    if ((_20_m108.w != 0.0f) && (_880 < 1.0f)) {
      float3 _893 = _661 - (_20_m108.xyz + (_802 * (-_20_m110.y)));
      float _907 = max(clamp((max(abs(_893.x), abs(_893.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_893.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _983;
      float4 _984;
      float4 _985;
      float4 _986;
      if (_907 < 1.0f) {
        float3 _916 = ((_661 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _918 = _916 - floor(_916);
        float4 _922 = _51.SampleLevel(_27, _918, 0.0f);
        float _923 = 1.0f - _907;
        float _927 = _20_m109.y * 0.5f;
        float _932 = _918.x;
        float _933 = clamp(_918.y, _927, 1.0f - _927) * 0.3333333432674407958984375f;
        float _934 = _918.z;
        float4 _937 = _52.SampleLevel(_26, float3(_932, _933, _934), 0.0f);
        float _953 = _922.x;
        float _963 = _922.y;
        float _973 = _922.z;
        _983 = _880 + (_937.w * _923);
        _984 = float4(((_52.SampleLevel(_26, float3(_932, _933 + 0.666666686534881591796875f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _973, _973) * _923;
        _985 = float4(((_52.SampleLevel(_26, float3(_932, _933 + 0.3333333432674407958984375f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _963, _963) * _923;
        _986 = float4(((_937.xyz * 4.0f) - 2.0f.xxx) * _953, _953) * _923;
      } else {
        _983 = _880;
        _984 = 0.0f.xxxx;
        _985 = 0.0f.xxxx;
        _986 = 0.0f.xxxx;
      }
      float3 _992 = _661 - (_20_m108.xyz + (_802 * (-_20_m110.z)));
      float _1006 = max(clamp((max(abs(_992.x), abs(_992.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_992.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1086;
      float4 _1087;
      float4 _1088;
      float4 _1089;
      if (_1006 < 1.0f) {
        float3 _1015 = ((_661 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _1017 = _1015 - floor(_1015);
        float4 _1021 = _53.SampleLevel(_27, _1017, 0.0f);
        float _1023 = _907 * (1.0f - _1006);
        float _1027 = _20_m109.y * 0.5f;
        float _1032 = _1017.x;
        float _1033 = clamp(_1017.y, _1027, 1.0f - _1027) * 0.3333333432674407958984375f;
        float _1034 = _1017.z;
        float4 _1037 = _54.SampleLevel(_26, float3(_1032, _1033, _1034), 0.0f);
        float _1053 = _1021.x;
        float _1064 = _1021.y;
        float _1075 = _1021.z;
        _1086 = _983 + (_1037.w * _1023);
        _1087 = _984 + (float4(((_54.SampleLevel(_26, float3(_1032, _1033 + 0.666666686534881591796875f, _1034), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1075, _1075) * _1023);
        _1088 = _985 + (float4(((_54.SampleLevel(_26, float3(_1032, _1033 + 0.3333333432674407958984375f, _1034), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1064, _1064) * _1023);
        _1089 = _986 + (float4(((_1037.xyz * 4.0f) - 2.0f.xxx) * _1053, _1053) * _1023);
      } else {
        _1086 = _983;
        _1087 = _984;
        _1088 = _985;
        _1089 = _986;
      }
      float4 _1172;
      float4 _1173;
      float4 _1174;
      float _1175;
      if (_1006 > 0.0f) {
        float3 _1098 = ((_661 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _1101 = _20_m109.xyz * 0.5f;
        float3 _1103 = clamp(_1098 - floor(_1098), _1101, 1.0f.xxx - _1101);
        float4 _1107 = _55.SampleLevel(_27, _1103, 0.0f);
        float _1109 = _1006 * (1.0f - _880);
        float _1113 = _20_m109.y * 0.5f;
        float _1118 = _1103.x;
        float _1119 = clamp(_1103.y, _1113, 1.0f - _1113) * 0.3333333432674407958984375f;
        float _1120 = _1103.z;
        float4 _1123 = _56.SampleLevel(_26, float3(_1118, _1119, _1120), 0.0f);
        float _1139 = _1107.x;
        float _1150 = _1107.y;
        float _1161 = _1107.z;
        _1172 = _1087 + (float4(((_56.SampleLevel(_26, float3(_1118, _1119 + 0.666666686534881591796875f, _1120), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1161, _1161) * _1109);
        _1173 = _1088 + (float4(((_56.SampleLevel(_26, float3(_1118, _1119 + 0.3333333432674407958984375f, _1120), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1150, _1150) * _1109);
        _1174 = _1089 + (float4(((_1123.xyz * 4.0f) - 2.0f.xxx) * _1139, _1139) * _1109);
        _1175 = _1086 + (_1123.w * _1109);
      } else {
        _1172 = _1087;
        _1173 = _1088;
        _1174 = _1089;
        _1175 = _1086;
      }
      float _1178 = clamp((_1175 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1182 = _1172;
      _1183 = _1173;
      _1184 = _1174;
      _1185 = _1178 - _880;
      _1186 = (_1178 + _880) * 0.5f;
    } else {
      _1182 = 0.0f.xxxx;
      _1183 = 0.0f.xxxx;
      _1184 = 0.0f.xxxx;
      _1185 = 0.0f;
      _1186 = 1.0f;
    }
    float4 _1206 = _1184 + float4(_20_m111.x * _1186, (_20_m111.y * _1186) + ((_20_m111.w * _1185) * 0.5f), _20_m111.z * _1186, (_20_m111.w * _1186) + ((_20_m111.y * _1185) * 0.375f));
    float4 _1226 = _1183 + float4(_20_m112.x * _1186, (_20_m112.y * _1186) + ((_20_m112.w * _1185) * 0.5f), _20_m112.z * _1186, (_20_m112.w * _1186) + ((_20_m112.y * _1185) * 0.375f));
    float4 _1246 = _1182 + float4(_20_m113.x * _1186, (_20_m113.y * _1186) + ((_20_m113.w * _1185) * 0.5f), _20_m113.z * _1186, (_20_m113.w * _1186) + ((_20_m113.y * _1185) * 0.375f));
    float4 _1250 = float4(_759, 1.0f);
    float3 _1256 = max(float3(dot(_1206, _1250), dot(_1226, _1250), dot(_1246, _1250)), 0.0f.xxx) * _847;
    float3 _1264 = ((_1206.xyz * 0.2125999927520751953125f) + (_1226.xyz * 0.715200006961822509765625f)) + (_1246.xyz * 0.072200000286102294921875f);
    float3 _1268 = _1264 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1264, _1264)));
    float _1270 = abs(_1268.y);
    float3 _1271 = _1268;
    _1271.y = _1270;
    float4 _1272 = float4(_1271.x, _1271.y, _1271.z, 0.0f.xxxx.w);
    _1272.w = 1.0f;
    float4 _1276 = float4(_1268.x, _1270, _1268.z, 1.0f);
    float3 _1281 = max(float3(dot(_1206, _1276), dot(_1226, _1276), dot(_1246, _1276)), 0.0f.xxx);
    float _1289 = _1256.z;
    float _1290 = _1256.y;
    float4 _1295 = lerp(float4(_1289, _1290, -1.0f, 0.666666686534881591796875f), float4(_1290, _1289, 0.0f, -0.3333333432674407958984375f), step(_1289, _1290).xxxx);
    float _1296 = _1256.x;
    float _1297 = _1295.x;
    float4 _1305 = lerp(float4(_1297, _1295.yw, _1296), float4(_1296, _1295.yz, _1297), step(_1297, _1296).xxxx);
    float _1306 = _1305.x;
    float _1307 = _1305.w;
    float _1308 = _1305.y;
    float _1310 = _1306 - min(_1307, _1308);
    float _1320 = frac(abs(_1305.z + ((_1307 - _1308) / ((6.0f * _1310) + 9.9999997473787516355514526367188e-05f))));
    float _1327 = min(_1310 / (_1306 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1320 - 0.5f))) * clamp(_1306, 0.0f, 1.0f));
    float _1329 = 2.0f / (2.0f - _1327);
    _1342 = _1272;
    _1343 = _1256;
    _1344 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1320, _1327, _1329).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1327.xxx) * _1329;
    _1345 = max(max(max(_1281.x, _1281.y), _1281.z), 0.0f) * _847;
  } else {
    _1342 = 0.0f.xxxx;
    _1343 = 1.0f.xxx;
    _1344 = _20_m84.xyz;
    _1345 = _847;
  }
  float3 _2152;
  float _2153;
  float _2154;
  float _2155;
  float _2156;
  float3 _2157;
  float3 _2158;
  [branch] if ((clamp(_825 + _838, 0.0f, 1.0f) - _58_m20) > 0.00999999977648258209228515625f) {
    float _1502;
    bool _1503;
    bool _1372 = (step(_825, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _838)) != 0.0f;
    bool3 _1373 = _584.xxx;
    float3 _1375 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1379 = float3(_1373.x ? _1375.x : _11.x, _1373.y ? _1375.y : _11.y, _1373.z ? _1375.z : _11.z) * _20_m92.z;
    float3 _1389 = float3(0.0f, -1.0f, 0.0f) + (_676 * _676.y);
    float3 _1397 = ((_10.xyz * dot(_1389, _674)) + ((cross(_9, _10.xyz) * _10.w) * dot(_1389, _675))) + (_9 * dot(_1389, _676));
    float3 _1399 = _1397.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1400 = float3(_1373.x ? _1399.x : _1397.x, _1373.y ? _1399.y : _1397.y, _1373.z ? _1399.z : _1397.z);
    bool _1401 = !_1372;
    bool2 _1402 = _1401.xx;
    float2 _1404 = (1.0f - _838).xx;
    float2 _1405 = float2(_1402.x ? float2(3.0f, 4.340000152587890625f).x : _1404.x, _1402.y ? float2(3.0f, 4.340000152587890625f).y : _1404.y);
    float _1408 = 1.0f - ((_1372 ? _838 : _825) * 0.64999997615814208984375f);
    float3 _1416 = frac(floor(((_3.xx * _20_m92.z) * 32.0f) * 1.5f).xyx * 0.103100001811981201171875f);
    float3 _1421 = _1416 + dot(_1416, _1416.yzx + 33.3300018310546875f.xxx).xxx;
    float _1438 = lerp(0.60000002384185791015625f, 1.0f, clamp((1.2000000476837158203125f * frac((_1379.y * (-3.0f)) + frac((_1421.x + _1421.y) * _1421.z))) + clamp(_1379.z * 10.0f, 0.0f, 1.0f), 0.0f, 1.0f));
    float _1439 = 1.0f - _839;
    float _1441 = _1439 + (0.800000011920928955078125f * _839);
    float _1444 = _1401 ? _20_m10.x : 1.0f;
    float _1446 = _1444 * _1405.x;
    float _1448 = _1444 * _1405.y;
    float3 _1449 = _1379 * 32.0f;
    float3 _1450 = _1379 * 48.345600128173828125f;
    float3 _1454 = pow(max(abs(float3(_1373.x ? _9.xzy.x : _9.x, _1373.y ? _9.xzy.y : _9.y, _1373.z ? _9.xzy.z : _9.z)) - 0.20000000298023223876953125f.xxx, 0.0f.xxx), 10.0f.xxx);
    float3 _1458 = _1454 / max(dot(_1454, 1.0f.xxx), 6.103515625e-05f).xxx;
    float2 _1460 = _1400.xz;
    float _1461 = _1458.y;
    float2 _1462 = _1449.xz * 1.0f;
    float2 _1463 = floor(_1462);
    float2 _1466 = frac(_1463 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1470 = _1466 + dot(_1466, _1466 + 34.345001220703125f.xx).xx;
    float _1471 = _1470.x;
    float _1472 = _1470.y;
    float2 _1476 = frac(float2(_1471 * _1472, _1471 + _1472));
    float2 _1479 = frac((_1463 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1483 = _1479 + dot(_1479, _1479 + 34.345001220703125f.xx).xx;
    float _1484 = _1483.x;
    float _1485 = _1483.y;
    float2 _1489 = frac(float2(_1484 * _1485, _1484 + _1485));
    float _1495 = _1476.x;
    float _1498 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1495)) * _1438;
    float2 _1499 = ((_1462 - _1463) + ((((_1489 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1516;
    do {
      _1502 = dot(_1460, _1460);
      _1503 = _1502 <= 9.9999997473787516355514526367188e-06f;
      if (_1503) {
        _1516 = _1499;
        break;
      }
      float2 _1507 = _1460 * rsqrt(_1502);
      _1516 = float2(dot(_1499, float2(-_1507.y, _1507.x)), -dot(_1499, _1507));
      break;
    } while (false);
    float _1599;
    bool _1600;
    float2 _1523 = float2(_1516.x * 1.25f, _1516.y * ((_1516.y < 0.0f) ? 1.25f : 0.75f));
    float _1524 = length(_1523);
    float _1526 = _1446 + _1495;
    float _1530 = _1401 ? frac(_1526) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1526, 0.0f, 1.0f));
    float _1542 = _1476.y;
    float _1545 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1530) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1530)) * step(0.001000000047497451305389404296875f, smoothstep(_1498, 0.0f, _1524))) * step(_1408, _1542 - 0.100000001490116119384765625f);
    float _1548 = _1545 * _1461;
    float2 _1557 = _1400.xy;
    float _1558 = _1458.z;
    float2 _1559 = _1449.xy * 1.0f;
    float2 _1560 = floor(_1559);
    float2 _1563 = frac(_1560 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1567 = _1563 + dot(_1563, _1563 + 34.345001220703125f.xx).xx;
    float _1568 = _1567.x;
    float _1569 = _1567.y;
    float2 _1573 = frac(float2(_1568 * _1569, _1568 + _1569));
    float2 _1576 = frac((_1560 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1580 = _1576 + dot(_1576, _1576 + 34.345001220703125f.xx).xx;
    float _1581 = _1580.x;
    float _1582 = _1580.y;
    float2 _1586 = frac(float2(_1581 * _1582, _1581 + _1582));
    float _1592 = _1573.x;
    float _1595 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1592)) * _1438;
    float2 _1596 = ((_1559 - _1560) + ((((_1586 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1613;
    do {
      _1599 = dot(_1557, _1557);
      _1600 = _1599 <= 9.9999997473787516355514526367188e-06f;
      if (_1600) {
        _1613 = _1596;
        break;
      }
      float2 _1604 = _1557 * rsqrt(_1599);
      _1613 = float2(dot(_1596, float2(-_1604.y, _1604.x)), -dot(_1596, _1604));
      break;
    } while (false);
    float _1696;
    bool _1697;
    float2 _1620 = float2(_1613.x * 1.25f, _1613.y * ((_1613.y < 0.0f) ? 1.25f : 0.75f));
    float _1621 = length(_1620);
    float _1623 = _1446 + _1592;
    float _1627 = _1401 ? frac(_1623) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1623, 0.0f, 1.0f));
    float _1639 = _1573.y;
    float _1642 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1627) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1627)) * step(0.001000000047497451305389404296875f, smoothstep(_1595, 0.0f, _1621))) * step(_1408, _1639 - 0.100000001490116119384765625f);
    float _1645 = _1642 * _1558;
    float2 _1654 = _1400.zy;
    float _1655 = _1458.x;
    float2 _1656 = _1449.zy * 1.0f;
    float2 _1657 = floor(_1656);
    float2 _1660 = frac(_1657 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1664 = _1660 + dot(_1660, _1660 + 34.345001220703125f.xx).xx;
    float _1665 = _1664.x;
    float _1666 = _1664.y;
    float2 _1670 = frac(float2(_1665 * _1666, _1665 + _1666));
    float2 _1673 = frac((_1657 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1677 = _1673 + dot(_1673, _1673 + 34.345001220703125f.xx).xx;
    float _1678 = _1677.x;
    float _1679 = _1677.y;
    float2 _1683 = frac(float2(_1678 * _1679, _1678 + _1679));
    float _1689 = _1670.x;
    float _1692 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1689)) * _1438;
    float2 _1693 = ((_1656 - _1657) + ((((_1683 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1710;
    do {
      _1696 = dot(_1654, _1654);
      _1697 = _1696 <= 9.9999997473787516355514526367188e-06f;
      if (_1697) {
        _1710 = _1693;
        break;
      }
      float2 _1701 = _1654 * rsqrt(_1696);
      _1710 = float2(dot(_1693, float2(-_1701.y, _1701.x)), -dot(_1693, _1701));
      break;
    } while (false);
    float2 _1717 = float2(_1710.x * 1.25f, _1710.y * ((_1710.y < 0.0f) ? 1.25f : 0.75f));
    float _1718 = length(_1717);
    float _1720 = _1446 + _1689;
    float _1724 = _1401 ? frac(_1720) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1720, 0.0f, 1.0f));
    float _1736 = _1670.y;
    float _1739 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1724) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1724)) * step(0.001000000047497451305389404296875f, smoothstep(_1692, 0.0f, _1718))) * step(_1408, _1736 - 0.100000001490116119384765625f);
    float _1742 = _1739 * _1655;
    float2 _1751 = max(float2(_1498 * _1545, _1498 - _1524) * _1461, max(float2(_1595 * _1642, _1595 - _1621) * _1558, float2(_1692 * _1739, _1692 - _1718) * _1655));
    float2 _1756 = (float4(((clamp(_1523 / _1498.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1489.x)) * _1545) * _1461, _1548, _1542).xy + float4(((clamp(_1620 / _1595.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1586.x)) * _1642) * _1558, _1645, _1639).xy) + float4(((clamp(_1717 / _1692.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1683.x)) * _1739) * _1655, _1742, _1736).xy;
    float _1758 = max(_1742, max(_1548, _1645));
    float4 _1761 = float4(_1756, _1758, 0.0f);
    float2 _1763 = _1450.xz * 1.0f;
    float2 _1764 = floor(_1763);
    float2 _1767 = frac(_1764 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1771 = _1767 + dot(_1767, _1767 + 34.345001220703125f.xx).xx;
    float _1772 = _1771.x;
    float _1773 = _1771.y;
    float2 _1777 = frac(float2(_1772 * _1773, _1772 + _1773));
    float2 _1780 = frac((_1764 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1784 = _1780 + dot(_1780, _1780 + 34.345001220703125f.xx).xx;
    float _1785 = _1784.x;
    float _1786 = _1784.y;
    float2 _1790 = frac(float2(_1785 * _1786, _1785 + _1786));
    float _1796 = _1777.x;
    float _1799 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1796)) * _1438;
    float2 _1800 = ((_1763 - _1764) + ((((_1790 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1815;
    do {
      if (_1503) {
        _1815 = _1800;
        break;
      }
      float2 _1806 = _1460 * rsqrt(_1502);
      _1815 = float2(dot(_1800, float2(-_1806.y, _1806.x)), -dot(_1800, _1806));
      break;
    } while (false);
    float2 _1822 = float2(_1815.x * 1.25f, _1815.y * ((_1815.y < 0.0f) ? 1.25f : 0.75f));
    float _1823 = length(_1822);
    float _1825 = _1448 + _1796;
    float _1829 = _1401 ? frac(_1825) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1825, 0.0f, 1.0f));
    float _1841 = _1777.y;
    float _1844 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1829) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1829)) * step(0.001000000047497451305389404296875f, smoothstep(_1799, 0.0f, _1823))) * step(_1408, _1841 - 0.100000001490116119384765625f);
    float _1847 = _1844 * _1461;
    float2 _1856 = _1450.xy * 1.0f;
    float2 _1857 = floor(_1856);
    float2 _1860 = frac(_1857 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1864 = _1860 + dot(_1860, _1860 + 34.345001220703125f.xx).xx;
    float _1865 = _1864.x;
    float _1866 = _1864.y;
    float2 _1870 = frac(float2(_1865 * _1866, _1865 + _1866));
    float2 _1873 = frac((_1857 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1877 = _1873 + dot(_1873, _1873 + 34.345001220703125f.xx).xx;
    float _1878 = _1877.x;
    float _1879 = _1877.y;
    float2 _1883 = frac(float2(_1878 * _1879, _1878 + _1879));
    float _1889 = _1870.x;
    float _1892 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1889)) * _1438;
    float2 _1893 = ((_1856 - _1857) + ((((_1883 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1908;
    do {
      if (_1600) {
        _1908 = _1893;
        break;
      }
      float2 _1899 = _1557 * rsqrt(_1599);
      _1908 = float2(dot(_1893, float2(-_1899.y, _1899.x)), -dot(_1893, _1899));
      break;
    } while (false);
    float2 _1915 = float2(_1908.x * 1.25f, _1908.y * ((_1908.y < 0.0f) ? 1.25f : 0.75f));
    float _1916 = length(_1915);
    float _1918 = _1448 + _1889;
    float _1922 = _1401 ? frac(_1918) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1918, 0.0f, 1.0f));
    float _1934 = _1870.y;
    float _1937 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1922) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1922)) * step(0.001000000047497451305389404296875f, smoothstep(_1892, 0.0f, _1916))) * step(_1408, _1934 - 0.100000001490116119384765625f);
    float _1940 = _1937 * _1558;
    float2 _1949 = _1450.zy * 1.0f;
    float2 _1950 = floor(_1949);
    float2 _1953 = frac(_1950 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1957 = _1953 + dot(_1953, _1953 + 34.345001220703125f.xx).xx;
    float _1958 = _1957.x;
    float _1959 = _1957.y;
    float2 _1963 = frac(float2(_1958 * _1959, _1958 + _1959));
    float2 _1966 = frac((_1950 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1970 = _1966 + dot(_1966, _1966 + 34.345001220703125f.xx).xx;
    float _1971 = _1970.x;
    float _1972 = _1970.y;
    float2 _1976 = frac(float2(_1971 * _1972, _1971 + _1972));
    float _1982 = _1963.x;
    float _1985 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1982)) * _1438;
    float2 _1986 = ((_1949 - _1950) + ((((_1976 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _2001;
    do {
      if (_1697) {
        _2001 = _1986;
        break;
      }
      float2 _1992 = _1654 * rsqrt(_1696);
      _2001 = float2(dot(_1986, float2(-_1992.y, _1992.x)), -dot(_1986, _1992));
      break;
    } while (false);
    float2 _2008 = float2(_2001.x * 1.25f, _2001.y * ((_2001.y < 0.0f) ? 1.25f : 0.75f));
    float _2009 = length(_2008);
    float _2011 = _1448 + _1982;
    float _2015 = _1401 ? frac(_2011) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_2011, 0.0f, 1.0f));
    float _2027 = _1963.y;
    float _2030 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _2015) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _2015)) * step(0.001000000047497451305389404296875f, smoothstep(_1985, 0.0f, _2009))) * step(_1408, _2027 - 0.100000001490116119384765625f);
    float _2033 = _2030 * _1655;
    float2 _2047 = (float4(((clamp(_1822 / _1799.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1790.x)) * _1844) * _1461, _1847, _1841).xy + float4(((clamp(_1915 / _1892.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1883.x)) * _1937) * _1558, _1940, _1934).xy) + float4(((clamp(_2008 / _1985.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1976.x)) * _2030) * _1655, _2033, _2027).xy;
    float4 _2052 = float4(_2047, max(_2033, max(_1847, _1940)), 0.0f);
    float _2054 = step(_1751.x, 0.00999999977648258209228515625f);
    float2 _2067 = max(_1751, (max(float2(_1799 * _1844, _1799 - _1823) * _1461, max(float2(_1892 * _1937, _1892 - _1916) * _1558, float2(_1985 * _2030, _1985 - _2009) * _1655)) * float2(0.661900997161865234375f, 1.0f)) * _2054);
    float _2072 = clamp(dot(_575, _759), 0.0f, 1.0f);
    float _2081 = max(_1761.zw * step(0.00999999977648258209228515625f, _1758), _2052.zw * _2054).x * (_2072 * lerp(0.4000000059604644775390625f, 1.0f, smoothstep(0.0f, 4.0f, abs(_18_m2[1].y) / _576)));
    float2 _2082 = (_1761.xy + (_2052.xy * _2054)).xy;
    float3 _2093 = normalize(float3(_2082 * (2.5f * _2072), max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2082, _2082), 0.0f, 1.0f)))));
    float3 _2094 = float3(_2093.x, _2093.y, 0.0f.xxx.z);
    float2 _2095 = _2093.xy;
    _2094.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2095, _2095), 0.0f, 1.0f)));
    float3 _2102 = normalize(_2094);
    float3 _2103 = cross(_759, float3(0.0f, 1.0f, 0.0f));
    bool3 _2106 = (dot(_2103, _2103) > 6.103515625e-05f).xxx;
    float3 _2107 = normalize(_2103);
    float3 _2108 = float3(_2106.x ? _2107.x : float3(1.0f, 0.0f, 0.0f).x, _2106.y ? _2107.y : float3(1.0f, 0.0f, 0.0f).y, _2106.z ? _2107.z : float3(1.0f, 0.0f, 0.0f).z);
    float _2112 = _2102.y;
    float _2119 = _2067.x * 4.0f;
    float _2129 = clamp(dot(_2102, normalize(float3(0.0f, -1.0f, 0.75f))), 0.0f, 1.0f);
    float _2135 = (0.60000002384185791015625f * _2081) * _2119;
    float _2138 = (1.0f - _2135) + (clamp(clamp(clamp(_2067.y * 17.54000091552734375f, 0.0f, 1.0f), 0.0f, 1.0f) + clamp(1.60000002384185791015625f * _2112, 0.0f, 1.0f), 0.0f, 1.0f) * _2135);
    float _2141 = smoothstep(0.60000002384185791015625f, 1.0f, _2138);
    _2152 = normalize(((_2108 * _2102.x) + (cross(_2108, _759) * _2112)) + (_759 * _2102.z));
    _2153 = _1439 + (2.0f * _839);
    _2154 = _2081 * _2119;
    _2155 = ((lerp(0.0500000007450580596923828125f, 1.7999999523162841796875f, (_2129 * _2129) * _2129) * _2119) * _2141) * _2081;
    _2156 = lerp(1.0f, 0.800000011920928955078125f * lerp(0.5f, 1.0f, _2141), _2081);
    _2157 = (_737 * _2138) * _1441;
    _2158 = (_640 * _2138) * _1441;
  }
  else {
    _2152 = _759;
    _2153 = 1.0f;
    _2154 = 0.0f;
    _2155 = 0.0f;
    _2156 = 1.0f;
    _2157 = _737;
    _2158 = _640;
  }
  float3 _2273;
  float3 _2274;
  float3 _2275;
  float _2276;
  [branch] if ((_828 - _58_m20) > 0.00999999977648258209228515625f) {
    bool3 _2163 = _584.xxx;
    float3 _2165 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _2166 = float3(_2163.x ? _2165.x : _11.x, _2163.y ? _2165.y : _11.y, _2163.z ? _2165.z : _11.z);
    float3 _2169 = _2166 * _20_m92.z;
    float3 _2171 = float3(_2163.x ? _9.xzy.x : _9.x, _2163.y ? _9.xzy.y : _9.y, _2163.z ? _9.xzy.z : _9.z);
    float3 _2173 = abs(_2171) - 0.20000000298023223876953125f.xxx;
    float3 _2176 = max((_2173 * _2173) * _2173, 6.103515625e-05f.xxx);
    float3 _2179 = _2176 / dot(_2176, 1.0f.xxx).xxx;
    float4 _2202 = ((_61.SampleBias(_27, _2169.xz, _20_m16) * _2179.y) + (_61.SampleBias(_27, _2169.xy, _20_m16) * _2179.z)) + (_61.SampleBias(_27, _2169.zy, _20_m16) * _2179.x);
    float _2210 = clamp(_828 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _2166.y) * clamp(_828 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _2216 = _2210 * (2.0f - _2210);
    float _2223 = smoothstep(2.0f - _2216, 2.349999904632568359375f - _2216, ((_2171.y * 0.4000000059604644775390625f) + 0.60000002384185791015625f) + _2202.z) * ((_647 * _647) * float(gl_FrontFacing));
    float3 _2225 = _2223.xxx;
    float2 _2231 = (_2202.xy * 2.0f) - 1.0f.xx;
    float3 _2232 = float3(_2231.x, _2231.y, _519.z);
    float2 _2233 = _2231.xy;
    _2232.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2233, _2233), 0.0f, 1.0f)));
    float2 _2241 = _2232.xy * 2.0f;
    float3 _2243 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2241.x, _2241.y, _2232.z), _2225);
    float3 _2247 = _2243 * rsqrt(max(6.103515625e-05f, dot(_2243, _2243)));
    float _2248 = _759.y;
    float _2251 = step(0.00999999977648258209228515625f, 1.0f - (_2248 * _2248));
    float _2255 = lerp(_759.z, _2248, _2251);
    float3 _2262 = (float3(0.0f, _2251, 1.0f - _2251) - (_759 * _2255)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2255 * _2255)));
    _2273 = ((cross(_2262, _759) * _2247.x) + (_2262 * _2247.y)) + (_759 * _2247.z);
    _2274 = lerp(_2157 * 1.0f, 0.3079999983310699462890625f.xxx, _2225);
    _2275 = lerp(_2158 * 1.0f, 0.87999999523162841796875f.xxx, _2225);
    _2276 = lerp(0.0f, 0.0f, _2223);
  }
  else {
    _2273 = _759;
    _2274 = _2157;
    _2275 = _2158;
    _2276 = 0.0f;
  }
  float _2278 = 0.959999978542327880859375f - (_2276 * 0.959999978542327880859375f);
  float3 _2279 = _2275 * _2278;
  float3 _2282 = lerp(0.039999999105930328369140625f.xxx * _646, _2275, _2276.xxx);
  float3 _2283 = _2274 * _2278;
  bool _2284 = _609 < 0.9900000095367431640625f;
  float2 _2297 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2297.y = -_2297.y;
  float2 _2313 = lerp(((sqrt(sqrt(abs(_2297 * 0.5f))) * float2(int2(sign(_2297)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2284).xx);
  float4 _2315 = float4(_2313.x, _2313.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2315.z = 1.0f;
  _2315.w = _2284 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2328 = lerp(-_36_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _2332 = normalize(float3(_2328.x, 6.103515625e-05f, _2328.z));
  float3 _2342 = lerp(_36_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _2348 = _2342 * lerp(_36_m3.w, _20_m87.w, _20_m94.w);
  float _2475;
  do {
    float _2357 = log2(float(asuint(_23_m0[_13]._m2.z))) - 8.0f;
    float _2474;
    if ((_2357 >= 0.0f) && (_2357 < _42_m18.z)) {
      int _2365 = int(_2357);
      float _2371 = 1.0f - clamp(dot(_760, _42_m15[_2365].xyz), 0.0f, 0.89999997615814208984375f);
      float4 _2388 = mul(_42_m13[_2365], float4((_661 - (_42_m15[_2365].xyz * (_2371 * _42_m14[_2365].x))) + (_760 * (_2371 * _42_m14[_2365].y)), 1.0f));
      float _2390 = max(_2388.z, 0.00999999977648258209228515625f);
      float4 _2391 = _2388;
      _2391.z = _2390;
      bool3 _2393 = bool3(_2391.xyz.x <= 0.0f.xxx.x, _2391.xyz.y <= 0.0f.xxx.y, _2391.xyz.z <= 0.0f.xxx.z);
      bool3 _2394 = bool3(_2391.xyz.x >= 1.0f.xxx.x, _2391.xyz.y >= 1.0f.xxx.y, _2391.xyz.z >= 1.0f.xxx.z);
      if (any(bool3(_2393.x || _2394.x, _2393.y || _2394.y, _2393.z || _2394.z)) || ((asuint(_2390) & 2147483647u) > 2139095040u)) {
        _2475 = 1.0f;
        break;
      }
      float _2415 = 4.0f * _42_m17.x;
      float2 _2416 = (_42_m16[_2365].xy + (_2391.xy * _42_m16[_2365].zw)).xy;
      int2 _2418 = int2(_792 % uint2(4u, 4u));
      int _2422 = (_2418.x * 4) + _2418.y;
      float2x2 _2429 = float2x2(_493[_2422], float2(-_493[_2422].y, _493[_2422].x));
      float _2431;
      float _2434;
      _2431 = 0.0f;
      _2434 = 0.0f;
      for (uint _2436 = 0u; _2436 < 16u;) {
        float4 _2448 = _47.GatherRed(_26, _2416 + (mul(_492[_2436], _2429) * _2415)) - _2390.xxxx;
        float4 _2449 = step(0.0f.xxxx, _2448);
        _2431 += dot(_2448, _2449);
        _2434 += dot(_2449, 1.0f.xxxx);
        _2436++;
        continue;
      }
      float _2460 = (2.0f * clamp(_2434 * 0.015625f, 0.0f, 1.0f)) - 1.0f;
      float _2463 = float(int(sign(_2460)));
      float _2465 = 1.0f - (_2463 * _2460);
      _2474 = min(1.0f, 0.5f - (0.5f * ((1.0f - lerp((_2465 * _2465) * _2465, _2465, clamp((_2431 * (1.0f / _2434)) * (1.0f / _2390), 0.0f, 1.0f))) * _2463)));
    } else {
      _2474 = 1.0f;
    }
    _2475 = _2474;
    break;
  } while (false);
  float2 _2974;
  do {
    if (_42_m7.w >= 0.9900000095367431640625f) {
      _2974 = float2(_42_m7.z, 1.0f);
      break;
    }
    int _2488 = int(_42_m7.x);
    bool3 _2490 = (_2488 == 2).xxx;
    float3 _2495 = _661 - float3(_2490.x ? _42_m1[0].xyz.x : _18_m11.xyz.x, _2490.y ? _42_m1[0].xyz.y : _18_m11.xyz.y, _2490.z ? _42_m1[0].xyz.z : _18_m11.xyz.z);
    float _2506 = max(clamp((_42_m6.w - dot(_2495, _2495)) * _42_m6.z, 0.0f, 1.0f), _42_m8.x);
    float _2694;
    bool _2695;
    if (_2506 > 0.0f) {
      float _2692;
      bool _2693;
      if (_2488 > 0) {
        float3 _2513 = _661 - _42_m1[0].xyz;
        float3 _2517 = _661 - _42_m1[1].xyz;
        float3 _2521 = _661 - _42_m1[2].xyz;
        float3 _2525 = _661 - _42_m1[3].xyz;
        float4 _2530 = float4(dot(_2513, _2513), dot(_2517, _2517), dot(_2521, _2521), dot(_2525, _2525));
        float4 _2539 = float4(_42_m1[0].w, _42_m1[1].w, _42_m1[2].w, _42_m1[3].w);
        float4 _2541 = float4(bool4(_2530.x < _2539.x, _2530.y < _2539.y, _2530.z < _2539.z, _2530.w < _2539.w));
        float3 _2545 = clamp(_2541.yzw - _2541.xyz, 0.0f.xxx, 1.0f.xxx);
        float _2552 = max(clamp(4.0f - dot(float4(_2541.x, _2545.x, _2545.y, _2545.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _42_m6.y);
        float4 _2559 = mul(_42_m0[uint(_2552)], float4(_661.x, _834, _661.z, 1.0f));
        float _2562 = _2559.z;
        float4 _2563 = float4(_2559.xy, _2562, _2552);
        float3 _2564 = _2563.xyz;
        bool3 _2565 = bool3(_2564.x <= 0.0f.xxx.x, _2564.y <= 0.0f.xxx.y, _2564.z <= 0.0f.xxx.z);
        bool3 _2566 = bool3(_2564.x >= 1.0f.xxx.x, _2564.y >= 1.0f.xxx.y, _2564.z >= 1.0f.xxx.z);
        bool _2572 = any(bool3(_2565.x || _2566.x, _2565.y || _2566.y, _2565.z || _2566.z)) || ((asuint(_2562) & 2147483647u) > 2139095040u);
        int _2573 = int(_2552);
        float2 _2590 = float4(_42_m3[_2573].xy + (_2563.xy * _42_m3[_2573].zw), _2562, _2552).xy * _42_m4.zw;
        float2 _2592 = floor(_2590 + 0.5f.xx);
        float2 _2593 = _2590 - _2592;
        float _2594 = _2593.x;
        float _2595 = _2594 + 0.5f;
        float _2597 = (_2595 * _2595) * 0.5f;
        float _2600 = min(_2594, 0.0f);
        float _2604 = max(_2594, 0.0f);
        float4 _2608 = float4(_2597 - _2594, (1.0f - _2594) - (_2600 * _2600), (_2594 + 1.0f) - (_2604 * _2604), _2597) * 0.44444000720977783203125f;
        float _2609 = _2593.y;
        float _2610 = _2609 + 0.5f;
        float _2612 = (_2610 * _2610) * 0.5f;
        float _2615 = min(_2609, 0.0f);
        float _2619 = max(_2609, 0.0f);
        float4 _2623 = float4(_2612 - _2609, (1.0f - _2609) - (_2615 * _2615), (_2609 + 1.0f) - (_2619 * _2619), _2612) * 0.44444000720977783203125f;
        float2 _2625 = _2608.yw;
        float2 _2626 = _2608.xz + _2625;
        float2 _2628 = _2623.yw;
        float2 _2629 = _2623.xz + _2628;
        float2 _2635 = ((_2625 / _2626) + float2(-1.5f, 0.5f)) * _42_m4.xx;
        float2 _2637 = ((_2628 / _2629) + float2(-1.5f, 0.5f)) * _42_m4.yy;
        float2 _2639 = _2592 * _42_m4.xy;
        float _2640 = _2635.x;
        float _2641 = _2637.x;
        float _2644 = _2635.y;
        float _2647 = _2637.y;
        float _2652 = _2626.x;
        float _2653 = _2629.x;
        float _2655 = _2626.y;
        float _2657 = _2629.y;
        _2692 = _2572 ? 1.0f : (((((_2652 * _2653) * _43.SampleCmpLevelZero(_28, float3(_2639 + float2(_2640, _2641), _517).xy, _2562)) + ((_2655 * _2653) * _43.SampleCmpLevelZero(_28, float3(_2639 + float2(_2644, _2641), _517).xy, _2562))) + ((_2652 * _2657) * _43.SampleCmpLevelZero(_28, float3(_2639 + float2(_2640, _2647), _517).xy, _2562))) + ((_2655 * _2657) * _43.SampleCmpLevelZero(_28, float3(_2639 + float2(_2644, _2647), _517).xy, _2562)));
        _2693 = _2572;
      } else {
        _2692 = 1.0f;
        _2693 = false;
      }
      _2694 = _2692;
      _2695 = _2693;
    } else {
      _2694 = 1.0f;
      _2695 = false;
    }
    float _2892;
    float _2893;
    if ((_2506 < 1.0f) || (_42_m8.x > 0.5f)) {
      float _2703 = 1.0f - clamp(dot(_760, _36_m0.xyz), 0.0f, 0.89999997615814208984375f);
      float4 _2720 = float4((_661 - (_36_m0.xyz * (_2703 * _42_m22.x))) + (_760 * (_2703 * _42_m22.y)), 1.0f);
      float4 _2721 = mul(_42_m21, _2720);
      float2 _2722 = _2721.xy;
      float _2890;
      if (all(bool2(_2722.x > 0.0f.xx.x, _2722.y > 0.0f.xx.y)) && all(bool2(_2722.x < 1.0f.xx.x, _2722.y < 1.0f.xx.y))) {
        uint _2741 = clamp(uint((floor(_2721.y * _42_m23.z) + _2721.x) * _42_m23.y), 0u, 127u);
        uint _2745 = asuint(_42_m25[_2741].x);
        float2 _2746 = spvUnpackHalf2x16(_2745);
        float _2747 = _2746.x;
        float _2889;
        if (_2747 >= 0.0f) {
          float4x4 _2756 = _42_m20;
          _2756[0].w = _42_m25[_2741].y;
          _2756[1].w = _42_m25[_2741].z;
          _2756[2].w = _42_m25[_2741].w;
          float4 _2763 = mul(_2756, _2720);
          float3 _2764 = _2763.xyz;
          float _2888;
          if (all(bool3(_2764.x > 0.0f.xxx.x, _2764.y > 0.0f.xxx.y, _2764.z > 0.0f.xxx.z)) && all(bool3(_2764.x < 1.0f.xxx.x, _2764.y < 1.0f.xxx.y, _2764.z < 1.0f.xxx.z))) {
            float2 _2776 = (_2763.xy * _42_m22.zw) + float2(_2747, spvUnpackHalf2x16(_2745 >> 16u).x);
            float _2781 = _2763.z;
            float2 _2787 = float4(_2776, _2781, 1.0f).xy * _42_m24.zw;
            float2 _2789 = floor(_2787 + 0.5f.xx);
            float2 _2790 = _2787 - _2789;
            float _2791 = _2790.x;
            float _2792 = _2791 + 0.5f;
            float _2794 = (_2792 * _2792) * 0.5f;
            float _2797 = min(_2791, 0.0f);
            float _2801 = max(_2791, 0.0f);
            float4 _2805 = float4(_2794 - _2791, (1.0f - _2791) - (_2797 * _2797), (_2791 + 1.0f) - (_2801 * _2801), _2794) * 0.44444000720977783203125f;
            float _2806 = _2790.y;
            float _2807 = _2806 + 0.5f;
            float _2809 = (_2807 * _2807) * 0.5f;
            float _2812 = min(_2806, 0.0f);
            float _2816 = max(_2806, 0.0f);
            float4 _2820 = float4(_2809 - _2806, (1.0f - _2806) - (_2812 * _2812), (_2806 + 1.0f) - (_2816 * _2816), _2809) * 0.44444000720977783203125f;
            float2 _2822 = _2805.yw;
            float2 _2823 = _2805.xz + _2822;
            float2 _2825 = _2820.yw;
            float2 _2826 = _2820.xz + _2825;
            float2 _2832 = ((_2822 / _2823) + float2(-1.5f, 0.5f)) * _42_m24.xx;
            float2 _2834 = ((_2825 / _2826) + float2(-1.5f, 0.5f)) * _42_m24.yy;
            float2 _2836 = _2789 * _42_m24.xy;
            float _2837 = _2832.x;
            float _2838 = _2834.x;
            float _2841 = _2832.y;
            float _2844 = _2834.y;
            _2888 = ((((_2823.x * _2826.x) * _49.SampleCmpLevelZero(_28, float3(_2836 + float2(_2837, _2838), _517).xy, _2781)) + ((_2823.y * _2826.x) * _49.SampleCmpLevelZero(_28, float3(_2836 + float2(_2841, _2838), _517).xy, _2781))) + ((_2823.x * _2826.y) * _49.SampleCmpLevelZero(_28, float3(_2836 + float2(_2837, _2844), _517).xy, _2781))) + ((_2823.y * _2826.y) * _49.SampleCmpLevelZero(_28, float3(_2836 + float2(_2841, _2844), _517).xy, _2781));
          } else {
            _2888 = 1.0f;
          }
          _2889 = _2888;
        } else {
          _2889 = 1.0f;
        }
        _2890 = _2889;
      } else {
        _2890 = 1.0f;
      }
      _2892 = _2695 ? _2890 : _2694;
      _2893 = _2890;
    } else {
      _2892 = _2694;
      _2893 = 1.0f;
    }
    float _2896 = lerp(lerp(_2893, _2892, _2506), min(_2893, _2892), _42_m8.x);
    float _2969;
    if (_2896 > 0.001000000047497451305389404296875f) {
      float3 _2931 = _661 - _20_m65.xyz;
      float2 _2936 = (_2931 + (_20_m68.xyz * _2931.y)).xz * _20_m66.z;
      float2 _2937 = _20_m67.xy * _20_m77.w;
      float3 _2944 = _661 - _20_m69.xyz;
      float2 _2952 = _20_m69.w.xx;
      float4 _2959 = _48.SampleLevel(_27, lerp(_2936 * _20_m67.w, (_2944 + (_20_m68.xyz * _2944.y)).xz * _20_m70.x, _2952) + lerp(_2937, _20_m70.yz * _20_m77.w, _2952), 0.0f);
      _2969 = _2896 * lerp(1.0f, lerp(_48.SampleLevel(_27, _2936 + _2937, 0.0f).x, lerp(_2959.x, _2959.y, _20_m69.w), smoothstep(_20_m66.x, _20_m66.y, length(_2931.xz))), _20_m67.z);
    } else {
      _2969 = _2896;
    }
    _2974 = float2(lerp(_2969, _42_m7.z, _42_m7.w), _2969);
    break;
  } while (false);
  float _2978 = lerp(1.0f, _2475, _42_m6.x);
  float _2982 = lerp(lerp(1.0f, _2974.x, _42_m6.x), 1.0f, _20_m83.z);
  float _2983 = dot(_2273, _2328);
  float3 _2990 = _2283 * _20_m82.z;
  float3 _2991 = _2990 * 0.64999997615814208984375f;
  float _2995 = dot(_2279, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _3008 = clamp(-dot(_2332.xz, normalize(_802.xz)), 0.0f, 1.0f);
  float _3012 = 1.0f - _20_m94.x;
  float4 _3026 = _60.SampleLevel(_26, float2((clamp(lerp(_2983, ((-_2983) * ((_2983 * 0.5f) - 1.0f)) + 0.5f, (_3008 * smoothstep(0.25f, 0.75f, 1.0f - abs(_802.y))) * _3012) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _3027 = _3026.w;
  float _3029 = _3026.x;
  float _3030 = _3026.y;
  float _3031 = _3026.z;
  float _3036 = max(max(_3029, _3030), _3031) - min(min(_3029, _3030), _3031);
  float4 _3044 = _60.SampleLevel(_26, float2((dot(_2273, _802) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _3045 = _3044.w;
  float _3046 = _647 * _2978;
  float _3053 = min(min(_2978, _647), _3027);
  float _3054 = _3045 * _3046;
  float3 _3058 = ((clamp(dot(_759, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1344, 1.0f.xxx, (_20_m83.y * _3053).xxx);
  float3 _3060 = _3053.xxx;
  float3 _3083 = _2982.xxx;
  float3 _3084 = lerp((_3058 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1345), 1.5f), clamp(_1345, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_2348, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2348, _3060) + ((_3058 * clamp(_1345, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_2342 * _20_m94.y)))) * _20_m82.y, _3083);
  float3 _3085 = lerp(lerp(lerp(dot(_2991, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2991, 1.2000000476837158203125f.xxx), _2990, clamp((_3046 * _3045) + _3027, 0.0f, 1.0f).xxx), _2279, _3060);
  float3 _3091 = _3085 * ((1.0f - _3036).xxx + (_3026.xyz * _3036));
  float3 _3100 = lerp(lerp(_2990, lerp(_2995.xxx, _2279, 1.2000000476837158203125f.xxx), _3054.xxx), _3091 * clamp(dot(_3085, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_3091, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _3083);
  float4 _3104 = float4(_3100, _2982);
  float _3106 = lerp(_3054, _3053, _2982);
  float3 _3112 = (_3084 * (((_3106 * 0.5f) + 0.5f) * lerp(_20_m82.z, 1.0f, _3106))) * 1.0f;
  float _3115 = lerp(0.5f, _2328.y, _2982);
  float3 _3118 = mul(_767, float3(_782.x, _3115, _782.z));
  float3 _3120 = _2328 * _2982;
  float3 _3126 = normalize(_780 + (_715 * ((_58_m34 * 2.0f) - 1.0f)));
  float3 _3127 = normalize(_3120 + (float3(_3118.x, _3118.y, _3118.z) * 2.0f)) + _575;
  float3 _3131 = _3127 * rsqrt(max(6.103515625e-05f, dot(_3127, _3127)));
  float _3132 = dot(_3126, _3131);
  float3 _3139 = pow(max(sqrt(1.0f - (_3132 * _3132)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _791;
  float _3144 = max(max(_3139.x, _3139.y), _3139.z);
  float _3160 = dot(normalize(_780 + (_715 * ((_58_m35 * 2.0f) - 1.0f))), _3131);
  float _3200 = dot(normalize(_780 + (_715 * ((2.0f * _58_m44) - 1.0f))), _3131);
  float _3214 = lerp(1.0f, lerp(1.0f, lerp(lerp(1.0f - _58_m46, 1.0f, lerp(ceil(clamp(frac(_3.x * _58_m43) - 0.5f, 0.0f, 1.0f)), 1.0f - _747.x, _58_m48)), 1.0f, _3144), clamp(pow(max(sqrt(1.0f - (_3200 * _3200)), 9.9999997473787516355514526367188e-05f), float(int(200.0f * max(1.0f - _58_m45, 0.0f)))), 0.0f, 1.0f)), _646);
  float3 _3218 = ((((((_3139 * _2282) * _58_m36) * 5.0f) * _2153) + lerp(((pow(max(sqrt(1.0f - (_3160 * _3160)), 9.9999997473787516355514526367188e-05f), float(int(200.0f * max(1.0f - _58_m38, 0.0f)))).xxx * _791) * (_58_m42.xyz * _644.w)) * _2153, 0.0f.xxx, _3144.xxx)) * _3112) * _20_m95.w;
  float3 _3222 = (_3084 * _3100) * _3214;
  float3 _3226 = lerp(dot(_3222, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3222, lerp(_58_m47, 1.0f, _3214).xxx);
  float3 _3232 = float3(_802.x, _3115, _802.z);
  float3 _3242 = normalize((_3120 + ((_3232 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3232, _3232)))) * 2.0f)) + (_575 * (2.0f + _2982)));
  float3 _3247 = normalize(float3(-_2152.z, 0.001000000047497451305389404296875f, _2152.x));
  float _3269 = (1.0f - _58_m6) + (_651 * _58_m6);
  float3 _3271 = (_3226 * _3269) + ((_3218 * _2156) + (((_3226 + _3218) * _2155) + (((((smoothstep(0.1500000059604644775390625f, 0.100000001490116119384765625f, abs(dot(_3242, _3247))) * smoothstep(0.070000000298023223876953125f, 0.0199999995529651641845703125f, abs(dot(_3242, cross(_2152, _3247))))) * max(0.0f, dot(_2152, _3242))) * 2.0f) * _2154).xxx * _3112)));
  float _3272 = dot(_3271, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _3275 = clamp(_3272 - 0.5f, 0.0f, 0.5f);
  float3 _3311 = normalize(cross(_802, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float _3317 = dot(_575, _2273);
  float _3319 = 1.0f - abs(_3317);
  float _3341 = dot(_2332, _2273);
  float _3353 = 1.0f - _2982;
  float3 _3380 = lerp(_3272.xxx, _3271, ((_3275 * _3275) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m91.w), lerp(0.89999997615814208984375f, 0.5f, _20_m91.w), _3319)) * _20_m90.w) * min(min(clamp(dot(_668, _3311) + 1.0f, 0.0f, 1.0f), _647), _2978)) * (lerp(0.25f.xxx, _2279, _20_m91.z.xxx) * clamp(dot(_3311, _2273), 0.0f, 1.0f))) + ((((((lerp(_1343 * (1.0f / max(max(max(_1343.x, _1343.y), _1343.z) * 0.5f, 1.0f)), _2348, _3083) * clamp(lerp(dot(_1342.xyz, _2273) * _1342.w, ((-_3341) * ((_3341 * 0.5f) - 1.0f)) + 0.5f, _2982), 0.0f, 1.0f)) * ((_3353 + (_3008 * _2982)) * _3012)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _3319)) * min(_647, _2978)) * (_3353 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2995) * _2982))) * max(0.1500000059604644775390625f.xxx, _2279)));
  float2 _3381 = float2(_792);
  float2 _3383 = floor(_3381 * 0.03125f);
  int _3391 = int((_3383.x + (_3383.y * _38_m9)) * 8.0f);
  float _3398 = floor(_540 - (_20_m3.y * _38_m15));
  float _3402 = clamp(_3398, 0.0f, _38_m11 - 1.0f);
  int _3404 = int(_3402 * 8.0f);
  float3 _3406;
  _3406 = _3380;
  float3 _3407;
  [loop] for (int _3409 = 0; _3409 <= 7; _3406 = _3407, _3409++) {
    uint _3430 = (_3398 <= _3402) ? (_32.Load(uint((_38_m2 + _3391) + _3409) * 4 + 0) & _32.Load(uint((_38_m3 + _3404) + _3409) * 4 + 0)) : 0u;
    uint _3431 = uint(_3409);
    _3407 = _3406;
    uint _3436;
    float3 _3433;
    [loop] for (uint _3435 = _3430; _3435 != 0u; _3407 = _3433, _3435 = _3436) {
      uint _3440 = firstbitlow(_3435);
      _3436 = _3435 ^ (1u << (_3440 & 31u));
      int _3446 = int((32u * _3431) + _3440) * 8;
      int _3449 = _3446 + 1;
      int _3452 = _3446 + 2;
      int _3455 = _3446 + 3;
      int _3458 = _3446 + 4;
      int _3461 = _3446 + 5;
      int _3464 = _3446 + 6;
      int _3467 = _3446 + 7;
      uint _3471 = uint(_36_m6[_3461].w);
      float _3546;
      if ((_3471 & 1u) == 1u) {
        uint _3477 = asuint(_36_m6[_3461].x);
        uint _3484 = asuint(_36_m6[_3461].y);
        uint _3491 = asuint(_36_m6[_3461].z);
        uint _3498 = asuint(_36_m6[_3464].x);
        uint _3505 = asuint(_36_m6[_3464].y);
        uint _3512 = asuint(_36_m6[_3464].z);
        float3 _3531 = abs(mul(float4(_661 - _36_m6[_3449].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_3477).x, spvUnpackHalf2x16(_3491).x, spvUnpackHalf2x16(_3505).x, 0.0f), float4(spvUnpackHalf2x16(_3477 >> 16u).x, spvUnpackHalf2x16(_3491 >> 16u).x, spvUnpackHalf2x16(_3505 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_3484).x, spvUnpackHalf2x16(_3498).x, spvUnpackHalf2x16(_3512).x, 0.0f), float4(spvUnpackHalf2x16(_3484 >> 16u).x, spvUnpackHalf2x16(_3498 >> 16u).x, spvUnpackHalf2x16(_3512 >> 16u).x, 0.0f))).xyz);
        float _3538 = _36_m6[_3467].x * 0.5f;
        float _3544 = 1.0f - clamp((max(max(_3531.x, _3531.y), _3531.z) - (_3538 + 0.5f)) / (0.5f - _3538), 0.0f, 1.0f);
        _3546 = _3544 * _3544;
      } else {
        _3546 = 1.0f;
      }
      if (false || (_3546 < 0.001000000047497451305389404296875f)) {
        _3433 = _3407;
        continue;
      }
      float3 _4317;
      do {
        uint _3554 = uint(_36_m6[_3446].w);
        [branch] if (_3554 >= 4u) {
          _4317 = _3407;
          break;
        }
        float3 _4316;
        if (_36_m6[_3446].w < 1.5f) {
          float3 _4315;
          do {
            uint _3565 = asuint(_36_m6[_3455].w);
            if ((_3565 == 16u) || ((_36_m6[_3455].z + _20_m94.z) < 0.5f)) {
              _4315 = _3407;
              break;
            }
            bool _3576 = (_3554 & 1u) == 0u;
            bool _3580 = (!_3576) && (_36_m6[_3452].z > 0.0f);
            bool _3581 = _3565 == 4u;
            float _3582 = float(_3576);
            float _3590 = (0.5f + (0.5f * _36_m6[_3452].y)) - abs(_36_m6[_3452].x);
            float _3591 = _36_m6[_3452].y - _3590;
            float _3598 = abs(max((1.0f - abs(_3590)) - abs(_3591), 0.00048828125f));
            float3 _3602 = normalize(float3(_3590, _3591, (_36_m6[_3452].x >= 0.0f) ? _3598 : (-_3598)));
            float _3608 = lerp(_36_m6[_3464].w, max(2.0f * _36_m6[_3458].y, 0.100000001490116119384765625f), float(_3581));
            float3 _3613 = _36_m6[_3449].xyz - _661;
            float3 _3614 = -_3602;
            float3 _3619 = lerp(_3613, _3614 * dot(_3613, _3614), (float(_3581 && (_36_m6[_3458].z > 0.5f)) * _3582).xxx);
            float _3620 = dot(_3619, _3619);
            float _3621 = rsqrt(_3620);
            float3 _3622 = _3619 * _3621;
            float3 _3655;
            float _3656;
            if (_3580) {
              float3 _3626 = (_3602 * _36_m6[_3452].z) * 0.5f;
              float3 _3627 = _3619 - _3626;
              float3 _3628 = _3619 + _3626;
              float _3629 = length(_3627);
              float _3630 = length(_3628);
              float3 _3639 = normalize(cross(cross(_3602, _3622), _3602));
              _3655 = _3639;
              _3656 = ((1.0f / ((((_3629 * _3630) + dot(_3627, _3628)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_3639, _3627) / _3629) + (dot(_3639, _3628) / _3630)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_3452].z * _3621, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _3655 = _3622;
              _3656 = 1.0f;
            }
            float _3678;
            if (_3608 < 0.0f) {
              float _3672 = _3620 * (_36_m6[_3449].w * _36_m6[_3449].w);
              float _3675 = clamp(1.0f - (_3672 * _3672), 0.0f, 1.0f);
              _3678 = lerp(1.0f / (_3620 + 1.0f), _3656, float(_3580)) * (_3675 * _3675);
            } else {
              float3 _3661 = _3619 * _36_m6[_3449].w;
              _3678 = _3656 * pow(1.0f - clamp(dot(_3661, _3661), 0.0f, 1.0f), _3608);
            }
            float _3683 = clamp((dot(_3655, _3614) - _36_m6[_3452].z) * _36_m6[_3452].w, 0.0f, 1.0f);
            float _3686 = _3678 * lerp(1.0f, _3683 * _3683, _3582);
            int _3688 = int(_36_m6[_3467].w);
            float _3792;
            if ((!_3580) && (_3688 >= 0)) {
              uint _3694 = uint(_3688);
              float2 _3785;
              [branch] if (_3582 != 0.0f) {
                float4 _3775 = mul(_67_m1[_3694], float4(_661.x, _834, _661.z, 1.0f));
                _3785 = _67_m0[_3694].xy + (clamp(_3775.xy / _3775.w.xx, 0.0f.xx, 1.0f.xx) * _67_m0[_3694].zw);
              }
              else {
                float3 _3709 = mul(float4(-_3619, 0.0f), _67_m1[_3694]).xyz;
                float3 _528 = _3709;
                float3 _527 = _3709;
                float3 _526 = abs(_3709);
                uint _3718 = uint(int(_526.y > _526.x));
                uint _3724 = (_526.z > _526[_3718]) ? 2u : _3718;
                uint _3730 = (_3724 * 2u) + uint(_527[_3724] < 0.0f);
                float _3734 = abs(_528[_3730 / 2u]);
                float _3754 = 0.5f - (0.000244140625f / _67_m0[_3694].w);
                _3785 = _67_m0[_3694].xy + (clamp(float2((float(_3730) + ((((_528[uint(_494[_3730].x)] * _495[_3730].x) / _3734) * _3754) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_528[uint(_494[_3730].y)] * _495[_3730].y) / _3734) * _3754)), 0.0f.xx, 1.0f.xx) * _67_m0[_3694].zw);
              }
              _3792 = _3686 * _65.SampleLevel(_26, _3785, 0.0f).x;
            } else {
              _3792 = _3686;
            }
            float _3793 = _3792 * _3546;
            float3 _4314;
            do {
              float3 _4313;
              [branch] if (_3793 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_3581) {
                  _4314 = lerp(_3407, _36_m6[_3446].xyz, (_3793 * (_36_m6[_3458].x * ((1.0f - _36_m6[_3458].w) + (smoothstep(-0.5f, 0.5f, dot(_760, _3655)) * _36_m6[_3458].w)))).xxx);
                  break;
                }
                float _3813 = dot(_2273, _3655);
                float _3814 = clamp(_3813, 0.0f, 1.0f);
                float _4213;
                if (_3565 != 0u) {
                  bool _3820 = _3576 || ((_3471 & 2u) != 0u);
                  int _3870;
                  if (_3820) {
                    _3870 = int(_36_m6[_3455].x);
                  } else {
                    uint _3825 = asuint(_36_m6[_3452].w);
                    uint _3826 = asuint(_36_m6[_3455].x);
                    float3 _3827 = _661 - _36_m6[_3449].xyz;
                    float3 _3828 = abs(_3827);
                    float _3829 = _3828.x;
                    float _3830 = _3828.y;
                    float _3832 = _3828.z;
                    int _3865;
                    if ((_3829 > _3830) && (_3829 > _3832)) {
                      _3865 = int((_3827.x > 0.0f) ? (_3825 & 1023u) : ((_3825 >> 10u) & 1023u));
                    } else {
                      int _3857;
                      if (_3830 > _3832) {
                        _3857 = int((_3827.y > 0.0f) ? ((_3825 >> 20u) & 1023u) : (_3826 & 1023u));
                      } else {
                        _3857 = int((_3827.z > 0.0f) ? ((_3826 >> 10u) & 1023u) : ((_3826 >> 20u) & 1023u));
                      }
                      _3865 = _3857;
                    }
                    _3870 = (_3865 == 1023) ? (-1) : _3865;
                  }
                  bool _3871 = _3870 >= 0;
                  float _4212;
                  if (_3871) {
                    float3 _3878 = _661 - _36_m6[_3449].xyz;
                    uint _3888 = asuint(_42_m11.x) + (uint(_3870) * 96u);
                    uint _3890 = (_3888 + 64u) >> 2u;
                    uint _3893 = _3890 + 1u;
                    uint _3896 = _3890 + 2u;
                    uint _3899 = _3890 + 3u;
                    float4 _3903 = asfloat(uint4(_46.Load(_3890 * 4 + 0), _46.Load(_3893 * 4 + 0), _46.Load(_3896 * 4 + 0), _46.Load(_3899 * 4 + 0)));
                    uint _3911 = _3888 >> 2u;
                    uint _3926 = (_3888 + 16u) >> 2u;
                    uint _3941 = (_3888 + 32u) >> 2u;
                    uint _3956 = (_3888 + 48u) >> 2u;
                    float4 _3976 = mul(transpose(float4x4(asfloat(uint4(_46.Load(_3911 * 4 + 0), _46.Load((_3911 + 1u) * 4 + 0), _46.Load((_3911 + 2u) * 4 + 0), _46.Load((_3911 + 3u) * 4 + 0))), asfloat(uint4(_46.Load(_3926 * 4 + 0), _46.Load((_3926 + 1u) * 4 + 0), _46.Load((_3926 + 2u) * 4 + 0), _46.Load((_3926 + 3u) * 4 + 0))), asfloat(uint4(_46.Load(_3941 * 4 + 0), _46.Load((_3941 + 1u) * 4 + 0), _46.Load((_3941 + 2u) * 4 + 0), _46.Load((_3941 + 3u) * 4 + 0))), asfloat(uint4(_46.Load(_3956 * 4 + 0), _46.Load((_3956 + 1u) * 4 + 0), _46.Load((_3956 + 2u) * 4 + 0), _46.Load((_3956 + 3u) * 4 + 0))))), float4((_661 - ((_3878 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3878, _3878)))) * _3903.x)) + (_760 * (_3903.y * 5.0f)), 1.0f));
                    float3 _3980 = _3976.xyz / _3976.w.xxx;
                    uint _3982 = (_3888 + 80u) >> 2u;
                    float4 _3995 = asfloat(uint4(_46.Load(_3982 * 4 + 0), _46.Load((_3982 + 1u) * 4 + 0), _46.Load((_3982 + 2u) * 4 + 0), _46.Load((_3982 + 3u) * 4 + 0)));
                    float2 _3996 = _3980.xy;
                    float2 _3998 = _3995.xy;
                    float3 _4002 = _3980.xyz;
                    bool3 _4003 = bool3(_4002.x <= 0.0f.xxx.x, _4002.y <= 0.0f.xxx.y, _4002.z <= 0.0f.xxx.z);
                    bool3 _4004 = bool3(_4002.x >= 1.0f.xxx.x, _4002.y >= 1.0f.xxx.y, _4002.z >= 1.0f.xxx.z);
                    float _4007 = _3980.z;
                    float2 _4018 = ((_3996 * (_3995.zw - _3998)) + _3998).xy * _42_m10.zw;
                    float2 _4020 = floor(_4018 + 0.5f.xx);
                    float2 _4021 = _4018 - _4020;
                    float _4022 = _4021.x;
                    float _4023 = _4022 + 0.5f;
                    float _4024 = _4023 * _4023;
                    float _4027 = 1.0f - _4022;
                    float _4028 = min(_4022, 0.0f);
                    float _4031 = _4022 + 1.0f;
                    float _4032 = max(_4022, 0.0f);
                    float _4043 = _4021.y;
                    float _4044 = _4043 + 0.5f;
                    float _4045 = _4044 * _4044;
                    float _4048 = 1.0f - _4043;
                    float _4049 = min(_4043, 0.0f);
                    float _4052 = _4043 + 1.0f;
                    float _4053 = max(_4043, 0.0f);
                    float3 _4065 = float3(0.1599999964237213134765625f * _4027, 0.1599999964237213134765625f * ((_4031 - (_4032 * _4032)) + 1.0f), _4024 * 0.07999999821186065673828125f);
                    float3 _4066 = float3(0.1599999964237213134765625f * ((_4024 * 0.5f) - _4022), 0.1599999964237213134765625f * ((_4027 - (_4028 * _4028)) + 1.0f), 0.1599999964237213134765625f * _4031) + _4065;
                    float3 _4068 = float3(0.1599999964237213134765625f * _4048, 0.1599999964237213134765625f * ((_4052 - (_4053 * _4053)) + 1.0f), _4045 * 0.07999999821186065673828125f);
                    float3 _4069 = float3(0.1599999964237213134765625f * ((_4045 * 0.5f) - _4043), 0.1599999964237213134765625f * ((_4048 - (_4049 * _4049)) + 1.0f), 0.1599999964237213134765625f * _4052) + _4068;
                    float3 _4075 = ((_4065 / _4066) + float3(-2.5f, -0.5f, 1.5f)) * _42_m10.xxx;
                    float3 _4077 = ((_4068 / _4069) + float3(-2.5f, -0.5f, 1.5f)) * _42_m10.yyy;
                    float2 _4079 = _4020 * _42_m10.xy;
                    float _4080 = _4075.x;
                    float _4081 = _4077.x;
                    float _4084 = _4075.y;
                    float _4087 = _4075.z;
                    float _4090 = _4077.y;
                    float _4097 = _4077.z;
                    float _4104 = _4066.x;
                    float _4105 = _4069.x;
                    float _4107 = _4066.y;
                    float _4109 = _4066.z;
                    float _4111 = _4069.y;
                    float _4115 = _4069.z;
                    float _4173 = (((((((_4104 * _4105) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4080, _4081), _517).xy, _4007)) + ((_4107 * _4105) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4084, _4081), _517).xy, _4007))) + ((_4109 * _4105) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4087, _4081), _517).xy, _4007))) + ((_4104 * _4111) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4080, _4090), _517).xy, _4007))) + ((_4107 * _4111) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4084, _4090), _517).xy, _4007))) + ((_4109 * _4111) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4087, _4090), _517).xy, _4007))) + ((_4104 * _4115) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4080, _4097), _517).xy, _4007));
                    float4 _4196 = asfloat(uint4(_46.Load(_3890 * 4 + 0), _46.Load(_3893 * 4 + 0), _46.Load(_3896 * 4 + 0), _46.Load(_3899 * 4 + 0)));
                    float _4197 = _4196.w;
                    float2 _4199 = min(_3996, 1.0f.xx - _3996);
                    _4212 = _3871 ? lerp(1.0f, (any(bool3(_4003.x || _4004.x, _4003.y || _4004.y, _4003.z || _4004.z)) || ((asuint(_4007) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4173 + ((_4107 * _4115) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4084, _4097), _517).xy, _4007))) + ((_4109 * _4115) * _44.SampleCmpLevelZero(_28, float3(_4079 + float2(_4087, _4097), _517).xy, _4007))), _3820 ? min(_4197, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4196.z - _3976.w) * 0.25f, min(_4199.x, _4199.y)))) : _4197) : 1.0f;
                  } else {
                    _4212 = clamp(dot(_668, _3655) + 1.0f, 0.0f, 1.0f);
                  }
                  _4213 = _4212;
                } else {
                  _4213 = 1.0f;
                }
                float _4275;
                float3 _4276;
                float _4277;
                float3 _4278;
                float3 _4279;
                [branch] if (_3565 == 0u) {
                  float3 _4255 = _36_m6[_3446].xyz * _3793;
                  _4275 = _3793;
                  _4276 = (_36_m6[_3446].xyz * ((1.0f - _36_m6[_3458].y) + ((1.0f / max(1.0f, max(max(_4255.x, _4255.y), _4255.z) * lerp(0.75f, 0.5f, _3353))) * _36_m6[_3458].y))) * lerp(0.25f * _36_m6[_3458].x, 1.0f, clamp(_3813 + 0.5f, 0.0f, 1.0f));
                  _4277 = _3814;
                  _4278 = _3104.xyz;
                  _4279 = _3104.xyz;
                }
                else {
                  float _4250;
                  float _4251;
                  float3 _4252;
                  float3 _4253;
                  if (_3565 == 3u) {
                    _4250 = _3793 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_3458].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_3458].x), _3319) * _4213);
                    _4251 = clamp(dot(_2273, -normalize(cross(_802, cross(_802, _3655)))), 0.0f, 1.0f);
                    _4252 = lerp(0.5f.xxx, _2279, _36_m6[_3458].y.xxx);
                    _4253 = 0.0f.xxx;
                  } else {
                    bool _4222 = _3565 == 1u;
                    float _4232;
                    float3 _4233;
                    if (_4222) {
                      _4232 = clamp(clamp(_3813 + _36_m6[_3458].x, -1.0f, 1.0f), 0.0f, 1.0f) * _4213;
                      _4233 = _2283 * _36_m6[_3458].y;
                    } else {
                      _4232 = _3814;
                      _4233 = 0.0f.xxx;
                    }
                    bool3 _4234 = _4222.xxx;
                    _4250 = _3793;
                    _4251 = _4232;
                    _4252 = float3(_4234.x ? _2279.x : 0.0f.xxx.x, _4234.y ? _2279.y : 0.0f.xxx.y, _4234.z ? _2279.z : 0.0f.xxx.z);
                    _4253 = _4233;
                  }
                  _4275 = _4250;
                  _4276 = _36_m6[_3446].xyz;
                  _4277 = _4251;
                  _4278 = _4252;
                  _4279 = _4253;
                }
                float3 _4303;
                [branch] if (_3565 != 3u) {
                  float3 _4284 = _3655 + _575;
                  float _4289 = dot(_3126, _4284 * rsqrt(max(6.103515625e-05f, dot(_4284, _4284))));
                  _4303 = ((((((pow(max(sqrt(1.0f - (_4289 * _4289)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _791) * _2282) * _58_m36) * 5.0f) * _2153) * 1.0f) * _36_m6[_3467].z;
                }
                else {
                  _4303 = 0.0f.xxx;
                }
                float3 _4306 = _4276 * _4275;
                _4313 = _3407 + (((_4306 * lerp(_4279, _4278, _4277.xxx)) * _3269) + ((_4306 * _4303) * _4277));
              }
              else {
                _4313 = _3407;
              }
              _4314 = _4313;
              break;
            } while (false);
            _4315 = _4314;
            break;
          } while (false);
          _4316 = _4315;
        } else {
          _4316 = _3407;
        }
        _4317 = _4316;
        break;
      } while (false);
      _3433 = _4317;
    }
  }
  float3 _4357;
  [branch] if (_58_m12 > 0.5f) {
    _4357 = lerp(lerp(0.5f.xxx, lerp(dot(_3406, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3406, _58_m14.xxx), _58_m15.xxx) * _58_m13, _58_m26.xyz, _58_m26.w.xxx) + ((_58_m27.xyz * smoothstep(1.0f - _58_m16, 1.0f, 1.0f - clamp(_3317, 0.0f, 1.0f))) * _58_m17);
  }
  else {
    _4357 = _3406;
  }
  float4 _4364 = float4(_4357 * _20_m20.y, _651);
  _4364.w = (_58_m8 == 1.0f) ? _651 : 1.0f;
  float4 _4756;
  [branch] if (_20_m94.w < 0.5f) {
    float3 _4373 = -_575;
    float _4389 = _834 * _20_m46.w;
    float _4394 = max(0.00999999977648258209228515625f, _4389 + _20_m47.w);
    float3 _4408 = exp(_20_m45.xyz * ((-max(0.0f, (_576 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_4394)) / _4394) * exp(_4389 + _20_m48.w))));
    float _4411 = dot(_4373, _20_m44.xyz);
    float _4417 = _20_m45.w * _20_m45.w;
    float _4421 = (1.0f + _4417) - ((2.0f * _20_m45.w) * _4411);
    float3 _4748;
    float _4749;
    if (_20_m55.z > 0.0f) {
      uint3 _4576 = (uint3(int3(int(_792.x), int(_792.y), int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _4577 = _4576.y;
      uint _4578 = _4576.z;
      uint _4581 = _4576.x + (_4577 * _4578);
      uint _4583 = _4577 + (_4578 * _4581);
      uint _4585 = _4578 + (_4581 * _4583);
      uint _4587 = _4581 + (_4583 * _4585);
      float _4612 = dot(_4373, -_18_m0[2].xyz);
      float3 _4619 = _661 - _18_m11.xyz;
      float _4621 = (_20_m55.w * ((_4612 > 5.9604644775390625e-08f) ? (1.0f / _4612) : 0.0f)) * (1.0f / _576);
      float _4622 = _4619.y;
      float _4623 = _4621 * _4622;
      float _4625 = _18_m11.y + _4623;
      float _4626 = _4622 - _4623;
      float _4628 = (1.0f - _4621) * _576;
      float _4642 = max(-127.0f, _20_m49.z * _4626);
      float _4666 = max(-127.0f, _20_m52.x * _4626);
      float _4677 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_4625 - _20_m49.x)))) * ((abs(_4642) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4642)) / _4642) : (0.693147182464599609375f - (0.2402265071868896484375f * _4642)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_4625 - _20_m52.z)))) * ((abs(_4666) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4666)) / _4666) : (0.693147182464599609375f - (0.2402265071868896484375f * _4666))));
      float _4699 = clamp((_576 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _4702 = clamp((max(clamp(exp2(-(_4677 * _4628)), 0.0f, 1.0f), _20_m51.w) + clamp((_576 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _4699, 0.0f, 1.0f);
      float4 _4742 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _70.SampleLevel(_26, float3((_3381 + ((((float3(uint3(_4587, _4583 + (_4585 * _4587), _524) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_540 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_540 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _4748 = _4742.xyz + (((_20_m51.xyz * (1.0f - _4702)) + (((_20_m54.xyz * pow(clamp(dot(_575, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_4677 * max(_4628 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4699))) * _4742.w);
      _4749 = _4742.w * _4702;
    } else {
      float3 _4448 = _661 - _18_m11.xyz;
      float _4450 = _4448.y;
      float _4464 = max(-127.0f, _20_m49.z * _4450);
      float _4488 = max(-127.0f, _20_m52.x * _4450);
      float _4499 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_4464) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4464)) / _4464) : (0.693147182464599609375f - (0.2402265071868896484375f * _4464)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_4488) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4488)) / _4488) : (0.693147182464599609375f - (0.2402265071868896484375f * _4488))));
      float _4521 = clamp((_576 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _4524 = clamp((max(clamp(exp2(-(_4499 * _576)), 0.0f, 1.0f), _20_m51.w) + clamp((_576 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _4521, 0.0f, 1.0f);
      _4748 = (_20_m51.xyz * (1.0f - _4524)) + (((_20_m54.xyz * pow(clamp(dot(_575, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_4499 * max(_576 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4521));
      _4749 = _4524;
    }
    float3 _4754 = (_4364.xyz * (_4408 * _4749)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4411 * _4411)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _4417) / max((12.56637096405029296875f * _4421) * sqrt(_4421), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4408)) * _4749) + _4748);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _4754 = (_4754 * 0.65f) + (_4364.xyz * 0.35f);
    }
    // RenoDX code end
    _4756 = float4(_4754.x, _4754.y, _4754.z, _4364.w);
  }
  else {
    _4756 = _4364;
  }
  _15 = _4756;
  _16 = _2315;
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
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

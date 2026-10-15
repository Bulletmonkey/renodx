#include "./renodx_injection.hlsli"

// Ported from the native 0x96E4EF5F Vulkan dump.
struct _21 {
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

static float _554;
static float3 _555;
static float _558;
static uint _559;

static const float2 _507[16] = {float2(-0.94201624393463134765625f, -0.39906215667724609375f), float2(0.94558608531951904296875f, -0.768907248973846435546875f), float2(-0.094184100627899169921875f, -0.929388701915740966796875f), float2(0.34495937824249267578125f, 0.29387760162353515625f), float2(-0.91588580608367919921875f, 0.4577143192291259765625f), float2(-0.8154423236846923828125f, -0.87912464141845703125f), float2(-0.38277542591094970703125f, 0.2767684459686279296875f), float2(0.9748439788818359375f, 0.7564837932586669921875f), float2(0.4432332515716552734375f, -0.9751155376434326171875f), float2(0.5374298095703125f, -0.473734200000762939453125f), float2(-0.2649691104888916015625f, -0.418930232524871826171875f), float2(0.79197514057159423828125f, 0.19090187549591064453125f), float2(-0.24188840389251708984375f, 0.997065067291259765625f), float2(-0.8140995502471923828125f, 0.91437590122222900390625f), float2(0.1998412609100341796875f, 0.786413669586181640625f), float2(0.14383161067962646484375f, -0.141007900238037109375f)};
static const float2 _508[16] = {float2(-0.3996559083461761474609375f, 0.91666519641876220703125f), float2(0.12451229989528656005859375f, -0.992218077182769775390625f), float2(0.8523542881011962890625f, 0.5229647159576416015625f), float2(-0.22931249439716339111328125f, 0.973352909088134765625f), float2(-0.772406101226806640625f, 0.63512897491455078125f), float2(0.7927525043487548828125f, -0.60954368114471435546875f), float2(-0.578049719333648681640625f, 0.816001594066619873046875f), float2(-0.831129610538482666015625f, -0.55607879161834716796875f), float2(0.8077948093414306640625f, 0.589463770389556884765625f), float2(0.47141540050506591796875f, 0.88191127777099609375f), float2(-0.3139738142490386962890625f, -0.949431717395782470703125f), float2(-0.94500672817230224609375f, -0.3270510137081146240234375f), float2(-0.1850374042987823486328125f, -0.982731521129608154296875f), float2(-0.9337558746337890625f, 0.35791051387786865234375f), float2(-0.997614085674285888671875f, 0.069036297500133514404296875f), float2(0.3061277866363525390625f, 0.951990425586700439453125f)};
static const int2 _509[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _510[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _16_17 : register(b11, space0) {
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

[[vk::binding(15, 0)]] cbuffer _18_19 : register(b15, space0) {
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
  float4 _19_m99 : packoffset(c127);
  float4 _19_m100 : packoffset(c128);
  float4 _19_m101 : packoffset(c129);
  float4 _19_m102[2] : packoffset(c130);
  float4 _19_m103[2] : packoffset(c132);
  float _19_m104 : packoffset(c134);
  float _19_m105 : packoffset(c134.y);
  float _19_m106 : packoffset(c134.z);
  float _19_m107 : packoffset(c134.w);
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
  float4 _19_m135 : packoffset(c162);
  float4 _19_m136 : packoffset(c163);
  float4 _19_m137 : packoffset(c164);
  column_major float4x4 _19_m138 : packoffset(c165);
  float4 _19_m139 : packoffset(c169);
  float4 _19_m140 : packoffset(c170);
  float4 _19_m141 : packoffset(c171);
  float4 _19_m142 : packoffset(c172);
  int4 _19_m143 : packoffset(c173);
  int4 _19_m144 : packoffset(c174);
  int4 _19_m145 : packoffset(c175);
  float4 _19_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _20_22 : register(b0, space2) {
  _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _29 : register(t53, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _31 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _32_33 : register(b13, space0) {
  float4 _33_m0 : packoffset(c0);
  float4 _33_m1 : packoffset(c1);
  float4 _33_m2 : packoffset(c2);
  float4 _33_m3 : packoffset(c3);
  float4 _33_m4 : packoffset(c4);
  uint4 _33_m5 : packoffset(c5);
  float4 _33_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _34_35 : register(b49, space0) {
  int _35_m0 : packoffset(c0);
  int _35_m1 : packoffset(c0.y);
  int _35_m2 : packoffset(c0.z);
  int _35_m3 : packoffset(c0.w);
  int _35_m4 : packoffset(c1);
  int _35_m5 : packoffset(c1.y);
  int _35_m6 : packoffset(c1.z);
  int _35_m7 : packoffset(c1.w);
  float _35_m8 : packoffset(c2);
  float _35_m9 : packoffset(c2.y);
  float _35_m10 : packoffset(c2.z);
  float _35_m11 : packoffset(c2.w);
  float _35_m12 : packoffset(c3);
  float _35_m13 : packoffset(c3.y);
  float _35_m14 : packoffset(c3.z);
  float _35_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _38_39 : register(b14, space0) {
  column_major float4x4 _39_m0[5] : packoffset(c0);
  float4 _39_m1[4] : packoffset(c20);
  float4 _39_m2[4] : packoffset(c24);
  float4 _39_m3[4] : packoffset(c28);
  float4 _39_m4 : packoffset(c32);
  float4 _39_m5 : packoffset(c33);
  float4 _39_m6 : packoffset(c34);
  float4 _39_m7 : packoffset(c35);
  float4 _39_m8 : packoffset(c36);
  float4 _39_m9[27] : packoffset(c37);
  float4 _39_m10 : packoffset(c64);
  float4 _39_m11 : packoffset(c65);
  float4 _39_m12[62] : packoffset(c66);
  column_major float4x4 _39_m13[15] : packoffset(c128);
  float4 _39_m14[15] : packoffset(c188);
  float4 _39_m15[15] : packoffset(c203);
  float4 _39_m16[15] : packoffset(c218);
  float4 _39_m17 : packoffset(c233);
  float4 _39_m18 : packoffset(c234);
  float4 _39_m19[21] : packoffset(c235);
  column_major float4x4 _39_m20 : packoffset(c256);
  column_major float4x4 _39_m21 : packoffset(c260);
  float4 _39_m22 : packoffset(c264);
  float4 _39_m23 : packoffset(c265);
  float4 _39_m24 : packoffset(c266);
  float4 _39_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _43 : register(t52, space0);
[[vk::binding(0, 1)]] cbuffer _54_55 : register(b0, space1) {
  float _55_m0 : packoffset(c0);
  float _55_m1 : packoffset(c0.y);
  float _55_m2 : packoffset(c0.z);
  float _55_m3 : packoffset(c0.w);
  float _55_m4 : packoffset(c1);
  float _55_m5 : packoffset(c1.y);
  float _55_m6 : packoffset(c1.z);
  float _55_m7 : packoffset(c1.w);
  float _55_m8 : packoffset(c2);
  float _55_m9 : packoffset(c2.y);
  float _55_m10 : packoffset(c2.z);
  float _55_m11 : packoffset(c2.w);
  float _55_m12 : packoffset(c3);
  float _55_m13 : packoffset(c3.y);
  float _55_m14 : packoffset(c3.z);
  float _55_m15 : packoffset(c3.w);
  float _55_m16 : packoffset(c4);
  float _55_m17 : packoffset(c4.y);
  float _55_m18 : packoffset(c4.z);
  float _55_m19 : packoffset(c4.w);
  float _55_m20 : packoffset(c5);
  float _55_m21 : packoffset(c5.y);
  float _55_m22 : packoffset(c5.z);
  float _55_m23 : packoffset(c5.w);
  float4 _55_m24 : packoffset(c6);
  float4 _55_m25 : packoffset(c7);
  float4 _55_m26 : packoffset(c8);
  float4 _55_m27 : packoffset(c9);
  float4 _55_m28 : packoffset(c10);
  float4 _55_m29 : packoffset(c11);
  float _55_m30 : packoffset(c12);
  float _55_m31 : packoffset(c12.y);
  float _55_m32 : packoffset(c12.z);
  float _55_m33 : packoffset(c12.w);
  float4 _55_m34 : packoffset(c13);
  float4 _55_m35 : packoffset(c14);
  float4 _55_m36 : packoffset(c15);
  float4 _55_m37 : packoffset(c16);
  float4 _55_m38 : packoffset(c17);
  float4 _55_m39 : packoffset(c18);
  float _55_m40 : packoffset(c19);
  float _55_m41 : packoffset(c19.y);
  float _55_m42 : packoffset(c19.z);
  float _55_m43 : packoffset(c19.w);
  float _55_m44 : packoffset(c20);
  float _55_m45 : packoffset(c20.y);
  float _55_m46 : packoffset(c20.z);
  float _55_m47 : packoffset(c20.w);
};

[[vk::binding(51, 0)]] cbuffer _68_69 : register(b51, space0) {
  float4 _69_m0[32] : packoffset(c0);
  column_major float4x4 _69_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _40 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _41 : register(t26, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _44 : register(t41, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _45 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _46 : register(t10, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _48 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _49 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _50 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _51 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _52 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _53 : register(t31, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _56 : register(t4, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _57 : register(t1, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2, space1);
[[vk::binding(45, 0)]] Texture2D<float4> _59 : register(t45, space0);
[[vk::binding(42, 0)]] Texture2D<float4> _60 : register(t42, space0);
[[vk::binding(40, 0)]] Texture2D<float4> _61 : register(t40, space0);
[[vk::binding(6, 1)]] Texture2D<float4> _62 : register(t6, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _63 : register(t3, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _64 : register(t5, space1);
[[vk::binding(46, 0)]] TextureCube<float4> _66 : register(t46, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _67 : register(t28, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _72 : register(t37, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static float3 _10;
static uint _12;
static float4 _14;
static float4 _15;

struct SPIRV_Cross_Input {
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

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _14 : SV_Target0;
  [[vk::location(1)]] float4 _15 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

uint4 _31_Load4(uint byte_offset) { return asuint(_31[byte_offset >> 4u]); }
void frag_main() {
  float _574 = 1.0f / gl_FragCoord.w;
  float3 _589 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _590 = dot(_589, _589);
  float _592 = rsqrt(max(_590, 9.9999999392252902907785028219223e-09f));
  float3 _593 = _589 * _592;
  float _594 = _590 * _592;
  uint _597 = asuint(_22_m0[_12]._m2.x);
  bool _602 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _615;
  float4 _616;
  if (_602) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x96E4EF5F:
    _615 = asfloat(_31_Load4((_597 + 2u) * 16 + 0));
    _616 = asfloat(_31_Load4(_597 * 16 + 0));
    */
    _615 = asfloat(_31_Load4((_597 + 2u) * 16 + 0));
    _616 = asfloat(_31_Load4(_597 * 16 + 0));
    // RenoDX code end
  } else {
    _615 = _22_m0[_12]._m0[2];
    _616 = _22_m0[_12]._m0[0];
  }
  float _623 = 1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z);
  float _633 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(1.0f, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _635 = abs(_633);
  if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _635 : (-_635)), _623 - _633) < 0.0f) {
    discard;
  }
  float4 _649 = _62.SampleBias(_25, _3, _19_m16);
  float3 _654 = _649.xyz * _55_m24.xyz;
  float4 _658 = _63.SampleBias(_25, _3, _19_m16);
  float _659 = _658.x;
  float _661 = _658.z;
  float _663 = 1.0f - _658.w;
  float _667 = _649.w * _55_m24.w;
  float3 _671 = _4 + _17_m11.xyz;
  float3 _675 = _671 - float3(_616.w, _558, _615.w);
  _675.y = 6.103515625e-05f;
  float3 _678 = normalize(_675);
  float4 _691 = _64.SampleBias(_25, _3, _19_m16);
  _691.w = _691.w * _691.x;
  float2 _700 = (_691.wy * 2.0f) - 1.0f.xx;
  float3 _701 = float3(_700.x, _700.y, _555.z);
  float2 _702 = _700.xy;
  _701.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_702, _702), 0.0f, 1.0f)));
  float2 _710 = _701.xy * _55_m3;
  float3 _712 = _654 * 12.9200000762939453125f;
  float3 _716 = (pow(abs(_654), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
  bool3 _717 = bool3(_654.x <= 0.003130800090730190277099609375f.xxx.x, _654.y <= 0.003130800090730190277099609375f.xxx.y, _654.z <= 0.003130800090730190277099609375f.xxx.z);
  float3 _719 = clamp(float3(_717.x ? _712.x : _716.x, _717.y ? _712.y : _716.y, _717.z ? _712.z : _716.z), 0.0f.xxx, 1.0f.xxx);
  float _723 = _719.z * 31.0f;
  float _724 = floor(_723);
  float2 _728 = ((_719.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
  float3 _729 = float3(_728.x, _728.y, _719.z);
  _729.x = _728.x + (_724 * 0.03125f);
  float3 _744 = lerp(_58.SampleLevel(_24, _729.xy, 0.0f).xyz, _58.SampleLevel(_24, _729.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_723 - _724).xxx);
  float3 _745 = mul(float3(_710.x, _710.y, _701.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
  float _754 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _55_m5));
  float3 _755 = (_745 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_745, _745)))) * _754;
  float3 _756 = normalize(_5) * _754;
  uint2 _757 = uint2(gl_FragCoord.xy);
  float3 _767 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _776 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _789 = float4(float(_776 & 255u), float((_776 >> 8u) & 255u), float((_776 >> 16u) & 255u), float((_776 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _790 = _789.x;
  float _793 = _789.w;
  float _799 = _671.y;
  float _802 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _799) * _789.y;
  float _803 = max(_789.z, _802);
  float _812 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float4 _1307;
  float3 _1308;
  float3 _1309;
  float _1310;
  if (_19_m83.y < 0.5f) {
    float3 _830 = _671 - (_19_m108.xyz + (_767 * (-_19_m110.w)));
    float _845 = max(min(max((max(abs(_830.x), abs(_830.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_830.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1147;
    float4 _1148;
    float4 _1149;
    float _1150;
    float _1151;
    if ((_19_m108.w != 0.0f) && (_845 < 1.0f)) {
      float3 _858 = _671 - (_19_m108.xyz + (_767 * (-_19_m110.y)));
      float _872 = max(clamp((max(abs(_858.x), abs(_858.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_858.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _948;
      float4 _949;
      float4 _950;
      float4 _951;
      if (_872 < 1.0f) {
        float3 _881 = ((_671 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _883 = _881 - floor(_881);
        float4 _887 = _48.SampleLevel(_25, _883, 0.0f);
        float _888 = 1.0f - _872;
        float _892 = _19_m109.y * 0.5f;
        float _897 = _883.x;
        float _898 = clamp(_883.y, _892, 1.0f - _892) * 0.3333333432674407958984375f;
        float _899 = _883.z;
        float4 _902 = _49.SampleLevel(_24, float3(_897, _898, _899), 0.0f);
        float _918 = _887.x;
        float _928 = _887.y;
        float _938 = _887.z;
        _948 = _845 + (_902.w * _888);
        _949 = float4(((_49.SampleLevel(_24, float3(_897, _898 + 0.666666686534881591796875f, _899), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _938, _938) * _888;
        _950 = float4(((_49.SampleLevel(_24, float3(_897, _898 + 0.3333333432674407958984375f, _899), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _928, _928) * _888;
        _951 = float4(((_902.xyz * 4.0f) - 2.0f.xxx) * _918, _918) * _888;
      } else {
        _948 = _845;
        _949 = 0.0f.xxxx;
        _950 = 0.0f.xxxx;
        _951 = 0.0f.xxxx;
      }
      float3 _957 = _671 - (_19_m108.xyz + (_767 * (-_19_m110.z)));
      float _971 = max(clamp((max(abs(_957.x), abs(_957.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_957.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1051;
      float4 _1052;
      float4 _1053;
      float4 _1054;
      if (_971 < 1.0f) {
        float3 _980 = ((_671 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _982 = _980 - floor(_980);
        float4 _986 = _50.SampleLevel(_25, _982, 0.0f);
        float _988 = _872 * (1.0f - _971);
        float _992 = _19_m109.y * 0.5f;
        float _997 = _982.x;
        float _998 = clamp(_982.y, _992, 1.0f - _992) * 0.3333333432674407958984375f;
        float _999 = _982.z;
        float4 _1002 = _51.SampleLevel(_24, float3(_997, _998, _999), 0.0f);
        float _1018 = _986.x;
        float _1029 = _986.y;
        float _1040 = _986.z;
        _1051 = _948 + (_1002.w * _988);
        _1052 = _949 + (float4(((_51.SampleLevel(_24, float3(_997, _998 + 0.666666686534881591796875f, _999), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1040, _1040) * _988);
        _1053 = _950 + (float4(((_51.SampleLevel(_24, float3(_997, _998 + 0.3333333432674407958984375f, _999), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1029, _1029) * _988);
        _1054 = _951 + (float4(((_1002.xyz * 4.0f) - 2.0f.xxx) * _1018, _1018) * _988);
      } else {
        _1051 = _948;
        _1052 = _949;
        _1053 = _950;
        _1054 = _951;
      }
      float4 _1137;
      float4 _1138;
      float4 _1139;
      float _1140;
      if (_971 > 0.0f) {
        float3 _1063 = ((_671 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _1066 = _19_m109.xyz * 0.5f;
        float3 _1068 = clamp(_1063 - floor(_1063), _1066, 1.0f.xxx - _1066);
        float4 _1072 = _52.SampleLevel(_25, _1068, 0.0f);
        float _1074 = _971 * (1.0f - _845);
        float _1078 = _19_m109.y * 0.5f;
        float _1083 = _1068.x;
        float _1084 = clamp(_1068.y, _1078, 1.0f - _1078) * 0.3333333432674407958984375f;
        float _1085 = _1068.z;
        float4 _1088 = _53.SampleLevel(_24, float3(_1083, _1084, _1085), 0.0f);
        float _1104 = _1072.x;
        float _1115 = _1072.y;
        float _1126 = _1072.z;
        _1137 = _1052 + (float4(((_53.SampleLevel(_24, float3(_1083, _1084 + 0.666666686534881591796875f, _1085), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1126, _1126) * _1074);
        _1138 = _1053 + (float4(((_53.SampleLevel(_24, float3(_1083, _1084 + 0.3333333432674407958984375f, _1085), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1115, _1115) * _1074);
        _1139 = _1054 + (float4(((_1088.xyz * 4.0f) - 2.0f.xxx) * _1104, _1104) * _1074);
        _1140 = _1051 + (_1088.w * _1074);
      } else {
        _1137 = _1052;
        _1138 = _1053;
        _1139 = _1054;
        _1140 = _1051;
      }
      float _1143 = clamp((_1140 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1147 = _1137;
      _1148 = _1138;
      _1149 = _1139;
      _1150 = _1143 - _845;
      _1151 = (_1143 + _845) * 0.5f;
    } else {
      _1147 = 0.0f.xxxx;
      _1148 = 0.0f.xxxx;
      _1149 = 0.0f.xxxx;
      _1150 = 0.0f;
      _1151 = 1.0f;
    }
    float4 _1171 = _1149 + float4(_19_m111.x * _1151, (_19_m111.y * _1151) + ((_19_m111.w * _1150) * 0.5f), _19_m111.z * _1151, (_19_m111.w * _1151) + ((_19_m111.y * _1150) * 0.375f));
    float4 _1191 = _1148 + float4(_19_m112.x * _1151, (_19_m112.y * _1151) + ((_19_m112.w * _1150) * 0.5f), _19_m112.z * _1151, (_19_m112.w * _1151) + ((_19_m112.y * _1150) * 0.375f));
    float4 _1211 = _1147 + float4(_19_m113.x * _1151, (_19_m113.y * _1151) + ((_19_m113.w * _1150) * 0.5f), _19_m113.z * _1151, (_19_m113.w * _1151) + ((_19_m113.y * _1150) * 0.375f));
    float4 _1215 = float4(_755, 1.0f);
    float3 _1221 = max(float3(dot(_1171, _1215), dot(_1191, _1215), dot(_1211, _1215)), 0.0f.xxx) * _812;
    float3 _1229 = ((_1171.xyz * 0.2125999927520751953125f) + (_1191.xyz * 0.715200006961822509765625f)) + (_1211.xyz * 0.072200000286102294921875f);
    float3 _1233 = _1229 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1229, _1229)));
    float _1235 = abs(_1233.y);
    float3 _1236 = _1233;
    _1236.y = _1235;
    float4 _1237 = float4(_1236.x, _1236.y, _1236.z, 0.0f.xxxx.w);
    _1237.w = 1.0f;
    float4 _1241 = float4(_1233.x, _1235, _1233.z, 1.0f);
    float3 _1246 = max(float3(dot(_1171, _1241), dot(_1191, _1241), dot(_1211, _1241)), 0.0f.xxx);
    float _1254 = _1221.z;
    float _1255 = _1221.y;
    float4 _1260 = lerp(float4(_1254, _1255, -1.0f, 0.666666686534881591796875f), float4(_1255, _1254, 0.0f, -0.3333333432674407958984375f), step(_1254, _1255).xxxx);
    float _1261 = _1221.x;
    float _1262 = _1260.x;
    float4 _1270 = lerp(float4(_1262, _1260.yw, _1261), float4(_1261, _1260.yz, _1262), step(_1262, _1261).xxxx);
    float _1271 = _1270.x;
    float _1272 = _1270.w;
    float _1273 = _1270.y;
    float _1275 = _1271 - min(_1272, _1273);
    float _1285 = frac(abs(_1270.z + ((_1272 - _1273) / ((6.0f * _1275) + 9.9999997473787516355514526367188e-05f))));
    float _1292 = min(_1275 / (_1271 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1285 - 0.5f))) * clamp(_1271, 0.0f, 1.0f));
    float _1294 = 2.0f / (2.0f - _1292);
    _1307 = _1237;
    _1308 = _1221;
    _1309 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1285, _1292, _1294).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1292.xxx) * _1294;
    _1310 = max(max(max(_1246.x, _1246.y), _1246.z), 0.0f) * _812;
  } else {
    _1307 = 0.0f.xxxx;
    _1308 = 1.0f.xxx;
    _1309 = _19_m84.xyz;
    _1310 = _812;
  }
  float3 _2030;
  float _2031;
  float _2032;
  float _2033;
  float3 _2034;
  float3 _2035;
  [branch] if ((clamp(_790 + _803, 0.0f, 1.0f) - _55_m20) > 0.00999999977648258209228515625f) {
    float _1338 = 1.0f - _659;
    float _1341 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_654 * _1338, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
    bool3 _1344 = _602.xxx;
    float3 _1346 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1350 = float3(_1344.x ? _1346.x : _10.x, _1344.y ? _1346.y : _10.y, _1344.z ? _1346.z : _10.z) * _19_m92.z;
    float3 _1352 = float3(_1344.x ? _9.xzy.x : _9.x, _1344.y ? _9.xzy.y : _9.y, _1344.z ? _9.xzy.z : _9.z);
    float3 _1354 = abs(_1352) - 0.20000000298023223876953125f.xxx;
    float3 _1357 = max((_1354 * _1354) * _1354, 6.103515625e-05f.xxx);
    float3 _1360 = _1357 / dot(_1357, 1.0f.xxx).xxx;
    float2 _1368 = _1350.xy;
    float2 _1373 = _1350.zy;
    float4 _1383 = ((_59.SampleBias(_25, _1350.xz, _19_m16) * _1360.y) + (_59.SampleBias(_25, _1368, _19_m16) * _1360.z)) + (_59.SampleBias(_25, _1373, _19_m16) * _1360.x);
    float _1384 = _1383.w;
    float _1386 = 1.10000002384185791015625f - _1384;
    float _1395 = max(smoothstep(0.800000011920928955078125f - _1384, _1386, clamp((_790 * _1338) + (_755.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1384, _1386, clamp(_802 * _1338, 0.0f, 1.0f)));
    float _1402 = smoothstep(0.5f, 0.75f, _659);
    float _1404 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _663) * _1341;
    float _1407 = clamp(_1404 + _1402, 0.0f, 1.0f) * max(_790, _803);
    bool _1411 = !((step(_790, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _803)) != 0.0f);
    bool2 _1412 = _1411.xx;
    float2 _1414 = (1.0f - _803).xx;
    float2 _1415 = float2(_1412.x ? float2(3.0f, 4.345600128173828125f).x : _1414.x, _1412.y ? float2(3.0f, 4.345600128173828125f).y : _1414.y);
    float _1416 = 1.0f - _1407;
    float _1419 = _1411 ? _19_m10.x : 1.0f;
    float _1421 = _1419 * _1415.x;
    float _1423 = _1419 * _1415.y;
    float3 _1424 = _1350 * 20.0f;
    float3 _1425 = _1350 * 34.345600128173828125f;
    float3 _1427 = pow(max(_1354, 0.0f.xxx), 10.0f.xxx);
    float3 _1431 = _1427 / max(dot(_1427, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1433 = _1431.y;
    float2 _1434 = _1424.xz * 1.0f;
    float2 _1435 = floor(_1434);
    float2 _1438 = frac(_1435 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1442 = _1438 + dot(_1438, _1438 + 34.345001220703125f.xx).xx;
    float _1443 = _1442.x;
    float _1444 = _1442.y;
    float2 _1448 = frac(float2(_1443 * _1444, _1443 + _1444));
    float2 _1451 = frac((_1435 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1455 = _1451 + dot(_1451, _1451 + 34.345001220703125f.xx).xx;
    float _1456 = _1455.x;
    float _1457 = _1455.y;
    float2 _1461 = frac(float2(_1456 * _1457, _1456 + _1457));
    float _1467 = _1448.x;
    float _1469 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1467);
    float2 _1470 = ((_1434 - _1435) + ((((_1461 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1473 = _1470.y;
    float2 _1477 = float2(_1470.x * 1.25f, _1473 * ((_1473 < 0.0f) ? 1.25f : 0.75f));
    float _1480 = _1421 + _1467;
    float _1484 = _1411 ? frac(_1480) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1480, 0.0f, 1.0f));
    float _1496 = _1448.y;
    float _1499 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1484) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1484)) * step(0.001000000047497451305389404296875f, smoothstep(_1469, 0.0f, length(_1477)))) * step(_1416, _1496 - 0.100000001490116119384765625f);
    float _1502 = _1499 * _1433;
    float _1510 = _1431.z;
    float2 _1511 = _1424.xy * 1.0f;
    float2 _1512 = floor(_1511);
    float2 _1515 = frac(_1512 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1519 = _1515 + dot(_1515, _1515 + 34.345001220703125f.xx).xx;
    float _1520 = _1519.x;
    float _1521 = _1519.y;
    float2 _1525 = frac(float2(_1520 * _1521, _1520 + _1521));
    float2 _1528 = frac((_1512 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1532 = _1528 + dot(_1528, _1528 + 34.345001220703125f.xx).xx;
    float _1533 = _1532.x;
    float _1534 = _1532.y;
    float2 _1538 = frac(float2(_1533 * _1534, _1533 + _1534));
    float _1544 = _1525.x;
    float _1546 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1544);
    float2 _1547 = ((_1511 - _1512) + ((((_1538 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1550 = _1547.y;
    float2 _1554 = float2(_1547.x * 1.25f, _1550 * ((_1550 < 0.0f) ? 1.25f : 0.75f));
    float _1557 = _1421 + _1544;
    float _1561 = _1411 ? frac(_1557) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1557, 0.0f, 1.0f));
    float _1573 = _1525.y;
    float _1576 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1561) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1561)) * step(0.001000000047497451305389404296875f, smoothstep(_1546, 0.0f, length(_1554)))) * step(_1416, _1573 - 0.100000001490116119384765625f);
    float _1579 = _1576 * _1510;
    float _1587 = _1431.x;
    float2 _1588 = _1424.zy * 1.0f;
    float2 _1589 = floor(_1588);
    float2 _1592 = frac(_1589 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1596 = _1592 + dot(_1592, _1592 + 34.345001220703125f.xx).xx;
    float _1597 = _1596.x;
    float _1598 = _1596.y;
    float2 _1602 = frac(float2(_1597 * _1598, _1597 + _1598));
    float2 _1605 = frac((_1589 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1609 = _1605 + dot(_1605, _1605 + 34.345001220703125f.xx).xx;
    float _1610 = _1609.x;
    float _1611 = _1609.y;
    float2 _1615 = frac(float2(_1610 * _1611, _1610 + _1611));
    float _1621 = _1602.x;
    float _1623 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1621);
    float2 _1624 = ((_1588 - _1589) + ((((_1615 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1627 = _1624.y;
    float2 _1631 = float2(_1624.x * 1.25f, _1627 * ((_1627 < 0.0f) ? 1.25f : 0.75f));
    float _1634 = _1421 + _1621;
    float _1638 = _1411 ? frac(_1634) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1634, 0.0f, 1.0f));
    float _1650 = _1602.y;
    float _1653 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1638) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1638)) * step(0.001000000047497451305389404296875f, smoothstep(_1623, 0.0f, length(_1631)))) * step(_1416, _1650 - 0.100000001490116119384765625f);
    float _1656 = _1653 * _1587;
    float2 _1669 = (float4(((clamp(_1477 / _1469.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1461.x)) * _1499) * _1433, _1502, _1496).xy + float4(((clamp(_1554 / _1546.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1538.x)) * _1576) * _1510, _1579, _1573).xy) + float4(((clamp(_1631 / _1623.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1615.x)) * _1653) * _1587, _1656, _1650).xy;
    float _1671 = max(_1656, max(_1502, _1579));
    float4 _1674 = float4(_1669, _1671, 0.0f);
    float2 _1676 = _1425.xz * 1.0f;
    float2 _1677 = floor(_1676);
    float2 _1680 = frac(_1677 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1684 = _1680 + dot(_1680, _1680 + 34.345001220703125f.xx).xx;
    float _1685 = _1684.x;
    float _1686 = _1684.y;
    float2 _1690 = frac(float2(_1685 * _1686, _1685 + _1686));
    float2 _1693 = frac((_1677 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1697 = _1693 + dot(_1693, _1693 + 34.345001220703125f.xx).xx;
    float _1698 = _1697.x;
    float _1699 = _1697.y;
    float2 _1703 = frac(float2(_1698 * _1699, _1698 + _1699));
    float _1709 = _1690.x;
    float _1711 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1709);
    float2 _1712 = ((_1676 - _1677) + ((((_1703 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1715 = _1712.y;
    float2 _1719 = float2(_1712.x * 1.25f, _1715 * ((_1715 < 0.0f) ? 1.25f : 0.75f));
    float _1722 = _1423 + _1709;
    float _1726 = _1411 ? frac(_1722) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1722, 0.0f, 1.0f));
    float _1738 = _1690.y;
    float _1741 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1726) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1726)) * step(0.001000000047497451305389404296875f, smoothstep(_1711, 0.0f, length(_1719)))) * step(_1416, _1738 - 0.100000001490116119384765625f);
    float _1744 = _1741 * _1433;
    float2 _1749 = _1425.xy * 1.0f;
    float2 _1750 = floor(_1749);
    float2 _1753 = frac(_1750 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1757 = _1753 + dot(_1753, _1753 + 34.345001220703125f.xx).xx;
    float _1758 = _1757.x;
    float _1759 = _1757.y;
    float2 _1763 = frac(float2(_1758 * _1759, _1758 + _1759));
    float2 _1766 = frac((_1750 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1770 = _1766 + dot(_1766, _1766 + 34.345001220703125f.xx).xx;
    float _1771 = _1770.x;
    float _1772 = _1770.y;
    float2 _1776 = frac(float2(_1771 * _1772, _1771 + _1772));
    float _1782 = _1763.x;
    float _1784 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1782);
    float2 _1785 = ((_1749 - _1750) + ((((_1776 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1788 = _1785.y;
    float2 _1792 = float2(_1785.x * 1.25f, _1788 * ((_1788 < 0.0f) ? 1.25f : 0.75f));
    float _1795 = _1423 + _1782;
    float _1799 = _1411 ? frac(_1795) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1795, 0.0f, 1.0f));
    float _1811 = _1763.y;
    float _1814 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1799) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1799)) * step(0.001000000047497451305389404296875f, smoothstep(_1784, 0.0f, length(_1792)))) * step(_1416, _1811 - 0.100000001490116119384765625f);
    float _1817 = _1814 * _1510;
    float2 _1822 = _1425.zy * 1.0f;
    float2 _1823 = floor(_1822);
    float2 _1826 = frac(_1823 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1830 = _1826 + dot(_1826, _1826 + 34.345001220703125f.xx).xx;
    float _1831 = _1830.x;
    float _1832 = _1830.y;
    float2 _1836 = frac(float2(_1831 * _1832, _1831 + _1832));
    float2 _1839 = frac((_1823 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1843 = _1839 + dot(_1839, _1839 + 34.345001220703125f.xx).xx;
    float _1844 = _1843.x;
    float _1845 = _1843.y;
    float2 _1849 = frac(float2(_1844 * _1845, _1844 + _1845));
    float _1855 = _1836.x;
    float _1857 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1855);
    float2 _1858 = ((_1822 - _1823) + ((((_1849 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1861 = _1858.y;
    float2 _1865 = float2(_1858.x * 1.25f, _1861 * ((_1861 < 0.0f) ? 1.25f : 0.75f));
    float _1868 = _1423 + _1855;
    float _1872 = _1411 ? frac(_1868) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1868, 0.0f, 1.0f));
    float _1884 = _1836.y;
    float _1887 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1872) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1872)) * step(0.001000000047497451305389404296875f, smoothstep(_1857, 0.0f, length(_1865)))) * step(_1416, _1884 - 0.100000001490116119384765625f);
    float _1890 = _1887 * _1587;
    float2 _1898 = (float4(((clamp(_1719 / _1711.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1703.x)) * _1741) * _1433, _1744, _1738).xy + float4(((clamp(_1792 / _1784.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1776.x)) * _1814) * _1510, _1817, _1811).xy) + float4(((clamp(_1865 / _1857.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1849.x)) * _1887) * _1587, _1890, _1884).xy;
    float4 _1903 = float4(_1898, max(_1890, max(_1744, _1817)), 0.0f);
    float _1905 = step(max(float2(_1469 * _1499, _558) * _1433, max(float2(_1546 * _1576, _558) * _1510, float2(_1623 * _1653, _558) * _1587)).x, 0.00999999977648258209228515625f);
    float2 _1909 = _1674.xy + (_1903.xy * _1905);
    float3 _1918 = float3((_1383.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1909.x, _1909.y, 0.0f.xxx.z);
    float2 _1922 = float2(0.0f, (_19_m10.x * _19_m92.z) * 0.75f);
    float3 _1925 = float3(_1352.x, 0.0f, _1352.z);
    float3 _1931 = abs(_1925 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1925, _1925)))) - 0.20000000298023223876953125f.xxx;
    float3 _1934 = max((_1931 * _1931) * _1931, 6.103515625e-05f.xxx);
    float3 _1937 = _1934 / dot(_1934, 1.0f.xxx).xxx;
    float _1956 = _1937.z;
    float _1958 = _1937.x;
    float4 _1960 = (_60.SampleBias(_25, _1368, _19_m16) * _1956) + (_60.SampleBias(_25, _1373, _19_m16) * _1958);
    float2 _1972 = _1918.xy + ((((_1960.xy * 2.0f) - 1.0f.xx) * ((_60.SampleBias(_25, _1368 + _1922, _19_m16).w * _1956) + (_60.SampleBias(_25, _1373 + _1922, _19_m16).w * _1958))) * _1407);
    float3 _1973 = float3(_1972.x, _1972.y, _1918.z);
    float _1974 = _1960.z;
    float _1979 = max(max(max(_1674.zw * step(0.00999999977648258209228515625f, _1671), _1903.zw * _1905).x, step(1.0099999904632568359375f - _1407, _1383.z)), smoothstep(1.0f - _1974, 1.10000002384185791015625f - _1974, _1407) * _1407);
    float2 _1980 = _1972.xy;
    _1973.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1980, _1980), 0.0f, 1.0f)));
    float3 _1987 = normalize(_1973);
    float3 _1988 = cross(_755, float3(0.0f, 1.0f, 0.0f));
    bool3 _1991 = (dot(_1988, _1988) > 6.103515625e-05f).xxx;
    float3 _1992 = normalize(_1988);
    float3 _1993 = float3(_1991.x ? _1992.x : float3(1.0f, 0.0f, 0.0f).x, _1991.y ? _1992.y : float3(1.0f, 0.0f, 0.0f).y, _1991.z ? _1992.z : float3(1.0f, 0.0f, 0.0f).z);
    float _2004 = min(_663, 0.0500000007450580596923828125f);
    float _2005 = lerp(_663, _2004, _1979);
    float _2022 = lerp(1.0f, 0.5f, (_1395 * (1.0f - _1341)) * (1.0f - _1404));
    _2030 = normalize(lerp(_755, normalize(((_1993 * _1987.x) + (cross(_1993, _755) * _1987.y)) + (_755 * _1987.z)), _1979.xxx));
    _2031 = _1979;
    _2032 = _2004;
    _2033 = max(_2005 - ((0.20000000298023223876953125f * _1341) * _1395), min(0.20000000298023223876953125f, _2005));
    _2034 = _744 * _2022;
    _2035 = lerp(_654, _654 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_654, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1979 * _1402).xxx) * _2022;
  }
  else {
    _2030 = _755;
    _2031 = 0.0f;
    _2032 = 0.00999999977648258209228515625f;
    _2033 = _663;
    _2034 = _744;
    _2035 = _654;
  }
  float3 _2165;
  float _2166;
  float3 _2167;
  float3 _2168;
  float _2169;
  [branch] if ((_793 - _55_m20) > 0.00999999977648258209228515625f) {
    bool3 _2040 = _602.xxx;
    float3 _2042 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _2043 = float3(_2040.x ? _2042.x : _10.x, _2040.y ? _2042.y : _10.y, _2040.z ? _2042.z : _10.z);
    float3 _2046 = _2043 * _19_m92.z;
    float3 _2048 = float3(_2040.x ? _9.xzy.x : _9.x, _2040.y ? _9.xzy.y : _9.y, _2040.z ? _9.xzy.z : _9.z);
    float3 _2050 = abs(_2048) - 0.20000000298023223876953125f.xxx;
    float3 _2053 = max((_2050 * _2050) * _2050, 6.103515625e-05f.xxx);
    float3 _2056 = _2053 / dot(_2053, 1.0f.xxx).xxx;
    float4 _2079 = ((_61.SampleBias(_25, _2046.xz, _19_m16) * _2056.y) + (_61.SampleBias(_25, _2046.xy, _19_m16) * _2056.z)) + (_61.SampleBias(_25, _2046.zy, _19_m16) * _2056.x);
    float _2080 = _2048.y;
    float _2087 = clamp(_793 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _2043.y) * clamp(_793 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _2093 = _2087 * (2.0f - _2087);
    float _2100 = smoothstep(2.0f - _2093, 2.349999904632568359375f - _2093, ((_2080 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _2079.z) * ((_661 * _661) * float(gl_FrontFacing));
    float _2112 = lerp(1.0f, 0.5f, ((_2087 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_2035 * (1.0f - _659), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _2079.w) * ((_2080 * 0.25f) + 0.75f));
    float3 _2114 = _2100.xxx;
    float2 _2120 = (_2079.xy * 2.0f) - 1.0f.xx;
    float3 _2121 = float3(_2120.x, _2120.y, _555.z);
    float2 _2122 = _2120.xy;
    _2121.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2122, _2122), 0.0f, 1.0f)));
    float2 _2130 = _2121.xy * 2.0f;
    float3 _2132 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2130.x, _2130.y, _2121.z), _2114);
    float3 _2136 = _2132 * rsqrt(max(6.103515625e-05f, dot(_2132, _2132)));
    float _2137 = _755.y;
    float _2140 = step(0.00999999977648258209228515625f, 1.0f - (_2137 * _2137));
    float _2144 = lerp(_755.z, _2137, _2140);
    float3 _2151 = (float3(0.0f, _2140, 1.0f - _2140) - (_755 * _2144)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2144 * _2144)));
    _2165 = ((cross(_2151, _755) * _2136.x) + (_2151 * _2136.y)) + (_755 * _2136.z);
    _2166 = lerp(_2033, 0.89999997615814208984375f, clamp(_2100 * 4.0f, 0.0f, 1.0f));
    _2167 = lerp(_2034 * _2112, 0.3079999983310699462890625f.xxx, _2114);
    _2168 = lerp(_2035 * _2112, 0.87999999523162841796875f.xxx, _2114);
    _2169 = lerp(_659, 0.0f, _2100);
  }
  else {
    _2165 = _755;
    _2166 = _2033;
    _2167 = _2034;
    _2168 = _2035;
    _2169 = _659;
  }
  float _2171 = 0.959999978542327880859375f - (_2169 * 0.959999978542327880859375f);
  float3 _2172 = _2168 * _2171;
  float3 _2175 = lerp(0.039999999105930328369140625f.xxx * _658.y, _2168, _2169.xxx);
  float3 _2176 = _2167 * _2171;
  float _2178 = max(_2166 * _2166, 0.0078125f);
  float _2179 = _2178 * _2178;
  bool _2180 = _623 < 0.9900000095367431640625f;
  float2 _2193 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2193.y = -_2193.y;
  float2 _2209 = lerp(((sqrt(sqrt(abs(_2193 * 0.5f))) * float2(int2(sign(_2193)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2180).xx);
  float4 _2211 = float4(_2209.x, _2209.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2211.z = 1.0f;
  _2211.w = _2180 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2224 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _2228 = normalize(float3(_2224.x, 6.103515625e-05f, _2224.z));
  float3 _2238 = lerp(_33_m3.xyz, _19_m87.xyz, _19_m94.y.xxx);
  float3 _2244 = _2238 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  float _2371;
  do {
    float _2253 = log2(float(asuint(_22_m0[_12]._m2.z))) - 8.0f;
    float _2370;
    if ((_2253 >= 0.0f) && (_2253 < _39_m18.z)) {
      int _2261 = int(_2253);
      float _2267 = 1.0f - clamp(dot(_756, _39_m15[_2261].xyz), 0.0f, 0.89999997615814208984375f);
      float4 _2284 = mul(_39_m13[_2261], float4((_671 - (_39_m15[_2261].xyz * (_2267 * _39_m14[_2261].x))) + (_756 * (_2267 * _39_m14[_2261].y)), 1.0f));
      float _2286 = max(_2284.z, 0.00999999977648258209228515625f);
      float4 _2287 = _2284;
      _2287.z = _2286;
      bool3 _2289 = bool3(_2287.xyz.x <= 0.0f.xxx.x, _2287.xyz.y <= 0.0f.xxx.y, _2287.xyz.z <= 0.0f.xxx.z);
      bool3 _2290 = bool3(_2287.xyz.x >= 1.0f.xxx.x, _2287.xyz.y >= 1.0f.xxx.y, _2287.xyz.z >= 1.0f.xxx.z);
      if (any(bool3(_2289.x || _2290.x, _2289.y || _2290.y, _2289.z || _2290.z)) || ((asuint(_2286) & 2147483647u) > 2139095040u)) {
        _2371 = 1.0f;
        break;
      }
      float _2311 = 4.0f * _39_m17.x;
      float2 _2312 = (_39_m16[_2261].xy + (_2287.xy * _39_m16[_2261].zw)).xy;
      int2 _2314 = int2(_757 % uint2(4u, 4u));
      int _2318 = (_2314.x * 4) + _2314.y;
      float2x2 _2325 = float2x2(_508[_2318], float2(-_508[_2318].y, _508[_2318].x));
      float _2327;
      float _2330;
      _2327 = 0.0f;
      _2330 = 0.0f;
      for (uint _2332 = 0u; _2332 < 16u;) {
        float4 _2344 = _44.GatherRed(_24, _2312 + (mul(_507[_2332], _2325) * _2311)) - _2286.xxxx;
        float4 _2345 = step(0.0f.xxxx, _2344);
        _2327 += dot(_2344, _2345);
        _2330 += dot(_2345, 1.0f.xxxx);
        _2332++;
        continue;
      }
      float _2356 = (2.0f * clamp(_2330 * 0.015625f, 0.0f, 1.0f)) - 1.0f;
      float _2359 = float(int(sign(_2356)));
      float _2361 = 1.0f - (_2359 * _2356);
      _2370 = min(1.0f, 0.5f - (0.5f * ((1.0f - lerp((_2361 * _2361) * _2361, _2361, clamp((_2327 * (1.0f / _2330)) * (1.0f / _2286), 0.0f, 1.0f))) * _2359)));
    } else {
      _2370 = 1.0f;
    }
    _2371 = _2370;
    break;
  } while (false);
  float2 _2870;
  do {
    if (_39_m7.w >= 0.9900000095367431640625f) {
      _2870 = float2(_39_m7.z, 1.0f);
      break;
    }
    int _2384 = int(_39_m7.x);
    bool3 _2386 = (_2384 == 2).xxx;
    float3 _2391 = _671 - float3(_2386.x ? _39_m1[0].xyz.x : _17_m11.xyz.x, _2386.y ? _39_m1[0].xyz.y : _17_m11.xyz.y, _2386.z ? _39_m1[0].xyz.z : _17_m11.xyz.z);
    float _2402 = max(clamp((_39_m6.w - dot(_2391, _2391)) * _39_m6.z, 0.0f, 1.0f), _39_m8.x);
    float _2590;
    bool _2591;
    if (_2402 > 0.0f) {
      float _2588;
      bool _2589;
      if (_2384 > 0) {
        float3 _2409 = _671 - _39_m1[0].xyz;
        float3 _2413 = _671 - _39_m1[1].xyz;
        float3 _2417 = _671 - _39_m1[2].xyz;
        float3 _2421 = _671 - _39_m1[3].xyz;
        float4 _2426 = float4(dot(_2409, _2409), dot(_2413, _2413), dot(_2417, _2417), dot(_2421, _2421));
        float4 _2435 = float4(_39_m1[0].w, _39_m1[1].w, _39_m1[2].w, _39_m1[3].w);
        float4 _2437 = float4(bool4(_2426.x < _2435.x, _2426.y < _2435.y, _2426.z < _2435.z, _2426.w < _2435.w));
        float3 _2441 = clamp(_2437.yzw - _2437.xyz, 0.0f.xxx, 1.0f.xxx);
        float _2448 = max(clamp(4.0f - dot(float4(_2437.x, _2441.x, _2441.y, _2441.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _39_m6.y);
        float4 _2455 = mul(_39_m0[uint(_2448)], float4(_671.x, _799, _671.z, 1.0f));
        float _2458 = _2455.z;
        float4 _2459 = float4(_2455.xy, _2458, _2448);
        float3 _2460 = _2459.xyz;
        bool3 _2461 = bool3(_2460.x <= 0.0f.xxx.x, _2460.y <= 0.0f.xxx.y, _2460.z <= 0.0f.xxx.z);
        bool3 _2462 = bool3(_2460.x >= 1.0f.xxx.x, _2460.y >= 1.0f.xxx.y, _2460.z >= 1.0f.xxx.z);
        bool _2468 = any(bool3(_2461.x || _2462.x, _2461.y || _2462.y, _2461.z || _2462.z)) || ((asuint(_2458) & 2147483647u) > 2139095040u);
        int _2469 = int(_2448);
        float2 _2486 = float4(_39_m3[_2469].xy + (_2459.xy * _39_m3[_2469].zw), _2458, _2448).xy * _39_m4.zw;
        float2 _2488 = floor(_2486 + 0.5f.xx);
        float2 _2489 = _2486 - _2488;
        float _2490 = _2489.x;
        float _2491 = _2490 + 0.5f;
        float _2493 = (_2491 * _2491) * 0.5f;
        float _2496 = min(_2490, 0.0f);
        float _2500 = max(_2490, 0.0f);
        float4 _2504 = float4(_2493 - _2490, (1.0f - _2490) - (_2496 * _2496), (_2490 + 1.0f) - (_2500 * _2500), _2493) * 0.44444000720977783203125f;
        float _2505 = _2489.y;
        float _2506 = _2505 + 0.5f;
        float _2508 = (_2506 * _2506) * 0.5f;
        float _2511 = min(_2505, 0.0f);
        float _2515 = max(_2505, 0.0f);
        float4 _2519 = float4(_2508 - _2505, (1.0f - _2505) - (_2511 * _2511), (_2505 + 1.0f) - (_2515 * _2515), _2508) * 0.44444000720977783203125f;
        float2 _2521 = _2504.yw;
        float2 _2522 = _2504.xz + _2521;
        float2 _2524 = _2519.yw;
        float2 _2525 = _2519.xz + _2524;
        float2 _2531 = ((_2521 / _2522) + float2(-1.5f, 0.5f)) * _39_m4.xx;
        float2 _2533 = ((_2524 / _2525) + float2(-1.5f, 0.5f)) * _39_m4.yy;
        float2 _2535 = _2488 * _39_m4.xy;
        float _2536 = _2531.x;
        float _2537 = _2533.x;
        float _2540 = _2531.y;
        float _2543 = _2533.y;
        float _2548 = _2522.x;
        float _2549 = _2525.x;
        float _2551 = _2522.y;
        float _2553 = _2525.y;
        _2588 = _2468 ? 1.0f : (((((_2548 * _2549) * _40.SampleCmpLevelZero(_26, float3(_2535 + float2(_2536, _2537), _554).xy, _2458)) + ((_2551 * _2549) * _40.SampleCmpLevelZero(_26, float3(_2535 + float2(_2540, _2537), _554).xy, _2458))) + ((_2548 * _2553) * _40.SampleCmpLevelZero(_26, float3(_2535 + float2(_2536, _2543), _554).xy, _2458))) + ((_2551 * _2553) * _40.SampleCmpLevelZero(_26, float3(_2535 + float2(_2540, _2543), _554).xy, _2458)));
        _2589 = _2468;
      } else {
        _2588 = 1.0f;
        _2589 = false;
      }
      _2590 = _2588;
      _2591 = _2589;
    } else {
      _2590 = 1.0f;
      _2591 = false;
    }
    float _2788;
    float _2789;
    if ((_2402 < 1.0f) || (_39_m8.x > 0.5f)) {
      float _2599 = 1.0f - clamp(dot(_756, _33_m0.xyz), 0.0f, 0.89999997615814208984375f);
      float4 _2616 = float4((_671 - (_33_m0.xyz * (_2599 * _39_m22.x))) + (_756 * (_2599 * _39_m22.y)), 1.0f);
      float4 _2617 = mul(_39_m21, _2616);
      float2 _2618 = _2617.xy;
      float _2786;
      if (all(bool2(_2618.x > 0.0f.xx.x, _2618.y > 0.0f.xx.y)) && all(bool2(_2618.x < 1.0f.xx.x, _2618.y < 1.0f.xx.y))) {
        uint _2637 = clamp(uint((floor(_2617.y * _39_m23.z) + _2617.x) * _39_m23.y), 0u, 127u);
        uint _2641 = asuint(_39_m25[_2637].x);
        float2 _2642 = spvUnpackHalf2x16(_2641);
        float _2643 = _2642.x;
        float _2785;
        if (_2643 >= 0.0f) {
          float4x4 _2652 = _39_m20;
          _2652[0].w = _39_m25[_2637].y;
          _2652[1].w = _39_m25[_2637].z;
          _2652[2].w = _39_m25[_2637].w;
          float4 _2659 = mul(_2652, _2616);
          float3 _2660 = _2659.xyz;
          float _2784;
          if (all(bool3(_2660.x > 0.0f.xxx.x, _2660.y > 0.0f.xxx.y, _2660.z > 0.0f.xxx.z)) && all(bool3(_2660.x < 1.0f.xxx.x, _2660.y < 1.0f.xxx.y, _2660.z < 1.0f.xxx.z))) {
            float2 _2672 = (_2659.xy * _39_m22.zw) + float2(_2643, spvUnpackHalf2x16(_2641 >> 16u).x);
            float _2677 = _2659.z;
            float2 _2683 = float4(_2672, _2677, 1.0f).xy * _39_m24.zw;
            float2 _2685 = floor(_2683 + 0.5f.xx);
            float2 _2686 = _2683 - _2685;
            float _2687 = _2686.x;
            float _2688 = _2687 + 0.5f;
            float _2690 = (_2688 * _2688) * 0.5f;
            float _2693 = min(_2687, 0.0f);
            float _2697 = max(_2687, 0.0f);
            float4 _2701 = float4(_2690 - _2687, (1.0f - _2687) - (_2693 * _2693), (_2687 + 1.0f) - (_2697 * _2697), _2690) * 0.44444000720977783203125f;
            float _2702 = _2686.y;
            float _2703 = _2702 + 0.5f;
            float _2705 = (_2703 * _2703) * 0.5f;
            float _2708 = min(_2702, 0.0f);
            float _2712 = max(_2702, 0.0f);
            float4 _2716 = float4(_2705 - _2702, (1.0f - _2702) - (_2708 * _2708), (_2702 + 1.0f) - (_2712 * _2712), _2705) * 0.44444000720977783203125f;
            float2 _2718 = _2701.yw;
            float2 _2719 = _2701.xz + _2718;
            float2 _2721 = _2716.yw;
            float2 _2722 = _2716.xz + _2721;
            float2 _2728 = ((_2718 / _2719) + float2(-1.5f, 0.5f)) * _39_m24.xx;
            float2 _2730 = ((_2721 / _2722) + float2(-1.5f, 0.5f)) * _39_m24.yy;
            float2 _2732 = _2685 * _39_m24.xy;
            float _2733 = _2728.x;
            float _2734 = _2730.x;
            float _2737 = _2728.y;
            float _2740 = _2730.y;
            _2784 = ((((_2719.x * _2722.x) * _46.SampleCmpLevelZero(_26, float3(_2732 + float2(_2733, _2734), _554).xy, _2677)) + ((_2719.y * _2722.x) * _46.SampleCmpLevelZero(_26, float3(_2732 + float2(_2737, _2734), _554).xy, _2677))) + ((_2719.x * _2722.y) * _46.SampleCmpLevelZero(_26, float3(_2732 + float2(_2733, _2740), _554).xy, _2677))) + ((_2719.y * _2722.y) * _46.SampleCmpLevelZero(_26, float3(_2732 + float2(_2737, _2740), _554).xy, _2677));
          } else {
            _2784 = 1.0f;
          }
          _2785 = _2784;
        } else {
          _2785 = 1.0f;
        }
        _2786 = _2785;
      } else {
        _2786 = 1.0f;
      }
      _2788 = _2591 ? _2786 : _2590;
      _2789 = _2786;
    } else {
      _2788 = _2590;
      _2789 = 1.0f;
    }
    float _2792 = lerp(lerp(_2789, _2788, _2402), min(_2789, _2788), _39_m8.x);
    float _2865;
    if (_2792 > 0.001000000047497451305389404296875f) {
      float3 _2827 = _671 - _19_m65.xyz;
      float2 _2832 = (_2827 + (_19_m68.xyz * _2827.y)).xz * _19_m66.z;
      float2 _2833 = _19_m67.xy * _19_m77.w;
      float3 _2840 = _671 - _19_m69.xyz;
      float2 _2848 = _19_m69.w.xx;
      float4 _2855 = _45.SampleLevel(_25, lerp(_2832 * _19_m67.w, (_2840 + (_19_m68.xyz * _2840.y)).xz * _19_m70.x, _2848) + lerp(_2833, _19_m70.yz * _19_m77.w, _2848), 0.0f);
      _2865 = _2792 * lerp(1.0f, lerp(_45.SampleLevel(_25, _2832 + _2833, 0.0f).x, lerp(_2855.x, _2855.y, _19_m69.w), smoothstep(_19_m66.x, _19_m66.y, length(_2827.xz))), _19_m67.z);
    } else {
      _2865 = _2792;
    }
    _2870 = float2(lerp(_2865, _39_m7.z, _39_m7.w), _2865);
    break;
  } while (false);
  float _2874 = lerp(1.0f, _2371, _39_m6.x);
  float _2878 = lerp(lerp(1.0f, _2870.x, _39_m6.x), 1.0f, _19_m83.z);
  float _2879 = dot(_2165, _2224);
  float3 _2886 = _2176 * _19_m82.z;
  float3 _2887 = _2886 * 0.64999997615814208984375f;
  float _2891 = dot(_2172, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2904 = clamp(-dot(_2228.xz, normalize(_767.xz)), 0.0f, 1.0f);
  float _2908 = 1.0f - _19_m94.x;
  float4 _2922 = _56.SampleLevel(_24, float2((clamp(lerp(_2879, ((-_2879) * ((_2879 * 0.5f) - 1.0f)) + 0.5f, (_2904 * smoothstep(0.25f, 0.75f, 1.0f - abs(_767.y))) * _2908) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2923 = _2922.w;
  float _2925 = _2922.x;
  float _2926 = _2922.y;
  float _2927 = _2922.z;
  float _2932 = max(max(_2925, _2926), _2927) - min(min(_2925, _2926), _2927);
  float4 _2940 = _56.SampleLevel(_24, float2((dot(_2165, _767) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2941 = _2940.w;
  float _2942 = _661 * _2874;
  float _2949 = min(min(_2874, _661), _2923);
  float _2950 = _2941 * _2942;
  float3 _2954 = ((clamp(dot(_755, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1309, 1.0f.xxx, (_19_m83.y * _2949).xxx);
  float3 _2956 = _2949.xxx;
  float3 _2979 = _2878.xxx;
  float3 _2980 = lerp((_2954 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1310), 1.5f), clamp(_1310, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_2244, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2244, _2956) + ((_2954 * clamp(_1310, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_2238 * _19_m94.y)))) * _19_m82.y, _2979);
  float3 _2981 = lerp(lerp(lerp(dot(_2887, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2887, 1.2000000476837158203125f.xxx), _2886, clamp((_2942 * _2941) + _2923, 0.0f, 1.0f).xxx), _2172, _2956);
  float3 _2987 = _2981 * ((1.0f - _2932).xxx + (_2922.xyz * _2932));
  float3 _2996 = lerp(lerp(_2886, lerp(_2891.xxx, _2172, 1.2000000476837158203125f.xxx), _2950.xxx), _2987 * clamp(dot(_2981, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2987, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2979);
  float4 _3000 = float4(_2996, _2878);
  float _3002 = lerp(_2950, _2949, _2878);
  float _3005 = lerp(_19_m82.z, 1.0f, _3002);
  float3 _3013 = float3(_767.x, lerp(0.5f, _2224.y, _2878), _767.z);
  float _3026 = clamp(dot(_2030, _593), 0.0f, 1.0f);
  float _3027 = dot(_2030, normalize(((_2224 * _2878) + ((_3013 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3013, _3013)))) * 2.0f)) + (_593 * (2.0f + _2878))));
  float _3031 = (((_3027 * _2179) - _3027) * _3027) + 1.0f;
  float _3032 = _3031 * _3031;
  float _3035 = (_2179 != _3032) ? (_2179 / _3032) : 1.0f;
  float _3036 = 2.0f * _3026;
  float _3038 = (1.0f + _3026) - _3026;
  float _3047 = _3026 * _3026;
  float3 _3059 = _2175 * _57.SampleLevel(_24, float2(lerp(_3035 / min(1.0f / (_2179 + 9.9999997473787516355514526367188e-05f), 65504.0f), _3047, _55_m4), _2166 * (1.0f - _2169)), 0.0f).xyz;
  float3 _3061 = lerp(_2175, _3059, _55_m4.xxx);
  float _3074 = (1.0f - _55_m6) + (_667 * _55_m6);
  float3 _3076 = ((_2980 * _2996) * _3074) + (((_3059 * clamp((_3035 * (0.5f / ((_3036 + (_2178 * _3038)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2980 * (((_3002 * 0.5f) + 0.5f) * _3005)) * 1.0f)) * _19_m95.w);
  float _3077 = dot(_3076, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _3080 = clamp(_3077 - 0.5f, 0.0f, 0.5f);
  float3 _3116 = normalize(cross(_767, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _3122 = dot(_593, _2165);
  float _3124 = 1.0f - abs(_3122);
  float _3146 = dot(_2228, _2165);
  float _3158 = 1.0f - _2878;
  float _3185 = lerp(_2166, _2032, _2031);
  float _3186 = _3185 * _3185;
  float _3187 = _3047 * _3026;
  float2 _3188 = float2(1.0f, _3026);
  float2 _3191 = float2(1.0f, _3186);
  float3 _3194 = float3(1.0f, _3186, (_3186 * _3186) * _3186);
  float _3199 = dot(mul(_3188, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _3191) / dot(mul(float3(1.0f, _3047, _3187), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _3194);
  float _3204 = dot(mul(_3188, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _3191) / dot(mul(float3(1.0f, _3026, _3187), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _3194);
  float3 _3207 = (_3061 * _3199) + _3204.xxx;
  float _3208 = _3199 + _3204;
  float3 _3214 = -_593;
  float3 _3215 = reflect(_3214, _2030);
  float _3220 = _3215.x;
  float _3222 = _3215.z;
  float3 _3225 = _3215;
  _3225.x = (_3220 * _19_m98.y) + (_3222 * _19_m98.x);
  _3225.z = (_3222 * _19_m98.y) - (_3220 * _19_m98.x);
  float3 _3246 = lerp(_3077.xxx, _3076, ((_3080 * _3080) + 1.0f).xxx) + (((((_19_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _3124)) * _19_m90.w) * min(min(clamp(dot(_678, _3116) + 1.0f, 0.0f, 1.0f), _661), _2874)) * (lerp(0.25f.xxx, _2172, _19_m91.z.xxx) * clamp(dot(_3116, _2165), 0.0f, 1.0f))) + ((((((lerp(_1308 * (1.0f / max(max(max(_1308.x, _1308.y), _1308.z) * 0.5f, 1.0f)), _2244, _2979) * clamp(lerp(dot(_1307.xyz, _2165) * _1307.w, ((-_3146) * ((_3146 * 0.5f) - 1.0f)) + 0.5f, _2878), 0.0f, 1.0f)) * ((_3158 + (_2904 * _2878)) * _2908)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _3124)) * min(_661, _2874)) * (_3158 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2891) * _2878))) * max(0.1500000059604644775390625f.xxx, _2172)));
  float2 _3248 = float2(_757);
  float2 _3250 = floor(_3248 * 0.03125f);
  int _3258 = int((_3250.x + (_3250.y * _35_m9)) * 8.0f);
  float _3265 = floor(_574 - (_19_m3.y * _35_m15));
  float _3269 = clamp(_3265, 0.0f, _35_m11 - 1.0f);
  int _3271 = int(_3269 * 8.0f);
  float3 _3273;
  _3273 = _3246 + (((_66.SampleLevel(_24, _3225, (1.2000000476837158203125f * log2(max(_3185, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_3207 + ((_3061 * ((1.0f - _3208) / _3208)) * _3207)) * 1.0f)) * ((clamp(_1310, 0.5f, 1.5f) * _19_m82.w) * _3005)) * _1309);
  float3 _3274;
  [loop] for (int _3276 = 0; _3276 <= 7; _3273 = _3274, _3276++) {
    uint _3297 = (_3265 <= _3269) ? (_29.Load(uint((_35_m2 + _3258) + _3276) * 4 + 0) & _29.Load(uint((_35_m3 + _3271) + _3276) * 4 + 0)) : 0u;
    uint _3298 = uint(_3276);
    _3274 = _3273;
    uint _3303;
    float3 _3300;
    [loop] for (uint _3302 = _3297; _3302 != 0u; _3274 = _3300, _3302 = _3303) {
      uint _3307 = firstbitlow(_3302);
      _3303 = _3302 ^ (1u << (_3307 & 31u));
      int _3313 = int((32u * _3298) + _3307) * 8;
      int _3316 = _3313 + 1;
      int _3319 = _3313 + 2;
      int _3322 = _3313 + 3;
      int _3325 = _3313 + 4;
      int _3328 = _3313 + 5;
      int _3331 = _3313 + 6;
      int _3334 = _3313 + 7;
      uint _3338 = uint(_33_m6[_3328].w);
      float _3413;
      if ((_3338 & 1u) == 1u) {
        uint _3344 = asuint(_33_m6[_3328].x);
        uint _3351 = asuint(_33_m6[_3328].y);
        uint _3358 = asuint(_33_m6[_3328].z);
        uint _3365 = asuint(_33_m6[_3331].x);
        uint _3372 = asuint(_33_m6[_3331].y);
        uint _3379 = asuint(_33_m6[_3331].z);
        float3 _3398 = abs(mul(float4(_671 - _33_m6[_3316].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_3344).x, spvUnpackHalf2x16(_3358).x, spvUnpackHalf2x16(_3372).x, 0.0f), float4(spvUnpackHalf2x16(_3344 >> 16u).x, spvUnpackHalf2x16(_3358 >> 16u).x, spvUnpackHalf2x16(_3372 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_3351).x, spvUnpackHalf2x16(_3365).x, spvUnpackHalf2x16(_3379).x, 0.0f), float4(spvUnpackHalf2x16(_3351 >> 16u).x, spvUnpackHalf2x16(_3365 >> 16u).x, spvUnpackHalf2x16(_3379 >> 16u).x, 0.0f))).xyz);
        float _3405 = _33_m6[_3334].x * 0.5f;
        float _3411 = 1.0f - clamp((max(max(_3398.x, _3398.y), _3398.z) - (_3405 + 0.5f)) / (0.5f - _3405), 0.0f, 1.0f);
        _3413 = _3411 * _3411;
      } else {
        _3413 = 1.0f;
      }
      if (false || (_3413 < 0.001000000047497451305389404296875f)) {
        _3300 = _3274;
        continue;
      }
      float3 _4208;
      do {
        uint _3421 = uint(_33_m6[_3313].w);
        [branch] if (_3421 >= 4u) {
          _4208 = _3274;
          break;
        }
        float3 _4207;
        if (_33_m6[_3313].w < 1.5f) {
          float3 _4206;
          do {
            uint _3432 = asuint(_33_m6[_3322].w);
            if ((_3432 == 16u) || ((_33_m6[_3322].z + _19_m94.z) < 0.5f)) {
              _4206 = _3274;
              break;
            }
            bool _3443 = (_3421 & 1u) == 0u;
            bool _3447 = (!_3443) && (_33_m6[_3319].z > 0.0f);
            bool _3448 = _3432 == 4u;
            float _3449 = float(_3443);
            float _3457 = (0.5f + (0.5f * _33_m6[_3319].y)) - abs(_33_m6[_3319].x);
            float _3458 = _33_m6[_3319].y - _3457;
            float _3465 = abs(max((1.0f - abs(_3457)) - abs(_3458), 0.00048828125f));
            float3 _3469 = normalize(float3(_3457, _3458, (_33_m6[_3319].x >= 0.0f) ? _3465 : (-_3465)));
            float _3475 = lerp(_33_m6[_3331].w, max(2.0f * _33_m6[_3325].y, 0.100000001490116119384765625f), float(_3448));
            float3 _3480 = _33_m6[_3316].xyz - _671;
            float3 _3481 = -_3469;
            float3 _3486 = lerp(_3480, _3481 * dot(_3480, _3481), (float(_3448 && (_33_m6[_3325].z > 0.5f)) * _3449).xxx);
            float _3487 = dot(_3486, _3486);
            float _3488 = rsqrt(_3487);
            float3 _3489 = _3486 * _3488;
            float3 _3522;
            float _3523;
            if (_3447) {
              float3 _3493 = (_3469 * _33_m6[_3319].z) * 0.5f;
              float3 _3494 = _3486 - _3493;
              float3 _3495 = _3486 + _3493;
              float _3496 = length(_3494);
              float _3497 = length(_3495);
              float3 _3506 = normalize(cross(cross(_3469, _3489), _3469));
              _3522 = _3506;
              _3523 = ((1.0f / ((((_3496 * _3497) + dot(_3494, _3495)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_3506, _3494) / _3496) + (dot(_3506, _3495) / _3497)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_3319].z * _3488, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _3522 = _3489;
              _3523 = 1.0f;
            }
            float _3545;
            if (_3475 < 0.0f) {
              float _3539 = _3487 * (_33_m6[_3316].w * _33_m6[_3316].w);
              float _3542 = clamp(1.0f - (_3539 * _3539), 0.0f, 1.0f);
              _3545 = lerp(1.0f / (_3487 + 1.0f), _3523, float(_3447)) * (_3542 * _3542);
            } else {
              float3 _3528 = _3486 * _33_m6[_3316].w;
              _3545 = _3523 * pow(1.0f - clamp(dot(_3528, _3528), 0.0f, 1.0f), _3475);
            }
            float _3550 = clamp((dot(_3522, _3481) - _33_m6[_3319].z) * _33_m6[_3319].w, 0.0f, 1.0f);
            float _3553 = _3545 * lerp(1.0f, _3550 * _3550, _3449);
            int _3555 = int(_33_m6[_3334].w);
            float _3659;
            if ((!_3447) && (_3555 >= 0)) {
              uint _3561 = uint(_3555);
              float2 _3652;
              [branch] if (_3449 != 0.0f) {
                float4 _3642 = mul(_69_m1[_3561], float4(_671.x, _799, _671.z, 1.0f));
                _3652 = _69_m0[_3561].xy + (clamp(_3642.xy / _3642.w.xx, 0.0f.xx, 1.0f.xx) * _69_m0[_3561].zw);
              }
              else {
                float3 _3576 = mul(float4(-_3486, 0.0f), _69_m1[_3561]).xyz;
                float3 _563 = _3576;
                float3 _562 = _3576;
                float3 _561 = abs(_3576);
                uint _3585 = uint(int(_561.y > _561.x));
                uint _3591 = (_561.z > _561[_3585]) ? 2u : _3585;
                uint _3597 = (_3591 * 2u) + uint(_562[_3591] < 0.0f);
                float _3601 = abs(_563[_3597 / 2u]);
                float _3621 = 0.5f - (0.000244140625f / _69_m0[_3561].w);
                _3652 = _69_m0[_3561].xy + (clamp(float2((float(_3597) + ((((_563[uint(_509[_3597].x)] * _510[_3597].x) / _3601) * _3621) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_563[uint(_509[_3597].y)] * _510[_3597].y) / _3601) * _3621)), 0.0f.xx, 1.0f.xx) * _69_m0[_3561].zw);
              }
              _3659 = _3553 * _67.SampleLevel(_24, _3652, 0.0f).x;
            } else {
              _3659 = _3553;
            }
            float _3660 = _3659 * _3413;
            float3 _4205;
            do {
              float3 _4204;
              [branch] if (_3660 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_3448) {
                  _4205 = lerp(_3274, _33_m6[_3313].xyz, (_3660 * (_33_m6[_3325].x * ((1.0f - _33_m6[_3325].w) + (smoothstep(-0.5f, 0.5f, dot(_756, _3522)) * _33_m6[_3325].w)))).xxx);
                  break;
                }
                float _3680 = dot(_2165, _3522);
                float _3681 = clamp(_3680, 0.0f, 1.0f);
                float _4080;
                if (_3432 != 0u) {
                  bool _3687 = _3443 || ((_3338 & 2u) != 0u);
                  int _3737;
                  if (_3687) {
                    _3737 = int(_33_m6[_3322].x);
                  } else {
                    uint _3692 = asuint(_33_m6[_3319].w);
                    uint _3693 = asuint(_33_m6[_3322].x);
                    float3 _3694 = _671 - _33_m6[_3316].xyz;
                    float3 _3695 = abs(_3694);
                    float _3696 = _3695.x;
                    float _3697 = _3695.y;
                    float _3699 = _3695.z;
                    int _3732;
                    if ((_3696 > _3697) && (_3696 > _3699)) {
                      _3732 = int((_3694.x > 0.0f) ? (_3692 & 1023u) : ((_3692 >> 10u) & 1023u));
                    } else {
                      int _3724;
                      if (_3697 > _3699) {
                        _3724 = int((_3694.y > 0.0f) ? ((_3692 >> 20u) & 1023u) : (_3693 & 1023u));
                      } else {
                        _3724 = int((_3694.z > 0.0f) ? ((_3693 >> 10u) & 1023u) : ((_3693 >> 20u) & 1023u));
                      }
                      _3732 = _3724;
                    }
                    _3737 = (_3732 == 1023) ? (-1) : _3732;
                  }
                  bool _3738 = _3737 >= 0;
                  float _4079;
                  if (_3738) {
                    float3 _3745 = _671 - _33_m6[_3316].xyz;
                    uint _3755 = asuint(_39_m11.x) + (uint(_3737) * 96u);
                    uint _3757 = (_3755 + 64u) >> 2u;
                    uint _3760 = _3757 + 1u;
                    uint _3763 = _3757 + 2u;
                    uint _3766 = _3757 + 3u;
                    float4 _3770 = asfloat(uint4(_43.Load(_3757 * 4 + 0), _43.Load(_3760 * 4 + 0), _43.Load(_3763 * 4 + 0), _43.Load(_3766 * 4 + 0)));
                    uint _3778 = _3755 >> 2u;
                    uint _3793 = (_3755 + 16u) >> 2u;
                    uint _3808 = (_3755 + 32u) >> 2u;
                    uint _3823 = (_3755 + 48u) >> 2u;
                    float4 _3843 = mul(transpose(float4x4(asfloat(uint4(_43.Load(_3778 * 4 + 0), _43.Load((_3778 + 1u) * 4 + 0), _43.Load((_3778 + 2u) * 4 + 0), _43.Load((_3778 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3793 * 4 + 0), _43.Load((_3793 + 1u) * 4 + 0), _43.Load((_3793 + 2u) * 4 + 0), _43.Load((_3793 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3808 * 4 + 0), _43.Load((_3808 + 1u) * 4 + 0), _43.Load((_3808 + 2u) * 4 + 0), _43.Load((_3808 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3823 * 4 + 0), _43.Load((_3823 + 1u) * 4 + 0), _43.Load((_3823 + 2u) * 4 + 0), _43.Load((_3823 + 3u) * 4 + 0))))), float4((_671 - ((_3745 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3745, _3745)))) * _3770.x)) + (_756 * (_3770.y * 5.0f)), 1.0f));
                    float3 _3847 = _3843.xyz / _3843.w.xxx;
                    uint _3849 = (_3755 + 80u) >> 2u;
                    float4 _3862 = asfloat(uint4(_43.Load(_3849 * 4 + 0), _43.Load((_3849 + 1u) * 4 + 0), _43.Load((_3849 + 2u) * 4 + 0), _43.Load((_3849 + 3u) * 4 + 0)));
                    float2 _3863 = _3847.xy;
                    float2 _3865 = _3862.xy;
                    float3 _3869 = _3847.xyz;
                    bool3 _3870 = bool3(_3869.x <= 0.0f.xxx.x, _3869.y <= 0.0f.xxx.y, _3869.z <= 0.0f.xxx.z);
                    bool3 _3871 = bool3(_3869.x >= 1.0f.xxx.x, _3869.y >= 1.0f.xxx.y, _3869.z >= 1.0f.xxx.z);
                    float _3874 = _3847.z;
                    float2 _3885 = ((_3863 * (_3862.zw - _3865)) + _3865).xy * _39_m10.zw;
                    float2 _3887 = floor(_3885 + 0.5f.xx);
                    float2 _3888 = _3885 - _3887;
                    float _3889 = _3888.x;
                    float _3890 = _3889 + 0.5f;
                    float _3891 = _3890 * _3890;
                    float _3894 = 1.0f - _3889;
                    float _3895 = min(_3889, 0.0f);
                    float _3898 = _3889 + 1.0f;
                    float _3899 = max(_3889, 0.0f);
                    float _3910 = _3888.y;
                    float _3911 = _3910 + 0.5f;
                    float _3912 = _3911 * _3911;
                    float _3915 = 1.0f - _3910;
                    float _3916 = min(_3910, 0.0f);
                    float _3919 = _3910 + 1.0f;
                    float _3920 = max(_3910, 0.0f);
                    float3 _3932 = float3(0.1599999964237213134765625f * _3894, 0.1599999964237213134765625f * ((_3898 - (_3899 * _3899)) + 1.0f), _3891 * 0.07999999821186065673828125f);
                    float3 _3933 = float3(0.1599999964237213134765625f * ((_3891 * 0.5f) - _3889), 0.1599999964237213134765625f * ((_3894 - (_3895 * _3895)) + 1.0f), 0.1599999964237213134765625f * _3898) + _3932;
                    float3 _3935 = float3(0.1599999964237213134765625f * _3915, 0.1599999964237213134765625f * ((_3919 - (_3920 * _3920)) + 1.0f), _3912 * 0.07999999821186065673828125f);
                    float3 _3936 = float3(0.1599999964237213134765625f * ((_3912 * 0.5f) - _3910), 0.1599999964237213134765625f * ((_3915 - (_3916 * _3916)) + 1.0f), 0.1599999964237213134765625f * _3919) + _3935;
                    float3 _3942 = ((_3932 / _3933) + float3(-2.5f, -0.5f, 1.5f)) * _39_m10.xxx;
                    float3 _3944 = ((_3935 / _3936) + float3(-2.5f, -0.5f, 1.5f)) * _39_m10.yyy;
                    float2 _3946 = _3887 * _39_m10.xy;
                    float _3947 = _3942.x;
                    float _3948 = _3944.x;
                    float _3951 = _3942.y;
                    float _3954 = _3942.z;
                    float _3957 = _3944.y;
                    float _3964 = _3944.z;
                    float _3971 = _3933.x;
                    float _3972 = _3936.x;
                    float _3974 = _3933.y;
                    float _3976 = _3933.z;
                    float _3978 = _3936.y;
                    float _3982 = _3936.z;
                    float _4040 = (((((((_3971 * _3972) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3947, _3948), _554).xy, _3874)) + ((_3974 * _3972) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3951, _3948), _554).xy, _3874))) + ((_3976 * _3972) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3954, _3948), _554).xy, _3874))) + ((_3971 * _3978) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3947, _3957), _554).xy, _3874))) + ((_3974 * _3978) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3951, _3957), _554).xy, _3874))) + ((_3976 * _3978) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3954, _3957), _554).xy, _3874))) + ((_3971 * _3982) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3947, _3964), _554).xy, _3874));
                    float4 _4063 = asfloat(uint4(_43.Load(_3757 * 4 + 0), _43.Load(_3760 * 4 + 0), _43.Load(_3763 * 4 + 0), _43.Load(_3766 * 4 + 0)));
                    float _4064 = _4063.w;
                    float2 _4066 = min(_3863, 1.0f.xx - _3863);
                    _4079 = _3738 ? lerp(1.0f, (any(bool3(_3870.x || _3871.x, _3870.y || _3871.y, _3870.z || _3871.z)) || ((asuint(_3874) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4040 + ((_3974 * _3982) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3951, _3964), _554).xy, _3874))) + ((_3976 * _3982) * _41.SampleCmpLevelZero(_26, float3(_3946 + float2(_3954, _3964), _554).xy, _3874))), _3687 ? min(_4064, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4063.z - _3843.w) * 0.25f, min(_4066.x, _4066.y)))) : _4064) : 1.0f;
                  } else {
                    _4079 = clamp(dot(_678, _3522) + 1.0f, 0.0f, 1.0f);
                  }
                  _4080 = _4079;
                } else {
                  _4080 = 1.0f;
                }
                float _4160;
                float3 _4161;
                float _4162;
                float3 _4163;
                float3 _4164;
                float _4165;
                float _4166;
                [branch] if (_3432 == 0u) {
                  float3 _4140 = _33_m6[_3313].xyz * _3660;
                  _4160 = _3660;
                  _4161 = (_33_m6[_3313].xyz * ((1.0f - _33_m6[_3325].y) + ((1.0f / max(1.0f, max(max(_4140.x, _4140.y), _4140.z) * lerp(0.75f, 0.5f, _3158))) * _33_m6[_3325].y))) * lerp(0.25f * _33_m6[_3325].x, 1.0f, clamp(_3680 + 0.5f, 0.0f, 1.0f));
                  _4162 = _3681;
                  _4163 = _3000.xyz;
                  _4164 = _3000.xyz;
                  _4165 = 1.0f;
                  _4166 = 0.0f;
                }
                else {
                  float _4133;
                  float _4134;
                  float3 _4135;
                  float3 _4136;
                  float _4137;
                  float _4138;
                  if (_3432 == 3u) {
                    _4133 = _3660 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_3325].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_3325].x), _3124) * _4080);
                    _4134 = clamp(dot(_2165, -normalize(cross(_767, cross(_767, _3522)))), 0.0f, 1.0f);
                    _4135 = lerp(0.5f.xxx, _2172, _33_m6[_3325].y.xxx);
                    _4136 = 0.0f.xxx;
                    _4137 = 1.0f;
                    _4138 = 0.0f;
                  } else {
                    bool _4089 = _3432 == 1u;
                    float _4113;
                    float3 _4114;
                    float _4115;
                    float _4116;
                    if (_4089) {
                      _4113 = clamp(clamp(_3680 + _33_m6[_3325].x, -1.0f, 1.0f), 0.0f, 1.0f) * _4080;
                      _4114 = _2176 * _33_m6[_3325].y;
                      _4115 = 1.0f;
                      _4116 = 0.0f;
                    } else {
                      bool _4093 = _3432 == 2u;
                      float _4105;
                      if (_4093) {
                        _4105 = smoothstep(_33_m6[_3325].x + 0.0500000007450580596923828125f, _33_m6[_3325].x - 0.0500000007450580596923828125f, _2166) * ((1.0f - _33_m6[_3325].z) + (step(0.5f, _2169) * _33_m6[_3325].z));
                      } else {
                        _4105 = 1.0f;
                      }
                      _4113 = _3681;
                      _4114 = 0.0f.xxx;
                      _4115 = _4105;
                      _4116 = _4093 ? _33_m6[_3325].y : 0.0f;
                    }
                    bool3 _4117 = _4089.xxx;
                    _4133 = _3660;
                    _4134 = _4113;
                    _4135 = float3(_4117.x ? _2172.x : 0.0f.xxx.x, _4117.y ? _2172.y : 0.0f.xxx.y, _4117.z ? _2172.z : 0.0f.xxx.z);
                    _4136 = _4114;
                    _4137 = _4115;
                    _4138 = _4116;
                  }
                  _4160 = _4133;
                  _4161 = _33_m6[_3313].xyz;
                  _4162 = _4134;
                  _4163 = _4135;
                  _4164 = _4136;
                  _4165 = _4137;
                  _4166 = _4138;
                }
                float3 _4194;
                [branch] if (_3432 != 3u) {
                  float _4171 = lerp(_2178, 0.00999999977648258209228515625f, _4166);
                  float _4174 = dot(_2030, normalize(_3522 + _593));
                  float _4175 = _4171 * _4171;
                  float _4179 = (((_4174 * _4175) - _4174) * _4174) + 1.0f;
                  float _4180 = _4179 * _4179;
                  _4194 = ((_3059 * clamp((((_4175 != _4180) ? (_4175 / _4180) : 1.0f) * (0.5f / ((_3036 + (_4171 * _3038)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _4165) * _33_m6[_3334].z;
                }
                else {
                  _4194 = 0.0f.xxx;
                }
                float3 _4197 = _4161 * _4160;
                _4204 = _3274 + (((_4197 * lerp(_4164, _4163, _4162.xxx)) * _3074) + ((_4197 * _4194) * _4162));
              }
              else {
                _4204 = _3274;
              }
              _4205 = _4204;
              break;
            } while (false);
            _4206 = _4205;
            break;
          } while (false);
          _4207 = _4206;
        } else {
          _4207 = _3274;
        }
        _4208 = _4207;
        break;
      } while (false);
      _3300 = _4208;
    }
  }
  float3 _4248;
  [branch] if (_55_m12 > 0.5f) {
    _4248 = lerp(lerp(0.5f.xxx, lerp(dot(_3273, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3273, _55_m14.xxx), _55_m15.xxx) * _55_m13, _55_m26.xyz, _55_m26.w.xxx) + ((_55_m27.xyz * smoothstep(1.0f - _55_m16, 1.0f, 1.0f - clamp(_3122, 0.0f, 1.0f))) * _55_m17);
  }
  else {
    _4248 = _3273;
  }
  float4 _4255 = float4(_4248 * _19_m20.y, _667);
  _4255.w = (_55_m8 == 1.0f) ? _667 : 1.0f;
  float4 _4646;
  [branch] if (_19_m94.w < 0.5f) {
    float _4279 = _799 * _19_m46.w;
    float _4284 = max(0.00999999977648258209228515625f, _4279 + _19_m47.w);
    float3 _4298 = exp(_19_m45.xyz * ((-max(0.0f, (_594 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_4284)) / _4284) * exp(_4279 + _19_m48.w))));
    float _4301 = dot(_3214, _19_m44.xyz);
    float _4307 = _19_m45.w * _19_m45.w;
    float _4311 = (1.0f + _4307) - ((2.0f * _19_m45.w) * _4301);
    float3 _4638;
    float _4639;
    if (_19_m55.z > 0.0f) {
      uint3 _4466 = (uint3(int3(int(_757.x), int(_757.y), int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _4467 = _4466.y;
      uint _4468 = _4466.z;
      uint _4471 = _4466.x + (_4467 * _4468);
      uint _4473 = _4467 + (_4468 * _4471);
      uint _4475 = _4468 + (_4471 * _4473);
      uint _4477 = _4471 + (_4473 * _4475);
      float _4502 = dot(_3214, -_17_m0[2].xyz);
      float3 _4509 = _671 - _17_m11.xyz;
      float _4511 = (_19_m55.w * ((_4502 > 5.9604644775390625e-08f) ? (1.0f / _4502) : 0.0f)) * (1.0f / _594);
      float _4512 = _4509.y;
      float _4513 = _4511 * _4512;
      float _4515 = _17_m11.y + _4513;
      float _4516 = _4512 - _4513;
      float _4518 = (1.0f - _4511) * _594;
      float _4532 = max(-127.0f, _19_m49.z * _4516);
      float _4556 = max(-127.0f, _19_m52.x * _4516);
      float _4567 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_4515 - _19_m49.x)))) * ((abs(_4532) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4532)) / _4532) : (0.693147182464599609375f - (0.2402265071868896484375f * _4532)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_4515 - _19_m52.z)))) * ((abs(_4556) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4556)) / _4556) : (0.693147182464599609375f - (0.2402265071868896484375f * _4556))));
      float _4589 = clamp((_594 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _4592 = clamp((max(clamp(exp2(-(_4567 * _4518)), 0.0f, 1.0f), _19_m51.w) + clamp((_594 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _4589, 0.0f, 1.0f);
      float4 _4632 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _72.SampleLevel(_24, float3((_3248 + ((((float3(uint3(_4477, _4473 + (_4475 * _4477), _559) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_574 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_574 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _4638 = _4632.xyz + (((_19_m51.xyz * (1.0f - _4592)) + (((_19_m54.xyz * pow(clamp(dot(_593, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_4567 * max(_4518 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4589))) * _4632.w);
      _4639 = _4632.w * _4592;
    } else {
      float3 _4338 = _671 - _17_m11.xyz;
      float _4340 = _4338.y;
      float _4354 = max(-127.0f, _19_m49.z * _4340);
      float _4378 = max(-127.0f, _19_m52.x * _4340);
      float _4389 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_4354) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4354)) / _4354) : (0.693147182464599609375f - (0.2402265071868896484375f * _4354)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_4378) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4378)) / _4378) : (0.693147182464599609375f - (0.2402265071868896484375f * _4378))));
      float _4411 = clamp((_594 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _4414 = clamp((max(clamp(exp2(-(_4389 * _594)), 0.0f, 1.0f), _19_m51.w) + clamp((_594 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _4411, 0.0f, 1.0f);
      _4638 = (_19_m51.xyz * (1.0f - _4414)) + (((_19_m54.xyz * pow(clamp(dot(_593, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_4389 * max(_594 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4411));
      _4639 = _4414;
    }
    float3 _4644 = (_4255.xyz * (_4298 * _4639)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4301 * _4301)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _4307) / max((12.56637096405029296875f * _4311) * sqrt(_4311), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4298)) * _4639) + _4638);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _4644 = (_4644 * 0.65f) + (_4255.xyz * 0.35f);
    }
    // RenoDX code end
    _4646 = float4(_4644.x, _4644.y, _4644.z, _4255.w);
  }
  else {
    _4646 = _4255;
  }
  _14 = _4646;
  _15 = _2211;
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
  _12 = stage_input._12;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._14 = _14;
  stage_output._15 = _15;
  return stage_output;
}

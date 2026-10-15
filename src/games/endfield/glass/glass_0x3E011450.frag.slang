#include "../shared.h"

// Ported from the native 0x3E011450 Vulkan dump.
struct _20 {
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

struct _47 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _406;
static float4 _407;
static uint _408;

static const float4 _384[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _385[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _386[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _15_16 : register(b11, space0) {
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

[[vk::binding(15, 0)]] cbuffer _17_18 : register(b15, space0) {
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

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0, space2) {
  _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _33 : register(t53, space0);
[[vk::binding(8, 1)]] cbuffer _44_45 : register(b8, space1) {
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

[[vk::binding(16, 0)]] cbuffer _46_48 : register(b16, space0) {
  float4 _48_m0 : packoffset(c0);
  float4 _48_m1 : packoffset(c1);
  float4 _48_m2 : packoffset(c2);
  float4 _48_m3 : packoffset(c3);
  _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _51_52 : register(b13, space0) {
  float4 _52_m0 : packoffset(c0);
  float4 _52_m1 : packoffset(c1);
  float4 _52_m2 : packoffset(c2);
  float4 _52_m3 : packoffset(c3);
  float4 _52_m4 : packoffset(c4);
  uint4 _52_m5 : packoffset(c5);
  float4 _52_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _53_54 : register(b49, space0) {
  int _54_m0 : packoffset(c0);
  int _54_m1 : packoffset(c0.y);
  int _54_m2 : packoffset(c0.z);
  int _54_m3 : packoffset(c0.w);
  int _54_m4 : packoffset(c1);
  int _54_m5 : packoffset(c1.y);
  int _54_m6 : packoffset(c1.z);
  int _54_m7 : packoffset(c1.w);
  float _54_m8 : packoffset(c2);
  float _54_m9 : packoffset(c2.y);
  float _54_m10 : packoffset(c2.z);
  float _54_m11 : packoffset(c2.w);
  float _54_m12 : packoffset(c3);
  float _54_m13 : packoffset(c3.y);
  float _54_m14 : packoffset(c3.z);
  float _54_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _55_56 : register(b14, space0) {
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
  float4 _56_m10 : packoffset(c64);
  float4 _56_m11 : packoffset(c65);
  float4 _56_m12[62] : packoffset(c66);
  column_major float4x4 _56_m13[15] : packoffset(c128);
  float4 _56_m14[15] : packoffset(c188);
  float4 _56_m15[15] : packoffset(c203);
  float4 _56_m16[15] : packoffset(c218);
  float4 _56_m17 : packoffset(c233);
  float4 _56_m18 : packoffset(c234);
  float4 _56_m19[21] : packoffset(c235);
  column_major float4x4 _56_m20 : packoffset(c256);
  column_major float4x4 _56_m21 : packoffset(c260);
  float4 _56_m22 : packoffset(c264);
  float4 _56_m23 : packoffset(c265);
  float4 _56_m24 : packoffset(c266);
  float4 _56_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _60 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _73_74 : register(b51, space0) {
  float4 _74_m0[32] : packoffset(c0);
  column_major float4x4 _74_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _27 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _29 : register(t47, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25, space0);
[[vk::binding(7, 1)]] Texture2D<float4> _34 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _35 : register(s3, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _38 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _39 : register(s2, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _41 : register(t4, space1);
[[vk::binding(0, 1)]] SamplerState _42 : register(s0, space1);
[[vk::binding(20, 0)]] SamplerState _43 : register(s20, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _50 : register(t37, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _57 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _61 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _62 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _63 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _65 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _66 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _67 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _68 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _69 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _70 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _71 : register(t31, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _72 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _77 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _78 : register(t29, space0);

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

struct SPIRV_Cross_Input {
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

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _13 : SV_Target0;
  [[vk::location(1)]] float4 _14 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  float _434 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _443 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_45_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _445 = abs(_443);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _445 : (-_445)), (1.0f - _434) - _443) < 0.0f) {
    discard;
  }
  float2 _462 = gl_FragCoord.xy * _18_m0.zw;
  float2 _465 = (_462 * 2.0f) - 1.0f.xx;
  float4 _468 = float4(_465, gl_FragCoord.z, 1.0f);
  _468.y = -_465.y;
  float4 _471 = mul(_16_m6, _468);
  float3 _475 = _471.xyz / _471.w.xxx;
  float4 _479 = float4(_475, 1.0f);
  float _482 = abs(mul(_16_m0, _479).z);
  float _486 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _493 = cross(_6, float4(_7.xyz, _486).xyz) * _486;
  float3 _508;
  do {
    if (_18_m4.w == 0.0f) {
      _508 = _16_m11.xyz - _475;
      break;
    } else {
      _508 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _509 = dot(_508, _508);
  float _511 = rsqrt(max(_509, 9.9999999392252902907785028219223e-09f));
  float3 _512 = _508 * _511;
  float _513 = _509 * _511;
  bool _514 = gl_FrontFacing ? true : false;
  float4 _546 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
  float _548 = _546.w;
  float4 _551 = _36.SampleBias(_37, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
  float2 _554 = (_551.xy * 2.0f.xx) - 1.0f.xx;
  float2 _555 = abs(_554);
  bool2 _556 = bool2(_555.x < 0.01200000010430812835693359375f.xx.x, _555.y < 0.01200000010430812835693359375f.xx.y);
  float2 _557 = float2(_556.x ? 0.0f.xx.x : _554.x, _556.y ? 0.0f.xx.y : _554.y);
  float2 _558 = _557 * _45_m0;
  float _563 = max(0.00048828125f, sqrt(clamp(1.0f - dot(_557, _557), 0.0f, 1.0f)));
  float _564 = _558.x;
  float _565 = _558.y;
  float _566 = _551.z;
  float _567 = _551.w;
  float _585 = lerp(_548, _567, _45_m6) * _45_m32.w;
  float _596 = lerp(_45_m2, _45_m3, _566);
  float _606 = lerp(_548, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
  float _611 = 1.0f - _21_m0[_11]._m5.x;
  float4 _671 = _38.SampleBias(_39, ((lerp(_4, _5, _45_m56.xx) * _45_m64.xy) + _45_m64.zw) + (_45_m63.xy * _18_m77.w), _18_m16);
  float _681 = _671.x;
  float3 _683 = (lerp(_45_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _681) + ((((_45_m60.xyz * _671.y) + (_45_m61.xyz * _671.z)) + (_45_m62.xyz * _671.w)) * _45_m57);
  float _688 = (_21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _681)) * _45_m48;
  float3 _693 = lerp(clamp((_546.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx) * ((1.0f - _688).xxx + (_21_m0[_11]._m9.xyz * _688));
  float3 _719;
  [branch] if (_45_m49 > 0.5f) {
    _719 = _683 + ((_45_m55.xyz * ((1.0f - pow(clamp(abs(dot(_512, lerp(normalize(((_7.xyz * _564) + (_493 * _565)) + (_6 * _563)), _6, _45_m53.xxx))) + _45_m50, 0.0f, 1.0f), _45_m51)) * lerp(1.0f, _8.y, _45_m52))) * 1.0f);
  }
  else {
    _719 = _683;
  }
  float3 _740 = ((_7.xyz * _564) + (_493 * _565)) + (_6 * (_563 * (_514 ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _744 = _740 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_740, _740)));
  float _761 = clamp((1.0f - lerp(lerp(_548, _566, clamp(_45_m80, 0.0f, 1.0f)), _567, clamp(_45_m80 - 1.0f, 0.0f, 1.0f))) + _45_m81, 0.0f, 1.0f);
  float3 _765 = lerp(_744, _6, _45_m83.xxx);
  bool3 _780 = _514.xxx;
  float3 _781 = -_765;
  float _786 = pow(clamp(dot(_512, float3(_780.x ? _765.x : _781.x, _780.y ? _765.y : _781.y, _780.z ? _765.z : _781.z)) + _45_m75, 0.0f, 1.0f), _45_m78);
  float _788 = lerp(1.0f - _786, _786, _45_m79);
  float _812 = lerp(_585, _585 * _8.x, _45_m88) * ((1.0f - _45_m76) + (_788 * _45_m76));
  float _836 = dot(_744, _512);
  float3 _837 = -_512;
  float4 _857 = _41.SampleBias(_42, (_4 * _45_m74.xy) + _45_m74.zw, _18_m16);
  float2 _865 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_837, _744, _45_m67) * lerp(_45_m68, _45_m68 / max(gl_FragCoord.z * _836, 0.5f), _45_m69)).xy, ((_857 * 2.0f) - 1.0f.xxxx).xy * _45_m66, _45_m65.xx).xy;
  float2 _866 = _462 + _865;
  float2 _868 = _462 + (_865 * 0.25f);
  float4 _896 = _40.SampleBias(_43, lerp(lerp(_462, _868, step(_482, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _868, _18_m16).x) + _18_m2.w)).xx), _866, step(_482, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _866, _18_m16).x) + _18_m2.w)).xx), _18_m16);
  float _909 = clamp(float(int(sign(_434 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _922 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _922.y = -_922.y;
  float _948 = 0.07999999821186065673828125f * _45_m1;
  float3 _949 = _693 * _606;
  float3 _950 = _693 - _949;
  float3 _954 = (_948 - (_948 * _606)).xxx + _949;
  float4 _957 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _596) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _958 = _957.x;
  float2 _968 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_958 * _958, exp2((-9.27999973297119140625f) * max(0.0f, _836))) * _958) + _957.y)) + _957.zw;
  uint2 _1004;
  float _1005;
  if (_18_m24.y == 1.0f) {
    float4 _985 = mul(_18_m138, _479);
    float4 _988 = _985;
    _988.y = -_985.y;
    float4 _991 = _988 * (1.0f / _985.w);
    _1004 = uint2(clamp(((_991.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _1005 = 1.0f / ((_18_m2.z * _991.z) + _18_m2.w);
  } else {
    _1004 = uint2(gl_FragCoord.xy);
    _1005 = _482;
  }
  float3 _1007 = _475 + (_744 * 0.25f);
  float3 _1017 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _1026 = _1007 - (_18_m108.xyz + (_1017 * (-_18_m110.w)));
  float _1041 = max(min(max((max(abs(_1026.x), abs(_1026.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1026.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1343;
  float4 _1344;
  float4 _1345;
  float _1346;
  float _1347;
  if ((_18_m108.w != 0.0f) && (_1041 < 1.0f)) {
    float3 _1054 = _1007 - (_18_m108.xyz + (_1017 * (-_18_m110.y)));
    float _1068 = max(clamp((max(abs(_1054.x), abs(_1054.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1054.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1144;
    float4 _1145;
    float4 _1146;
    float4 _1147;
    if (_1068 < 1.0f) {
      float3 _1077 = ((_1007 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1079 = _1077 - floor(_1077);
      float4 _1083 = _66.SampleLevel(_25, _1079, 0.0f);
      float _1084 = 1.0f - _1068;
      float _1088 = _18_m109.y * 0.5f;
      float _1093 = _1079.x;
      float _1094 = clamp(_1079.y, _1088, 1.0f - _1088) * 0.3333333432674407958984375f;
      float _1095 = _1079.z;
      float4 _1098 = _67.SampleLevel(_24, float3(_1093, _1094, _1095), 0.0f);
      float _1114 = _1083.x;
      float _1124 = _1083.y;
      float _1134 = _1083.z;
      _1144 = _1041 + (_1098.w * _1084);
      _1145 = float4(((_67.SampleLevel(_24, float3(_1093, _1094 + 0.666666686534881591796875f, _1095), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1134, _1134) * _1084;
      _1146 = float4(((_67.SampleLevel(_24, float3(_1093, _1094 + 0.3333333432674407958984375f, _1095), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1124, _1124) * _1084;
      _1147 = float4(((_1098.xyz * 4.0f) - 2.0f.xxx) * _1114, _1114) * _1084;
    } else {
      _1144 = _1041;
      _1145 = 0.0f.xxxx;
      _1146 = 0.0f.xxxx;
      _1147 = 0.0f.xxxx;
    }
    float3 _1153 = _1007 - (_18_m108.xyz + (_1017 * (-_18_m110.z)));
    float _1167 = max(clamp((max(abs(_1153.x), abs(_1153.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1153.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1247;
    float4 _1248;
    float4 _1249;
    float4 _1250;
    if (_1167 < 1.0f) {
      float3 _1176 = ((_1007 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1178 = _1176 - floor(_1176);
      float4 _1182 = _68.SampleLevel(_25, _1178, 0.0f);
      float _1184 = _1068 * (1.0f - _1167);
      float _1188 = _18_m109.y * 0.5f;
      float _1193 = _1178.x;
      float _1194 = clamp(_1178.y, _1188, 1.0f - _1188) * 0.3333333432674407958984375f;
      float _1195 = _1178.z;
      float4 _1198 = _69.SampleLevel(_24, float3(_1193, _1194, _1195), 0.0f);
      float _1214 = _1182.x;
      float _1225 = _1182.y;
      float _1236 = _1182.z;
      _1247 = _1144 + (_1198.w * _1184);
      _1248 = _1145 + (float4(((_69.SampleLevel(_24, float3(_1193, _1194 + 0.666666686534881591796875f, _1195), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1236, _1236) * _1184);
      _1249 = _1146 + (float4(((_69.SampleLevel(_24, float3(_1193, _1194 + 0.3333333432674407958984375f, _1195), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1225, _1225) * _1184);
      _1250 = _1147 + (float4(((_1198.xyz * 4.0f) - 2.0f.xxx) * _1214, _1214) * _1184);
    } else {
      _1247 = _1144;
      _1248 = _1145;
      _1249 = _1146;
      _1250 = _1147;
    }
    float4 _1333;
    float4 _1334;
    float4 _1335;
    float _1336;
    if (_1167 > 0.0f) {
      float3 _1259 = ((_1007 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1262 = _18_m109.xyz * 0.5f;
      float3 _1264 = clamp(_1259 - floor(_1259), _1262, 1.0f.xxx - _1262);
      float4 _1268 = _70.SampleLevel(_25, _1264, 0.0f);
      float _1270 = _1167 * (1.0f - _1041);
      float _1274 = _18_m109.y * 0.5f;
      float _1279 = _1264.x;
      float _1280 = clamp(_1264.y, _1274, 1.0f - _1274) * 0.3333333432674407958984375f;
      float _1281 = _1264.z;
      float4 _1284 = _71.SampleLevel(_24, float3(_1279, _1280, _1281), 0.0f);
      float _1300 = _1268.x;
      float _1311 = _1268.y;
      float _1322 = _1268.z;
      _1333 = _1248 + (float4(((_71.SampleLevel(_24, float3(_1279, _1280 + 0.666666686534881591796875f, _1281), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1322, _1322) * _1270);
      _1334 = _1249 + (float4(((_71.SampleLevel(_24, float3(_1279, _1280 + 0.3333333432674407958984375f, _1281), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1311, _1311) * _1270);
      _1335 = _1250 + (float4(((_1284.xyz * 4.0f) - 2.0f.xxx) * _1300, _1300) * _1270);
      _1336 = _1247 + (_1284.w * _1270);
    } else {
      _1333 = _1248;
      _1334 = _1249;
      _1335 = _1250;
      _1336 = _1247;
    }
    float _1339 = clamp((_1336 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1343 = _1333;
    _1344 = _1334;
    _1345 = _1335;
    _1346 = _1339 - _1041;
    _1347 = (_1339 + _1041) * 0.5f;
  } else {
    _1343 = 0.0f.xxxx;
    _1344 = 0.0f.xxxx;
    _1345 = 0.0f.xxxx;
    _1346 = 0.0f;
    _1347 = 1.0f;
  }
  float4 _1367 = _1345 + float4(_18_m111.x * _1347, (_18_m111.y * _1347) + ((_18_m111.w * _1346) * 0.5f), _18_m111.z * _1347, (_18_m111.w * _1347) + ((_18_m111.y * _1346) * 0.375f));
  float4 _1387 = _1344 + float4(_18_m112.x * _1347, (_18_m112.y * _1347) + ((_18_m112.w * _1346) * 0.5f), _18_m112.z * _1347, (_18_m112.w * _1347) + ((_18_m112.y * _1346) * 0.375f));
  float4 _1407 = _1343 + float4(_18_m113.x * _1347, (_18_m113.y * _1347) + ((_18_m113.w * _1346) * 0.5f), _18_m113.z * _1347, (_18_m113.w * _1347) + ((_18_m113.y * _1346) * 0.375f));
  float _1412 = max(0.0f, dot(_1367.xyz, _744) + _1367.w);
  float _1417 = max(0.0f, dot(_1387.xyz, _744) + _1387.w);
  float _1422 = max(0.0f, dot(_1407.xyz, _744) + _1407.w);
  float3 _1432 = reflect(_837, _744);
  float _1440 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_596, 0.001000000047497451305389404296875f))));
  float2 _1441 = float2(_1004);
  float2 _1445 = floor(_1441 * _48_m0.w);
  float _1462 = floor(_1005 - _48_m2.y);
  float _1466 = clamp(_1462, 0.0f, _48_m1.x - 1.0f);
  uint _1476 = (_1462 <= _1466) ? (_33.Load(uint(_18_m21.z + int(_1445.x + (_1445.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1466)) * 4 + 0)) : 0u;
  float _1479 = dot(float4(_1412, _1417, _1422, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1481;
  float _1484;
  uint _1486;
  _1481 = 0.0f.xxx;
  _1484 = 1.0f;
  _1486 = _1476;
  uint _1487;
  float3 _1482;
  float _1485;
  bool _1489;
  [loop] for (;;) {
    bool _1488 = _1486 != 0u;
    _1489 = _1484 > 0.00999999977648258209228515625f;
    if (_1488 && _1489) {
      uint _1493 = firstbitlow(_1486);
      _1487 = _1486 ^ (1u << (_1493 & 31u));
      float3 _1513 = float3(dot(_48_m4[_1493]._m2, _479), dot(_48_m4[_1493]._m3, _479), dot(_48_m4[_1493]._m4, _479));
      float3 _1514 = abs(_1513);
      if (all(bool3(_1514.x <= _48_m4[_1493]._m1.xyz.x, _1514.y <= _48_m4[_1493]._m1.xyz.y, _1514.z <= _48_m4[_1493]._m1.xyz.z))) {
        float3 _1523 = _48_m4[_1493]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1525 = _1514 * 0.100000001490116119384765625f;
        float3 _1526 = _1525 * _1525;
        float3 _1529 = (_48_m4[_1493]._m1.xyz - _1514) * _48_m4[_1493]._m5.xyz;
        float3 _1577;
        [branch] if (_48_m4[_1493]._m6.x == 1.0f) {
          float3 _1562 = float3(dot(_48_m4[_1493]._m2.xyz, _1432), dot(_48_m4[_1493]._m3.xyz, _1432), dot(_48_m4[_1493]._m4.xyz, _1432));
          float3 _1564 = (_48_m4[_1493]._m1.xyz - _1513) / _1562;
          float3 _1567 = ((-_48_m4[_1493]._m1.xyz) - _1513) / _1562;
          bool3 _1568 = bool3(_1562.x > 0.0f.xxx.x, _1562.y > 0.0f.xxx.y, _1562.z > 0.0f.xxx.z);
          float3 _1569 = float3(_1568.x ? _1564.x : _1567.x, _1568.y ? _1564.y : _1567.y, _1568.z ? _1564.z : _1567.z);
          _1577 = _1513 + (_1562 * min(min(_1569.x, _1569.y), _1569.z));
        }
        else {
          _1577 = _1432;
        }
        float3 _1578 = normalize(_1577);
        float3 _1581 = float3(int3(sign(_1578)));
        float3 _1584 = _1578 / dot(_1578, _1581).xxx;
        float3 _1598;
        if (_1584.z < 0.0f) {
          float3 _1589 = abs(_1584);
          float2 _1596 = _1581.xy * float2(1.0f - _1589.y, 1.0f - _1589.x);
          _1598 = float3(_1596.x, _1596.y, _1584.z);
        } else {
          _1598 = _1584;
        }
        float _1623 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1493]._m0, float4(_744, 1.0f))));
        float _1636 = clamp((min(_1529.x, min(_1529.y, _1529.z)) * _48_m4[_1493]._m6.y) + ((((((_1523 * _1523).x - ((_1526.x + _1526.y) + _1526.z)) * _48_m4[_1493]._m5.x) * _48_m4[_1493]._m5.x) * (1.0f - _48_m4[_1493]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1493]._m6.w;
        _1482 = _1481 + ((((_31.SampleLevel(_26, float3((((_1598.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1493]._m1.w), _1440).xyz * _48_m4[_1493]._m5.w) * ((((((clamp(abs(_1479 / _1623), 0.0f, 1.0f) * 2.0f) + _1479) / (2.0f + _1623)) - 1.0f) * _18_m23.w) + 1.0f)) * _1636) * _1484);
        _1485 = _1484 * (1.0f - _1636);
      } else {
        _1482 = _1481;
        _1485 = _1484;
      }
      _1481 = _1482;
      _1484 = _1485;
      _1486 = _1487;
      continue;
    } else {
      break;
    }
  }
  float3 _1705;
  if (_1489) {
    float3 _1644 = normalize(_1432);
    float3 _1647 = float3(int3(sign(_1644)));
    float3 _1650 = _1644 / dot(_1644, _1647).xxx;
    float3 _1664;
    if (_1650.z < 0.0f) {
      float3 _1655 = abs(_1650);
      float2 _1662 = _1647.xy * float2(1.0f - _1655.y, 1.0f - _1655.x);
      _1664 = float3(_1662.x, _1662.y, _1650.z);
    } else {
      _1664 = _1650;
    }
    float _1691 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_744, 1.0f))));
    _1705 = _1481 + ((_31.SampleLevel(_26, float3((((_1664.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1440).xyz * ((((((clamp(abs(_1479 / _1691), 0.0f, 1.0f) * 2.0f) + _1479) / (2.0f + _1691)) - 1.0f) * _18_m23.w) + 1.0f)) * _1484);
  } else {
    _1705 = _1481;
  }
  float4 _2398;
  do {
    [branch] if (_54_m4 == 0) {
      _2398 = 0.0f.xxxx;
      break;
    }
    float2 _2253;
    do {
      if (_56_m7.w >= 0.9900000095367431640625f) {
        _2253 = float2(_56_m7.z, 1.0f);
        break;
      }
      int _1734 = int(_56_m7.x);
      bool3 _1736 = (_1734 == 2).xxx;
      float3 _1744 = _475 - float3(_1736.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1736.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1736.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
      float _1755 = max(clamp((_56_m6.w - dot(_1744, _1744)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
      float _1972;
      bool _1973;
      if (_1755 > 0.0f) {
        float _1970;
        bool _1971;
        if (_1734 > 0) {
          float3 _1762 = _475 - _56_m1[0].xyz;
          float3 _1766 = _475 - _56_m1[1].xyz;
          float3 _1770 = _475 - _56_m1[2].xyz;
          float3 _1774 = _475 - _56_m1[3].xyz;
          float4 _1779 = float4(dot(_1762, _1762), dot(_1766, _1766), dot(_1770, _1770), dot(_1774, _1774));
          float4 _1788 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
          float4 _1790 = float4(bool4(_1779.x < _1788.x, _1779.y < _1788.y, _1779.z < _1788.z, _1779.w < _1788.w));
          float3 _1794 = clamp(_1790.yzw - _1790.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1798 = clamp(4.0f - dot(float4(_1790.x, _1794.x, _1794.y, _1794.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1800 = clamp(_1798 + 1.0f, 0.0f, 3.0f);
          uint _1801 = uint(_1798);
          uint _1809 = uint(_1800);
          float _1815 = dot(_1779, _384[_1809]) / _56_m1[_1809].w;
          float _1832;
          if (((_1800 > _1798) && (_1815 >= 0.0f)) && (_1815 <= 1.0f)) {
            _1832 = _1798 + step(frac(52.98291778564453125f * frac(dot(_1441 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1779, _384[_1801]) / _56_m1[_1801].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1832 = _1798;
          }
          float _1833 = clamp(_1832, 0.0f, 4.0f);
          float4 _1837 = mul(_56_m0[uint(_1833)], _479);
          float _1840 = _1837.z;
          float4 _1841 = float4(_1837.xy, _1840, _1833);
          float3 _1842 = _1841.xyz;
          bool3 _1843 = bool3(_1842.x <= 0.0f.xxx.x, _1842.y <= 0.0f.xxx.y, _1842.z <= 0.0f.xxx.z);
          bool3 _1844 = bool3(_1842.x >= 1.0f.xxx.x, _1842.y >= 1.0f.xxx.y, _1842.z >= 1.0f.xxx.z);
          bool _1850 = any(bool3(_1843.x || _1844.x, _1843.y || _1844.y, _1843.z || _1844.z)) || ((asuint(_1840) & 2147483647u) > 2139095040u);
          int _1851 = int(_1833);
          float2 _1868 = float4(_56_m3[_1851].xy + (_1841.xy * _56_m3[_1851].zw), _1840, _1833).xy * _56_m4.zw;
          float2 _1870 = floor(_1868 + 0.5f.xx);
          float2 _1871 = _1868 - _1870;
          float _1872 = _1871.x;
          float _1873 = _1872 + 0.5f;
          float _1875 = (_1873 * _1873) * 0.5f;
          float _1878 = min(_1872, 0.0f);
          float _1882 = max(_1872, 0.0f);
          float4 _1886 = float4(_1875 - _1872, (1.0f - _1872) - (_1878 * _1878), (_1872 + 1.0f) - (_1882 * _1882), _1875) * 0.44444000720977783203125f;
          float _1887 = _1871.y;
          float _1888 = _1887 + 0.5f;
          float _1890 = (_1888 * _1888) * 0.5f;
          float _1893 = min(_1887, 0.0f);
          float _1897 = max(_1887, 0.0f);
          float4 _1901 = float4(_1890 - _1887, (1.0f - _1887) - (_1893 * _1893), (_1887 + 1.0f) - (_1897 * _1897), _1890) * 0.44444000720977783203125f;
          float2 _1903 = _1886.yw;
          float2 _1904 = _1886.xz + _1903;
          float2 _1906 = _1901.yw;
          float2 _1907 = _1901.xz + _1906;
          float2 _1913 = ((_1903 / _1904) + float2(-1.5f, 0.5f)) * _56_m4.xx;
          float2 _1915 = ((_1906 / _1907) + float2(-1.5f, 0.5f)) * _56_m4.yy;
          float2 _1917 = _1870 * _56_m4.xy;
          float _1918 = _1913.x;
          float _1919 = _1915.x;
          float _1922 = _1913.y;
          float _1925 = _1915.y;
          float _1930 = _1904.x;
          float _1931 = _1907.x;
          float _1933 = _1904.y;
          float _1935 = _1907.y;
          _1970 = _1850 ? 1.0f : (((((_1930 * _1931) * _57.SampleCmpLevelZero(_27, float3(_1917 + float2(_1918, _1919), _406).xy, _1840)) + ((_1933 * _1931) * _57.SampleCmpLevelZero(_27, float3(_1917 + float2(_1922, _1919), _406).xy, _1840))) + ((_1930 * _1935) * _57.SampleCmpLevelZero(_27, float3(_1917 + float2(_1918, _1925), _406).xy, _1840))) + ((_1933 * _1935) * _57.SampleCmpLevelZero(_27, float3(_1917 + float2(_1922, _1925), _406).xy, _1840)));
          _1971 = _1850;
        } else {
          _1970 = 1.0f;
          _1971 = false;
        }
        _1972 = _1970;
        _1973 = _1971;
      } else {
        _1972 = 1.0f;
        _1973 = false;
      }
      float _2173;
      float _2174;
      if ((_1755 < 1.0f) || (_56_m8.x > 0.5f)) {
        float _1984 = 1.0f - clamp(dot(_744, _52_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _2001 = float4((_475 - (_52_m0.xyz * (_1984 * _56_m22.x))) + (_744 * (_1984 * _56_m22.y)), 1.0f);
        float4 _2002 = mul(_56_m21, _2001);
        float2 _2003 = _2002.xy;
        float _2171;
        if (all(bool2(_2003.x > 0.0f.xx.x, _2003.y > 0.0f.xx.y)) && all(bool2(_2003.x < 1.0f.xx.x, _2003.y < 1.0f.xx.y))) {
          uint _2022 = clamp(uint((floor(_2002.y * _56_m23.z) + _2002.x) * _56_m23.y), 0u, 127u);
          uint _2026 = asuint(_56_m25[_2022].x);
          float2 _2027 = spvUnpackHalf2x16(_2026);
          float _2028 = _2027.x;
          float _2170;
          if (_2028 >= 0.0f) {
            float4x4 _2037 = _56_m20;
            _2037[0].w = _56_m25[_2022].y;
            _2037[1].w = _56_m25[_2022].z;
            _2037[2].w = _56_m25[_2022].w;
            float4 _2044 = mul(_2037, _2001);
            float3 _2045 = _2044.xyz;
            float _2169;
            if (all(bool3(_2045.x > 0.0f.xxx.x, _2045.y > 0.0f.xxx.y, _2045.z > 0.0f.xxx.z)) && all(bool3(_2045.x < 1.0f.xxx.x, _2045.y < 1.0f.xxx.y, _2045.z < 1.0f.xxx.z))) {
              float _2062 = _2044.z;
              float2 _2068 = float4((_2044.xy * _56_m22.zw) + float2(_2028, spvUnpackHalf2x16(_2026 >> 16u).x), _2062, 1.0f).xy * _56_m24.zw;
              float2 _2070 = floor(_2068 + 0.5f.xx);
              float2 _2071 = _2068 - _2070;
              float _2072 = _2071.x;
              float _2073 = _2072 + 0.5f;
              float _2075 = (_2073 * _2073) * 0.5f;
              float _2078 = min(_2072, 0.0f);
              float _2082 = max(_2072, 0.0f);
              float4 _2086 = float4(_2075 - _2072, (1.0f - _2072) - (_2078 * _2078), (_2072 + 1.0f) - (_2082 * _2082), _2075) * 0.44444000720977783203125f;
              float _2087 = _2071.y;
              float _2088 = _2087 + 0.5f;
              float _2090 = (_2088 * _2088) * 0.5f;
              float _2093 = min(_2087, 0.0f);
              float _2097 = max(_2087, 0.0f);
              float4 _2101 = float4(_2090 - _2087, (1.0f - _2087) - (_2093 * _2093), (_2087 + 1.0f) - (_2097 * _2097), _2090) * 0.44444000720977783203125f;
              float2 _2103 = _2086.yw;
              float2 _2104 = _2086.xz + _2103;
              float2 _2106 = _2101.yw;
              float2 _2107 = _2101.xz + _2106;
              float2 _2113 = ((_2103 / _2104) + float2(-1.5f, 0.5f)) * _56_m24.xx;
              float2 _2115 = ((_2106 / _2107) + float2(-1.5f, 0.5f)) * _56_m24.yy;
              float2 _2117 = _2070 * _56_m24.xy;
              float _2118 = _2113.x;
              float _2119 = _2115.x;
              float _2122 = _2113.y;
              float _2125 = _2115.y;
              float _2130 = _2104.x;
              float _2131 = _2107.x;
              float _2133 = _2104.y;
              float _2135 = _2107.y;
              _2169 = ((((_2130 * _2131) * _62.SampleCmpLevelZero(_27, float3(_2117 + float2(_2118, _2119), _406).xy, _2062)) + ((_2133 * _2131) * _62.SampleCmpLevelZero(_27, float3(_2117 + float2(_2122, _2119), _406).xy, _2062))) + ((_2130 * _2135) * _62.SampleCmpLevelZero(_27, float3(_2117 + float2(_2118, _2125), _406).xy, _2062))) + ((_2133 * _2135) * _62.SampleCmpLevelZero(_27, float3(_2117 + float2(_2122, _2125), _406).xy, _2062));
            } else {
              _2169 = 1.0f;
            }
            _2170 = _2169;
          } else {
            _2170 = 1.0f;
          }
          _2171 = _2170;
        } else {
          _2171 = 1.0f;
        }
        _2173 = _1973 ? _2171 : _1972;
        _2174 = _2171;
      } else {
        _2173 = _1972;
        _2174 = 1.0f;
      }
      float _2177 = lerp(lerp(_2174, _2173, _1755), min(_2174, _2173), _56_m8.x);
      float _2248;
      if (_2177 > 0.001000000047497451305389404296875f) {
        float3 _2210 = _475 - _18_m65.xyz;
        float2 _2215 = (_2210 + (_18_m68.xyz * _2210.y)).xz * _18_m66.z;
        float2 _2216 = _18_m67.xy * _18_m77.w;
        float3 _2223 = _475 - _18_m69.xyz;
        float2 _2231 = _18_m69.w.xx;
        float4 _2238 = _61.SampleLevel(_25, lerp(_2215 * _18_m67.w, (_2223 + (_18_m68.xyz * _2223.y)).xz * _18_m70.x, _2231) + lerp(_2216, _18_m70.yz * _18_m77.w, _2231), 0.0f);
        _2248 = _2177 * lerp(1.0f, lerp(_61.SampleLevel(_25, _2215 + _2216, 0.0f).x, lerp(_2238.x, _2238.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2210.xz))), _18_m67.z);
      } else {
        _2248 = _2177;
      }
      _2253 = float2(lerp(_2248, _56_m7.z, _56_m7.w), _2248);
      break;
    } while (false);
    float _2258 = lerp(1.0f, min(1.0f, _2253.x), _56_m6.x);
    float4 _2397;
    if (_2258 > 0.001000000047497451305389404296875f) {
      float3 _2268 = -_52_m0.xyz;
      float _2273 = dot(_2268, _1432);
      float3 _2275 = _1432 - (_2268 * _2273);
      bool3 _2277 = (_2273 < _52_m4.z).xxx;
      float3 _2285 = normalize((_2268 * _52_m4.z) + ((_2275 * rsqrt(max(6.103515625e-05f, dot(_2275, _2275)))) * _52_m4.y));
      float3 _2286 = float3(_2277.x ? _2285.x : _1432.x, _2277.y ? _2285.y : _1432.y, _2277.z ? _2285.z : _1432.z);
      float3 _2290 = _2286 + _512;
      float3 _2294 = _2290 * rsqrt(max(6.103515625e-05f, dot(_2290, _2290)));
      float _2295 = clamp(dot(_2286, _744), 0.0f, 1.0f);
      float _2297 = clamp(dot(_744, _2294), 0.0f, 1.0f);
      float _2300 = clamp(_836, 0.0f, 1.0f);
      float _2301 = _596 * _596;
      float _2302 = _2301 * _2301;
      float _2323 = (((_2297 * _2302) - _2297) * _2297) + 1.0f;
      float _2326 = 1.0f - clamp(dot(_512, _2294), 0.0f, 1.0f);
      float _2327 = _2326 * _2326;
      float _2329 = (_2326 * _2327) * _2327;
      float _2353 = 1.0f - _596;
      float _2360 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2353 * (1.04997003078460693359375f + (_2353 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2353))))));
      float _2361 = 1.0f - _2360;
      float3 _2364 = _954 + ((1.0f.xxx - _954) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x3E011450:
      float3 _2383 = (clamp(clamp((min(((_954 * (1.0f - _2329)) + _2329.xxx) * ((_2302 / (_2323 * _2323)) * (0.5f / (((_2295 * sqrt(((((-_2300) * _2302) + _2300) * _2300) + _2302)) + (_2300 * sqrt(((((-_2295) * _2302) + _2295) * _2295) + _2302))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2364 * (((_65.SampleLevel(_24, (float2(_2300, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x * _65.SampleLevel(_24, (float2(_2295, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2360) / _2361)) * _2364) / (1.0f.xxx - (_2364 * _2361)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_812, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2295) + ((_950 * 1.0f) * _2295);
      */
      float3 _2383 = (clamp((clamp((min(((_954 * (1.0f - _2329)) + _2329.xxx) * ((_2302 / (_2323 * _2323)) * (0.5f / (((_2295 * sqrt(((((-_2300) * _2302) + _2300) * _2300) + _2302)) + (_2300 * sqrt(((((-_2295) * _2302) + _2295) * _2295) + _2302))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2364 * (((_65.SampleLevel(_24, (float2(_2300, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x * _65.SampleLevel(_24, (float2(_2295, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2360) / _2361)) * _2364) / (1.0f.xxx - (_2364 * _2361)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_812, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2295) + ((_950 * 1.0f) * _2295);
      // RenoDX code end
      float3 _2384 = _2383 * _52_m1.xyz;
      float3 _2395 = lerp(_2384, _2384 * _63.SampleBias(_24, float2(_2258, 0.5f), _18_m16).xyz, (1.0f - _2258).xxx) * 1.0f;
      _2397 = float4(_2395.x, _2395.y, _2395.z, 0.0f.xxxx.w);
    } else {
      _2397 = 0.0f.xxxx;
    }
    _2398 = _2397;
    break;
  } while (false);
  float2 _2400 = floor(_1441 * 0.03125f);
  int _2408 = int((_2400.x + (_2400.y * _54_m9)) * 8.0f);
  float _2415 = floor(_1005 - (_18_m3.y * _54_m15));
  float _2419 = clamp(_2415, 0.0f, _54_m11 - 1.0f);
  int _2421 = int(_2419 * 8.0f);
  float3 _2423;
  float _2426;
  _2423 = 0.0f.xxx;
  _2426 = 1.0f;
  float3 _2424;
  float _2427;
  [loop] for (int _2428 = 0; _2428 <= 7; _2423 = _2424, _2426 = _2427, _2428++) {
    uint _2449 = (_2415 <= _2419) ? (_33.Load(uint((_54_m2 + _2408) + _2428) * 4 + 0) & _33.Load(uint((_54_m3 + _2421) + _2428) * 4 + 0)) : 0u;
    uint _2450 = uint(_2428);
    float3 _2454;
    _2427 = _2426;
    _2454 = 0.0f.xxx;
    uint _2457;
    float _2452;
    float3 _2455;
    [loop] for (uint _2456 = _2449; _2456 != 0u; _2427 = _2452, _2454 = _2455, _2456 = _2457) {
      uint _2461 = firstbitlow(_2456);
      _2457 = _2456 ^ (1u << (_2461 & 31u));
      int _2467 = int((32u * _2450) + _2461) * 8;
      int _2470 = _2467 + 1;
      int _2473 = _2467 + 2;
      int _2476 = _2467 + 3;
      int _2479 = _2467 + 4;
      int _2482 = _2467 + 5;
      int _2485 = _2467 + 6;
      int _2488 = _2467 + 7;
      uint _2492 = uint(_52_m6[_2482].w);
      float _2567;
      if ((_2492 & 1u) == 1u) {
        uint _2498 = asuint(_52_m6[_2482].x);
        uint _2505 = asuint(_52_m6[_2482].y);
        uint _2512 = asuint(_52_m6[_2482].z);
        uint _2519 = asuint(_52_m6[_2485].x);
        uint _2526 = asuint(_52_m6[_2485].y);
        uint _2533 = asuint(_52_m6[_2485].z);
        float3 _2552 = abs(mul(float4(_475 - _52_m6[_2470].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2498).x, spvUnpackHalf2x16(_2512).x, spvUnpackHalf2x16(_2526).x, 0.0f), float4(spvUnpackHalf2x16(_2498 >> 16u).x, spvUnpackHalf2x16(_2512 >> 16u).x, spvUnpackHalf2x16(_2526 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2505).x, spvUnpackHalf2x16(_2519).x, spvUnpackHalf2x16(_2533).x, 0.0f), float4(spvUnpackHalf2x16(_2505 >> 16u).x, spvUnpackHalf2x16(_2519 >> 16u).x, spvUnpackHalf2x16(_2533 >> 16u).x, 0.0f))).xyz);
        float _2559 = _52_m6[_2488].x * 0.5f;
        float _2565 = 1.0f - clamp((max(max(_2552.x, _2552.y), _2552.z) - (_2559 + 0.5f)) / (0.5f - _2559), 0.0f, 1.0f);
        _2567 = _2565 * _2565;
      } else {
        _2567 = 1.0f;
      }
      uint _2571 = uint(_52_m6[_2467].w);
      bool _2574 = _52_m6[_2476].z > 0.5f;
      if ((false || (_2567 < 0.001000000047497451305389404296875f)) || ((_2571 < 4u) && _2574)) {
        _2452 = _2427;
        _2455 = _2454;
        continue;
      }
      float _5103;
      float3 _5104;
      do {
        [branch] if (_2571 >= 4u) {
          float3 _3803;
          do {
            float3 _2593 = _52_m6[_2470].xyz - _475;
            if (dot(_52_m6[_2476].xyz, _2593) > 0.0f) {
              _3803 = 0.0f.xxx;
              break;
            }
            float _2600 = dot(_2593, _2593) * _52_m6[_2470].w;
            float _2603 = clamp(1.0f - (_2600 * _2600), 0.0f, 1.0f);
            float _2604 = _2603 * _2603;
            if (_2604 <= 0.0f) {
              _3803 = 0.0f.xxx;
              break;
            }
            float3 _2642;
            float _2643;
            bool _2644;
            float3 _2672;
            float3 _2674;
            float3 _2676;
            float3 _2678;
            float3 _2608 = _52_m6[_2473].xyz * _52_m6[_2473].w;
            float3 _2609 = _52_m6[_2470].xyz - _2608;
            float3 _2610 = _52_m6[_2479].xyz * _52_m6[_2476].w;
            float3 _2613 = _52_m6[_2470].xyz + _2608;
            float2 _2623 = (float2(clamp(_596, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_836, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2627 = _77.SampleLevel(_24, _2623, 0.0f);
            float4 _2631 = _78.SampleLevel(_24, _2623, 0.0f);
            float _3026;
            do {
              _2642 = _512 - (_744 * dot(_512, _744));
              _2643 = dot(_2642, _2642);
              _2644 = _2643 > 9.9999997473787516355514526367188e-05f;
              float3 _2667;
              if (_2644) {
                _2667 = _2642 * rsqrt(_2643);
              } else {
                float _2650 = (_744.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2652 = (-1.0f) / (_2650 + _744.z);
                _2667 = float3(1.0f + (((_2650 * _2652) * _744.x) * _744.x), ((_2650 * _744.x) * _744.y) * _2652, (-_2650) * _744.x);
              }
              float3x3 _2671 = mul(float3x3(float3(_2627.x, 0.0f, _2627.z), float3(0.0f, 1.0f, 0.0f), float3(_2627.y, 0.0f, _2627.w)), float3x3(_2667, cross(_744, _2667), _744));
              _2672 = (_2609 - _2610) - _475;
              float3 _2673 = mul(_2671, _2672);
              _2674 = (_2609 + _2610) - _475;
              float3 _2675 = mul(_2671, _2674);
              _2676 = (_2613 + _2610) - _475;
              float3 _2677 = mul(_2671, _2676);
              _2678 = (_2613 - _2610) - _475;
              float3 _2679 = mul(_2671, _2678);
              float _2680 = _2673.z;
              float _2683 = _2675.z;
              float _2687 = _2677.z;
              float _2691 = _2679.z;
              int _2695 = (((int(_2680 > 0.0f) | ((_2683 > 0.0f) ? 2 : 0)) | ((_2687 > 0.0f) ? 4 : 0)) | ((_2691 > 0.0f) ? 8 : 0));
              float3 _2932;
              float3 _2933;
              float3 _2934;
              float3 _2935;
              float3 _2936;
              int _2937;
              if (_2695 == 0) {
                _2932 = _2679;
                _2933 = _2677;
                _2934 = _2675;
                _2935 = _2673;
                _2936 = 0.0f.xxx;
                _2937 = 0;
              } else {
                float3 _2926;
                float3 _2927;
                float3 _2928;
                float3 _2929;
                float3 _2930;
                int _2931;
                if (_2695 == 1) {
                  _2926 = _2679;
                  _2927 = (_2673 * (-_2691)) + (_2679 * _2680);
                  _2928 = (_2673 * (-_2683)) + (_2675 * _2680);
                  _2929 = _2673;
                  _2930 = 0.0f.xxx;
                  _2931 = 3;
                } else {
                  float3 _2912;
                  float3 _2913;
                  float3 _2914;
                  float3 _2915;
                  float3 _2916;
                  int _2917;
                  if (_2695 == 2) {
                    _2912 = _2679;
                    _2913 = (_2675 * (-_2687)) + (_2677 * _2683);
                    _2914 = _2675;
                    _2915 = (_2675 * (-_2680)) + (_2673 * _2683);
                    _2916 = 0.0f.xxx;
                    _2917 = 3;
                  } else {
                    float3 _2898;
                    float3 _2899;
                    float3 _2900;
                    float3 _2901;
                    float3 _2902;
                    int _2903;
                    if (_2695 == 3) {
                      _2898 = (_2673 * (-_2691)) + (_2679 * _2680);
                      _2899 = (_2675 * (-_2687)) + (_2677 * _2683);
                      _2900 = _2675;
                      _2901 = _2673;
                      _2902 = 0.0f.xxx;
                      _2903 = 4;
                    } else {
                      float3 _2884;
                      float3 _2885;
                      float3 _2886;
                      float3 _2887;
                      float3 _2888;
                      int _2889;
                      if (_2695 == 4) {
                        _2884 = _2679;
                        _2885 = _2677;
                        _2886 = (_2677 * (-_2683)) + (_2675 * _2687);
                        _2887 = (_2677 * (-_2691)) + (_2679 * _2687);
                        _2888 = 0.0f.xxx;
                        _2889 = 3;
                      } else {
                        float3 _2870;
                        float3 _2871;
                        float3 _2872;
                        float3 _2873;
                        float3 _2874;
                        int _2875;
                        if (_2695 == 5) {
                          _2870 = _2679;
                          _2871 = _2677;
                          _2872 = _2675;
                          _2873 = _2673;
                          _2874 = 0.0f.xxx;
                          _2875 = 0;
                        } else {
                          float3 _2864;
                          float3 _2865;
                          float3 _2866;
                          float3 _2867;
                          float3 _2868;
                          int _2869;
                          if (_2695 == 6) {
                            _2864 = (_2677 * (-_2691)) + (_2679 * _2687);
                            _2865 = _2677;
                            _2866 = _2675;
                            _2867 = (_2675 * (-_2680)) + (_2673 * _2683);
                            _2868 = 0.0f.xxx;
                            _2869 = 4;
                          } else {
                            float3 _2850;
                            float3 _2851;
                            float3 _2852;
                            float3 _2853;
                            float3 _2854;
                            int _2855;
                            if (_2695 == 7) {
                              float _2843 = -_2691;
                              _2850 = (_2677 * _2843) + (_2679 * _2687);
                              _2851 = _2677;
                              _2852 = _2675;
                              _2853 = _2673;
                              _2854 = (_2673 * _2843) + (_2679 * _2680);
                              _2855 = 5;
                            } else {
                              float3 _2837;
                              float3 _2838;
                              float3 _2839;
                              float3 _2840;
                              float3 _2841;
                              int _2842;
                              if (_2695 == 8) {
                                _2837 = _2679;
                                _2838 = _2679;
                                _2839 = (_2679 * (-_2687)) + (_2677 * _2691);
                                _2840 = (_2679 * (-_2680)) + (_2673 * _2691);
                                _2841 = 0.0f.xxx;
                                _2842 = 3;
                              } else {
                                float3 _2823;
                                float3 _2824;
                                float3 _2825;
                                float3 _2826;
                                float3 _2827;
                                int _2828;
                                if (_2695 == 9) {
                                  _2823 = _2679;
                                  _2824 = (_2679 * (-_2687)) + (_2677 * _2691);
                                  _2825 = (_2673 * (-_2683)) + (_2675 * _2680);
                                  _2826 = _2673;
                                  _2827 = 0.0f.xxx;
                                  _2828 = 4;
                                } else {
                                  float3 _2809;
                                  float3 _2810;
                                  float3 _2811;
                                  float3 _2812;
                                  float3 _2813;
                                  int _2814;
                                  if (_2695 == 10) {
                                    _2809 = _2679;
                                    _2810 = _2677;
                                    _2811 = _2675;
                                    _2812 = _2673;
                                    _2813 = 0.0f.xxx;
                                    _2814 = 0;
                                  } else {
                                    float3 _2803;
                                    float3 _2804;
                                    float3 _2805;
                                    float3 _2806;
                                    float3 _2807;
                                    int _2808;
                                    if (_2695 == 11) {
                                      float _2796 = -_2687;
                                      _2803 = (_2679 * _2796) + (_2677 * _2691);
                                      _2804 = (_2675 * _2796) + (_2677 * _2683);
                                      _2805 = _2675;
                                      _2806 = _2673;
                                      _2807 = _2679;
                                      _2808 = 5;
                                    } else {
                                      float3 _2790;
                                      float3 _2791;
                                      float3 _2792;
                                      float3 _2793;
                                      float3 _2794;
                                      int _2795;
                                      if (_2695 == 12) {
                                        _2790 = _2679;
                                        _2791 = _2677;
                                        _2792 = (_2677 * (-_2683)) + (_2675 * _2687);
                                        _2793 = (_2679 * (-_2680)) + (_2673 * _2691);
                                        _2794 = 0.0f.xxx;
                                        _2795 = 4;
                                      } else {
                                        bool _2748 = _2695 == 13;
                                        float3 _2775;
                                        float3 _2776;
                                        float3 _2777;
                                        float3 _2778;
                                        int _2779;
                                        if (_2748) {
                                          float _2768 = -_2683;
                                          _2775 = (_2677 * _2768) + (_2675 * _2687);
                                          _2776 = (_2673 * _2768) + (_2675 * _2680);
                                          _2777 = _2673;
                                          _2778 = _2679;
                                          _2779 = 5;
                                        } else {
                                          float3 _2765;
                                          float3 _2766;
                                          int _2767;
                                          if (_2695 == 14) {
                                            float _2758 = -_2680;
                                            _2765 = (_2675 * _2758) + (_2673 * _2683);
                                            _2766 = (_2679 * _2758) + (_2673 * _2691);
                                            _2767 = 5;
                                          } else {
                                            _2765 = _2673;
                                            _2766 = 0.0f.xxx;
                                            _2767 = (_2695 == 15) ? 4 : 0;
                                          }
                                          _2775 = _2677;
                                          _2776 = _2675;
                                          _2777 = _2765;
                                          _2778 = _2766;
                                          _2779 = _2767;
                                        }
                                        bool3 _2780 = _2748.xxx;
                                        _2790 = float3(_2780.x ? _2677.x : _2679.x, _2780.y ? _2677.y : _2679.y, _2780.z ? _2677.z : _2679.z);
                                        _2791 = _2775;
                                        _2792 = _2776;
                                        _2793 = _2777;
                                        _2794 = _2778;
                                        _2795 = _2779;
                                      }
                                      _2803 = _2790;
                                      _2804 = _2791;
                                      _2805 = _2792;
                                      _2806 = _2793;
                                      _2807 = _2794;
                                      _2808 = _2795;
                                    }
                                    _2809 = _2803;
                                    _2810 = _2804;
                                    _2811 = _2805;
                                    _2812 = _2806;
                                    _2813 = _2807;
                                    _2814 = _2808;
                                  }
                                  _2823 = _2809;
                                  _2824 = _2810;
                                  _2825 = _2811;
                                  _2826 = _2812;
                                  _2827 = _2813;
                                  _2828 = _2814;
                                }
                                _2837 = _2823;
                                _2838 = _2824;
                                _2839 = _2825;
                                _2840 = _2826;
                                _2841 = _2827;
                                _2842 = _2828;
                              }
                              _2850 = _2837;
                              _2851 = _2838;
                              _2852 = _2839;
                              _2853 = _2840;
                              _2854 = _2841;
                              _2855 = _2842;
                            }
                            _2864 = _2850;
                            _2865 = _2851;
                            _2866 = _2852;
                            _2867 = _2853;
                            _2868 = _2854;
                            _2869 = _2855;
                          }
                          _2870 = _2864;
                          _2871 = _2865;
                          _2872 = _2866;
                          _2873 = _2867;
                          _2874 = _2868;
                          _2875 = _2869;
                        }
                        _2884 = _2870;
                        _2885 = _2871;
                        _2886 = _2872;
                        _2887 = _2873;
                        _2888 = _2874;
                        _2889 = _2875;
                      }
                      _2898 = _2884;
                      _2899 = _2885;
                      _2900 = _2886;
                      _2901 = _2887;
                      _2902 = _2888;
                      _2903 = _2889;
                    }
                    _2912 = _2898;
                    _2913 = _2899;
                    _2914 = _2900;
                    _2915 = _2901;
                    _2916 = _2902;
                    _2917 = _2903;
                  }
                  _2926 = _2912;
                  _2927 = _2913;
                  _2928 = _2914;
                  _2929 = _2915;
                  _2930 = _2916;
                  _2931 = _2917;
                }
                _2932 = _2926;
                _2933 = _2927;
                _2934 = _2928;
                _2935 = _2929;
                _2936 = _2930;
                _2937 = _2931;
              }
              bool3 _2939 = (_2937 == 3).xxx;
              bool3 _2942 = (_2937 == 4).xxx;
              if (_2937 == 0) {
                _3026 = 0.0f;
                break;
              }
              float3 _2947 = normalize(_2935);
              float3 _2948 = normalize(_2934);
              float3 _2949 = normalize(_2933);
              float3 _2950 = normalize(float3(_2939.x ? _2935.x : _2932.x, _2939.y ? _2935.y : _2932.y, _2939.z ? _2935.z : _2932.z));
              float3 _2951 = normalize(float3(_2942.x ? _2935.x : _2936.x, _2942.y ? _2935.y : _2936.y, _2942.z ? _2935.z : _2936.z));
              float _2953 = clamp(dot(_2947, _2948), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2957 = sqrt(1.0f - (_2953 * _2953));
              float _2965 = clamp(dot(_2948, _2949), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2969 = sqrt(1.0f - (_2965 * _2965));
              float _2978 = clamp(dot(_2949, _2950), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2982 = sqrt(1.0f - (_2978 * _2978));
              float _2989 = ((cross(_2947, _2948).z * ((_2957 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2953) / _2957))) + (cross(_2948, _2949).z * ((_2969 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2965) / _2969)))) + (cross(_2949, _2950).z * ((_2982 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2978) / _2982)));
              float _3006;
              if (_2937 >= 4) {
                float _2994 = clamp(dot(_2950, _2951), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2998 = sqrt(1.0f - (_2994 * _2994));
                _3006 = _2989 + (cross(_2950, _2951).z * ((_2998 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2994) / _2998)));
              } else {
                _3006 = _2989;
              }
              float _3023;
              if (_2937 == 5) {
                float _3011 = clamp(dot(_2951, _2947), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3015 = sqrt(1.0f - (_3011 * _3011));
                _3023 = _3006 + (cross(_2951, _2947).z * ((_3015 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3011) / _3015)));
              } else {
                _3023 = _3006;
              }
              _3026 = max(_3023, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3414;
            do {
              float3 _3060;
              if (_2644) {
                _3060 = _2642 * rsqrt(_2643);
              } else {
                float _3043 = (_744.z >= 0.0f) ? 1.0f : (-1.0f);
                float _3045 = (-1.0f) / (_3043 + _744.z);
                _3060 = float3(1.0f + (((_3043 * _3045) * _744.x) * _744.x), ((_3043 * _744.x) * _744.y) * _3045, (-_3043) * _744.x);
              }
              float3x3 _3063 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_3060, cross(_744, _3060), _744));
              float3 _3064 = mul(_3063, _2672);
              float3 _3065 = mul(_3063, _2674);
              float3 _3066 = mul(_3063, _2676);
              float3 _3067 = mul(_3063, _2678);
              float _3068 = _3064.z;
              float _3071 = _3065.z;
              float _3075 = _3066.z;
              float _3079 = _3067.z;
              int _3083 = (((int(_3068 > 0.0f) | ((_3071 > 0.0f) ? 2 : 0)) | ((_3075 > 0.0f) ? 4 : 0)) | ((_3079 > 0.0f) ? 8 : 0));
              float3 _3320;
              float3 _3321;
              float3 _3322;
              float3 _3323;
              float3 _3324;
              int _3325;
              if (_3083 == 0) {
                _3320 = _3067;
                _3321 = _3066;
                _3322 = _3065;
                _3323 = _3064;
                _3324 = 0.0f.xxx;
                _3325 = 0;
              } else {
                float3 _3314;
                float3 _3315;
                float3 _3316;
                float3 _3317;
                float3 _3318;
                int _3319;
                if (_3083 == 1) {
                  _3314 = _3067;
                  _3315 = (_3064 * (-_3079)) + (_3067 * _3068);
                  _3316 = (_3064 * (-_3071)) + (_3065 * _3068);
                  _3317 = _3064;
                  _3318 = 0.0f.xxx;
                  _3319 = 3;
                } else {
                  float3 _3300;
                  float3 _3301;
                  float3 _3302;
                  float3 _3303;
                  float3 _3304;
                  int _3305;
                  if (_3083 == 2) {
                    _3300 = _3067;
                    _3301 = (_3065 * (-_3075)) + (_3066 * _3071);
                    _3302 = _3065;
                    _3303 = (_3065 * (-_3068)) + (_3064 * _3071);
                    _3304 = 0.0f.xxx;
                    _3305 = 3;
                  } else {
                    float3 _3286;
                    float3 _3287;
                    float3 _3288;
                    float3 _3289;
                    float3 _3290;
                    int _3291;
                    if (_3083 == 3) {
                      _3286 = (_3064 * (-_3079)) + (_3067 * _3068);
                      _3287 = (_3065 * (-_3075)) + (_3066 * _3071);
                      _3288 = _3065;
                      _3289 = _3064;
                      _3290 = 0.0f.xxx;
                      _3291 = 4;
                    } else {
                      float3 _3272;
                      float3 _3273;
                      float3 _3274;
                      float3 _3275;
                      float3 _3276;
                      int _3277;
                      if (_3083 == 4) {
                        _3272 = _3067;
                        _3273 = _3066;
                        _3274 = (_3066 * (-_3071)) + (_3065 * _3075);
                        _3275 = (_3066 * (-_3079)) + (_3067 * _3075);
                        _3276 = 0.0f.xxx;
                        _3277 = 3;
                      } else {
                        float3 _3258;
                        float3 _3259;
                        float3 _3260;
                        float3 _3261;
                        float3 _3262;
                        int _3263;
                        if (_3083 == 5) {
                          _3258 = _3067;
                          _3259 = _3066;
                          _3260 = _3065;
                          _3261 = _3064;
                          _3262 = 0.0f.xxx;
                          _3263 = 0;
                        } else {
                          float3 _3252;
                          float3 _3253;
                          float3 _3254;
                          float3 _3255;
                          float3 _3256;
                          int _3257;
                          if (_3083 == 6) {
                            _3252 = (_3066 * (-_3079)) + (_3067 * _3075);
                            _3253 = _3066;
                            _3254 = _3065;
                            _3255 = (_3065 * (-_3068)) + (_3064 * _3071);
                            _3256 = 0.0f.xxx;
                            _3257 = 4;
                          } else {
                            float3 _3238;
                            float3 _3239;
                            float3 _3240;
                            float3 _3241;
                            float3 _3242;
                            int _3243;
                            if (_3083 == 7) {
                              float _3231 = -_3079;
                              _3238 = (_3066 * _3231) + (_3067 * _3075);
                              _3239 = _3066;
                              _3240 = _3065;
                              _3241 = _3064;
                              _3242 = (_3064 * _3231) + (_3067 * _3068);
                              _3243 = 5;
                            } else {
                              float3 _3225;
                              float3 _3226;
                              float3 _3227;
                              float3 _3228;
                              float3 _3229;
                              int _3230;
                              if (_3083 == 8) {
                                _3225 = _3067;
                                _3226 = _3067;
                                _3227 = (_3067 * (-_3075)) + (_3066 * _3079);
                                _3228 = (_3067 * (-_3068)) + (_3064 * _3079);
                                _3229 = 0.0f.xxx;
                                _3230 = 3;
                              } else {
                                float3 _3211;
                                float3 _3212;
                                float3 _3213;
                                float3 _3214;
                                float3 _3215;
                                int _3216;
                                if (_3083 == 9) {
                                  _3211 = _3067;
                                  _3212 = (_3067 * (-_3075)) + (_3066 * _3079);
                                  _3213 = (_3064 * (-_3071)) + (_3065 * _3068);
                                  _3214 = _3064;
                                  _3215 = 0.0f.xxx;
                                  _3216 = 4;
                                } else {
                                  float3 _3197;
                                  float3 _3198;
                                  float3 _3199;
                                  float3 _3200;
                                  float3 _3201;
                                  int _3202;
                                  if (_3083 == 10) {
                                    _3197 = _3067;
                                    _3198 = _3066;
                                    _3199 = _3065;
                                    _3200 = _3064;
                                    _3201 = 0.0f.xxx;
                                    _3202 = 0;
                                  } else {
                                    float3 _3191;
                                    float3 _3192;
                                    float3 _3193;
                                    float3 _3194;
                                    float3 _3195;
                                    int _3196;
                                    if (_3083 == 11) {
                                      float _3184 = -_3075;
                                      _3191 = (_3067 * _3184) + (_3066 * _3079);
                                      _3192 = (_3065 * _3184) + (_3066 * _3071);
                                      _3193 = _3065;
                                      _3194 = _3064;
                                      _3195 = _3067;
                                      _3196 = 5;
                                    } else {
                                      float3 _3178;
                                      float3 _3179;
                                      float3 _3180;
                                      float3 _3181;
                                      float3 _3182;
                                      int _3183;
                                      if (_3083 == 12) {
                                        _3178 = _3067;
                                        _3179 = _3066;
                                        _3180 = (_3066 * (-_3071)) + (_3065 * _3075);
                                        _3181 = (_3067 * (-_3068)) + (_3064 * _3079);
                                        _3182 = 0.0f.xxx;
                                        _3183 = 4;
                                      } else {
                                        bool _3136 = _3083 == 13;
                                        float3 _3163;
                                        float3 _3164;
                                        float3 _3165;
                                        float3 _3166;
                                        int _3167;
                                        if (_3136) {
                                          float _3156 = -_3071;
                                          _3163 = (_3066 * _3156) + (_3065 * _3075);
                                          _3164 = (_3064 * _3156) + (_3065 * _3068);
                                          _3165 = _3064;
                                          _3166 = _3067;
                                          _3167 = 5;
                                        } else {
                                          float3 _3153;
                                          float3 _3154;
                                          int _3155;
                                          if (_3083 == 14) {
                                            float _3146 = -_3068;
                                            _3153 = (_3065 * _3146) + (_3064 * _3071);
                                            _3154 = (_3067 * _3146) + (_3064 * _3079);
                                            _3155 = 5;
                                          } else {
                                            _3153 = _3064;
                                            _3154 = 0.0f.xxx;
                                            _3155 = (_3083 == 15) ? 4 : 0;
                                          }
                                          _3163 = _3066;
                                          _3164 = _3065;
                                          _3165 = _3153;
                                          _3166 = _3154;
                                          _3167 = _3155;
                                        }
                                        bool3 _3168 = _3136.xxx;
                                        _3178 = float3(_3168.x ? _3066.x : _3067.x, _3168.y ? _3066.y : _3067.y, _3168.z ? _3066.z : _3067.z);
                                        _3179 = _3163;
                                        _3180 = _3164;
                                        _3181 = _3165;
                                        _3182 = _3166;
                                        _3183 = _3167;
                                      }
                                      _3191 = _3178;
                                      _3192 = _3179;
                                      _3193 = _3180;
                                      _3194 = _3181;
                                      _3195 = _3182;
                                      _3196 = _3183;
                                    }
                                    _3197 = _3191;
                                    _3198 = _3192;
                                    _3199 = _3193;
                                    _3200 = _3194;
                                    _3201 = _3195;
                                    _3202 = _3196;
                                  }
                                  _3211 = _3197;
                                  _3212 = _3198;
                                  _3213 = _3199;
                                  _3214 = _3200;
                                  _3215 = _3201;
                                  _3216 = _3202;
                                }
                                _3225 = _3211;
                                _3226 = _3212;
                                _3227 = _3213;
                                _3228 = _3214;
                                _3229 = _3215;
                                _3230 = _3216;
                              }
                              _3238 = _3225;
                              _3239 = _3226;
                              _3240 = _3227;
                              _3241 = _3228;
                              _3242 = _3229;
                              _3243 = _3230;
                            }
                            _3252 = _3238;
                            _3253 = _3239;
                            _3254 = _3240;
                            _3255 = _3241;
                            _3256 = _3242;
                            _3257 = _3243;
                          }
                          _3258 = _3252;
                          _3259 = _3253;
                          _3260 = _3254;
                          _3261 = _3255;
                          _3262 = _3256;
                          _3263 = _3257;
                        }
                        _3272 = _3258;
                        _3273 = _3259;
                        _3274 = _3260;
                        _3275 = _3261;
                        _3276 = _3262;
                        _3277 = _3263;
                      }
                      _3286 = _3272;
                      _3287 = _3273;
                      _3288 = _3274;
                      _3289 = _3275;
                      _3290 = _3276;
                      _3291 = _3277;
                    }
                    _3300 = _3286;
                    _3301 = _3287;
                    _3302 = _3288;
                    _3303 = _3289;
                    _3304 = _3290;
                    _3305 = _3291;
                  }
                  _3314 = _3300;
                  _3315 = _3301;
                  _3316 = _3302;
                  _3317 = _3303;
                  _3318 = _3304;
                  _3319 = _3305;
                }
                _3320 = _3314;
                _3321 = _3315;
                _3322 = _3316;
                _3323 = _3317;
                _3324 = _3318;
                _3325 = _3319;
              }
              bool3 _3327 = (_3325 == 3).xxx;
              bool3 _3330 = (_3325 == 4).xxx;
              if (_3325 == 0) {
                _3414 = 0.0f;
                break;
              }
              float3 _3335 = normalize(_3323);
              float3 _3336 = normalize(_3322);
              float3 _3337 = normalize(_3321);
              float3 _3338 = normalize(float3(_3327.x ? _3323.x : _3320.x, _3327.y ? _3323.y : _3320.y, _3327.z ? _3323.z : _3320.z));
              float3 _3339 = normalize(float3(_3330.x ? _3323.x : _3324.x, _3330.y ? _3323.y : _3324.y, _3330.z ? _3323.z : _3324.z));
              float _3341 = clamp(dot(_3335, _3336), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3345 = sqrt(1.0f - (_3341 * _3341));
              float _3353 = clamp(dot(_3336, _3337), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3357 = sqrt(1.0f - (_3353 * _3353));
              float _3366 = clamp(dot(_3337, _3338), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3370 = sqrt(1.0f - (_3366 * _3366));
              float _3377 = ((cross(_3335, _3336).z * ((_3345 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3341) / _3345))) + (cross(_3336, _3337).z * ((_3357 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3353) / _3357)))) + (cross(_3337, _3338).z * ((_3370 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3366) / _3370)));
              float _3394;
              if (_3325 >= 4) {
                float _3382 = clamp(dot(_3338, _3339), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3386 = sqrt(1.0f - (_3382 * _3382));
                _3394 = _3377 + (cross(_3338, _3339).z * ((_3386 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3382) / _3386)));
              } else {
                _3394 = _3377;
              }
              float _3411;
              if (_3325 == 5) {
                float _3399 = clamp(dot(_3339, _3335), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3403 = sqrt(1.0f - (_3399 * _3399));
                _3411 = _3394 + (cross(_3339, _3335).z * ((_3403 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3399) / _3403)));
              } else {
                _3411 = _3394;
              }
              _3414 = max(_3411, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3417 = (_2492 & 2u) != 0u;
            uint _3421 = asuint(_52_m6[_2479].w);
            uint _3422 = asuint(_52_m6[_2485].w);
            float3 _3423 = _475 - _52_m6[_2470].xyz;
            float3 _3424 = abs(_3423);
            float _3425 = _3424.x;
            float _3426 = _3424.y;
            float _3428 = _3424.z;
            int _3461;
            if ((_3425 > _3426) && (_3425 > _3428)) {
              _3461 = int((_3423.x > 0.0f) ? (_3421 & 1023u) : ((_3421 >> 10u) & 1023u));
            } else {
              int _3453;
              if (_3426 > _3428) {
                _3453 = int((_3423.y > 0.0f) ? ((_3421 >> 20u) & 1023u) : (_3422 & 1023u));
              } else {
                _3453 = int((_3423.z > 0.0f) ? ((_3422 >> 10u) & 1023u) : ((_3422 >> 20u) & 1023u));
              }
              _3461 = _3453;
            }
            int _3464 = _3417 ? int(_52_m6[_2479].w) : ((_3461 == 1023) ? (-1) : _3461);
            uint _3475 = asuint(_56_m11.x) + (uint(_3464) * 96u);
            uint _3477 = (_3475 + 64u) >> 2u;
            uint _3480 = _3477 + 1u;
            uint _3483 = _3477 + 2u;
            uint _3486 = _3477 + 3u;
            float4 _3490 = asfloat(uint4(_60.Load(_3477 * 4 + 0), _60.Load(_3480 * 4 + 0), _60.Load(_3483 * 4 + 0), _60.Load(_3486 * 4 + 0)));
            uint _3498 = _3475 >> 2u;
            uint _3513 = (_3475 + 16u) >> 2u;
            uint _3528 = (_3475 + 32u) >> 2u;
            uint _3543 = (_3475 + 48u) >> 2u;
            float4 _3563 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_3498 * 4 + 0), _60.Load((_3498 + 1u) * 4 + 0), _60.Load((_3498 + 2u) * 4 + 0), _60.Load((_3498 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3513 * 4 + 0), _60.Load((_3513 + 1u) * 4 + 0), _60.Load((_3513 + 2u) * 4 + 0), _60.Load((_3513 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3528 * 4 + 0), _60.Load((_3528 + 1u) * 4 + 0), _60.Load((_3528 + 2u) * 4 + 0), _60.Load((_3528 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3543 * 4 + 0), _60.Load((_3543 + 1u) * 4 + 0), _60.Load((_3543 + 2u) * 4 + 0), _60.Load((_3543 + 3u) * 4 + 0))))), float4((_475 - ((_3423 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3423, _3423)))) * _3490.x)) + (_744 * (_3490.y * 5.0f)), 1.0f));
            float3 _3567 = _3563.xyz / _3563.w.xxx;
            uint _3569 = (_3475 + 80u) >> 2u;
            float4 _3582 = asfloat(uint4(_60.Load(_3569 * 4 + 0), _60.Load((_3569 + 1u) * 4 + 0), _60.Load((_3569 + 2u) * 4 + 0), _60.Load((_3569 + 3u) * 4 + 0)));
            float2 _3583 = _3567.xy;
            float2 _3585 = _3582.xy;
            float3 _3589 = _3567.xyz;
            bool3 _3590 = bool3(_3589.x <= 0.0f.xxx.x, _3589.y <= 0.0f.xxx.y, _3589.z <= 0.0f.xxx.z);
            bool3 _3591 = bool3(_3589.x >= 1.0f.xxx.x, _3589.y >= 1.0f.xxx.y, _3589.z >= 1.0f.xxx.z);
            float _3594 = _3567.z;
            float2 _3605 = ((_3583 * (_3582.zw - _3585)) + _3585).xy * _56_m10.zw;
            float2 _3607 = floor(_3605 + 0.5f.xx);
            float2 _3608 = _3605 - _3607;
            float _3609 = _3608.x;
            float _3610 = _3609 + 0.5f;
            float _3611 = _3610 * _3610;
            float _3614 = 1.0f - _3609;
            float _3615 = min(_3609, 0.0f);
            float _3618 = _3609 + 1.0f;
            float _3619 = max(_3609, 0.0f);
            float _3630 = _3608.y;
            float _3631 = _3630 + 0.5f;
            float _3632 = _3631 * _3631;
            float _3635 = 1.0f - _3630;
            float _3636 = min(_3630, 0.0f);
            float _3639 = _3630 + 1.0f;
            float _3640 = max(_3630, 0.0f);
            float3 _3652 = float3(0.1599999964237213134765625f * _3614, 0.1599999964237213134765625f * ((_3618 - (_3619 * _3619)) + 1.0f), _3611 * 0.07999999821186065673828125f);
            float3 _3653 = float3(0.1599999964237213134765625f * ((_3611 * 0.5f) - _3609), 0.1599999964237213134765625f * ((_3614 - (_3615 * _3615)) + 1.0f), 0.1599999964237213134765625f * _3618) + _3652;
            float3 _3655 = float3(0.1599999964237213134765625f * _3635, 0.1599999964237213134765625f * ((_3639 - (_3640 * _3640)) + 1.0f), _3632 * 0.07999999821186065673828125f);
            float3 _3656 = float3(0.1599999964237213134765625f * ((_3632 * 0.5f) - _3630), 0.1599999964237213134765625f * ((_3635 - (_3636 * _3636)) + 1.0f), 0.1599999964237213134765625f * _3639) + _3655;
            float3 _3662 = ((_3652 / _3653) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
            float3 _3664 = ((_3655 / _3656) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
            float2 _3666 = _3607 * _56_m10.xy;
            float _3667 = _3662.x;
            float _3668 = _3664.x;
            float _3671 = _3662.y;
            float _3674 = _3662.z;
            float _3677 = _3664.y;
            float _3684 = _3664.z;
            float _3691 = _3653.x;
            float _3692 = _3656.x;
            float _3694 = _3653.y;
            float _3696 = _3653.z;
            float _3698 = _3656.y;
            float _3702 = _3656.z;
            float _3760 = (((((((_3691 * _3692) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3667, _3668), _406).xy, _3594)) + ((_3694 * _3692) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3671, _3668), _406).xy, _3594))) + ((_3696 * _3692) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3674, _3668), _406).xy, _3594))) + ((_3691 * _3698) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3667, _3677), _406).xy, _3594))) + ((_3694 * _3698) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3671, _3677), _406).xy, _3594))) + ((_3696 * _3698) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3674, _3677), _406).xy, _3594))) + ((_3691 * _3702) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3667, _3684), _406).xy, _3594));
            float4 _3783 = asfloat(uint4(_60.Load(_3477 * 4 + 0), _60.Load(_3480 * 4 + 0), _60.Load(_3483 * 4 + 0), _60.Load(_3486 * 4 + 0)));
            float _3784 = _3783.w;
            float2 _3786 = min(_3583, 1.0f.xx - _3583);
            _3803 = ((_52_m6[_2467].xyz * (((((_954 * _2631.x) + ((1.0f.xxx - _954) * _2631.y)) * _3026) * _52_m6[_2488].z) + (_950 * _3414))) * _2604) * ((_3464 >= 0) ? lerp(1.0f, (any(bool3(_3590.x || _3591.x, _3590.y || _3591.y, _3590.z || _3591.z)) || ((asuint(_3594) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3760 + ((_3694 * _3702) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3671, _3684), _406).xy, _3594))) + ((_3696 * _3702) * _58.SampleCmpLevelZero(_27, float3(_3666 + float2(_3674, _3684), _406).xy, _3594))), _3417 ? min(_3784, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3783.z - _3563.w) * 0.25f, min(_3786.x, _3786.y)))) : _3784) : 1.0f);
            break;
          } while (false);
          _5103 = _2427;
          _5104 = _3803 * _2567;
          break;
        }
        float _5101;
        float3 _5102;
        if (_52_m6[_2467].w < 1.5f) {
          float3 _4383 = float3(0.100000001490116119384765625f, _596, 1.0f);
          float _4392 = (0.5f + (0.5f * _52_m6[_2473].y)) - abs(_52_m6[_2473].x);
          float _4393 = _52_m6[_2473].y - _4392;
          float _4400 = abs(max((1.0f - abs(_4392)) - abs(_4393), 0.00048828125f));
          float3 _4404 = normalize(float3(_4392, _4393, (_52_m6[_2473].x >= 0.0f) ? _4400 : (-_4400)));
          float3 _4405 = _52_m6[_2470].xyz - _475;
          float _4406 = dot(_4405, _4405);
          float _4407 = rsqrt(_4406);
          float3 _4408 = _4405 * _4407;
          float _4412 = clamp(_52_m6[_2488].y * _4407, 0.0f, 1.0f);
          int _4417 = int(_52_m6[_2488].w);
          float3 _4418 = _4404 * _52_m6[_2473].z;
          float3 _4419 = _4418 * 0.5f;
          float3 _4420 = _4405 - _4419;
          float3 _4421 = _4405 + _4419;
          bool _4423 = (_2571 & 1u) == 0u;
          bool _4426 = _4423 || ((_2492 & 2u) != 0u);
          bool _4429 = (!_4423) && (_52_m6[_2473].z > 0.0f);
          float _4448;
          float _4449;
          if (_4429) {
            float _4433 = length(_4420);
            float _4434 = length(_4421);
            _4448 = clamp(0.5f * ((dot(_744, _4420) / _4433) + (dot(_744, _4421) / _4434)), 0.0f, 1.0f);
            _4449 = 1.0f / ((((_4433 * _4434) + dot(_4420, _4421)) * 0.5f) + 1.0f);
          } else {
            _4448 = clamp(dot(_744, _4408), 0.0f, 1.0f);
            _4449 = 1.0f;
          }
          float _4471;
          if (_52_m6[_2485].w < 0.0f) {
            float _4465 = _4406 * (_52_m6[_2470].w * _52_m6[_2470].w);
            float _4468 = clamp(1.0f - (_4465 * _4465), 0.0f, 1.0f);
            _4471 = lerp(1.0f / (_4406 + 1.0f), _4449, float(_4429)) * (_4468 * _4468);
          } else {
            float3 _4454 = _4405 * _52_m6[_2470].w;
            _4471 = _4449 * pow(1.0f - clamp(dot(_4454, _4454), 0.0f, 1.0f), _52_m6[_2485].w);
          }
          float _4477 = clamp((dot(_4408, -_4404) - _52_m6[_2473].z) * _52_m6[_2473].w, 0.0f, 1.0f);
          float _4481 = _4471 * lerp(1.0f, _4477 * _4477, float(_4423));
          float _4581;
          if ((!_4429) && (_4417 >= 0)) {
            uint _4487 = uint(_4417);
            float2 _4574;
            [branch] if (_4423) {
              float4 _4564 = mul(_74_m1[_4487], _479);
              _4574 = _74_m0[_4487].xy + (clamp(_4564.xy / _4564.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_4487].zw);
            }
            else {
              float3 _4501 = mul(float4(-_4405, 0.0f), _74_m1[_4487]).xyz;
              float3 _412 = _4501;
              float3 _411 = _4501;
              float3 _410 = abs(_4501);
              uint _4510 = uint(int(_410.y > _410.x));
              uint _4516 = (_410.z > _410[_4510]) ? 2u : _4510;
              uint _4522 = (_4516 * 2u) + uint(_411[_4516] < 0.0f);
              float _4526 = abs(_412[_4522 / 2u]);
              float _4546 = 0.5f - (0.000244140625f / _74_m0[_4487].w);
              _4574 = _74_m0[_4487].xy + (clamp(float2((float(_4522) + ((((_412[uint(_385[_4522].x)] * _386[_4522].x) / _4526) * _4546) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_412[uint(_385[_4522].y)] * _386[_4522].y) / _4526) * _4546)), 0.0f.xx, 1.0f.xx) * _74_m0[_4487].zw);
            }
            _4581 = _4481 * _72.SampleLevel(_24, _4574, 0.0f).x;
          } else {
            _4581 = _4481;
          }
          bool _4582 = _4581 > 0.0f;
          float _4966;
          if (_4582) {
            int _4635;
            if (_4426) {
              _4635 = int(_52_m6[_2476].x);
            } else {
              uint _4590 = asuint(_52_m6[_2473].w);
              uint _4591 = asuint(_52_m6[_2476].x);
              float3 _4592 = _475 - _52_m6[_2470].xyz;
              float3 _4593 = abs(_4592);
              float _4594 = _4593.x;
              float _4595 = _4593.y;
              float _4597 = _4593.z;
              int _4630;
              if ((_4594 > _4595) && (_4594 > _4597)) {
                _4630 = int((_4592.x > 0.0f) ? (_4590 & 1023u) : ((_4590 >> 10u) & 1023u));
              } else {
                int _4622;
                if (_4595 > _4597) {
                  _4622 = int((_4592.y > 0.0f) ? ((_4590 >> 20u) & 1023u) : (_4591 & 1023u));
                } else {
                  _4622 = int((_4592.z > 0.0f) ? ((_4591 >> 10u) & 1023u) : ((_4591 >> 20u) & 1023u));
                }
                _4630 = _4622;
              }
              _4635 = (_4630 == 1023) ? (-1) : _4630;
            }
            uint _4642 = asuint(_56_m11.x) + (uint(_4635) * 96u);
            uint _4644 = (_4642 + 64u) >> 2u;
            uint _4647 = _4644 + 1u;
            uint _4650 = _4644 + 2u;
            uint _4653 = _4644 + 3u;
            float4 _4657 = asfloat(uint4(_60.Load(_4644 * 4 + 0), _60.Load(_4647 * 4 + 0), _60.Load(_4650 * 4 + 0), _60.Load(_4653 * 4 + 0)));
            uint _4665 = _4642 >> 2u;
            uint _4680 = (_4642 + 16u) >> 2u;
            uint _4695 = (_4642 + 32u) >> 2u;
            uint _4710 = (_4642 + 48u) >> 2u;
            float4 _4730 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_4665 * 4 + 0), _60.Load((_4665 + 1u) * 4 + 0), _60.Load((_4665 + 2u) * 4 + 0), _60.Load((_4665 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4680 * 4 + 0), _60.Load((_4680 + 1u) * 4 + 0), _60.Load((_4680 + 2u) * 4 + 0), _60.Load((_4680 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4695 * 4 + 0), _60.Load((_4695 + 1u) * 4 + 0), _60.Load((_4695 + 2u) * 4 + 0), _60.Load((_4695 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4710 * 4 + 0), _60.Load((_4710 + 1u) * 4 + 0), _60.Load((_4710 + 2u) * 4 + 0), _60.Load((_4710 + 3u) * 4 + 0))))), float4((_475 - ((-_4408) * _4657.x)) + (_744 * (_4657.y * 5.0f)), 1.0f));
            float3 _4734 = _4730.xyz / _4730.w.xxx;
            uint _4736 = (_4642 + 80u) >> 2u;
            float4 _4749 = asfloat(uint4(_60.Load(_4736 * 4 + 0), _60.Load((_4736 + 1u) * 4 + 0), _60.Load((_4736 + 2u) * 4 + 0), _60.Load((_4736 + 3u) * 4 + 0)));
            float2 _4750 = _4734.xy;
            float2 _4752 = _4749.xy;
            float3 _4756 = _4734.xyz;
            bool3 _4757 = bool3(_4756.x <= 0.0f.xxx.x, _4756.y <= 0.0f.xxx.y, _4756.z <= 0.0f.xxx.z);
            bool3 _4758 = bool3(_4756.x >= 1.0f.xxx.x, _4756.y >= 1.0f.xxx.y, _4756.z >= 1.0f.xxx.z);
            float _4761 = _4734.z;
            float2 _4772 = ((_4750 * (_4749.zw - _4752)) + _4752).xy * _56_m10.zw;
            float2 _4774 = floor(_4772 + 0.5f.xx);
            float2 _4775 = _4772 - _4774;
            float _4776 = _4775.x;
            float _4777 = _4776 + 0.5f;
            float _4778 = _4777 * _4777;
            float _4781 = 1.0f - _4776;
            float _4782 = min(_4776, 0.0f);
            float _4785 = _4776 + 1.0f;
            float _4786 = max(_4776, 0.0f);
            float _4797 = _4775.y;
            float _4798 = _4797 + 0.5f;
            float _4799 = _4798 * _4798;
            float _4802 = 1.0f - _4797;
            float _4803 = min(_4797, 0.0f);
            float _4806 = _4797 + 1.0f;
            float _4807 = max(_4797, 0.0f);
            float3 _4819 = float3(0.1599999964237213134765625f * _4781, 0.1599999964237213134765625f * ((_4785 - (_4786 * _4786)) + 1.0f), _4778 * 0.07999999821186065673828125f);
            float3 _4820 = float3(0.1599999964237213134765625f * ((_4778 * 0.5f) - _4776), 0.1599999964237213134765625f * ((_4781 - (_4782 * _4782)) + 1.0f), 0.1599999964237213134765625f * _4785) + _4819;
            float3 _4822 = float3(0.1599999964237213134765625f * _4802, 0.1599999964237213134765625f * ((_4806 - (_4807 * _4807)) + 1.0f), _4799 * 0.07999999821186065673828125f);
            float3 _4823 = float3(0.1599999964237213134765625f * ((_4799 * 0.5f) - _4797), 0.1599999964237213134765625f * ((_4802 - (_4803 * _4803)) + 1.0f), 0.1599999964237213134765625f * _4806) + _4822;
            float3 _4829 = ((_4819 / _4820) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
            float3 _4831 = ((_4822 / _4823) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
            float2 _4833 = _4774 * _56_m10.xy;
            float _4834 = _4829.x;
            float _4835 = _4831.x;
            float _4838 = _4829.y;
            float _4841 = _4829.z;
            float _4844 = _4831.y;
            float _4851 = _4831.z;
            float _4858 = _4820.x;
            float _4859 = _4823.x;
            float _4861 = _4820.y;
            float _4863 = _4820.z;
            float _4865 = _4823.y;
            float _4869 = _4823.z;
            float _4927 = (((((((_4858 * _4859) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4834, _4835), _406).xy, _4761)) + ((_4861 * _4859) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4838, _4835), _406).xy, _4761))) + ((_4863 * _4859) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4841, _4835), _406).xy, _4761))) + ((_4858 * _4865) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4834, _4844), _406).xy, _4761))) + ((_4861 * _4865) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4838, _4844), _406).xy, _4761))) + ((_4863 * _4865) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4841, _4844), _406).xy, _4761))) + ((_4858 * _4869) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4834, _4851), _406).xy, _4761));
            float4 _4950 = asfloat(uint4(_60.Load(_4644 * 4 + 0), _60.Load(_4647 * 4 + 0), _60.Load(_4650 * 4 + 0), _60.Load(_4653 * 4 + 0)));
            float _4951 = _4950.w;
            float2 _4953 = min(_4750, 1.0f.xx - _4750);
            _4966 = (_4635 >= 0) ? lerp(1.0f, (any(bool3(_4757.x || _4758.x, _4757.y || _4758.y, _4757.z || _4758.z)) || ((asuint(_4761) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4927 + ((_4861 * _4869) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4838, _4851), _406).xy, _4761))) + ((_4863 * _4869) * _58.SampleCmpLevelZero(_27, float3(_4833 + float2(_4841, _4851), _406).xy, _4761))), _4426 ? min(_4951, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4950.z - _4730.w) * 0.25f, min(_4953.x, _4953.y)))) : _4951) : 1.0f;
          } else {
            _4966 = 1.0f;
          }
          float3 _4989;
          float3 _4990;
          if (_4429) {
            float3 _4969 = _4383 * _4383;
            float _4978 = dot(_1432, _4418);
            _4989 = _4969 / clamp(_4969 + (0.5f * clamp(_52_m6[_2473].z * _4407, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4990 = normalize(_4420 + (_4418 * clamp(dot(_4420, (_1432 * _4978) - _4418) / ((_52_m6[_2473].z * _52_m6[_2473].z) - (_4978 * _4978)), 0.0f, 1.0f)));
          } else {
            _4989 = 1.0f.xxx;
            _4990 = _4408;
          }
          float3 _4991 = _4990 + _512;
          float3 _4995 = _4991 * rsqrt(max(6.103515625e-05f, dot(_4991, _4991)));
          float3 _5100;
          if (_4582) {
            float _4998 = clamp(_4448, 0.0f, 1.0f);
            float _5000 = clamp(dot(_744, _4995), 0.0f, 1.0f);
            float _5002 = clamp(dot(_512, _4995), 0.0f, 1.0f);
            float _5003 = clamp(_836, 0.0f, 1.0f);
            float _5004 = _596 * _596;
            float _5014;
            if (_4412 > 0.0f) {
              _5014 = clamp(_5004 + ((_4412 * _4412) / ((_5002 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _5014 = _5004;
            }
            float _5015 = _5014 * _5014;
            float _5036 = (((_5000 * _5015) - _5000) * _5000) + 1.0f;
            float _5041 = 1.0f - _5002;
            float _5042 = _5041 * _5041;
            float _5044 = (_5041 * _5042) * _5042;
            float _5068 = 1.0f - _596;
            float _5075 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_5068 * (1.04997003078460693359375f + (_5068 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _5068))))));
            float _5076 = 1.0f - _5075;
            float3 _5079 = _954 + ((1.0f.xxx - _954) * 0.0476190485060214996337890625f);
            float3 _5099 = ((clamp((min(((_954 * (1.0f - _5044)) + _5044.xxx) * (((_5015 / (_5036 * _5036)) * _4989.y) * (0.5f / (((_4998 * sqrt(((((-_5003) * _5015) + _5003) * _5003) + _5015)) + (_5003 * sqrt(((((-_4998) * _5015) + _4998) * _4998) + _5015))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_5079 * (((_65.SampleLevel(_24, (float2(_5003, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x * _65.SampleLevel(_24, (float2(_4998, _596) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _5075) / _5076)) * _5079) / (1.0f.xxx - (_5079 * _5076)))) * _52_m6[_2488].z, 0.0f.xxx, 1000.0f.xxx) * _4448) + ((_950 * _4989.z) * _4448)) * (((_52_m6[_2467].xyz * _4581) * _4966) * _2567);
            _5100 = _5099;
          } else {
            _5100 = 0.0f.xxx;
          }
          _5101 = _2427;
          _5102 = _5100;
        } else {
          float _4381;
          do {
            if (_2574) {
              _4381 = 1.0f;
              break;
            }
            float _3820 = (0.5f + (0.5f * _52_m6[_2473].y)) - abs(_52_m6[_2473].x);
            float _3821 = _52_m6[_2473].y - _3820;
            float _3828 = abs(max((1.0f - abs(_3820)) - abs(_3821), 0.00048828125f));
            float3 _3832 = normalize(float3(_3820, _3821, (_52_m6[_2473].x >= 0.0f) ? _3828 : (-_3828)));
            float3 _3833 = _52_m6[_2470].xyz - _475;
            float _3834 = dot(_3833, _3833);
            float3 _3836 = _3833 * rsqrt(_3834);
            int _3839 = int(_52_m6[_2488].w);
            float3 _3841 = (_3832 * _52_m6[_2473].z) * 0.5f;
            float3 _3842 = _3833 - _3841;
            float3 _3843 = _3833 + _3841;
            bool _3845 = (_2571 & 1u) == 0u;
            bool _3848 = _3845 || ((_2492 & 2u) != 0u);
            bool _3851 = (!_3845) && (_52_m6[_2473].z > 0.0f);
            float _3863;
            if (_3851) {
              _3863 = 1.0f / ((((length(_3842) * length(_3843)) + dot(_3842, _3843)) * 0.5f) + 1.0f);
            } else {
              _3863 = 1.0f;
            }
            float _3885;
            if (_52_m6[_2485].w < 0.0f) {
              float _3879 = _3834 * (_52_m6[_2470].w * _52_m6[_2470].w);
              float _3882 = clamp(1.0f - (_3879 * _3879), 0.0f, 1.0f);
              _3885 = lerp(1.0f / (_3834 + 1.0f), _3863, float(_3851)) * (_3882 * _3882);
            } else {
              float3 _3868 = _3833 * _52_m6[_2470].w;
              _3885 = _3863 * pow(1.0f - clamp(dot(_3868, _3868), 0.0f, 1.0f), _52_m6[_2485].w);
            }
            float _3891 = clamp((dot(_3836, -_3832) - _52_m6[_2473].z) * _52_m6[_2473].w, 0.0f, 1.0f);
            float _3895 = _3885 * lerp(1.0f, _3891 * _3891, float(_3845));
            float _3995;
            if ((!_3851) && (_3839 >= 0)) {
              uint _3901 = uint(_3839);
              float2 _3988;
              [branch] if (_3845) {
                float4 _3978 = mul(_74_m1[_3901], _479);
                _3988 = _74_m0[_3901].xy + (clamp(_3978.xy / _3978.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_3901].zw);
              }
              else {
                float3 _3915 = mul(float4(-_3833, 0.0f), _74_m1[_3901]).xyz;
                float3 _415 = _3915;
                float3 _414 = _3915;
                float3 _413 = abs(_3915);
                uint _3924 = uint(int(_413.y > _413.x));
                uint _3930 = (_413.z > _413[_3924]) ? 2u : _3924;
                uint _3936 = (_3930 * 2u) + uint(_414[_3930] < 0.0f);
                float _3940 = abs(_415[_3936 / 2u]);
                float _3960 = 0.5f - (0.000244140625f / _74_m0[_3901].w);
                _3988 = _74_m0[_3901].xy + (clamp(float2((float(_3936) + ((((_415[uint(_385[_3936].x)] * _386[_3936].x) / _3940) * _3960) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_415[uint(_385[_3936].y)] * _386[_3936].y) / _3940) * _3960)), 0.0f.xx, 1.0f.xx) * _74_m0[_3901].zw);
              }
              _3995 = _3895 * _72.SampleLevel(_24, _3988, 0.0f).x;
            } else {
              _3995 = _3895;
            }
            float _4380;
            if (_3995 > 0.0f) {
              int _4049;
              if (_3848) {
                _4049 = int(_52_m6[_2476].x);
              } else {
                uint _4004 = asuint(_52_m6[_2473].w);
                uint _4005 = asuint(_52_m6[_2476].x);
                float3 _4006 = _475 - _52_m6[_2470].xyz;
                float3 _4007 = abs(_4006);
                float _4008 = _4007.x;
                float _4009 = _4007.y;
                float _4011 = _4007.z;
                int _4044;
                if ((_4008 > _4009) && (_4008 > _4011)) {
                  _4044 = int((_4006.x > 0.0f) ? (_4004 & 1023u) : ((_4004 >> 10u) & 1023u));
                } else {
                  int _4036;
                  if (_4009 > _4011) {
                    _4036 = int((_4006.y > 0.0f) ? ((_4004 >> 20u) & 1023u) : (_4005 & 1023u));
                  } else {
                    _4036 = int((_4006.z > 0.0f) ? ((_4005 >> 10u) & 1023u) : ((_4005 >> 20u) & 1023u));
                  }
                  _4044 = _4036;
                }
                _4049 = (_4044 == 1023) ? (-1) : _4044;
              }
              uint _4056 = asuint(_56_m11.x) + (uint(_4049) * 96u);
              uint _4058 = (_4056 + 64u) >> 2u;
              uint _4061 = _4058 + 1u;
              uint _4064 = _4058 + 2u;
              uint _4067 = _4058 + 3u;
              float4 _4071 = asfloat(uint4(_60.Load(_4058 * 4 + 0), _60.Load(_4061 * 4 + 0), _60.Load(_4064 * 4 + 0), _60.Load(_4067 * 4 + 0)));
              uint _4079 = _4056 >> 2u;
              uint _4094 = (_4056 + 16u) >> 2u;
              uint _4109 = (_4056 + 32u) >> 2u;
              uint _4124 = (_4056 + 48u) >> 2u;
              float4 _4144 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_4079 * 4 + 0), _60.Load((_4079 + 1u) * 4 + 0), _60.Load((_4079 + 2u) * 4 + 0), _60.Load((_4079 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4094 * 4 + 0), _60.Load((_4094 + 1u) * 4 + 0), _60.Load((_4094 + 2u) * 4 + 0), _60.Load((_4094 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4109 * 4 + 0), _60.Load((_4109 + 1u) * 4 + 0), _60.Load((_4109 + 2u) * 4 + 0), _60.Load((_4109 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4124 * 4 + 0), _60.Load((_4124 + 1u) * 4 + 0), _60.Load((_4124 + 2u) * 4 + 0), _60.Load((_4124 + 3u) * 4 + 0))))), float4((_475 - ((-_3836) * _4071.x)) + (_744 * (_4071.y * 5.0f)), 1.0f));
              float3 _4148 = _4144.xyz / _4144.w.xxx;
              uint _4150 = (_4056 + 80u) >> 2u;
              float4 _4163 = asfloat(uint4(_60.Load(_4150 * 4 + 0), _60.Load((_4150 + 1u) * 4 + 0), _60.Load((_4150 + 2u) * 4 + 0), _60.Load((_4150 + 3u) * 4 + 0)));
              float2 _4164 = _4148.xy;
              float2 _4166 = _4163.xy;
              float3 _4170 = _4148.xyz;
              bool3 _4171 = bool3(_4170.x <= 0.0f.xxx.x, _4170.y <= 0.0f.xxx.y, _4170.z <= 0.0f.xxx.z);
              bool3 _4172 = bool3(_4170.x >= 1.0f.xxx.x, _4170.y >= 1.0f.xxx.y, _4170.z >= 1.0f.xxx.z);
              float _4175 = _4148.z;
              float2 _4186 = ((_4164 * (_4163.zw - _4166)) + _4166).xy * _56_m10.zw;
              float2 _4188 = floor(_4186 + 0.5f.xx);
              float2 _4189 = _4186 - _4188;
              float _4190 = _4189.x;
              float _4191 = _4190 + 0.5f;
              float _4192 = _4191 * _4191;
              float _4195 = 1.0f - _4190;
              float _4196 = min(_4190, 0.0f);
              float _4199 = _4190 + 1.0f;
              float _4200 = max(_4190, 0.0f);
              float _4211 = _4189.y;
              float _4212 = _4211 + 0.5f;
              float _4213 = _4212 * _4212;
              float _4216 = 1.0f - _4211;
              float _4217 = min(_4211, 0.0f);
              float _4220 = _4211 + 1.0f;
              float _4221 = max(_4211, 0.0f);
              float3 _4233 = float3(0.1599999964237213134765625f * _4195, 0.1599999964237213134765625f * ((_4199 - (_4200 * _4200)) + 1.0f), _4192 * 0.07999999821186065673828125f);
              float3 _4234 = float3(0.1599999964237213134765625f * ((_4192 * 0.5f) - _4190), 0.1599999964237213134765625f * ((_4195 - (_4196 * _4196)) + 1.0f), 0.1599999964237213134765625f * _4199) + _4233;
              float3 _4236 = float3(0.1599999964237213134765625f * _4216, 0.1599999964237213134765625f * ((_4220 - (_4221 * _4221)) + 1.0f), _4213 * 0.07999999821186065673828125f);
              float3 _4237 = float3(0.1599999964237213134765625f * ((_4213 * 0.5f) - _4211), 0.1599999964237213134765625f * ((_4216 - (_4217 * _4217)) + 1.0f), 0.1599999964237213134765625f * _4220) + _4236;
              float3 _4243 = ((_4233 / _4234) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
              float3 _4245 = ((_4236 / _4237) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
              float2 _4247 = _4188 * _56_m10.xy;
              float _4248 = _4243.x;
              float _4249 = _4245.x;
              float _4252 = _4243.y;
              float _4255 = _4243.z;
              float _4258 = _4245.y;
              float _4265 = _4245.z;
              float _4272 = _4234.x;
              float _4273 = _4237.x;
              float _4275 = _4234.y;
              float _4277 = _4234.z;
              float _4279 = _4237.y;
              float _4283 = _4237.z;
              float _4341 = (((((((_4272 * _4273) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4248, _4249), _406).xy, _4175)) + ((_4275 * _4273) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4252, _4249), _406).xy, _4175))) + ((_4277 * _4273) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4255, _4249), _406).xy, _4175))) + ((_4272 * _4279) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4248, _4258), _406).xy, _4175))) + ((_4275 * _4279) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4252, _4258), _406).xy, _4175))) + ((_4277 * _4279) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4255, _4258), _406).xy, _4175))) + ((_4272 * _4283) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4248, _4265), _406).xy, _4175));
              float4 _4364 = asfloat(uint4(_60.Load(_4058 * 4 + 0), _60.Load(_4061 * 4 + 0), _60.Load(_4064 * 4 + 0), _60.Load(_4067 * 4 + 0)));
              float _4365 = _4364.w;
              float2 _4367 = min(_4164, 1.0f.xx - _4164);
              _4380 = (_4049 >= 0) ? lerp(1.0f, (any(bool3(_4171.x || _4172.x, _4171.y || _4172.y, _4171.z || _4172.z)) || ((asuint(_4175) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4341 + ((_4275 * _4283) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4252, _4265), _406).xy, _4175))) + ((_4277 * _4283) * _58.SampleCmpLevelZero(_27, float3(_4247 + float2(_4255, _4265), _406).xy, _4175))), _3848 ? min(_4365, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4364.z - _4144.w) * 0.25f, min(_4367.x, _4367.y)))) : _4365) : 1.0f;
            } else {
              _4380 = 1.0f;
            }
            _4381 = _4380;
            break;
          } while (false);
          _5101 = _2427 * _4381;
          _5102 = 0.0f.xxx;
        }
        _5103 = _5101;
        _5104 = _5102;
        break;
      } while (false);
      _2452 = _5103;
      _2455 = _2454 + _5104;
    }
    _2424 = _2423 + _2454;
  }
  // RenoDX code start: retain the glass adjustment in the updated native composite.
  /* Vanilla 0x3E011450:
  float3 _5115 = (((((float3(_1412, _1417, _1422) * _950) * lerp(1.0f, _567, _45_m4)) * _18_m22.x) + ((((_1705 * _18_m23.z) * _18_m22.y) * ((_954 * _968.x) + (clamp(50.0f * _954.y, 0.0f, 1.0f) * _968.y).xxx)) * 1.0f)) + (((((_719 * lerp(_693, 1.0f.xxx, _45_m47.xxx)) * _611) * ((1.0f - _45_m46) + (_18_m20.y * _45_m46))) * _45_m58) + ((lerp(float4(_693, 1.0f).xyz, _45_m87.xyz, (_45_m87.w * _788).xxx).xyz * (lerp(_761, _761 * _8.y, _45_m82) * lerp(1.0f, 1.0f, _45_m84))) * _611))) + lerp((_2398.xyz + (_2423 * _2426)).xyz, (_896.xyz * (_45_m73.xyz * _45_m71)).xyz, clamp((1.0f - _812) / max(1.0f - _45_m70, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _5115 = (((((float3(_1412, _1417, _1422) * (_950 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _567, _45_m4)) * _18_m22.x) + (((((_1705 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_954 * _968.x) + (clamp(50.0f * _954.y, 0.0f, 1.0f) * _968.y).xxx)) * 1.0f)) + (((((_719 * lerp(_693, 1.0f.xxx, _45_m47.xxx)) * _611) * ((1.0f - _45_m46) + (_18_m20.y * _45_m46))) * _45_m58) + ((lerp(float4(_693, 1.0f).xyz, _45_m87.xyz, (_45_m87.w * _788).xxx).xyz * (lerp(_761, _761 * _8.y, _45_m82) * lerp(1.0f, 1.0f, _45_m84))) * _611))) + lerp((_2398.xyz + ((_2423 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2426)).xyz, (_896.xyz * (_45_m73.xyz * _45_m71)).xyz, clamp((1.0f - _812) / max(1.0f - _45_m70, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _5116 = float4(_5115.x, _5115.y, _5115.z, _407.w);
  _5116.w = _812;
  float _5133 = _475.y * _18_m46.w;
  float _5138 = max(0.00999999977648258209228515625f, _5133 + _18_m47.w);
  float3 _5152 = exp(_18_m45.xyz * ((-max(0.0f, (_513 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_5138)) / _5138) * exp(_5133 + _18_m48.w))));
  float _5155 = dot(_837, _18_m44.xyz);
  float _5161 = _18_m45.w * _18_m45.w;
  float _5165 = (1.0f + _5161) - ((2.0f * _18_m45.w) * _5155);
  float3 _5495;
  float _5496;
  if (_18_m55.z > 0.0f) {
    uint3 _5323 = (uint3(int3(int(_1004.x), int(_1004.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5324 = _5323.y;
    uint _5325 = _5323.z;
    uint _5328 = _5323.x + (_5324 * _5325);
    uint _5330 = _5324 + (_5325 * _5328);
    uint _5332 = _5325 + (_5328 * _5330);
    uint _5334 = _5328 + (_5330 * _5332);
    float _5356 = dot(_837, -_16_m0[2].xyz);
    float3 _5366 = _475 - _16_m11.xyz;
    float _5368 = (_18_m55.w * ((_5356 > 5.9604644775390625e-08f) ? (1.0f / _5356) : 0.0f)) * (1.0f / _513);
    float _5369 = _5366.y;
    float _5370 = _5368 * _5369;
    float _5372 = _16_m11.y + _5370;
    float _5373 = _5369 - _5370;
    float _5375 = (1.0f - _5368) * _513;
    float _5389 = max(-127.0f, _18_m49.z * _5373);
    float _5413 = max(-127.0f, _18_m52.x * _5373);
    float _5424 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5372 - _18_m49.x)))) * ((abs(_5389) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5389)) / _5389) : (0.693147182464599609375f - (0.2402265071868896484375f * _5389)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5372 - _18_m52.z)))) * ((abs(_5413) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5413)) / _5413) : (0.693147182464599609375f - (0.2402265071868896484375f * _5413))));
    float _5446 = clamp((_513 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5449 = clamp((max(clamp(exp2(-(_5424 * _5375)), 0.0f, 1.0f), _18_m51.w) + clamp((_513 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5446, 0.0f, 1.0f);
    float4 _5489 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_24, float3((_1441 + ((((float3(uint3(_5334, _5330 + (_5332 * _5334), _408) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_1005 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_1005 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5495 = _5489.xyz + (((_18_m51.xyz * (1.0f - _5449)) + (((_18_m54.xyz * pow(clamp(dot(_512, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5424 * max(_5375 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5446))) * _5489.w);
    _5496 = _5489.w * _5449;
  } else {
    float3 _5195 = _475 - _16_m11.xyz;
    float _5197 = _5195.y;
    float _5211 = max(-127.0f, _18_m49.z * _5197);
    float _5235 = max(-127.0f, _18_m52.x * _5197);
    float _5246 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5211) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5211)) / _5211) : (0.693147182464599609375f - (0.2402265071868896484375f * _5211)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5235) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5235)) / _5235) : (0.693147182464599609375f - (0.2402265071868896484375f * _5235))));
    float _5268 = clamp((_513 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5271 = clamp((max(clamp(exp2(-(_5246 * _513)), 0.0f, 1.0f), _18_m51.w) + clamp((_513 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5268, 0.0f, 1.0f);
    _5495 = (_18_m51.xyz * (1.0f - _5271)) + (((_18_m54.xyz * pow(clamp(dot(_512, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5246 * max(_513 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5268));
    _5496 = _5271;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x3E011450:
  float3 _5502 = ((_5116.xyz * (_5152 * _5496)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5155 * _5155)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5161) / max((12.56637096405029296875f * _5165) * sqrt(_5165), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5152)) * _5496) + _5495)).xyz;
  */
  float3 _5502 = ((_5116.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_5152 * _5496)) : (_5152 * _5496))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5155 * _5155)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5161) / max((12.56637096405029296875f * _5165) * sqrt(_5165), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5152)) * _5496 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5495 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5512 = lerp(dot(_5502, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5502, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5522 = min(lerp(((sqrt(sqrt(abs(_922 * 0.5f))) * float2(int2(sign(_922)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _909.xx), 1.0f.xx);
  float4 _5523 = float4(_5522.x, _5522.y, _407.z, _407.w);
  _5523.z = float(clamp(max(dot(_5512.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _812, _812) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5523.w = lerp(0.0f, 0.699999988079071044921875f, _909);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x3E011450:
  _13 = float4(_5512.x, _5512.y, _5512.z, _5116.w);
  */
  float3 renodx_output_color = float3(_5512.x, _5512.y, _5512.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _5116.w);
  // RenoDX code end
  _14 = _5523;
  // RenoDX code start: preserve the existing glass controls.
  if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
  // RenoDX code end
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
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

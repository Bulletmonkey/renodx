#include "../shared.h"

// Ported from the native 0xA1FB8B5B Vulkan dump.
struct _19 {
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

static float _400;
static float4 _401;
static uint _404;

static const float4 _377[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _378[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _379[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _14_15 : register(b11, space0) {
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

[[vk::binding(15, 0)]] cbuffer _16_17 : register(b15, space0) {
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
  float4 _17_m99 : packoffset(c127);
  float4 _17_m100 : packoffset(c128);
  float4 _17_m101 : packoffset(c129);
  float4 _17_m102[2] : packoffset(c130);
  float4 _17_m103[2] : packoffset(c132);
  float _17_m104 : packoffset(c134);
  float _17_m105 : packoffset(c134.y);
  float _17_m106 : packoffset(c134.z);
  float _17_m107 : packoffset(c134.w);
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
  float4 _17_m135 : packoffset(c162);
  float4 _17_m136 : packoffset(c163);
  float4 _17_m137 : packoffset(c164);
  column_major float4x4 _17_m138 : packoffset(c165);
  float4 _17_m139 : packoffset(c169);
  float4 _17_m140 : packoffset(c170);
  float4 _17_m141 : packoffset(c171);
  float4 _17_m142 : packoffset(c172);
  int4 _17_m143 : packoffset(c173);
  int4 _17_m144 : packoffset(c174);
  int4 _17_m145 : packoffset(c175);
  float4 _17_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _18_20 : register(b0, space2) {
  _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _29 : register(t53, space0);
[[vk::binding(4, 1)]] cbuffer _37_38 : register(b4, space1) {
  float _38_m0 : packoffset(c0);
  float _38_m1 : packoffset(c0.y);
  float _38_m2 : packoffset(c0.z);
  float _38_m3 : packoffset(c0.w);
  float _38_m4 : packoffset(c1);
  float _38_m5 : packoffset(c1.y);
  float _38_m6 : packoffset(c1.z);
  float _38_m7 : packoffset(c1.w);
  float _38_m8 : packoffset(c2);
  float _38_m9 : packoffset(c2.y);
  float _38_m10 : packoffset(c2.z);
  float _38_m11 : packoffset(c2.w);
  float _38_m12 : packoffset(c3);
  float _38_m13 : packoffset(c3.y);
  float _38_m14 : packoffset(c3.z);
  float _38_m15 : packoffset(c3.w);
  float4 _38_m16 : packoffset(c4);
  float _38_m17 : packoffset(c5);
  float _38_m18 : packoffset(c5.y);
  float _38_m19 : packoffset(c5.z);
  float _38_m20 : packoffset(c5.w);
  float _38_m21 : packoffset(c6);
  float _38_m22 : packoffset(c6.y);
  float _38_m23 : packoffset(c6.z);
  float _38_m24 : packoffset(c6.w);
  float _38_m25 : packoffset(c7);
  float _38_m26 : packoffset(c7.y);
  float _38_m27 : packoffset(c7.z);
  float _38_m28 : packoffset(c7.w);
  float _38_m29 : packoffset(c8);
  float _38_m30 : packoffset(c8.y);
  float _38_m31 : packoffset(c8.z);
  float _38_m32 : packoffset(c8.w);
  float _38_m33 : packoffset(c9);
  float _38_m34 : packoffset(c9.y);
  float _38_m35 : packoffset(c9.z);
  float _38_m36 : packoffset(c9.w);
  float _38_m37 : packoffset(c10);
  float _38_m38 : packoffset(c10.y);
  float _38_m39 : packoffset(c10.z);
  float _38_m40 : packoffset(c10.w);
  float _38_m41 : packoffset(c11);
  float _38_m42 : packoffset(c11.y);
  float _38_m43 : packoffset(c11.z);
  float _38_m44 : packoffset(c11.w);
  float _38_m45 : packoffset(c12);
  float _38_m46 : packoffset(c12.y);
  float _38_m47 : packoffset(c12.z);
  float _38_m48 : packoffset(c12.w);
  float _38_m49 : packoffset(c13);
  float _38_m50 : packoffset(c13.y);
  float _38_m51 : packoffset(c13.z);
  float _38_m52 : packoffset(c13.w);
  float _38_m53 : packoffset(c14);
  float _38_m54 : packoffset(c14.y);
  float _38_m55 : packoffset(c14.z);
  float _38_m56 : packoffset(c14.w);
  float4 _38_m57 : packoffset(c15);
  float4 _38_m58 : packoffset(c16);
  float4 _38_m59 : packoffset(c17);
  float4 _38_m60 : packoffset(c18);
  float4 _38_m61 : packoffset(c19);
  float _38_m62 : packoffset(c20);
  float _38_m63 : packoffset(c20.y);
  float _38_m64 : packoffset(c20.z);
  float _38_m65 : packoffset(c20.w);
  float4 _38_m66 : packoffset(c21);
  float4 _38_m67 : packoffset(c22);
  float4 _38_m68 : packoffset(c23);
  float4 _38_m69 : packoffset(c24);
  float4 _38_m70 : packoffset(c25);
  float _38_m71 : packoffset(c26);
  float _38_m72 : packoffset(c26.y);
  float _38_m73 : packoffset(c26.z);
  float _38_m74 : packoffset(c26.w);
  float _38_m75 : packoffset(c27);
  float _38_m76 : packoffset(c27.y);
  float _38_m77 : packoffset(c27.z);
  float _38_m78 : packoffset(c27.w);
  float4 _38_m79 : packoffset(c28);
  float4 _38_m80 : packoffset(c29);
  float4 _38_m81 : packoffset(c30);
  float4 _38_m82 : packoffset(c31);
  float _38_m83 : packoffset(c32);
  float _38_m84 : packoffset(c32.y);
  float _38_m85 : packoffset(c32.z);
  float _38_m86 : packoffset(c32.w);
  float _38_m87 : packoffset(c33);
  float _38_m88 : packoffset(c33.y);
  float _38_m89 : packoffset(c33.z);
  float _38_m90 : packoffset(c33.w);
  float _38_m91 : packoffset(c34);
  float _38_m92 : packoffset(c34.y);
  float _38_m93 : packoffset(c34.z);
  float _38_m94 : packoffset(c34.w);
  float _38_m95 : packoffset(c35);
  float _38_m96 : packoffset(c35.y);
  float _38_m97 : packoffset(c35.z);
  float _38_m98 : packoffset(c35.w);
  float _38_m99 : packoffset(c36);
  float _38_m100 : packoffset(c36.y);
  float _38_m101 : packoffset(c36.z);
  float _38_m102 : packoffset(c36.w);
  float _38_m103 : packoffset(c37);
  float _38_m104 : packoffset(c37.y);
  float _38_m105 : packoffset(c37.z);
  float _38_m106 : packoffset(c37.w);
  float _38_m107 : packoffset(c38);
  float _38_m108 : packoffset(c38.y);
  float _38_m109 : packoffset(c38.z);
  float _38_m110 : packoffset(c38.w);
  float _38_m111 : packoffset(c39);
  float _38_m112 : packoffset(c39.y);
  float _38_m113 : packoffset(c39.z);
  float _38_m114 : packoffset(c39.w);
  float _38_m115 : packoffset(c40);
  float _38_m116 : packoffset(c40.y);
  float _38_m117 : packoffset(c40.z);
  float _38_m118 : packoffset(c40.w);
  float _38_m119 : packoffset(c41);
  float _38_m120 : packoffset(c41.y);
  float _38_m121 : packoffset(c41.z);
  float _38_m122 : packoffset(c41.w);
  float _38_m123 : packoffset(c42);
  float4 _38_m124 : packoffset(c43);
  float4 _38_m125 : packoffset(c44);
  float _38_m126 : packoffset(c45);
  float _38_m127 : packoffset(c45.y);
  float _38_m128 : packoffset(c45.z);
  float _38_m129 : packoffset(c45.w);
  float4 _38_m130 : packoffset(c46);
};

[[vk::binding(13, 0)]] cbuffer _48_49 : register(b13, space0) {
  float4 _49_m0 : packoffset(c0);
  float4 _49_m1 : packoffset(c1);
  float4 _49_m2 : packoffset(c2);
  float4 _49_m3 : packoffset(c3);
  float4 _49_m4 : packoffset(c4);
  uint4 _49_m5 : packoffset(c5);
  float4 _49_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _50_51 : register(b49, space0) {
  int _51_m0 : packoffset(c0);
  int _51_m1 : packoffset(c0.y);
  int _51_m2 : packoffset(c0.z);
  int _51_m3 : packoffset(c0.w);
  int _51_m4 : packoffset(c1);
  int _51_m5 : packoffset(c1.y);
  int _51_m6 : packoffset(c1.z);
  int _51_m7 : packoffset(c1.w);
  float _51_m8 : packoffset(c2);
  float _51_m9 : packoffset(c2.y);
  float _51_m10 : packoffset(c2.z);
  float _51_m11 : packoffset(c2.w);
  float _51_m12 : packoffset(c3);
  float _51_m13 : packoffset(c3.y);
  float _51_m14 : packoffset(c3.z);
  float _51_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _52_53 : register(b14, space0) {
  column_major float4x4 _53_m0[5] : packoffset(c0);
  float4 _53_m1[4] : packoffset(c20);
  float4 _53_m2[4] : packoffset(c24);
  float4 _53_m3[4] : packoffset(c28);
  float4 _53_m4 : packoffset(c32);
  float4 _53_m5 : packoffset(c33);
  float4 _53_m6 : packoffset(c34);
  float4 _53_m7 : packoffset(c35);
  float4 _53_m8 : packoffset(c36);
  float4 _53_m9[27] : packoffset(c37);
  float4 _53_m10 : packoffset(c64);
  float4 _53_m11 : packoffset(c65);
  float4 _53_m12[62] : packoffset(c66);
  column_major float4x4 _53_m13[15] : packoffset(c128);
  float4 _53_m14[15] : packoffset(c188);
  float4 _53_m15[15] : packoffset(c203);
  float4 _53_m16[15] : packoffset(c218);
  float4 _53_m17 : packoffset(c233);
  float4 _53_m18 : packoffset(c234);
  float4 _53_m19[21] : packoffset(c235);
  column_major float4x4 _53_m20 : packoffset(c256);
  column_major float4x4 _53_m21 : packoffset(c260);
  float4 _53_m22 : packoffset(c264);
  float4 _53_m23 : packoffset(c265);
  float4 _53_m24 : packoffset(c266);
  float4 _53_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _56 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _63_64 : register(b51, space0) {
  float4 _64_m0[32] : packoffset(c0);
  column_major float4x4 _64_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _22 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _25 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _27 : register(t47, space0);
[[vk::binding(9, 1)]] Texture2D<float4> _30 : register(t9, space1);
[[vk::binding(5, 1)]] SamplerState _31 : register(s5, space1);
[[vk::binding(11, 1)]] Texture2D<float4> _32 : register(t11, space1);
[[vk::binding(7, 1)]] SamplerState _33 : register(s7, space1);
[[vk::binding(10, 1)]] Texture2D<float4> _34 : register(t10, space1);
[[vk::binding(6, 1)]] SamplerState _35 : register(s6, space1);
[[vk::binding(8, 1)]] Texture2D<float4> _36 : register(t8, space1);
[[vk::binding(37, 0)]] Texture3D<float4> _40 : register(t37, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _41 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _42 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _43 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _45 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _46 : register(t31, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _54 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _55 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _57 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _58 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _59 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _61 : register(t27, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _62 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _67 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _68 : register(t29, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 _4;
static float4 _5;
static float3 _6;
static float4 _7;
static float3 _8;
static float3 _9;
static uint _10;
static float4 _12;
static float4 _13;

struct SPIRV_Cross_Input {
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

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _12 : SV_Target0;
  [[vk::location(1)]] float4 _13 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  float2 _430 = gl_FragCoord.xy * _17_m0.zw;
  uint2 _431 = uint2(gl_FragCoord.xy);
  float2 _433 = (_430 * 2.0f) - 1.0f.xx;
  float4 _436 = float4(_433, gl_FragCoord.z, 1.0f);
  _436.y = -_433.y;
  float4 _439 = mul(_15_m6, _436);
  float3 _443 = _439.xyz / _439.w.xxx;
  float4 _447 = float4(_443, 1.0f);
  float _450 = abs(mul(_15_m0, _447).z);
  float3 _451 = _6 * 1.0f;
  float3 _466;
  do {
    if (_17_m4.w == 0.0f) {
      _466 = _15_m11.xyz - _443;
      break;
    } else {
      _466 = _15_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _467 = dot(_466, _466);
  float _469 = rsqrt(max(_467, 9.9999999392252902907785028219223e-09f));
  float3 _470 = _466 * _469;
  float _471 = _467 * _469;
  float2 _494 = ((_4.zw * _38_m4) - (_5.xy * _38_m4)) + _5.xy;
  float4 _495 = _5 * _38_m4;
  float _519 = (_17_m77.w * (1.0f - _20_m0[_10]._m8.x)) + _20_m0[_10]._m8.y;
  float2 _538 = ((mul(((((_4.xy * _38_m59.x) + (_494 * _38_m59.y)) + (_38_m57.xy * _519)) + (_38_m57.zw * _495.x)) - 0.5f.xx, float2x2(float2(_38_m58.xy), float2(_38_m58.zw))) + 0.5f.xx) * _38_m60.xy) + _38_m60.zw;
  float _546 = _495.y;
  float _619 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _38_m118);
  _538.y = _538.y * (1.0f + min(_619, 0.5f));
  float4 _644 = _34.SampleBias(_35, float4(((mul(((((_4.xy * _38_m82.x) + (_494 * _38_m82.y)) + (_38_m80.xy * _519)) + (_38_m80.zw * _546)) - 0.5f.xx, float2x2(float2(_38_m81.xy), float2(_38_m81.zw))) + 0.5f.xx) * _38_m79.xy) + _38_m79.zw, 0.0f, 0.0f).xy, _17_m16);
  float _648 = (_644.x * (_38_m71 + 1.0f)) - _38_m71;
  float2 _651 = float2(_648 * _38_m73, _648 * _38_m74);
  _644.w = _644.w * _648;
  float2 _660 = (((_644.wy * 2.0f) - 1.0f.xx).xy * _38_m73).xy;
  bool2 _662 = (_38_m72 != 0.0f).xx;
  float2 _664 = float2(_662.x ? _660.x : _651.x, _662.y ? _660.y : _651.y) * 1.0f;
  float4 _674 = _30.SampleBias(_31, (_538 + _619.xx) + (_664 * _38_m53), _17_m16);
  float4 _679 = ((_38_m16 * lerp(_7, 1.0f.xxxx, _38_m5.xxxx)) * float4(_38_m6, _38_m6, _38_m6, _38_m7)) * lerp(_674, float4(1.0f, 1.0f, 1.0f, _674.x), _38_m54.xxxx);
  float _715 = _32.SampleBias(_33, (((mul(((((_4.xy * _38_m69.x) + (_494 * _38_m69.y)) + (_38_m67.xy * _519)) + (_38_m67.zw * _546)) - 0.5f.xx, float2x2(float2(_38_m68.xy), float2(_38_m68.zw))) + 0.5f.xx) * _38_m66.xy) + _38_m66.zw) + (_664 * _38_m62), _17_m16).x - lerp(-1.0f, ((_38_m63 + (_5.z * _38_m4)) * 2.019999980926513671875f) - 1.0099999904632568359375f, clamp(lerp(1.0f, lerp(_7.x, _7.w, _38_m119), _38_m120) - _38_m121, 0.0f, 1.0f));
  float _717 = clamp(_715 * _38_m64, 0.0f, 1.0f);
  float _720 = clamp((_38_m65 - _715) * _38_m64, 0.0f, 1.0f);
  float2 _739 = ((float2(_431) * _17_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _742 = float4(_739, _27.SampleLevel(_22, _430, 0.0f).x, 1.0f);
  _742.y = -_739.y;
  float4 _745 = mul(_15_m6, _742);
  bool3 _779 = (gl_FrontFacing ? true : false).xxx;
  float3 _780 = -_451;
  float3 _781 = float3(_779.x ? _451.x : _780.x, _779.y ? _451.y : _780.y, _779.z ? _451.z : _780.z);
  float _811 = (((((_679.w * lerp(_717, _717, _38_m70.w)) * ((_38_m83 != 0.0f) ? (clamp((_450 - _38_m84) / (_38_m85 - _38_m84), 0.0f, 1.0f) * clamp((_450 - _38_m86) / (_38_m87 - _38_m86), 0.0f, 1.0f)) : 1.0f)) * clamp(((abs(mul(_15_m0, float4(_745.xyz / _745.w.xxx, 1.0f)).z) - _450) + _38_m96) / _38_m95, 0.0f, 1.0f)) * lerp(1.0f, _7.w, _38_m116)) * lerp(1.0f, pow(abs(dot(_6, _470)), _38_m109), _38_m111)) * (1.0f - _20_m0[_10]._m1.y);
  float _819 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
  float _840 = clamp(_811 * (((_20_m0[_10]._m1.x - ((_20_m0[_10]._m1.x >= 0.0f) ? _819 : (-_819))) > 0.0f) ? 1.0f : (1.0f - _38_m0)), 0.0f, 1.0f);
  float3 _841 = clamp((lerp(_679.xyz, (_38_m70.xyz * _720) * _38_m6, _720.xxx).xyz * ((1.0f - _38_m12) + (_17_m20.y * _38_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
  float3 _844 = _841 * _38_m112;
  float3 _846 = _841 * (1.0f - _38_m112);
  float3 _884;
  if (_38_m128 > 0.0f) {
    _884 = _846 + (((_36.SampleBias(_24, (mul(float3x3(_15_m0[0].xyz, _15_m0[1].xyz, _15_m0[2].xyz), _781).xy + 1.0f.xx) * 0.5f, _17_m16).xyz * _38_m126) * _38_m130.xyz) * ((1.0f - _38_m127) + (_17_m20.y * _38_m127)));
  } else {
    _884 = _846;
  }
  float _893 = (_38_m101 * lerp(1.0f, _7.x, _38_m116)) * _844.x;
  float2 _942;
  if (clamp((_38_m3 + 1.0f) - _38_m0, 0.0f, 1.0f) > 0.5f) {
    float2 _928 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _928.y = -_928.y;
    _942 = ((sqrt(sqrt(abs(_928 * 0.5f))) * float2(int2(sign(_928)))) * 0.5f) + 0.5f.xx;
  } else {
    _942 = 0.0f.xx;
  }
  float3 _944 = (0.07999999821186065673828125f * _38_m115).xxx;
  uint2 _975;
  float _976;
  if (_17_m24.y == 1.0f) {
    float4 _952 = mul(_17_m138, _447);
    float4 _955 = _952;
    _955.y = -_952.y;
    float4 _958 = _955 * (1.0f / _952.w);
    _975 = uint2(clamp(((_958.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
    _976 = 1.0f / ((_17_m2.z * _958.z) + _17_m2.w);
  } else {
    _975 = _431;
    _976 = _450;
  }
  float3 _978 = _443 + (_781 * 0.25f);
  float3 _988 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _997 = _978 - (_17_m108.xyz + (_988 * (-_17_m110.w)));
  float _1012 = max(min(max((max(abs(_997.x), abs(_997.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_997.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1314;
  float4 _1315;
  float4 _1316;
  float _1317;
  float _1318;
  if ((_17_m108.w != 0.0f) && (_1012 < 1.0f)) {
    float3 _1025 = _978 - (_17_m108.xyz + (_988 * (-_17_m110.y)));
    float _1039 = max(clamp((max(abs(_1025.x), abs(_1025.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1025.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1115;
    float4 _1116;
    float4 _1117;
    float4 _1118;
    if (_1039 < 1.0f) {
      float3 _1048 = ((_978 * 2.0f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _1050 = _1048 - floor(_1048);
      float4 _1054 = _41.SampleLevel(_24, _1050, 0.0f);
      float _1055 = 1.0f - _1039;
      float _1059 = _17_m109.y * 0.5f;
      float _1064 = _1050.x;
      float _1065 = clamp(_1050.y, _1059, 1.0f - _1059) * 0.3333333432674407958984375f;
      float _1066 = _1050.z;
      float4 _1069 = _42.SampleLevel(_23, float3(_1064, _1065, _1066), 0.0f);
      float _1085 = _1054.x;
      float _1095 = _1054.y;
      float _1105 = _1054.z;
      _1115 = _1012 + (_1069.w * _1055);
      _1116 = float4(((_42.SampleLevel(_23, float3(_1064, _1065 + 0.666666686534881591796875f, _1066), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1105, _1105) * _1055;
      _1117 = float4(((_42.SampleLevel(_23, float3(_1064, _1065 + 0.3333333432674407958984375f, _1066), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1095, _1095) * _1055;
      _1118 = float4(((_1069.xyz * 4.0f) - 2.0f.xxx) * _1085, _1085) * _1055;
    } else {
      _1115 = _1012;
      _1116 = 0.0f.xxxx;
      _1117 = 0.0f.xxxx;
      _1118 = 0.0f.xxxx;
    }
    float3 _1124 = _978 - (_17_m108.xyz + (_988 * (-_17_m110.z)));
    float _1138 = max(clamp((max(abs(_1124.x), abs(_1124.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1124.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1218;
    float4 _1219;
    float4 _1220;
    float4 _1221;
    if (_1138 < 1.0f) {
      float3 _1147 = ((_978 * 0.5f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _1149 = _1147 - floor(_1147);
      float4 _1153 = _43.SampleLevel(_24, _1149, 0.0f);
      float _1155 = _1039 * (1.0f - _1138);
      float _1159 = _17_m109.y * 0.5f;
      float _1164 = _1149.x;
      float _1165 = clamp(_1149.y, _1159, 1.0f - _1159) * 0.3333333432674407958984375f;
      float _1166 = _1149.z;
      float4 _1169 = _44.SampleLevel(_23, float3(_1164, _1165, _1166), 0.0f);
      float _1185 = _1153.x;
      float _1196 = _1153.y;
      float _1207 = _1153.z;
      _1218 = _1115 + (_1169.w * _1155);
      _1219 = _1116 + (float4(((_44.SampleLevel(_23, float3(_1164, _1165 + 0.666666686534881591796875f, _1166), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1207, _1207) * _1155);
      _1220 = _1117 + (float4(((_44.SampleLevel(_23, float3(_1164, _1165 + 0.3333333432674407958984375f, _1166), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1196, _1196) * _1155);
      _1221 = _1118 + (float4(((_1169.xyz * 4.0f) - 2.0f.xxx) * _1185, _1185) * _1155);
    } else {
      _1218 = _1115;
      _1219 = _1116;
      _1220 = _1117;
      _1221 = _1118;
    }
    float4 _1304;
    float4 _1305;
    float4 _1306;
    float _1307;
    if (_1138 > 0.0f) {
      float3 _1230 = ((_978 * 0.125f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _1233 = _17_m109.xyz * 0.5f;
      float3 _1235 = clamp(_1230 - floor(_1230), _1233, 1.0f.xxx - _1233);
      float4 _1239 = _45.SampleLevel(_24, _1235, 0.0f);
      float _1241 = _1138 * (1.0f - _1012);
      float _1245 = _17_m109.y * 0.5f;
      float _1250 = _1235.x;
      float _1251 = clamp(_1235.y, _1245, 1.0f - _1245) * 0.3333333432674407958984375f;
      float _1252 = _1235.z;
      float4 _1255 = _46.SampleLevel(_23, float3(_1250, _1251, _1252), 0.0f);
      float _1271 = _1239.x;
      float _1282 = _1239.y;
      float _1293 = _1239.z;
      _1304 = _1219 + (float4(((_46.SampleLevel(_23, float3(_1250, _1251 + 0.666666686534881591796875f, _1252), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1293, _1293) * _1241);
      _1305 = _1220 + (float4(((_46.SampleLevel(_23, float3(_1250, _1251 + 0.3333333432674407958984375f, _1252), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1282, _1282) * _1241);
      _1306 = _1221 + (float4(((_1255.xyz * 4.0f) - 2.0f.xxx) * _1271, _1271) * _1241);
      _1307 = _1218 + (_1255.w * _1241);
    } else {
      _1304 = _1219;
      _1305 = _1220;
      _1306 = _1221;
      _1307 = _1218;
    }
    float _1310 = clamp((_1307 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1314 = _1304;
    _1315 = _1305;
    _1316 = _1306;
    _1317 = _1310 - _1012;
    _1318 = (_1310 + _1012) * 0.5f;
  } else {
    _1314 = 0.0f.xxxx;
    _1315 = 0.0f.xxxx;
    _1316 = 0.0f.xxxx;
    _1317 = 0.0f;
    _1318 = 1.0f;
  }
  float4 _1338 = _1316 + float4(_17_m111.x * _1318, (_17_m111.y * _1318) + ((_17_m111.w * _1317) * 0.5f), _17_m111.z * _1318, (_17_m111.w * _1318) + ((_17_m111.y * _1317) * 0.375f));
  float4 _1358 = _1315 + float4(_17_m112.x * _1318, (_17_m112.y * _1318) + ((_17_m112.w * _1317) * 0.5f), _17_m112.z * _1318, (_17_m112.w * _1318) + ((_17_m112.y * _1317) * 0.375f));
  float4 _1378 = _1314 + float4(_17_m113.x * _1318, (_17_m113.y * _1318) + ((_17_m113.w * _1317) * 0.5f), _17_m113.z * _1318, (_17_m113.w * _1318) + ((_17_m113.y * _1317) * 0.375f));
  float3 _1406 = lerp(1.0f.xxx, clamp(abs((frac(float3(_38_m99, _38_m100, _893).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _38_m100.xxx) * _893;
  float3 _1413 = ((float3(max(0.0f, dot(_1338.xyz, _781) + _1338.w), max(0.0f, dot(_1358.xyz, _781) + _1358.w), max(0.0f, dot(_1378.xyz, _781) + _1378.w)) * (_844 + (_1406 * _38_m102))) * 1.0f) * _17_m22.x;
  float3 _1422 = (((_1413.x + _1413.y) + _1413.z) * 0.3333333432674407958984375f).xxx;
  float3 _1427 = (_1422 + ((_1413 - _1422) * _38_m110)) + ((-0.0f).xxx * _38_m110);
  float3 _1433 = _17_m78.w.xxx;
  float _1441 = 1.0f - _38_m11;
  float4 _2294;
  do {
    [branch] if (_51_m4 == 0) {
      _2294 = 0.0f.xxxx;
      break;
    }
    float3 _1451 = _443 + (_781 * 0.5f);
    float2 _2123;
    do {
      if (_53_m7.w >= 0.9900000095367431640625f) {
        _2123 = float2(_53_m7.z, 1.0f);
        break;
      }
      float _2047;
      if (_38_m122 > 0.0f) {
        float _1859 = 1.0f - clamp(dot(_781, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1876 = float4((_1451 - (_49_m0.xyz * (_1859 * _53_m22.x))) + (_781 * (_1859 * _53_m22.y)), 1.0f);
        float4 _1877 = mul(_53_m21, _1876);
        float2 _1878 = _1877.xy;
        float _2046;
        if (all(bool2(_1878.x > 0.0f.xx.x, _1878.y > 0.0f.xx.y)) && all(bool2(_1878.x < 1.0f.xx.x, _1878.y < 1.0f.xx.y))) {
          uint _1897 = clamp(uint((floor(_1877.y * _53_m23.z) + _1877.x) * _53_m23.y), 0u, 127u);
          uint _1901 = asuint(_53_m25[_1897].x);
          float2 _1902 = spvUnpackHalf2x16(_1901);
          float _1903 = _1902.x;
          float _2045;
          if (_1903 >= 0.0f) {
            float4x4 _1912 = _53_m20;
            _1912[0].w = _53_m25[_1897].y;
            _1912[1].w = _53_m25[_1897].z;
            _1912[2].w = _53_m25[_1897].w;
            float4 _1919 = mul(_1912, _1876);
            float3 _1920 = _1919.xyz;
            float _2044;
            if (all(bool3(_1920.x > 0.0f.xxx.x, _1920.y > 0.0f.xxx.y, _1920.z > 0.0f.xxx.z)) && all(bool3(_1920.x < 1.0f.xxx.x, _1920.y < 1.0f.xxx.y, _1920.z < 1.0f.xxx.z))) {
              float2 _1932 = (_1919.xy * _53_m22.zw) + float2(_1903, spvUnpackHalf2x16(_1901 >> 16u).x);
              float _1937 = _1919.z;
              float2 _1943 = float4(_1932, _1937, 1.0f).xy * _53_m24.zw;
              float2 _1945 = floor(_1943 + 0.5f.xx);
              float2 _1946 = _1943 - _1945;
              float _1947 = _1946.x;
              float _1948 = _1947 + 0.5f;
              float _1950 = (_1948 * _1948) * 0.5f;
              float _1953 = min(_1947, 0.0f);
              float _1957 = max(_1947, 0.0f);
              float4 _1961 = float4(_1950 - _1947, (1.0f - _1947) - (_1953 * _1953), (_1947 + 1.0f) - (_1957 * _1957), _1950) * 0.44444000720977783203125f;
              float _1962 = _1946.y;
              float _1963 = _1962 + 0.5f;
              float _1965 = (_1963 * _1963) * 0.5f;
              float _1968 = min(_1962, 0.0f);
              float _1972 = max(_1962, 0.0f);
              float4 _1976 = float4(_1965 - _1962, (1.0f - _1962) - (_1968 * _1968), (_1962 + 1.0f) - (_1972 * _1972), _1965) * 0.44444000720977783203125f;
              float2 _1978 = _1961.yw;
              float2 _1979 = _1961.xz + _1978;
              float2 _1981 = _1976.yw;
              float2 _1982 = _1976.xz + _1981;
              float2 _1988 = ((_1978 / _1979) + float2(-1.5f, 0.5f)) * _53_m24.xx;
              float2 _1990 = ((_1981 / _1982) + float2(-1.5f, 0.5f)) * _53_m24.yy;
              float2 _1992 = _1945 * _53_m24.xy;
              float _1993 = _1988.x;
              float _1994 = _1990.x;
              float2 _1996 = _1992 + float2(_1993, _1994);
              float _1997 = _1988.y;
              float2 _1999 = _1992 + float2(_1997, _1994);
              float _2000 = _1990.y;
              float2 _2002 = _1992 + float2(_1993, _2000);
              float2 _2004 = _1992 + float2(_1997, _2000);
              float _2005 = _1979.x;
              float _2006 = _1982.x;
              float _2008 = _1979.y;
              float _2010 = _1982.y;
              _2044 = ((((_2005 * _2006) * _58.SampleCmpLevelZero(_25, float3(_1996, _400).xy, _1937)) + ((_2008 * _2006) * _58.SampleCmpLevelZero(_25, float3(_1999, _400).xy, _1937))) + ((_2005 * _2010) * _58.SampleCmpLevelZero(_25, float3(_2002, _400).xy, _1937))) + ((_2008 * _2010) * _58.SampleCmpLevelZero(_25, float3(_2004, _400).xy, _1937));
            } else {
              _2044 = 1.0f;
            }
            _2045 = _2044;
          } else {
            _2045 = 1.0f;
          }
          _2046 = _2045;
        } else {
          _2046 = 1.0f;
        }
        _2047 = _2046;
      } else {
        int _1470 = int(_53_m7.x);
        bool3 _1472 = (_1470 == 2).xxx;
        float3 _1480 = _1451 - float3(_1472.x ? _53_m1[0].xyz.x : _15_m11.xyz.x, _1472.y ? _53_m1[0].xyz.y : _15_m11.xyz.y, _1472.z ? _53_m1[0].xyz.z : _15_m11.xyz.z);
        float _1491 = max(clamp((_53_m6.w - dot(_1480, _1480)) * _53_m6.z, 0.0f, 1.0f), _53_m8.x);
        float _1648;
        bool _1649;
        if (_1491 > 0.0f) {
          float _1646;
          bool _1647;
          if (_1470 > 0) {
            float3 _1498 = _1451 - _53_m1[0].xyz;
            float3 _1502 = _1451 - _53_m1[1].xyz;
            float3 _1506 = _1451 - _53_m1[2].xyz;
            float3 _1510 = _1451 - _53_m1[3].xyz;
            float4 _1515 = float4(dot(_1498, _1498), dot(_1502, _1502), dot(_1506, _1506), dot(_1510, _1510));
            float4 _1524 = float4(_53_m1[0].w, _53_m1[1].w, _53_m1[2].w, _53_m1[3].w);
            float4 _1526 = float4(bool4(_1515.x < _1524.x, _1515.y < _1524.y, _1515.z < _1524.z, _1515.w < _1524.w));
            float3 _1530 = clamp(_1526.yzw - _1526.xyz, 0.0f.xxx, 1.0f.xxx);
            float _1534 = clamp(4.0f - dot(float4(_1526.x, _1530.x, _1530.y, _1530.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
            float _1536 = clamp(_1534 + 1.0f, 0.0f, 3.0f);
            uint _1537 = uint(_1534);
            uint _1545 = uint(_1536);
            float _1551 = dot(_1515, _377[_1545]) / _53_m1[_1545].w;
            float _1569;
            if (((_1536 > _1534) && (_1551 >= 0.0f)) && (_1551 <= 1.0f)) {
              _1569 = _1534 + step(frac(52.98291778564453125f * frac(dot(float2(_975) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1515, _377[_1537]) / _53_m1[_1537].w) - 0.89999997615814208984375f) * 12.0f);
            } else {
              _1569 = _1534;
            }
            float _1570 = clamp(_1569, 0.0f, 4.0f);
            float4 _1578 = mul(_53_m0[uint(_1570)], float4(_1451, 1.0f));
            float _1581 = _1578.z;
            float4 _1582 = float4(_1578.xy, _1581, _1570);
            float3 _1583 = _1582.xyz;
            bool3 _1584 = bool3(_1583.x <= 0.0f.xxx.x, _1583.y <= 0.0f.xxx.y, _1583.z <= 0.0f.xxx.z);
            bool3 _1585 = bool3(_1583.x >= 1.0f.xxx.x, _1583.y >= 1.0f.xxx.y, _1583.z >= 1.0f.xxx.z);
            bool _1591 = any(bool3(_1584.x || _1585.x, _1584.y || _1585.y, _1584.z || _1585.z)) || ((asuint(_1581) & 2147483647u) > 2139095040u);
            int _1592 = int(_1570);
            float2 _1607 = float4(_53_m3[_1592].xy + (_1582.xy * _53_m3[_1592].zw), _1581, _1570).xy;
            _1646 = _1591 ? 1.0f : (0.25f * (((_54.SampleCmpLevelZero(_25, float3(_1607 + (_53_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _400).xy, _1581) + _54.SampleCmpLevelZero(_25, float3(_1607 + (_53_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _400).xy, _1581)) + _54.SampleCmpLevelZero(_25, float3(_1607 + (_53_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _400).xy, _1581)) + _54.SampleCmpLevelZero(_25, float3(_1607 + (_53_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _400).xy, _1581)));
            _1647 = _1591;
          } else {
            _1646 = 1.0f;
            _1647 = false;
          }
          _1648 = _1646;
          _1649 = _1647;
        } else {
          _1648 = 1.0f;
          _1649 = false;
        }
        float _1849;
        float _1850;
        if ((_1491 < 1.0f) || (_53_m8.x > 0.5f)) {
          float _1660 = 1.0f - clamp(dot(_781, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
          float4 _1677 = float4((_1451 - (_49_m0.xyz * (_1660 * _53_m22.x))) + (_781 * (_1660 * _53_m22.y)), 1.0f);
          float4 _1678 = mul(_53_m21, _1677);
          float2 _1679 = _1678.xy;
          float _1847;
          if (all(bool2(_1679.x > 0.0f.xx.x, _1679.y > 0.0f.xx.y)) && all(bool2(_1679.x < 1.0f.xx.x, _1679.y < 1.0f.xx.y))) {
            uint _1698 = clamp(uint((floor(_1678.y * _53_m23.z) + _1678.x) * _53_m23.y), 0u, 127u);
            uint _1702 = asuint(_53_m25[_1698].x);
            float2 _1703 = spvUnpackHalf2x16(_1702);
            float _1704 = _1703.x;
            float _1846;
            if (_1704 >= 0.0f) {
              float4x4 _1713 = _53_m20;
              _1713[0].w = _53_m25[_1698].y;
              _1713[1].w = _53_m25[_1698].z;
              _1713[2].w = _53_m25[_1698].w;
              float4 _1720 = mul(_1713, _1677);
              float3 _1721 = _1720.xyz;
              float _1845;
              if (all(bool3(_1721.x > 0.0f.xxx.x, _1721.y > 0.0f.xxx.y, _1721.z > 0.0f.xxx.z)) && all(bool3(_1721.x < 1.0f.xxx.x, _1721.y < 1.0f.xxx.y, _1721.z < 1.0f.xxx.z))) {
                float2 _1733 = (_1720.xy * _53_m22.zw) + float2(_1704, spvUnpackHalf2x16(_1702 >> 16u).x);
                float _1738 = _1720.z;
                float2 _1744 = float4(_1733, _1738, 1.0f).xy * _53_m24.zw;
                float2 _1746 = floor(_1744 + 0.5f.xx);
                float2 _1747 = _1744 - _1746;
                float _1748 = _1747.x;
                float _1749 = _1748 + 0.5f;
                float _1751 = (_1749 * _1749) * 0.5f;
                float _1754 = min(_1748, 0.0f);
                float _1758 = max(_1748, 0.0f);
                float4 _1762 = float4(_1751 - _1748, (1.0f - _1748) - (_1754 * _1754), (_1748 + 1.0f) - (_1758 * _1758), _1751) * 0.44444000720977783203125f;
                float _1763 = _1747.y;
                float _1764 = _1763 + 0.5f;
                float _1766 = (_1764 * _1764) * 0.5f;
                float _1769 = min(_1763, 0.0f);
                float _1773 = max(_1763, 0.0f);
                float4 _1777 = float4(_1766 - _1763, (1.0f - _1763) - (_1769 * _1769), (_1763 + 1.0f) - (_1773 * _1773), _1766) * 0.44444000720977783203125f;
                float2 _1779 = _1762.yw;
                float2 _1780 = _1762.xz + _1779;
                float2 _1782 = _1777.yw;
                float2 _1783 = _1777.xz + _1782;
                float2 _1789 = ((_1779 / _1780) + float2(-1.5f, 0.5f)) * _53_m24.xx;
                float2 _1791 = ((_1782 / _1783) + float2(-1.5f, 0.5f)) * _53_m24.yy;
                float2 _1793 = _1746 * _53_m24.xy;
                float _1794 = _1789.x;
                float _1795 = _1791.x;
                float2 _1797 = _1793 + float2(_1794, _1795);
                float _1798 = _1789.y;
                float2 _1800 = _1793 + float2(_1798, _1795);
                float _1801 = _1791.y;
                float2 _1803 = _1793 + float2(_1794, _1801);
                float2 _1805 = _1793 + float2(_1798, _1801);
                float _1806 = _1780.x;
                float _1807 = _1783.x;
                float _1809 = _1780.y;
                float _1811 = _1783.y;
                _1845 = ((((_1806 * _1807) * _58.SampleCmpLevelZero(_25, float3(_1797, _400).xy, _1738)) + ((_1809 * _1807) * _58.SampleCmpLevelZero(_25, float3(_1800, _400).xy, _1738))) + ((_1806 * _1811) * _58.SampleCmpLevelZero(_25, float3(_1803, _400).xy, _1738))) + ((_1809 * _1811) * _58.SampleCmpLevelZero(_25, float3(_1805, _400).xy, _1738));
              } else {
                _1845 = 1.0f;
              }
              _1846 = _1845;
            } else {
              _1846 = 1.0f;
            }
            _1847 = _1846;
          } else {
            _1847 = 1.0f;
          }
          _1849 = _1649 ? _1847 : _1648;
          _1850 = _1847;
        } else {
          _1849 = _1648;
          _1850 = 1.0f;
        }
        _2047 = lerp(lerp(_1850, _1849, _1491), min(_1850, _1849), _53_m8.x);
      }
      float _2118;
      if (_2047 > 0.001000000047497451305389404296875f) {
        float3 _2080 = _1451 - _17_m65.xyz;
        float2 _2085 = (_2080 + (_17_m68.xyz * _2080.y)).xz * _17_m66.z;
        float2 _2086 = _17_m67.xy * _17_m77.w;
        float3 _2093 = _1451 - _17_m69.xyz;
        float2 _2101 = _17_m69.w.xx;
        float4 _2108 = _57.SampleLevel(_24, lerp(_2085 * _17_m67.w, (_2093 + (_17_m68.xyz * _2093.y)).xz * _17_m70.x, _2101) + lerp(_2086, _17_m70.yz * _17_m77.w, _2101), 0.0f);
        _2118 = _2047 * lerp(1.0f, lerp(_57.SampleLevel(_24, _2085 + _2086, 0.0f).x, lerp(_2108.x, _2108.y, _17_m69.w), smoothstep(_17_m66.x, _17_m66.y, length(_2080.xz))), _17_m67.z);
      } else {
        _2118 = _2047;
      }
      _2123 = float2(lerp(_2118, _53_m7.z, _53_m7.w), _2118);
      break;
    } while (false);
    float _2128 = lerp(1.0f, min(1.0f, _2123.x), _53_m6.x);
    float4 _2293;
    if (_2128 > 0.001000000047497451305389404296875f) {
      float3 _2139 = reflect(-_470, _781);
      float3 _2140 = -_49_m0.xyz;
      float _2145 = dot(_2140, _2139);
      float3 _2147 = _2139 - (_2140 * _2145);
      bool3 _2149 = (_2145 < _49_m4.z).xxx;
      float3 _2157 = normalize((_2140 * _49_m4.z) + ((_2147 * rsqrt(max(6.103515625e-05f, dot(_2147, _2147)))) * _49_m4.y));
      float3 _2158 = float3(_2149.x ? _2157.x : _2139.x, _2149.y ? _2157.y : _2139.y, _2149.z ? _2157.z : _2139.z);
      float3 _2162 = _2158 + _470;
      float3 _2166 = _2162 * rsqrt(max(6.103515625e-05f, dot(_2162, _2162)));
      float _2168 = clamp(dot(_2158, _781), 0.0f, 1.0f);
      float _2170 = clamp(dot(_781, _2166), 0.0f, 1.0f);
      float _2175 = clamp(dot(_781, _470), 0.0f, 1.0f);
      float _2176 = _38_m114 * _38_m114;
      float _2177 = _2176 * _2176;
      float _2198 = (((_2170 * _2177) - _2170) * _2170) + 1.0f;
      float _2201 = 1.0f - clamp(dot(_470, _2166), 0.0f, 1.0f);
      float _2202 = _2201 * _2201;
      float _2204 = (_2201 * _2202) * _2202;
      float _2228 = 1.0f - _38_m114;
      float _2235 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2228 * (1.04997003078460693359375f + (_2228 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2228))))));
      float _2236 = 1.0f - _2235;
      float3 _2239 = _944 + ((1.0f.xxx - _944) * 0.0476190485060214996337890625f);
      float _2250 = clamp(1.0f - _893, 0.0f, 1.0f);
      float _2258 = clamp((dot(_781, _2158) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
      float3 _2275 = clamp(clamp((min(((_944 * (1.0f - _2204)) + _2204.xxx) * ((_2177 / (_2198 * _2198)) * (0.5f / (((_2168 * sqrt(((((-_2175) * _2177) + _2175) * _2175) + _2177)) + (_2175 * sqrt(((((-_2168) * _2177) + _2168) * _2168) + _2177))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2239 * (((_61.SampleLevel(_23, (float2(_2175, _38_m114) * 0.96875f) + 0.015625f.xx, 0.0f).x * _61.SampleLevel(_23, (float2(_2168, _38_m114) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2235) / _2236)) * _2239) / (1.0f.xxx - (_2239 * _2236)))) * _49_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_840, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _38_m108;
      float3 _2280 = (((_2275 * _2168) + (_1406 * lerp(lerp(1.0f, (_2258 * sqrt(_2258)) * 1.66666662693023681640625f, _2250) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_470, _2158), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _2250)))) + ((_844 * 1.0f) * _2168)) * _49_m1.xyz;
      float3 _2291 = lerp(_2280, _2280 * _59.SampleBias(_23, float2(_2128, 0.5f), _17_m16).xyz, (1.0f - _2128).xxx) * 1.0f;
      _2293 = float4(_2291.x, _2291.y, _2291.z, 0.0f.xxxx.w);
    } else {
      _2293 = 0.0f.xxxx;
    }
    _2294 = _2293;
    break;
  } while (false);
  float2 _2295 = float2(_975);
  float2 _2297 = floor(_2295 * 0.03125f);
  int _2305 = int((_2297.x + (_2297.y * _51_m9)) * 8.0f);
  float _2312 = floor(_976 - (_17_m3.y * _51_m15));
  float _2316 = clamp(_2312, 0.0f, _51_m11 - 1.0f);
  int _2318 = int(_2316 * 8.0f);
  float3 _2320;
  float _2323;
  _2320 = 0.0f.xxx;
  _2323 = 1.0f;
  float3 _2321;
  float _2324;
  [loop] for (int _2325 = 0; _2325 <= 7; _2320 = _2321, _2323 = _2324, _2325++) {
    uint _2346 = (_2312 <= _2316) ? (_29.Load(uint((_51_m2 + _2305) + _2325) * 4 + 0) & _29.Load(uint((_51_m3 + _2318) + _2325) * 4 + 0)) : 0u;
    uint _2347 = uint(_2325);
    float3 _2351;
    _2324 = _2323;
    _2351 = 0.0f.xxx;
    uint _2354;
    float _2349;
    float3 _2352;
    [loop] for (uint _2353 = _2346; _2353 != 0u; _2324 = _2349, _2351 = _2352, _2353 = _2354) {
      uint _2358 = firstbitlow(_2353);
      _2354 = _2353 ^ (1u << (_2358 & 31u));
      int _2364 = int((32u * _2347) + _2358) * 8;
      int _2367 = _2364 + 1;
      int _2370 = _2364 + 2;
      int _2373 = _2364 + 3;
      int _2376 = _2364 + 4;
      int _2379 = _2364 + 5;
      int _2382 = _2364 + 6;
      int _2385 = _2364 + 7;
      uint _2389 = uint(_49_m6[_2379].w);
      float _2464;
      if ((_2389 & 1u) == 1u) {
        uint _2395 = asuint(_49_m6[_2379].x);
        uint _2402 = asuint(_49_m6[_2379].y);
        uint _2409 = asuint(_49_m6[_2379].z);
        uint _2416 = asuint(_49_m6[_2382].x);
        uint _2423 = asuint(_49_m6[_2382].y);
        uint _2430 = asuint(_49_m6[_2382].z);
        float3 _2449 = abs(mul(float4(_443 - _49_m6[_2367].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2395).x, spvUnpackHalf2x16(_2409).x, spvUnpackHalf2x16(_2423).x, 0.0f), float4(spvUnpackHalf2x16(_2395 >> 16u).x, spvUnpackHalf2x16(_2409 >> 16u).x, spvUnpackHalf2x16(_2423 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2402).x, spvUnpackHalf2x16(_2416).x, spvUnpackHalf2x16(_2430).x, 0.0f), float4(spvUnpackHalf2x16(_2402 >> 16u).x, spvUnpackHalf2x16(_2416 >> 16u).x, spvUnpackHalf2x16(_2430 >> 16u).x, 0.0f))).xyz);
        float _2456 = _49_m6[_2385].x * 0.5f;
        float _2462 = 1.0f - clamp((max(max(_2449.x, _2449.y), _2449.z) - (_2456 + 0.5f)) / (0.5f - _2456), 0.0f, 1.0f);
        _2464 = _2462 * _2462;
      } else {
        _2464 = 1.0f;
      }
      uint _2468 = uint(_49_m6[_2364].w);
      bool _2471 = _49_m6[_2373].z > 0.5f;
      if ((false || (_2464 < 0.001000000047497451305389404296875f)) || ((_2468 < 4u) && _2471)) {
        _2349 = _2324;
        _2352 = _2351;
        continue;
      }
      float _5024;
      float3 _5025;
      do {
        [branch] if (_2468 >= 4u) {
          float3 _3701;
          do {
            float3 _2490 = _49_m6[_2367].xyz - _443;
            if (dot(_49_m6[_2373].xyz, _2490) > 0.0f) {
              _3701 = 0.0f.xxx;
              break;
            }
            float _2497 = dot(_2490, _2490) * _49_m6[_2367].w;
            float _2500 = clamp(1.0f - (_2497 * _2497), 0.0f, 1.0f);
            float _2501 = _2500 * _2500;
            if (_2501 <= 0.0f) {
              _3701 = 0.0f.xxx;
              break;
            }
            float3 _2540;
            float _2541;
            bool _2542;
            float3 _2570;
            float3 _2572;
            float3 _2574;
            float3 _2576;
            float3 _2505 = _49_m6[_2370].xyz * _49_m6[_2370].w;
            float3 _2506 = _49_m6[_2367].xyz - _2505;
            float3 _2507 = _49_m6[_2376].xyz * _49_m6[_2373].w;
            float3 _2510 = _49_m6[_2367].xyz + _2505;
            float2 _2521 = (float2(clamp(_38_m114, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_781, _470), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2525 = _67.SampleLevel(_23, _2521, 0.0f);
            float4 _2529 = _68.SampleLevel(_23, _2521, 0.0f);
            float _2924;
            do {
              _2540 = _470 - (_781 * dot(_470, _781));
              _2541 = dot(_2540, _2540);
              _2542 = _2541 > 9.9999997473787516355514526367188e-05f;
              float3 _2565;
              if (_2542) {
                _2565 = _2540 * rsqrt(_2541);
              } else {
                float _2546 = _781.z;
                float _2548 = (_2546 >= 0.0f) ? 1.0f : (-1.0f);
                float _2550 = (-1.0f) / (_2548 + _2546);
                float _2552 = _781.x;
                _2565 = float3(1.0f + (((_2548 * _2550) * _2552) * _2552), ((_2548 * _2552) * _781.y) * _2550, (-_2548) * _2552);
              }
              float3x3 _2569 = mul(float3x3(float3(_2525.x, 0.0f, _2525.z), float3(0.0f, 1.0f, 0.0f), float3(_2525.y, 0.0f, _2525.w)), float3x3(_2565, cross(_781, _2565), _781));
              _2570 = (_2506 - _2507) - _443;
              float3 _2571 = mul(_2569, _2570);
              _2572 = (_2506 + _2507) - _443;
              float3 _2573 = mul(_2569, _2572);
              _2574 = (_2510 + _2507) - _443;
              float3 _2575 = mul(_2569, _2574);
              _2576 = (_2510 - _2507) - _443;
              float3 _2577 = mul(_2569, _2576);
              float _2578 = _2571.z;
              float _2581 = _2573.z;
              float _2585 = _2575.z;
              float _2589 = _2577.z;
              int _2593 = (((int(_2578 > 0.0f) | ((_2581 > 0.0f) ? 2 : 0)) | ((_2585 > 0.0f) ? 4 : 0)) | ((_2589 > 0.0f) ? 8 : 0));
              float3 _2830;
              float3 _2831;
              float3 _2832;
              float3 _2833;
              float3 _2834;
              int _2835;
              if (_2593 == 0) {
                _2830 = _2577;
                _2831 = _2575;
                _2832 = _2573;
                _2833 = _2571;
                _2834 = 0.0f.xxx;
                _2835 = 0;
              } else {
                float3 _2824;
                float3 _2825;
                float3 _2826;
                float3 _2827;
                float3 _2828;
                int _2829;
                if (_2593 == 1) {
                  _2824 = _2577;
                  _2825 = (_2571 * (-_2589)) + (_2577 * _2578);
                  _2826 = (_2571 * (-_2581)) + (_2573 * _2578);
                  _2827 = _2571;
                  _2828 = 0.0f.xxx;
                  _2829 = 3;
                } else {
                  float3 _2810;
                  float3 _2811;
                  float3 _2812;
                  float3 _2813;
                  float3 _2814;
                  int _2815;
                  if (_2593 == 2) {
                    _2810 = _2577;
                    _2811 = (_2573 * (-_2585)) + (_2575 * _2581);
                    _2812 = _2573;
                    _2813 = (_2573 * (-_2578)) + (_2571 * _2581);
                    _2814 = 0.0f.xxx;
                    _2815 = 3;
                  } else {
                    float3 _2796;
                    float3 _2797;
                    float3 _2798;
                    float3 _2799;
                    float3 _2800;
                    int _2801;
                    if (_2593 == 3) {
                      _2796 = (_2571 * (-_2589)) + (_2577 * _2578);
                      _2797 = (_2573 * (-_2585)) + (_2575 * _2581);
                      _2798 = _2573;
                      _2799 = _2571;
                      _2800 = 0.0f.xxx;
                      _2801 = 4;
                    } else {
                      float3 _2782;
                      float3 _2783;
                      float3 _2784;
                      float3 _2785;
                      float3 _2786;
                      int _2787;
                      if (_2593 == 4) {
                        _2782 = _2577;
                        _2783 = _2575;
                        _2784 = (_2575 * (-_2581)) + (_2573 * _2585);
                        _2785 = (_2575 * (-_2589)) + (_2577 * _2585);
                        _2786 = 0.0f.xxx;
                        _2787 = 3;
                      } else {
                        float3 _2768;
                        float3 _2769;
                        float3 _2770;
                        float3 _2771;
                        float3 _2772;
                        int _2773;
                        if (_2593 == 5) {
                          _2768 = _2577;
                          _2769 = _2575;
                          _2770 = _2573;
                          _2771 = _2571;
                          _2772 = 0.0f.xxx;
                          _2773 = 0;
                        } else {
                          float3 _2762;
                          float3 _2763;
                          float3 _2764;
                          float3 _2765;
                          float3 _2766;
                          int _2767;
                          if (_2593 == 6) {
                            _2762 = (_2575 * (-_2589)) + (_2577 * _2585);
                            _2763 = _2575;
                            _2764 = _2573;
                            _2765 = (_2573 * (-_2578)) + (_2571 * _2581);
                            _2766 = 0.0f.xxx;
                            _2767 = 4;
                          } else {
                            float3 _2748;
                            float3 _2749;
                            float3 _2750;
                            float3 _2751;
                            float3 _2752;
                            int _2753;
                            if (_2593 == 7) {
                              float _2741 = -_2589;
                              _2748 = (_2575 * _2741) + (_2577 * _2585);
                              _2749 = _2575;
                              _2750 = _2573;
                              _2751 = _2571;
                              _2752 = (_2571 * _2741) + (_2577 * _2578);
                              _2753 = 5;
                            } else {
                              float3 _2735;
                              float3 _2736;
                              float3 _2737;
                              float3 _2738;
                              float3 _2739;
                              int _2740;
                              if (_2593 == 8) {
                                _2735 = _2577;
                                _2736 = _2577;
                                _2737 = (_2577 * (-_2585)) + (_2575 * _2589);
                                _2738 = (_2577 * (-_2578)) + (_2571 * _2589);
                                _2739 = 0.0f.xxx;
                                _2740 = 3;
                              } else {
                                float3 _2721;
                                float3 _2722;
                                float3 _2723;
                                float3 _2724;
                                float3 _2725;
                                int _2726;
                                if (_2593 == 9) {
                                  _2721 = _2577;
                                  _2722 = (_2577 * (-_2585)) + (_2575 * _2589);
                                  _2723 = (_2571 * (-_2581)) + (_2573 * _2578);
                                  _2724 = _2571;
                                  _2725 = 0.0f.xxx;
                                  _2726 = 4;
                                } else {
                                  float3 _2707;
                                  float3 _2708;
                                  float3 _2709;
                                  float3 _2710;
                                  float3 _2711;
                                  int _2712;
                                  if (_2593 == 10) {
                                    _2707 = _2577;
                                    _2708 = _2575;
                                    _2709 = _2573;
                                    _2710 = _2571;
                                    _2711 = 0.0f.xxx;
                                    _2712 = 0;
                                  } else {
                                    float3 _2701;
                                    float3 _2702;
                                    float3 _2703;
                                    float3 _2704;
                                    float3 _2705;
                                    int _2706;
                                    if (_2593 == 11) {
                                      float _2694 = -_2585;
                                      _2701 = (_2577 * _2694) + (_2575 * _2589);
                                      _2702 = (_2573 * _2694) + (_2575 * _2581);
                                      _2703 = _2573;
                                      _2704 = _2571;
                                      _2705 = _2577;
                                      _2706 = 5;
                                    } else {
                                      float3 _2688;
                                      float3 _2689;
                                      float3 _2690;
                                      float3 _2691;
                                      float3 _2692;
                                      int _2693;
                                      if (_2593 == 12) {
                                        _2688 = _2577;
                                        _2689 = _2575;
                                        _2690 = (_2575 * (-_2581)) + (_2573 * _2585);
                                        _2691 = (_2577 * (-_2578)) + (_2571 * _2589);
                                        _2692 = 0.0f.xxx;
                                        _2693 = 4;
                                      } else {
                                        bool _2646 = _2593 == 13;
                                        float3 _2673;
                                        float3 _2674;
                                        float3 _2675;
                                        float3 _2676;
                                        int _2677;
                                        if (_2646) {
                                          float _2666 = -_2581;
                                          _2673 = (_2575 * _2666) + (_2573 * _2585);
                                          _2674 = (_2571 * _2666) + (_2573 * _2578);
                                          _2675 = _2571;
                                          _2676 = _2577;
                                          _2677 = 5;
                                        } else {
                                          float3 _2663;
                                          float3 _2664;
                                          int _2665;
                                          if (_2593 == 14) {
                                            float _2656 = -_2578;
                                            _2663 = (_2573 * _2656) + (_2571 * _2581);
                                            _2664 = (_2577 * _2656) + (_2571 * _2589);
                                            _2665 = 5;
                                          } else {
                                            _2663 = _2571;
                                            _2664 = 0.0f.xxx;
                                            _2665 = (_2593 == 15) ? 4 : 0;
                                          }
                                          _2673 = _2575;
                                          _2674 = _2573;
                                          _2675 = _2663;
                                          _2676 = _2664;
                                          _2677 = _2665;
                                        }
                                        bool3 _2678 = _2646.xxx;
                                        _2688 = float3(_2678.x ? _2575.x : _2577.x, _2678.y ? _2575.y : _2577.y, _2678.z ? _2575.z : _2577.z);
                                        _2689 = _2673;
                                        _2690 = _2674;
                                        _2691 = _2675;
                                        _2692 = _2676;
                                        _2693 = _2677;
                                      }
                                      _2701 = _2688;
                                      _2702 = _2689;
                                      _2703 = _2690;
                                      _2704 = _2691;
                                      _2705 = _2692;
                                      _2706 = _2693;
                                    }
                                    _2707 = _2701;
                                    _2708 = _2702;
                                    _2709 = _2703;
                                    _2710 = _2704;
                                    _2711 = _2705;
                                    _2712 = _2706;
                                  }
                                  _2721 = _2707;
                                  _2722 = _2708;
                                  _2723 = _2709;
                                  _2724 = _2710;
                                  _2725 = _2711;
                                  _2726 = _2712;
                                }
                                _2735 = _2721;
                                _2736 = _2722;
                                _2737 = _2723;
                                _2738 = _2724;
                                _2739 = _2725;
                                _2740 = _2726;
                              }
                              _2748 = _2735;
                              _2749 = _2736;
                              _2750 = _2737;
                              _2751 = _2738;
                              _2752 = _2739;
                              _2753 = _2740;
                            }
                            _2762 = _2748;
                            _2763 = _2749;
                            _2764 = _2750;
                            _2765 = _2751;
                            _2766 = _2752;
                            _2767 = _2753;
                          }
                          _2768 = _2762;
                          _2769 = _2763;
                          _2770 = _2764;
                          _2771 = _2765;
                          _2772 = _2766;
                          _2773 = _2767;
                        }
                        _2782 = _2768;
                        _2783 = _2769;
                        _2784 = _2770;
                        _2785 = _2771;
                        _2786 = _2772;
                        _2787 = _2773;
                      }
                      _2796 = _2782;
                      _2797 = _2783;
                      _2798 = _2784;
                      _2799 = _2785;
                      _2800 = _2786;
                      _2801 = _2787;
                    }
                    _2810 = _2796;
                    _2811 = _2797;
                    _2812 = _2798;
                    _2813 = _2799;
                    _2814 = _2800;
                    _2815 = _2801;
                  }
                  _2824 = _2810;
                  _2825 = _2811;
                  _2826 = _2812;
                  _2827 = _2813;
                  _2828 = _2814;
                  _2829 = _2815;
                }
                _2830 = _2824;
                _2831 = _2825;
                _2832 = _2826;
                _2833 = _2827;
                _2834 = _2828;
                _2835 = _2829;
              }
              bool3 _2837 = (_2835 == 3).xxx;
              bool3 _2840 = (_2835 == 4).xxx;
              if (_2835 == 0) {
                _2924 = 0.0f;
                break;
              }
              float3 _2845 = normalize(_2833);
              float3 _2846 = normalize(_2832);
              float3 _2847 = normalize(_2831);
              float3 _2848 = normalize(float3(_2837.x ? _2833.x : _2830.x, _2837.y ? _2833.y : _2830.y, _2837.z ? _2833.z : _2830.z));
              float3 _2849 = normalize(float3(_2840.x ? _2833.x : _2834.x, _2840.y ? _2833.y : _2834.y, _2840.z ? _2833.z : _2834.z));
              float _2851 = clamp(dot(_2845, _2846), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2855 = sqrt(1.0f - (_2851 * _2851));
              float _2863 = clamp(dot(_2846, _2847), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2867 = sqrt(1.0f - (_2863 * _2863));
              float _2876 = clamp(dot(_2847, _2848), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2880 = sqrt(1.0f - (_2876 * _2876));
              float _2887 = ((cross(_2845, _2846).z * ((_2855 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2851) / _2855))) + (cross(_2846, _2847).z * ((_2867 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2863) / _2867)))) + (cross(_2847, _2848).z * ((_2880 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2876) / _2880)));
              float _2904;
              if (_2835 >= 4) {
                float _2892 = clamp(dot(_2848, _2849), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2896 = sqrt(1.0f - (_2892 * _2892));
                _2904 = _2887 + (cross(_2848, _2849).z * ((_2896 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2892) / _2896)));
              } else {
                _2904 = _2887;
              }
              float _2921;
              if (_2835 == 5) {
                float _2909 = clamp(dot(_2849, _2845), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2913 = sqrt(1.0f - (_2909 * _2909));
                _2921 = _2904 + (cross(_2849, _2845).z * ((_2913 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2909) / _2913)));
              } else {
                _2921 = _2904;
              }
              _2924 = max(_2921, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3312;
            do {
              float3 _2958;
              if (_2542) {
                _2958 = _2540 * rsqrt(_2541);
              } else {
                float _2939 = _781.z;
                float _2941 = (_2939 >= 0.0f) ? 1.0f : (-1.0f);
                float _2943 = (-1.0f) / (_2941 + _2939);
                float _2945 = _781.x;
                _2958 = float3(1.0f + (((_2941 * _2943) * _2945) * _2945), ((_2941 * _2945) * _781.y) * _2943, (-_2941) * _2945);
              }
              float3x3 _2961 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2958, cross(_781, _2958), _781));
              float3 _2962 = mul(_2961, _2570);
              float3 _2963 = mul(_2961, _2572);
              float3 _2964 = mul(_2961, _2574);
              float3 _2965 = mul(_2961, _2576);
              float _2966 = _2962.z;
              float _2969 = _2963.z;
              float _2973 = _2964.z;
              float _2977 = _2965.z;
              int _2981 = (((int(_2966 > 0.0f) | ((_2969 > 0.0f) ? 2 : 0)) | ((_2973 > 0.0f) ? 4 : 0)) | ((_2977 > 0.0f) ? 8 : 0));
              float3 _3218;
              float3 _3219;
              float3 _3220;
              float3 _3221;
              float3 _3222;
              int _3223;
              if (_2981 == 0) {
                _3218 = _2965;
                _3219 = _2964;
                _3220 = _2963;
                _3221 = _2962;
                _3222 = 0.0f.xxx;
                _3223 = 0;
              } else {
                float3 _3212;
                float3 _3213;
                float3 _3214;
                float3 _3215;
                float3 _3216;
                int _3217;
                if (_2981 == 1) {
                  _3212 = _2965;
                  _3213 = (_2962 * (-_2977)) + (_2965 * _2966);
                  _3214 = (_2962 * (-_2969)) + (_2963 * _2966);
                  _3215 = _2962;
                  _3216 = 0.0f.xxx;
                  _3217 = 3;
                } else {
                  float3 _3198;
                  float3 _3199;
                  float3 _3200;
                  float3 _3201;
                  float3 _3202;
                  int _3203;
                  if (_2981 == 2) {
                    _3198 = _2965;
                    _3199 = (_2963 * (-_2973)) + (_2964 * _2969);
                    _3200 = _2963;
                    _3201 = (_2963 * (-_2966)) + (_2962 * _2969);
                    _3202 = 0.0f.xxx;
                    _3203 = 3;
                  } else {
                    float3 _3184;
                    float3 _3185;
                    float3 _3186;
                    float3 _3187;
                    float3 _3188;
                    int _3189;
                    if (_2981 == 3) {
                      _3184 = (_2962 * (-_2977)) + (_2965 * _2966);
                      _3185 = (_2963 * (-_2973)) + (_2964 * _2969);
                      _3186 = _2963;
                      _3187 = _2962;
                      _3188 = 0.0f.xxx;
                      _3189 = 4;
                    } else {
                      float3 _3170;
                      float3 _3171;
                      float3 _3172;
                      float3 _3173;
                      float3 _3174;
                      int _3175;
                      if (_2981 == 4) {
                        _3170 = _2965;
                        _3171 = _2964;
                        _3172 = (_2964 * (-_2969)) + (_2963 * _2973);
                        _3173 = (_2964 * (-_2977)) + (_2965 * _2973);
                        _3174 = 0.0f.xxx;
                        _3175 = 3;
                      } else {
                        float3 _3156;
                        float3 _3157;
                        float3 _3158;
                        float3 _3159;
                        float3 _3160;
                        int _3161;
                        if (_2981 == 5) {
                          _3156 = _2965;
                          _3157 = _2964;
                          _3158 = _2963;
                          _3159 = _2962;
                          _3160 = 0.0f.xxx;
                          _3161 = 0;
                        } else {
                          float3 _3150;
                          float3 _3151;
                          float3 _3152;
                          float3 _3153;
                          float3 _3154;
                          int _3155;
                          if (_2981 == 6) {
                            _3150 = (_2964 * (-_2977)) + (_2965 * _2973);
                            _3151 = _2964;
                            _3152 = _2963;
                            _3153 = (_2963 * (-_2966)) + (_2962 * _2969);
                            _3154 = 0.0f.xxx;
                            _3155 = 4;
                          } else {
                            float3 _3136;
                            float3 _3137;
                            float3 _3138;
                            float3 _3139;
                            float3 _3140;
                            int _3141;
                            if (_2981 == 7) {
                              float _3129 = -_2977;
                              _3136 = (_2964 * _3129) + (_2965 * _2973);
                              _3137 = _2964;
                              _3138 = _2963;
                              _3139 = _2962;
                              _3140 = (_2962 * _3129) + (_2965 * _2966);
                              _3141 = 5;
                            } else {
                              float3 _3123;
                              float3 _3124;
                              float3 _3125;
                              float3 _3126;
                              float3 _3127;
                              int _3128;
                              if (_2981 == 8) {
                                _3123 = _2965;
                                _3124 = _2965;
                                _3125 = (_2965 * (-_2973)) + (_2964 * _2977);
                                _3126 = (_2965 * (-_2966)) + (_2962 * _2977);
                                _3127 = 0.0f.xxx;
                                _3128 = 3;
                              } else {
                                float3 _3109;
                                float3 _3110;
                                float3 _3111;
                                float3 _3112;
                                float3 _3113;
                                int _3114;
                                if (_2981 == 9) {
                                  _3109 = _2965;
                                  _3110 = (_2965 * (-_2973)) + (_2964 * _2977);
                                  _3111 = (_2962 * (-_2969)) + (_2963 * _2966);
                                  _3112 = _2962;
                                  _3113 = 0.0f.xxx;
                                  _3114 = 4;
                                } else {
                                  float3 _3095;
                                  float3 _3096;
                                  float3 _3097;
                                  float3 _3098;
                                  float3 _3099;
                                  int _3100;
                                  if (_2981 == 10) {
                                    _3095 = _2965;
                                    _3096 = _2964;
                                    _3097 = _2963;
                                    _3098 = _2962;
                                    _3099 = 0.0f.xxx;
                                    _3100 = 0;
                                  } else {
                                    float3 _3089;
                                    float3 _3090;
                                    float3 _3091;
                                    float3 _3092;
                                    float3 _3093;
                                    int _3094;
                                    if (_2981 == 11) {
                                      float _3082 = -_2973;
                                      _3089 = (_2965 * _3082) + (_2964 * _2977);
                                      _3090 = (_2963 * _3082) + (_2964 * _2969);
                                      _3091 = _2963;
                                      _3092 = _2962;
                                      _3093 = _2965;
                                      _3094 = 5;
                                    } else {
                                      float3 _3076;
                                      float3 _3077;
                                      float3 _3078;
                                      float3 _3079;
                                      float3 _3080;
                                      int _3081;
                                      if (_2981 == 12) {
                                        _3076 = _2965;
                                        _3077 = _2964;
                                        _3078 = (_2964 * (-_2969)) + (_2963 * _2973);
                                        _3079 = (_2965 * (-_2966)) + (_2962 * _2977);
                                        _3080 = 0.0f.xxx;
                                        _3081 = 4;
                                      } else {
                                        bool _3034 = _2981 == 13;
                                        float3 _3061;
                                        float3 _3062;
                                        float3 _3063;
                                        float3 _3064;
                                        int _3065;
                                        if (_3034) {
                                          float _3054 = -_2969;
                                          _3061 = (_2964 * _3054) + (_2963 * _2973);
                                          _3062 = (_2962 * _3054) + (_2963 * _2966);
                                          _3063 = _2962;
                                          _3064 = _2965;
                                          _3065 = 5;
                                        } else {
                                          float3 _3051;
                                          float3 _3052;
                                          int _3053;
                                          if (_2981 == 14) {
                                            float _3044 = -_2966;
                                            _3051 = (_2963 * _3044) + (_2962 * _2969);
                                            _3052 = (_2965 * _3044) + (_2962 * _2977);
                                            _3053 = 5;
                                          } else {
                                            _3051 = _2962;
                                            _3052 = 0.0f.xxx;
                                            _3053 = (_2981 == 15) ? 4 : 0;
                                          }
                                          _3061 = _2964;
                                          _3062 = _2963;
                                          _3063 = _3051;
                                          _3064 = _3052;
                                          _3065 = _3053;
                                        }
                                        bool3 _3066 = _3034.xxx;
                                        _3076 = float3(_3066.x ? _2964.x : _2965.x, _3066.y ? _2964.y : _2965.y, _3066.z ? _2964.z : _2965.z);
                                        _3077 = _3061;
                                        _3078 = _3062;
                                        _3079 = _3063;
                                        _3080 = _3064;
                                        _3081 = _3065;
                                      }
                                      _3089 = _3076;
                                      _3090 = _3077;
                                      _3091 = _3078;
                                      _3092 = _3079;
                                      _3093 = _3080;
                                      _3094 = _3081;
                                    }
                                    _3095 = _3089;
                                    _3096 = _3090;
                                    _3097 = _3091;
                                    _3098 = _3092;
                                    _3099 = _3093;
                                    _3100 = _3094;
                                  }
                                  _3109 = _3095;
                                  _3110 = _3096;
                                  _3111 = _3097;
                                  _3112 = _3098;
                                  _3113 = _3099;
                                  _3114 = _3100;
                                }
                                _3123 = _3109;
                                _3124 = _3110;
                                _3125 = _3111;
                                _3126 = _3112;
                                _3127 = _3113;
                                _3128 = _3114;
                              }
                              _3136 = _3123;
                              _3137 = _3124;
                              _3138 = _3125;
                              _3139 = _3126;
                              _3140 = _3127;
                              _3141 = _3128;
                            }
                            _3150 = _3136;
                            _3151 = _3137;
                            _3152 = _3138;
                            _3153 = _3139;
                            _3154 = _3140;
                            _3155 = _3141;
                          }
                          _3156 = _3150;
                          _3157 = _3151;
                          _3158 = _3152;
                          _3159 = _3153;
                          _3160 = _3154;
                          _3161 = _3155;
                        }
                        _3170 = _3156;
                        _3171 = _3157;
                        _3172 = _3158;
                        _3173 = _3159;
                        _3174 = _3160;
                        _3175 = _3161;
                      }
                      _3184 = _3170;
                      _3185 = _3171;
                      _3186 = _3172;
                      _3187 = _3173;
                      _3188 = _3174;
                      _3189 = _3175;
                    }
                    _3198 = _3184;
                    _3199 = _3185;
                    _3200 = _3186;
                    _3201 = _3187;
                    _3202 = _3188;
                    _3203 = _3189;
                  }
                  _3212 = _3198;
                  _3213 = _3199;
                  _3214 = _3200;
                  _3215 = _3201;
                  _3216 = _3202;
                  _3217 = _3203;
                }
                _3218 = _3212;
                _3219 = _3213;
                _3220 = _3214;
                _3221 = _3215;
                _3222 = _3216;
                _3223 = _3217;
              }
              bool3 _3225 = (_3223 == 3).xxx;
              bool3 _3228 = (_3223 == 4).xxx;
              if (_3223 == 0) {
                _3312 = 0.0f;
                break;
              }
              float3 _3233 = normalize(_3221);
              float3 _3234 = normalize(_3220);
              float3 _3235 = normalize(_3219);
              float3 _3236 = normalize(float3(_3225.x ? _3221.x : _3218.x, _3225.y ? _3221.y : _3218.y, _3225.z ? _3221.z : _3218.z));
              float3 _3237 = normalize(float3(_3228.x ? _3221.x : _3222.x, _3228.y ? _3221.y : _3222.y, _3228.z ? _3221.z : _3222.z));
              float _3239 = clamp(dot(_3233, _3234), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3243 = sqrt(1.0f - (_3239 * _3239));
              float _3251 = clamp(dot(_3234, _3235), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3255 = sqrt(1.0f - (_3251 * _3251));
              float _3264 = clamp(dot(_3235, _3236), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3268 = sqrt(1.0f - (_3264 * _3264));
              float _3275 = ((cross(_3233, _3234).z * ((_3243 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3239) / _3243))) + (cross(_3234, _3235).z * ((_3255 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3251) / _3255)))) + (cross(_3235, _3236).z * ((_3268 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3264) / _3268)));
              float _3292;
              if (_3223 >= 4) {
                float _3280 = clamp(dot(_3236, _3237), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3284 = sqrt(1.0f - (_3280 * _3280));
                _3292 = _3275 + (cross(_3236, _3237).z * ((_3284 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3280) / _3284)));
              } else {
                _3292 = _3275;
              }
              float _3309;
              if (_3223 == 5) {
                float _3297 = clamp(dot(_3237, _3233), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3301 = sqrt(1.0f - (_3297 * _3297));
                _3309 = _3292 + (cross(_3237, _3233).z * ((_3301 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3297) / _3301)));
              } else {
                _3309 = _3292;
              }
              _3312 = max(_3309, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3315 = (_2389 & 2u) != 0u;
            uint _3319 = asuint(_49_m6[_2376].w);
            uint _3320 = asuint(_49_m6[_2382].w);
            float3 _3321 = _443 - _49_m6[_2367].xyz;
            float3 _3322 = abs(_3321);
            float _3323 = _3322.x;
            float _3324 = _3322.y;
            float _3326 = _3322.z;
            int _3359;
            if ((_3323 > _3324) && (_3323 > _3326)) {
              _3359 = int((_3321.x > 0.0f) ? (_3319 & 1023u) : ((_3319 >> 10u) & 1023u));
            } else {
              int _3351;
              if (_3324 > _3326) {
                _3351 = int((_3321.y > 0.0f) ? ((_3319 >> 20u) & 1023u) : (_3320 & 1023u));
              } else {
                _3351 = int((_3321.z > 0.0f) ? ((_3320 >> 10u) & 1023u) : ((_3320 >> 20u) & 1023u));
              }
              _3359 = _3351;
            }
            int _3362 = _3315 ? int(_49_m6[_2376].w) : ((_3359 == 1023) ? (-1) : _3359);
            uint _3373 = asuint(_53_m11.x) + (uint(_3362) * 96u);
            uint _3375 = (_3373 + 64u) >> 2u;
            uint _3378 = _3375 + 1u;
            uint _3381 = _3375 + 2u;
            uint _3384 = _3375 + 3u;
            float4 _3388 = asfloat(uint4(_56.Load(_3375 * 4 + 0), _56.Load(_3378 * 4 + 0), _56.Load(_3381 * 4 + 0), _56.Load(_3384 * 4 + 0)));
            uint _3396 = _3373 >> 2u;
            uint _3411 = (_3373 + 16u) >> 2u;
            uint _3426 = (_3373 + 32u) >> 2u;
            uint _3441 = (_3373 + 48u) >> 2u;
            float4 _3461 = mul(transpose(float4x4(asfloat(uint4(_56.Load(_3396 * 4 + 0), _56.Load((_3396 + 1u) * 4 + 0), _56.Load((_3396 + 2u) * 4 + 0), _56.Load((_3396 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_3411 * 4 + 0), _56.Load((_3411 + 1u) * 4 + 0), _56.Load((_3411 + 2u) * 4 + 0), _56.Load((_3411 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_3426 * 4 + 0), _56.Load((_3426 + 1u) * 4 + 0), _56.Load((_3426 + 2u) * 4 + 0), _56.Load((_3426 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_3441 * 4 + 0), _56.Load((_3441 + 1u) * 4 + 0), _56.Load((_3441 + 2u) * 4 + 0), _56.Load((_3441 + 3u) * 4 + 0))))), float4((_443 - ((_3321 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3321, _3321)))) * _3388.x)) + (_781 * (_3388.y * 5.0f)), 1.0f));
            float3 _3465 = _3461.xyz / _3461.w.xxx;
            uint _3467 = (_3373 + 80u) >> 2u;
            float4 _3480 = asfloat(uint4(_56.Load(_3467 * 4 + 0), _56.Load((_3467 + 1u) * 4 + 0), _56.Load((_3467 + 2u) * 4 + 0), _56.Load((_3467 + 3u) * 4 + 0)));
            float2 _3481 = _3465.xy;
            float2 _3483 = _3480.xy;
            float3 _3487 = _3465.xyz;
            bool3 _3488 = bool3(_3487.x <= 0.0f.xxx.x, _3487.y <= 0.0f.xxx.y, _3487.z <= 0.0f.xxx.z);
            bool3 _3489 = bool3(_3487.x >= 1.0f.xxx.x, _3487.y >= 1.0f.xxx.y, _3487.z >= 1.0f.xxx.z);
            float _3492 = _3465.z;
            float2 _3503 = ((_3481 * (_3480.zw - _3483)) + _3483).xy * _53_m10.zw;
            float2 _3505 = floor(_3503 + 0.5f.xx);
            float2 _3506 = _3503 - _3505;
            float _3507 = _3506.x;
            float _3508 = _3507 + 0.5f;
            float _3509 = _3508 * _3508;
            float _3512 = 1.0f - _3507;
            float _3513 = min(_3507, 0.0f);
            float _3516 = _3507 + 1.0f;
            float _3517 = max(_3507, 0.0f);
            float _3528 = _3506.y;
            float _3529 = _3528 + 0.5f;
            float _3530 = _3529 * _3529;
            float _3533 = 1.0f - _3528;
            float _3534 = min(_3528, 0.0f);
            float _3537 = _3528 + 1.0f;
            float _3538 = max(_3528, 0.0f);
            float3 _3550 = float3(0.1599999964237213134765625f * _3512, 0.1599999964237213134765625f * ((_3516 - (_3517 * _3517)) + 1.0f), _3509 * 0.07999999821186065673828125f);
            float3 _3551 = float3(0.1599999964237213134765625f * ((_3509 * 0.5f) - _3507), 0.1599999964237213134765625f * ((_3512 - (_3513 * _3513)) + 1.0f), 0.1599999964237213134765625f * _3516) + _3550;
            float3 _3553 = float3(0.1599999964237213134765625f * _3533, 0.1599999964237213134765625f * ((_3537 - (_3538 * _3538)) + 1.0f), _3530 * 0.07999999821186065673828125f);
            float3 _3554 = float3(0.1599999964237213134765625f * ((_3530 * 0.5f) - _3528), 0.1599999964237213134765625f * ((_3533 - (_3534 * _3534)) + 1.0f), 0.1599999964237213134765625f * _3537) + _3553;
            float3 _3560 = ((_3550 / _3551) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.xxx;
            float3 _3562 = ((_3553 / _3554) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.yyy;
            float2 _3564 = _3505 * _53_m10.xy;
            float _3565 = _3560.x;
            float _3566 = _3562.x;
            float _3569 = _3560.y;
            float _3572 = _3560.z;
            float _3575 = _3562.y;
            float _3582 = _3562.z;
            float _3589 = _3551.x;
            float _3590 = _3554.x;
            float _3592 = _3551.y;
            float _3594 = _3551.z;
            float _3596 = _3554.y;
            float _3600 = _3554.z;
            float _3658 = (((((((_3589 * _3590) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3565, _3566), _400).xy, _3492)) + ((_3592 * _3590) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3569, _3566), _400).xy, _3492))) + ((_3594 * _3590) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3572, _3566), _400).xy, _3492))) + ((_3589 * _3596) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3565, _3575), _400).xy, _3492))) + ((_3592 * _3596) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3569, _3575), _400).xy, _3492))) + ((_3594 * _3596) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3572, _3575), _400).xy, _3492))) + ((_3589 * _3600) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3565, _3582), _400).xy, _3492));
            float4 _3681 = asfloat(uint4(_56.Load(_3375 * 4 + 0), _56.Load(_3378 * 4 + 0), _56.Load(_3381 * 4 + 0), _56.Load(_3384 * 4 + 0)));
            float _3682 = _3681.w;
            float2 _3684 = min(_3481, 1.0f.xx - _3481);
            _3701 = ((_49_m6[_2364].xyz * (((((_944 * _2529.x) + ((1.0f.xxx - _944) * _2529.y)) * _2924) * _49_m6[_2385].z) + (_844 * _3312))) * _2501) * ((_3362 >= 0) ? lerp(1.0f, (any(bool3(_3488.x || _3489.x, _3488.y || _3489.y, _3488.z || _3489.z)) || ((asuint(_3492) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3658 + ((_3592 * _3600) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3569, _3582), _400).xy, _3492))) + ((_3594 * _3600) * _55.SampleCmpLevelZero(_25, float3(_3564 + float2(_3572, _3582), _400).xy, _3492))), _3315 ? min(_3682, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3681.z - _3461.w) * 0.25f, min(_3684.x, _3684.y)))) : _3682) : 1.0f);
            break;
          } while (false);
          _5024 = _2324;
          _5025 = _3701 * _2464;
          break;
        }
        float _5022;
        float3 _5023;
        if (_49_m6[_2364].w < 1.5f) {
          float3 _4281 = float3(0.100000001490116119384765625f, _38_m114, 1.0f);
          float _4290 = (0.5f + (0.5f * _49_m6[_2370].y)) - abs(_49_m6[_2370].x);
          float _4291 = _49_m6[_2370].y - _4290;
          float _4298 = abs(max((1.0f - abs(_4290)) - abs(_4291), 0.00048828125f));
          float3 _4302 = normalize(float3(_4290, _4291, (_49_m6[_2370].x >= 0.0f) ? _4298 : (-_4298)));
          float3 _4303 = _49_m6[_2367].xyz - _443;
          float _4304 = dot(_4303, _4303);
          float _4305 = rsqrt(_4304);
          float3 _4306 = _4303 * _4305;
          float _4310 = clamp(_49_m6[_2385].y * _4305, 0.0f, 1.0f);
          int _4315 = int(_49_m6[_2385].w);
          float3 _4316 = _4302 * _49_m6[_2370].z;
          float3 _4317 = _4316 * 0.5f;
          float3 _4318 = _4303 - _4317;
          float3 _4319 = _4303 + _4317;
          bool _4321 = (_2468 & 1u) == 0u;
          bool _4324 = _4321 || ((_2389 & 2u) != 0u);
          bool _4327 = (!_4321) && (_49_m6[_2370].z > 0.0f);
          float _4346;
          float _4347;
          if (_4327) {
            float _4331 = length(_4318);
            float _4332 = length(_4319);
            _4346 = clamp(0.5f * ((dot(_781, _4318) / _4331) + (dot(_781, _4319) / _4332)), 0.0f, 1.0f);
            _4347 = 1.0f / ((((_4331 * _4332) + dot(_4318, _4319)) * 0.5f) + 1.0f);
          } else {
            _4346 = clamp(dot(_781, _4306), 0.0f, 1.0f);
            _4347 = 1.0f;
          }
          float _4369;
          if (_49_m6[_2382].w < 0.0f) {
            float _4363 = _4304 * (_49_m6[_2367].w * _49_m6[_2367].w);
            float _4366 = clamp(1.0f - (_4363 * _4363), 0.0f, 1.0f);
            _4369 = lerp(1.0f / (_4304 + 1.0f), _4347, float(_4327)) * (_4366 * _4366);
          } else {
            float3 _4352 = _4303 * _49_m6[_2367].w;
            _4369 = _4347 * pow(1.0f - clamp(dot(_4352, _4352), 0.0f, 1.0f), _49_m6[_2382].w);
          }
          float _4375 = clamp((dot(_4306, -_4302) - _49_m6[_2370].z) * _49_m6[_2370].w, 0.0f, 1.0f);
          float _4379 = _4369 * lerp(1.0f, _4375 * _4375, float(_4321));
          float _4479;
          if ((!_4327) && (_4315 >= 0)) {
            uint _4385 = uint(_4315);
            float2 _4472;
            [branch] if (_4321) {
              float4 _4462 = mul(_64_m1[_4385], _447);
              _4472 = _64_m0[_4385].xy + (clamp(_4462.xy / _4462.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_4385].zw);
            }
            else {
              float3 _4399 = mul(float4(-_4303, 0.0f), _64_m1[_4385]).xyz;
              float3 _408 = _4399;
              float3 _407 = _4399;
              float3 _406 = abs(_4399);
              uint _4408 = uint(int(_406.y > _406.x));
              uint _4414 = (_406.z > _406[_4408]) ? 2u : _4408;
              uint _4420 = (_4414 * 2u) + uint(_407[_4414] < 0.0f);
              float _4424 = abs(_408[_4420 / 2u]);
              float _4444 = 0.5f - (0.000244140625f / _64_m0[_4385].w);
              _4472 = _64_m0[_4385].xy + (clamp(float2((float(_4420) + ((((_408[uint(_378[_4420].x)] * _379[_4420].x) / _4424) * _4444) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_408[uint(_378[_4420].y)] * _379[_4420].y) / _4424) * _4444)), 0.0f.xx, 1.0f.xx) * _64_m0[_4385].zw);
            }
            _4479 = _4379 * _62.SampleLevel(_23, _4472, 0.0f).x;
          } else {
            _4479 = _4379;
          }
          bool _4480 = _4479 > 0.0f;
          float _4864;
          if (_4480) {
            int _4533;
            if (_4324) {
              _4533 = int(_49_m6[_2373].x);
            } else {
              uint _4488 = asuint(_49_m6[_2370].w);
              uint _4489 = asuint(_49_m6[_2373].x);
              float3 _4490 = _443 - _49_m6[_2367].xyz;
              float3 _4491 = abs(_4490);
              float _4492 = _4491.x;
              float _4493 = _4491.y;
              float _4495 = _4491.z;
              int _4528;
              if ((_4492 > _4493) && (_4492 > _4495)) {
                _4528 = int((_4490.x > 0.0f) ? (_4488 & 1023u) : ((_4488 >> 10u) & 1023u));
              } else {
                int _4520;
                if (_4493 > _4495) {
                  _4520 = int((_4490.y > 0.0f) ? ((_4488 >> 20u) & 1023u) : (_4489 & 1023u));
                } else {
                  _4520 = int((_4490.z > 0.0f) ? ((_4489 >> 10u) & 1023u) : ((_4489 >> 20u) & 1023u));
                }
                _4528 = _4520;
              }
              _4533 = (_4528 == 1023) ? (-1) : _4528;
            }
            uint _4540 = asuint(_53_m11.x) + (uint(_4533) * 96u);
            uint _4542 = (_4540 + 64u) >> 2u;
            uint _4545 = _4542 + 1u;
            uint _4548 = _4542 + 2u;
            uint _4551 = _4542 + 3u;
            float4 _4555 = asfloat(uint4(_56.Load(_4542 * 4 + 0), _56.Load(_4545 * 4 + 0), _56.Load(_4548 * 4 + 0), _56.Load(_4551 * 4 + 0)));
            uint _4563 = _4540 >> 2u;
            uint _4578 = (_4540 + 16u) >> 2u;
            uint _4593 = (_4540 + 32u) >> 2u;
            uint _4608 = (_4540 + 48u) >> 2u;
            float4 _4628 = mul(transpose(float4x4(asfloat(uint4(_56.Load(_4563 * 4 + 0), _56.Load((_4563 + 1u) * 4 + 0), _56.Load((_4563 + 2u) * 4 + 0), _56.Load((_4563 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_4578 * 4 + 0), _56.Load((_4578 + 1u) * 4 + 0), _56.Load((_4578 + 2u) * 4 + 0), _56.Load((_4578 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_4593 * 4 + 0), _56.Load((_4593 + 1u) * 4 + 0), _56.Load((_4593 + 2u) * 4 + 0), _56.Load((_4593 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_4608 * 4 + 0), _56.Load((_4608 + 1u) * 4 + 0), _56.Load((_4608 + 2u) * 4 + 0), _56.Load((_4608 + 3u) * 4 + 0))))), float4((_443 - ((-_4306) * _4555.x)) + (_781 * (_4555.y * 5.0f)), 1.0f));
            float3 _4632 = _4628.xyz / _4628.w.xxx;
            uint _4634 = (_4540 + 80u) >> 2u;
            float4 _4647 = asfloat(uint4(_56.Load(_4634 * 4 + 0), _56.Load((_4634 + 1u) * 4 + 0), _56.Load((_4634 + 2u) * 4 + 0), _56.Load((_4634 + 3u) * 4 + 0)));
            float2 _4648 = _4632.xy;
            float2 _4650 = _4647.xy;
            float3 _4654 = _4632.xyz;
            bool3 _4655 = bool3(_4654.x <= 0.0f.xxx.x, _4654.y <= 0.0f.xxx.y, _4654.z <= 0.0f.xxx.z);
            bool3 _4656 = bool3(_4654.x >= 1.0f.xxx.x, _4654.y >= 1.0f.xxx.y, _4654.z >= 1.0f.xxx.z);
            float _4659 = _4632.z;
            float2 _4670 = ((_4648 * (_4647.zw - _4650)) + _4650).xy * _53_m10.zw;
            float2 _4672 = floor(_4670 + 0.5f.xx);
            float2 _4673 = _4670 - _4672;
            float _4674 = _4673.x;
            float _4675 = _4674 + 0.5f;
            float _4676 = _4675 * _4675;
            float _4679 = 1.0f - _4674;
            float _4680 = min(_4674, 0.0f);
            float _4683 = _4674 + 1.0f;
            float _4684 = max(_4674, 0.0f);
            float _4695 = _4673.y;
            float _4696 = _4695 + 0.5f;
            float _4697 = _4696 * _4696;
            float _4700 = 1.0f - _4695;
            float _4701 = min(_4695, 0.0f);
            float _4704 = _4695 + 1.0f;
            float _4705 = max(_4695, 0.0f);
            float3 _4717 = float3(0.1599999964237213134765625f * _4679, 0.1599999964237213134765625f * ((_4683 - (_4684 * _4684)) + 1.0f), _4676 * 0.07999999821186065673828125f);
            float3 _4718 = float3(0.1599999964237213134765625f * ((_4676 * 0.5f) - _4674), 0.1599999964237213134765625f * ((_4679 - (_4680 * _4680)) + 1.0f), 0.1599999964237213134765625f * _4683) + _4717;
            float3 _4720 = float3(0.1599999964237213134765625f * _4700, 0.1599999964237213134765625f * ((_4704 - (_4705 * _4705)) + 1.0f), _4697 * 0.07999999821186065673828125f);
            float3 _4721 = float3(0.1599999964237213134765625f * ((_4697 * 0.5f) - _4695), 0.1599999964237213134765625f * ((_4700 - (_4701 * _4701)) + 1.0f), 0.1599999964237213134765625f * _4704) + _4720;
            float3 _4727 = ((_4717 / _4718) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.xxx;
            float3 _4729 = ((_4720 / _4721) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.yyy;
            float2 _4731 = _4672 * _53_m10.xy;
            float _4732 = _4727.x;
            float _4733 = _4729.x;
            float _4736 = _4727.y;
            float _4739 = _4727.z;
            float _4742 = _4729.y;
            float _4749 = _4729.z;
            float _4756 = _4718.x;
            float _4757 = _4721.x;
            float _4759 = _4718.y;
            float _4761 = _4718.z;
            float _4763 = _4721.y;
            float _4767 = _4721.z;
            float _4825 = (((((((_4756 * _4757) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4732, _4733), _400).xy, _4659)) + ((_4759 * _4757) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4736, _4733), _400).xy, _4659))) + ((_4761 * _4757) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4739, _4733), _400).xy, _4659))) + ((_4756 * _4763) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4732, _4742), _400).xy, _4659))) + ((_4759 * _4763) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4736, _4742), _400).xy, _4659))) + ((_4761 * _4763) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4739, _4742), _400).xy, _4659))) + ((_4756 * _4767) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4732, _4749), _400).xy, _4659));
            float4 _4848 = asfloat(uint4(_56.Load(_4542 * 4 + 0), _56.Load(_4545 * 4 + 0), _56.Load(_4548 * 4 + 0), _56.Load(_4551 * 4 + 0)));
            float _4849 = _4848.w;
            float2 _4851 = min(_4648, 1.0f.xx - _4648);
            _4864 = (_4533 >= 0) ? lerp(1.0f, (any(bool3(_4655.x || _4656.x, _4655.y || _4656.y, _4655.z || _4656.z)) || ((asuint(_4659) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4825 + ((_4759 * _4767) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4736, _4749), _400).xy, _4659))) + ((_4761 * _4767) * _55.SampleCmpLevelZero(_25, float3(_4731 + float2(_4739, _4749), _400).xy, _4659))), _4324 ? min(_4849, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4848.z - _4628.w) * 0.25f, min(_4851.x, _4851.y)))) : _4849) : 1.0f;
          } else {
            _4864 = 1.0f;
          }
          float3 _4889;
          float3 _4890;
          if (_4327) {
            float3 _4867 = _4281 * _4281;
            float3 _4869 = reflect(-_470, _781);
            float _4878 = dot(_4869, _4316);
            _4889 = _4867 / clamp(_4867 + (0.5f * clamp(_49_m6[_2370].z * _4305, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4890 = normalize(_4318 + (_4316 * clamp(dot(_4318, (_4869 * _4878) - _4316) / ((_49_m6[_2370].z * _49_m6[_2370].z) - (_4878 * _4878)), 0.0f, 1.0f)));
          } else {
            _4889 = 1.0f.xxx;
            _4890 = _4306;
          }
          float3 _4891 = _4890 + _470;
          float3 _4895 = _4891 * rsqrt(max(6.103515625e-05f, dot(_4891, _4891)));
          float3 _5021;
          if (_4480) {
            float _4899 = clamp(_4346, 0.0f, 1.0f);
            float _4901 = clamp(dot(_781, _4895), 0.0f, 1.0f);
            float _4903 = clamp(dot(_470, _4895), 0.0f, 1.0f);
            float _4906 = clamp(dot(_781, _470), 0.0f, 1.0f);
            float _4907 = _38_m114 * _38_m114;
            float _4917;
            if (_4310 > 0.0f) {
              _4917 = clamp(_4907 + ((_4310 * _4310) / ((_4903 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4917 = _4907;
            }
            float _4918 = _4917 * _4917;
            float _4939 = (((_4901 * _4918) - _4901) * _4901) + 1.0f;
            float _4944 = 1.0f - _4903;
            float _4945 = _4944 * _4944;
            float _4947 = (_4944 * _4945) * _4945;
            float _4971 = 1.0f - _38_m114;
            float _4978 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4971 * (1.04997003078460693359375f + (_4971 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4971))))));
            float _4979 = 1.0f - _4978;
            float3 _4982 = _944 + ((1.0f.xxx - _944) * 0.0476190485060214996337890625f);
            float _4993 = clamp(1.0f - _893, 0.0f, 1.0f);
            float _5001 = clamp((dot(_781, _4890) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            float3 _5017 = (clamp((min(((_944 * (1.0f - _4947)) + _4947.xxx) * (((_4918 / (_4939 * _4939)) * _4889.y) * (0.5f / (((_4899 * sqrt(((((-_4906) * _4918) + _4906) * _4906) + _4918)) + (_4906 * sqrt(((((-_4899) * _4918) + _4899) * _4899) + _4918))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4982 * (((_61.SampleLevel(_23, (float2(_4906, _38_m114) * 0.96875f) + 0.015625f.xx, 0.0f).x * _61.SampleLevel(_23, (float2(_4899, _38_m114) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4978) / _4979)) * _4982) / (1.0f.xxx - (_4982 * _4979)))) * _49_m6[_2385].z, 0.0f.xxx, 1000.0f.xxx) * _4346) + (_1406 * lerp(lerp(1.0f, (_5001 * sqrt(_5001)) * 1.66666662693023681640625f, _4993) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_470, _4890), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _4993)));
            _5021 = (_5017 + ((_844 * _4889.z) * _4346)) * (((_49_m6[_2364].xyz * _4479) * _4864) * _2464);
          } else {
            _5021 = 0.0f.xxx;
          }
          _5022 = _2324;
          _5023 = _5021;
        } else {
          float _4279;
          do {
            if (_2471) {
              _4279 = 1.0f;
              break;
            }
            float _3718 = (0.5f + (0.5f * _49_m6[_2370].y)) - abs(_49_m6[_2370].x);
            float _3719 = _49_m6[_2370].y - _3718;
            float _3726 = abs(max((1.0f - abs(_3718)) - abs(_3719), 0.00048828125f));
            float3 _3730 = normalize(float3(_3718, _3719, (_49_m6[_2370].x >= 0.0f) ? _3726 : (-_3726)));
            float3 _3731 = _49_m6[_2367].xyz - _443;
            float _3732 = dot(_3731, _3731);
            float3 _3734 = _3731 * rsqrt(_3732);
            int _3737 = int(_49_m6[_2385].w);
            float3 _3739 = (_3730 * _49_m6[_2370].z) * 0.5f;
            float3 _3740 = _3731 - _3739;
            float3 _3741 = _3731 + _3739;
            bool _3743 = (_2468 & 1u) == 0u;
            bool _3746 = _3743 || ((_2389 & 2u) != 0u);
            bool _3749 = (!_3743) && (_49_m6[_2370].z > 0.0f);
            float _3761;
            if (_3749) {
              _3761 = 1.0f / ((((length(_3740) * length(_3741)) + dot(_3740, _3741)) * 0.5f) + 1.0f);
            } else {
              _3761 = 1.0f;
            }
            float _3783;
            if (_49_m6[_2382].w < 0.0f) {
              float _3777 = _3732 * (_49_m6[_2367].w * _49_m6[_2367].w);
              float _3780 = clamp(1.0f - (_3777 * _3777), 0.0f, 1.0f);
              _3783 = lerp(1.0f / (_3732 + 1.0f), _3761, float(_3749)) * (_3780 * _3780);
            } else {
              float3 _3766 = _3731 * _49_m6[_2367].w;
              _3783 = _3761 * pow(1.0f - clamp(dot(_3766, _3766), 0.0f, 1.0f), _49_m6[_2382].w);
            }
            float _3789 = clamp((dot(_3734, -_3730) - _49_m6[_2370].z) * _49_m6[_2370].w, 0.0f, 1.0f);
            float _3793 = _3783 * lerp(1.0f, _3789 * _3789, float(_3743));
            float _3893;
            if ((!_3749) && (_3737 >= 0)) {
              uint _3799 = uint(_3737);
              float2 _3886;
              [branch] if (_3743) {
                float4 _3876 = mul(_64_m1[_3799], _447);
                _3886 = _64_m0[_3799].xy + (clamp(_3876.xy / _3876.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_3799].zw);
              }
              else {
                float3 _3813 = mul(float4(-_3731, 0.0f), _64_m1[_3799]).xyz;
                float3 _411 = _3813;
                float3 _410 = _3813;
                float3 _409 = abs(_3813);
                uint _3822 = uint(int(_409.y > _409.x));
                uint _3828 = (_409.z > _409[_3822]) ? 2u : _3822;
                uint _3834 = (_3828 * 2u) + uint(_410[_3828] < 0.0f);
                float _3838 = abs(_411[_3834 / 2u]);
                float _3858 = 0.5f - (0.000244140625f / _64_m0[_3799].w);
                _3886 = _64_m0[_3799].xy + (clamp(float2((float(_3834) + ((((_411[uint(_378[_3834].x)] * _379[_3834].x) / _3838) * _3858) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_411[uint(_378[_3834].y)] * _379[_3834].y) / _3838) * _3858)), 0.0f.xx, 1.0f.xx) * _64_m0[_3799].zw);
              }
              _3893 = _3793 * _62.SampleLevel(_23, _3886, 0.0f).x;
            } else {
              _3893 = _3793;
            }
            float _4278;
            if (_3893 > 0.0f) {
              int _3947;
              if (_3746) {
                _3947 = int(_49_m6[_2373].x);
              } else {
                uint _3902 = asuint(_49_m6[_2370].w);
                uint _3903 = asuint(_49_m6[_2373].x);
                float3 _3904 = _443 - _49_m6[_2367].xyz;
                float3 _3905 = abs(_3904);
                float _3906 = _3905.x;
                float _3907 = _3905.y;
                float _3909 = _3905.z;
                int _3942;
                if ((_3906 > _3907) && (_3906 > _3909)) {
                  _3942 = int((_3904.x > 0.0f) ? (_3902 & 1023u) : ((_3902 >> 10u) & 1023u));
                } else {
                  int _3934;
                  if (_3907 > _3909) {
                    _3934 = int((_3904.y > 0.0f) ? ((_3902 >> 20u) & 1023u) : (_3903 & 1023u));
                  } else {
                    _3934 = int((_3904.z > 0.0f) ? ((_3903 >> 10u) & 1023u) : ((_3903 >> 20u) & 1023u));
                  }
                  _3942 = _3934;
                }
                _3947 = (_3942 == 1023) ? (-1) : _3942;
              }
              uint _3954 = asuint(_53_m11.x) + (uint(_3947) * 96u);
              uint _3956 = (_3954 + 64u) >> 2u;
              uint _3959 = _3956 + 1u;
              uint _3962 = _3956 + 2u;
              uint _3965 = _3956 + 3u;
              float4 _3969 = asfloat(uint4(_56.Load(_3956 * 4 + 0), _56.Load(_3959 * 4 + 0), _56.Load(_3962 * 4 + 0), _56.Load(_3965 * 4 + 0)));
              uint _3977 = _3954 >> 2u;
              uint _3992 = (_3954 + 16u) >> 2u;
              uint _4007 = (_3954 + 32u) >> 2u;
              uint _4022 = (_3954 + 48u) >> 2u;
              float4 _4042 = mul(transpose(float4x4(asfloat(uint4(_56.Load(_3977 * 4 + 0), _56.Load((_3977 + 1u) * 4 + 0), _56.Load((_3977 + 2u) * 4 + 0), _56.Load((_3977 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_3992 * 4 + 0), _56.Load((_3992 + 1u) * 4 + 0), _56.Load((_3992 + 2u) * 4 + 0), _56.Load((_3992 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_4007 * 4 + 0), _56.Load((_4007 + 1u) * 4 + 0), _56.Load((_4007 + 2u) * 4 + 0), _56.Load((_4007 + 3u) * 4 + 0))), asfloat(uint4(_56.Load(_4022 * 4 + 0), _56.Load((_4022 + 1u) * 4 + 0), _56.Load((_4022 + 2u) * 4 + 0), _56.Load((_4022 + 3u) * 4 + 0))))), float4((_443 - ((-_3734) * _3969.x)) + (_781 * (_3969.y * 5.0f)), 1.0f));
              float3 _4046 = _4042.xyz / _4042.w.xxx;
              uint _4048 = (_3954 + 80u) >> 2u;
              float4 _4061 = asfloat(uint4(_56.Load(_4048 * 4 + 0), _56.Load((_4048 + 1u) * 4 + 0), _56.Load((_4048 + 2u) * 4 + 0), _56.Load((_4048 + 3u) * 4 + 0)));
              float2 _4062 = _4046.xy;
              float2 _4064 = _4061.xy;
              float3 _4068 = _4046.xyz;
              bool3 _4069 = bool3(_4068.x <= 0.0f.xxx.x, _4068.y <= 0.0f.xxx.y, _4068.z <= 0.0f.xxx.z);
              bool3 _4070 = bool3(_4068.x >= 1.0f.xxx.x, _4068.y >= 1.0f.xxx.y, _4068.z >= 1.0f.xxx.z);
              float _4073 = _4046.z;
              float2 _4084 = ((_4062 * (_4061.zw - _4064)) + _4064).xy * _53_m10.zw;
              float2 _4086 = floor(_4084 + 0.5f.xx);
              float2 _4087 = _4084 - _4086;
              float _4088 = _4087.x;
              float _4089 = _4088 + 0.5f;
              float _4090 = _4089 * _4089;
              float _4093 = 1.0f - _4088;
              float _4094 = min(_4088, 0.0f);
              float _4097 = _4088 + 1.0f;
              float _4098 = max(_4088, 0.0f);
              float _4109 = _4087.y;
              float _4110 = _4109 + 0.5f;
              float _4111 = _4110 * _4110;
              float _4114 = 1.0f - _4109;
              float _4115 = min(_4109, 0.0f);
              float _4118 = _4109 + 1.0f;
              float _4119 = max(_4109, 0.0f);
              float3 _4131 = float3(0.1599999964237213134765625f * _4093, 0.1599999964237213134765625f * ((_4097 - (_4098 * _4098)) + 1.0f), _4090 * 0.07999999821186065673828125f);
              float3 _4132 = float3(0.1599999964237213134765625f * ((_4090 * 0.5f) - _4088), 0.1599999964237213134765625f * ((_4093 - (_4094 * _4094)) + 1.0f), 0.1599999964237213134765625f * _4097) + _4131;
              float3 _4134 = float3(0.1599999964237213134765625f * _4114, 0.1599999964237213134765625f * ((_4118 - (_4119 * _4119)) + 1.0f), _4111 * 0.07999999821186065673828125f);
              float3 _4135 = float3(0.1599999964237213134765625f * ((_4111 * 0.5f) - _4109), 0.1599999964237213134765625f * ((_4114 - (_4115 * _4115)) + 1.0f), 0.1599999964237213134765625f * _4118) + _4134;
              float3 _4141 = ((_4131 / _4132) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.xxx;
              float3 _4143 = ((_4134 / _4135) + float3(-2.5f, -0.5f, 1.5f)) * _53_m10.yyy;
              float2 _4145 = _4086 * _53_m10.xy;
              float _4146 = _4141.x;
              float _4147 = _4143.x;
              float _4150 = _4141.y;
              float _4153 = _4141.z;
              float _4156 = _4143.y;
              float _4163 = _4143.z;
              float _4170 = _4132.x;
              float _4171 = _4135.x;
              float _4173 = _4132.y;
              float _4175 = _4132.z;
              float _4177 = _4135.y;
              float _4181 = _4135.z;
              float _4239 = (((((((_4170 * _4171) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4146, _4147), _400).xy, _4073)) + ((_4173 * _4171) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4150, _4147), _400).xy, _4073))) + ((_4175 * _4171) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4153, _4147), _400).xy, _4073))) + ((_4170 * _4177) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4146, _4156), _400).xy, _4073))) + ((_4173 * _4177) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4150, _4156), _400).xy, _4073))) + ((_4175 * _4177) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4153, _4156), _400).xy, _4073))) + ((_4170 * _4181) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4146, _4163), _400).xy, _4073));
              float4 _4262 = asfloat(uint4(_56.Load(_3956 * 4 + 0), _56.Load(_3959 * 4 + 0), _56.Load(_3962 * 4 + 0), _56.Load(_3965 * 4 + 0)));
              float _4263 = _4262.w;
              float2 _4265 = min(_4062, 1.0f.xx - _4062);
              _4278 = (_3947 >= 0) ? lerp(1.0f, (any(bool3(_4069.x || _4070.x, _4069.y || _4070.y, _4069.z || _4070.z)) || ((asuint(_4073) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4239 + ((_4173 * _4181) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4150, _4163), _400).xy, _4073))) + ((_4175 * _4181) * _55.SampleCmpLevelZero(_25, float3(_4145 + float2(_4153, _4163), _400).xy, _4073))), _3746 ? min(_4263, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4262.z - _4042.w) * 0.25f, min(_4265.x, _4265.y)))) : _4263) : 1.0f;
            } else {
              _4278 = 1.0f;
            }
            _4279 = _4278;
            break;
          } while (false);
          _5022 = _2324 * _4279;
          _5023 = 0.0f.xxx;
        }
        _5024 = _5022;
        _5025 = _5023;
        break;
      } while (false);
      _2349 = _5024;
      _2352 = _2351 + _5025;
    }
    _2321 = _2320 + _2351;
  }
  float3 _5035 = -_470;
  float _5036 = 1.0f - _38_m1;
  float _5051 = _443.y * _17_m46.w;
  float _5056 = max(0.00999999977648258209228515625f, _5051 + _17_m47.w);
  float3 _5070 = exp(_17_m45.xyz * ((-max(0.0f, (_471 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_5056)) / _5056) * exp(_5051 + _17_m48.w))));
  float _5073 = dot(_5035, _17_m44.xyz);
  float _5079 = _17_m45.w * _17_m45.w;
  float _5083 = (1.0f + _5079) - ((2.0f * _17_m45.w) * _5073);
  float3 _5415;
  float _5416;
  if (_17_m55.z > 0.0f) {
    uint3 _5241 = (uint3(int3(int(_975.x), int(_975.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5242 = _5241.y;
    uint _5243 = _5241.z;
    uint _5246 = _5241.x + (_5242 * _5243);
    uint _5248 = _5242 + (_5243 * _5246);
    uint _5250 = _5243 + (_5246 * _5248);
    uint _5252 = _5246 + (_5248 * _5250);
    float _5276 = dot(_5035, -_15_m0[2].xyz);
    float3 _5286 = _443 - _15_m11.xyz;
    float _5288 = (_17_m55.w * ((_5276 > 5.9604644775390625e-08f) ? (1.0f / _5276) : 0.0f)) * (1.0f / _471);
    float _5289 = _5286.y;
    float _5290 = _5288 * _5289;
    float _5292 = _15_m11.y + _5290;
    float _5293 = _5289 - _5290;
    float _5295 = (1.0f - _5288) * _471;
    float _5309 = max(-127.0f, _17_m49.z * _5293);
    float _5333 = max(-127.0f, _17_m52.x * _5293);
    float _5344 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_5292 - _17_m49.x)))) * ((abs(_5309) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5309)) / _5309) : (0.693147182464599609375f - (0.2402265071868896484375f * _5309)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_5292 - _17_m52.z)))) * ((abs(_5333) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5333)) / _5333) : (0.693147182464599609375f - (0.2402265071868896484375f * _5333))));
    float _5366 = clamp((_471 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
    float _5369 = clamp((max(clamp(exp2(-(_5344 * _5295)), 0.0f, 1.0f), _17_m51.w) + clamp((_471 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _5366, 0.0f, 1.0f);
    float4 _5409 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _40.SampleLevel(_23, float3((_2295 + ((((float3(uint3(_5252, _5248 + (_5250 * _5252), _404) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_976 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_976 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5415 = _5409.xyz + (((_17_m51.xyz * (1.0f - _5369)) + (((_17_m54.xyz * pow(clamp(dot(_470, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_5344 * max(_5295 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5366))) * _5409.w);
    _5416 = _5409.w * _5369;
  } else {
    float3 _5113 = _443 - _15_m11.xyz;
    float _5115 = _5113.y;
    float _5129 = max(-127.0f, _17_m49.z * _5115);
    float _5153 = max(-127.0f, _17_m52.x * _5115);
    float _5164 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_5129) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5129)) / _5129) : (0.693147182464599609375f - (0.2402265071868896484375f * _5129)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_5153) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5153)) / _5153) : (0.693147182464599609375f - (0.2402265071868896484375f * _5153))));
    float _5186 = clamp((_471 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
    float _5189 = clamp((max(clamp(exp2(-(_5164 * _471)), 0.0f, 1.0f), _17_m51.w) + clamp((_471 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _5186, 0.0f, 1.0f);
    _5415 = (_17_m51.xyz * (1.0f - _5189)) + (((_17_m54.xyz * pow(clamp(dot(_470, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_5164 * max(_471 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5186));
    _5416 = _5189;
  }
  float3 _5420 = (((((lerp(dot(_1427, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1427, _1433) * _17_m78.xyz) * _38_m11) + (_1427 * _1441)) + _884) + (_2294.xyz + (_2320 * _2323)).xyz).xyz;
  float _5427 = clamp(_976 / _38_m92, 0.0f, 1.0f);
  // RenoDX code start: retain the glass adjustment in the updated native composite.
  /* Vanilla 0xA1FB8B5B:
  float3 _5437 = lerp(_5420, ((_5420 * (_5070 * _5416)) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5073 * _5073)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _5079) / max((12.56637096405029296875f * _5083) * sqrt(_5083), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5070)) * _5416) + _5415) * _5036)).xyz, (_5427 + (_38_m91 * (1.0f - _5427))).xxx).xyz * _840;
  */
  float3 _5437 = lerp(_5420, ((_5420 * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_5070 * _5416)) : (_5070 * _5416))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5073 * _5073)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _5079) / max((12.56637096405029296875f * _5083) * sqrt(_5083), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5070)) * _5416 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5415 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _5036)).xyz, (_5427 + (_38_m91 * (1.0f - _5427))).xxx).xyz * _840;
  // RenoDX code end
  float4 _5438 = float4(_5437.x, _5437.y, _5437.z, _401.w);
  float _5439 = _840 * _5036;
  _5438.w = _5439;
  float3 _5448 = ((lerp(dot(_5438.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5438.xyz, _1433) * _17_m78.xyz) * _38_m11) + (_5438.xyz * _1441);
  float2 _5458 = min(_942, 1.0f.xx);
  float4 _5459 = float4(_5458.x, _5458.y, _401.z, _401.w);
  _5459.z = float(clamp(max(dot(_5448.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _5439, _5439) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5459.w = (_38_m2 * _38_m0) * float(clamp(max(dot(_841, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _840, _840) * 10.0f, 0.0f, 1.0f) > 0.5f);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xA1FB8B5B:
  _12 = float4(_5448.x, _5448.y, _5448.z, _5438.w);
  */
  float3 renodx_output_color = float3(_5448.x, _5448.y, _5448.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _12 = float4(renodx_output_color, _5438.w);
  // RenoDX code end
  _13 = _5459;
  // RenoDX code start: preserve the existing glass controls.
  if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
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
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._12 = _12;
  stage_output._13 = _13;
  return stage_output;
}

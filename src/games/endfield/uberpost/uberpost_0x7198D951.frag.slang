#include "../common.hlsl"

// Native Vulkan 0x7198D951; retains the updated split-view control flow.
[[vk::binding(10, 3)]] cbuffer _5_6 : register(b10, space3) {
  float4 _6_m0 : packoffset(c0);
  float4 _6_m1 : packoffset(c1);
  float4 _6_m2 : packoffset(c2);
  float4 _6_m3 : packoffset(c3);
  float4 _6_m4 : packoffset(c4);
  float4 _6_m5 : packoffset(c5);
  float4 _6_m6[6] : packoffset(c6);
  float4 _6_m7[6] : packoffset(c12);
  float4 _6_m8 : packoffset(c18);
  float4 _6_m9 : packoffset(c19);
  float4 _6_m10 : packoffset(c20);
  float4 _6_m11 : packoffset(c21);
  float4 _6_m12 : packoffset(c22);
  float4 _6_m13 : packoffset(c23);
  float4 _6_m14 : packoffset(c24);
  float4 _6_m15 : packoffset(c25);
  float _6_m16 : packoffset(c26);
  float _6_m17 : packoffset(c26.y);
  float _6_m18 : packoffset(c26.z);
  uint _6_m19 : packoffset(c26.w);
  float4 _6_m20 : packoffset(c27);
  int4 _6_m21 : packoffset(c28);
  float4 _6_m22 : packoffset(c29);
  float4 _6_m23 : packoffset(c30);
  float4 _6_m24 : packoffset(c31);
  float4 _6_m25 : packoffset(c32);
  float4 _6_m26 : packoffset(c33);
  float4 _6_m27 : packoffset(c34);
  float4 _6_m28 : packoffset(c35);
  float4 _6_m29 : packoffset(c36);
  float4 _6_m30 : packoffset(c37);
  float4 _6_m31 : packoffset(c38);
  float4 _6_m32[4] : packoffset(c39);
  float4 _6_m33[4] : packoffset(c43);
  float4 _6_m34[4] : packoffset(c47);
  float4 _6_m35[4] : packoffset(c51);
  float4 _6_m36 : packoffset(c55);
  float4 _6_m37 : packoffset(c56);
  float4 _6_m38[4] : packoffset(c57);
  float4 _6_m39[4] : packoffset(c61);
  float4 _6_m40[4] : packoffset(c65);
  float4 _6_m41 : packoffset(c69);
  float4 _6_m42 : packoffset(c70);
  float4 _6_m43 : packoffset(c71);
  float4 _6_m44 : packoffset(c72);
  float4 _6_m45 : packoffset(c73);
  float4 _6_m46 : packoffset(c74);
  float4 _6_m47 : packoffset(c75);
  float4 _6_m48 : packoffset(c76);
  float4 _6_m49 : packoffset(c77);
  float4 _6_m50 : packoffset(c78);
  float4 _6_m51 : packoffset(c79);
  float4 _6_m52 : packoffset(c80);
  float4 _6_m53 : packoffset(c81);
  float4 _6_m54 : packoffset(c82);
  float4 _6_m55 : packoffset(c83);
  float4 _6_m56 : packoffset(c84);
  float4 _6_m57 : packoffset(c85);
  float4 _6_m58 : packoffset(c86);
  float4 _6_m59 : packoffset(c87);
  float4 _6_m60 : packoffset(c88);
  float4 _6_m61 : packoffset(c89);
  float4 _6_m62 : packoffset(c90);
  float4 _6_m63 : packoffset(c91);
  float4 _6_m64 : packoffset(c92);
  float4 _6_m65 : packoffset(c93);
  float4 _6_m66 : packoffset(c94);
  float4 _6_m67 : packoffset(c95);
  float4 _6_m68 : packoffset(c96);
  float4 _6_m69 : packoffset(c97);
  float4 _6_m70 : packoffset(c98);
  float4 _6_m71 : packoffset(c99);
  float4 _6_m72 : packoffset(c100);
  float4 _6_m73 : packoffset(c101);
  float4 _6_m74 : packoffset(c102);
  float4 _6_m75 : packoffset(c103);
  float4 _6_m76 : packoffset(c104);
  float4 _6_m77 : packoffset(c105);
  float4 _6_m78 : packoffset(c106);
  float4 _6_m79 : packoffset(c107);
  float4 _6_m80 : packoffset(c108);
  float4 _6_m81 : packoffset(c109);
  float4 _6_m82 : packoffset(c110);
  float4 _6_m83 : packoffset(c111);
  float4 _6_m84 : packoffset(c112);
  float4 _6_m85 : packoffset(c113);
  float4 _6_m86 : packoffset(c114);
  float4 _6_m87 : packoffset(c115);
  float4 _6_m88 : packoffset(c116);
  float4 _6_m89 : packoffset(c117);
  float4 _6_m90 : packoffset(c118);
  float4 _6_m91 : packoffset(c119);
  float4 _6_m92 : packoffset(c120);
  float4 _6_m93 : packoffset(c121);
  float4 _6_m94 : packoffset(c122);
  float4 _6_m95 : packoffset(c123);
  float4 _6_m96 : packoffset(c124);
  float4 _6_m97 : packoffset(c125);
  float4 _6_m98 : packoffset(c126);
  float4 _6_m99 : packoffset(c127);
  float4 _6_m100 : packoffset(c128);
  float4 _6_m101 : packoffset(c129);
  float4 _6_m102[2] : packoffset(c130);
  float4 _6_m103[2] : packoffset(c132);
  float _6_m104 : packoffset(c134);
  float _6_m105 : packoffset(c134.y);
  float _6_m106 : packoffset(c134.z);
  float _6_m107 : packoffset(c134.w);
  float4 _6_m108 : packoffset(c135);
  float4 _6_m109 : packoffset(c136);
  float4 _6_m110 : packoffset(c137);
  float4 _6_m111 : packoffset(c138);
  float4 _6_m112 : packoffset(c139);
  float4 _6_m113 : packoffset(c140);
  float4 _6_m114 : packoffset(c141);
  float4 _6_m115 : packoffset(c142);
  float4 _6_m116 : packoffset(c143);
  float4 _6_m117 : packoffset(c144);
  float4 _6_m118 : packoffset(c145);
  float4 _6_m119 : packoffset(c146);
  float4 _6_m120 : packoffset(c147);
  float4 _6_m121 : packoffset(c148);
  float4 _6_m122 : packoffset(c149);
  float4 _6_m123 : packoffset(c150);
  float4 _6_m124 : packoffset(c151);
  float4 _6_m125 : packoffset(c152);
  float4 _6_m126 : packoffset(c153);
  float4 _6_m127 : packoffset(c154);
  float4 _6_m128 : packoffset(c155);
  float4 _6_m129 : packoffset(c156);
  float4 _6_m130 : packoffset(c157);
  float4 _6_m131 : packoffset(c158);
  float4 _6_m132 : packoffset(c159);
  float4 _6_m133 : packoffset(c160);
  float4 _6_m134 : packoffset(c161);
  float4 _6_m135 : packoffset(c162);
  float4 _6_m136 : packoffset(c163);
  float4 _6_m137 : packoffset(c164);
  column_major float4x4 _6_m138 : packoffset(c165);
  float4 _6_m139 : packoffset(c169);
  float4 _6_m140 : packoffset(c170);
  float4 _6_m141 : packoffset(c171);
  float4 _6_m142 : packoffset(c172);
  int4 _6_m143 : packoffset(c173);
  int4 _6_m144 : packoffset(c174);
  int4 _6_m145 : packoffset(c175);
  float4 _6_m146[32] : packoffset(c176);
};

[[vk::binding(9, 3)]] cbuffer _17_18 : register(b9, space3) {
  float4 _18_m0 : packoffset(c0);
  float4 _18_m1 : packoffset(c1);
  float4 _18_m2 : packoffset(c2);
  float4 _18_m3 : packoffset(c3);
  float4 _18_m4 : packoffset(c4);
  float4 _18_m5 : packoffset(c5);
  float4 _18_m6 : packoffset(c6);
  float4 _18_m7 : packoffset(c7);
  float4 _18_m8 : packoffset(c8);
  float4 _18_m9 : packoffset(c9);
  float4 _18_m10 : packoffset(c10);
  float4 _18_m11 : packoffset(c11);
  float4 _18_m12 : packoffset(c12);
  float4 _18_m13 : packoffset(c13);
  float4 _18_m14 : packoffset(c14);
  float4 _18_m15 : packoffset(c15);
  float4 _18_m16 : packoffset(c16);
  float4 _18_m17 : packoffset(c17);
  float4 _18_m18 : packoffset(c18);
  float4 _18_m19 : packoffset(c19);
  float4 _18_m20 : packoffset(c20);
  float4 _18_m21 : packoffset(c21);
  float4 _18_m22 : packoffset(c22);
  float4 _18_m23 : packoffset(c23);
  float4 _18_m24 : packoffset(c24);
  float4 _18_m25 : packoffset(c25);
  float4 _18_m26 : packoffset(c26);
  float4 _18_m27 : packoffset(c27);
  float4 _18_m28 : packoffset(c28);
};

[[vk::binding(6, 3)]] Texture2D<float4> _9 : register(t6, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _10 : register(t8, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _11 : register(t5, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _12 : register(t4, space3);
[[vk::binding(1, 3)]] SamplerState _13 : register(s1, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _14 : register(t7, space3);
[[vk::binding(3, 3)]] SamplerState _15 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _704;
  do {
    float _138 = dot(_18_m26.xy, _3) + _18_m26.z;
    bool4 _140 = (_138 < 0.0f).xxxx;
    float4 _145 = float4(_140.x ? _18_m27.x : _18_m28.x, _140.y ? _18_m27.y : _18_m28.y, _140.z ? _18_m27.z : _18_m28.z, _140.w ? _18_m27.w : _18_m28.w);
    if (abs(_138) <= _18_m26.w) {
      _704 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _152 = _145.xy;
    float2 _155 = (_3 * _152) + _145.zw;
    if (any(bool2(_155.x < 0.0f.xx.x, _155.y < 0.0f.xx.y)) || any(bool2(_155.x > 1.0f.xx.x, _155.y > 1.0f.xx.y))) {
      _704 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _166 = _3 - _18_m0.xy;
    float _168 = sqrt(dot(_166, _166));
    float _170 = 1.0f / max(0.00999999977648258209228515625f, _168);
    float2 _176 = _166 * pow(_168 * _168, _18_m0.w * 0.5f);
    float4 _180 = _9.SampleLevel(_16, _155, 0.0f);
    float3 _183 = _180.xyz * float3(1.0f, 0.0f, 0.0f);
    float3 _322;
    [branch] if (_18_m25.x > 3.0f) {
      bool2 _197 = ((_18_m25.w != 0.0f) || (_18_m25.z != 0.0f)).xx;
      float2 _198 = _176 * _170;
      float2 _200 = float2(_197.x ? _198.x : _176.x, _197.y ? _198.y : _176.y) * _152;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          float _205 = _18_m0.z + _18_m25.y;
      */
      float _205 = (_18_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          float _234 = 2.0f * _18_m25.y;
      */
      float _234 = 2.0f * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          float _245 = 2.0f * _18_m0.z;
      */
      float _245 = 2.0f * (_18_m0.z * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          float _246 = 3.0f * _18_m25.y;
      */
      float _246 = 3.0f * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          float3 _287 = ((((((((_183 + (_9.SampleLevel(_16, _155 - (_200 * _205), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (2.0f * _205)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * _18_m25.y), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_18_m0.z + _234)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_245 + _246)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * _234), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_18_m0.z + _246)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_245 + (4.0f * _18_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      */
      float3 _287 = ((((((((_183 + (_9.SampleLevel(_16, _155 - (_200 * _205), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (2.0f * _205)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * ((_18_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _234)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_245 + _246)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_200 * _234), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_16, _155 - (_200 * ((_18_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _246)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_16, _155 - (_200 * (_245 + (4.0f * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      // RenoDX code end
      _322 = _287;
    }
    else {
      bool2 _291 = (_18_m25.w != 0.0f).xx;
      float2 _292 = _176 * _170;
      float2 _294 = float2(_291.x ? _292.x : _176.x, _291.y ? _292.y : _176.y) * _152;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x7198D951:
          _322 = (_183 + (_9.SampleLevel(_16, _155 - (_294 * (_18_m0.z + (2.0f * _18_m25.y))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_294 * ((2.0f * _18_m0.z) + (3.0f * _18_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      */
      _322 = (_183 + (_9.SampleLevel(_16, _155 - (_294 * ((_18_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (2.0f * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_16, _155 - (_294 * ((2.0f * (_18_m0.z * CHROMATIC_ABERRATION_STRENGTH)) + (3.0f * (_18_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      // RenoDX code end
    }
    float3 _328 = float3(_6_m0.z, _6_m0.w, 0.0f);
    float2 _331 = _328.zy;
    float4 _334 = _9.SampleLevel(_16, _155 + _331, 0.0f);
    float2 _337 = _328.xz;
    float4 _340 = _9.SampleLevel(_16, _155 - _337, 0.0f);
    float4 _345 = _9.SampleLevel(_16, _155 + _337, 0.0f);
    float4 _350 = _9.SampleLevel(_16, _155 - _331, 0.0f);
    float _353 = _334.x;
    float _354 = _334.y;
    float _355 = _334.z;
    float _356 = _340.x;
    float _357 = _340.y;
    float _358 = _340.z;
    float _362 = _345.x;
    float _363 = _345.y;
    float _364 = _345.z;
    float _365 = _350.x;
    float _366 = _350.y;
    float _367 = _350.z;
    float _371 = (_355 * 0.5f) + ((_353 * 0.5f) + _354);
    float _375 = (_358 * 0.5f) + ((_356 * 0.5f) + _357);
    float _379 = (_322.z * 0.5f) + ((_322.x * 0.5f) + _322.y);
    float _383 = (_364 * 0.5f) + ((_362 * 0.5f) + _363);
    float _387 = (_367 * 0.5f) + ((_365 * 0.5f) + _366);
    float _410 = min(min(_353, min(_356, _362)), _365);
    float _413 = min(min(_354, min(_357, _363)), _366);
    float _416 = min(min(_355, min(_358, _364)), _367);
    float _419 = max(max(_353, max(_356, _362)), _365);
    float _422 = max(max(_354, max(_357, _363)), _366);
    float _425 = max(max(_355, max(_358, _364)), _367);
    float _458 = (max(-0.1875f, min(max(max(-(_410 * (0.25f / _419)), (1.0f - _419) * (1.0f / ((4.0f * _410) + (-4.0f)))), max(max(-(_413 * (0.25f / _422)), (1.0f - _422) * (1.0f / ((4.0f * _413) + (-4.0f)))), max(-(_416 * (0.25f / _425)), (1.0f - _425) * (1.0f / ((4.0f * _416) + (-4.0f)))))), 0.0f)) * _18_m24.x) * (((-0.5f) * clamp(abs((0.25f * (((_371 + _375) + _383) + _387)) - _379) * (1.0f / (max(max(_371, max(_375, _379)), max(_383, _387)) - min(min(_371, min(_375, _379)), min(_383, _387)))), 0.0f, 1.0f)) + 1.0f);
    float _461 = 1.0f / ((4.0f * _458) + 1.0f);
    float3 _483 = float3(((_458 * (((_353 + _356) + _365) + _362)) + _322.x) * _461, ((_458 * (((_354 + _357) + _366) + _363)) + _322.y) * _461, ((_458 * (((_355 + _358) + _367) + _364)) + _322.z) * _461) * _6_m20.x;
    float3 _488 = _10.SampleLevel(_16, _155, 0.0f).xyz;
    float3 _492 = _488 * (1.0f - _18_m9.z);
    bool3 _493 = bool3(_492.x > 0.300000011920928955078125f.xxx.x, _492.y > 0.300000011920928955078125f.xxx.y, _492.z > 0.300000011920928955078125f.xxx.z);
    float3 _496 = (pow(_488, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float _506 = max(max(_483.x, _483.y), _483.z);
    float _510 = clamp(_506 - _18_m10.y, 0.0f, _18_m10.z);
    float4 _533 = _14.SampleLevel(_15, _3, 0.0f);
    float2 _569 = abs(_3 - _18_m1.xy) * lerp(_18_m2.x, 1.0f, _18_m1.w);
    float _584 = _569.x * lerp(1.0f, 1.5f * clamp(_18_m2.x * 1.0499999523162841796875f, 0.0f, 1.0f), _18_m1.w);
    float2 _585 = float2(_584, clamp((_569.y * lerp(1.0f, _18_m2.x * 2.0f, _18_m1.w)) + (clamp(_18_m2.x - 2.7999999523162841796875f, 0.0f, 1.0f) * 5.0f), 0.0f, 1.0f));
    _585.x = _584 * lerp(lerp(1.0f, _6_m20.z, _18_m2.w), _6_m20.z * 0.5625f, _18_m1.w);
    float2 _593 = pow(clamp(_585, 0.0f.xx, 1.0f.xx), _18_m2.z.xx);
    // RenoDX code start: retain the existing post-effect control.
    /* Vanilla 0x7198D951:
    float3 _605 = (((lerp(_483, (_483 - ((_483 * (max((_18_m10.w * _510) * _510, _506 - _18_m10.x) / max(_506, 9.9999997473787516355514526367188e-05f))) * _18_m9.z)) + (float3(_493.x ? _496.x : _488.x, _493.y ? _496.y : _488.y, _493.z ? _496.z : _488.z) * _18_m11.xyz), _18_m9.x.xxx) * lerp(1.0f.xxx, _533.xyz, lerp(_18_m3.x, clamp((_18_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_533.x, _533.y), _533.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_18_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_593, _593), 0.0f, 1.0f), _18_m2.y).xxx)) * _18_m7.w) * 5.555555820465087890625f;
    */
    float renodx_vignette = lerp(1.0f, pow(clamp(1.0f - dot(_593, _593), 0.0f, 1.0f), _18_m2.y), VIGNETTE_STRENGTH);
    float3 _605 = (((lerp(_483, (_483 - ((_483 * (max((_18_m10.w * _510) * _510, _506 - _18_m10.x) / max(_506, 9.9999997473787516355514526367188e-05f))) * _18_m9.z)) + (float3(_493.x ? _496.x : _488.x, _493.y ? _496.y : _488.y, _493.z ? _496.z : _488.z) * _18_m11.xyz), _18_m9.x.xxx) * lerp(1.0f.xxx, _533.xyz, lerp(_18_m3.x, clamp((_18_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_533.x, _533.y), _533.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_18_m4.xyz, 1.0f.xxx, 1.0f.xxx)) * _18_m7.w) * 5.555555820465087890625f;
    // RenoDX code end

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0x7198D951:
float3 _612 = clamp(((log2(max(_605 + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _618 = _612.z * _18_m7.z;
    float _619 = floor(_618);
    float2 _625 = ((_612.xy * _18_m7.z) * _18_m7.xy) + (_18_m7.xy * 0.5f);
    float3 _626 = float3(_625.x, _625.y, _612.z);
    _626.x = _625.x + (_619 * _18_m7.y);
    float3 _643 = lerp(_11.SampleLevel(_16, _626.xy, 0.0f).xyz, _11.SampleLevel(_16, _626.xy + float2(_18_m7.y, 0.0f), 0.0f).xyz, (_618 - _619).xxx);
    float3 _644 = _643 * 12.9200000762939453125f;
    float3 _648 = (pow(abs(_643), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _649 = bool3(_643.x <= 0.003130800090730190277099609375f.xxx.x, _643.y <= 0.003130800090730190277099609375f.xxx.y, _643.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_16, _18_m7.xyz, _11, _605 / 5.555555820465087890625f);
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    renodx_color *= renodx_vignette;
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x7198D951:
    float3 _651 = clamp(float3(_649.x ? _644.x : _648.x, _649.y ? _644.y : _648.y, _649.z ? _644.z : _648.z), 0.0f.xxx, 1.0f.xxx);
    */
    float3 _651 = clamp(renodx_encoded, 0.0f.xxx, 1.0f.xxx);
    // RenoDX code end
    float _658 = _651.z * _18_m8.z;
    float _659 = floor(_658);
    float2 _665 = ((_651.xy * _18_m8.z) * _18_m8.xy) + (_18_m8.xy * 0.5f);
    float3 _666 = float3(_665.x, _665.y, _651.z);
    _666.x = _665.x + (_659 * _18_m8.y);
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x7198D951:
    _704 = float4(lerp(_651, lerp(_12.SampleLevel(_13, _666.xy, 0.0f).xyz, _12.SampleLevel(_13, _666.xy + float2(_18_m8.y, 0.0f), 0.0f).xyz, (_658 - _659).xxx), _18_m8.w.xxx) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_180.w, 1.0f));
    */
    _704 = float4(lerp(_651, lerp(_12.SampleLevel(_13, _666.xy, 0.0f).xyz, _12.SampleLevel(_13, _666.xy + float2(_18_m8.y, 0.0f), 0.0f).xyz, (_658 - _659).xxx), _18_m8.w.xxx), min(_180.w, 1.0f));
    // RenoDX code end
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _704.xyz = renodx::color::srgb::DecodeSafe(_704.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _704.xyz = renodx::effects::ApplyFilmGrain(_704.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _704.xyz = renodx::draw::RenderIntermediatePass(_704.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _704;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

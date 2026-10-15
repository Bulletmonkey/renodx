#include "../common.hlsl"

// Native Vulkan 0x071C2528; retains the updated split-view control flow.
[[vk::binding(6, 3)]] cbuffer _5_6 : register(b6, space3) {
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

[[vk::binding(5, 3)]] cbuffer _13_14 : register(b5, space3) {
  float4 _14_m0 : packoffset(c0);
  float4 _14_m1 : packoffset(c1);
  float4 _14_m2 : packoffset(c2);
  float4 _14_m3 : packoffset(c3);
  float4 _14_m4 : packoffset(c4);
  float4 _14_m5 : packoffset(c5);
  float4 _14_m6 : packoffset(c6);
  float4 _14_m7 : packoffset(c7);
  float4 _14_m8 : packoffset(c8);
  float4 _14_m9 : packoffset(c9);
  float4 _14_m10 : packoffset(c10);
  float4 _14_m11 : packoffset(c11);
  float4 _14_m12 : packoffset(c12);
  float4 _14_m13 : packoffset(c13);
  float4 _14_m14 : packoffset(c14);
  float4 _14_m15 : packoffset(c15);
  float4 _14_m16 : packoffset(c16);
  float4 _14_m17 : packoffset(c17);
  float4 _14_m18 : packoffset(c18);
  float4 _14_m19 : packoffset(c19);
  float4 _14_m20 : packoffset(c20);
  float4 _14_m21 : packoffset(c21);
  float4 _14_m22 : packoffset(c22);
  float4 _14_m23 : packoffset(c23);
  float4 _14_m24 : packoffset(c24);
  float4 _14_m25 : packoffset(c25);
  float4 _14_m26 : packoffset(c26);
  float4 _14_m27 : packoffset(c27);
  float4 _14_m28 : packoffset(c28);
};

[[vk::binding(3, 3)]] Texture2D<float4> _9 : register(t3, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _10 : register(t4, space3);
[[vk::binding(2, 3)]] Texture2D<float4> _11 : register(t2, space3);
[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _584;
  do {
    float _126 = dot(_14_m26.xy, _3) + _14_m26.z;
    bool4 _128 = (_126 < 0.0f).xxxx;
    float4 _133 = float4(_128.x ? _14_m27.x : _14_m28.x, _128.y ? _14_m27.y : _14_m28.y, _128.z ? _14_m27.z : _14_m28.z, _128.w ? _14_m27.w : _14_m28.w);
    if (abs(_126) <= _14_m26.w) {
      _584 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _140 = _133.xy;
    float2 _143 = (_3 * _140) + _133.zw;
    if (any(bool2(_143.x < 0.0f.xx.x, _143.y < 0.0f.xx.y)) || any(bool2(_143.x > 1.0f.xx.x, _143.y > 1.0f.xx.y))) {
      _584 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _154 = _3 - _14_m0.xy;
    float _156 = sqrt(dot(_154, _154));
    float _158 = 1.0f / max(0.00999999977648258209228515625f, _156);
    float2 _164 = _154 * pow(_156 * _156, _14_m0.w * 0.5f);
    float4 _168 = _9.SampleLevel(_12, _143, 0.0f);
    float3 _171 = _168.xyz * float3(1.0f, 0.0f, 0.0f);
    float3 _310;
    [branch] if (_14_m25.x > 3.0f) {
      bool2 _185 = ((_14_m25.w != 0.0f) || (_14_m25.z != 0.0f)).xx;
      float2 _186 = _164 * _158;
      float2 _188 = float2(_185.x ? _186.x : _164.x, _185.y ? _186.y : _164.y) * _140;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          float _193 = _14_m0.z + _14_m25.y;
      */
      float _193 = (_14_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          float _222 = 2.0f * _14_m25.y;
      */
      float _222 = 2.0f * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          float _233 = 2.0f * _14_m0.z;
      */
      float _233 = 2.0f * (_14_m0.z * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          float _234 = 3.0f * _14_m25.y;
      */
      float _234 = 3.0f * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          float3 _275 = ((((((((_171 + (_9.SampleLevel(_12, _143 - (_188 * _193), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (2.0f * _193)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * _14_m25.y), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_14_m0.z + _222)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_233 + _234)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * _222), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_14_m0.z + _234)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_233 + (4.0f * _14_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      */
      float3 _275 = ((((((((_171 + (_9.SampleLevel(_12, _143 - (_188 * _193), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (2.0f * _193)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * ((_14_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _222)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_233 + _234)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_188 * _222), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_12, _143 - (_188 * ((_14_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _234)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_12, _143 - (_188 * (_233 + (4.0f * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      // RenoDX code end
      _310 = _275;
    }
    else {
      bool2 _279 = (_14_m25.w != 0.0f).xx;
      float2 _280 = _164 * _158;
      float2 _282 = float2(_279.x ? _280.x : _164.x, _279.y ? _280.y : _164.y) * _140;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x071C2528:
          _310 = (_171 + (_9.SampleLevel(_12, _143 - (_282 * (_14_m0.z + (2.0f * _14_m25.y))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_282 * ((2.0f * _14_m0.z) + (3.0f * _14_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      */
      _310 = (_171 + (_9.SampleLevel(_12, _143 - (_282 * ((_14_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (2.0f * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_12, _143 - (_282 * ((2.0f * (_14_m0.z * CHROMATIC_ABERRATION_STRENGTH)) + (3.0f * (_14_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      // RenoDX code end
    }
    float3 _316 = float3(_6_m0.z, _6_m0.w, 0.0f);
    float2 _319 = _316.zy;
    float4 _322 = _9.SampleLevel(_12, _143 + _319, 0.0f);
    float2 _325 = _316.xz;
    float4 _328 = _9.SampleLevel(_12, _143 - _325, 0.0f);
    float4 _333 = _9.SampleLevel(_12, _143 + _325, 0.0f);
    float4 _338 = _9.SampleLevel(_12, _143 - _319, 0.0f);
    float _341 = _322.x;
    float _342 = _322.y;
    float _343 = _322.z;
    float _344 = _328.x;
    float _345 = _328.y;
    float _346 = _328.z;
    float _350 = _333.x;
    float _351 = _333.y;
    float _352 = _333.z;
    float _353 = _338.x;
    float _354 = _338.y;
    float _355 = _338.z;
    float _359 = (_343 * 0.5f) + ((_341 * 0.5f) + _342);
    float _363 = (_346 * 0.5f) + ((_344 * 0.5f) + _345);
    float _367 = (_310.z * 0.5f) + ((_310.x * 0.5f) + _310.y);
    float _371 = (_352 * 0.5f) + ((_350 * 0.5f) + _351);
    float _375 = (_355 * 0.5f) + ((_353 * 0.5f) + _354);
    float _398 = min(min(_341, min(_344, _350)), _353);
    float _401 = min(min(_342, min(_345, _351)), _354);
    float _404 = min(min(_343, min(_346, _352)), _355);
    float _407 = max(max(_341, max(_344, _350)), _353);
    float _410 = max(max(_342, max(_345, _351)), _354);
    float _413 = max(max(_343, max(_346, _352)), _355);
    float _446 = (max(-0.1875f, min(max(max(-(_398 * (0.25f / _407)), (1.0f - _407) * (1.0f / ((4.0f * _398) + (-4.0f)))), max(max(-(_401 * (0.25f / _410)), (1.0f - _410) * (1.0f / ((4.0f * _401) + (-4.0f)))), max(-(_404 * (0.25f / _413)), (1.0f - _413) * (1.0f / ((4.0f * _404) + (-4.0f)))))), 0.0f)) * _14_m24.x) * (((-0.5f) * clamp(abs((0.25f * (((_359 + _363) + _371) + _375)) - _367) * (1.0f / (max(max(_359, max(_363, _367)), max(_371, _375)) - min(min(_359, min(_363, _367)), min(_371, _375)))), 0.0f, 1.0f)) + 1.0f);
    float _449 = 1.0f / ((4.0f * _446) + 1.0f);
    float3 _471 = float3(((_446 * (((_341 + _344) + _353) + _350)) + _310.x) * _449, ((_446 * (((_342 + _345) + _354) + _351)) + _310.y) * _449, ((_446 * (((_343 + _346) + _355) + _352)) + _310.z) * _449) * _6_m20.x;
    float3 _476 = _10.SampleLevel(_12, _143, 0.0f).xyz;
    float3 _480 = _476 * (1.0f - _14_m9.z);
    bool3 _481 = bool3(_480.x > 0.300000011920928955078125f.xxx.x, _480.y > 0.300000011920928955078125f.xxx.y, _480.z > 0.300000011920928955078125f.xxx.z);
    float3 _484 = (pow(_476, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float _494 = max(max(_471.x, _471.y), _471.z);
    float _498 = clamp(_494 - _14_m10.y, 0.0f, _14_m10.z);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0x071C2528:
float3 _529 = clamp(((log2(max(((lerp(_471, (_471 - ((_471 * (max((_14_m10.w * _498) * _498, _494 - _14_m10.x) / max(_494, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_481.x ? _484.x : _476.x, _481.y ? _484.y : _476.y, _481.z ? _484.z : _476.z) * _14_m11.xyz), _14_m9.x.xxx) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _535 = _529.z * _14_m7.z;
    float _536 = floor(_535);
    float2 _542 = ((_529.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _543 = float3(_542.x, _542.y, _529.z);
    _543.x = _542.x + (_536 * _14_m7.y);
    float3 _560 = lerp(_11.SampleLevel(_12, _543.xy, 0.0f).xyz, _11.SampleLevel(_12, _543.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_535 - _536).xxx);
    float3 _561 = _560 * 12.9200000762939453125f;
    float3 _565 = (pow(abs(_560), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _566 = bool3(_560.x <= 0.003130800090730190277099609375f.xxx.x, _560.y <= 0.003130800090730190277099609375f.xxx.y, _560.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_12, _14_m7.xyz, _11, (lerp(_471, (_471 - ((_471 * (max((_14_m10.w * _498) * _498, _494 - _14_m10.x) / max(_494, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_481.x ? _484.x : _476.x, _481.y ? _484.y : _476.y, _481.z ? _484.z : _476.z) * _14_m11.xyz), _14_m9.x.xxx) * _14_m7.w));
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x071C2528:
    _584 = float4(float3(_566.x ? _561.x : _565.x, _566.y ? _561.y : _565.y, _566.z ? _561.z : _565.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_168.w, 1.0f));
    */
    _584 = float4(renodx_encoded, min(_168.w, 1.0f));
    // RenoDX code end
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _584.xyz = renodx::color::srgb::DecodeSafe(_584.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _584.xyz = renodx::effects::ApplyFilmGrain(_584.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _584.xyz = renodx::draw::RenderIntermediatePass(_584.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _584;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

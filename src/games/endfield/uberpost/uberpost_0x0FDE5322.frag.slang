#include "../common.hlsl"

// Native Vulkan 0x0FDE5322; retains the updated split-view control flow.
[[vk::binding(5, 3)]] cbuffer _5_6 : register(b5, space3) {
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

[[vk::binding(4, 3)]] cbuffer _12_13 : register(b4, space3) {
  float4 _13_m0 : packoffset(c0);
  float4 _13_m1 : packoffset(c1);
  float4 _13_m2 : packoffset(c2);
  float4 _13_m3 : packoffset(c3);
  float4 _13_m4 : packoffset(c4);
  float4 _13_m5 : packoffset(c5);
  float4 _13_m6 : packoffset(c6);
  float4 _13_m7 : packoffset(c7);
  float4 _13_m8 : packoffset(c8);
  float4 _13_m9 : packoffset(c9);
  float4 _13_m10 : packoffset(c10);
  float4 _13_m11 : packoffset(c11);
  float4 _13_m12 : packoffset(c12);
  float4 _13_m13 : packoffset(c13);
  float4 _13_m14 : packoffset(c14);
  float4 _13_m15 : packoffset(c15);
  float4 _13_m16 : packoffset(c16);
  float4 _13_m17 : packoffset(c17);
  float4 _13_m18 : packoffset(c18);
  float4 _13_m19 : packoffset(c19);
  float4 _13_m20 : packoffset(c20);
  float4 _13_m21 : packoffset(c21);
  float4 _13_m22 : packoffset(c22);
  float4 _13_m23 : packoffset(c23);
  float4 _13_m24 : packoffset(c24);
  float4 _13_m25 : packoffset(c25);
  float4 _13_m26 : packoffset(c26);
  float4 _13_m27 : packoffset(c27);
  float4 _13_m28 : packoffset(c28);
};

[[vk::binding(3, 3)]] Texture2D<float4> _9 : register(t3, space3);
[[vk::binding(2, 3)]] Texture2D<float4> _10 : register(t2, space3);
[[vk::binding(1, 3)]] SamplerState _11 : register(s1, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _526;
  do {
    float _114 = dot(_13_m26.xy, _3) + _13_m26.z;
    bool4 _116 = (_114 < 0.0f).xxxx;
    float4 _121 = float4(_116.x ? _13_m27.x : _13_m28.x, _116.y ? _13_m27.y : _13_m28.y, _116.z ? _13_m27.z : _13_m28.z, _116.w ? _13_m27.w : _13_m28.w);
    if (abs(_114) <= _13_m26.w) {
      _526 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _128 = _121.xy;
    float2 _131 = (_3 * _128) + _121.zw;
    if (any(bool2(_131.x < 0.0f.xx.x, _131.y < 0.0f.xx.y)) || any(bool2(_131.x > 1.0f.xx.x, _131.y > 1.0f.xx.y))) {
      _526 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _142 = _3 - _13_m0.xy;
    float _144 = sqrt(dot(_142, _142));
    float _146 = 1.0f / max(0.00999999977648258209228515625f, _144);
    float2 _152 = _142 * pow(_144 * _144, _13_m0.w * 0.5f);
    float4 _156 = _9.SampleLevel(_11, _131, 0.0f);
    float3 _159 = _156.xyz * float3(1.0f, 0.0f, 0.0f);
    float3 _298;
    [branch] if (_13_m25.x > 3.0f) {
      bool2 _173 = ((_13_m25.w != 0.0f) || (_13_m25.z != 0.0f)).xx;
      float2 _174 = _152 * _146;
      float2 _176 = float2(_173.x ? _174.x : _152.x, _173.y ? _174.y : _152.y) * _128;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          float _181 = _13_m0.z + _13_m25.y;
      */
      float _181 = (_13_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          float _210 = 2.0f * _13_m25.y;
      */
      float _210 = 2.0f * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          float _221 = 2.0f * _13_m0.z;
      */
      float _221 = 2.0f * (_13_m0.z * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          float _222 = 3.0f * _13_m25.y;
      */
      float _222 = 3.0f * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          float3 _263 = ((((((((_159 + (_9.SampleLevel(_11, _131 - (_176 * _181), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (2.0f * _181)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * _13_m25.y), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_13_m0.z + _210)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_221 + _222)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * _210), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_13_m0.z + _222)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_221 + (4.0f * _13_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      */
      float3 _263 = ((((((((_159 + (_9.SampleLevel(_11, _131 - (_176 * _181), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (2.0f * _181)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * ((_13_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _210)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_221 + _222)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_176 * _210), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_11, _131 - (_176 * ((_13_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _222)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_11, _131 - (_176 * (_221 + (4.0f * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      // RenoDX code end
      _298 = _263;
    }
    else {
      bool2 _267 = (_13_m25.w != 0.0f).xx;
      float2 _268 = _152 * _146;
      float2 _270 = float2(_267.x ? _268.x : _152.x, _267.y ? _268.y : _152.y) * _128;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x0FDE5322:
          _298 = (_159 + (_9.SampleLevel(_11, _131 - (_270 * (_13_m0.z + (2.0f * _13_m25.y))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_270 * ((2.0f * _13_m0.z) + (3.0f * _13_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      */
      _298 = (_159 + (_9.SampleLevel(_11, _131 - (_270 * ((_13_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (2.0f * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_11, _131 - (_270 * ((2.0f * (_13_m0.z * CHROMATIC_ABERRATION_STRENGTH)) + (3.0f * (_13_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      // RenoDX code end
    }
    float3 _304 = float3(_6_m0.z, _6_m0.w, 0.0f);
    float2 _307 = _304.zy;
    float4 _310 = _9.SampleLevel(_11, _131 + _307, 0.0f);
    float2 _313 = _304.xz;
    float4 _316 = _9.SampleLevel(_11, _131 - _313, 0.0f);
    float4 _321 = _9.SampleLevel(_11, _131 + _313, 0.0f);
    float4 _326 = _9.SampleLevel(_11, _131 - _307, 0.0f);
    float _329 = _310.x;
    float _330 = _310.y;
    float _331 = _310.z;
    float _332 = _316.x;
    float _333 = _316.y;
    float _334 = _316.z;
    float _338 = _321.x;
    float _339 = _321.y;
    float _340 = _321.z;
    float _341 = _326.x;
    float _342 = _326.y;
    float _343 = _326.z;
    float _347 = (_331 * 0.5f) + ((_329 * 0.5f) + _330);
    float _351 = (_334 * 0.5f) + ((_332 * 0.5f) + _333);
    float _355 = (_298.z * 0.5f) + ((_298.x * 0.5f) + _298.y);
    float _359 = (_340 * 0.5f) + ((_338 * 0.5f) + _339);
    float _363 = (_343 * 0.5f) + ((_341 * 0.5f) + _342);
    float _386 = min(min(_329, min(_332, _338)), _341);
    float _389 = min(min(_330, min(_333, _339)), _342);
    float _392 = min(min(_331, min(_334, _340)), _343);
    float _395 = max(max(_329, max(_332, _338)), _341);
    float _398 = max(max(_330, max(_333, _339)), _342);
    float _401 = max(max(_331, max(_334, _340)), _343);
    float _434 = (max(-0.1875f, min(max(max(-(_386 * (0.25f / _395)), (1.0f - _395) * (1.0f / ((4.0f * _386) + (-4.0f)))), max(max(-(_389 * (0.25f / _398)), (1.0f - _398) * (1.0f / ((4.0f * _389) + (-4.0f)))), max(-(_392 * (0.25f / _401)), (1.0f - _401) * (1.0f / ((4.0f * _392) + (-4.0f)))))), 0.0f)) * _13_m24.x) * (((-0.5f) * clamp(abs((0.25f * (((_347 + _351) + _359) + _363)) - _355) * (1.0f / (max(max(_347, max(_351, _355)), max(_359, _363)) - min(min(_347, min(_351, _355)), min(_359, _363)))), 0.0f, 1.0f)) + 1.0f);
    float _437 = 1.0f / ((4.0f * _434) + 1.0f);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0x0FDE5322:
float3 _471 = clamp(((log2(max((((float3(((_434 * (((_329 + _332) + _341) + _338)) + _298.x) * _437, ((_434 * (((_330 + _333) + _342) + _339)) + _298.y) * _437, ((_434 * (((_331 + _334) + _343) + _340)) + _298.z) * _437) * _6_m20.x) * _13_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _477 = _471.z * _13_m7.z;
    float _478 = floor(_477);
    float2 _484 = ((_471.xy * _13_m7.z) * _13_m7.xy) + (_13_m7.xy * 0.5f);
    float3 _485 = float3(_484.x, _484.y, _471.z);
    _485.x = _484.x + (_478 * _13_m7.y);
    float3 _502 = lerp(_10.SampleLevel(_11, _485.xy, 0.0f).xyz, _10.SampleLevel(_11, _485.xy + float2(_13_m7.y, 0.0f), 0.0f).xyz, (_477 - _478).xxx);
    float3 _503 = _502 * 12.9200000762939453125f;
    float3 _507 = (pow(abs(_502), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _508 = bool3(_502.x <= 0.003130800090730190277099609375f.xxx.x, _502.y <= 0.003130800090730190277099609375f.xxx.y, _502.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_11, _13_m7.xyz, _10, ((float3(((_434 * (((_329 + _332) + _341) + _338)) + _298.x) * _437, ((_434 * (((_330 + _333) + _342) + _339)) + _298.y) * _437, ((_434 * (((_331 + _334) + _343) + _340)) + _298.z) * _437) * _6_m20.x) * _13_m7.w));
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x0FDE5322:
    _526 = float4(float3(_508.x ? _503.x : _507.x, _508.y ? _503.y : _507.y, _508.z ? _503.z : _507.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_156.w, 1.0f));
    */
    _526 = float4(renodx_encoded, min(_156.w, 1.0f));
    // RenoDX code end
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _526.xyz = renodx::color::srgb::DecodeSafe(_526.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _526.xyz = renodx::effects::ApplyFilmGrain(_526.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _526.xyz = renodx::draw::RenderIntermediatePass(_526.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _526;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

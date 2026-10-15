#include "../common.hlsl"

// Native Vulkan 0x580F67D0; retains the updated split-view control flow.
[[vk::binding(8, 3)]] cbuffer _5_6 : register(b8, space3) {
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

[[vk::binding(7, 3)]] cbuffer _15_16 : register(b7, space3) {
  float4 _16_m0 : packoffset(c0);
  float4 _16_m1 : packoffset(c1);
  float4 _16_m2 : packoffset(c2);
  float4 _16_m3 : packoffset(c3);
  float4 _16_m4 : packoffset(c4);
  float4 _16_m5 : packoffset(c5);
  float4 _16_m6 : packoffset(c6);
  float4 _16_m7 : packoffset(c7);
  float4 _16_m8 : packoffset(c8);
  float4 _16_m9 : packoffset(c9);
  float4 _16_m10 : packoffset(c10);
  float4 _16_m11 : packoffset(c11);
  float4 _16_m12 : packoffset(c12);
  float4 _16_m13 : packoffset(c13);
  float4 _16_m14 : packoffset(c14);
  float4 _16_m15 : packoffset(c15);
  float4 _16_m16 : packoffset(c16);
  float4 _16_m17 : packoffset(c17);
  float4 _16_m18 : packoffset(c18);
  float4 _16_m19 : packoffset(c19);
  float4 _16_m20 : packoffset(c20);
  float4 _16_m21 : packoffset(c21);
  float4 _16_m22 : packoffset(c22);
  float4 _16_m23 : packoffset(c23);
  float4 _16_m24 : packoffset(c24);
  float4 _16_m25 : packoffset(c25);
  float4 _16_m26 : packoffset(c26);
  float4 _16_m27 : packoffset(c27);
  float4 _16_m28 : packoffset(c28);
};

[[vk::binding(4, 3)]] Texture2D<float4> _9 : register(t4, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _10 : register(t6, space3);
[[vk::binding(3, 3)]] Texture2D<float4> _11 : register(t3, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _12 : register(t5, space3);
[[vk::binding(2, 3)]] SamplerState _13 : register(s2, space3);
[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _608;
  do {
    float _129 = dot(_16_m26.xy, _3) + _16_m26.z;
    bool4 _131 = (_129 < 0.0f).xxxx;
    float4 _136 = float4(_131.x ? _16_m27.x : _16_m28.x, _131.y ? _16_m27.y : _16_m28.y, _131.z ? _16_m27.z : _16_m28.z, _131.w ? _16_m27.w : _16_m28.w);
    if (abs(_129) <= _16_m26.w) {
      _608 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _143 = _136.xy;
    float2 _146 = (_3 * _143) + _136.zw;
    if (any(bool2(_146.x < 0.0f.xx.x, _146.y < 0.0f.xx.y)) || any(bool2(_146.x > 1.0f.xx.x, _146.y > 1.0f.xx.y))) {
      _608 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _157 = _3 - _16_m0.xy;
    float _159 = sqrt(dot(_157, _157));
    float _161 = 1.0f / max(0.00999999977648258209228515625f, _159);
    float2 _167 = _157 * pow(_159 * _159, _16_m0.w * 0.5f);
    float4 _171 = _9.SampleLevel(_14, _146, 0.0f);
    float3 _174 = _171.xyz * float3(1.0f, 0.0f, 0.0f);
    float3 _313;
    [branch] if (_16_m25.x > 3.0f) {
      bool2 _188 = ((_16_m25.w != 0.0f) || (_16_m25.z != 0.0f)).xx;
      float2 _189 = _167 * _161;
      float2 _191 = float2(_188.x ? _189.x : _167.x, _188.y ? _189.y : _167.y) * _143;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          float _196 = _16_m0.z + _16_m25.y;
      */
      float _196 = (_16_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          float _225 = 2.0f * _16_m25.y;
      */
      float _225 = 2.0f * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          float _236 = 2.0f * _16_m0.z;
      */
      float _236 = 2.0f * (_16_m0.z * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          float _237 = 3.0f * _16_m25.y;
      */
      float _237 = 3.0f * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH);
      // RenoDX code end
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          float3 _278 = ((((((((_174 + (_9.SampleLevel(_14, _146 - (_191 * _196), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (2.0f * _196)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * _16_m25.y), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_16_m0.z + _225)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_236 + _237)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * _225), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_16_m0.z + _237)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_236 + (4.0f * _16_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      */
      float3 _278 = ((((((((_174 + (_9.SampleLevel(_14, _146 - (_191 * _196), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (2.0f * _196)), 0.0f).xyz * float3(1.0f, 0.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * ((_16_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _225)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_236 + _237)), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_191 * _225), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_14, _146 - (_191 * ((_16_m0.z * CHROMATIC_ABERRATION_STRENGTH) + _237)), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) + (_9.SampleLevel(_14, _146 - (_191 * (_236 + (4.0f * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f))) * 0.3333334028720855712890625f;
      // RenoDX code end
      _313 = _278;
    }
    else {
      bool2 _282 = (_16_m25.w != 0.0f).xx;
      float2 _283 = _167 * _161;
      float2 _285 = float2(_282.x ? _283.x : _167.x, _282.y ? _283.y : _167.y) * _143;
      // RenoDX code start: retain the existing post-effect control.
      /* Vanilla 0x580F67D0:
          _313 = (_174 + (_9.SampleLevel(_14, _146 - (_285 * (_16_m0.z + (2.0f * _16_m25.y))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_285 * ((2.0f * _16_m0.z) + (3.0f * _16_m25.y))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      */
      _313 = (_174 + (_9.SampleLevel(_14, _146 - (_285 * ((_16_m0.z * CHROMATIC_ABERRATION_STRENGTH) + (2.0f * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 1.0f, 0.0f))) + (_9.SampleLevel(_14, _146 - (_285 * ((2.0f * (_16_m0.z * CHROMATIC_ABERRATION_STRENGTH)) + (3.0f * (_16_m25.y * CHROMATIC_ABERRATION_STRENGTH)))), 0.0f).xyz * float3(0.0f, 0.0f, 1.0f));
      // RenoDX code end
    }
    float3 _319 = float3(_6_m0.z, _6_m0.w, 0.0f);
    float2 _322 = _319.zy;
    float4 _325 = _9.SampleLevel(_14, _146 + _322, 0.0f);
    float2 _328 = _319.xz;
    float4 _331 = _9.SampleLevel(_14, _146 - _328, 0.0f);
    float4 _336 = _9.SampleLevel(_14, _146 + _328, 0.0f);
    float4 _341 = _9.SampleLevel(_14, _146 - _322, 0.0f);
    float _344 = _325.x;
    float _345 = _325.y;
    float _346 = _325.z;
    float _347 = _331.x;
    float _348 = _331.y;
    float _349 = _331.z;
    float _353 = _336.x;
    float _354 = _336.y;
    float _355 = _336.z;
    float _356 = _341.x;
    float _357 = _341.y;
    float _358 = _341.z;
    float _362 = (_346 * 0.5f) + ((_344 * 0.5f) + _345);
    float _366 = (_349 * 0.5f) + ((_347 * 0.5f) + _348);
    float _370 = (_313.z * 0.5f) + ((_313.x * 0.5f) + _313.y);
    float _374 = (_355 * 0.5f) + ((_353 * 0.5f) + _354);
    float _378 = (_358 * 0.5f) + ((_356 * 0.5f) + _357);
    float _401 = min(min(_344, min(_347, _353)), _356);
    float _404 = min(min(_345, min(_348, _354)), _357);
    float _407 = min(min(_346, min(_349, _355)), _358);
    float _410 = max(max(_344, max(_347, _353)), _356);
    float _413 = max(max(_345, max(_348, _354)), _357);
    float _416 = max(max(_346, max(_349, _355)), _358);
    float _449 = (max(-0.1875f, min(max(max(-(_401 * (0.25f / _410)), (1.0f - _410) * (1.0f / ((4.0f * _401) + (-4.0f)))), max(max(-(_404 * (0.25f / _413)), (1.0f - _413) * (1.0f / ((4.0f * _404) + (-4.0f)))), max(-(_407 * (0.25f / _416)), (1.0f - _416) * (1.0f / ((4.0f * _407) + (-4.0f)))))), 0.0f)) * _16_m24.x) * (((-0.5f) * clamp(abs((0.25f * (((_362 + _366) + _374) + _378)) - _370) * (1.0f / (max(max(_362, max(_366, _370)), max(_374, _378)) - min(min(_362, min(_366, _370)), min(_374, _378)))), 0.0f, 1.0f)) + 1.0f);
    float _452 = 1.0f / ((4.0f * _449) + 1.0f);
    float3 _474 = float3(((_449 * (((_344 + _347) + _356) + _353)) + _313.x) * _452, ((_449 * (((_345 + _348) + _357) + _354)) + _313.y) * _452, ((_449 * (((_346 + _349) + _358) + _355)) + _313.z) * _452) * _6_m20.x;
    float3 _479 = _10.SampleLevel(_14, _146, 0.0f).xyz;
    float3 _483 = _479 * (1.0f - _16_m9.z);
    bool3 _484 = bool3(_483.x > 0.300000011920928955078125f.xxx.x, _483.y > 0.300000011920928955078125f.xxx.y, _483.z > 0.300000011920928955078125f.xxx.z);
    float3 _487 = (pow(_479, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float _497 = max(max(_474.x, _474.y), _474.z);
    float _501 = clamp(_497 - _16_m10.y, 0.0f, _16_m10.z);
    float4 _524 = _12.SampleLevel(_13, _3, 0.0f);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0x580F67D0:
float3 _553 = clamp(((log2(max((((lerp(_474, (_474 - ((_474 * (max((_16_m10.w * _501) * _501, _497 - _16_m10.x) / max(_497, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_484.x ? _487.x : _479.x, _484.y ? _487.y : _479.y, _484.z ? _487.z : _479.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _524.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_524.x, _524.y), _524.z) - 0.20000000298023223876953125f)).xxx)) * _16_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _559 = _553.z * _16_m7.z;
    float _560 = floor(_559);
    float2 _566 = ((_553.xy * _16_m7.z) * _16_m7.xy) + (_16_m7.xy * 0.5f);
    float3 _567 = float3(_566.x, _566.y, _553.z);
    _567.x = _566.x + (_560 * _16_m7.y);
    float3 _584 = lerp(_11.SampleLevel(_14, _567.xy, 0.0f).xyz, _11.SampleLevel(_14, _567.xy + float2(_16_m7.y, 0.0f), 0.0f).xyz, (_559 - _560).xxx);
    float3 _585 = _584 * 12.9200000762939453125f;
    float3 _589 = (pow(abs(_584), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _590 = bool3(_584.x <= 0.003130800090730190277099609375f.xxx.x, _584.y <= 0.003130800090730190277099609375f.xxx.y, _584.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_14, _16_m7.xyz, _11, ((lerp(_474, (_474 - ((_474 * (max((_16_m10.w * _501) * _501, _497 - _16_m10.x) / max(_497, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_484.x ? _487.x : _479.x, _484.y ? _487.y : _479.y, _484.z ? _487.z : _479.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _524.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_524.x, _524.y), _524.z) - 0.20000000298023223876953125f)).xxx)) * _16_m7.w));
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x580F67D0:
    float3 _602 = float3(_590.x ? _585.x : _589.x, _590.y ? _585.y : _589.y, _590.z ? _585.z : _589.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f);
    */
    float3 _602 = renodx_encoded;
    // RenoDX code end
    _608 = float4(_602, min(_171.w, 1.0f));
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _608.xyz = renodx::color::srgb::DecodeSafe(_608.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _608.xyz = renodx::effects::ApplyFilmGrain(_608.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _608.xyz = renodx::draw::RenderIntermediatePass(_608.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _608;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

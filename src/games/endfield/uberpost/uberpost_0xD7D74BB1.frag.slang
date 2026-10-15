#include "../common.hlsl"

// Native Vulkan 0xD7D74BB1; retains the updated split-view control flow.
static const float _88[5] = {0.5f, 1.0f, 1.5f, 2.0f, 2.5f};

[[vk::binding(5, 3)]] cbuffer _11_12 : register(b5, space3) {
  float4 _12_m0 : packoffset(c0);
  float4 _12_m1 : packoffset(c1);
  float4 _12_m2 : packoffset(c2);
  float4 _12_m3 : packoffset(c3);
  float4 _12_m4 : packoffset(c4);
  float4 _12_m5 : packoffset(c5);
  float4 _12_m6 : packoffset(c6);
  float4 _12_m7 : packoffset(c7);
  float4 _12_m8 : packoffset(c8);
  float4 _12_m9 : packoffset(c9);
  float4 _12_m10 : packoffset(c10);
  float4 _12_m11 : packoffset(c11);
  float4 _12_m12 : packoffset(c12);
  float4 _12_m13 : packoffset(c13);
  float4 _12_m14 : packoffset(c14);
  float4 _12_m15 : packoffset(c15);
  float4 _12_m16 : packoffset(c16);
  float4 _12_m17 : packoffset(c17);
  float4 _12_m18 : packoffset(c18);
  float4 _12_m19 : packoffset(c19);
  float4 _12_m20 : packoffset(c20);
  float4 _12_m21 : packoffset(c21);
  float4 _12_m22 : packoffset(c22);
  float4 _12_m23 : packoffset(c23);
  float4 _12_m24 : packoffset(c24);
  float4 _12_m25 : packoffset(c25);
  float4 _12_m26 : packoffset(c26);
  float4 _12_m27 : packoffset(c27);
  float4 _12_m28 : packoffset(c28);
};

[[vk::binding(3, 3)]] Texture2D<float4> _7 : register(t3, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _8 : register(t4, space3);
[[vk::binding(2, 3)]] Texture2D<float4> _9 : register(t2, space3);
[[vk::binding(1, 3)]] SamplerState _10 : register(s1, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _313;
  do {
    float _106 = dot(_12_m26.xy, _3) + _12_m26.z;
    bool4 _108 = (_106 < 0.0f).xxxx;
    float4 _113 = float4(_108.x ? _12_m27.x : _12_m28.x, _108.y ? _12_m27.y : _12_m28.y, _108.z ? _12_m27.z : _12_m28.z, _108.w ? _12_m27.w : _12_m28.w);
    if (abs(_106) <= _12_m26.w) {
      _313 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _120 = _113.xy;
    float2 _123 = (_3 * _120) + _113.zw;
    if (any(bool2(_123.x < 0.0f.xx.x, _123.y < 0.0f.xx.y)) || any(bool2(_123.x > 1.0f.xx.x, _123.y > 1.0f.xx.y))) {
      _313 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float4 _134 = _7.SampleLevel(_10, _123, 0.0f);
    float2 _138 = _3 - _12_m0.xy;
    float _140 = sqrt(dot(_138, _138));
    float2 _151 = ((_138 * pow(_140, _12_m0.w)) * lerp(1.0f, 1.0f / max(0.00999999977648258209228515625f, _140), _12_m25.z)) * _120;
    float3 _155;
    _155 = _134.xyz;
    for (int _158 = 0; _158 < 5;) {
      _155 += _7.SampleLevel(_10, _123 - (_151 * (_88[_158] * _12_m0.z)), 0.0f).xyz;
      _158++;
      continue;
    }
    float3 _174 = _155 * 0.16666667163372039794921875f.xxx;
    float4 _178 = _8.SampleLevel(_10, _123, 0.0f);
    float3 _179 = _178.xyz;
    float3 _183 = _179 * (1.0f - _12_m9.z);
    bool3 _184 = bool3(_183.x > 0.300000011920928955078125f.xxx.x, _183.y > 0.300000011920928955078125f.xxx.y, _183.z > 0.300000011920928955078125f.xxx.z);
    float3 _187 = (pow(_179, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float3 _189 = _174.xyz;
    float _198 = max(max(_174.x, _174.y), _174.z);
    float _202 = clamp(_198 - _12_m10.y, 0.0f, _12_m10.z);
    float3 _222 = lerp(_189, (_189 - ((_189 * (max((_12_m10.w * _202) * _202, _198 - _12_m10.x) / max(_198, 9.9999997473787516355514526367188e-05f))) * _12_m9.z)) + (float3(_184.x ? _187.x : _179.x, _184.y ? _187.y : _179.y, _184.z ? _187.z : _179.z).xyz * _12_m11.xyz), _12_m9.x.xxx);
    float4 _229 = float4(_222, clamp(_134.w + _178.w, 0.0f, 1.0f));
    float _237 = (_12_m16.z + _12_m16.x) - ((_12_m16.x * _12_m16.z) * 2.0f);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0xD7D74BB1:
float3 _251 = clamp(((log2(max(((_229.xyz * _12_m7.w).xyz * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _257 = _251.z * _12_m7.z;
    float _258 = floor(_257);
    float2 _264 = ((_251.xy * _12_m7.z) * _12_m7.xy) + (_12_m7.xy * 0.5f);
    float3 _265 = float3(_264.x, _264.y, _251.z);
    _265.x = _264.x + (_258 * _12_m7.y);
    float3 _283 = lerp(_9.SampleLevel(_10, _265.xy, 0.0f).xyz, _9.SampleLevel(_10, _265.xy + float2(_12_m7.y, 0.0f), 0.0f).xyz, (_257 - _258).xxx).xyz;
    float3 _284 = _283 * 12.9200000762939453125f;
    float3 _288 = (pow(abs(_283), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _289 = bool3(_283.x <= 0.003130800090730190277099609375f.xxx.x, _283.y <= 0.003130800090730190277099609375f.xxx.y, _283.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_10, _12_m7.xyz, _9, (_229.xyz * _12_m7.w).xyz);
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    float _296 = smoothstep((1.0f - _237) - _12_m16.y, _237 - _12_m16.y, _222.x);
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0xD7D74BB1:
    float3 _311 = lerp(float3(_289.x ? _284.x : _288.x, _289.y ? _284.y : _288.y, _289.z ? _284.z : _288.z).xyz, (_12_m21.xyz * _296) + (_12_m22.xyz * (1.0f - _296)), _12_m20.w.xxx);
    */
    float3 _311 = lerp(renodx_encoded.xyz, (_12_m21.xyz * _296) + (_12_m22.xyz * (1.0f - _296)), _12_m20.w.xxx);
    // RenoDX code end
    _313 = float4(_311.x, _311.y, _311.z, _229.w);
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _313.xyz = renodx::color::srgb::DecodeSafe(_313.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _313.xyz = renodx::effects::ApplyFilmGrain(_313.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _313.xyz = renodx::draw::RenderIntermediatePass(_313.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _313;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

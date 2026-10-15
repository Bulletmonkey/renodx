#include "../common.hlsl"

// Native Vulkan 0xE43773D6; retains the updated split-view control flow.
static const float _114[5] = {0.5f, 1.0f, 1.5f, 2.0f, 2.5f};

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

[[vk::binding(5, 3)]] Texture2D<float4> _9 : register(t5, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _10 : register(t6, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _11 : register(t4, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _12 : register(t8, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _14 : register(t7, space3);
[[vk::binding(2, 3)]] SamplerState _15 : register(s2, space3);
[[vk::binding(1, 3)]] SamplerState _16 : register(s1, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float4 _426;
  do {
    float _134 = dot(_18_m26.xy, _3) + _18_m26.z;
    bool4 _136 = (_134 < 0.0f).xxxx;
    float4 _141 = float4(_136.x ? _18_m27.x : _18_m28.x, _136.y ? _18_m27.y : _18_m28.y, _136.z ? _18_m27.z : _18_m28.z, _136.w ? _18_m27.w : _18_m28.w);
    if (abs(_134) <= _18_m26.w) {
      _426 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _148 = _141.xy;
    float2 _151 = (_3 * _148) + _141.zw;
    if (any(bool2(_151.x < 0.0f.xx.x, _151.y < 0.0f.xx.y)) || any(bool2(_151.x > 1.0f.xx.x, _151.y > 1.0f.xx.y))) {
      _426 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float4 _162 = _9.SampleLevel(_16, _151, 0.0f);
    float2 _166 = _3 - _18_m0.xy;
    float _168 = sqrt(dot(_166, _166));
    float2 _179 = ((_166 * pow(_168, _18_m0.w)) * lerp(1.0f, 1.0f / max(0.00999999977648258209228515625f, _168), _18_m25.z)) * _148;
    float3 _183;
    _183 = _162.xyz;
    for (int _186 = 0; _186 < 5;) {
      _183 += _9.SampleLevel(_16, _151 - (_179 * (_114[_186] * _18_m0.z)), 0.0f).xyz;
      _186++;
      continue;
    }
    float3 _202 = _183 * 0.16666667163372039794921875f.xxx;
    float4 _206 = _10.SampleLevel(_16, _151, 0.0f);
    float3 _207 = _206.xyz;
    float3 _211 = _207 * (1.0f - _18_m9.z);
    bool3 _212 = bool3(_211.x > 0.300000011920928955078125f.xxx.x, _211.y > 0.300000011920928955078125f.xxx.y, _211.z > 0.300000011920928955078125f.xxx.z);
    float3 _215 = (pow(_207, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float3 _217 = _202.xyz;
    float _226 = max(max(_202.x, _202.y), _202.z);
    float _230 = clamp(_226 - _18_m10.y, 0.0f, _18_m10.z);
    float3 _250 = lerp(_217, (_217 - ((_217 * (max((_18_m10.w * _230) * _230, _226 - _18_m10.x) / max(_226, 9.9999997473787516355514526367188e-05f))) * _18_m9.z)) + (float3(_212.x ? _215.x : _207.x, _212.y ? _215.y : _207.y, _212.z ? _215.z : _207.z).xyz * _18_m11.xyz), _18_m9.x.xxx);
    float4 _257 = float4(_250, clamp(_162.w + _206.w, 0.0f, 1.0f));
    float _265 = (_18_m16.z + _18_m16.x) - ((_18_m16.x * _18_m16.z) * 2.0f);
    float2 _269 = _3 - _18_m17.xy;
    float2 _270 = _269 - 0.5f.xx;
    float _273 = _270.x;
    float _274 = _270.y;
    float _275 = _273 / _274;
    float _276 = abs(_275);
    bool _277 = _276 < 1.0f;
    float _279 = _277 ? _276 : (1.0f / _276);
    float _280 = _279 * _279;
    float _285 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _280)) * _280)) * _279;
    float _287 = _277 ? _285 : (1.57079637050628662109375f - _285);
    float2 _299 = float2(((((_275 < 0.0f) ? (-_287) : _287) + (((_273 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_274 < 0.0f))) - (-3.1415927410125732421875f)) * 0.15915493667125701904296875f, length(_270) * 2.0f);
    float _326 = clamp(((_250.x * _12.SampleBias(_13, ((_299 * _18_m18.xy) + _18_m18.zw) + (_18_m17.zw * _6_m10.y), _6_m16).x) * _18_m20.x) + (_250.x * _18_m20.y), 0.0f, 1.0f);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0xE43773D6:
float3 _364 = clamp(((log2(max(((_257.xyz * _18_m7.w).xyz * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _370 = _364.z * _18_m7.z;
    float _371 = floor(_370);
    float2 _377 = ((_364.xy * _18_m7.z) * _18_m7.xy) + (_18_m7.xy * 0.5f);
    float3 _378 = float3(_377.x, _377.y, _364.z);
    _378.x = _377.x + (_371 * _18_m7.y);
    float3 _396 = lerp(_11.SampleLevel(_16, _378.xy, 0.0f).xyz, _11.SampleLevel(_16, _378.xy + float2(_18_m7.y, 0.0f), 0.0f).xyz, (_370 - _371).xxx).xyz;
    float3 _397 = _396 * 12.9200000762939453125f;
    float3 _401 = (pow(abs(_396), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _402 = bool3(_396.x <= 0.003130800090730190277099609375f.xxx.x, _396.y <= 0.003130800090730190277099609375f.xxx.y, _396.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_16, _18_m7.xyz, _11, (_257.xyz * _18_m7.w).xyz);
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    float _409 = smoothstep((1.0f - _265) - _18_m16.y, _265 - _18_m16.y, (_326 - (_326 * _18_m20.z)) + ((_326 * _14.SampleBias(_15, (((_299 * _18_m16.w) + (_269 * (1.0f - _18_m16.w))) * _18_m19.xy) + _18_m19.zw, _6_m16).x) * _18_m20.z));
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0xE43773D6:
    float3 _424 = lerp(float3(_402.x ? _397.x : _401.x, _402.y ? _397.y : _401.y, _402.z ? _397.z : _401.z).xyz, (_18_m21.xyz * _409) + (_18_m22.xyz * (1.0f - _409)), _18_m20.w.xxx);
    */
    float3 _424 = lerp(renodx_encoded.xyz, (_18_m21.xyz * _409) + (_18_m22.xyz * (1.0f - _409)), _18_m20.w.xxx);
    // RenoDX code end
    _426 = float4(_424.x, _424.y, _424.z, _257.w);
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _426.xyz = renodx::color::srgb::DecodeSafe(_426.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _426.xyz = renodx::effects::ApplyFilmGrain(_426.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _426.xyz = renodx::draw::RenderIntermediatePass(_426.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _426;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

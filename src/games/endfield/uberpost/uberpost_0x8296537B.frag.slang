#include "../common.hlsl"

// Native Vulkan 0x8296537B; retains the updated split-view control flow.
static const float _109[5] = {0.5f, 1.0f, 1.5f, 2.0f, 2.5f};

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
  float4 _474;
  do {
    float _132 = dot(_14_m26.xy, _3) + _14_m26.z;
    bool4 _134 = (_132 < 0.0f).xxxx;
    float4 _139 = float4(_134.x ? _14_m27.x : _14_m28.x, _134.y ? _14_m27.y : _14_m28.y, _134.z ? _14_m27.z : _14_m28.z, _134.w ? _14_m27.w : _14_m28.w);
    if (abs(_132) <= _14_m26.w) {
      _474 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _146 = _139.xy;
    float2 _149 = (_3 * _146) + _139.zw;
    if (any(bool2(_149.x < 0.0f.xx.x, _149.y < 0.0f.xx.y)) || any(bool2(_149.x > 1.0f.xx.x, _149.y > 1.0f.xx.y))) {
      _474 = float4(0.0f, 0.0f, 0.0f, 1.0f);
      break;
    }
    float2 _160 = _3 - _14_m0.xy;
    float _162 = sqrt(dot(_160, _160));
    float2 _173 = ((_160 * pow(_162, _14_m0.w)) * lerp(1.0f, 1.0f / max(0.00999999977648258209228515625f, _162), _14_m25.z)) * _146;
    float4 _177 = _9.SampleLevel(_12, _149, 0.0f);
    float3 _181;
    _181 = _177.xyz;
    for (int _184 = 0; _184 < 5;) {
      _181 += _9.SampleLevel(_12, _149 - (_173 * (_109[_184] * _14_m0.z)), 0.0f).xyz;
      _184++;
      continue;
    }
    float3 _200 = _181 * 0.16666667163372039794921875f.xxx;
    float3 _206 = float3(_6_m0.z, _6_m0.w, 0.0f);
    float2 _209 = _206.zy;
    float4 _212 = _9.SampleLevel(_12, _149 + _209, 0.0f);
    float2 _215 = _206.xz;
    float4 _218 = _9.SampleLevel(_12, _149 - _215, 0.0f);
    float4 _223 = _9.SampleLevel(_12, _149 + _215, 0.0f);
    float4 _228 = _9.SampleLevel(_12, _149 - _209, 0.0f);
    float _231 = _212.x;
    float _232 = _212.y;
    float _233 = _212.z;
    float _234 = _218.x;
    float _235 = _218.y;
    float _236 = _218.z;
    float _237 = _200.x;
    float _238 = _200.y;
    float _239 = _200.z;
    float _240 = _223.x;
    float _241 = _223.y;
    float _242 = _223.z;
    float _243 = _228.x;
    float _244 = _228.y;
    float _245 = _228.z;
    float _249 = (_233 * 0.5f) + ((_231 * 0.5f) + _232);
    float _253 = (_236 * 0.5f) + ((_234 * 0.5f) + _235);
    float _257 = (_239 * 0.5f) + ((_237 * 0.5f) + _238);
    float _261 = (_242 * 0.5f) + ((_240 * 0.5f) + _241);
    float _265 = (_245 * 0.5f) + ((_243 * 0.5f) + _244);
    float _288 = min(min(_231, min(_234, _240)), _243);
    float _291 = min(min(_232, min(_235, _241)), _244);
    float _294 = min(min(_233, min(_236, _242)), _245);
    float _297 = max(max(_231, max(_234, _240)), _243);
    float _300 = max(max(_232, max(_235, _241)), _244);
    float _303 = max(max(_233, max(_236, _242)), _245);
    float _336 = (max(-0.1875f, min(max(max(-(_288 * (0.25f / _297)), (1.0f - _297) * (1.0f / ((4.0f * _288) + (-4.0f)))), max(max(-(_291 * (0.25f / _300)), (1.0f - _300) * (1.0f / ((4.0f * _291) + (-4.0f)))), max(-(_294 * (0.25f / _303)), (1.0f - _303) * (1.0f / ((4.0f * _294) + (-4.0f)))))), 0.0f)) * _14_m24.x) * (((-0.5f) * clamp(abs((0.25f * (((_249 + _253) + _261) + _265)) - _257) * (1.0f / (max(max(_249, max(_253, _257)), max(_261, _265)) - min(min(_249, min(_253, _257)), min(_261, _265)))), 0.0f, 1.0f)) + 1.0f);
    float _339 = 1.0f / ((4.0f * _336) + 1.0f);
    float3 _361 = float3(((_336 * (((_231 + _234) + _243) + _240)) + _237) * _339, ((_336 * (((_232 + _235) + _244) + _241)) + _238) * _339, ((_336 * (((_233 + _236) + _245) + _242)) + _239) * _339) * _6_m20.x;
    float3 _366 = _10.SampleLevel(_12, _149, 0.0f).xyz;
    float3 _370 = _366 * (1.0f - _14_m9.z);
    bool3 _371 = bool3(_370.x > 0.300000011920928955078125f.xxx.x, _370.y > 0.300000011920928955078125f.xxx.y, _370.z > 0.300000011920928955078125f.xxx.z);
    float3 _374 = (pow(_366, 0.3300000131130218505859375f.xxx) * 1.49380004405975341796875f) - 0.699999988079071044921875f.xxx;
    float _384 = max(max(_361.x, _361.y), _361.z);
    float _388 = clamp(_384 - _14_m10.y, 0.0f, _14_m10.z);

    // RenoDX code start: grade the native linear scene before the LUT/output transfer.
    /* Vanilla 0x8296537B:
float3 _419 = clamp(((log2(max(((lerp(_361, (_361 - ((_361 * (max((_14_m10.w * _388) * _388, _384 - _14_m10.x) / max(_384, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_371.x ? _374.x : _366.x, _371.y ? _374.y : _366.y, _371.z ? _374.z : _366.z) * _14_m11.xyz), _14_m9.x.xxx) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _425 = _419.z * _14_m7.z;
    float _426 = floor(_425);
    float2 _432 = ((_419.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _433 = float3(_432.x, _432.y, _419.z);
    _433.x = _432.x + (_426 * _14_m7.y);
    float3 _450 = lerp(_11.SampleLevel(_12, _433.xy, 0.0f).xyz, _11.SampleLevel(_12, _433.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_425 - _426).xxx);
    float3 _451 = _450 * 12.9200000762939453125f;
    float3 _455 = (pow(abs(_450), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _456 = bool3(_450.x <= 0.003130800090730190277099609375f.xxx.x, _450.y <= 0.003130800090730190277099609375f.xxx.y, _450.z <= 0.003130800090730190277099609375f.xxx.z);
    */
    LUTSampleResult lut_sample = LUTSAMPLE(_12, _14_m7.xyz, _11, (lerp(_361, (_361 - ((_361 * (max((_14_m10.w * _388) * _388, _384 - _14_m10.x) / max(_384, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_371.x ? _374.x : _366.x, _371.y ? _374.y : _366.y, _371.z ? _374.z : _366.z) * _14_m11.xyz), _14_m9.x.xxx) * _14_m7.w));
    float3 renodx_color = shader_injection.tone_map_type == 0.f ? SDRGRADE(lut_sample) : HDRGRADE(lut_sample);
    float3 renodx_encoded = renodx::color::srgb::EncodeSafe(renodx_color);
    // RenoDX code end
    // RenoDX code start: use the graded output and optional grain.
    /* Vanilla 0x8296537B:
    _474 = float4(float3(_456.x ? _451.x : _455.x, _456.y ? _451.y : _455.y, _456.z ? _451.z : _455.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_177.w, 1.0f));
    */
    _474 = float4(renodx_encoded, min(_177.w, 1.0f));
    // RenoDX code end
    // RenoDX code start: return the native composite to linear and encode the HDR intermediate.
    _474.xyz = renodx::color::srgb::DecodeSafe(_474.xyz);
    if (CUSTOM_GRAIN_STRENGTH > 0.f) {
      _474.xyz = renodx::effects::ApplyFilmGrain(_474.xyz, _3, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
    }
    _474.xyz = renodx::draw::RenderIntermediatePass(_474.xyz);
    // RenoDX code end
    break;
  } while (false);
  _4 = _474;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

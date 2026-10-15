#include "../shared.h"

static const int2 _91[9] = {int2(-1, -1), int2(0, -1), int2(1, -1), int2(-1, 0), int2(0, 0), int2(1, 0), int2(-1, 1), int2(0, 1), int2(1, 1)};

[[vk::binding(0, 1)]] cbuffer _4_5 : register(b0, space1) {
  float4 _5_m0 : packoffset(c0);
  float4 _5_m1 : packoffset(c1);
  float4 _5_m2 : packoffset(c2);
  float4 _5_m3 : packoffset(c3);
  float4 _5_m4 : packoffset(c4);
  float4 _5_m5 : packoffset(c5);
  float4 _5_m6[6] : packoffset(c6);
  float4 _5_m7[6] : packoffset(c12);
  float4 _5_m8 : packoffset(c18);
  float4 _5_m9 : packoffset(c19);
  float4 _5_m10 : packoffset(c20);
  float4 _5_m11 : packoffset(c21);
  float4 _5_m12 : packoffset(c22);
  float4 _5_m13 : packoffset(c23);
  float4 _5_m14 : packoffset(c24);
  float4 _5_m15 : packoffset(c25);
  float _5_m16 : packoffset(c26);
  float _5_m17 : packoffset(c26.y);
  float _5_m18 : packoffset(c26.z);
  uint _5_m19 : packoffset(c26.w);
  float4 _5_m20 : packoffset(c27);
  int4 _5_m21 : packoffset(c28);
  float4 _5_m22 : packoffset(c29);
  float4 _5_m23 : packoffset(c30);
  float4 _5_m24 : packoffset(c31);
  float4 _5_m25 : packoffset(c32);
  float4 _5_m26 : packoffset(c33);
  float4 _5_m27 : packoffset(c34);
  float4 _5_m28 : packoffset(c35);
  float4 _5_m29 : packoffset(c36);
  float4 _5_m30 : packoffset(c37);
  float4 _5_m31 : packoffset(c38);
  float4 _5_m32[4] : packoffset(c39);
  float4 _5_m33[4] : packoffset(c43);
  float4 _5_m34[4] : packoffset(c47);
  float4 _5_m35[4] : packoffset(c51);
  float4 _5_m36 : packoffset(c55);
  float4 _5_m37 : packoffset(c56);
  float4 _5_m38[4] : packoffset(c57);
  float4 _5_m39[4] : packoffset(c61);
  float4 _5_m40[4] : packoffset(c65);
  float4 _5_m41 : packoffset(c69);
  float4 _5_m42 : packoffset(c70);
  float4 _5_m43 : packoffset(c71);
  float4 _5_m44 : packoffset(c72);
  float4 _5_m45 : packoffset(c73);
  float4 _5_m46 : packoffset(c74);
  float4 _5_m47 : packoffset(c75);
  float4 _5_m48 : packoffset(c76);
  float4 _5_m49 : packoffset(c77);
  float4 _5_m50 : packoffset(c78);
  float4 _5_m51 : packoffset(c79);
  float4 _5_m52 : packoffset(c80);
  float4 _5_m53 : packoffset(c81);
  float4 _5_m54 : packoffset(c82);
  float4 _5_m55 : packoffset(c83);
  float4 _5_m56 : packoffset(c84);
  float4 _5_m57 : packoffset(c85);
  float4 _5_m58 : packoffset(c86);
  float4 _5_m59 : packoffset(c87);
  float4 _5_m60 : packoffset(c88);
  float4 _5_m61 : packoffset(c89);
  float4 _5_m62 : packoffset(c90);
  float4 _5_m63 : packoffset(c91);
  float4 _5_m64 : packoffset(c92);
  float4 _5_m65 : packoffset(c93);
  float4 _5_m66 : packoffset(c94);
  float4 _5_m67 : packoffset(c95);
  float4 _5_m68 : packoffset(c96);
  float4 _5_m69 : packoffset(c97);
  float4 _5_m70 : packoffset(c98);
  float4 _5_m71 : packoffset(c99);
  float4 _5_m72 : packoffset(c100);
  float4 _5_m73 : packoffset(c101);
  float4 _5_m74 : packoffset(c102);
  float4 _5_m75 : packoffset(c103);
  float4 _5_m76 : packoffset(c104);
  float4 _5_m77 : packoffset(c105);
  float4 _5_m78 : packoffset(c106);
  float4 _5_m79 : packoffset(c107);
  float4 _5_m80 : packoffset(c108);
  float4 _5_m81 : packoffset(c109);
  float4 _5_m82 : packoffset(c110);
  float4 _5_m83 : packoffset(c111);
  float4 _5_m84 : packoffset(c112);
  float4 _5_m85 : packoffset(c113);
  float4 _5_m86 : packoffset(c114);
  float4 _5_m87 : packoffset(c115);
  float4 _5_m88 : packoffset(c116);
  float4 _5_m89 : packoffset(c117);
  float4 _5_m90 : packoffset(c118);
  float4 _5_m91 : packoffset(c119);
  float4 _5_m92 : packoffset(c120);
  float4 _5_m93 : packoffset(c121);
  float4 _5_m94 : packoffset(c122);
  float4 _5_m95 : packoffset(c123);
  float4 _5_m96 : packoffset(c124);
  float4 _5_m97 : packoffset(c125);
  float4 _5_m98 : packoffset(c126);
  float4 _5_m99 : packoffset(c127);
  float4 _5_m100 : packoffset(c128);
  float4 _5_m101 : packoffset(c129);
  float4 _5_m102[2] : packoffset(c130);
  float4 _5_m103[2] : packoffset(c132);
  float _5_m104 : packoffset(c134);
  float _5_m105 : packoffset(c134.y);
  float _5_m106 : packoffset(c134.z);
  float _5_m107 : packoffset(c134.w);
  float4 _5_m108 : packoffset(c135);
  float4 _5_m109 : packoffset(c136);
  float4 _5_m110 : packoffset(c137);
  float4 _5_m111 : packoffset(c138);
  float4 _5_m112 : packoffset(c139);
  float4 _5_m113 : packoffset(c140);
  float4 _5_m114 : packoffset(c141);
  float4 _5_m115 : packoffset(c142);
  float4 _5_m116 : packoffset(c143);
  float4 _5_m117 : packoffset(c144);
  float4 _5_m118 : packoffset(c145);
  float4 _5_m119 : packoffset(c146);
  float4 _5_m120 : packoffset(c147);
  float4 _5_m121 : packoffset(c148);
  float4 _5_m122 : packoffset(c149);
  float4 _5_m123 : packoffset(c150);
  float4 _5_m124 : packoffset(c151);
  float4 _5_m125 : packoffset(c152);
  float4 _5_m126 : packoffset(c153);
  float4 _5_m127 : packoffset(c154);
  float4 _5_m128 : packoffset(c155);
  float4 _5_m129 : packoffset(c156);
  float4 _5_m130 : packoffset(c157);
  float4 _5_m131 : packoffset(c158);
  float4 _5_m132 : packoffset(c159);
  float4 _5_m133 : packoffset(c160);
  float4 _5_m134 : packoffset(c161);
  float4 _5_m135 : packoffset(c162);
  float4 _5_m136 : packoffset(c163);
  float4 _5_m137 : packoffset(c164);
  column_major float4x4 _5_m138 : packoffset(c165);
  float4 _5_m139 : packoffset(c169);
  float4 _5_m140 : packoffset(c170);
  float4 _5_m141 : packoffset(c171);
  float4 _5_m142 : packoffset(c172);
  int4 _5_m143 : packoffset(c173);
  int4 _5_m144 : packoffset(c174);
  int4 _5_m145 : packoffset(c175);
  float4 _5_m146[32] : packoffset(c176);
};

[[vk::binding(5, 0)]] SamplerState _7 : register(s5, space0);
[[vk::binding(1, 0)]] Texture2D<float4> _9 : register(t1, space0);
[[vk::binding(2, 0)]] Texture2D<float4> _10 : register(t2, space0);
[[vk::binding(3, 0)]] Texture2D<float4> _11 : register(t3, space0);
[[vk::binding(4, 0)]] Texture2D<float4> _12 : register(t4, space0);
[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> _15 : register(u0, space0);

static uint3 gl_GlobalInvocationID;
struct SPIRV_Cross_Input {
  uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

void comp_main() {
  int2 _98 = int2(gl_GlobalInvocationID.xy);
  float2 _104 = (float2(_98) + 0.5f.xx) * _5_m0.zw;
  float3 _106;
  float3 _109;
  float3 _111;
  _106 = 0.0f.xxx;
  _109 = 0.0f.xxx;
  _111 = 0.0f.xxx;
  float3 _110;
  float3 _112;
  float3 _95[9];
  float3 _107;
  for (int _113 = 0; _113 < 9; _106 = _107, _109 = _110, _111 = _112, _113++) {
    _95[_113] = _10.SampleLevel(_7, (float2(_98 + _91[_113]) + 0.5f.xx) * _5_m0.zw, 0.0f).xyz;
    if (_113 == 4) {
      _107 = _95[_113];
    } else {
      _107 = _106;
    }
    _95[_113] = float3(dot(_95[_113], float3(0.25f, 0.5f, 0.25f)), dot(_95[_113], float3(0.5f, 0.0f, -0.5f)) + 0.501960813999176025390625f, dot(_95[_113], float3(-0.25f, 0.5f, -0.25f)) + 0.501960813999176025390625f);
    _112 = _111 + _95[_113];
    _110 = _109 + (_95[_113] * _95[_113]);
  }
  float3 _158 = min(_95[1], min(min(_95[3], _95[4]), min(_95[5], _95[7])));
  float3 _181 = max(_95[1], max(max(_95[3], _95[4]), max(_95[5], _95[7])));
  float3 _192 = _111 * 0.111111111938953399658203125f.xxx;
  // RenoDX code start: widen the history clamp with Improved SSR.
  /* Vanilla 0x6DABE597:
  float3 _202 = sqrt((_109 * 0.111111111938953399658203125f.xxx) - (_192 * _192)) * 1.25f;
  */
  float3 _202 = sqrt((_109 * 0.111111111938953399658203125f.xxx) - (_192 * _192)) * (shader_injection.improved_ssr >= 0.5f ? 2.f : 1.25f);
  // RenoDX code end
  float3 _204 = min((_158 + min(_158, min(min(_95[0], _95[2]), min(_95[6], _95[8])))) * 0.5f, _192 - _202);
  float3 _206 = max((_181 + max(_181, max(max(_95[0], _95[2]), max(_95[6], _95[8])))) * 0.5f, _192 + _202);
  float2 _211 = _9.SampleLevel(_7, _104, 0.0f).xy;
  float2 _218 = (abs(_211) * 2.0f) - 1.0f.xx;
  float2 _219 = _218 * _218;
  float3 _227 = _12.SampleLevel(_7, _104 - ((_219 * _219) * float2(int2(sign(_211 - 0.5f.xx)))), 0.0f).xyz;
  // RenoDX code start: bilinear history sampling using the native motion-vector reprojection.
  if (shader_injection.improved_ssr >= 0.5f) {
    float2 history_uv = _104 - ((_219 * _219) * float2(int2(sign(_211 - 0.5f.xx))));
    float2 texel_position = history_uv * _5_m0.xy - 0.5f;
    float2 fraction = frac(texel_position);
    float2 base_uv = (floor(texel_position) + 0.5f) * _5_m0.zw;
    float3 h00 = _12.SampleLevel(_7, base_uv, 0.f).xyz;
    float3 h10 = _12.SampleLevel(_7, base_uv + float2(_5_m0.z, 0.f), 0.f).xyz;
    float3 h01 = _12.SampleLevel(_7, base_uv + float2(0.f, _5_m0.w), 0.f).xyz;
    float3 h11 = _12.SampleLevel(_7, base_uv + _5_m0.zw, 0.f).xyz;
    _227 = lerp(lerp(h00, h10, fraction.x), lerp(h01, h11, fraction.x), fraction.y);
  }
  // RenoDX code end
  float3 _233 = float3(dot(_227, float3(0.25f, 0.5f, 0.25f)), dot(_227, float3(0.5f, 0.0f, -0.5f)) + 0.501960813999176025390625f, dot(_227, float3(-0.25f, 0.5f, -0.25f)) + 0.501960813999176025390625f);
  float3 _235 = (_206 + _204) * 0.5f;
  float3 _238 = _233 - _235;
  float3 _240 = abs(_238 / ((_206 - _204) * 0.5f));
  float _245 = max(_240.x, max(_240.y, _240.z));
  bool3 _247 = (_245 > 1.0f).xxx;
  float3 _250 = _235 + (_238 / _245.xxx);
  float3 _251 = float3(_247.x ? _250.x : _233.x, _247.y ? _250.y : _233.y, _247.z ? _250.z : _233.z);
  float _254 = _251.y - 0.501960813999176025390625f;
  float _256 = _251.z - 0.501960813999176025390625f;
  _15[gl_GlobalInvocationID.xy] = max(0.001000000047497451305389404296875f.xxx, lerp(_106, float3((_251.x + _254) - _256, _251.x + _256, (_251.x - _254) - _256), (0.9700000286102294921875f * _11.SampleLevel(_7, _104, 0.0f).x).xxx));
}

[numthreads(8, 8, 1)] void main(SPIRV_Cross_Input stage_input) {
  gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
  comp_main();
}

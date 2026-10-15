#include "../common.hlsl"

static float3 _205;
static uint _206;

[[vk::binding(0, 3)]] cbuffer _9_10 : register(b0, space3) {
  column_major float4x4 _10_m0 : packoffset(c0);
  column_major float4x4 _10_m1 : packoffset(c4);
  column_major float4x4 _10_m2 : packoffset(c8);
  column_major float4x4 _10_m3 : packoffset(c12);
  column_major float4x4 _10_m4 : packoffset(c16);
  column_major float4x4 _10_m5 : packoffset(c20);
  column_major float4x4 _10_m6 : packoffset(c24);
  column_major float4x4 _10_m7 : packoffset(c28);
  column_major float4x4 _10_m8 : packoffset(c32);
  column_major float4x4 _10_m9 : packoffset(c36);
  column_major float4x4 _10_m10 : packoffset(c40);
  float4 _10_m11 : packoffset(c44);
  column_major float4x4 _10_m12 : packoffset(c45);
  column_major float4x4 _10_m13 : packoffset(c49);
  column_major float4x4 _10_m14 : packoffset(c53);
  column_major float4x4 _10_m15 : packoffset(c57);
  column_major float4x4 _10_m16 : packoffset(c61);
  column_major float4x4 _10_m17 : packoffset(c65);
  column_major float4x4 _10_m18 : packoffset(c69);
  column_major float4x4 _10_m19 : packoffset(c73);
  column_major float4x4 _10_m20 : packoffset(c77);
  float4 _10_m21 : packoffset(c81);
};

[[vk::binding(1, 3)]] cbuffer _11_12 : register(b1, space3) {
  float4 _12_m0 : packoffset(c0);
  float4 _12_m1 : packoffset(c1);
  float4 _12_m2 : packoffset(c2);
  float4 _12_m3 : packoffset(c3);
  float4 _12_m4 : packoffset(c4);
  float4 _12_m5 : packoffset(c5);
  float4 _12_m6[6] : packoffset(c6);
  float4 _12_m7[6] : packoffset(c12);
  float4 _12_m8 : packoffset(c18);
  float4 _12_m9 : packoffset(c19);
  float4 _12_m10 : packoffset(c20);
  float4 _12_m11 : packoffset(c21);
  float4 _12_m12 : packoffset(c22);
  float4 _12_m13 : packoffset(c23);
  float4 _12_m14 : packoffset(c24);
  float4 _12_m15 : packoffset(c25);
  float _12_m16 : packoffset(c26);
  float _12_m17 : packoffset(c26.y);
  float _12_m18 : packoffset(c26.z);
  uint _12_m19 : packoffset(c26.w);
  float4 _12_m20 : packoffset(c27);
  int4 _12_m21 : packoffset(c28);
  float4 _12_m22 : packoffset(c29);
  float4 _12_m23 : packoffset(c30);
  float4 _12_m24 : packoffset(c31);
  float4 _12_m25 : packoffset(c32);
  float4 _12_m26 : packoffset(c33);
  float4 _12_m27 : packoffset(c34);
  float4 _12_m28 : packoffset(c35);
  float4 _12_m29 : packoffset(c36);
  float4 _12_m30 : packoffset(c37);
  float4 _12_m31 : packoffset(c38);
  float4 _12_m32[4] : packoffset(c39);
  float4 _12_m33[4] : packoffset(c43);
  float4 _12_m34[4] : packoffset(c47);
  float4 _12_m35[4] : packoffset(c51);
  float4 _12_m36 : packoffset(c55);
  float4 _12_m37 : packoffset(c56);
  float4 _12_m38[4] : packoffset(c57);
  float4 _12_m39[4] : packoffset(c61);
  float4 _12_m40[4] : packoffset(c65);
  float4 _12_m41 : packoffset(c69);
  float4 _12_m42 : packoffset(c70);
  float4 _12_m43 : packoffset(c71);
  float4 _12_m44 : packoffset(c72);
  float4 _12_m45 : packoffset(c73);
  float4 _12_m46 : packoffset(c74);
  float4 _12_m47 : packoffset(c75);
  float4 _12_m48 : packoffset(c76);
  float4 _12_m49 : packoffset(c77);
  float4 _12_m50 : packoffset(c78);
  float4 _12_m51 : packoffset(c79);
  float4 _12_m52 : packoffset(c80);
  float4 _12_m53 : packoffset(c81);
  float4 _12_m54 : packoffset(c82);
  float4 _12_m55 : packoffset(c83);
  float4 _12_m56 : packoffset(c84);
  float4 _12_m57 : packoffset(c85);
  float4 _12_m58 : packoffset(c86);
  float4 _12_m59 : packoffset(c87);
  float4 _12_m60 : packoffset(c88);
  float4 _12_m61 : packoffset(c89);
  float4 _12_m62 : packoffset(c90);
  float4 _12_m63 : packoffset(c91);
  float4 _12_m64 : packoffset(c92);
  float4 _12_m65 : packoffset(c93);
  float4 _12_m66 : packoffset(c94);
  float4 _12_m67 : packoffset(c95);
  float4 _12_m68 : packoffset(c96);
  float4 _12_m69 : packoffset(c97);
  float4 _12_m70 : packoffset(c98);
  float4 _12_m71 : packoffset(c99);
  float4 _12_m72 : packoffset(c100);
  float4 _12_m73 : packoffset(c101);
  float4 _12_m74 : packoffset(c102);
  float4 _12_m75 : packoffset(c103);
  float4 _12_m76 : packoffset(c104);
  float4 _12_m77 : packoffset(c105);
  float4 _12_m78 : packoffset(c106);
  float4 _12_m79 : packoffset(c107);
  float4 _12_m80 : packoffset(c108);
  float4 _12_m81 : packoffset(c109);
  float4 _12_m82 : packoffset(c110);
  float4 _12_m83 : packoffset(c111);
  float4 _12_m84 : packoffset(c112);
  float4 _12_m85 : packoffset(c113);
  float4 _12_m86 : packoffset(c114);
  float4 _12_m87 : packoffset(c115);
  float4 _12_m88 : packoffset(c116);
  float4 _12_m89 : packoffset(c117);
  float4 _12_m90 : packoffset(c118);
  float4 _12_m91 : packoffset(c119);
  float4 _12_m92 : packoffset(c120);
  float4 _12_m93 : packoffset(c121);
  float4 _12_m94 : packoffset(c122);
  float4 _12_m95 : packoffset(c123);
  float4 _12_m96 : packoffset(c124);
  float4 _12_m97 : packoffset(c125);
  float4 _12_m98 : packoffset(c126);
  float4 _12_m99 : packoffset(c127);
  float4 _12_m100 : packoffset(c128);
  float4 _12_m101 : packoffset(c129);
  float4 _12_m102[2] : packoffset(c130);
  float4 _12_m103[2] : packoffset(c132);
  float _12_m104 : packoffset(c134);
  float _12_m105 : packoffset(c134.y);
  float _12_m106 : packoffset(c134.z);
  float _12_m107 : packoffset(c134.w);
  float4 _12_m108 : packoffset(c135);
  float4 _12_m109 : packoffset(c136);
  float4 _12_m110 : packoffset(c137);
  float4 _12_m111 : packoffset(c138);
  float4 _12_m112 : packoffset(c139);
  float4 _12_m113 : packoffset(c140);
  float4 _12_m114 : packoffset(c141);
  float4 _12_m115 : packoffset(c142);
  float4 _12_m116 : packoffset(c143);
  float4 _12_m117 : packoffset(c144);
  float4 _12_m118 : packoffset(c145);
  float4 _12_m119 : packoffset(c146);
  float4 _12_m120 : packoffset(c147);
  float4 _12_m121 : packoffset(c148);
  float4 _12_m122 : packoffset(c149);
  float4 _12_m123 : packoffset(c150);
  float4 _12_m124 : packoffset(c151);
  float4 _12_m125 : packoffset(c152);
  float4 _12_m126 : packoffset(c153);
  float4 _12_m127 : packoffset(c154);
  float4 _12_m128 : packoffset(c155);
  float4 _12_m129 : packoffset(c156);
  float4 _12_m130 : packoffset(c157);
  float4 _12_m131 : packoffset(c158);
  float4 _12_m132 : packoffset(c159);
  float4 _12_m133 : packoffset(c160);
  float4 _12_m134 : packoffset(c161);
  float4 _12_m135 : packoffset(c162);
  float4 _12_m136 : packoffset(c163);
  float4 _12_m137 : packoffset(c164);
  column_major float4x4 _12_m138 : packoffset(c165);
  float4 _12_m139 : packoffset(c169);
  float4 _12_m140 : packoffset(c170);
  float4 _12_m141 : packoffset(c171);
  float4 _12_m142 : packoffset(c172);
  int4 _12_m143 : packoffset(c173);
  int4 _12_m144 : packoffset(c174);
  int4 _12_m145 : packoffset(c175);
  float4 _12_m146[32] : packoffset(c176);
};

[[vk::binding(0, 1)]] cbuffer _31_32 : register(b0, space1) {
  float _32_m0 : packoffset(c0);
  float _32_m1 : packoffset(c0.y);
  float _32_m2 : packoffset(c0.z);
  float _32_m3 : packoffset(c0.w);
  float _32_m4 : packoffset(c1);
  float _32_m5 : packoffset(c1.y);
  float _32_m6 : packoffset(c1.z);
  float _32_m7 : packoffset(c1.w);
  float _32_m8 : packoffset(c2);
  float _32_m9 : packoffset(c2.y);
  float _32_m10 : packoffset(c2.z);
  float _32_m11 : packoffset(c2.w);
  float4 _32_m12 : packoffset(c3);
  float4 _32_m13 : packoffset(c4);
  float4 _32_m14 : packoffset(c5);
  float4 _32_m15 : packoffset(c6);
  float4 _32_m16 : packoffset(c7);
  float4 _32_m17 : packoffset(c8);
  float4 _32_m18 : packoffset(c9);
  float4 _32_m19 : packoffset(c10);
  float4 _32_m20 : packoffset(c11);
  float4 _32_m21 : packoffset(c12);
  float4 _32_m22 : packoffset(c13);
  float4 _32_m23 : packoffset(c14);
  float4 _32_m24 : packoffset(c15);
  float4 _32_m25 : packoffset(c16);
  float4 _32_m26 : packoffset(c17);
  float4 _32_m27 : packoffset(c18);
  float4 _32_m28 : packoffset(c19);
  float4 _32_m29 : packoffset(c20);
  float4 _32_m30 : packoffset(c21);
  float4 _32_m31 : packoffset(c22);
  float4 _32_m32 : packoffset(c23);
  float4 _32_m33 : packoffset(c24);
  float4 _32_m34 : packoffset(c25);
  float4 _32_m35 : packoffset(c26);
  float4 _32_m36 : packoffset(c27);
  float4 _32_m37 : packoffset(c28);
  float4 _32_m38 : packoffset(c29);
  float4 _32_m39 : packoffset(c30);
  float4 _32_m40 : packoffset(c31);
  float4 _32_m41 : packoffset(c32);
  float4 _32_m42 : packoffset(c33);
  float4 _32_m43 : packoffset(c34);
  float4 _32_m44 : packoffset(c35);
  float4 _32_m45 : packoffset(c36);
  float4 _32_m46 : packoffset(c37);
  float4 _32_m47 : packoffset(c38);
  float4 _32_m48 : packoffset(c39);
  float4 _32_m49 : packoffset(c40);
  float4 _32_m50 : packoffset(c41);
  float4 _32_m51 : packoffset(c42);
  float4 _32_m52 : packoffset(c43);
  float4 _32_m53 : packoffset(c44);
  float4 _32_m54 : packoffset(c45);
  float4 _32_m55 : packoffset(c46);
  float4 _32_m56 : packoffset(c47);
  float4 _32_m57 : packoffset(c48);
  float4 _32_m58 : packoffset(c49);
  float4 _32_m59 : packoffset(c50);
  float4 _32_m60 : packoffset(c51);
};

[[vk::binding(8, 3)]] SamplerState _14 : register(s8, space3);
[[vk::binding(7, 3)]] SamplerState _15 : register(s7, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _18 : register(t15, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _19 : register(t9, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _20 : register(t16, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _21 : register(t14, space3);
[[vk::binding(6, 3)]] SamplerState _22 : register(s6, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _23 : register(t13, space3);
[[vk::binding(5, 3)]] SamplerState _24 : register(s5, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _25 : register(t12, space3);
[[vk::binding(4, 3)]] SamplerState _26 : register(s4, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _27 : register(t11, space3);
[[vk::binding(3, 3)]] SamplerState _28 : register(s3, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _29 : register(t10, space3);
[[vk::binding(2, 3)]] SamplerState _30 : register(s2, space3);

static float4 gl_FragCoord;
static float3 _4;
static float3 _5;
static float3 _6;
static float4 _7;
static float4 _8;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float3 _4 : TEXCOORD0;
  [[vk::location(2)]] float3 _5 : TEXCOORD2;
  [[vk::location(3)]] float3 _6 : TEXCOORD3;
  float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _7 : SV_Target0;
  [[vk::location(1)]] float4 _8 : SV_Target1;
};

void frag_main() {
  float _210 = 1.0f / gl_FragCoord.w;
  uint2 _215 = uint2(gl_FragCoord.xy);
  float3 _219 = _4 - _10_m11.xyz;
  float _220 = dot(_219, _219);
  float _222 = rsqrt(max(_220, 9.9999999392252902907785028219223e-09f));
  float3 _223 = _219 * _222;
  float _224 = _220 * _222;
  float3 _228 = _223 * (1.0f / dot(abs(_223), 1.0f.xxx));
  float _229 = _228.x;
  float _230 = _228.z;
  float _241 = _223.y;
  float4 _245 = _19.SampleLevel(_14, float2((_229 + _230) + 1.0f, (_229 - _230) + 1.0f) * 0.5f, 0.0f) * clamp(1.0f + (_241 * 10.0f), 0.0f, 1.0f);
  float3 _253 = -_223;
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xB51FAF84:
  float _258 = pow(clamp(dot(-_32_m53.xyz, _253), 0.0f, 1.0f), _32_m52.x);
  */
  float _258 = pow(clamp(dot(-_32_m53.xyz, _253), 0.0f, 1.0f), _32_m52.x * (SUN_INTENSITY > 0.5f ? 5.f : 1.f));
  // RenoDX code end
  float _270 = (0.010016442276537418365478515625f * (1.0f + (_258 * _258))) / max(pow(1.98010003566741943359375f - (_258 * 1.980000019073486328125f), pow(_32_m51.w, 0.64999997615814208984375f) * 8.0f), 9.9999997473787516355514526367188e-05f);
  float _286 = _223.x;
  float _287 = _223.z;
  float _288 = _286 / _287;
  float _289 = abs(_288);
  bool _290 = _289 < 1.0f;
  float _292 = _290 ? _289 : (1.0f / _289);
  float _293 = _292 * _292;
  float _298 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _293)) * _293)) * _292;
  float _300 = _290 ? _298 : (1.57079637050628662109375f - _298);
  float _310 = abs(_241);
  float _317 = ((((0.04688780009746551513671875f * _310) + (-0.203471004962921142578125f)) * _310) + 1.57079601287841796875f) * sqrt(1.0f - _310);
  float2 _324 = (float2(((_288 < 0.0f) ? (-_300) : _300) + (((_286 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_287 < 0.0f)), 1.57079637050628662109375f - ((_241 >= 0.0f) ? _317 : (3.1415927410125732421875f - _317))) * float2(0.159099996089935302734375f, 0.3183000087738037109375f)) + 0.5f.xx;
  float4 _340 = _20.SampleBias(_15, float2(_324.x + (1.0f - (_32_m50.w * 0.00277777784503996372222900390625f)), (_324.y * 2.0f) - 1.0f), _12_m16);
  float3 _346 = ((_340.xyz - 0.5f.xxx) * _32_m49.y) + 0.5f.xxx;
  float4 _350 = float4(_346.x, _346.y, _346.z, _340.w) * _32_m47;
  float4 _363 = (lerp(_350, max(_350.x, _350.y).xxxx, _32_m49.x.xxxx) * _32_m48) * step(0.0f, _241);
  float _365 = clamp(_363.w, 0.0f, 1.0f);
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xB51FAF84:
      float3 _366 = (_245.xyz + clamp(((_32_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _270) * _270, _270, _32_m52.y)) * _32_m52.w) * _32_m53.w, 0.0f.xxx, 3.0f.xxx)).xyz;
  */
  float3 renodx_sun = max(((_32_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _270) * _270, _270, _32_m52.y)) * _32_m52.w) * _32_m53.w, 0.f.xxx);
  if (SUN_INTENSITY > 0.5f) {
    float sun_dot = saturate(dot(-_32_m53.xyz, _253));
    float sun_height = saturate(_32_m53.y + 0.1f);
    float3 horizon_tint = lerp(float3(1.f, 0.6f, 0.3f), float3(1.f, 0.95f, 0.9f), sun_height);
    float3 chromatic_color = lerp(float3(1.f, 0.85f, 0.6f), 1.f.xxx, pow(sun_dot, 3.f));
    renodx_sun *= pow(sun_dot, 0.4f) * chromatic_color * horizon_tint * 5.f;
    float3 corona = pow(sun_dot, 64.f) * lerp(float3(1.f, 0.5f, 0.2f), float3(1.f, 0.7f, 0.3f), sun_height) * 2.f
                    + pow(sun_dot, 8.f) * lerp(float3(1.f, 0.3f, 0.1f), float3(1.f, 0.5f, 0.2f), sun_height) * 0.5f;
    renodx_sun += corona * _32_m51.xyz * _32_m51.w * _32_m53.w;
    renodx_sun = lerp(renodx_sun, dot(renodx_sun, float3(0.2126f, 0.7152f, 0.0722f)).xxx, 0.5f) * 10.f;
  } else {
    renodx_sun = min(renodx_sun, 3.f.xxx);
  }
  float3 _366 = (_245.xyz + renodx_sun).xyz;
  // RenoDX code end
  float3 _823;
  float _824;
  float3 _825;
  float _826;
  [branch] if (_32_m0 > 0.75f) {
    float3 _601;
    float _604;
    float _421 = 1.0f / _32_m36.x;
    float _423 = _32_m36.w + _32_m36.x;
    float3 _426 = normalize(_219);
    float _427 = dot(_426, _32_m24.xyz);
    float _432 = ((_32_m28.x * _32_m28.x) - 1.0f) + (_427 * _427);
    float3 _445 = (((_426 * (_427 - sqrt(max(0.0f, _432)))) - _32_m24.xyz) / _32_m28.x.xxx).xyz;
    float _447 = float(max(_432 * clamp(dot(_426, normalize(_32_m24.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float3 _456 = ((_426 * (abs(dot(_32_m30.xyz, _32_m24.xyz)) / abs(dot(_32_m30.xyz, _426)))) - _32_m24.xyz).xyz;
    float _461 = length(_456);
    float3 _463 = _456 / _461.xxx;
    float _468 = ((_461 * float(abs(dot(_32_m30.xyz, _456)) < 0.001000000047497451305389404296875f)) * _32_m28.z) + _32_m28.w;
    float _476 = dot(_445, _32_m30.xyz);
    float _477 = -_476;
    float3 _485 = normalize(_445 - (_32_m30.xyz * _476));
    float _494 = float(int(sign(dot(_485, _32_m34.xyz))));
    float2 _499 = float2(clamp(-_494, 0.0f, 1.0f) + (_494 * (acos(dot(_485, _32_m32.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_477 * _477)) + (-0.27777779102325439453125f)) * _477) + 0.500000059604644775390625f);
    float4 _501 = _21.SampleBias(_22, _499, _12_m16);
    float _508 = clamp((clamp(dot(_32_m26.xyz, _445), 0.0f, 1.0f) * _32_m4) + _32_m6, 0.0f, 1.0f);
    float _516 = _501.w;
    float4 _521 = float4((_501.xyz * _508) + (_25.SampleBias(_26, _499, _12_m16).xyz * _32_m18.xyz), _516) * _447;
    float _531 = clamp(float(int(sign(clamp(1.0f - _468, 0.0f, 1.0f) * _468))), 0.0f, 1.0f) * lerp(1.0f, clamp(float(int(sign(-dot(_426, _463)))), 0.0f, 1.0f), _447);
    float _538 = float(int(sign(dot(_463, _32_m34.xyz))));
    float _553 = clamp(-dot(_32_m26.xyz, _463), 0.0f, 1.0f);
    float4 _567 = (_29.SampleBias(_30, float2(clamp(-_538, 0.0f, 1.0f) + (_538 * (acos(dot(_463, _32_m32.xyz)) * 0.15915493667125701904296875f)), _468), _12_m16) * _32_m16) * ((1.0f - clamp(max((((_32_m28.x - (_461 * sqrt(1.0f - (_553 * _553)))) * _32_m28.y) / _32_m2) + 1.0f, 0.0f), 0.0f, 1.0f)) * clamp(abs(dot(_32_m26.xyz, _32_m30.xyz)) + 0.4000000059604644775390625f, 0.0f, 1.0f));
    float3 _573 = (_521.xyz * _516).xyz + ((_567.xyz * _567.w) * _531);
    float4 _574 = float4(_573.x, _573.y, _573.z, _521.w);
    _574.w = _521.w + ((_567.w * _531) * (1.0f - _447));
    float _583 = lerp(1.0f, clamp(_426.y, 0.0f, 1.0f), _32_m38.w);
    float4 _585 = (_574 * _32_m14) * _583;
    float3 _594 = _426 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_426, _426)));
    float3 _598 = _32_m26.xyz * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_32_m26.xyz, _32_m26.xyz)));
    float _618;
    float _619;
    bool _620;
    do {
      _601 = float4(_32_m22.xyz, _423).xyz;
      float3 _602 = _10_m11.xyz - _601;
      _604 = _423 * _423;
      float _606 = dot(_594, _602);
      float _608 = (_606 * _606) - (dot(_602, _602) - _604);
      if (_608 <= 0.0f) {
        _618 = 0.0f;
        _619 = 0.0f;
        _620 = false;
        break;
      }
      float _612 = sqrt(_608);
      float _613 = -_606;
      float _615 = max(0.0f, _613 - _612);
      _618 = _615;
      _619 = (_613 + _612) - _615;
      _620 = true;
      break;
    } while (false);
    float3 _741;
    if (_620) {
      float _640;
      bool _641;
      do {
        float3 _626 = _10_m11.xyz - float4(_32_m22.xyz, _32_m36.w).xyz;
        float _630 = dot(_594, _626);
        float _632 = (_630 * _630) - (dot(_626, _626) - (_32_m36.w * _32_m36.w));
        if (_632 <= 0.0f) {
          _640 = 0.0f;
          _641 = false;
          break;
        }
        _640 = max(0.0f, (-_630) - sqrt(_632));
        _641 = true;
        break;
      } while (false);
      float _650;
      if (_641) {
        float _649;
        if (_640 > 0.0f) {
          _649 = min(_619, _640 - _618);
        } else {
          _649 = _619;
        }
        _650 = _649;
      } else {
        _650 = _619;
      }
      float3 _740;
      if (_650 > 0.0f) {
        float _656 = _650 / _32_m36.y;
        float _661 = dot(-_594, _598);
        float3 _666 = _32_m36.z.xxx * float3(0.000244140625f, 0.001267349696718156337738037109375f, 0.00266802101396024227142333984375f);
        float3 _671;
        float3 _673;
        _671 = (_10_m11.xyz + (_594 * _618)) + ((_594 * 0.5f) * _656);
        _673 = 0.0f.xxx;
        float _669;
        float3 _672;
        float3 _674;
        float _668 = 0.0f;
        int _675 = 0;
        for (; float(_675) < _32_m36.y; _668 = _669, _671 = _672, _673 = _674, _675++) {
          float3 _681 = _671 - _601;
          float _689 = min(exp((-((length(_681) - _32_m36.w) * _421)) * _32_m37.y) * _656, 3.4028234663852885981170418348452e+38f);
          _669 = _668 + _689;
          float _706;
          do {
            float _694 = dot(_598, _681);
            float _696 = (_694 * _694) - (dot(_681, _681) - _604);
            if (_696 <= 0.0f) {
              _706 = 0.0f;
              break;
            }
            float _700 = sqrt(_696);
            float _701 = -_694;
            _706 = (_701 + _700) - max(0.0f, _701 - _700);
            break;
          } while (false);
          float _707 = _706 / _32_m37.x;
          float3 _712;
          float _715;
          _712 = _671 + ((_598 * 0.5f) * _707);
          _715 = 0.0f;
          for (int _717 = 0; float(_717) < _32_m37.x;) {
            float3 _722 = _712 - _601;
            _712 += (_598 * _707);
            _715 += exp((-(max(length(_722) - _32_m36.w, 0.0f) * _421)) * _32_m37.y);
            _717++;
            continue;
          }
          _674 = _673 + (exp(-(_666 * ((_715 * _707) + _669))) * _689);
          _672 = _671 + (_594 * _656);
        }
        _740 = (_673 * (0.0596831031143665313720703125f * (1.0f + (_661 * _661)))) * _666;
      } else {
        _740 = 0.0f.xxx;
      }
      _741 = _740;
    } else {
      _741 = 0.0f.xxx;
    }
    float3 _742 = _741 * _32_m37.z;
    float _743 = _742.z;
    float _744 = _742.y;
    float4 _749 = lerp(float4(_743, _744, -1.0f, 0.666666686534881591796875f), float4(_744, _743, 0.0f, -0.3333333432674407958984375f), step(_743, _744).xxxx);
    float _750 = _742.x;
    float _751 = _749.x;
    float4 _759 = lerp(float4(_751, _749.yw, _750), float4(_750, _749.yz, _751), step(_751, _750).xxxx);
    float _760 = _759.x;
    float _761 = _759.w;
    float _762 = _759.y;
    float _764 = _760 - min(_761, _762);
    float3 _775;
    _775.x = abs(_759.z + ((_761 - _762) / ((6.0f * _764) + 9.9999997473787516355514526367188e-05f))) + _32_m37.w;
    float3 _786 = lerp(1.0f.xxx, clamp(abs((frac(_775.xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), (_764 / (_760 + 9.9999997473787516355514526367188e-05f)).xxx) * _760;
    float3 _790 = lerp(_786 * _508, _786, _32_m38.y.xxx) * _583;
    float3 _791 = _585.xyz;
    float _802 = max(0.0f, _447);
    float _803 = _585.w;
    float _806 = step(0.5f, _32_m8) * step(_32_m8, 1.5f);
    float _809 = _803 * (1.0f - _806);
    float3 _812 = (lerp(dot(_791, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _791, _12_m78.w.xxx) * _12_m78.xyz).xyz;
    _823 = (_812 * _806) + _790;
    _824 = max(0.0f, max(_802, _809));
    _825 = ((_366 * (1.0f - _809)) + (_812 * (1.0f - ((1.0f - _803) * step(_32_m8, 0.5f))))) + _790;
    _826 = _802;
  }
  else {
    _823 = 0.0f.xxx;
    _824 = 0.0f;
    _825 = _366;
    _826 = 0.0f;
  }
  float3 _1184;
  float _1185;
  float3 _1186;
  [branch] if (_32_m1 > 0.75f) {
    float3 _972;
    float _975;
    float _875 = 1.0f / _32_m39.x;
    float _877 = _32_m39.w + _32_m39.x;
    float3 _880 = normalize(_219);
    float _881 = dot(_880, _32_m25.xyz);
    float _886 = ((_32_m29.x * _32_m29.x) - 1.0f) + (_881 * _881);
    float3 _899 = (((_880 * (_881 - sqrt(max(0.0f, _886)))) - _32_m25.xyz) / _32_m29.x.xxx).xyz;
    float _901 = float(max(_886 * clamp(dot(_880, normalize(_32_m25.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float _903 = dot(_899, _32_m31.xyz);
    float _904 = -_903;
    float3 _912 = normalize(_899 - (_32_m31.xyz * _903));
    float _921 = float(int(sign(dot(_912, _32_m35.xyz))));
    float2 _926 = float2(clamp(-_921, 0.0f, 1.0f) + (_921 * (acos(dot(_912, _32_m33.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_904 * _904)) + (-0.27777779102325439453125f)) * _904) + 0.500000059604644775390625f);
    float4 _928 = _23.SampleBias(_24, _926, _12_m16);
    float _935 = clamp((clamp(dot(_32_m27.xyz, _899), 0.0f, 1.0f) * _32_m5) + _32_m7, 0.0f, 1.0f);
    float4 _938 = _27.SampleBias(_28, _926, _12_m16);
    float _943 = _928.w;
    float4 _948 = float4((_928.xyz * _935) + (_938.xyz * _32_m19.xyz), _943) * _901;
    float3 _950 = _948.xyz * _943;
    float _954 = lerp(1.0f, clamp(_880.y, 0.0f, 1.0f), _32_m41.w);
    float4 _956 = (float4(_950.x, _950.y, _950.z, _948.w) * _32_m15) * _954;
    float3 _965 = _880 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_880, _880)));
    float3 _969 = _32_m27.xyz * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_32_m27.xyz, _32_m27.xyz)));
    float _989;
    float _990;
    bool _991;
    do {
      _972 = float4(_32_m23.xyz, _877).xyz;
      float3 _973 = _10_m11.xyz - _972;
      _975 = _877 * _877;
      float _977 = dot(_965, _973);
      float _979 = (_977 * _977) - (dot(_973, _973) - _975);
      if (_979 <= 0.0f) {
        _989 = 0.0f;
        _990 = 0.0f;
        _991 = false;
        break;
      }
      float _983 = sqrt(_979);
      float _984 = -_977;
      float _986 = max(0.0f, _984 - _983);
      _989 = _986;
      _990 = (_984 + _983) - _986;
      _991 = true;
      break;
    } while (false);
    float3 _1112;
    if (_991) {
      float _1011;
      bool _1012;
      do {
        float3 _997 = _10_m11.xyz - float4(_32_m23.xyz, _32_m39.w).xyz;
        float _1001 = dot(_965, _997);
        float _1003 = (_1001 * _1001) - (dot(_997, _997) - (_32_m39.w * _32_m39.w));
        if (_1003 <= 0.0f) {
          _1011 = 0.0f;
          _1012 = false;
          break;
        }
        _1011 = max(0.0f, (-_1001) - sqrt(_1003));
        _1012 = true;
        break;
      } while (false);
      float _1021;
      if (_1012) {
        float _1020;
        if (_1011 > 0.0f) {
          _1020 = min(_990, _1011 - _989);
        } else {
          _1020 = _990;
        }
        _1021 = _1020;
      } else {
        _1021 = _990;
      }
      float3 _1111;
      if (_1021 > 0.0f) {
        float _1027 = _1021 / _32_m39.y;
        float _1032 = dot(-_965, _969);
        float3 _1037 = _32_m39.z.xxx * float3(0.000244140625f, 0.001267349696718156337738037109375f, 0.00266802101396024227142333984375f);
        float3 _1042;
        float3 _1044;
        _1042 = (_10_m11.xyz + (_965 * _989)) + ((_965 * 0.5f) * _1027);
        _1044 = 0.0f.xxx;
        float _1040;
        float3 _1043;
        float3 _1045;
        float _1039 = 0.0f;
        int _1046 = 0;
        for (; float(_1046) < _32_m39.y; _1039 = _1040, _1042 = _1043, _1044 = _1045, _1046++) {
          float3 _1052 = _1042 - _972;
          float _1060 = min(exp((-((length(_1052) - _32_m39.w) * _875)) * _32_m40.y) * _1027, 3.4028234663852885981170418348452e+38f);
          _1040 = _1039 + _1060;
          float _1077;
          do {
            float _1065 = dot(_969, _1052);
            float _1067 = (_1065 * _1065) - (dot(_1052, _1052) - _975);
            if (_1067 <= 0.0f) {
              _1077 = 0.0f;
              break;
            }
            float _1071 = sqrt(_1067);
            float _1072 = -_1065;
            _1077 = (_1072 + _1071) - max(0.0f, _1072 - _1071);
            break;
          } while (false);
          float _1078 = _1077 / _32_m40.x;
          float3 _1083;
          float _1086;
          _1083 = _1042 + ((_969 * 0.5f) * _1078);
          _1086 = 0.0f;
          for (int _1088 = 0; float(_1088) < _32_m40.x;) {
            float3 _1093 = _1083 - _972;
            _1083 += (_969 * _1078);
            _1086 += exp((-(max(length(_1093) - _32_m39.w, 0.0f) * _875)) * _32_m40.y);
            _1088++;
            continue;
          }
          _1045 = _1044 + (exp(-(_1037 * ((_1086 * _1078) + _1040))) * _1060);
          _1043 = _1042 + (_965 * _1027);
        }
        _1111 = (_1044 * (0.0596831031143665313720703125f * (1.0f + (_1032 * _1032)))) * _1037;
      } else {
        _1111 = 0.0f.xxx;
      }
      _1112 = _1111;
    } else {
      _1112 = 0.0f.xxx;
    }
    float3 _1113 = _1112 * _32_m40.z;
    float _1114 = _1113.z;
    float _1115 = _1113.y;
    float4 _1120 = lerp(float4(_1114, _1115, -1.0f, 0.666666686534881591796875f), float4(_1115, _1114, 0.0f, -0.3333333432674407958984375f), step(_1114, _1115).xxxx);
    float _1121 = _1113.x;
    float _1122 = _1120.x;
    float4 _1130 = lerp(float4(_1122, _1120.yw, _1121), float4(_1121, _1120.yz, _1122), step(_1122, _1121).xxxx);
    float _1131 = _1130.x;
    float _1132 = _1130.w;
    float _1133 = _1130.y;
    float _1135 = _1131 - min(_1132, _1133);
    float3 _1146;
    _1146.x = abs(_1130.z + ((_1132 - _1133) / ((6.0f * _1135) + 9.9999997473787516355514526367188e-05f))) + _32_m40.w;
    float3 _1157 = lerp(1.0f.xxx, clamp(abs((frac(_1146.xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), (_1135 / (_1131 + 9.9999997473787516355514526367188e-05f)).xxx) * _1131;
    float3 _1161 = lerp(_1157 * _935, _1157, _32_m41.y.xxx) * _954;
    float _1163 = _956.w;
    float _1166 = step(0.5f, _32_m9) * step(_32_m9, 1.5f);
    float _1169 = _1163 * (1.0f - _1166);
    float3 _1172 = _956.xyz;
    _1184 = _823 + ((_1172 * _1166) + _1161);
    _1185 = max(_824, max(max(_826, _901), _1169));
    _1186 = ((_825 * (1.0f - _1169)) + (_1172 * (1.0f - ((1.0f - _1163) * step(_32_m9, 0.5f))))) + _1161;
  }
  else {
    _1184 = _823;
    _1185 = _824;
    _1186 = _825;
  }
  float _1189 = 1.0f - _32_m10;
  float3 _1203 = (lerp(_1186.xyz, _363.xyz, (_365 * (1.0f - (_1185 * _1189))).xxx).xyz + (_1184 * ((_365 * _1189) * (1.0f - _1185)))).xyz;
  float _1231 = _4.y * _12_m46.w;
  float _1236 = max(0.00999999977648258209228515625f, _1231 + _12_m47.w);
  float3 _1250 = exp(_12_m45.xyz * ((-max(0.0f, (_224 * _12_m44.w) - _12_m43.w)) * (((1.0f - exp(-_1236)) / _1236) * exp(_1231 + _12_m48.w))));
  float _1253 = dot(_223, _12_m44.xyz);
  float _1259 = _12_m45.w * _12_m45.w;
  float _1263 = (1.0f + _1259) - ((2.0f * _12_m45.w) * _1253);
  float3 _1590;
  float _1591;
  if (_12_m55.z > 0.0f) {
    uint3 _1417 = (uint3(int3(int(_215.x), int(_215.y), int(_12_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1418 = _1417.y;
    uint _1419 = _1417.z;
    uint _1422 = _1417.x + (_1418 * _1419);
    uint _1424 = _1418 + (_1419 * _1422);
    uint _1426 = _1419 + (_1422 * _1424);
    uint _1428 = _1422 + (_1424 * _1426);
    float _1455 = dot(_223, -_10_m0[2].xyz);
    float _1463 = (_12_m55.w * ((_1455 > 5.9604644775390625e-08f) ? (1.0f / _1455) : 0.0f)) * (1.0f / _224);
    float _1464 = _219.y;
    float _1465 = _1463 * _1464;
    float _1467 = _10_m11.y + _1465;
    float _1468 = _1464 - _1465;
    float _1470 = (1.0f - _1463) * _224;
    float _1484 = max(-127.0f, _12_m49.z * _1468);
    float _1508 = max(-127.0f, _12_m52.x * _1468);
    float _1519 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_1467 - _12_m49.x)))) * ((abs(_1484) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1484)) / _1484) : (0.693147182464599609375f - (0.2402265071868896484375f * _1484)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_1467 - _12_m52.z)))) * ((abs(_1508) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1508)) / _1508) : (0.693147182464599609375f - (0.2402265071868896484375f * _1508))));
    float _1541 = clamp((_224 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _1544 = clamp((max(clamp(exp2(-(_1519 * _1470)), 0.0f, 1.0f), _12_m51.w) + clamp((_224 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _1541, 0.0f, 1.0f);
    float4 _1584 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _18.SampleLevel(_14, float3((float2(_215) + ((((float3(uint3(_1428, _1424 + (_1426 * _1428), _206) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _12_m59.w).xy) * _12_m57.xy, (log2((_210 * _12_m56.x) + _12_m56.y) * _12_m56.z) / _12_m55.z), 0.0f), clamp((_210 - _12_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _1590 = _1584.xyz + (((_12_m51.xyz * (1.0f - _1544)) + (((_12_m54.xyz * pow(clamp(dot(_253, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_1519 * max(_1470 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1541))) * _1584.w);
    _1591 = _1584.w * _1544;
  } else {
    float _1291 = _219.y;
    float _1305 = max(-127.0f, _12_m49.z * _1291);
    float _1329 = max(-127.0f, _12_m52.x * _1291);
    float _1340 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_10_m11.y - _12_m49.x)))) * ((abs(_1305) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1305)) / _1305) : (0.693147182464599609375f - (0.2402265071868896484375f * _1305)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_10_m11.y - _12_m52.z)))) * ((abs(_1329) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1329)) / _1329) : (0.693147182464599609375f - (0.2402265071868896484375f * _1329))));
    float _1362 = clamp((_224 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _1365 = clamp((max(clamp(exp2(-(_1340 * _224)), 0.0f, 1.0f), _12_m51.w) + clamp((_224 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _1362, 0.0f, 1.0f);
    _1590 = (_12_m51.xyz * (1.0f - _1365)) + (((_12_m54.xyz * pow(clamp(dot(_253, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_1340 * max(_224 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1362));
    _1591 = _1365;
  }
  float3 _1596 = ((lerp(dot(_1203, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1203, _12_m78.w.xxx) * _12_m78.xyz).xyz * (_1250 * _1591)) + ((((clamp(((_12_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1253 * _1253)))) + _12_m48.xyz) + (_12_m47.xyz * ((1.0f - _1259) / max((12.56637096405029296875f * _1263) * sqrt(_1263), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1250)) * _1591) + _1590);
  float4 _1597 = float4(_1596.x, _1596.y, _1596.z, _245.w);
  _1597.w = 1.0f;
  float2 _1611 = (_5.xy / max(_5.z, 9.9999999392252902907785028219223e-09f).xx) - (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx);
  _1611.y = -_1611.y;
  _7 = _1597;
  // RenoDX code start: retain Tech Test Look sky desaturation after native fog and color grading.
  if (TECH_TEST_LOOK > 0.5f) {
    _7.xyz = lerp(_7.xyz, dot(_7.xyz, float3(0.2126f, 0.7152f, 0.0722f)).xxx, 0.5f);
  }
  // RenoDX code end
  _8 = float4(((sqrt(sqrt(abs(_1611 * 0.5f))) * float2(int2(sign(_1611)))) * 0.5f) + 0.5f.xx, 0.0f, 0.0f);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  _4 = stage_input._4;
  _5 = stage_input._5;
  _6 = stage_input._6;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._7 = _7;
  stage_output._8 = _8;
  return stage_output;
}

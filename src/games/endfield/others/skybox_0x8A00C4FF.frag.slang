#include "../common.hlsl"

static float3 _188;
static uint _189;

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

[[vk::binding(0, 1)]] cbuffer _29_30 : register(b0, space1) {
  float _30_m0 : packoffset(c0);
  float _30_m1 : packoffset(c0.y);
  float _30_m2 : packoffset(c0.z);
  float _30_m3 : packoffset(c0.w);
  float _30_m4 : packoffset(c1);
  float _30_m5 : packoffset(c1.y);
  float _30_m6 : packoffset(c1.z);
  float _30_m7 : packoffset(c1.w);
  float _30_m8 : packoffset(c2);
  float _30_m9 : packoffset(c2.y);
  float _30_m10 : packoffset(c2.z);
  float _30_m11 : packoffset(c2.w);
  float4 _30_m12 : packoffset(c3);
  float4 _30_m13 : packoffset(c4);
  float4 _30_m14 : packoffset(c5);
  float4 _30_m15 : packoffset(c6);
  float4 _30_m16 : packoffset(c7);
  float4 _30_m17 : packoffset(c8);
  float4 _30_m18 : packoffset(c9);
  float4 _30_m19 : packoffset(c10);
  float4 _30_m20 : packoffset(c11);
  float4 _30_m21 : packoffset(c12);
  float4 _30_m22 : packoffset(c13);
  float4 _30_m23 : packoffset(c14);
  float4 _30_m24 : packoffset(c15);
  float4 _30_m25 : packoffset(c16);
  float4 _30_m26 : packoffset(c17);
  float4 _30_m27 : packoffset(c18);
  float4 _30_m28 : packoffset(c19);
  float4 _30_m29 : packoffset(c20);
  float4 _30_m30 : packoffset(c21);
  float4 _30_m31 : packoffset(c22);
  float4 _30_m32 : packoffset(c23);
  float4 _30_m33 : packoffset(c24);
  float4 _30_m34 : packoffset(c25);
  float4 _30_m35 : packoffset(c26);
  float4 _30_m36 : packoffset(c27);
  float4 _30_m37 : packoffset(c28);
  float4 _30_m38 : packoffset(c29);
  float4 _30_m39 : packoffset(c30);
  float4 _30_m40 : packoffset(c31);
  float4 _30_m41 : packoffset(c32);
  float4 _30_m42 : packoffset(c33);
  float4 _30_m43 : packoffset(c34);
  float4 _30_m44 : packoffset(c35);
  float4 _30_m45 : packoffset(c36);
  float4 _30_m46 : packoffset(c37);
  float4 _30_m47 : packoffset(c38);
  float4 _30_m48 : packoffset(c39);
  float4 _30_m49 : packoffset(c40);
  float4 _30_m50 : packoffset(c41);
  float4 _30_m51 : packoffset(c42);
  float4 _30_m52 : packoffset(c43);
  float4 _30_m53 : packoffset(c44);
  float4 _30_m54 : packoffset(c45);
  float4 _30_m55 : packoffset(c46);
  float4 _30_m56 : packoffset(c47);
  float4 _30_m57 : packoffset(c48);
  float4 _30_m58 : packoffset(c49);
  float4 _30_m59 : packoffset(c50);
  float4 _30_m60 : packoffset(c51);
};

[[vk::binding(7, 3)]] SamplerState _14 : register(s7, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _17 : register(t14, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _18 : register(t8, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _19 : register(t13, space3);
[[vk::binding(6, 3)]] SamplerState _20 : register(s6, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _21 : register(t12, space3);
[[vk::binding(5, 3)]] SamplerState _22 : register(s5, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _23 : register(t11, space3);
[[vk::binding(4, 3)]] SamplerState _24 : register(s4, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _25 : register(t10, space3);
[[vk::binding(3, 3)]] SamplerState _26 : register(s3, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _27 : register(t9, space3);
[[vk::binding(2, 3)]] SamplerState _28 : register(s2, space3);

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
  float _193 = 1.0f / gl_FragCoord.w;
  uint2 _198 = uint2(gl_FragCoord.xy);
  float3 _202 = _4 - _10_m11.xyz;
  float _203 = dot(_202, _202);
  float _205 = rsqrt(max(_203, 9.9999999392252902907785028219223e-09f));
  float3 _206 = _202 * _205;
  float _207 = _203 * _205;
  float3 _211 = _206 * (1.0f / dot(abs(_206), 1.0f.xxx));
  float _212 = _211.x;
  float _213 = _211.z;
  float4 _228 = _18.SampleLevel(_14, float2((_212 + _213) + 1.0f, (_212 - _213) + 1.0f) * 0.5f, 0.0f) * clamp(1.0f + (_206.y * 10.0f), 0.0f, 1.0f);
  float3 _236 = -_206;
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0x8A00C4FF:
  float _241 = pow(clamp(dot(-_30_m53.xyz, _236), 0.0f, 1.0f), _30_m52.x);
  */
  float _241 = pow(clamp(dot(-_30_m53.xyz, _236), 0.0f, 1.0f), _30_m52.x * (SUN_INTENSITY > 0.5f ? 5.f : 1.f));
  // RenoDX code end
  float _253 = (0.010016442276537418365478515625f * (1.0f + (_241 * _241))) / max(pow(1.98010003566741943359375f - (_241 * 1.980000019073486328125f), pow(_30_m51.w, 0.64999997615814208984375f) * 8.0f), 9.9999997473787516355514526367188e-05f);
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0x8A00C4FF:
      float3 _269 = (_228.xyz + clamp(((_30_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _253) * _253, _253, _30_m52.y)) * _30_m52.w) * _30_m53.w, 0.0f.xxx, 3.0f.xxx)).xyz;
  */
  float3 renodx_sun = max(((_30_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _253) * _253, _253, _30_m52.y)) * _30_m52.w) * _30_m53.w, 0.f.xxx);
  if (SUN_INTENSITY > 0.5f) {
    float sun_dot = saturate(dot(-_30_m53.xyz, _236));
    float sun_height = saturate(_30_m53.y + 0.1f);
    float3 horizon_tint = lerp(float3(1.f, 0.6f, 0.3f), float3(1.f, 0.95f, 0.9f), sun_height);
    float3 chromatic_color = lerp(float3(1.f, 0.85f, 0.6f), 1.f.xxx, pow(sun_dot, 3.f));
    renodx_sun *= pow(sun_dot, 0.4f) * chromatic_color * horizon_tint * 5.f;
    float3 corona = pow(sun_dot, 64.f) * lerp(float3(1.f, 0.5f, 0.2f), float3(1.f, 0.7f, 0.3f), sun_height) * 2.f
                    + pow(sun_dot, 8.f) * lerp(float3(1.f, 0.3f, 0.1f), float3(1.f, 0.5f, 0.2f), sun_height) * 0.5f;
    renodx_sun += corona * _30_m51.xyz * _30_m51.w * _30_m53.w;
    renodx_sun = lerp(renodx_sun, dot(renodx_sun, float3(0.2126f, 0.7152f, 0.0722f)).xxx, 0.5f) * 10.f;
  } else {
    renodx_sun = min(renodx_sun, 3.f.xxx);
  }
  float3 _269 = (_228.xyz + renodx_sun).xyz;
  // RenoDX code end
  float3 _723;
  [branch] if (_30_m0 > 0.75f) {
    float3 _506;
    float _509;
    float _324 = 1.0f / _30_m36.x;
    float _326 = _30_m36.w + _30_m36.x;
    float3 _329 = normalize(_202);
    float _330 = dot(_329, _30_m24.xyz);
    float _335 = ((_30_m28.x * _30_m28.x) - 1.0f) + (_330 * _330);
    float3 _348 = (((_329 * (_330 - sqrt(max(0.0f, _335)))) - _30_m24.xyz) / _30_m28.x.xxx).xyz;
    float _350 = float(max(_335 * clamp(dot(_329, normalize(_30_m24.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float3 _359 = ((_329 * (abs(dot(_30_m30.xyz, _30_m24.xyz)) / abs(dot(_30_m30.xyz, _329)))) - _30_m24.xyz).xyz;
    float _364 = length(_359);
    float3 _366 = _359 / _364.xxx;
    float _371 = ((_364 * float(abs(dot(_30_m30.xyz, _359)) < 0.001000000047497451305389404296875f)) * _30_m28.z) + _30_m28.w;
    float _379 = dot(_348, _30_m30.xyz);
    float _380 = -_379;
    float3 _388 = normalize(_348 - (_30_m30.xyz * _379));
    float _397 = float(int(sign(dot(_388, _30_m34.xyz))));
    float2 _402 = float2(clamp(-_397, 0.0f, 1.0f) + (_397 * (acos(dot(_388, _30_m32.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_380 * _380)) + (-0.27777779102325439453125f)) * _380) + 0.500000059604644775390625f);
    float4 _406 = _19.SampleBias(_20, _402, _12_m16);
    float _413 = clamp((clamp(dot(_30_m26.xyz, _348), 0.0f, 1.0f) * _30_m4) + _30_m6, 0.0f, 1.0f);
    float _421 = _406.w;
    float4 _426 = float4((_406.xyz * _413) + (_23.SampleBias(_24, _402, _12_m16).xyz * _30_m18.xyz), _421) * _350;
    float _436 = clamp(float(int(sign(clamp(1.0f - _371, 0.0f, 1.0f) * _371))), 0.0f, 1.0f) * lerp(1.0f, clamp(float(int(sign(-dot(_329, _366)))), 0.0f, 1.0f), _350);
    float _443 = float(int(sign(dot(_366, _30_m34.xyz))));
    float _458 = clamp(-dot(_30_m26.xyz, _366), 0.0f, 1.0f);
    float4 _472 = (_27.SampleBias(_28, float2(clamp(-_443, 0.0f, 1.0f) + (_443 * (acos(dot(_366, _30_m32.xyz)) * 0.15915493667125701904296875f)), _371), _12_m16) * _30_m16) * ((1.0f - clamp(max((((_30_m28.x - (_364 * sqrt(1.0f - (_458 * _458)))) * _30_m28.y) / _30_m2) + 1.0f, 0.0f), 0.0f, 1.0f)) * clamp(abs(dot(_30_m26.xyz, _30_m30.xyz)) + 0.4000000059604644775390625f, 0.0f, 1.0f));
    float3 _478 = (_426.xyz * _421).xyz + ((_472.xyz * _472.w) * _436);
    float4 _479 = float4(_478.x, _478.y, _478.z, _426.w);
    _479.w = _426.w + ((_472.w * _436) * (1.0f - _350));
    float _488 = lerp(1.0f, clamp(_329.y, 0.0f, 1.0f), _30_m38.w);
    float4 _490 = (_479 * _30_m14) * _488;
    float3 _499 = _329 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_329, _329)));
    float3 _503 = _30_m26.xyz * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_30_m26.xyz, _30_m26.xyz)));
    float _523;
    float _524;
    bool _525;
    do {
      _506 = float4(_30_m22.xyz, _326).xyz;
      float3 _507 = _10_m11.xyz - _506;
      _509 = _326 * _326;
      float _511 = dot(_499, _507);
      float _513 = (_511 * _511) - (dot(_507, _507) - _509);
      if (_513 <= 0.0f) {
        _523 = 0.0f;
        _524 = 0.0f;
        _525 = false;
        break;
      }
      float _517 = sqrt(_513);
      float _518 = -_511;
      float _520 = max(0.0f, _518 - _517);
      _523 = _520;
      _524 = (_518 + _517) - _520;
      _525 = true;
      break;
    } while (false);
    float3 _646;
    if (_525) {
      float _545;
      bool _546;
      do {
        float3 _531 = _10_m11.xyz - float4(_30_m22.xyz, _30_m36.w).xyz;
        float _535 = dot(_499, _531);
        float _537 = (_535 * _535) - (dot(_531, _531) - (_30_m36.w * _30_m36.w));
        if (_537 <= 0.0f) {
          _545 = 0.0f;
          _546 = false;
          break;
        }
        _545 = max(0.0f, (-_535) - sqrt(_537));
        _546 = true;
        break;
      } while (false);
      float _555;
      if (_546) {
        float _554;
        if (_545 > 0.0f) {
          _554 = min(_524, _545 - _523);
        } else {
          _554 = _524;
        }
        _555 = _554;
      } else {
        _555 = _524;
      }
      float3 _645;
      if (_555 > 0.0f) {
        float _561 = _555 / _30_m36.y;
        float _566 = dot(-_499, _503);
        float3 _571 = _30_m36.z.xxx * float3(0.000244140625f, 0.001267349696718156337738037109375f, 0.00266802101396024227142333984375f);
        float3 _576;
        float3 _578;
        _576 = (_10_m11.xyz + (_499 * _523)) + ((_499 * 0.5f) * _561);
        _578 = 0.0f.xxx;
        float _574;
        float3 _577;
        float3 _579;
        float _573 = 0.0f;
        int _580 = 0;
        for (; float(_580) < _30_m36.y; _573 = _574, _576 = _577, _578 = _579, _580++) {
          float3 _586 = _576 - _506;
          float _594 = min(exp((-((length(_586) - _30_m36.w) * _324)) * _30_m37.y) * _561, 3.4028234663852885981170418348452e+38f);
          _574 = _573 + _594;
          float _611;
          do {
            float _599 = dot(_503, _586);
            float _601 = (_599 * _599) - (dot(_586, _586) - _509);
            if (_601 <= 0.0f) {
              _611 = 0.0f;
              break;
            }
            float _605 = sqrt(_601);
            float _606 = -_599;
            _611 = (_606 + _605) - max(0.0f, _606 - _605);
            break;
          } while (false);
          float _612 = _611 / _30_m37.x;
          float3 _617;
          float _620;
          _617 = _576 + ((_503 * 0.5f) * _612);
          _620 = 0.0f;
          for (int _622 = 0; float(_622) < _30_m37.x;) {
            float3 _627 = _617 - _506;
            _617 += (_503 * _612);
            _620 += exp((-(max(length(_627) - _30_m36.w, 0.0f) * _324)) * _30_m37.y);
            _622++;
            continue;
          }
          _579 = _578 + (exp(-(_571 * ((_620 * _612) + _574))) * _594);
          _577 = _576 + (_499 * _561);
        }
        _645 = (_578 * (0.0596831031143665313720703125f * (1.0f + (_566 * _566)))) * _571;
      } else {
        _645 = 0.0f.xxx;
      }
      _646 = _645;
    } else {
      _646 = 0.0f.xxx;
    }
    float3 _647 = _646 * _30_m37.z;
    float _648 = _647.z;
    float _649 = _647.y;
    float4 _654 = lerp(float4(_648, _649, -1.0f, 0.666666686534881591796875f), float4(_649, _648, 0.0f, -0.3333333432674407958984375f), step(_648, _649).xxxx);
    float _655 = _647.x;
    float _656 = _654.x;
    float4 _664 = lerp(float4(_656, _654.yw, _655), float4(_655, _654.yz, _656), step(_656, _655).xxxx);
    float _665 = _664.x;
    float _666 = _664.w;
    float _667 = _664.y;
    float _669 = _665 - min(_666, _667);
    float3 _680;
    _680.x = abs(_664.z + ((_666 - _667) / ((6.0f * _669) + 9.9999997473787516355514526367188e-05f))) + _30_m37.w;
    float3 _691 = lerp(1.0f.xxx, clamp(abs((frac(_680.xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), (_669 / (_665 + 9.9999997473787516355514526367188e-05f)).xxx) * _665;
    float3 _696 = _490.xyz;
    float _707 = _490.w;
    _723 = ((_269 * (1.0f - (_707 * (1.0f - (step(0.5f, _30_m8) * step(_30_m8, 1.5f)))))) + ((lerp(dot(_696, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _696, _12_m78.w.xxx) * _12_m78.xyz).xyz * (1.0f - ((1.0f - _707) * step(_30_m8, 0.5f))))) + (lerp(_691 * _413, _691, _30_m38.y.xxx) * _488);
  }
  else {
    _723 = _269;
  }
  float3 _1077;
  [branch] if (_30_m1 > 0.75f) {
    float3 _871;
    float _874;
    float _772 = 1.0f / _30_m39.x;
    float _774 = _30_m39.w + _30_m39.x;
    float3 _777 = normalize(_202);
    float _778 = dot(_777, _30_m25.xyz);
    float _783 = ((_30_m29.x * _30_m29.x) - 1.0f) + (_778 * _778);
    float3 _796 = (((_777 * (_778 - sqrt(max(0.0f, _783)))) - _30_m25.xyz) / _30_m29.x.xxx).xyz;
    float _800 = dot(_796, _30_m31.xyz);
    float _801 = -_800;
    float3 _809 = normalize(_796 - (_30_m31.xyz * _800));
    float _818 = float(int(sign(dot(_809, _30_m35.xyz))));
    float2 _823 = float2(clamp(-_818, 0.0f, 1.0f) + (_818 * (acos(dot(_809, _30_m33.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_801 * _801)) + (-0.27777779102325439453125f)) * _801) + 0.500000059604644775390625f);
    float4 _827 = _21.SampleBias(_22, _823, _12_m16);
    float _834 = clamp((clamp(dot(_30_m27.xyz, _796), 0.0f, 1.0f) * _30_m5) + _30_m7, 0.0f, 1.0f);
    float4 _837 = _25.SampleBias(_26, _823, _12_m16);
    float _842 = _827.w;
    float4 _847 = float4((_827.xyz * _834) + (_837.xyz * _30_m19.xyz), _842) * float(max(_783 * clamp(dot(_777, normalize(_30_m25.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float3 _849 = _847.xyz * _842;
    float _853 = lerp(1.0f, clamp(_777.y, 0.0f, 1.0f), _30_m41.w);
    float4 _855 = (float4(_849.x, _849.y, _849.z, _847.w) * _30_m15) * _853;
    float3 _864 = _777 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_777, _777)));
    float3 _868 = _30_m27.xyz * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_30_m27.xyz, _30_m27.xyz)));
    float _888;
    float _889;
    bool _890;
    do {
      _871 = float4(_30_m23.xyz, _774).xyz;
      float3 _872 = _10_m11.xyz - _871;
      _874 = _774 * _774;
      float _876 = dot(_864, _872);
      float _878 = (_876 * _876) - (dot(_872, _872) - _874);
      if (_878 <= 0.0f) {
        _888 = 0.0f;
        _889 = 0.0f;
        _890 = false;
        break;
      }
      float _882 = sqrt(_878);
      float _883 = -_876;
      float _885 = max(0.0f, _883 - _882);
      _888 = _885;
      _889 = (_883 + _882) - _885;
      _890 = true;
      break;
    } while (false);
    float3 _1011;
    if (_890) {
      float _910;
      bool _911;
      do {
        float3 _896 = _10_m11.xyz - float4(_30_m23.xyz, _30_m39.w).xyz;
        float _900 = dot(_864, _896);
        float _902 = (_900 * _900) - (dot(_896, _896) - (_30_m39.w * _30_m39.w));
        if (_902 <= 0.0f) {
          _910 = 0.0f;
          _911 = false;
          break;
        }
        _910 = max(0.0f, (-_900) - sqrt(_902));
        _911 = true;
        break;
      } while (false);
      float _920;
      if (_911) {
        float _919;
        if (_910 > 0.0f) {
          _919 = min(_889, _910 - _888);
        } else {
          _919 = _889;
        }
        _920 = _919;
      } else {
        _920 = _889;
      }
      float3 _1010;
      if (_920 > 0.0f) {
        float _926 = _920 / _30_m39.y;
        float _931 = dot(-_864, _868);
        float3 _936 = _30_m39.z.xxx * float3(0.000244140625f, 0.001267349696718156337738037109375f, 0.00266802101396024227142333984375f);
        float3 _941;
        float3 _943;
        _941 = (_10_m11.xyz + (_864 * _888)) + ((_864 * 0.5f) * _926);
        _943 = 0.0f.xxx;
        float _939;
        float3 _942;
        float3 _944;
        float _938 = 0.0f;
        int _945 = 0;
        for (; float(_945) < _30_m39.y; _938 = _939, _941 = _942, _943 = _944, _945++) {
          float3 _951 = _941 - _871;
          float _959 = min(exp((-((length(_951) - _30_m39.w) * _772)) * _30_m40.y) * _926, 3.4028234663852885981170418348452e+38f);
          _939 = _938 + _959;
          float _976;
          do {
            float _964 = dot(_868, _951);
            float _966 = (_964 * _964) - (dot(_951, _951) - _874);
            if (_966 <= 0.0f) {
              _976 = 0.0f;
              break;
            }
            float _970 = sqrt(_966);
            float _971 = -_964;
            _976 = (_971 + _970) - max(0.0f, _971 - _970);
            break;
          } while (false);
          float _977 = _976 / _30_m40.x;
          float3 _982;
          float _985;
          _982 = _941 + ((_868 * 0.5f) * _977);
          _985 = 0.0f;
          for (int _987 = 0; float(_987) < _30_m40.x;) {
            float3 _992 = _982 - _871;
            _982 += (_868 * _977);
            _985 += exp((-(max(length(_992) - _30_m39.w, 0.0f) * _772)) * _30_m40.y);
            _987++;
            continue;
          }
          _944 = _943 + (exp(-(_936 * ((_985 * _977) + _939))) * _959);
          _942 = _941 + (_864 * _926);
        }
        _1010 = (_943 * (0.0596831031143665313720703125f * (1.0f + (_931 * _931)))) * _936;
      } else {
        _1010 = 0.0f.xxx;
      }
      _1011 = _1010;
    } else {
      _1011 = 0.0f.xxx;
    }
    float3 _1012 = _1011 * _30_m40.z;
    float _1013 = _1012.z;
    float _1014 = _1012.y;
    float4 _1019 = lerp(float4(_1013, _1014, -1.0f, 0.666666686534881591796875f), float4(_1014, _1013, 0.0f, -0.3333333432674407958984375f), step(_1013, _1014).xxxx);
    float _1020 = _1012.x;
    float _1021 = _1019.x;
    float4 _1029 = lerp(float4(_1021, _1019.yw, _1020), float4(_1020, _1019.yz, _1021), step(_1021, _1020).xxxx);
    float _1030 = _1029.x;
    float _1031 = _1029.w;
    float _1032 = _1029.y;
    float _1034 = _1030 - min(_1031, _1032);
    float3 _1045;
    _1045.x = abs(_1029.z + ((_1031 - _1032) / ((6.0f * _1034) + 9.9999997473787516355514526367188e-05f))) + _30_m40.w;
    float3 _1056 = lerp(1.0f.xxx, clamp(abs((frac(_1045.xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), (_1034 / (_1030 + 9.9999997473787516355514526367188e-05f)).xxx) * _1030;
    float _1061 = _855.w;
    _1077 = ((_723 * (1.0f - (_1061 * (1.0f - (step(0.5f, _30_m9) * step(_30_m9, 1.5f)))))) + (_855.xyz * (1.0f - ((1.0f - _1061) * step(_30_m9, 0.5f))))) + (lerp(_1056 * _834, _1056, _30_m41.y.xxx) * _853);
  }
  else {
    _1077 = _723;
  }
  float _1106 = _4.y * _12_m46.w;
  float _1111 = max(0.00999999977648258209228515625f, _1106 + _12_m47.w);
  float3 _1125 = exp(_12_m45.xyz * ((-max(0.0f, (_207 * _12_m44.w) - _12_m43.w)) * (((1.0f - exp(-_1111)) / _1111) * exp(_1106 + _12_m48.w))));
  float _1128 = dot(_206, _12_m44.xyz);
  float _1134 = _12_m45.w * _12_m45.w;
  float _1138 = (1.0f + _1134) - ((2.0f * _12_m45.w) * _1128);
  float3 _1465;
  float _1466;
  if (_12_m55.z > 0.0f) {
    uint3 _1292 = (uint3(int3(int(_198.x), int(_198.y), int(_12_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1293 = _1292.y;
    uint _1294 = _1292.z;
    uint _1297 = _1292.x + (_1293 * _1294);
    uint _1299 = _1293 + (_1294 * _1297);
    uint _1301 = _1294 + (_1297 * _1299);
    uint _1303 = _1297 + (_1299 * _1301);
    float _1330 = dot(_206, -_10_m0[2].xyz);
    float _1338 = (_12_m55.w * ((_1330 > 5.9604644775390625e-08f) ? (1.0f / _1330) : 0.0f)) * (1.0f / _207);
    float _1339 = _202.y;
    float _1340 = _1338 * _1339;
    float _1342 = _10_m11.y + _1340;
    float _1343 = _1339 - _1340;
    float _1345 = (1.0f - _1338) * _207;
    float _1359 = max(-127.0f, _12_m49.z * _1343);
    float _1383 = max(-127.0f, _12_m52.x * _1343);
    float _1394 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_1342 - _12_m49.x)))) * ((abs(_1359) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1359)) / _1359) : (0.693147182464599609375f - (0.2402265071868896484375f * _1359)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_1342 - _12_m52.z)))) * ((abs(_1383) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1383)) / _1383) : (0.693147182464599609375f - (0.2402265071868896484375f * _1383))));
    float _1416 = clamp((_207 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _1419 = clamp((max(clamp(exp2(-(_1394 * _1345)), 0.0f, 1.0f), _12_m51.w) + clamp((_207 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _1416, 0.0f, 1.0f);
    float4 _1459 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _17.SampleLevel(_14, float3((float2(_198) + ((((float3(uint3(_1303, _1299 + (_1301 * _1303), _189) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _12_m59.w).xy) * _12_m57.xy, (log2((_193 * _12_m56.x) + _12_m56.y) * _12_m56.z) / _12_m55.z), 0.0f), clamp((_193 - _12_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _1465 = _1459.xyz + (((_12_m51.xyz * (1.0f - _1419)) + (((_12_m54.xyz * pow(clamp(dot(_236, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_1394 * max(_1345 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1416))) * _1459.w);
    _1466 = _1459.w * _1419;
  } else {
    float _1166 = _202.y;
    float _1180 = max(-127.0f, _12_m49.z * _1166);
    float _1204 = max(-127.0f, _12_m52.x * _1166);
    float _1215 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_10_m11.y - _12_m49.x)))) * ((abs(_1180) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1180)) / _1180) : (0.693147182464599609375f - (0.2402265071868896484375f * _1180)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_10_m11.y - _12_m52.z)))) * ((abs(_1204) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1204)) / _1204) : (0.693147182464599609375f - (0.2402265071868896484375f * _1204))));
    float _1237 = clamp((_207 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _1240 = clamp((max(clamp(exp2(-(_1215 * _207)), 0.0f, 1.0f), _12_m51.w) + clamp((_207 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _1237, 0.0f, 1.0f);
    _1465 = (_12_m51.xyz * (1.0f - _1240)) + (((_12_m54.xyz * pow(clamp(dot(_236, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_1215 * max(_207 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1237));
    _1466 = _1240;
  }
  float3 _1471 = ((lerp(dot(_1077.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1077.xyz, _12_m78.w.xxx) * _12_m78.xyz).xyz * (_1125 * _1466)) + ((((clamp(((_12_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1128 * _1128)))) + _12_m48.xyz) + (_12_m47.xyz * ((1.0f - _1134) / max((12.56637096405029296875f * _1138) * sqrt(_1138), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1125)) * _1466) + _1465);
  float4 _1472 = float4(_1471.x, _1471.y, _1471.z, _228.w);
  _1472.w = 1.0f;
  float2 _1486 = (_5.xy / max(_5.z, 9.9999999392252902907785028219223e-09f).xx) - (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx);
  _1486.y = -_1486.y;
  _7 = _1472;
  // RenoDX code start: retain Tech Test Look sky desaturation after native fog and color grading.
  if (TECH_TEST_LOOK > 0.5f) {
    _7.xyz = lerp(_7.xyz, dot(_7.xyz, float3(0.2126f, 0.7152f, 0.0722f)).xxx, 0.5f);
  }
  // RenoDX code end
  _8 = float4(((sqrt(sqrt(abs(_1486 * 0.5f))) * float2(int2(sign(_1486)))) * 0.5f) + 0.5f.xx, 0.0f, 0.0f);
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

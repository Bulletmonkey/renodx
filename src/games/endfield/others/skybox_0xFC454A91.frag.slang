#include "../common.hlsl"

static uint _181;

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
[[vk::binding(6, 3)]] SamplerState _15 : register(s6, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _18 : register(t13, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _20 : register(t14, space3);
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
  float _185 = 1.0f / gl_FragCoord.w;
  uint2 _190 = uint2(gl_FragCoord.xy);
  float3 _194 = _4 - _10_m11.xyz;
  float _195 = dot(_194, _194);
  float _197 = rsqrt(max(_195, 9.9999999392252902907785028219223e-09f));
  float3 _198 = _194 * _197;
  float _199 = _195 * _197;
  float3 _203 = _198 * (1.0f / dot(abs(_198), 1.0f.xxx));
  float _204 = _203.x;
  float _205 = _203.z;
  float _216 = _198.y;
  float4 _220 = _19.SampleLevel(_14, float2((_204 + _205) + 1.0f, (_204 - _205) + 1.0f) * 0.5f, 0.0f) * clamp(1.0f + (_216 * 10.0f), 0.0f, 1.0f);
  float3 _228 = -_198;
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xFC454A91:
  float _233 = pow(clamp(dot(-_30_m53.xyz, _228), 0.0f, 1.0f), _30_m52.x);
  */
  float _233 = pow(clamp(dot(-_30_m53.xyz, _228), 0.0f, 1.0f), _30_m52.x * (SUN_INTENSITY > 0.5f ? 5.f : 1.f));
  // RenoDX code end
  float _245 = (0.010016442276537418365478515625f * (1.0f + (_233 * _233))) / max(pow(1.98010003566741943359375f - (_233 * 1.980000019073486328125f), pow(_30_m51.w, 0.64999997615814208984375f) * 8.0f), 9.9999997473787516355514526367188e-05f);
  float _261 = _198.x;
  float _262 = _198.z;
  float _263 = _261 / _262;
  float _264 = abs(_263);
  bool _265 = _264 < 1.0f;
  float _267 = _265 ? _264 : (1.0f / _264);
  float _268 = _267 * _267;
  float _273 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _268)) * _268)) * _267;
  float _275 = _265 ? _273 : (1.57079637050628662109375f - _273);
  float _285 = abs(_216);
  float _292 = ((((0.04688780009746551513671875f * _285) + (-0.203471004962921142578125f)) * _285) + 1.57079601287841796875f) * sqrt(1.0f - _285);
  float2 _299 = (float2(((_263 < 0.0f) ? (-_275) : _275) + (((_261 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_262 < 0.0f)), 1.57079637050628662109375f - ((_216 >= 0.0f) ? _292 : (3.1415927410125732421875f - _292))) * float2(0.159099996089935302734375f, 0.3183000087738037109375f)) + 0.5f.xx;
  float4 _315 = _20.SampleBias(_15, float2(_299.x + (1.0f - (_30_m50.w * 0.00277777784503996372222900390625f)), (_299.y * 2.0f) - 1.0f), _12_m16);
  float3 _321 = ((_315.xyz - 0.5f.xxx) * _30_m49.y) + 0.5f.xxx;
  float4 _325 = float4(_321.x, _321.y, _321.z, _315.w) * _30_m47;
  float4 _338 = (lerp(_325, max(_325.x, _325.y).xxxx, _30_m49.x.xxxx) * _30_m48) * step(0.0f, _216);
  float _340 = clamp(_338.w, 0.0f, 1.0f);
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xFC454A91:
      float3 _341 = (_220.xyz + clamp(((_30_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _245) * _245, _245, _30_m52.y)) * _30_m52.w) * _30_m53.w, 0.0f.xxx, 3.0f.xxx)).xyz;
  */
  float3 renodx_sun = max(((_30_m51.xyz * lerp(smoothstep(0.5f, 1.0f, _245) * _245, _245, _30_m52.y)) * _30_m52.w) * _30_m53.w, 0.f.xxx);
  if (SUN_INTENSITY > 0.5f) {
    float sun_dot = saturate(dot(-_30_m53.xyz, _228));
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
  float3 _341 = (_220.xyz + renodx_sun).xyz;
  // RenoDX code end
  float3 _483;
  float _484;
  float3 _485;
  float _486;
  [branch] if (_30_m0 > 0.75f) {
    float3 _376 = normalize(_194);
    float _377 = dot(_376, _30_m24.xyz);
    float _382 = ((_30_m28.x * _30_m28.x) - 1.0f) + (_377 * _377);
    float3 _395 = (((_376 * (_377 - sqrt(max(0.0f, _382)))) - _30_m24.xyz) / _30_m28.x.xxx).xyz;
    float _397 = float(max(_382 * clamp(dot(_376, normalize(_30_m24.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float _399 = dot(_395, _30_m30.xyz);
    float _400 = -_399;
    float3 _408 = normalize(_395 - (_30_m30.xyz * _399));
    float _417 = float(int(sign(dot(_408, _30_m34.xyz))));
    float2 _422 = float2(clamp(-_417, 0.0f, 1.0f) + (_417 * (acos(dot(_408, _30_m32.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_400 * _400)) + (-0.27777779102325439453125f)) * _400) + 0.500000059604644775390625f);
    float4 _424 = _21.SampleBias(_22, _422, _12_m16);
    float _439 = _424.w;
    float4 _444 = float4((_424.xyz * clamp((clamp(dot(_30_m26.xyz, _395), 0.0f, 1.0f) * _30_m4) + _30_m6, 0.0f, 1.0f)) + (_25.SampleBias(_26, _422, _12_m16).xyz * _30_m18.xyz), _439) * _397;
    float3 _446 = _444.xyz * _439;
    float4 _452 = (float4(_446.x, _446.y, _446.z, _444.w) * _30_m14) * lerp(1.0f, clamp(_376.y, 0.0f, 1.0f), _30_m38.w);
    float3 _453 = _452.xyz;
    float _464 = max(0.0f, _397);
    float _465 = _452.w;
    float _468 = step(0.5f, _30_m8) * step(_30_m8, 1.5f);
    float _471 = _465 * (1.0f - _468);
    float3 _474 = (lerp(dot(_453, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _453, _12_m78.w.xxx) * _12_m78.xyz).xyz;
    _483 = _474 * _468;
    _484 = max(0.0f, max(_464, _471));
    _485 = (_341 * (1.0f - _471)) + (_474 * (1.0f - ((1.0f - _465) * step(_30_m8, 0.5f))));
    _486 = _464;
  }
  else {
    _483 = 0.0f.xxx;
    _484 = 0.0f;
    _485 = _341;
    _486 = 0.0f;
  }
  float3 _618;
  float _619;
  float3 _620;
  [branch] if (_30_m1 > 0.75f) {
    float3 _521 = normalize(_194);
    float _522 = dot(_521, _30_m25.xyz);
    float _527 = ((_30_m29.x * _30_m29.x) - 1.0f) + (_522 * _522);
    float3 _540 = (((_521 * (_522 - sqrt(max(0.0f, _527)))) - _30_m25.xyz) / _30_m29.x.xxx).xyz;
    float _542 = float(max(_527 * clamp(dot(_521, normalize(_30_m25.xyz)), 0.0f, 1.0f), 0.0f) > 0.0f);
    float _544 = dot(_540, _30_m31.xyz);
    float _545 = -_544;
    float3 _553 = normalize(_540 - (_30_m31.xyz * _544));
    float _562 = float(int(sign(dot(_553, _30_m35.xyz))));
    float2 _567 = float2(clamp(-_562, 0.0f, 1.0f) + (_562 * (acos(dot(_553, _30_m33.xyz)) * 0.15915493667125701904296875f)), ((((-0.22222222387790679931640625f) * (_545 * _545)) + (-0.27777779102325439453125f)) * _545) + 0.500000059604644775390625f);
    float4 _569 = _23.SampleBias(_24, _567, _12_m16);
    float _584 = _569.w;
    float4 _589 = float4((_569.xyz * clamp((clamp(dot(_30_m27.xyz, _540), 0.0f, 1.0f) * _30_m5) + _30_m7, 0.0f, 1.0f)) + (_27.SampleBias(_28, _567, _12_m16).xyz * _30_m19.xyz), _584) * _542;
    float3 _591 = _589.xyz * _584;
    float4 _597 = (float4(_591.x, _591.y, _591.z, _589.w) * _30_m15) * lerp(1.0f, clamp(_521.y, 0.0f, 1.0f), _30_m41.w);
    float _599 = _597.w;
    float _602 = step(0.5f, _30_m9) * step(_30_m9, 1.5f);
    float _605 = _599 * (1.0f - _602);
    float3 _608 = _597.xyz;
    _618 = _483 + (_608 * _602);
    _619 = max(_484, max(max(_486, _542), _605));
    _620 = (_485 * (1.0f - _605)) + (_608 * (1.0f - ((1.0f - _599) * step(_30_m9, 0.5f))));
  }
  else {
    _618 = _483;
    _619 = _484;
    _620 = _485;
  }
  float _623 = 1.0f - _30_m10;
  float3 _637 = (lerp(_620.xyz, _338.xyz, (_340 * (1.0f - (_619 * _623))).xxx).xyz + (_618 * ((_340 * _623) * (1.0f - _619)))).xyz;
  float _665 = _4.y * _12_m46.w;
  float _670 = max(0.00999999977648258209228515625f, _665 + _12_m47.w);
  float3 _684 = exp(_12_m45.xyz * ((-max(0.0f, (_199 * _12_m44.w) - _12_m43.w)) * (((1.0f - exp(-_670)) / _670) * exp(_665 + _12_m48.w))));
  float _687 = dot(_198, _12_m44.xyz);
  float _693 = _12_m45.w * _12_m45.w;
  float _697 = (1.0f + _693) - ((2.0f * _12_m45.w) * _687);
  float3 _1024;
  float _1025;
  if (_12_m55.z > 0.0f) {
    uint3 _851 = (uint3(int3(int(_190.x), int(_190.y), int(_12_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _852 = _851.y;
    uint _853 = _851.z;
    uint _856 = _851.x + (_852 * _853);
    uint _858 = _852 + (_853 * _856);
    uint _860 = _853 + (_856 * _858);
    uint _862 = _856 + (_858 * _860);
    float _889 = dot(_198, -_10_m0[2].xyz);
    float _897 = (_12_m55.w * ((_889 > 5.9604644775390625e-08f) ? (1.0f / _889) : 0.0f)) * (1.0f / _199);
    float _898 = _194.y;
    float _899 = _897 * _898;
    float _901 = _10_m11.y + _899;
    float _902 = _898 - _899;
    float _904 = (1.0f - _897) * _199;
    float _918 = max(-127.0f, _12_m49.z * _902);
    float _942 = max(-127.0f, _12_m52.x * _902);
    float _953 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_901 - _12_m49.x)))) * ((abs(_918) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_918)) / _918) : (0.693147182464599609375f - (0.2402265071868896484375f * _918)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_901 - _12_m52.z)))) * ((abs(_942) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_942)) / _942) : (0.693147182464599609375f - (0.2402265071868896484375f * _942))));
    float _975 = clamp((_199 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _978 = clamp((max(clamp(exp2(-(_953 * _904)), 0.0f, 1.0f), _12_m51.w) + clamp((_199 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _975, 0.0f, 1.0f);
    float4 _1018 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _18.SampleLevel(_14, float3((float2(_190) + ((((float3(uint3(_862, _858 + (_860 * _862), _181) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _12_m59.w).xy) * _12_m57.xy, (log2((_185 * _12_m56.x) + _12_m56.y) * _12_m56.z) / _12_m55.z), 0.0f), clamp((_185 - _12_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _1024 = _1018.xyz + (((_12_m51.xyz * (1.0f - _978)) + (((_12_m54.xyz * pow(clamp(dot(_228, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_953 * max(_904 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _975))) * _1018.w);
    _1025 = _1018.w * _978;
  } else {
    float _725 = _194.y;
    float _739 = max(-127.0f, _12_m49.z * _725);
    float _763 = max(-127.0f, _12_m52.x * _725);
    float _774 = ((_12_m49.y * exp2(-max(-127.0f, _12_m49.z * (_10_m11.y - _12_m49.x)))) * ((abs(_739) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_739)) / _739) : (0.693147182464599609375f - (0.2402265071868896484375f * _739)))) + ((_12_m52.y * exp2(-max(-127.0f, _12_m52.x * (_10_m11.y - _12_m52.z)))) * ((abs(_763) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_763)) / _763) : (0.693147182464599609375f - (0.2402265071868896484375f * _763))));
    float _796 = clamp((_199 * _12_m50.w) + _12_m50.z, 0.0f, 1.0f);
    float _799 = clamp((max(clamp(exp2(-(_774 * _199)), 0.0f, 1.0f), _12_m51.w) + clamp((_199 * _12_m50.y) + _12_m50.x, 0.0f, 1.0f)) + _796, 0.0f, 1.0f);
    _1024 = (_12_m51.xyz * (1.0f - _799)) + (((_12_m54.xyz * pow(clamp(dot(_228, _12_m53.xyz), 0.0f, 1.0f), _12_m54.w)) * (1.0f - clamp(exp2(-(_774 * max(_199 - _12_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _796));
    _1025 = _799;
  }
  float3 _1030 = ((lerp(dot(_637, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _637, _12_m78.w.xxx) * _12_m78.xyz).xyz * (_684 * _1025)) + ((((clamp(((_12_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_687 * _687)))) + _12_m48.xyz) + (_12_m47.xyz * ((1.0f - _693) / max((12.56637096405029296875f * _697) * sqrt(_697), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _684)) * _1025) + _1024);
  float4 _1031 = float4(_1030.x, _1030.y, _1030.z, _220.w);
  _1031.w = 1.0f;
  float2 _1045 = (_5.xy / max(_5.z, 9.9999999392252902907785028219223e-09f).xx) - (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx);
  _1045.y = -_1045.y;
  _7 = _1031;
  // RenoDX code start: retain Tech Test Look sky desaturation after native fog and color grading.
  if (TECH_TEST_LOOK > 0.5f) {
    _7.xyz = lerp(_7.xyz, dot(_7.xyz, float3(0.2126f, 0.7152f, 0.0722f)).xxx, 0.5f);
  }
  // RenoDX code end
  _8 = float4(((sqrt(sqrt(abs(_1045 * 0.5f))) * float2(int2(sign(_1045)))) * 0.5f) + 0.5f.xx, 0.0f, 0.0f);
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

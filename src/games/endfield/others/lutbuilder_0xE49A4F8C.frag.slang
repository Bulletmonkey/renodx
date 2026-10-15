#include "../common.hlsl"

static float ACESLikeScalar(float value) {
  static const float a = 278.5085;
  static const float b = 10.7772;
  static const float c = 293.6045;
  static const float d = 88.7122;
  static const float e = 80.6889;
  const float divergence_point = 0.267010625;

  float tonemapped = (value * (a * value + b)) / (value * (c * value + d) + e);
  float linear_extension = 0.9174704430474515 * value - 0.06355161968502177;
  return (value < divergence_point) ? tonemapped : linear_extension;
}

static float3 _175;

[[vk::binding(9, 3)]] cbuffer _16_17 : register(b9, space3) {
  float4 _17_m0 : packoffset(c0);
  float4 _17_m1 : packoffset(c1);
  float4 _17_m2 : packoffset(c2);
  float4 _17_m3 : packoffset(c3);
  float4 _17_m4 : packoffset(c4);
  float4 _17_m5 : packoffset(c5);
  float4 _17_m6 : packoffset(c6);
  float4 _17_m7 : packoffset(c7);
  float4 _17_m8 : packoffset(c8);
  float4 _17_m9 : packoffset(c9);
  float4 _17_m10 : packoffset(c10);
  float4 _17_m11 : packoffset(c11);
  float4 _17_m12 : packoffset(c12);
  float4 _17_m13 : packoffset(c13);
  float4 _17_m14 : packoffset(c14);
  float4 _17_m15 : packoffset(c15);
  float4 _17_m16 : packoffset(c16);
  float4 _17_m17 : packoffset(c17);
  float4 _17_m18 : packoffset(c18);
  float4 _17_m19 : packoffset(c19);
  float4 _17_m20 : packoffset(c20);
  float4 _17_m21 : packoffset(c21);
  float4 _17_m22 : packoffset(c22);
  float4 _17_m23 : packoffset(c23);
  float4 _17_m24 : packoffset(c24);
  float4 _17_m25 : packoffset(c25);
};

[[vk::binding(3, 3)]] Texture2D<float4> _7 : register(t3, space3);
[[vk::binding(2, 3)]] Texture2D<float4> _8 : register(t2, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _9 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _10 : register(t8, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _11 : register(t6, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _12 : register(t5, space3);
[[vk::binding(1, 3)]] Texture2D<float4> _13 : register(t1, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _14 : register(t4, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);

static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _4 : SV_Target0;
};

void frag_main() {
  float2 _181 = _3 - _17_m2.yz;
  float _182 = _181.x;
  float _185 = frac(_182 * _17_m2.x);
  float3 _207 = mul(float3x3(float3(1.45143926143646240234375f, -0.236510753631591796875f, -0.214928567409515380859375f), float3(-0.07655377686023712158203125f, 1.1762297153472900390625f, -0.0996759235858917236328125f), float3(0.0083161480724811553955078125f, -0.0060324496589601039886474609375f, 0.99771630764007568359375f)), mul(float3x3(float3(0.4397009909152984619140625f, 0.3829779922962188720703125f, 0.1773349940776824951171875f), float3(0.08979229629039764404296875f, 0.813422977924346923828125f, 0.09676159918308258056640625f), float3(0.01754399947822093963623046875f, 0.11154399812221527099609375f, 0.870703995227813720703125f)), mul(float3x3(float3(2.85846996307373046875f, -1.62879002094268798828125f, -0.0248910002410411834716796875f), float3(-0.21018199622631072998046875f, 1.1582000255584716796875f, 0.0003242809907533228397369384765625f), float3(-0.0418119989335536956787109375f, -0.118169002234935760498046875f, 1.0686700344085693359375f)), mul(float3x3(float3(0.390404999256134033203125f, 0.549941003322601318359375f, 0.008926319889724254608154296875f), float3(0.070841602981090545654296875f, 0.963172018527984619140625f, 0.001357750035822391510009765625f), float3(0.02310819923877716064453125f, 0.1280210018157958984375f, 0.936245024204254150390625f)), (pow(10.0f.xxx, ((float3(_185, _181.y, _182 - (_185 / _17_m2.x)) * _17_m2.w) - 0.3860360085964202880859375f.xxx) * 4.09565830230712890625f.xxx) - 0.04799599945545196533203125f.xxx) * 0.17999999225139617919921875f.xxx) * _17_m3.xyz)));
  float3 _223 = pow(abs(max(0.0f.xxx, (_207 * pow(max(dot(_207, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)), 9.9999999747524270787835121154785e-07f) * 5.5555553436279296875f, _17_m8.z - 1.0f)) * _17_m4.xyz)), 0.4545454680919647216796875f.xxx);
  float _227 = clamp(dot(clamp(_223, 0.0f.xxx, 1.0f.xxx), float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)) + _17_m16.w, 0.0f, 1.0f);
  float3 _232 = lerp(0.5f.xxx, _17_m16.xyz, (1.0f - _227).xxx);
  float3 _237 = lerp(0.5f.xxx, _17_m17.xyz, _227.xxx);
  float3 _238 = _223 * 2.0f;
  float3 _241 = _232 * 2.0f;
  float3 _251 = step(0.5f.xxx, _232);
  float3 _255 = (((sqrt(_223) * (_241 - 1.0f.xxx)) + (_238 * (1.0f.xxx - _232))) * _251) + ((1.0f.xxx - _251) * ((_238 * _232) + ((_223 * _223) * (1.0f.xxx - _241))));
  float3 _256 = _255 * 2.0f;
  float3 _259 = _237 * 2.0f;
  float3 _269 = step(0.5f.xxx, _237);
  float3 _275 = pow(abs((((sqrt(_255) * (_259 - 1.0f.xxx)) + (_256 * (1.0f.xxx - _237))) * _269) + ((1.0f.xxx - _269) * ((_256 * _237) + ((_255 * _255) * (1.0f.xxx - _259))))), 2.2000000476837158203125f.xxx);
  float3 _288 = float3(dot(_275, _17_m5.xyz), dot(_275, _17_m6.xyz), dot(_275, _17_m7.xyz));
  float _289 = dot(_288, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f));
  float _294 = smoothstep(_17_m15.x, _17_m15.y, _289);
  float _300 = smoothstep(_17_m15.z, _17_m15.w, _289);
  float3 _326 = (((((_288 * _17_m12.xyz) * (1.0f - _294)) + ((_288 * _17_m13.xyz) * (_294 - _300))) + ((_288 * _17_m14.xyz) * _300)) * _17_m11.xyz) + _17_m9.xyz;
  float3 _335 = float3(int3(sign(_326))) * pow(abs(_326), _17_m10.xyz);
  float _336 = _335.z;
  float _337 = _335.y;
  float4 _342 = lerp(float4(_336, _337, -1.0f, 0.666666686534881591796875f), float4(_337, _336, 0.0f, -0.3333333432674407958984375f), step(_336, _337).xxxx);
  float _343 = _335.x;
  float _344 = _342.x;
  float4 _352 = lerp(float4(_344, _342.yw, _343), float4(_343, _342.yz, _344), step(_344, _343).xxxx);
  float _353 = _352.x;
  float _354 = _352.w;
  float _355 = _352.y;
  float _357 = _353 - min(_354, _355);
  float _364 = abs(_352.z + ((_354 - _355) / ((6.0f * _357) + 9.9999997473787516355514526367188e-05f)));
  float _366 = _357 / (_353 + 9.9999997473787516355514526367188e-05f);
  float _396 = _364 + _17_m8.x;
  float _405 = _396 + (clamp(_11.SampleLevel(_15, float2(_396, 0.0f), 0.0f).x, 0.0f, 1.0f) - 0.5f);
  float3 _412;
  _412.x = (_405 < 0.0f) ? (_405 + 1.0f) : ((_405 > 1.0f) ? (_405 - 1.0f) : _405);
  float3 _423 = lerp(1.0f.xxx, clamp(abs((frac(_412.xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _366.xxx) * _353;
  float3 _425 = dot(_423, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)).xxx;
  float3 _431 = _425 + ((_17_m8.yyy * (((clamp(_12.SampleLevel(_15, float2(_364, 0.0f), 0.0f).x, 0.0f, 1.0f) * 2.0f) * (clamp(_13.SampleLevel(_15, float2(_366, 0.0f), 0.0f).x, 0.0f, 1.0f) * 2.0f)) * (clamp(_14.SampleLevel(_15, float2(dot(_335, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.0f), 0.0f).x, 0.0f, 1.0f) * 2.0f))) * (_423 - _425));
  float3 _440 = (_431 * (1.0f / (max(max(_431.x, _431.y), _431.z) + 1.0f))) + 0.00390625f.xxx;
  float3 _466 = float3(clamp(_7.SampleLevel(_15, float2(_440.x, 0.0f), 0.0f).x, 0.0f, 1.0f), clamp(_7.SampleLevel(_15, float2(_440.y, 0.0f), 0.0f).x, 0.0f, 1.0f), clamp(_7.SampleLevel(_15, float2(_440.z, 0.0f), 0.0f).x, 0.0f, 1.0f)) + 0.00390625f.xxx;
  float _474 = clamp(_8.SampleLevel(_15, float2(_466.x, 0.0f), 0.0f).x, 0.0f, 1.0f);
  float _482 = clamp(_9.SampleLevel(_15, float2(_466.y, 0.0f), 0.0f).x, 0.0f, 1.0f);
  float _490 = clamp(_10.SampleLevel(_15, float2(_466.z, 0.0f), 0.0f).x, 0.0f, 1.0f);
  float3 _497 = max(0.0f.xxx, float3(_474, _482, _490) * (1.0f / (1.0f - max(max(_474, _482), _490))));
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xE49A4F8C:
      float3 _508 = clamp((_497 * ((_497 * 2.7850849628448486328125f) + 0.107772000133991241455078125f.xxx)) * clamp(1.0f.xxx / ((_497 * ((_497 * 2.9360449314117431640625f) + 0.887121975421905517578125f.xxx)) + 0.806888997554779052734375f.xxx), 9.9999997473787516355514526367188e-05f.xxx, 10000.0f.xxx), 0.0f.xxx, 1.0f.xxx);
  */
  float3 _508 = clamp((_497 * ((_497 * 2.7850849628448486328125f) + 0.107772000133991241455078125f.xxx)) * clamp(1.0f.xxx / ((_497 * ((_497 * 2.9360449314117431640625f) + 0.887121975421905517578125f.xxx)) + 0.806888997554779052734375f.xxx), 9.9999997473787516355514526367188e-05f.xxx, 10000.0f.xxx), 0.0f.xxx, 1.0f.xxx);
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    float3 renodx_per_channel = float3(ACESLikeScalar(_497.x), ACESLikeScalar(_497.y), ACESLikeScalar(_497.z));
    float renodx_luminance = renodx::color::y::from::BT709(_497);
    float3 renodx_luminance_color = renodx::color::correct::Luminance(_497, renodx_luminance, ACESLikeScalar(renodx_luminance));
    _508 = ApplyMBLowHueThenHighHueAndPurity(renodx_luminance_color, _497, renodx_per_channel);
  }
  // RenoDX code end
  float3 _512 = mul(float3x3(float3(1.70505154132843017578125f, -0.621790707111358642578125f, -0.083258680999279022216796875f), float3(-0.13025714457035064697265625f, 1.140802860260009765625f, -0.010548190213739871978759765625f), float3(-0.02400326915085315704345703125f, -0.128968775272369384765625f, 1.15297162532806396484375f)), lerp(dot(_508, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)).xxx, _508, 0.930000007152557373046875f.xxx));
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xE49A4F8C:
      _4 = float4(clamp(lerp(_512, clamp(_512 / max(max(max(_512.x, _512.y), _512.z), 9.9999997473787516355514526367188e-06f).xxx, 0.0f.xxx, 1.0f.xxx), clamp((dot(_497, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)) - 0.5f) * 0.666666686534881591796875f, 0.0f, 1.0f).xxx), 0.0f.xxx, 1.0f.xxx), 1.0f);
  */
  if (RENODX_TONE_MAP_TYPE == 0.f) {
    _4 = float4(clamp(lerp(_512, clamp(_512 / max(max(max(_512.x, _512.y), _512.z), 9.9999997473787516355514526367188e-06f).xxx, 0.0f.xxx, 1.0f.xxx), clamp((dot(_497, float3(0.2722289860248565673828125f, 0.674081981182098388671875f, 0.0536894984543323516845703125f)) - 0.5f) * 0.666666686534881591796875f, 0.0f, 1.0f).xxx), 0.0f.xxx, 1.0f.xxx), 1.0f);
  } else {
    _4 = float4(_512, 1.f);
  }
  // RenoDX code end
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  _3 = stage_input._3;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

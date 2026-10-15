#include "../common.hlsl"

static float _249;

static const float2 _246[16] = {float2(-0.94201624393463134765625f, -0.39906215667724609375f), float2(0.94558608531951904296875f, -0.768907248973846435546875f), float2(-0.094184100627899169921875f, -0.929388701915740966796875f), float2(0.34495937824249267578125f, 0.29387760162353515625f), float2(-0.91588580608367919921875f, 0.4577143192291259765625f), float2(-0.8154423236846923828125f, -0.87912464141845703125f), float2(-0.38277542591094970703125f, 0.2767684459686279296875f), float2(0.9748439788818359375f, 0.7564837932586669921875f), float2(0.4432332515716552734375f, -0.9751155376434326171875f), float2(0.5374298095703125f, -0.473734200000762939453125f), float2(-0.2649691104888916015625f, -0.418930232524871826171875f), float2(0.79197514057159423828125f, 0.19090187549591064453125f), float2(-0.24188840389251708984375f, 0.997065067291259765625f), float2(-0.8140995502471923828125f, 0.91437590122222900390625f), float2(0.1998412609100341796875f, 0.786413669586181640625f), float2(0.14383161067962646484375f, -0.141007900238037109375f)};
static const float2 _247[16] = {float2(-0.3996559083461761474609375f, 0.91666519641876220703125f), float2(0.12451229989528656005859375f, -0.992218077182769775390625f), float2(0.8523542881011962890625f, 0.5229647159576416015625f), float2(-0.22931249439716339111328125f, 0.973352909088134765625f), float2(-0.772406101226806640625f, 0.63512897491455078125f), float2(0.7927525043487548828125f, -0.60954368114471435546875f), float2(-0.578049719333648681640625f, 0.816001594066619873046875f), float2(-0.831129610538482666015625f, -0.55607879161834716796875f), float2(0.8077948093414306640625f, 0.589463770389556884765625f), float2(0.47141540050506591796875f, 0.88191127777099609375f), float2(-0.3139738142490386962890625f, -0.949431717395782470703125f), float2(-0.94500672817230224609375f, -0.3270510137081146240234375f), float2(-0.1850374042987823486328125f, -0.982731521129608154296875f), float2(-0.9337558746337890625f, 0.35791051387786865234375f), float2(-0.997614085674285888671875f, 0.069036297500133514404296875f), float2(0.3061277866363525390625f, 0.951990425586700439453125f)};

[[vk::binding(11, 3)]] cbuffer _5_6 : register(b11, space3) {
  column_major float4x4 _6_m0 : packoffset(c0);
  column_major float4x4 _6_m1 : packoffset(c4);
  column_major float4x4 _6_m2 : packoffset(c8);
  column_major float4x4 _6_m3 : packoffset(c12);
  column_major float4x4 _6_m4 : packoffset(c16);
  column_major float4x4 _6_m5 : packoffset(c20);
  column_major float4x4 _6_m6 : packoffset(c24);
  column_major float4x4 _6_m7 : packoffset(c28);
  column_major float4x4 _6_m8 : packoffset(c32);
  column_major float4x4 _6_m9 : packoffset(c36);
  column_major float4x4 _6_m10 : packoffset(c40);
  float4 _6_m11 : packoffset(c44);
  column_major float4x4 _6_m12 : packoffset(c45);
  column_major float4x4 _6_m13 : packoffset(c49);
  column_major float4x4 _6_m14 : packoffset(c53);
  column_major float4x4 _6_m15 : packoffset(c57);
  column_major float4x4 _6_m16 : packoffset(c61);
  column_major float4x4 _6_m17 : packoffset(c65);
  column_major float4x4 _6_m18 : packoffset(c69);
  column_major float4x4 _6_m19 : packoffset(c73);
  column_major float4x4 _6_m20 : packoffset(c77);
  float4 _6_m21 : packoffset(c81);
};

[[vk::binding(14, 3)]] cbuffer _7_8 : register(b14, space3) {
  float4 _8_m0 : packoffset(c0);
  float4 _8_m1 : packoffset(c1);
  float4 _8_m2 : packoffset(c2);
  float4 _8_m3 : packoffset(c3);
  float4 _8_m4 : packoffset(c4);
  float4 _8_m5 : packoffset(c5);
  float4 _8_m6[6] : packoffset(c6);
  float4 _8_m7[6] : packoffset(c12);
  float4 _8_m8 : packoffset(c18);
  float4 _8_m9 : packoffset(c19);
  float4 _8_m10 : packoffset(c20);
  float4 _8_m11 : packoffset(c21);
  float4 _8_m12 : packoffset(c22);
  float4 _8_m13 : packoffset(c23);
  float4 _8_m14 : packoffset(c24);
  float4 _8_m15 : packoffset(c25);
  float _8_m16 : packoffset(c26);
  float _8_m17 : packoffset(c26.y);
  float _8_m18 : packoffset(c26.z);
  uint _8_m19 : packoffset(c26.w);
  float4 _8_m20 : packoffset(c27);
  int4 _8_m21 : packoffset(c28);
  float4 _8_m22 : packoffset(c29);
  float4 _8_m23 : packoffset(c30);
  float4 _8_m24 : packoffset(c31);
  float4 _8_m25 : packoffset(c32);
  float4 _8_m26 : packoffset(c33);
  float4 _8_m27 : packoffset(c34);
  float4 _8_m28 : packoffset(c35);
  float4 _8_m29 : packoffset(c36);
  float4 _8_m30 : packoffset(c37);
  float4 _8_m31 : packoffset(c38);
  float4 _8_m32[4] : packoffset(c39);
  float4 _8_m33[4] : packoffset(c43);
  float4 _8_m34[4] : packoffset(c47);
  float4 _8_m35[4] : packoffset(c51);
  float4 _8_m36 : packoffset(c55);
  float4 _8_m37 : packoffset(c56);
  float4 _8_m38[4] : packoffset(c57);
  float4 _8_m39[4] : packoffset(c61);
  float4 _8_m40[4] : packoffset(c65);
  float4 _8_m41 : packoffset(c69);
  float4 _8_m42 : packoffset(c70);
  float4 _8_m43 : packoffset(c71);
  float4 _8_m44 : packoffset(c72);
  float4 _8_m45 : packoffset(c73);
  float4 _8_m46 : packoffset(c74);
  float4 _8_m47 : packoffset(c75);
  float4 _8_m48 : packoffset(c76);
  float4 _8_m49 : packoffset(c77);
  float4 _8_m50 : packoffset(c78);
  float4 _8_m51 : packoffset(c79);
  float4 _8_m52 : packoffset(c80);
  float4 _8_m53 : packoffset(c81);
  float4 _8_m54 : packoffset(c82);
  float4 _8_m55 : packoffset(c83);
  float4 _8_m56 : packoffset(c84);
  float4 _8_m57 : packoffset(c85);
  float4 _8_m58 : packoffset(c86);
  float4 _8_m59 : packoffset(c87);
  float4 _8_m60 : packoffset(c88);
  float4 _8_m61 : packoffset(c89);
  float4 _8_m62 : packoffset(c90);
  float4 _8_m63 : packoffset(c91);
  float4 _8_m64 : packoffset(c92);
  float4 _8_m65 : packoffset(c93);
  float4 _8_m66 : packoffset(c94);
  float4 _8_m67 : packoffset(c95);
  float4 _8_m68 : packoffset(c96);
  float4 _8_m69 : packoffset(c97);
  float4 _8_m70 : packoffset(c98);
  float4 _8_m71 : packoffset(c99);
  float4 _8_m72 : packoffset(c100);
  float4 _8_m73 : packoffset(c101);
  float4 _8_m74 : packoffset(c102);
  float4 _8_m75 : packoffset(c103);
  float4 _8_m76 : packoffset(c104);
  float4 _8_m77 : packoffset(c105);
  float4 _8_m78 : packoffset(c106);
  float4 _8_m79 : packoffset(c107);
  float4 _8_m80 : packoffset(c108);
  float4 _8_m81 : packoffset(c109);
  float4 _8_m82 : packoffset(c110);
  float4 _8_m83 : packoffset(c111);
  float4 _8_m84 : packoffset(c112);
  float4 _8_m85 : packoffset(c113);
  float4 _8_m86 : packoffset(c114);
  float4 _8_m87 : packoffset(c115);
  float4 _8_m88 : packoffset(c116);
  float4 _8_m89 : packoffset(c117);
  float4 _8_m90 : packoffset(c118);
  float4 _8_m91 : packoffset(c119);
  float4 _8_m92 : packoffset(c120);
  float4 _8_m93 : packoffset(c121);
  float4 _8_m94 : packoffset(c122);
  float4 _8_m95 : packoffset(c123);
  float4 _8_m96 : packoffset(c124);
  float4 _8_m97 : packoffset(c125);
  float4 _8_m98 : packoffset(c126);
  float4 _8_m99 : packoffset(c127);
  float4 _8_m100 : packoffset(c128);
  float4 _8_m101 : packoffset(c129);
  float4 _8_m102[2] : packoffset(c130);
  float4 _8_m103[2] : packoffset(c132);
  float _8_m104 : packoffset(c134);
  float _8_m105 : packoffset(c134.y);
  float _8_m106 : packoffset(c134.z);
  float _8_m107 : packoffset(c134.w);
  float4 _8_m108 : packoffset(c135);
  float4 _8_m109 : packoffset(c136);
  float4 _8_m110 : packoffset(c137);
  float4 _8_m111 : packoffset(c138);
  float4 _8_m112 : packoffset(c139);
  float4 _8_m113 : packoffset(c140);
  float4 _8_m114 : packoffset(c141);
  float4 _8_m115 : packoffset(c142);
  float4 _8_m116 : packoffset(c143);
  float4 _8_m117 : packoffset(c144);
  float4 _8_m118 : packoffset(c145);
  float4 _8_m119 : packoffset(c146);
  float4 _8_m120 : packoffset(c147);
  float4 _8_m121 : packoffset(c148);
  float4 _8_m122 : packoffset(c149);
  float4 _8_m123 : packoffset(c150);
  float4 _8_m124 : packoffset(c151);
  float4 _8_m125 : packoffset(c152);
  float4 _8_m126 : packoffset(c153);
  float4 _8_m127 : packoffset(c154);
  float4 _8_m128 : packoffset(c155);
  float4 _8_m129 : packoffset(c156);
  float4 _8_m130 : packoffset(c157);
  float4 _8_m131 : packoffset(c158);
  float4 _8_m132 : packoffset(c159);
  float4 _8_m133 : packoffset(c160);
  float4 _8_m134 : packoffset(c161);
  float4 _8_m135 : packoffset(c162);
  float4 _8_m136 : packoffset(c163);
  float4 _8_m137 : packoffset(c164);
  column_major float4x4 _8_m138 : packoffset(c165);
  float4 _8_m139 : packoffset(c169);
  float4 _8_m140 : packoffset(c170);
  float4 _8_m141 : packoffset(c171);
  float4 _8_m142 : packoffset(c172);
  int4 _8_m143 : packoffset(c173);
  int4 _8_m144 : packoffset(c174);
  int4 _8_m145 : packoffset(c175);
  float4 _8_m146[32] : packoffset(c176);
};

[[vk::binding(12, 3)]] cbuffer _16_17 : register(b12, space3) {
  float4 _17_m0 : packoffset(c0);
  float4 _17_m1 : packoffset(c1);
  float4 _17_m2 : packoffset(c2);
  float4 _17_m3 : packoffset(c3);
  float4 _17_m4 : packoffset(c4);
  uint4 _17_m5 : packoffset(c5);
  float4 _17_m6[2048] : packoffset(c6);
};

[[vk::binding(13, 3)]] cbuffer _20_21 : register(b13, space3) {
  column_major float4x4 _21_m0[5] : packoffset(c0);
  float4 _21_m1[4] : packoffset(c20);
  float4 _21_m2[4] : packoffset(c24);
  float4 _21_m3[4] : packoffset(c28);
  float4 _21_m4 : packoffset(c32);
  float4 _21_m5 : packoffset(c33);
  float4 _21_m6 : packoffset(c34);
  float4 _21_m7 : packoffset(c35);
  float4 _21_m8 : packoffset(c36);
  float4 _21_m9[27] : packoffset(c37);
  float4 _21_m10 : packoffset(c64);
  float4 _21_m11 : packoffset(c65);
  float4 _21_m12[62] : packoffset(c66);
  column_major float4x4 _21_m13[15] : packoffset(c128);
  float4 _21_m14[15] : packoffset(c188);
  float4 _21_m15[15] : packoffset(c203);
  float4 _21_m16[15] : packoffset(c218);
  float4 _21_m17 : packoffset(c233);
  float4 _21_m18 : packoffset(c234);
  float4 _21_m19[21] : packoffset(c235);
  column_major float4x4 _21_m20 : packoffset(c256);
  column_major float4x4 _21_m21 : packoffset(c260);
  float4 _21_m22 : packoffset(c264);
  float4 _21_m23 : packoffset(c265);
  float4 _21_m24 : packoffset(c266);
  float4 _21_m25[128] : packoffset(c267);
};

[[vk::binding(0, 3)]] SamplerState _10 : register(s0, space3);
[[vk::binding(2, 3)]] SamplerState _11 : register(s2, space3);
[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _13 : register(s3, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _15 : register(t8, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _22 : register(t9, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _23 : register(t7, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _24 : register(t6, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _25 : register(t10, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _26 : register(t5, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _27 : register(t4, space3);

static float4 gl_FragCoord;
static float3 _4;

struct SPIRV_Cross_Input {
  float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float3 _4 : SV_Target0;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  uint2 _253 = uint2(gl_FragCoord.xy);
  int2 _259 = int3(int(_253.x), int(_253.y), 0).xy;
  float4 _261 = _26.Load(int3(_259, 0));
  float2 _266 = float2(_253);
  float2 _280 = ((_266 * _8_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _283 = float4(_280, _15.SampleLevel(_10, (_266 + 0.5f.xx) * _8_m0.zw, 0.0f).x, 1.0f);
  _283.y = -_280.y;
  float4 _286 = mul(_6_m6, _283);
  float3 _290 = _286.xyz / _286.w.xxx;
  float2 _293 = (_27.Load(int3(_259, 0)).xy * 2.0f) - 1.0f.xx;
  float _297 = 1.0f - dot(1.0f.xx, abs(_293));
  float3 _299 = float3(_293.x, _297, _293.y);
  float3 _311;
  if (_297 < 0.0f) {
    float2 _306 = _299.xz;
    bool2 _307 = bool2(_306.x >= 0.0f.xx.x, _306.y >= 0.0f.xx.y);
    float2 _309 = (1.0f.xx - abs(_299.zx)) * float2(_307.x ? 1.0f.xx.x : (-1.0f).xx.x, _307.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _311 = float3(_309.x, _299.y, _309.y);
  } else {
    _311 = _299;
  }
  float3 _312 = normalize(_311);
  float2 _818;
  do {
    if (_21_m7.w >= 0.9900000095367431640625f) {
      _818 = float2(_21_m7.z, 1.0f);
      break;
    }
    int _325 = int(_21_m7.x);
    bool3 _327 = (_325 == 2).xxx;
    float3 _335 = _290 - float3(_327.x ? _21_m1[0].xyz.x : _6_m11.xyz.x, _327.y ? _21_m1[0].xyz.y : _6_m11.xyz.y, _327.z ? _21_m1[0].xyz.z : _6_m11.xyz.z);
    float _346 = max(clamp((_21_m6.w - dot(_335, _335)) * _21_m6.z, 0.0f, 1.0f), _21_m8.x);
    float _535;
    bool _536;
    if (_346 > 0.0f) {
      float _533;
      bool _534;
      if (_325 > 0) {
        float3 _353 = _290 - _21_m1[0].xyz;
        float3 _357 = _290 - _21_m1[1].xyz;
        float3 _361 = _290 - _21_m1[2].xyz;
        float3 _365 = _290 - _21_m1[3].xyz;
        float4 _370 = float4(dot(_353, _353), dot(_357, _357), dot(_361, _361), dot(_365, _365));
        float4 _379 = float4(_21_m1[0].w, _21_m1[1].w, _21_m1[2].w, _21_m1[3].w);
        float4 _381 = float4(bool4(_370.x < _379.x, _370.y < _379.y, _370.z < _379.z, _370.w < _379.w));
        float3 _385 = clamp(_381.yzw - _381.xyz, 0.0f.xxx, 1.0f.xxx);
        float _392 = max(clamp(4.0f - dot(float4(_381.x, _385.x, _385.y, _385.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _21_m6.y);
        float4 _400 = mul(_21_m0[uint(_392)], float4(_290, 1.0f));
        float _403 = _400.z;
        float4 _404 = float4(_400.xy, _403, _392);
        float3 _405 = _404.xyz;
        bool3 _406 = bool3(_405.x <= 0.0f.xxx.x, _405.y <= 0.0f.xxx.y, _405.z <= 0.0f.xxx.z);
        bool3 _407 = bool3(_405.x >= 1.0f.xxx.x, _405.y >= 1.0f.xxx.y, _405.z >= 1.0f.xxx.z);
        bool _413 = any(bool3(_406.x || _407.x, _406.y || _407.y, _406.z || _407.z)) || ((asuint(_403) & 2147483647u) > 2139095040u);
        int _414 = int(_392);
        float2 _431 = float4(_21_m3[_414].xy + (_404.xy * _21_m3[_414].zw), _403, _392).xy * _21_m4.zw;
        float2 _433 = floor(_431 + 0.5f.xx);
        float2 _434 = _431 - _433;
        float _435 = _434.x;
        float _436 = _435 + 0.5f;
        float _438 = (_436 * _436) * 0.5f;
        float _441 = min(_435, 0.0f);
        float _445 = max(_435, 0.0f);
        float4 _449 = float4(_438 - _435, (1.0f - _435) - (_441 * _441), (_435 + 1.0f) - (_445 * _445), _438) * 0.44444000720977783203125f;
        float _450 = _434.y;
        float _451 = _450 + 0.5f;
        float _453 = (_451 * _451) * 0.5f;
        float _456 = min(_450, 0.0f);
        float _460 = max(_450, 0.0f);
        float4 _464 = float4(_453 - _450, (1.0f - _450) - (_456 * _456), (_450 + 1.0f) - (_460 * _460), _453) * 0.44444000720977783203125f;
        float2 _466 = _449.yw;
        float2 _467 = _449.xz + _466;
        float2 _469 = _464.yw;
        float2 _470 = _464.xz + _469;
        float2 _476 = ((_466 / _467) + float2(-1.5f, 0.5f)) * _21_m4.xx;
        float2 _478 = ((_469 / _470) + float2(-1.5f, 0.5f)) * _21_m4.yy;
        float2 _480 = _433 * _21_m4.xy;
        float _481 = _476.x;
        float _482 = _478.x;
        float _485 = _476.y;
        float _488 = _478.y;
        float _493 = _467.x;
        float _494 = _470.x;
        float _496 = _467.y;
        float _498 = _470.y;
        _533 = _413 ? 1.0f : (((((_493 * _494) * _22.SampleCmpLevelZero(_13, float3(_480 + float2(_481, _482), _249).xy, _403)) + ((_496 * _494) * _22.SampleCmpLevelZero(_13, float3(_480 + float2(_485, _482), _249).xy, _403))) + ((_493 * _498) * _22.SampleCmpLevelZero(_13, float3(_480 + float2(_481, _488), _249).xy, _403))) + ((_496 * _498) * _22.SampleCmpLevelZero(_13, float3(_480 + float2(_485, _488), _249).xy, _403)));
        _534 = _413;
      } else {
        _533 = 1.0f;
        _534 = false;
      }
      _535 = _533;
      _536 = _534;
    } else {
      _535 = 1.0f;
      _536 = false;
    }
    float _736;
    float _737;
    if ((_346 < 1.0f) || (_21_m8.x > 0.5f)) {
      float _547 = 1.0f - clamp(dot(_312, _17_m0.xyz), 0.0f, 0.89999997615814208984375f);
      float4 _564 = float4((_290 - (_17_m0.xyz * (_547 * _21_m22.x))) + (_312 * (_547 * _21_m22.y)), 1.0f);
      float4 _565 = mul(_21_m21, _564);
      float2 _566 = _565.xy;
      float _734;
      if (all(bool2(_566.x > 0.0f.xx.x, _566.y > 0.0f.xx.y)) && all(bool2(_566.x < 1.0f.xx.x, _566.y < 1.0f.xx.y))) {
        uint _585 = clamp(uint((floor(_565.y * _21_m23.z) + _565.x) * _21_m23.y), 0u, 127u);
        uint _589 = asuint(_21_m25[_585].x);
        float2 _590 = spvUnpackHalf2x16(_589);
        float _591 = _590.x;
        float _733;
        if (_591 >= 0.0f) {
          float4x4 _600 = _21_m20;
          _600[0].w = _21_m25[_585].y;
          _600[1].w = _21_m25[_585].z;
          _600[2].w = _21_m25[_585].w;
          float4 _607 = mul(_600, _564);
          float3 _608 = _607.xyz;
          float _732;
          if (all(bool3(_608.x > 0.0f.xxx.x, _608.y > 0.0f.xxx.y, _608.z > 0.0f.xxx.z)) && all(bool3(_608.x < 1.0f.xxx.x, _608.y < 1.0f.xxx.y, _608.z < 1.0f.xxx.z))) {
            float _625 = _607.z;
            float2 _631 = float4((_607.xy * _21_m22.zw) + float2(_591, spvUnpackHalf2x16(_589 >> 16u).x), _625, 1.0f).xy * _21_m24.zw;
            float2 _633 = floor(_631 + 0.5f.xx);
            float2 _634 = _631 - _633;
            float _635 = _634.x;
            float _636 = _635 + 0.5f;
            float _638 = (_636 * _636) * 0.5f;
            float _641 = min(_635, 0.0f);
            float _645 = max(_635, 0.0f);
            float4 _649 = float4(_638 - _635, (1.0f - _635) - (_641 * _641), (_635 + 1.0f) - (_645 * _645), _638) * 0.44444000720977783203125f;
            float _650 = _634.y;
            float _651 = _650 + 0.5f;
            float _653 = (_651 * _651) * 0.5f;
            float _656 = min(_650, 0.0f);
            float _660 = max(_650, 0.0f);
            float4 _664 = float4(_653 - _650, (1.0f - _650) - (_656 * _656), (_650 + 1.0f) - (_660 * _660), _653) * 0.44444000720977783203125f;
            float2 _666 = _649.yw;
            float2 _667 = _649.xz + _666;
            float2 _669 = _664.yw;
            float2 _670 = _664.xz + _669;
            float2 _676 = ((_666 / _667) + float2(-1.5f, 0.5f)) * _21_m24.xx;
            float2 _678 = ((_669 / _670) + float2(-1.5f, 0.5f)) * _21_m24.yy;
            float2 _680 = _633 * _21_m24.xy;
            float _681 = _676.x;
            float _682 = _678.x;
            float _685 = _676.y;
            float _688 = _678.y;
            float _693 = _667.x;
            float _694 = _670.x;
            float _696 = _667.y;
            float _698 = _670.y;
            _732 = ((((_693 * _694) * _25.SampleCmpLevelZero(_13, float3(_680 + float2(_681, _682), _249).xy, _625)) + ((_696 * _694) * _25.SampleCmpLevelZero(_13, float3(_680 + float2(_685, _682), _249).xy, _625))) + ((_693 * _698) * _25.SampleCmpLevelZero(_13, float3(_680 + float2(_681, _688), _249).xy, _625))) + ((_696 * _698) * _25.SampleCmpLevelZero(_13, float3(_680 + float2(_685, _688), _249).xy, _625));
          } else {
            _732 = 1.0f;
          }
          _733 = _732;
        } else {
          _733 = 1.0f;
        }
        _734 = _733;
      } else {
        _734 = 1.0f;
      }
      _736 = _536 ? _734 : _535;
      _737 = _734;
    } else {
      _736 = _535;
      _737 = 1.0f;
    }
    float _740 = lerp(lerp(_737, _736, _346), min(_737, _736), _21_m8.x);
    float _813;
    if (_740 > 0.001000000047497451305389404296875f) {
      float3 _775 = _290 - _8_m65.xyz;
      float2 _780 = (_775 + (_8_m68.xyz * _775.y)).xz * _8_m66.z;
      float2 _781 = _8_m67.xy * _8_m77.w;
      float3 _788 = _290 - _8_m69.xyz;
      float2 _796 = _8_m69.w.xx;
      float4 _803 = _24.SampleLevel(_12, lerp(_780 * _8_m67.w, (_788 + (_8_m68.xyz * _788.y)).xz * _8_m70.x, _796) + lerp(_781, _8_m70.yz * _8_m77.w, _796), 0.0f);
      // RenoDX code start: retain the cloud-shadow control in the character-shadow path.
      /* Vanilla 0xD29ACBE0:
      _813 = _740 * lerp(1.0f, lerp(_24.SampleLevel(_12, _780 + _781, 0.0f).x, lerp(_803.x, _803.y, _8_m69.w), smoothstep(_8_m66.x, _8_m66.y, length(_775.xz))), _8_m67.z);
      */
      _813 = _740 * lerp(1.0f, lerp(1.0f, lerp(_24.SampleLevel(_12, _780 + _781, 0.0f).x, lerp(_803.x, _803.y, _8_m69.w), smoothstep(_8_m66.x, _8_m66.y, length(_775.xz))), _8_m67.z), saturate(FAKE_CLOUD_SHADOWS));
      // RenoDX code end
    } else {
      _813 = _740;
    }
    _818 = float2(lerp(_813, _21_m7.z, _21_m7.w), _813);
    break;
  } while (false);
  float _968;
  do {
    float _850 = log2(float((((uint((_261.w * 3.0f) + 0.5f) << 30u) | (uint((_261.z * 1023.0f) + 0.5f) << 20u)) | (uint((_261.y * 1023.0f) + 0.5f) << 10u)) | uint((_261.x * 1023.0f) + 0.5f))) - 8.0f;
    float _967;
    if ((_850 >= 0.0f) && (_850 < _21_m18.z)) {
      int _858 = int(_850);
      float _864 = 1.0f - clamp(dot(_312, _21_m15[_858].xyz), 0.0f, 0.89999997615814208984375f);
      float4 _881 = mul(_21_m13[_858], float4((_290 - (_21_m15[_858].xyz * (_864 * _21_m14[_858].x))) + (_312 * (_864 * _21_m14[_858].y)), 1.0f));
      float _883 = max(_881.z, 0.00999999977648258209228515625f);
      float4 _884 = _881;
      _884.z = _883;
      bool3 _886 = bool3(_884.xyz.x <= 0.0f.xxx.x, _884.xyz.y <= 0.0f.xxx.y, _884.xyz.z <= 0.0f.xxx.z);
      bool3 _887 = bool3(_884.xyz.x >= 1.0f.xxx.x, _884.xyz.y >= 1.0f.xxx.y, _884.xyz.z >= 1.0f.xxx.z);
      if (any(bool3(_886.x || _887.x, _886.y || _887.y, _886.z || _887.z)) || ((asuint(_883) & 2147483647u) > 2139095040u)) {
        _968 = 1.0f;
        break;
      }
      float _908 = 4.0f * _21_m17.x;
      float2 _909 = (_21_m16[_858].xy + (_884.xy * _21_m16[_858].zw)).xy;
      int2 _911 = int2(uint2(_266) % uint2(4u, 4u));
      int _915 = (_911.x * 4) + _911.y;
      float2x2 _922 = float2x2(_247[_915], float2(-_247[_915].y, _247[_915].x));
      float _924;
      float _927;
      _924 = 0.0f;
      _927 = 0.0f;
      for (uint _929 = 0u; _929 < 16u;) {
        float4 _941 = _23.GatherRed(_11, _909 + (mul(_246[_929], _922) * _908)) - _883.xxxx;
        float4 _942 = step(0.0f.xxxx, _941);
        _924 += dot(_941, _942);
        _927 += dot(_942, 1.0f.xxxx);
        _929++;
        continue;
      }
      float _953 = (2.0f * clamp(_927 * 0.015625f, 0.0f, 1.0f)) - 1.0f;
      float _956 = float(int(sign(_953)));
      float _958 = 1.0f - (_956 * _953);
      _967 = min(1.0f, 0.5f - (0.5f * ((1.0f - lerp((_958 * _958) * _958, _958, clamp((_924 * (1.0f / _927)) * (1.0f / _883), 0.0f, 1.0f))) * _956)));
    } else {
      _967 = 1.0f;
    }
    _968 = _967;
    break;
  } while (false);
  // RenoDX code start: preserve the existing feature control.
  /* Vanilla 0xD29ACBE0:
      _4 = float3(lerp(1.0f, min(1.0f, _818.x), _21_m6.x), _968, 0.0f);
  */
  float renodx_shadow = min(1.0f, _818.x);
  renodx_shadow = lerp(renodx_shadow, renodx_shadow * renodx_shadow * (3.f - 2.f * renodx_shadow), saturate(SHADOW_HARDENING));
  _4 = float3(lerp(1.0f, renodx_shadow, _21_m6.x), _968, 0.0f);
  // RenoDX code end
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._4 = _4;
  return stage_output;
}

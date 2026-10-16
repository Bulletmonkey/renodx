#include "../shared.h"

struct _17
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float4 _156;

[[vk::binding(11, 0)]] cbuffer _12_13 : register(b11, space0)
{
    column_major float4x4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c4);
    column_major float4x4 _13_m2 : packoffset(c8);
    column_major float4x4 _13_m3 : packoffset(c12);
    column_major float4x4 _13_m4 : packoffset(c16);
    column_major float4x4 _13_m5 : packoffset(c20);
    column_major float4x4 _13_m6 : packoffset(c24);
    column_major float4x4 _13_m7 : packoffset(c28);
    column_major float4x4 _13_m8 : packoffset(c32);
    column_major float4x4 _13_m9 : packoffset(c36);
    column_major float4x4 _13_m10 : packoffset(c40);
    float4 _13_m11 : packoffset(c44);
    column_major float4x4 _13_m12 : packoffset(c45);
    column_major float4x4 _13_m13 : packoffset(c49);
    column_major float4x4 _13_m14 : packoffset(c53);
    column_major float4x4 _13_m15 : packoffset(c57);
    column_major float4x4 _13_m16 : packoffset(c61);
    column_major float4x4 _13_m17 : packoffset(c65);
    column_major float4x4 _13_m18 : packoffset(c69);
    column_major float4x4 _13_m19 : packoffset(c73);
    column_major float4x4 _13_m20 : packoffset(c77);
    float4 _13_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _14_15 : register(b15, space0)
{
    float4 _15_m0 : packoffset(c0);
    float4 _15_m1 : packoffset(c1);
    float4 _15_m2 : packoffset(c2);
    float4 _15_m3 : packoffset(c3);
    float4 _15_m4 : packoffset(c4);
    float4 _15_m5 : packoffset(c5);
    float4 _15_m6[6] : packoffset(c6);
    float4 _15_m7[6] : packoffset(c12);
    float4 _15_m8 : packoffset(c18);
    float4 _15_m9 : packoffset(c19);
    float4 _15_m10 : packoffset(c20);
    float4 _15_m11 : packoffset(c21);
    float4 _15_m12 : packoffset(c22);
    float4 _15_m13 : packoffset(c23);
    float4 _15_m14 : packoffset(c24);
    float4 _15_m15 : packoffset(c25);
    float _15_m16 : packoffset(c26);
    float _15_m17 : packoffset(c26.y);
    float _15_m18 : packoffset(c26.z);
    uint _15_m19 : packoffset(c26.w);
    float4 _15_m20 : packoffset(c27);
    int4 _15_m21 : packoffset(c28);
    float4 _15_m22 : packoffset(c29);
    float4 _15_m23 : packoffset(c30);
    float4 _15_m24 : packoffset(c31);
    float4 _15_m25 : packoffset(c32);
    float4 _15_m26 : packoffset(c33);
    float4 _15_m27 : packoffset(c34);
    float4 _15_m28 : packoffset(c35);
    float4 _15_m29 : packoffset(c36);
    float4 _15_m30 : packoffset(c37);
    float4 _15_m31 : packoffset(c38);
    float4 _15_m32[4] : packoffset(c39);
    float4 _15_m33[4] : packoffset(c43);
    float4 _15_m34[4] : packoffset(c47);
    float4 _15_m35[4] : packoffset(c51);
    float4 _15_m36 : packoffset(c55);
    float4 _15_m37 : packoffset(c56);
    float4 _15_m38[4] : packoffset(c57);
    float4 _15_m39[4] : packoffset(c61);
    float4 _15_m40[4] : packoffset(c65);
    float4 _15_m41 : packoffset(c69);
    float4 _15_m42 : packoffset(c70);
    float4 _15_m43 : packoffset(c71);
    float4 _15_m44 : packoffset(c72);
    float4 _15_m45 : packoffset(c73);
    float4 _15_m46 : packoffset(c74);
    float4 _15_m47 : packoffset(c75);
    float4 _15_m48 : packoffset(c76);
    float4 _15_m49 : packoffset(c77);
    float4 _15_m50 : packoffset(c78);
    float4 _15_m51 : packoffset(c79);
    float4 _15_m52 : packoffset(c80);
    float4 _15_m53 : packoffset(c81);
    float4 _15_m54 : packoffset(c82);
    float4 _15_m55 : packoffset(c83);
    float4 _15_m56 : packoffset(c84);
    float4 _15_m57 : packoffset(c85);
    float4 _15_m58 : packoffset(c86);
    float4 _15_m59 : packoffset(c87);
    float4 _15_m60 : packoffset(c88);
    float4 _15_m61 : packoffset(c89);
    float4 _15_m62 : packoffset(c90);
    float4 _15_m63 : packoffset(c91);
    float4 _15_m64 : packoffset(c92);
    float4 _15_m65 : packoffset(c93);
    float4 _15_m66 : packoffset(c94);
    float4 _15_m67 : packoffset(c95);
    float4 _15_m68 : packoffset(c96);
    float4 _15_m69 : packoffset(c97);
    float4 _15_m70 : packoffset(c98);
    float4 _15_m71 : packoffset(c99);
    float4 _15_m72 : packoffset(c100);
    float4 _15_m73 : packoffset(c101);
    float4 _15_m74 : packoffset(c102);
    float4 _15_m75 : packoffset(c103);
    float4 _15_m76 : packoffset(c104);
    float4 _15_m77 : packoffset(c105);
    float4 _15_m78 : packoffset(c106);
    float4 _15_m79 : packoffset(c107);
    float4 _15_m80 : packoffset(c108);
    float4 _15_m81 : packoffset(c109);
    float4 _15_m82 : packoffset(c110);
    float4 _15_m83 : packoffset(c111);
    float4 _15_m84 : packoffset(c112);
    float4 _15_m85 : packoffset(c113);
    float4 _15_m86 : packoffset(c114);
    float4 _15_m87 : packoffset(c115);
    float4 _15_m88 : packoffset(c116);
    float4 _15_m89 : packoffset(c117);
    float4 _15_m90 : packoffset(c118);
    float4 _15_m91 : packoffset(c119);
    float4 _15_m92 : packoffset(c120);
    float4 _15_m93 : packoffset(c121);
    float4 _15_m94 : packoffset(c122);
    float4 _15_m95 : packoffset(c123);
    float4 _15_m96 : packoffset(c124);
    float4 _15_m97 : packoffset(c125);
    float4 _15_m98 : packoffset(c126);
    float4 _15_m99 : packoffset(c127);
    float4 _15_m100 : packoffset(c128);
    float4 _15_m101 : packoffset(c129);
    float4 _15_m102[2] : packoffset(c130);
    float4 _15_m103[2] : packoffset(c132);
    float _15_m104 : packoffset(c134);
    float _15_m105 : packoffset(c134.y);
    float _15_m106 : packoffset(c134.z);
    float _15_m107 : packoffset(c134.w);
    float4 _15_m108 : packoffset(c135);
    float4 _15_m109 : packoffset(c136);
    float4 _15_m110 : packoffset(c137);
    float4 _15_m111 : packoffset(c138);
    float4 _15_m112 : packoffset(c139);
    float4 _15_m113 : packoffset(c140);
    float4 _15_m114 : packoffset(c141);
    float4 _15_m115 : packoffset(c142);
    float4 _15_m116 : packoffset(c143);
    float4 _15_m117 : packoffset(c144);
    float4 _15_m118 : packoffset(c145);
    float4 _15_m119 : packoffset(c146);
    float4 _15_m120 : packoffset(c147);
    float4 _15_m121 : packoffset(c148);
    float4 _15_m122 : packoffset(c149);
    float4 _15_m123 : packoffset(c150);
    float4 _15_m124 : packoffset(c151);
    float4 _15_m125 : packoffset(c152);
    float4 _15_m126 : packoffset(c153);
    float4 _15_m127 : packoffset(c154);
    float4 _15_m128 : packoffset(c155);
    float4 _15_m129 : packoffset(c156);
    float4 _15_m130 : packoffset(c157);
    float4 _15_m131 : packoffset(c158);
    float4 _15_m132 : packoffset(c159);
    float4 _15_m133 : packoffset(c160);
    float4 _15_m134 : packoffset(c161);
    float4 _15_m135 : packoffset(c162);
    float4 _15_m136 : packoffset(c163);
    float4 _15_m137 : packoffset(c164);
    column_major float4x4 _15_m138 : packoffset(c165);
    float4 _15_m139 : packoffset(c169);
    float4 _15_m140 : packoffset(c170);
    float4 _15_m141 : packoffset(c171);
    float4 _15_m142 : packoffset(c172);
    int4 _15_m143 : packoffset(c173);
    int4 _15_m144 : packoffset(c174);
    int4 _15_m145 : packoffset(c175);
    float4 _15_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _16_18 : register(b0, space2)
{
    _17 _18_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]] cbuffer _25_26 : register(b0, space1)
{
    float _26_m0 : packoffset(c0);
    float _26_m1 : packoffset(c0.y);
    float _26_m2 : packoffset(c0.z);
    float _26_m3 : packoffset(c0.w);
    float _26_m4 : packoffset(c1);
    float _26_m5 : packoffset(c1.y);
    float _26_m6 : packoffset(c1.z);
    float _26_m7 : packoffset(c1.w);
    float _26_m8 : packoffset(c2);
    float _26_m9 : packoffset(c2.y);
    float _26_m10 : packoffset(c2.z);
    float _26_m11 : packoffset(c2.w);
    float _26_m12 : packoffset(c3);
    float _26_m13 : packoffset(c3.y);
    float _26_m14 : packoffset(c3.z);
    float _26_m15 : packoffset(c3.w);
    float4 _26_m16 : packoffset(c4);
    float _26_m17 : packoffset(c5);
    float _26_m18 : packoffset(c5.y);
    float _26_m19 : packoffset(c5.z);
    float _26_m20 : packoffset(c5.w);
    float4 _26_m21 : packoffset(c6);
    float4 _26_m22 : packoffset(c7);
    float4 _26_m23 : packoffset(c8);
    float4 _26_m24 : packoffset(c9);
    float4 _26_m25 : packoffset(c10);
    float _26_m26 : packoffset(c11);
    float _26_m27 : packoffset(c11.y);
    float _26_m28 : packoffset(c11.z);
    float _26_m29 : packoffset(c11.w);
    float _26_m30 : packoffset(c12);
    float _26_m31 : packoffset(c12.y);
    float _26_m32 : packoffset(c12.z);
    float _26_m33 : packoffset(c12.w);
    float _26_m34 : packoffset(c13);
    float _26_m35 : packoffset(c13.y);
    float _26_m36 : packoffset(c13.z);
    float _26_m37 : packoffset(c13.w);
    float _26_m38 : packoffset(c14);
    float _26_m39 : packoffset(c14.y);
    float _26_m40 : packoffset(c14.z);
    float _26_m41 : packoffset(c14.w);
    float _26_m42 : packoffset(c15);
    float _26_m43 : packoffset(c15.y);
    float _26_m44 : packoffset(c15.z);
    float _26_m45 : packoffset(c15.w);
    float _26_m46 : packoffset(c16);
    float _26_m47 : packoffset(c16.y);
    float _26_m48 : packoffset(c16.z);
    float _26_m49 : packoffset(c16.w);
    float _26_m50 : packoffset(c17);
    float _26_m51 : packoffset(c17.y);
    float _26_m52 : packoffset(c17.z);
    float _26_m53 : packoffset(c17.w);
    float _26_m54 : packoffset(c18);
    float _26_m55 : packoffset(c18.y);
    float _26_m56 : packoffset(c18.z);
    float _26_m57 : packoffset(c18.w);
    float _26_m58 : packoffset(c19);
    float _26_m59 : packoffset(c19.y);
    float _26_m60 : packoffset(c19.z);
    float _26_m61 : packoffset(c19.w);
    float _26_m62 : packoffset(c20);
    float _26_m63 : packoffset(c20.y);
    float _26_m64 : packoffset(c20.z);
    float _26_m65 : packoffset(c20.w);
    float _26_m66 : packoffset(c21);
    float _26_m67 : packoffset(c21.y);
    float _26_m68 : packoffset(c21.z);
    float _26_m69 : packoffset(c21.w);
    float4 _26_m70 : packoffset(c22);
    float4 _26_m71 : packoffset(c23);
    float4 _26_m72 : packoffset(c24);
    float4 _26_m73 : packoffset(c25);
    float4 _26_m74 : packoffset(c26);
    float4 _26_m75 : packoffset(c27);
    float4 _26_m76 : packoffset(c28);
    float4 _26_m77 : packoffset(c29);
    float4 _26_m78 : packoffset(c30);
};

[[vk::binding(4, 0)]] SamplerState _20 : register(s4, space0);
[[vk::binding(2, 1)]] Texture2D<float4> _22 : register(t2, space1);
[[vk::binding(1, 1)]] SamplerState _23 : register(s1, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _24 : register(t3, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static uint _9;
static float4 _10;
static float4 _11;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float3 _7 : TEXCOORD3;
    [[vk::location(4)]] float3 _8 : TEXCOORD4;
    [[vk::location(5)]] nointerpolation uint _9 : TEXCOORD5;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _10 : SV_Target0;
    [[vk::location(1)]] float4 _11 : SV_Target1;
};

void frag_main()
{
    float4 _159 = _4;
    float2 _174 = gl_FragCoord.xy * _15_m0.zw;
    float2 _177 = (_174 * 2.0f) - 1.0f.xx;
    float4 _180 = float4(_177, gl_FragCoord.z, 1.0f);
    _180.y = -_177.y;
    float4 _183 = mul(_13_m6, _180);
    float3 _187 = _183.xyz / _183.w.xxx;
    float _194 = abs(mul(_13_m0, float4(_187, 1.0f)).z);
    float _252;
    float _253;
    do
    {
        [branch]
        if (!((_26_m62 != 0.0f) && (_26_m63 != 0.0f)))
        {
            _252 = 0.0f;
            _253 = 1.0f;
            break;
        }
        float _210 = clamp(_15_m81.y, 0.0f, 1.0f);
        float _216 = _26_m64 * ((4.0f * _210) * (1.0f - _210));
        [branch]
        if (_216 <= 9.9999999747524270787835121154785e-07f)
        {
            _252 = 0.0f;
            _253 = 1.0f;
            break;
        }
        float2 _225 = (_174 * _26_m78.xy) + _26_m78.zw;
        _225.y = _225.y + (_15_m10.y * _26_m65);
        float _247 = ddy(_159.y) * (((_159.y + _24.SampleLevel(_20, _225, 0.0f).x) - 1.0f) * ((2.0f * _216) * _15_m0.y));
        float _248 = _159.y + _247;
        _252 = _247;
        _253 = step(0.0f, _248) * step(_248, 1.0f);
        break;
    } while(false);
    _159.y = _159.y + _252;
    float4 _265 = _5 * _26_m4;
    float2 _329;
    [branch]
    if (_26_m37 > 0.5f)
    {
        float2 _278 = ((float2(uint2(gl_FragCoord.xy)) / _15_m5.xy) * 2.0f) - 1.0f.xx;
        float4 _290 = mul(_18_m0[_9]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f));
        float2 _305 = lerp(float2(_278.x, (_278.y / _15_m5.x) * _15_m5.y), mul(float3x3(_13_m0[0].xyz, _13_m0[1].xyz, _13_m0[2].xyz), _187 - _290.xyz).xy, _26_m36.xx);
        _305.y = (_26_m34 != 0.0f) ? _187.y : _305.y;
        _329 = _305 * ((1.0f - _26_m35) + (max(1.0f, (-mul(_13_m0, float4(_290.xyz, 1.0f)).z) - _15_m3.y) * _26_m35));
    }
    else
    {
        _329 = 0.0f.xx;
    }
    float2 _365;
    [branch]
    if (_26_m38 > 0.5f)
    {
        float2 _335 = _159.xy - 0.5f.xx;
        float _338 = _335.x;
        float _339 = _335.y;
        float _340 = _338 / _339;
        float _341 = abs(_340);
        bool _342 = _341 < 1.0f;
        float _344 = _342 ? _341 : (1.0f / _341);
        float _345 = _344 * _344;
        float _350 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _345)) * _345)) * _344;
        float _352 = _342 ? _350 : (1.57079637050628662109375f - _350);
        _365 = float2(((((_340 < 0.0f) ? (-_352) : _352) + (((_338 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_339 < 0.0f))) - (-3.1415927410125732421875f)) * 0.15915493667125701904296875f, length(_335) * 2.0f);
    }
    else
    {
        _365 = 0.0f.xx;
    }
    bool4 _420 = (_26_m5 != 0.0f).xxxx;
    float4 _422 = _26_m16 * float4(_420.x ? 1.0f.xxxx.x : _6.x, _420.y ? 1.0f.xxxx.y : _6.y, _420.z ? 1.0f.xxxx.z : _6.z, _420.w ? 1.0f.xxxx.w : _6.w);
    float3 _426 = _422.xyz * _26_m6;
    float4 _427 = float4(_426.x, _426.y, _426.z, _422.w);
    _427.w = _422.w * _26_m7;
    float4 _452 = _22.SampleBias(_23, ((mul(((((((_159.xy * _26_m23.x) + ((((_159.zw * _26_m4) - (_5.xy * _26_m4)) + _5.xy) * _26_m23.y)) + (_365 * _26_m23.z)) + (_329 * _26_m23.w)) + (_26_m21.xy * ((_15_m77.w * (1.0f - _18_m0[_9]._m8.x)) + _18_m0[_9]._m8.y))) + (_26_m21.zw * _265.x)) - 0.5f.xx, float2x2(float2(_26_m22.xy), float2(_26_m22.zw))) + 0.5f.xx) * _26_m24.xy) + _26_m24.zw, float(int(_26_m19)) + _15_m16);
    float4 _458 = (_427 * lerp(_452, float4(1.0f, 1.0f, 1.0f, _452.x), _26_m18.xxxx)) * (1.0f - _26_m45).xxxx;
    float _463 = _26_m57 * _26_m61;
    bool4 _470 = (_26_m47 != 0.0f).xxxx;
    float _483 = -lerp(-1.0f, ((_26_m59 + _265.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _463) + ((1.0f - _26_m44) * _463));
    float _485 = clamp(_483 * _26_m58, 0.0f, 1.0f);
    float _488 = clamp((_26_m60 - _483) * _26_m58, 0.0f, 1.0f);
    float4 _495;
    _495.w = _458.w * lerp(_485, _485, _26_m71.w);
    float3 _499 = lerp(_458.xyz, (_26_m71.xyz * _488) * _26_m6, _488.xxx);
    float4 _500 = float4(_499.x, _499.y, _499.z, _495.w);
    float4 _501 = float4(_470.x ? _500.x : _458.x, _470.y ? _500.y : _458.y, _470.z ? _500.z : _458.z, _470.w ? _500.w : _458.w);
    float3 _525 = _501.xyz;
    float3 _545 = clamp(((_525 + (max(_525 - _26_m9.xxx, 0.0f.xxx) * _26_m10)).xyz * ((1.0f - _26_m12) + (_15_m20.y * _26_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float4 _546 = float4(_545.x, _545.y, _545.z, _501.w);
    float _559 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    _546.w = (clamp(_501.w * ((_26_m26 != 0.0f) ? (clamp((_194 - _26_m27) / (_26_m28 - _26_m27), 0.0f, 1.0f) * clamp((_194 - _26_m29) / (_26_m30 - _26_m29), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _18_m0[_9]._m1.y)) * (((_18_m0[_9]._m1.x - ((_18_m0[_9]._m1.x >= 0.0f) ? _559 : (-_559))) > 0.0f) ? 1.0f : (1.0f - _26_m0));
    float4 _570 = _546 * _253;
    float _584 = (_570.w * lerp(1.0f, _15_m81.x, _26_m67)) * ((_26_m69 < 0.5f) ? 1.0f : _26_m68);
    float _594 = 1.0f - _26_m1;
    float2 _636;
    if (clamp((_26_m3 + 1.0f) - _26_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _622 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
        _622.y = -_622.y;
        _636 = ((sqrt(sqrt(abs(_622 * 0.5f))) * float2(int2(sign(_622)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _636 = 0.0f.xx;
    }
    bool3 _638 = (_26_m1 == 2.0f).xxx;
    // RenoDX code start: boost only the fingerprint-matched effect.
    /* Vanilla 0x6331B129:
    float3 _642 = _570.xyz * _584;
    */
    float3 _642 = ApplyVFXBoost(_570.xyz * _584);
    // RenoDX code end
    float3 _643 = (1.0f - _584).xxx + _642;
    float3 _644 = float3(_638.x ? _643.x : _642.x, _638.y ? _643.y : _642.y, _638.z ? _643.z : _642.z);
    float4 _645 = float4(_644.x, _644.y, _644.z, 0.0f.xxxx.w);
    _645.w = _584 * max(0.0f, _594);
    float3 _665 = ((lerp(dot(_645.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _645.xyz, _15_m78.w.xxx) * _15_m78.xyz) * _26_m11) + (_645.xyz * (1.0f - _26_m11));
    float2 _667 = min(_636, 1.0f.xx);
    float4 _668 = float4(_667.x, _667.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _668.z = 1.0f;
    _668.w = (_26_m2 * _26_m0) * float(clamp(max(dot(_570.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _584, _584 * _594) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_665.x, _665.y, _665.z, _645.w);
    _11 = _668;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._10 = _10;
    stage_output._11 = _11;
    return stage_output;
}

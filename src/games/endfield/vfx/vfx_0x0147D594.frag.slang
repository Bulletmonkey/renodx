#include "../shared.h"

struct _16
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

static float4 _132;

[[vk::binding(11, 0)]] cbuffer _11_12 : register(b11, space0)
{
    column_major float4x4 _12_m0 : packoffset(c0);
    column_major float4x4 _12_m1 : packoffset(c4);
    column_major float4x4 _12_m2 : packoffset(c8);
    column_major float4x4 _12_m3 : packoffset(c12);
    column_major float4x4 _12_m4 : packoffset(c16);
    column_major float4x4 _12_m5 : packoffset(c20);
    column_major float4x4 _12_m6 : packoffset(c24);
    column_major float4x4 _12_m7 : packoffset(c28);
    column_major float4x4 _12_m8 : packoffset(c32);
    column_major float4x4 _12_m9 : packoffset(c36);
    column_major float4x4 _12_m10 : packoffset(c40);
    float4 _12_m11 : packoffset(c44);
    column_major float4x4 _12_m12 : packoffset(c45);
    column_major float4x4 _12_m13 : packoffset(c49);
    column_major float4x4 _12_m14 : packoffset(c53);
    column_major float4x4 _12_m15 : packoffset(c57);
    column_major float4x4 _12_m16 : packoffset(c61);
    column_major float4x4 _12_m17 : packoffset(c65);
    column_major float4x4 _12_m18 : packoffset(c69);
    column_major float4x4 _12_m19 : packoffset(c73);
    column_major float4x4 _12_m20 : packoffset(c77);
    float4 _12_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _13_14 : register(b15, space0)
{
    float4 _14_m0 : packoffset(c0);
    float4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c2);
    float4 _14_m3 : packoffset(c3);
    float4 _14_m4 : packoffset(c4);
    float4 _14_m5 : packoffset(c5);
    float4 _14_m6[6] : packoffset(c6);
    float4 _14_m7[6] : packoffset(c12);
    float4 _14_m8 : packoffset(c18);
    float4 _14_m9 : packoffset(c19);
    float4 _14_m10 : packoffset(c20);
    float4 _14_m11 : packoffset(c21);
    float4 _14_m12 : packoffset(c22);
    float4 _14_m13 : packoffset(c23);
    float4 _14_m14 : packoffset(c24);
    float4 _14_m15 : packoffset(c25);
    float _14_m16 : packoffset(c26);
    float _14_m17 : packoffset(c26.y);
    float _14_m18 : packoffset(c26.z);
    uint _14_m19 : packoffset(c26.w);
    float4 _14_m20 : packoffset(c27);
    int4 _14_m21 : packoffset(c28);
    float4 _14_m22 : packoffset(c29);
    float4 _14_m23 : packoffset(c30);
    float4 _14_m24 : packoffset(c31);
    float4 _14_m25 : packoffset(c32);
    float4 _14_m26 : packoffset(c33);
    float4 _14_m27 : packoffset(c34);
    float4 _14_m28 : packoffset(c35);
    float4 _14_m29 : packoffset(c36);
    float4 _14_m30 : packoffset(c37);
    float4 _14_m31 : packoffset(c38);
    float4 _14_m32[4] : packoffset(c39);
    float4 _14_m33[4] : packoffset(c43);
    float4 _14_m34[4] : packoffset(c47);
    float4 _14_m35[4] : packoffset(c51);
    float4 _14_m36 : packoffset(c55);
    float4 _14_m37 : packoffset(c56);
    float4 _14_m38[4] : packoffset(c57);
    float4 _14_m39[4] : packoffset(c61);
    float4 _14_m40[4] : packoffset(c65);
    float4 _14_m41 : packoffset(c69);
    float4 _14_m42 : packoffset(c70);
    float4 _14_m43 : packoffset(c71);
    float4 _14_m44 : packoffset(c72);
    float4 _14_m45 : packoffset(c73);
    float4 _14_m46 : packoffset(c74);
    float4 _14_m47 : packoffset(c75);
    float4 _14_m48 : packoffset(c76);
    float4 _14_m49 : packoffset(c77);
    float4 _14_m50 : packoffset(c78);
    float4 _14_m51 : packoffset(c79);
    float4 _14_m52 : packoffset(c80);
    float4 _14_m53 : packoffset(c81);
    float4 _14_m54 : packoffset(c82);
    float4 _14_m55 : packoffset(c83);
    float4 _14_m56 : packoffset(c84);
    float4 _14_m57 : packoffset(c85);
    float4 _14_m58 : packoffset(c86);
    float4 _14_m59 : packoffset(c87);
    float4 _14_m60 : packoffset(c88);
    float4 _14_m61 : packoffset(c89);
    float4 _14_m62 : packoffset(c90);
    float4 _14_m63 : packoffset(c91);
    float4 _14_m64 : packoffset(c92);
    float4 _14_m65 : packoffset(c93);
    float4 _14_m66 : packoffset(c94);
    float4 _14_m67 : packoffset(c95);
    float4 _14_m68 : packoffset(c96);
    float4 _14_m69 : packoffset(c97);
    float4 _14_m70 : packoffset(c98);
    float4 _14_m71 : packoffset(c99);
    float4 _14_m72 : packoffset(c100);
    float4 _14_m73 : packoffset(c101);
    float4 _14_m74 : packoffset(c102);
    float4 _14_m75 : packoffset(c103);
    float4 _14_m76 : packoffset(c104);
    float4 _14_m77 : packoffset(c105);
    float4 _14_m78 : packoffset(c106);
    float4 _14_m79 : packoffset(c107);
    float4 _14_m80 : packoffset(c108);
    float4 _14_m81 : packoffset(c109);
    float4 _14_m82 : packoffset(c110);
    float4 _14_m83 : packoffset(c111);
    float4 _14_m84 : packoffset(c112);
    float4 _14_m85 : packoffset(c113);
    float4 _14_m86 : packoffset(c114);
    float4 _14_m87 : packoffset(c115);
    float4 _14_m88 : packoffset(c116);
    float4 _14_m89 : packoffset(c117);
    float4 _14_m90 : packoffset(c118);
    float4 _14_m91 : packoffset(c119);
    float4 _14_m92 : packoffset(c120);
    float4 _14_m93 : packoffset(c121);
    float4 _14_m94 : packoffset(c122);
    float4 _14_m95 : packoffset(c123);
    float4 _14_m96 : packoffset(c124);
    float4 _14_m97 : packoffset(c125);
    float4 _14_m98 : packoffset(c126);
    float4 _14_m99 : packoffset(c127);
    float4 _14_m100 : packoffset(c128);
    float4 _14_m101 : packoffset(c129);
    float4 _14_m102[2] : packoffset(c130);
    float4 _14_m103[2] : packoffset(c132);
    float _14_m104 : packoffset(c134);
    float _14_m105 : packoffset(c134.y);
    float _14_m106 : packoffset(c134.z);
    float _14_m107 : packoffset(c134.w);
    float4 _14_m108 : packoffset(c135);
    float4 _14_m109 : packoffset(c136);
    float4 _14_m110 : packoffset(c137);
    float4 _14_m111 : packoffset(c138);
    float4 _14_m112 : packoffset(c139);
    float4 _14_m113 : packoffset(c140);
    float4 _14_m114 : packoffset(c141);
    float4 _14_m115 : packoffset(c142);
    float4 _14_m116 : packoffset(c143);
    float4 _14_m117 : packoffset(c144);
    float4 _14_m118 : packoffset(c145);
    float4 _14_m119 : packoffset(c146);
    float4 _14_m120 : packoffset(c147);
    float4 _14_m121 : packoffset(c148);
    float4 _14_m122 : packoffset(c149);
    float4 _14_m123 : packoffset(c150);
    float4 _14_m124 : packoffset(c151);
    float4 _14_m125 : packoffset(c152);
    float4 _14_m126 : packoffset(c153);
    float4 _14_m127 : packoffset(c154);
    float4 _14_m128 : packoffset(c155);
    float4 _14_m129 : packoffset(c156);
    float4 _14_m130 : packoffset(c157);
    float4 _14_m131 : packoffset(c158);
    float4 _14_m132 : packoffset(c159);
    float4 _14_m133 : packoffset(c160);
    float4 _14_m134 : packoffset(c161);
    float4 _14_m135 : packoffset(c162);
    float4 _14_m136 : packoffset(c163);
    float4 _14_m137 : packoffset(c164);
    column_major float4x4 _14_m138 : packoffset(c165);
    float4 _14_m139 : packoffset(c169);
    float4 _14_m140 : packoffset(c170);
    float4 _14_m141 : packoffset(c171);
    float4 _14_m142 : packoffset(c172);
    int4 _14_m143 : packoffset(c173);
    int4 _14_m144 : packoffset(c174);
    int4 _14_m145 : packoffset(c175);
    float4 _14_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _15_17 : register(b0, space2)
{
    _16 _17_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]] cbuffer _24_25 : register(b0, space1)
{
    float _25_m0 : packoffset(c0);
    float _25_m1 : packoffset(c0.y);
    float _25_m2 : packoffset(c0.z);
    float _25_m3 : packoffset(c0.w);
    float _25_m4 : packoffset(c1);
    float _25_m5 : packoffset(c1.y);
    float _25_m6 : packoffset(c1.z);
    float _25_m7 : packoffset(c1.w);
    float _25_m8 : packoffset(c2);
    float _25_m9 : packoffset(c2.y);
    float _25_m10 : packoffset(c2.z);
    float _25_m11 : packoffset(c2.w);
    float _25_m12 : packoffset(c3);
    float _25_m13 : packoffset(c3.y);
    float _25_m14 : packoffset(c3.z);
    float _25_m15 : packoffset(c3.w);
    float4 _25_m16 : packoffset(c4);
    float _25_m17 : packoffset(c5);
    float _25_m18 : packoffset(c5.y);
    float _25_m19 : packoffset(c5.z);
    float _25_m20 : packoffset(c5.w);
    float4 _25_m21 : packoffset(c6);
    float4 _25_m22 : packoffset(c7);
    float4 _25_m23 : packoffset(c8);
    float4 _25_m24 : packoffset(c9);
    float4 _25_m25 : packoffset(c10);
    float _25_m26 : packoffset(c11);
    float _25_m27 : packoffset(c11.y);
    float _25_m28 : packoffset(c11.z);
    float _25_m29 : packoffset(c11.w);
    float _25_m30 : packoffset(c12);
    float _25_m31 : packoffset(c12.y);
    float _25_m32 : packoffset(c12.z);
    float _25_m33 : packoffset(c12.w);
    float _25_m34 : packoffset(c13);
    float _25_m35 : packoffset(c13.y);
    float _25_m36 : packoffset(c13.z);
    float _25_m37 : packoffset(c13.w);
    float _25_m38 : packoffset(c14);
    float _25_m39 : packoffset(c14.y);
    float _25_m40 : packoffset(c14.z);
    float _25_m41 : packoffset(c14.w);
    float _25_m42 : packoffset(c15);
    float _25_m43 : packoffset(c15.y);
    float _25_m44 : packoffset(c15.z);
    float _25_m45 : packoffset(c15.w);
    float _25_m46 : packoffset(c16);
    float _25_m47 : packoffset(c16.y);
    float _25_m48 : packoffset(c16.z);
    float _25_m49 : packoffset(c16.w);
    float _25_m50 : packoffset(c17);
    float _25_m51 : packoffset(c17.y);
    float _25_m52 : packoffset(c17.z);
    float _25_m53 : packoffset(c17.w);
    float _25_m54 : packoffset(c18);
    float _25_m55 : packoffset(c18.y);
    float _25_m56 : packoffset(c18.z);
    float _25_m57 : packoffset(c18.w);
    float _25_m58 : packoffset(c19);
    float _25_m59 : packoffset(c19.y);
    float _25_m60 : packoffset(c19.z);
    float _25_m61 : packoffset(c19.w);
    float4 _25_m62 : packoffset(c20);
    float4 _25_m63 : packoffset(c21);
    float4 _25_m64 : packoffset(c22);
    float4 _25_m65 : packoffset(c23);
    float4 _25_m66 : packoffset(c24);
    float4 _25_m67 : packoffset(c25);
    float4 _25_m68 : packoffset(c26);
    float4 _25_m69 : packoffset(c27);
    float4 _25_m70 : packoffset(c28);
};

[[vk::binding(4, 0)]] SamplerState _19 : register(s4, space0);
[[vk::binding(2, 1)]] Texture2D<float4> _21 : register(t2, space1);
[[vk::binding(1, 1)]] SamplerState _22 : register(s1, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _23 : register(t3, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float3 _6;
static float3 _7;
static uint _8;
static float4 _9;
static float4 _10;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float3 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] nointerpolation uint _8 : TEXCOORD5;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : SV_Target0;
    [[vk::location(1)]] float4 _10 : SV_Target1;
};

void frag_main()
{
    float2 _149 = gl_FragCoord.xy * _14_m0.zw;
    float2 _151 = (_149 * 2.0f) - 1.0f.xx;
    float4 _154 = float4(_151, gl_FragCoord.z, 1.0f);
    _154.y = -_151.y;
    float4 _157 = mul(_12_m6, _154);
    float _168 = abs(mul(_12_m0, float4(_157.xyz / _157.w.xxx, 1.0f)).z);
    float _227;
    float _228;
    do
    {
        [branch]
        if (!((_25_m54 != 0.0f) && (_25_m55 != 0.0f)))
        {
            _227 = 0.0f;
            _228 = 1.0f;
            break;
        }
        float _185 = clamp(_14_m81.y, 0.0f, 1.0f);
        float _191 = _25_m56 * ((4.0f * _185) * (1.0f - _185));
        [branch]
        if (_191 <= 9.9999999747524270787835121154785e-07f)
        {
            _227 = 0.0f;
            _228 = 1.0f;
            break;
        }
        float2 _200 = (_149 * _25_m70.xy) + _25_m70.zw;
        _200.y = _200.y + (_14_m10.y * _25_m57);
        float _222 = ddy(_4.w) * (((_4.w + _23.SampleLevel(_19, _200, 0.0f).x) - 1.0f) * ((2.0f * _191) * _14_m0.y));
        float _223 = _4.w + _222;
        _227 = _222;
        _228 = step(0.0f, _223) * step(_223, 1.0f);
        break;
    } while(false);
    float2 _229 = _4.xy;
    _229.y = _4.y + _227;
    bool4 _240 = (_25_m5 != 0.0f).xxxx;
    float4 _242 = _25_m16 * float4(_240.x ? 1.0f.xxxx.x : _5.x, _240.y ? 1.0f.xxxx.y : _5.y, _240.z ? 1.0f.xxxx.z : _5.z, _240.w ? 1.0f.xxxx.w : _5.w);
    float3 _246 = _242.xyz * _25_m6;
    float4 _247 = float4(_246.x, _246.y, _246.z, _242.w);
    _247.w = _242.w * _25_m7;
    float4 _272 = _21.SampleBias(_22, _229, float(int(_25_m19)) + _14_m16);
    float4 _278 = (_247 * lerp(_272, float4(1.0f, 1.0f, 1.0f, _272.x), _25_m18.xxxx)) * (1.0f - _25_m37).xxxx;
    float _283 = _25_m49 * _25_m53;
    bool4 _290 = (_25_m39 != 0.0f).xxxx;
    float _303 = -lerp(-1.0f, ((_25_m51 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _283) + ((1.0f - _25_m36) * _283));
    float _305 = clamp(_303 * _25_m50, 0.0f, 1.0f);
    float _308 = clamp((_25_m52 - _303) * _25_m50, 0.0f, 1.0f);
    float4 _315;
    _315.w = _278.w * lerp(_305, _305, _25_m63.w);
    float3 _319 = lerp(_278.xyz, (_25_m63.xyz * _308) * _25_m6, _308.xxx);
    float4 _320 = float4(_319.x, _319.y, _319.z, _315.w);
    float4 _321 = float4(_290.x ? _320.x : _278.x, _290.y ? _320.y : _278.y, _290.z ? _320.z : _278.z, _290.w ? _320.w : _278.w);
    float3 _365 = clamp(((_321.xyz + (max(_321.xyz - _25_m9.xxx, 0.0f.xxx) * _25_m10)).xyz * ((1.0f - _25_m12) + (_14_m20.y * _25_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float4 _366 = float4(_365.x, _365.y, _365.z, _321.w);
    float _379 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    _366.w = (clamp(_321.w * ((_25_m26 != 0.0f) ? (clamp((_168 - _25_m27) / (_25_m28 - _25_m27), 0.0f, 1.0f) * clamp((_168 - _25_m29) / (_25_m30 - _25_m29), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _17_m0[_8]._m1.y)) * (((_17_m0[_8]._m1.x - ((_17_m0[_8]._m1.x >= 0.0f) ? _379 : (-_379))) > 0.0f) ? 1.0f : (1.0f - _25_m0));
    float4 _390 = _366 * _228;
    float _404 = (_390.w * lerp(1.0f, _14_m81.x, _25_m59)) * ((_25_m61 < 0.5f) ? 1.0f : _25_m60);
    float _414 = 1.0f - _25_m1;
    float2 _456;
    if (clamp((_25_m3 + 1.0f) - _25_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _442 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
        _442.y = -_442.y;
        _456 = ((sqrt(sqrt(abs(_442 * 0.5f))) * float2(int2(sign(_442)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _456 = 0.0f.xx;
    }
    bool3 _458 = (_25_m1 == 2.0f).xxx;
    // RenoDX code start: boost only the fingerprint-matched effect.
    /* Vanilla 0x0147D594:
    float3 _462 = _390.xyz * _404;
    */
    float3 _462 = ApplyVFXBoost(_390.xyz * _404);
    // RenoDX code end
    float3 _463 = (1.0f - _404).xxx + _462;
    float3 _464 = float3(_458.x ? _463.x : _462.x, _458.y ? _463.y : _462.y, _458.z ? _463.z : _462.z);
    float4 _465 = float4(_464.x, _464.y, _464.z, 0.0f.xxxx.w);
    _465.w = _404 * max(0.0f, _414);
    float3 _485 = ((lerp(dot(_465.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _465.xyz, _14_m78.w.xxx) * _14_m78.xyz) * _25_m11) + (_465.xyz * (1.0f - _25_m11));
    float2 _487 = min(_456, 1.0f.xx);
    float4 _488 = float4(_487.x, _487.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _488.z = 1.0f;
    _488.w = (_25_m2 * _25_m0) * float(clamp(max(dot(_390.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _404, _404 * _414) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _9 = float4(_485.x, _485.y, _485.z, _465.w);
    _10 = _488;
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
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._9 = _9;
    stage_output._10 = _10;
    return stage_output;
}

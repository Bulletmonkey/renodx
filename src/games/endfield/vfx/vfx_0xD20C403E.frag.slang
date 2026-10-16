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

static float4 _151;

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

[[vk::binding(0, 1)]] cbuffer _27_28 : register(b0, space1)
{
    float _28_m0 : packoffset(c0);
    float _28_m1 : packoffset(c0.y);
    float _28_m2 : packoffset(c0.z);
    float _28_m3 : packoffset(c0.w);
    float _28_m4 : packoffset(c1);
    float _28_m5 : packoffset(c1.y);
    float _28_m6 : packoffset(c1.z);
    float _28_m7 : packoffset(c1.w);
    float _28_m8 : packoffset(c2);
    float _28_m9 : packoffset(c2.y);
    float _28_m10 : packoffset(c2.z);
    float _28_m11 : packoffset(c2.w);
    float _28_m12 : packoffset(c3);
    float _28_m13 : packoffset(c3.y);
    float _28_m14 : packoffset(c3.z);
    float _28_m15 : packoffset(c3.w);
    float4 _28_m16 : packoffset(c4);
    float _28_m17 : packoffset(c5);
    float _28_m18 : packoffset(c5.y);
    float _28_m19 : packoffset(c5.z);
    float _28_m20 : packoffset(c5.w);
    float4 _28_m21 : packoffset(c6);
    float4 _28_m22 : packoffset(c7);
    float4 _28_m23 : packoffset(c8);
    float4 _28_m24 : packoffset(c9);
    float4 _28_m25 : packoffset(c10);
    float _28_m26 : packoffset(c11);
    float _28_m27 : packoffset(c11.y);
    float _28_m28 : packoffset(c11.z);
    float _28_m29 : packoffset(c11.w);
    float _28_m30 : packoffset(c12);
    float _28_m31 : packoffset(c12.y);
    float _28_m32 : packoffset(c12.z);
    float _28_m33 : packoffset(c12.w);
    float _28_m34 : packoffset(c13);
    float _28_m35 : packoffset(c13.y);
    float _28_m36 : packoffset(c13.z);
    float _28_m37 : packoffset(c13.w);
    float4 _28_m38 : packoffset(c14);
    float4 _28_m39 : packoffset(c15);
    float4 _28_m40 : packoffset(c16);
    float _28_m41 : packoffset(c17);
    float _28_m42 : packoffset(c17.y);
    float _28_m43 : packoffset(c17.z);
    float _28_m44 : packoffset(c17.w);
    float _28_m45 : packoffset(c18);
    float _28_m46 : packoffset(c18.y);
    float _28_m47 : packoffset(c18.z);
    float _28_m48 : packoffset(c18.w);
    float _28_m49 : packoffset(c19);
    float _28_m50 : packoffset(c19.y);
    float _28_m51 : packoffset(c19.z);
    float _28_m52 : packoffset(c19.w);
    float _28_m53 : packoffset(c20);
    float _28_m54 : packoffset(c20.y);
    float _28_m55 : packoffset(c20.z);
    float _28_m56 : packoffset(c20.w);
    float _28_m57 : packoffset(c21);
    float _28_m58 : packoffset(c21.y);
    float _28_m59 : packoffset(c21.z);
    float _28_m60 : packoffset(c21.w);
    float _28_m61 : packoffset(c22);
    float _28_m62 : packoffset(c22.y);
    float _28_m63 : packoffset(c22.z);
    float _28_m64 : packoffset(c22.w);
    float _28_m65 : packoffset(c23);
    float _28_m66 : packoffset(c23.y);
    float _28_m67 : packoffset(c23.z);
    float _28_m68 : packoffset(c23.w);
    float _28_m69 : packoffset(c24);
    float _28_m70 : packoffset(c24.y);
    float _28_m71 : packoffset(c24.z);
    float _28_m72 : packoffset(c24.w);
    float _28_m73 : packoffset(c25);
    float _28_m74 : packoffset(c25.y);
    float _28_m75 : packoffset(c25.z);
    float _28_m76 : packoffset(c25.w);
    float4 _28_m77 : packoffset(c26);
    float4 _28_m78 : packoffset(c27);
    float4 _28_m79 : packoffset(c28);
    float4 _28_m80 : packoffset(c29);
    float4 _28_m81 : packoffset(c30);
    float4 _28_m82 : packoffset(c31);
    float4 _28_m83 : packoffset(c32);
    float4 _28_m84 : packoffset(c33);
    float4 _28_m85 : packoffset(c34);
};

[[vk::binding(4, 0)]] SamplerState _20 : register(s4, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _22 : register(t4, space1);
[[vk::binding(2, 1)]] SamplerState _23 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _24 : register(t3, space1);
[[vk::binding(1, 1)]] SamplerState _25 : register(s1, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _26 : register(t5, space1);

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
    bool _200;
    float2 _169 = gl_FragCoord.xy * _15_m0.zw;
    float2 _171 = (_169 * 2.0f) - 1.0f.xx;
    float4 _174 = float4(_171, gl_FragCoord.z, 1.0f);
    _174.y = -_171.y;
    float4 _177 = mul(_13_m6, _174);
    float _188 = abs(mul(_13_m0, float4(_177.xyz / _177.w.xxx, 1.0f)).z);
    float _247;
    float _248;
    do
    {
        _200 = !((_28_m69 != 0.0f) && (_28_m70 != 0.0f));
        [branch]
        if (_200)
        {
            _247 = 0.0f;
            _248 = 1.0f;
            break;
        }
        float _205 = clamp(_15_m81.y, 0.0f, 1.0f);
        float _211 = _28_m71 * ((4.0f * _205) * (1.0f - _205));
        [branch]
        if (_211 <= 9.9999999747524270787835121154785e-07f)
        {
            _247 = 0.0f;
            _248 = 1.0f;
            break;
        }
        float2 _220 = (_169 * _28_m85.xy) + _28_m85.zw;
        _220.y = _220.y + (_15_m10.y * _28_m72);
        float _242 = ddy(_4.w) * (((_4.w + _26.SampleLevel(_20, _220, 0.0f).x) - 1.0f) * ((2.0f * _211) * _15_m0.y));
        float _243 = _4.w + _242;
        _247 = _242;
        _248 = step(0.0f, _243) * step(_243, 1.0f);
        break;
    } while(false);
    float2 _249 = _4.xy;
    float2 _252 = _5.xy;
    _249.y = _4.y + _247;
    _252.y = _5.y + _247;
    bool4 _264 = (_28_m5 != 0.0f).xxxx;
    float4 _266 = _28_m16 * float4(_264.x ? 1.0f.xxxx.x : _6.x, _264.y ? 1.0f.xxxx.y : _6.y, _264.z ? 1.0f.xxxx.z : _6.z, _264.w ? 1.0f.xxxx.w : _6.w);
    float3 _270 = _266.xyz * _28_m6;
    float4 _271 = float4(_270.x, _270.y, _270.z, _266.w);
    _271.w = _266.w * _28_m7;
    float _293 = ((_28_m55 != 0.0f) && _200) ? _4.w : 1.0f;
    float4 _306 = _24.SampleBias(_25, _252, float(int(_28_m26)) + _15_m16);
    float4 _310 = lerp(_306, float4(1.0f, 1.0f, 1.0f, _306.x), _28_m28.xxxx);
    float4 _322 = (1.0f - _28_m49).xxxx + (_310 * _28_m30);
    float4 _327 = _310 * _28_m33;
    float2 _361;
    if (_28_m30 != 0.0f)
    {
        float _343 = (_322.x * (_28_m56 + 1.0f)) - _28_m56;
        float4 _349 = _322;
        _349.w = _322.w * _343;
        bool2 _357 = (_28_m61 != 0.0f).xx;
        float2 _358 = (((_349.wy * 2.0f) - 1.0f.xx).xy * _28_m57).xy * _293;
        float2 _359 = float2(_343 * _28_m57, _343 * _28_m58) * _293;
        _361 = float2(_357.x ? _358.x : _359.x, _357.y ? _358.y : _359.y);
    }
    else
    {
        _361 = 0.0f.xx;
    }
    float4 _376 = _22.SampleBias(_23, _249 + (_361 * _28_m17), float(int(_28_m19)) + _15_m16);
    float4 _382 = (_271 * lerp(_376, float4(1.0f, 1.0f, 1.0f, _376.x), _28_m18.xxxx)) * ((1.0f - _28_m52).xxxx + (_310 * _28_m32));
    float _385 = _382.w;
    float4 _393 = ((_327 * clamp((_385 + _327.w) * _28_m77.w, 0.0f, 1.0f)) * _28_m77) + _382;
    float4 _394 = float4(_393.x, _393.y, _393.z, _382.w);
    float _400 = _28_m64 * _28_m68;
    bool4 _407 = (_28_m54 != 0.0f).xxxx;
    float _421 = (_310 * _28_m34).x - lerp(-1.0f, ((_28_m66 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _400) + (((1.0f - _28_m51).xxxx + (_310 * _28_m31)).x * _400));
    float _423 = clamp(_421 * _28_m65, 0.0f, 1.0f);
    float _426 = clamp((_28_m67 - _421) * _28_m65, 0.0f, 1.0f);
    float4 _432;
    _432.w = _385 * lerp(_423, _423, _28_m78.w);
    float3 _436 = lerp(_393.xyz, (_28_m78.xyz * _426) * _28_m6, _426.xxx);
    float4 _438 = float4(_407.x ? float4(_436.x, _436.y, _436.z, _432.w).x : _394.x, _407.y ? float4(_436.x, _436.y, _436.z, _432.w).y : _394.y, _407.z ? float4(_436.x, _436.y, _436.z, _432.w).z : _394.z, _407.w ? float4(_436.x, _436.y, _436.z, _432.w).w : _394.w);
    float3 _462 = _438.xyz;
    float3 _482 = clamp(((_462 + (max(_462 - _28_m9.xxx, 0.0f.xxx) * _28_m10)).xyz * ((1.0f - _28_m12) + (_15_m20.y * _28_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float4 _483 = float4(_482.x, _482.y, _482.z, _438.w);
    float _496 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    _483.w = (clamp(_438.w * ((_28_m41 != 0.0f) ? (clamp((_188 - _28_m42) / (_28_m43 - _28_m42), 0.0f, 1.0f) * clamp((_188 - _28_m44) / (_28_m45 - _28_m44), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _18_m0[_9]._m1.y)) * (((_18_m0[_9]._m1.x - ((_18_m0[_9]._m1.x >= 0.0f) ? _496 : (-_496))) > 0.0f) ? 1.0f : (1.0f - _28_m0));
    float4 _507 = _483 * _248;
    float _521 = (_507.w * lerp(1.0f, _15_m81.x, _28_m74)) * ((_28_m76 < 0.5f) ? 1.0f : _28_m75);
    float _531 = 1.0f - _28_m1;
    float2 _573;
    if (clamp((_28_m3 + 1.0f) - _28_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _559 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
        _559.y = -_559.y;
        _573 = ((sqrt(sqrt(abs(_559 * 0.5f))) * float2(int2(sign(_559)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _573 = 0.0f.xx;
    }
    bool3 _575 = (_28_m1 == 2.0f).xxx;
    // RenoDX code start: boost only the fingerprint-matched effect.
    /* Vanilla 0xD20C403E:
    float3 _579 = _507.xyz * _521;
    */
    float3 _579 = ApplyVFXBoost(_507.xyz * _521);
    // RenoDX code end
    float3 _580 = (1.0f - _521).xxx + _579;
    float3 _581 = float3(_575.x ? _580.x : _579.x, _575.y ? _580.y : _579.y, _575.z ? _580.z : _579.z);
    float4 _582 = float4(_581.x, _581.y, _581.z, 0.0f.xxxx.w);
    _582.w = _521 * max(0.0f, _531);
    float3 _602 = ((lerp(dot(_582.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _582.xyz, _15_m78.w.xxx) * _15_m78.xyz) * _28_m11) + (_582.xyz * (1.0f - _28_m11));
    float2 _604 = min(_573, 1.0f.xx);
    float4 _605 = float4(_604.x, _604.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _605.z = 1.0f;
    _605.w = (_28_m2 * _28_m0) * float(clamp(max(dot(_507.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _521, _521 * _531) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_602.x, _602.y, _602.z, _582.w);
    _11 = _605;
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

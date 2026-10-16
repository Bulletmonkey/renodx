#include "../shared.h"

struct _18
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

static float4 _172;

[[vk::binding(11, 0)]] cbuffer _13_14 : register(b11, space0)
{
    column_major float4x4 _14_m0 : packoffset(c0);
    column_major float4x4 _14_m1 : packoffset(c4);
    column_major float4x4 _14_m2 : packoffset(c8);
    column_major float4x4 _14_m3 : packoffset(c12);
    column_major float4x4 _14_m4 : packoffset(c16);
    column_major float4x4 _14_m5 : packoffset(c20);
    column_major float4x4 _14_m6 : packoffset(c24);
    column_major float4x4 _14_m7 : packoffset(c28);
    column_major float4x4 _14_m8 : packoffset(c32);
    column_major float4x4 _14_m9 : packoffset(c36);
    column_major float4x4 _14_m10 : packoffset(c40);
    float4 _14_m11 : packoffset(c44);
    column_major float4x4 _14_m12 : packoffset(c45);
    column_major float4x4 _14_m13 : packoffset(c49);
    column_major float4x4 _14_m14 : packoffset(c53);
    column_major float4x4 _14_m15 : packoffset(c57);
    column_major float4x4 _14_m16 : packoffset(c61);
    column_major float4x4 _14_m17 : packoffset(c65);
    column_major float4x4 _14_m18 : packoffset(c69);
    column_major float4x4 _14_m19 : packoffset(c73);
    column_major float4x4 _14_m20 : packoffset(c77);
    float4 _14_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _15_16 : register(b15, space0)
{
    float4 _16_m0 : packoffset(c0);
    float4 _16_m1 : packoffset(c1);
    float4 _16_m2 : packoffset(c2);
    float4 _16_m3 : packoffset(c3);
    float4 _16_m4 : packoffset(c4);
    float4 _16_m5 : packoffset(c5);
    float4 _16_m6[6] : packoffset(c6);
    float4 _16_m7[6] : packoffset(c12);
    float4 _16_m8 : packoffset(c18);
    float4 _16_m9 : packoffset(c19);
    float4 _16_m10 : packoffset(c20);
    float4 _16_m11 : packoffset(c21);
    float4 _16_m12 : packoffset(c22);
    float4 _16_m13 : packoffset(c23);
    float4 _16_m14 : packoffset(c24);
    float4 _16_m15 : packoffset(c25);
    float _16_m16 : packoffset(c26);
    float _16_m17 : packoffset(c26.y);
    float _16_m18 : packoffset(c26.z);
    uint _16_m19 : packoffset(c26.w);
    float4 _16_m20 : packoffset(c27);
    int4 _16_m21 : packoffset(c28);
    float4 _16_m22 : packoffset(c29);
    float4 _16_m23 : packoffset(c30);
    float4 _16_m24 : packoffset(c31);
    float4 _16_m25 : packoffset(c32);
    float4 _16_m26 : packoffset(c33);
    float4 _16_m27 : packoffset(c34);
    float4 _16_m28 : packoffset(c35);
    float4 _16_m29 : packoffset(c36);
    float4 _16_m30 : packoffset(c37);
    float4 _16_m31 : packoffset(c38);
    float4 _16_m32[4] : packoffset(c39);
    float4 _16_m33[4] : packoffset(c43);
    float4 _16_m34[4] : packoffset(c47);
    float4 _16_m35[4] : packoffset(c51);
    float4 _16_m36 : packoffset(c55);
    float4 _16_m37 : packoffset(c56);
    float4 _16_m38[4] : packoffset(c57);
    float4 _16_m39[4] : packoffset(c61);
    float4 _16_m40[4] : packoffset(c65);
    float4 _16_m41 : packoffset(c69);
    float4 _16_m42 : packoffset(c70);
    float4 _16_m43 : packoffset(c71);
    float4 _16_m44 : packoffset(c72);
    float4 _16_m45 : packoffset(c73);
    float4 _16_m46 : packoffset(c74);
    float4 _16_m47 : packoffset(c75);
    float4 _16_m48 : packoffset(c76);
    float4 _16_m49 : packoffset(c77);
    float4 _16_m50 : packoffset(c78);
    float4 _16_m51 : packoffset(c79);
    float4 _16_m52 : packoffset(c80);
    float4 _16_m53 : packoffset(c81);
    float4 _16_m54 : packoffset(c82);
    float4 _16_m55 : packoffset(c83);
    float4 _16_m56 : packoffset(c84);
    float4 _16_m57 : packoffset(c85);
    float4 _16_m58 : packoffset(c86);
    float4 _16_m59 : packoffset(c87);
    float4 _16_m60 : packoffset(c88);
    float4 _16_m61 : packoffset(c89);
    float4 _16_m62 : packoffset(c90);
    float4 _16_m63 : packoffset(c91);
    float4 _16_m64 : packoffset(c92);
    float4 _16_m65 : packoffset(c93);
    float4 _16_m66 : packoffset(c94);
    float4 _16_m67 : packoffset(c95);
    float4 _16_m68 : packoffset(c96);
    float4 _16_m69 : packoffset(c97);
    float4 _16_m70 : packoffset(c98);
    float4 _16_m71 : packoffset(c99);
    float4 _16_m72 : packoffset(c100);
    float4 _16_m73 : packoffset(c101);
    float4 _16_m74 : packoffset(c102);
    float4 _16_m75 : packoffset(c103);
    float4 _16_m76 : packoffset(c104);
    float4 _16_m77 : packoffset(c105);
    float4 _16_m78 : packoffset(c106);
    float4 _16_m79 : packoffset(c107);
    float4 _16_m80 : packoffset(c108);
    float4 _16_m81 : packoffset(c109);
    float4 _16_m82 : packoffset(c110);
    float4 _16_m83 : packoffset(c111);
    float4 _16_m84 : packoffset(c112);
    float4 _16_m85 : packoffset(c113);
    float4 _16_m86 : packoffset(c114);
    float4 _16_m87 : packoffset(c115);
    float4 _16_m88 : packoffset(c116);
    float4 _16_m89 : packoffset(c117);
    float4 _16_m90 : packoffset(c118);
    float4 _16_m91 : packoffset(c119);
    float4 _16_m92 : packoffset(c120);
    float4 _16_m93 : packoffset(c121);
    float4 _16_m94 : packoffset(c122);
    float4 _16_m95 : packoffset(c123);
    float4 _16_m96 : packoffset(c124);
    float4 _16_m97 : packoffset(c125);
    float4 _16_m98 : packoffset(c126);
    float4 _16_m99 : packoffset(c127);
    float4 _16_m100 : packoffset(c128);
    float4 _16_m101 : packoffset(c129);
    float4 _16_m102[2] : packoffset(c130);
    float4 _16_m103[2] : packoffset(c132);
    float _16_m104 : packoffset(c134);
    float _16_m105 : packoffset(c134.y);
    float _16_m106 : packoffset(c134.z);
    float _16_m107 : packoffset(c134.w);
    float4 _16_m108 : packoffset(c135);
    float4 _16_m109 : packoffset(c136);
    float4 _16_m110 : packoffset(c137);
    float4 _16_m111 : packoffset(c138);
    float4 _16_m112 : packoffset(c139);
    float4 _16_m113 : packoffset(c140);
    float4 _16_m114 : packoffset(c141);
    float4 _16_m115 : packoffset(c142);
    float4 _16_m116 : packoffset(c143);
    float4 _16_m117 : packoffset(c144);
    float4 _16_m118 : packoffset(c145);
    float4 _16_m119 : packoffset(c146);
    float4 _16_m120 : packoffset(c147);
    float4 _16_m121 : packoffset(c148);
    float4 _16_m122 : packoffset(c149);
    float4 _16_m123 : packoffset(c150);
    float4 _16_m124 : packoffset(c151);
    float4 _16_m125 : packoffset(c152);
    float4 _16_m126 : packoffset(c153);
    float4 _16_m127 : packoffset(c154);
    float4 _16_m128 : packoffset(c155);
    float4 _16_m129 : packoffset(c156);
    float4 _16_m130 : packoffset(c157);
    float4 _16_m131 : packoffset(c158);
    float4 _16_m132 : packoffset(c159);
    float4 _16_m133 : packoffset(c160);
    float4 _16_m134 : packoffset(c161);
    float4 _16_m135 : packoffset(c162);
    float4 _16_m136 : packoffset(c163);
    float4 _16_m137 : packoffset(c164);
    column_major float4x4 _16_m138 : packoffset(c165);
    float4 _16_m139 : packoffset(c169);
    float4 _16_m140 : packoffset(c170);
    float4 _16_m141 : packoffset(c171);
    float4 _16_m142 : packoffset(c172);
    int4 _16_m143 : packoffset(c173);
    int4 _16_m144 : packoffset(c174);
    int4 _16_m145 : packoffset(c175);
    float4 _16_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _17_19 : register(b0, space2)
{
    _18 _19_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]] cbuffer _32_33 : register(b0, space1)
{
    float _33_m0 : packoffset(c0);
    float _33_m1 : packoffset(c0.y);
    float _33_m2 : packoffset(c0.z);
    float _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
    float _33_m12 : packoffset(c3);
    float _33_m13 : packoffset(c3.y);
    float _33_m14 : packoffset(c3.z);
    float _33_m15 : packoffset(c3.w);
    float4 _33_m16 : packoffset(c4);
    float _33_m17 : packoffset(c5);
    float _33_m18 : packoffset(c5.y);
    float _33_m19 : packoffset(c5.z);
    float _33_m20 : packoffset(c5.w);
    float4 _33_m21 : packoffset(c6);
    float4 _33_m22 : packoffset(c7);
    float4 _33_m23 : packoffset(c8);
    float4 _33_m24 : packoffset(c9);
    float4 _33_m25 : packoffset(c10);
    float _33_m26 : packoffset(c11);
    float _33_m27 : packoffset(c11.y);
    float _33_m28 : packoffset(c11.z);
    float _33_m29 : packoffset(c11.w);
    float _33_m30 : packoffset(c12);
    float _33_m31 : packoffset(c12.y);
    float _33_m32 : packoffset(c12.z);
    float _33_m33 : packoffset(c12.w);
    float _33_m34 : packoffset(c13);
    float _33_m35 : packoffset(c13.y);
    float _33_m36 : packoffset(c13.z);
    float _33_m37 : packoffset(c13.w);
    float4 _33_m38 : packoffset(c14);
    float4 _33_m39 : packoffset(c15);
    float4 _33_m40 : packoffset(c16);
    float _33_m41 : packoffset(c17);
    float _33_m42 : packoffset(c17.y);
    float _33_m43 : packoffset(c17.z);
    float _33_m44 : packoffset(c17.w);
    float _33_m45 : packoffset(c18);
    float _33_m46 : packoffset(c18.y);
    float _33_m47 : packoffset(c18.z);
    float _33_m48 : packoffset(c18.w);
    float _33_m49 : packoffset(c19);
    float _33_m50 : packoffset(c19.y);
    float _33_m51 : packoffset(c19.z);
    float _33_m52 : packoffset(c19.w);
    float4 _33_m53 : packoffset(c20);
    float4 _33_m54 : packoffset(c21);
    float4 _33_m55 : packoffset(c22);
    float _33_m56 : packoffset(c23);
    float _33_m57 : packoffset(c23.y);
    float _33_m58 : packoffset(c23.z);
    float _33_m59 : packoffset(c23.w);
    float _33_m60 : packoffset(c24);
    float _33_m61 : packoffset(c24.y);
    float _33_m62 : packoffset(c24.z);
    float _33_m63 : packoffset(c24.w);
    float4 _33_m64 : packoffset(c25);
    float4 _33_m65 : packoffset(c26);
    float4 _33_m66 : packoffset(c27);
    float _33_m67 : packoffset(c28);
    float _33_m68 : packoffset(c28.y);
    float _33_m69 : packoffset(c28.z);
    float _33_m70 : packoffset(c28.w);
    float _33_m71 : packoffset(c29);
    float _33_m72 : packoffset(c29.y);
    float _33_m73 : packoffset(c29.z);
    float _33_m74 : packoffset(c29.w);
    float _33_m75 : packoffset(c30);
    float _33_m76 : packoffset(c30.y);
    float _33_m77 : packoffset(c30.z);
    float _33_m78 : packoffset(c30.w);
    float _33_m79 : packoffset(c31);
    float _33_m80 : packoffset(c31.y);
    float _33_m81 : packoffset(c31.z);
    float _33_m82 : packoffset(c31.w);
    float _33_m83 : packoffset(c32);
    float _33_m84 : packoffset(c32.y);
    float _33_m85 : packoffset(c32.z);
    float _33_m86 : packoffset(c32.w);
    float _33_m87 : packoffset(c33);
    float _33_m88 : packoffset(c33.y);
    float _33_m89 : packoffset(c33.z);
    float _33_m90 : packoffset(c33.w);
    float _33_m91 : packoffset(c34);
    float _33_m92 : packoffset(c34.y);
    float _33_m93 : packoffset(c34.z);
    float _33_m94 : packoffset(c34.w);
    float _33_m95 : packoffset(c35);
    float _33_m96 : packoffset(c35.y);
    float _33_m97 : packoffset(c35.z);
    float _33_m98 : packoffset(c35.w);
    float _33_m99 : packoffset(c36);
    float _33_m100 : packoffset(c36.y);
    float _33_m101 : packoffset(c36.z);
    float _33_m102 : packoffset(c36.w);
    float4 _33_m103 : packoffset(c37);
    float4 _33_m104 : packoffset(c38);
    float4 _33_m105 : packoffset(c39);
    float4 _33_m106 : packoffset(c40);
    float4 _33_m107 : packoffset(c41);
    float4 _33_m108 : packoffset(c42);
    float4 _33_m109 : packoffset(c43);
    float4 _33_m110 : packoffset(c44);
    float4 _33_m111 : packoffset(c45);
};

[[vk::binding(4, 0)]] SamplerState _21 : register(s4, space0);
[[vk::binding(8, 1)]] Texture2D<float4> _23 : register(t8, space1);
[[vk::binding(4, 1)]] SamplerState _24 : register(s4, space1);
[[vk::binding(7, 1)]] Texture2D<float4> _25 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _26 : register(s3, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _27 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _28 : register(s2, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _29 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _30 : register(s1, space1);
[[vk::binding(9, 1)]] Texture2D<float4> _31 : register(t9, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float4 _7;
static float3 _8;
static float3 _9;
static uint _10;
static float4 _11;
static float4 _12;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float3 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] nointerpolation uint _10 : TEXCOORD6;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _11 : SV_Target0;
    [[vk::location(1)]] float4 _12 : SV_Target1;
};

void frag_main()
{
    bool _222;
    float2 _191 = gl_FragCoord.xy * _16_m0.zw;
    float2 _193 = (_191 * 2.0f) - 1.0f.xx;
    float4 _196 = float4(_193, gl_FragCoord.z, 1.0f);
    _196.y = -_193.y;
    float4 _199 = mul(_14_m6, _196);
    float _210 = abs(mul(_14_m0, float4(_199.xyz / _199.w.xxx, 1.0f)).z);
    float _269;
    float _270;
    do
    {
        _222 = !((_33_m95 != 0.0f) && (_33_m96 != 0.0f));
        [branch]
        if (_222)
        {
            _269 = 0.0f;
            _270 = 1.0f;
            break;
        }
        float _227 = clamp(_16_m81.y, 0.0f, 1.0f);
        float _233 = _33_m97 * ((4.0f * _227) * (1.0f - _227));
        [branch]
        if (_233 <= 9.9999999747524270787835121154785e-07f)
        {
            _269 = 0.0f;
            _270 = 1.0f;
            break;
        }
        float2 _242 = (_191 * _33_m111.xy) + _33_m111.zw;
        _242.y = _242.y + (_16_m10.y * _33_m98);
        float _264 = ddy(_4.w) * (((_4.w + _31.SampleLevel(_21, _242, 0.0f).x) - 1.0f) * ((2.0f * _233) * _16_m0.y));
        float _265 = _4.w + _264;
        _269 = _264;
        _270 = step(0.0f, _265) * step(_265, 1.0f);
        break;
    } while(false);
    float2 _271 = _4.xy;
    float2 _274 = _5.xy;
    float2 _275 = _5.zw;
    float2 _276 = _6.xy;
    _271.y = _4.y + _269;
    _274.y = _5.y + _269;
    _275.y = _5.w + _269;
    _276.y = _6.y + _269;
    bool4 _294 = (_33_m5 != 0.0f).xxxx;
    float4 _296 = _33_m16 * float4(_294.x ? 1.0f.xxxx.x : _7.x, _294.y ? 1.0f.xxxx.y : _7.y, _294.z ? 1.0f.xxxx.z : _7.z, _294.w ? 1.0f.xxxx.w : _7.w);
    float3 _300 = _296.xyz * _33_m6;
    float4 _301 = float4(_300.x, _300.y, _300.z, _296.w);
    _301.w = _296.w * _33_m7;
    float _328 = ((_33_m81 != 0.0f) && _222) ? _4.w : 1.0f;
    float4 _341 = _25.SampleBias(_26, _274, float(int(_33_m26)) + _16_m16);
    float4 _345 = lerp(_341, float4(1.0f, 1.0f, 1.0f, _341.x), _33_m28.xxxx);
    float4 _353 = (1.0f - _33_m75).xxxx + (_345 * _33_m30);
    float2 _390;
    if (_33_m30 != 0.0f)
    {
        float _372 = (_353.x * (_33_m82 + 1.0f)) - _33_m82;
        float4 _378 = _353;
        _378.w = _353.w * _372;
        bool2 _386 = (_33_m87 != 0.0f).xx;
        float2 _387 = (((_378.wy * 2.0f) - 1.0f.xx).xy * _33_m83).xy * _328;
        float2 _388 = float2(_372 * _33_m83, _372 * _33_m84) * _328;
        _390 = float2(_386.x ? _387.x : _388.x, _386.y ? _387.y : _388.y);
    }
    else
    {
        _390 = 0.0f.xx;
    }
    float4 _405 = _27.SampleBias(_28, _275 + (_390 * _33_m42), float(int(_33_m41)) + _16_m16);
    float4 _409 = lerp(_405, float4(1.0f, 1.0f, 1.0f, _405.x), _33_m43.xxxx);
    float4 _419 = (1.0f - (_33_m75 * _33_m76)).xxxx + (_409 * _33_m45);
    float4 _421 = ((1.0f - _33_m77).xxxx + (_345 * _33_m31)) + (_409 * _33_m46);
    float2 _459;
    if (_33_m45 != 0.0f)
    {
        float _439 = (_419.x * (_33_m82 + 1.0f)) - _33_m82;
        float4 _445 = _419;
        _445.w = _419.w * _439;
        bool2 _453 = (_33_m88 != 0.0f).xx;
        float2 _455 = _390 + ((((_445.wy * 2.0f) - 1.0f.xx).xy * _33_m85).xy * _328);
        float2 _457 = _390 + (float2(_439 * _33_m85, _439 * _33_m86) * _328);
        _459 = float2(_453.x ? _455.x : _457.x, _453.y ? _455.y : _457.y);
    }
    else
    {
        _459 = _390;
    }
    float _466 = (_33_m90 * _33_m46) * _33_m89;
    float2 _470 = _459 * ((1.0f - _466) + (_421.x * _466));
    float4 _485 = _29.SampleBias(_30, _276 + (_470 * _33_m57), float(int(_33_m56)) + _16_m16);
    float4 _489 = lerp(_485, float4(1.0f, 1.0f, 1.0f, _485.x), _33_m58.xxxx);
    float4 _499 = _421 + (_489 * _33_m60);
    float4 _503 = (_409 * _33_m48) + (_489 * _33_m62);
    float _505 = _499.x;
    float _507 = (_33_m90 * _33_m60) * _33_m89;
    float4 _526 = _23.SampleBias(_24, _271 + ((_470 * ((1.0f - _507) + (_505 * _507))) * _33_m17), float(int(_33_m19)) + _16_m16);
    float4 _532 = (_301 * lerp(_526, float4(1.0f, 1.0f, 1.0f, _526.x), _33_m18.xxxx)) * ((((1.0f - _33_m78).xxxx + (_345 * _33_m32)) + (_409 * _33_m47)) + (_489 * _33_m61));
    float4 _543 = ((_503 * clamp((_532.w + _503.w) * _33_m103.w, 0.0f, 1.0f)) * _33_m103) + _532;
    float4 _544 = float4(_543.x, _543.y, _543.z, _532.w);
    float _547 = _33_m90 * _33_m94;
    bool4 _554 = (_33_m80 != 0.0f).xxxx;
    float _568 = (_489 * _33_m63).x - lerp(-1.0f, ((_33_m92 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _547) + (_505 * _547));
    float _570 = clamp(_568 * _33_m91, 0.0f, 1.0f);
    float _573 = clamp((_33_m93 - _568) * _33_m91, 0.0f, 1.0f);
    float4 _579;
    _579.w = _532.w * lerp(_570, _570, _33_m104.w);
    float3 _583 = lerp(_543.xyz, (_33_m104.xyz * _573) * _33_m6, _573.xxx);
    float4 _584 = float4(_583.x, _583.y, _583.z, _579.w);
    float4 _585 = float4(_554.x ? _584.x : _544.x, _554.y ? _584.y : _544.y, _554.z ? _584.z : _544.z, _554.w ? _584.w : _544.w);
    float3 _609 = _585.xyz;
    float3 _629 = clamp(((_609 + (max(_609 - _33_m9.xxx, 0.0f.xxx) * _33_m10)).xyz * ((1.0f - _33_m12) + (_16_m20.y * _33_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float4 _630 = float4(_629.x, _629.y, _629.z, _585.w);
    float _643 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    _630.w = (clamp(_585.w * ((_33_m67 != 0.0f) ? (clamp((_210 - _33_m68) / (_33_m69 - _33_m68), 0.0f, 1.0f) * clamp((_210 - _33_m70) / (_33_m71 - _33_m70), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _19_m0[_10]._m1.y)) * (((_19_m0[_10]._m1.x - ((_19_m0[_10]._m1.x >= 0.0f) ? _643 : (-_643))) > 0.0f) ? 1.0f : (1.0f - _33_m0));
    float4 _654 = _630 * _270;
    float _668 = (_654.w * lerp(1.0f, _16_m81.x, _33_m100)) * ((_33_m102 < 0.5f) ? 1.0f : _33_m101);
    float _678 = 1.0f - _33_m1;
    float2 _720;
    if (clamp((_33_m3 + 1.0f) - _33_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _706 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _706.y = -_706.y;
        _720 = ((sqrt(sqrt(abs(_706 * 0.5f))) * float2(int2(sign(_706)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _720 = 0.0f.xx;
    }
    bool3 _722 = (_33_m1 == 2.0f).xxx;
    // RenoDX code start: boost only the fingerprint-matched effect.
    /* Vanilla 0x5F07101A:
    float3 _726 = _654.xyz * _668;
    */
    float3 _726 = ApplyVFXBoost(_654.xyz * _668);
    // RenoDX code end
    float3 _727 = (1.0f - _668).xxx + _726;
    float3 _728 = float3(_722.x ? _727.x : _726.x, _722.y ? _727.y : _726.y, _722.z ? _727.z : _726.z);
    float4 _729 = float4(_728.x, _728.y, _728.z, 0.0f.xxxx.w);
    _729.w = _668 * max(0.0f, _678);
    float3 _749 = ((lerp(dot(_729.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _729.xyz, _16_m78.w.xxx) * _16_m78.xyz) * _33_m11) + (_729.xyz * (1.0f - _33_m11));
    float2 _751 = min(_720, 1.0f.xx);
    float4 _752 = float4(_751.x, _751.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _752.z = 1.0f;
    _752.w = (_33_m2 * _33_m0) * float(clamp(max(dot(_654.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _668, _668 * _678) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _11 = float4(_749.x, _749.y, _749.z, _729.w);
    _12 = _752;
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
    _10 = stage_input._10;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._11 = _11;
    stage_output._12 = _12;
    return stage_output;
}

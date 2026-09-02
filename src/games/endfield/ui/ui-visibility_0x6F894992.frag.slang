#include "../shared.h"

// Patch 1.5 Vulkan UI permutation observed and classified with DevKit.
[[vk::binding(0, 3)]]
cbuffer _12_13 : register(b0)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
    float4 _13_m4 : packoffset(c4);
    float4 _13_m5 : packoffset(c5);
    float4 _13_m6 : packoffset(c6);
    float4 _13_m7 : packoffset(c7);
    float4 _13_m8 : packoffset(c8);
};

[[vk::binding(1, 3)]]
cbuffer _16_17 : register(b1)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float _17_m2 : packoffset(c2);
    float _17_m3 : packoffset(c2.y);
    float _17_m4 : packoffset(c2.z);
    float _17_m5 : packoffset(c2.w);
    float _17_m6 : packoffset(c3);
    float _17_m7 : packoffset(c3.y);
    float _17_m8 : packoffset(c3.z);
    float _17_m9 : packoffset(c3.w);
    float _17_m10 : packoffset(c4);
    float _17_m11 : packoffset(c4.y);
    float _17_m12 : packoffset(c4.z);
    float _17_m13 : packoffset(c4.w);
    float _17_m14 : packoffset(c5);
    float _17_m15 : packoffset(c5.y);
    float _17_m16 : packoffset(c5.z);
    float _17_m17 : packoffset(c5.w);
    float _17_m18 : packoffset(c6);
    float _17_m19 : packoffset(c6.y);
    float _17_m20 : packoffset(c6.z);
    float _17_m21 : packoffset(c6.w);
    float _17_m22 : packoffset(c7);
    float4 _17_m23 : packoffset(c8);
};

[[vk::binding(2, 1)]]
cbuffer _18_19 : register(b2)
{
    float _19_m0 : packoffset(c0);
    float _19_m1 : packoffset(c0.y);
    float4 _19_m2 : packoffset(c1);
    float _19_m3 : packoffset(c2);
    float _19_m4 : packoffset(c2.y);
    float _19_m5 : packoffset(c2.z);
    float _19_m6 : packoffset(c2.w);
    float4 _19_m7 : packoffset(c3);
    float _19_m8 : packoffset(c4);
    float _19_m9 : packoffset(c4.y);
    float _19_m10 : packoffset(c4.z);
    float _19_m11 : packoffset(c4.w);
    float _19_m12 : packoffset(c5);
    float _19_m13 : packoffset(c5.y);
    float _19_m14 : packoffset(c5.z);
    float _19_m15 : packoffset(c5.w);
    float4 _19_m16 : packoffset(c6);
    float4 _19_m17 : packoffset(c7);
    float3 _19_m18 : packoffset(c8);
    column_major float4x4 _19_m19 : packoffset(c9);
    float4 _19_m20 : packoffset(c13);
    float _19_m21 : packoffset(c14);
    float _19_m22 : packoffset(c14.y);
    float _19_m23 : packoffset(c14.z);
    float _19_m24 : packoffset(c14.w);
    float _19_m25 : packoffset(c15);
    float4 _19_m26 : packoffset(c16);
    float _19_m27 : packoffset(c17);
    float _19_m28 : packoffset(c17.y);
    float _19_m29 : packoffset(c17.z);
    float _19_m30 : packoffset(c17.w);
    float4 _19_m31 : packoffset(c18);
    float _19_m32 : packoffset(c19);
    float _19_m33 : packoffset(c19.y);
    float _19_m34 : packoffset(c19.z);
    float _19_m35 : packoffset(c19.w);
    float _19_m36 : packoffset(c20);
    float _19_m37 : packoffset(c20.y);
    float _19_m38 : packoffset(c20.z);
    float _19_m39 : packoffset(c20.w);
    float _19_m40 : packoffset(c21);
    float _19_m41 : packoffset(c21.y);
    float _19_m42 : packoffset(c21.z);
    float _19_m43 : packoffset(c21.w);
    float _19_m44 : packoffset(c22);
    float4 _19_m45 : packoffset(c23);
    float _19_m46 : packoffset(c24);
    float _19_m47 : packoffset(c24.y);
    float _19_m48 : packoffset(c24.z);
    float _19_m49 : packoffset(c24.w);
    float _19_m50 : packoffset(c25);
    float _19_m51 : packoffset(c25.y);
    float _19_m52 : packoffset(c25.z);
    float _19_m53 : packoffset(c25.w);
    float _19_m54 : packoffset(c26);
    float4 _19_m55 : packoffset(c27);
    column_major float4x4 _19_m56 : packoffset(c28);
    float4 _19_m57 : packoffset(c32);
    float4 _19_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _20_21 : register(b0)
{
    column_major float4x4 _21_m0 : packoffset(c0);
    column_major float4x4 _21_m1 : packoffset(c4);
    column_major float4x4 _21_m2 : packoffset(c8);
    column_major float4x4 _21_m3 : packoffset(c12);
    column_major float4x4 _21_m4 : packoffset(c16);
    column_major float4x4 _21_m5 : packoffset(c20);
    column_major float4x4 _21_m6 : packoffset(c24);
    column_major float4x4 _21_m7 : packoffset(c28);
    column_major float4x4 _21_m8 : packoffset(c32);
    column_major float4x4 _21_m9 : packoffset(c36);
    column_major float4x4 _21_m10 : packoffset(c40);
    float4 _21_m11 : packoffset(c44);
    float4 _21_m12 : packoffset(c45);
    float4 _21_m13 : packoffset(c46);
    float4 _21_m14 : packoffset(c47);
    float4 _21_m15 : packoffset(c48);
};

[[vk::binding(5, 1)]] Texture2D<float4> _23 : register(t5);
[[vk::binding(3, 1)]] SamplerState _24 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _25 : register(t6);
[[vk::binding(4, 1)]] SamplerState _26 : register(s4);
[[vk::binding(3, 3)]] Texture2D<float4> _27 : register(t3);
[[vk::binding(2, 3)]] SamplerState _28 : register(s2);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;
static float4 _10 = (float4)0;
static float4 _11 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(4)]] float4 _6 : TEXCOORD4;
    [[vk::location(5)]] float4 _7 : TEXCOORD5;
    [[vk::location(6)]] float4 _8 : TEXCOORD6;
    [[vk::location(7)]] float4 _9 : TEXCOORD7;
    [[vk::location(8)]] float4 _10 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _11 : SV_Target0;
};

void frag_main()
{
    bool _95 = _17_m2 > 0.5f;
    float2 _173;
    if (_95)
    {
        float _102 = _13_m0.y * _17_m16;
        float2 _108 = _10.xy / max(_10.w, 9.9999997473787516355514526367188e-05f).xx;
        float2 _121 = float2(_108.x * (_21_m14.x / max(_21_m14.y, 1.0f)), _108.y) * _17_m15;
        float2 _124 = _121 + float2(_102, _102 * 0.829999983310699462890625f);
        float2 _129 = (_121 * 1.7000000476837158203125f) + float2(_102 * (-0.9700000286102294921875f), _102 * 1.309999942779541015625f);
        float2 _143 = float2(sin(_124.y) + (sin(_129.y) * 0.5f), cos(_124.x) + (cos(_129.x) * 0.5f)) * 0.66670000553131103515625f;
        float _160 = max(_19_m50 - 1.0f, 0.0f);
        _173 = clamp((float2(int2(sign(_143))) * pow(abs(_143), max(_17_m17, 1.0f).xx)) * _17_m14, (-_160).xx, _160.xx) * float2(1.0f / _19_m48, 1.0f / _19_m49);
    }
    else
    {
        _173 = 0.0f.xx;
    }
    float2 _174 = _4 + _173;
    float4 _178 = _27.Sample(_28, _174);
    float _179 = _178.x;
    bool _182 = _17_m18 > 0.5f;
    float _232;
    if (_182)
    {
        float2 _194 = float2(1.0f / _19_m48, 1.0f / _19_m49) * _17_m20;
        float _197 = _194.x;
        float _215 = _194.y;
        _232 = ((((_179 + _27.Sample(_28, _174 + float2(_197, 0.0f)).x) + _27.Sample(_28, _174 + float2(-_197, 0.0f)).x) + _27.Sample(_28, _174 + float2(0.0f, _215)).x) + _27.Sample(_28, _174 + float2(0.0f, -_215)).x) * 0.20000000298023223876953125f;
    }
    else
    {
        _232 = _179;
    }
    float _238 = (_5.z - _232) * _5.y;
    float _244 = (_19_m8 * _19_m39) * _5.y;
    float _248 = (_19_m4 * _19_m39) * _5.y;
    float3 _255 = _19_m2.xyz * _3.xyz;
    float4 _270 = _25.Sample(_26, _9.xy + (float2(_19_m0, _19_m1) * _21_m12.y));
    float4 _271 = float4(_255.x, _255.y, _255.z, _19_m2.w) * _270;
    float4 _283 = _23.Sample(_24, _9.zw + (float2(_19_m5, _19_m6) * _21_m12.y));
    float4 _284 = _19_m7 * _283;
    float4 _333;
    if (_182)
    {
        float _295 = (_17_m21 * _19_m39) * _5.y;
        float3 _306 = _271.xyz * _271.w;
        _333 = float4(_306.x, _306.y, _306.z, _271.w) * (1.0f - clamp(((_238 - (((_17_m19 * _19_m39) * _5.y) * 0.5f)) + (_295 * 0.5f)) / (1.0f + _295), 0.0f, 1.0f));
    }
    else
    {
        float _309 = _244 * 0.5f;
        float3 _324 = _271.xyz * _271.w;
        float3 _328 = _284.xyz * _284.w;
        _333 = lerp(float4(_324.x, _324.y, _324.z, _271.w), float4(_328.x, _328.y, _328.z, _284.w), (clamp(_238 + _309, 0.0f, 1.0f) * sqrt(min(1.0f, _244))).xxxx) * (1.0f - clamp(((_238 - _309) + (_248 * 0.5f)) / (1.0f + _248), 0.0f, 1.0f));
    }
    float4 _338 = _27.Sample(_28, _7.xy);
    float4 _351 = _333 + ((_8 * clamp((_338.x * _7.z) - _7.w, 0.0f, 1.0f)) * (1.0f - _333.w));
    float4 _365;
    if (_95)
    {
        _365 = _351 * clamp(lerp(1.0f, (_17_m13 >= 0.0f) ? (1.0f - _6.w) : _6.w, abs(_17_m13)), 0.0f, 1.0f);
    }
    else
    {
        _365 = _351;
    }
    float4 _368 = _365 * _3.w;
    _368.w = lerp(_368.w, 0.0f, _17_m22);
    _11 = _368;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _11 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._11 = _11;
    return stage_output;
}

#include "../shared.h"

// Patch 1.5 Vulkan UI permutation observed and classified with DevKit.
[[vk::binding(0, 3)]]
cbuffer _10_11 : register(b0)
{
    float4 _11_m0 : packoffset(c0);
    float4 _11_m1 : packoffset(c1);
    float4 _11_m2 : packoffset(c2);
    float4 _11_m3 : packoffset(c3);
    float4 _11_m4 : packoffset(c4);
    float4 _11_m5 : packoffset(c5);
    float4 _11_m6 : packoffset(c6);
    float4 _11_m7 : packoffset(c7);
    float4 _11_m8 : packoffset(c8);
};

[[vk::binding(1, 3)]]
cbuffer _14_15 : register(b1)
{
    float4 _15_m0 : packoffset(c0);
    float4 _15_m1 : packoffset(c1);
    float _15_m2 : packoffset(c2);
    float _15_m3 : packoffset(c2.y);
    float _15_m4 : packoffset(c2.z);
    float _15_m5 : packoffset(c2.w);
    float _15_m6 : packoffset(c3);
    float _15_m7 : packoffset(c3.y);
    float _15_m8 : packoffset(c3.z);
    float _15_m9 : packoffset(c3.w);
    float _15_m10 : packoffset(c4);
    float _15_m11 : packoffset(c4.y);
    float _15_m12 : packoffset(c4.z);
    float _15_m13 : packoffset(c4.w);
    float _15_m14 : packoffset(c5);
    float _15_m15 : packoffset(c5.y);
    float _15_m16 : packoffset(c5.z);
    float _15_m17 : packoffset(c5.w);
    float _15_m18 : packoffset(c6);
    float _15_m19 : packoffset(c6.y);
    float _15_m20 : packoffset(c6.z);
    float _15_m21 : packoffset(c6.w);
    float _15_m22 : packoffset(c7);
    float4 _15_m23 : packoffset(c8);
};

[[vk::binding(2, 1)]]
cbuffer _16_17 : register(b2)
{
    float _17_m0 : packoffset(c0);
    float _17_m1 : packoffset(c0.y);
    float4 _17_m2 : packoffset(c1);
    float _17_m3 : packoffset(c2);
    float _17_m4 : packoffset(c2.y);
    float _17_m5 : packoffset(c2.z);
    float _17_m6 : packoffset(c2.w);
    float4 _17_m7 : packoffset(c3);
    float _17_m8 : packoffset(c4);
    float _17_m9 : packoffset(c4.y);
    float _17_m10 : packoffset(c4.z);
    float _17_m11 : packoffset(c4.w);
    float _17_m12 : packoffset(c5);
    float _17_m13 : packoffset(c5.y);
    float _17_m14 : packoffset(c5.z);
    float _17_m15 : packoffset(c5.w);
    float4 _17_m16 : packoffset(c6);
    float4 _17_m17 : packoffset(c7);
    float3 _17_m18 : packoffset(c8);
    column_major float4x4 _17_m19 : packoffset(c9);
    float4 _17_m20 : packoffset(c13);
    float _17_m21 : packoffset(c14);
    float _17_m22 : packoffset(c14.y);
    float _17_m23 : packoffset(c14.z);
    float _17_m24 : packoffset(c14.w);
    float _17_m25 : packoffset(c15);
    float4 _17_m26 : packoffset(c16);
    float _17_m27 : packoffset(c17);
    float _17_m28 : packoffset(c17.y);
    float _17_m29 : packoffset(c17.z);
    float _17_m30 : packoffset(c17.w);
    float4 _17_m31 : packoffset(c18);
    float _17_m32 : packoffset(c19);
    float _17_m33 : packoffset(c19.y);
    float _17_m34 : packoffset(c19.z);
    float _17_m35 : packoffset(c19.w);
    float _17_m36 : packoffset(c20);
    float _17_m37 : packoffset(c20.y);
    float _17_m38 : packoffset(c20.z);
    float _17_m39 : packoffset(c20.w);
    float _17_m40 : packoffset(c21);
    float _17_m41 : packoffset(c21.y);
    float _17_m42 : packoffset(c21.z);
    float _17_m43 : packoffset(c21.w);
    float _17_m44 : packoffset(c22);
    float4 _17_m45 : packoffset(c23);
    float _17_m46 : packoffset(c24);
    float _17_m47 : packoffset(c24.y);
    float _17_m48 : packoffset(c24.z);
    float _17_m49 : packoffset(c24.w);
    float _17_m50 : packoffset(c25);
    float _17_m51 : packoffset(c25.y);
    float _17_m52 : packoffset(c25.z);
    float _17_m53 : packoffset(c25.w);
    float _17_m54 : packoffset(c26);
    float4 _17_m55 : packoffset(c27);
    column_major float4x4 _17_m56 : packoffset(c28);
    float4 _17_m57 : packoffset(c32);
    float4 _17_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _18_19 : register(b0)
{
    column_major float4x4 _19_m0 : packoffset(c0);
    column_major float4x4 _19_m1 : packoffset(c4);
    column_major float4x4 _19_m2 : packoffset(c8);
    column_major float4x4 _19_m3 : packoffset(c12);
    column_major float4x4 _19_m4 : packoffset(c16);
    column_major float4x4 _19_m5 : packoffset(c20);
    column_major float4x4 _19_m6 : packoffset(c24);
    column_major float4x4 _19_m7 : packoffset(c28);
    column_major float4x4 _19_m8 : packoffset(c32);
    column_major float4x4 _19_m9 : packoffset(c36);
    column_major float4x4 _19_m10 : packoffset(c40);
    float4 _19_m11 : packoffset(c44);
    float4 _19_m12 : packoffset(c45);
    float4 _19_m13 : packoffset(c46);
    float4 _19_m14 : packoffset(c47);
    float4 _19_m15 : packoffset(c48);
};

[[vk::binding(5, 1)]] Texture2D<float4> _21 : register(t5);
[[vk::binding(3, 1)]] SamplerState _22 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _23 : register(t6);
[[vk::binding(4, 1)]] SamplerState _24 : register(s4);
[[vk::binding(3, 3)]] Texture2D<float4> _25 : register(t3);
[[vk::binding(2, 3)]] SamplerState _26 : register(s2);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(4)]] float4 _6 : TEXCOORD4;
    [[vk::location(5)]] float4 _7 : TEXCOORD5;
    [[vk::location(6)]] float4 _8 : TEXCOORD6;
    // RenoDX code start: screen position for latency-bar classification.
    float4 position : SV_Position;
    // RenoDX code end
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : SV_Target0;
};

void frag_main()
{
    bool _91 = _15_m2 > 0.5f;
    float2 _169;
    if (_91)
    {
        float _98 = _11_m0.y * _15_m16;
        float2 _104 = _8.xy / max(_8.w, 9.9999997473787516355514526367188e-05f).xx;
        float2 _117 = float2(_104.x * (_19_m14.x / max(_19_m14.y, 1.0f)), _104.y) * _15_m15;
        float2 _120 = _117 + float2(_98, _98 * 0.829999983310699462890625f);
        float2 _125 = (_117 * 1.7000000476837158203125f) + float2(_98 * (-0.9700000286102294921875f), _98 * 1.309999942779541015625f);
        float2 _139 = float2(sin(_120.y) + (sin(_125.y) * 0.5f), cos(_120.x) + (cos(_125.x) * 0.5f)) * 0.66670000553131103515625f;
        float _156 = max(_17_m50 - 1.0f, 0.0f);
        _169 = clamp((float2(int2(sign(_139))) * pow(abs(_139), max(_15_m17, 1.0f).xx)) * _15_m14, (-_156).xx, _156.xx) * float2(1.0f / _17_m48, 1.0f / _17_m49);
    }
    else
    {
        _169 = 0.0f.xx;
    }
    float2 _170 = _4 + _169;
    float4 _174 = _25.Sample(_26, _170);
    float _175 = _174.x;
    bool _178 = _15_m18 > 0.5f;
    float _228;
    if (_178)
    {
        float2 _190 = float2(1.0f / _17_m48, 1.0f / _17_m49) * _15_m20;
        float _193 = _190.x;
        float _211 = _190.y;
        _228 = ((((_175 + _25.Sample(_26, _170 + float2(_193, 0.0f)).x) + _25.Sample(_26, _170 + float2(-_193, 0.0f)).x) + _25.Sample(_26, _170 + float2(0.0f, _211)).x) + _25.Sample(_26, _170 + float2(0.0f, -_211)).x) * 0.20000000298023223876953125f;
    }
    else
    {
        _228 = _175;
    }
    if ((_228 - _5.x) < 0.0f)
    {
        discard;
    }
    float _240 = (_5.z - _228) * _5.y;
    float _246 = (_17_m8 * _17_m39) * _5.y;
    float _250 = (_17_m4 * _17_m39) * _5.y;
    float3 _257 = _17_m2.xyz * _3.xyz;
    float4 _272 = _23.Sample(_24, _7.xy + (float2(_17_m0, _17_m1) * _19_m12.y));
    float4 _273 = float4(_257.x, _257.y, _257.z, _17_m2.w) * _272;
    float4 _285 = _21.Sample(_22, _7.zw + (float2(_17_m5, _17_m6) * _19_m12.y));
    float4 _286 = _17_m7 * _285;
    float4 _335;
    if (_178)
    {
        float _297 = (_15_m21 * _17_m39) * _5.y;
        float3 _308 = _273.xyz * _273.w;
        _335 = float4(_308.x, _308.y, _308.z, _273.w) * (1.0f - clamp(((_240 - (((_15_m19 * _17_m39) * _5.y) * 0.5f)) + (_297 * 0.5f)) / (1.0f + _297), 0.0f, 1.0f));
    }
    else
    {
        float _311 = _246 * 0.5f;
        float3 _326 = _273.xyz * _273.w;
        float3 _330 = _286.xyz * _286.w;
        _335 = lerp(float4(_326.x, _326.y, _326.z, _273.w), float4(_330.x, _330.y, _330.z, _286.w), (clamp(_240 + _311, 0.0f, 1.0f) * sqrt(min(1.0f, _246))).xxxx) * (1.0f - clamp(((_240 - _311) + (_250 * 0.5f)) / (1.0f + _250), 0.0f, 1.0f));
    }
    float4 _349;
    if (_91)
    {
        _349 = _335 * clamp(lerp(1.0f, (_15_m13 >= 0.0f) ? (1.0f - _6.w) : _6.w, abs(_15_m13)), 0.0f, 1.0f);
    }
    else
    {
        _349 = _335;
    }
    float4 _352 = _349 * _3.w;
    _352.w = lerp(_352.w, 0.0f, _15_m22);
    _9 = _352;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    frag_main();

    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _9 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._9 = _9;
    // RenoDX debug branch: shader category coloring.
    stage_output._9 = ApplyShaderDebugColor(stage_output._9);
    return stage_output;
}

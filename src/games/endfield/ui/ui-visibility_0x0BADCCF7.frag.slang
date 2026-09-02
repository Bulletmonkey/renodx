#include "../shared.h"

// Patch 1.5 Vulkan UI permutation observed and classified with DevKit.
struct _22
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 3)]]
cbuffer _11_12 : register(b0)
{
    float4 _12_m0 : packoffset(c0);
    float4 _12_m1 : packoffset(c1);
    float4 _12_m2 : packoffset(c2);
    float4 _12_m3 : packoffset(c3);
    float4 _12_m4 : packoffset(c4);
    float4 _12_m5 : packoffset(c5);
    float4 _12_m6 : packoffset(c6);
    float4 _12_m7 : packoffset(c7);
    float4 _12_m8 : packoffset(c8);
};

[[vk::binding(1, 3)]]
cbuffer _15_16 : register(b1)
{
    float4 _16_m0 : packoffset(c0);
    float4 _16_m1 : packoffset(c1);
    float _16_m2 : packoffset(c2);
    float _16_m3 : packoffset(c2.y);
    float _16_m4 : packoffset(c2.z);
    float _16_m5 : packoffset(c2.w);
    float _16_m6 : packoffset(c3);
    float _16_m7 : packoffset(c3.y);
    float _16_m8 : packoffset(c3.z);
    float _16_m9 : packoffset(c3.w);
    float _16_m10 : packoffset(c4);
    float _16_m11 : packoffset(c4.y);
    float _16_m12 : packoffset(c4.z);
    float _16_m13 : packoffset(c4.w);
    float _16_m14 : packoffset(c5);
    float _16_m15 : packoffset(c5.y);
    float _16_m16 : packoffset(c5.z);
    float _16_m17 : packoffset(c5.w);
    float _16_m18 : packoffset(c6);
    float _16_m19 : packoffset(c6.y);
    float _16_m20 : packoffset(c6.z);
    float _16_m21 : packoffset(c6.w);
    float _16_m22 : packoffset(c7);
    float4 _16_m23 : packoffset(c8);
};

[[vk::binding(2, 1)]]
cbuffer _17_18 : register(b2)
{
    float _18_m0 : packoffset(c0);
    float _18_m1 : packoffset(c0.y);
    float4 _18_m2 : packoffset(c1);
    float _18_m3 : packoffset(c2);
    float _18_m4 : packoffset(c2.y);
    float _18_m5 : packoffset(c2.z);
    float _18_m6 : packoffset(c2.w);
    float4 _18_m7 : packoffset(c3);
    float _18_m8 : packoffset(c4);
    float _18_m9 : packoffset(c4.y);
    float _18_m10 : packoffset(c4.z);
    float _18_m11 : packoffset(c4.w);
    float _18_m12 : packoffset(c5);
    float _18_m13 : packoffset(c5.y);
    float _18_m14 : packoffset(c5.z);
    float _18_m15 : packoffset(c5.w);
    float4 _18_m16 : packoffset(c6);
    float4 _18_m17 : packoffset(c7);
    float3 _18_m18 : packoffset(c8);
    column_major float4x4 _18_m19 : packoffset(c9);
    float4 _18_m20 : packoffset(c13);
    float _18_m21 : packoffset(c14);
    float _18_m22 : packoffset(c14.y);
    float _18_m23 : packoffset(c14.z);
    float _18_m24 : packoffset(c14.w);
    float _18_m25 : packoffset(c15);
    float4 _18_m26 : packoffset(c16);
    float _18_m27 : packoffset(c17);
    float _18_m28 : packoffset(c17.y);
    float _18_m29 : packoffset(c17.z);
    float _18_m30 : packoffset(c17.w);
    float4 _18_m31 : packoffset(c18);
    float _18_m32 : packoffset(c19);
    float _18_m33 : packoffset(c19.y);
    float _18_m34 : packoffset(c19.z);
    float _18_m35 : packoffset(c19.w);
    float _18_m36 : packoffset(c20);
    float _18_m37 : packoffset(c20.y);
    float _18_m38 : packoffset(c20.z);
    float _18_m39 : packoffset(c20.w);
    float _18_m40 : packoffset(c21);
    float _18_m41 : packoffset(c21.y);
    float _18_m42 : packoffset(c21.z);
    float _18_m43 : packoffset(c21.w);
    float _18_m44 : packoffset(c22);
    float4 _18_m45 : packoffset(c23);
    float _18_m46 : packoffset(c24);
    float _18_m47 : packoffset(c24.y);
    float _18_m48 : packoffset(c24.z);
    float _18_m49 : packoffset(c24.w);
    float _18_m50 : packoffset(c25);
    float _18_m51 : packoffset(c25.y);
    float _18_m52 : packoffset(c25.z);
    float _18_m53 : packoffset(c25.w);
    float _18_m54 : packoffset(c26);
    float4 _18_m55 : packoffset(c27);
    column_major float4x4 _18_m56 : packoffset(c28);
    float4 _18_m57 : packoffset(c32);
    float4 _18_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _19_20 : register(b0)
{
    column_major float4x4 _20_m0 : packoffset(c0);
    column_major float4x4 _20_m1 : packoffset(c4);
    column_major float4x4 _20_m2 : packoffset(c8);
    column_major float4x4 _20_m3 : packoffset(c12);
    column_major float4x4 _20_m4 : packoffset(c16);
    column_major float4x4 _20_m5 : packoffset(c20);
    column_major float4x4 _20_m6 : packoffset(c24);
    column_major float4x4 _20_m7 : packoffset(c28);
    column_major float4x4 _20_m8 : packoffset(c32);
    column_major float4x4 _20_m9 : packoffset(c36);
    column_major float4x4 _20_m10 : packoffset(c40);
    float4 _20_m11 : packoffset(c44);
    float4 _20_m12 : packoffset(c45);
    float4 _20_m13 : packoffset(c46);
    float4 _20_m14 : packoffset(c47);
    float4 _20_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _21_23 : register(b0)
{
    _22 _23_m0[1] : packoffset(c0);
};

[[vk::binding(5, 1)]] Texture2D<float4> _25 : register(t5);
[[vk::binding(3, 1)]] SamplerState _26 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _27 : register(t6);
[[vk::binding(4, 1)]] SamplerState _28 : register(s4);
[[vk::binding(3, 3)]] Texture2D<float4> _29 : register(t3);
[[vk::binding(2, 3)]] SamplerState _30 : register(s2);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;
static float4 _10 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float4 _8 : TEXCOORD5;
    [[vk::location(6)]] float4 _9 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _10 : SV_Target0;
};

void frag_main()
{
    bool _105 = _16_m2 > 0.5f;
    float2 _183;
    if (_105)
    {
        float _112 = _12_m0.y * _16_m16;
        float2 _118 = _9.xy / max(_9.w, 9.9999997473787516355514526367188e-05f).xx;
        float2 _131 = float2(_118.x * (_20_m14.x / max(_20_m14.y, 1.0f)), _118.y) * _16_m15;
        float2 _134 = _131 + float2(_112, _112 * 0.829999983310699462890625f);
        float2 _139 = (_131 * 1.7000000476837158203125f) + float2(_112 * (-0.9700000286102294921875f), _112 * 1.309999942779541015625f);
        float2 _153 = float2(sin(_134.y) + (sin(_139.y) * 0.5f), cos(_134.x) + (cos(_139.x) * 0.5f)) * 0.66670000553131103515625f;
        float _170 = max(_18_m50 - 1.0f, 0.0f);
        _183 = clamp((float2(int2(sign(_153))) * pow(abs(_153), max(_16_m17, 1.0f).xx)) * _16_m14, (-_170).xx, _170.xx) * float2(1.0f / _18_m48, 1.0f / _18_m49);
    }
    else
    {
        _183 = 0.0f.xx;
    }
    float2 _184 = _4 + _183;
    float4 _188 = _29.Sample(_30, _184);
    float _189 = _188.x;
    bool _192 = _16_m18 > 0.5f;
    float _242;
    if (_192)
    {
        float2 _204 = float2(1.0f / _18_m48, 1.0f / _18_m49) * _16_m20;
        float _207 = _204.x;
        float _225 = _204.y;
        _242 = ((((_189 + _29.Sample(_30, _184 + float2(_207, 0.0f)).x) + _29.Sample(_30, _184 + float2(-_207, 0.0f)).x) + _29.Sample(_30, _184 + float2(0.0f, _225)).x) + _29.Sample(_30, _184 + float2(0.0f, -_225)).x) * 0.20000000298023223876953125f;
    }
    else
    {
        _242 = _189;
    }
    if ((_242 - _5.x) < 0.0f)
    {
        discard;
    }
    float _254 = (_5.z - _242) * _5.y;
    float _260 = (_18_m8 * _18_m39) * _5.y;
    float _264 = (_18_m4 * _18_m39) * _5.y;
    float3 _271 = _18_m2.xyz * _3.xyz;
    float4 _286 = _27.Sample(_28, _8.xy + (float2(_18_m0, _18_m1) * _20_m12.y));
    float4 _287 = float4(_271.x, _271.y, _271.z, _18_m2.w) * _286;
    float4 _299 = _25.Sample(_26, _8.zw + (float2(_18_m5, _18_m6) * _20_m12.y));
    float4 _300 = _18_m7 * _299;
    float4 _349;
    if (_192)
    {
        float _311 = (_16_m21 * _18_m39) * _5.y;
        float3 _322 = _287.xyz * _287.w;
        _349 = float4(_322.x, _322.y, _322.z, _287.w) * (1.0f - clamp(((_254 - (((_16_m19 * _18_m39) * _5.y) * 0.5f)) + (_311 * 0.5f)) / (1.0f + _311), 0.0f, 1.0f));
    }
    else
    {
        float _325 = _260 * 0.5f;
        float3 _340 = _287.xyz * _287.w;
        float3 _344 = _300.xyz * _300.w;
        _349 = lerp(float4(_340.x, _340.y, _340.z, _287.w), float4(_344.x, _344.y, _344.z, _300.w), (clamp(_254 + _325, 0.0f, 1.0f) * sqrt(min(1.0f, _260))).xxxx) * (1.0f - clamp(((_254 - _325) + (_264 * 0.5f)) / (1.0f + _264), 0.0f, 1.0f));
    }
    float2 _360 = clamp(((_23_m0[0]._m3.zw - _23_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    float4 _365 = clamp(_23_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _370 = ((_6.xy + _365.xy) + _365.zw) * 0.5f;
    float _371 = _370.x;
    float _376 = _370.y;
    float4 _396 = (_349 * (_360.x * _360.y)) * (((smoothstep(0.0f, _23_m0[0]._m4.x, _371 - _365.x) * smoothstep(0.0f, _23_m0[0]._m4.z, _365.z - _371)) * smoothstep(0.0f, _23_m0[0]._m4.y, _376 - _365.y)) * smoothstep(0.0f, _23_m0[0]._m4.w, _365.w - _376));
    float4 _410;
    if (_105)
    {
        _410 = _396 * clamp(lerp(1.0f, (_16_m13 >= 0.0f) ? (1.0f - _7.w) : _7.w, abs(_16_m13)), 0.0f, 1.0f);
    }
    else
    {
        _410 = _396;
    }
    float4 _413 = _410 * _3.w;
    _413.w = lerp(_413.w, 0.0f, _16_m22);
    _10 = _413;
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
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _10 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._10 = _10;
    return stage_output;
}

#include "../shared.h"

// Patch 1.5 Vulkan UI permutation observed and classified with DevKit.
struct _24
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 3)]]
cbuffer _13_14 : register(b0)
{
    float4 _14_m0 : packoffset(c0);
    float4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c2);
    float4 _14_m3 : packoffset(c3);
    float4 _14_m4 : packoffset(c4);
    float4 _14_m5 : packoffset(c5);
    float4 _14_m6 : packoffset(c6);
    float4 _14_m7 : packoffset(c7);
    float4 _14_m8 : packoffset(c8);
};

[[vk::binding(1, 3)]]
cbuffer _17_18 : register(b1)
{
    float4 _18_m0 : packoffset(c0);
    float4 _18_m1 : packoffset(c1);
    float _18_m2 : packoffset(c2);
    float _18_m3 : packoffset(c2.y);
    float _18_m4 : packoffset(c2.z);
    float _18_m5 : packoffset(c2.w);
    float _18_m6 : packoffset(c3);
    float _18_m7 : packoffset(c3.y);
    float _18_m8 : packoffset(c3.z);
    float _18_m9 : packoffset(c3.w);
    float _18_m10 : packoffset(c4);
    float _18_m11 : packoffset(c4.y);
    float _18_m12 : packoffset(c4.z);
    float _18_m13 : packoffset(c4.w);
    float _18_m14 : packoffset(c5);
    float _18_m15 : packoffset(c5.y);
    float _18_m16 : packoffset(c5.z);
    float _18_m17 : packoffset(c5.w);
    float _18_m18 : packoffset(c6);
    float _18_m19 : packoffset(c6.y);
    float _18_m20 : packoffset(c6.z);
    float _18_m21 : packoffset(c6.w);
    float _18_m22 : packoffset(c7);
    float4 _18_m23 : packoffset(c8);
};

[[vk::binding(2, 1)]]
cbuffer _19_20 : register(b2)
{
    float _20_m0 : packoffset(c0);
    float _20_m1 : packoffset(c0.y);
    float4 _20_m2 : packoffset(c1);
    float _20_m3 : packoffset(c2);
    float _20_m4 : packoffset(c2.y);
    float _20_m5 : packoffset(c2.z);
    float _20_m6 : packoffset(c2.w);
    float4 _20_m7 : packoffset(c3);
    float _20_m8 : packoffset(c4);
    float _20_m9 : packoffset(c4.y);
    float _20_m10 : packoffset(c4.z);
    float _20_m11 : packoffset(c4.w);
    float _20_m12 : packoffset(c5);
    float _20_m13 : packoffset(c5.y);
    float _20_m14 : packoffset(c5.z);
    float _20_m15 : packoffset(c5.w);
    float4 _20_m16 : packoffset(c6);
    float4 _20_m17 : packoffset(c7);
    float3 _20_m18 : packoffset(c8);
    column_major float4x4 _20_m19 : packoffset(c9);
    float4 _20_m20 : packoffset(c13);
    float _20_m21 : packoffset(c14);
    float _20_m22 : packoffset(c14.y);
    float _20_m23 : packoffset(c14.z);
    float _20_m24 : packoffset(c14.w);
    float _20_m25 : packoffset(c15);
    float4 _20_m26 : packoffset(c16);
    float _20_m27 : packoffset(c17);
    float _20_m28 : packoffset(c17.y);
    float _20_m29 : packoffset(c17.z);
    float _20_m30 : packoffset(c17.w);
    float4 _20_m31 : packoffset(c18);
    float _20_m32 : packoffset(c19);
    float _20_m33 : packoffset(c19.y);
    float _20_m34 : packoffset(c19.z);
    float _20_m35 : packoffset(c19.w);
    float _20_m36 : packoffset(c20);
    float _20_m37 : packoffset(c20.y);
    float _20_m38 : packoffset(c20.z);
    float _20_m39 : packoffset(c20.w);
    float _20_m40 : packoffset(c21);
    float _20_m41 : packoffset(c21.y);
    float _20_m42 : packoffset(c21.z);
    float _20_m43 : packoffset(c21.w);
    float _20_m44 : packoffset(c22);
    float4 _20_m45 : packoffset(c23);
    float _20_m46 : packoffset(c24);
    float _20_m47 : packoffset(c24.y);
    float _20_m48 : packoffset(c24.z);
    float _20_m49 : packoffset(c24.w);
    float _20_m50 : packoffset(c25);
    float _20_m51 : packoffset(c25.y);
    float _20_m52 : packoffset(c25.z);
    float _20_m53 : packoffset(c25.w);
    float _20_m54 : packoffset(c26);
    float4 _20_m55 : packoffset(c27);
    column_major float4x4 _20_m56 : packoffset(c28);
    float4 _20_m57 : packoffset(c32);
    float4 _20_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _21_22 : register(b0)
{
    column_major float4x4 _22_m0 : packoffset(c0);
    column_major float4x4 _22_m1 : packoffset(c4);
    column_major float4x4 _22_m2 : packoffset(c8);
    column_major float4x4 _22_m3 : packoffset(c12);
    column_major float4x4 _22_m4 : packoffset(c16);
    column_major float4x4 _22_m5 : packoffset(c20);
    column_major float4x4 _22_m6 : packoffset(c24);
    column_major float4x4 _22_m7 : packoffset(c28);
    column_major float4x4 _22_m8 : packoffset(c32);
    column_major float4x4 _22_m9 : packoffset(c36);
    column_major float4x4 _22_m10 : packoffset(c40);
    float4 _22_m11 : packoffset(c44);
    float4 _22_m12 : packoffset(c45);
    float4 _22_m13 : packoffset(c46);
    float4 _22_m14 : packoffset(c47);
    float4 _22_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _23_25 : register(b0)
{
    _24 _25_m0[1] : packoffset(c0);
};

[[vk::binding(5, 1)]] Texture2D<float4> _27 : register(t5);
[[vk::binding(3, 1)]] SamplerState _28 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _29 : register(t6);
[[vk::binding(4, 1)]] SamplerState _30 : register(s4);
[[vk::binding(3, 3)]] Texture2D<float4> _31 : register(t3);
[[vk::binding(2, 3)]] SamplerState _32 : register(s2);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;
static float4 _10 = (float4)0;
static float4 _11 = (float4)0;
static float4 _12 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float4 _8 : TEXCOORD5;
    [[vk::location(6)]] float4 _9 : TEXCOORD6;
    [[vk::location(7)]] float4 _10 : TEXCOORD7;
    [[vk::location(8)]] float4 _11 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _12 : SV_Target0;
};

void frag_main()
{
    bool _109 = _18_m2 > 0.5f;
    float2 _187;
    if (_109)
    {
        float _116 = _14_m0.y * _18_m16;
        float2 _122 = _11.xy / max(_11.w, 9.9999997473787516355514526367188e-05f).xx;
        float2 _135 = float2(_122.x * (_22_m14.x / max(_22_m14.y, 1.0f)), _122.y) * _18_m15;
        float2 _138 = _135 + float2(_116, _116 * 0.829999983310699462890625f);
        float2 _143 = (_135 * 1.7000000476837158203125f) + float2(_116 * (-0.9700000286102294921875f), _116 * 1.309999942779541015625f);
        float2 _157 = float2(sin(_138.y) + (sin(_143.y) * 0.5f), cos(_138.x) + (cos(_143.x) * 0.5f)) * 0.66670000553131103515625f;
        float _174 = max(_20_m50 - 1.0f, 0.0f);
        _187 = clamp((float2(int2(sign(_157))) * pow(abs(_157), max(_18_m17, 1.0f).xx)) * _18_m14, (-_174).xx, _174.xx) * float2(1.0f / _20_m48, 1.0f / _20_m49);
    }
    else
    {
        _187 = 0.0f.xx;
    }
    float2 _188 = _4 + _187;
    float4 _192 = _31.Sample(_32, _188);
    float _193 = _192.x;
    bool _196 = _18_m18 > 0.5f;
    float _246;
    if (_196)
    {
        float2 _208 = float2(1.0f / _20_m48, 1.0f / _20_m49) * _18_m20;
        float _211 = _208.x;
        float _229 = _208.y;
        _246 = ((((_193 + _31.Sample(_32, _188 + float2(_211, 0.0f)).x) + _31.Sample(_32, _188 + float2(-_211, 0.0f)).x) + _31.Sample(_32, _188 + float2(0.0f, _229)).x) + _31.Sample(_32, _188 + float2(0.0f, -_229)).x) * 0.20000000298023223876953125f;
    }
    else
    {
        _246 = _193;
    }
    float _252 = (_5.z - _246) * _5.y;
    float _258 = (_20_m8 * _20_m39) * _5.y;
    float _262 = (_20_m4 * _20_m39) * _5.y;
    float3 _269 = _20_m2.xyz * _3.xyz;
    float4 _284 = _29.Sample(_30, _10.xy + (float2(_20_m0, _20_m1) * _22_m12.y));
    float4 _285 = float4(_269.x, _269.y, _269.z, _20_m2.w) * _284;
    float4 _297 = _27.Sample(_28, _10.zw + (float2(_20_m5, _20_m6) * _22_m12.y));
    float4 _298 = _20_m7 * _297;
    float4 _347;
    if (_196)
    {
        float _309 = (_18_m21 * _20_m39) * _5.y;
        float3 _320 = _285.xyz * _285.w;
        _347 = float4(_320.x, _320.y, _320.z, _285.w) * (1.0f - clamp(((_252 - (((_18_m19 * _20_m39) * _5.y) * 0.5f)) + (_309 * 0.5f)) / (1.0f + _309), 0.0f, 1.0f));
    }
    else
    {
        float _323 = _258 * 0.5f;
        float3 _338 = _285.xyz * _285.w;
        float3 _342 = _298.xyz * _298.w;
        _347 = lerp(float4(_338.x, _338.y, _338.z, _285.w), float4(_342.x, _342.y, _342.z, _298.w), (clamp(_252 + _323, 0.0f, 1.0f) * sqrt(min(1.0f, _258))).xxxx) * (1.0f - clamp(((_252 - _323) + (_262 * 0.5f)) / (1.0f + _262), 0.0f, 1.0f));
    }
    float4 _352 = _31.Sample(_32, _8.xy);
    float2 _376 = clamp(((_25_m0[0]._m3.zw - _25_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    float4 _381 = clamp(_25_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _386 = ((_6.xy + _381.xy) + _381.zw) * 0.5f;
    float _387 = _386.x;
    float _392 = _386.y;
    float4 _412 = ((_347 + ((_9 * clamp((_352.x * _8.z) - _8.w, 0.0f, 1.0f)) * (1.0f - _347.w))) * (_376.x * _376.y)) * (((smoothstep(0.0f, _25_m0[0]._m4.x, _387 - _381.x) * smoothstep(0.0f, _25_m0[0]._m4.z, _381.z - _387)) * smoothstep(0.0f, _25_m0[0]._m4.y, _392 - _381.y)) * smoothstep(0.0f, _25_m0[0]._m4.w, _381.w - _392));
    float4 _426;
    if (_109)
    {
        _426 = _412 * clamp(lerp(1.0f, (_18_m13 >= 0.0f) ? (1.0f - _7.w) : _7.w, abs(_18_m13)), 0.0f, 1.0f);
    }
    else
    {
        _426 = _412;
    }
    float4 _429 = _426 * _3.w;
    _429.w = lerp(_429.w, 0.0f, _18_m22);
    _12 = _429;
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
    _11 = stage_input._11;
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _12 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._12 = _12;
    return stage_output;
}

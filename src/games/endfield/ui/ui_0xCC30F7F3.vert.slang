#include "../shared.h"

// Patch 1.5 Vulkan UID/ping vertex permutation observed with DevKit.
struct _31
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

static float _115 = (float)0;
static float _118 = (float)0;

[[vk::binding(0, 3)]]
cbuffer _16_17 : register(b0)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float4 _17_m2 : packoffset(c2);
    float4 _17_m3 : packoffset(c3);
    float4 _17_m4 : packoffset(c4);
    float4 _17_m5 : packoffset(c5);
    float4 _17_m6 : packoffset(c6);
    float4 _17_m7 : packoffset(c7);
    float4 _17_m8 : packoffset(c8);
};

[[vk::binding(2, 0)]]
cbuffer _18_19 : register(b2)
{
    float4 _19_m0 : packoffset(c0);
    float4 _19_m1 : packoffset(c1);
    float4 _19_m2 : packoffset(c2);
    float4 _19_m3 : packoffset(c3);
    float4 _19_m4 : packoffset(c4);
    column_major float4x4 _19_m5 : packoffset(c5);
    column_major float4x4 _19_m6 : packoffset(c9);
    column_major float4x4 _19_m7 : packoffset(c13);
    column_major float4x4 _19_m8 : packoffset(c17);
    int _19_m9 : packoffset(c21);
    float4 _19_m10 : packoffset(c22);
};

[[vk::binding(1, 3)]]
cbuffer _22_23 : register(b1)
{
    float4 _23_m0 : packoffset(c0);
    float4 _23_m1 : packoffset(c1);
    float _23_m2 : packoffset(c2);
    float _23_m3 : packoffset(c2.y);
    float _23_m4 : packoffset(c2.z);
    float _23_m5 : packoffset(c2.w);
    float _23_m6 : packoffset(c3);
    float _23_m7 : packoffset(c3.y);
    float _23_m8 : packoffset(c3.z);
    float _23_m9 : packoffset(c3.w);
    float _23_m10 : packoffset(c4);
    float _23_m11 : packoffset(c4.y);
    float _23_m12 : packoffset(c4.z);
    float _23_m13 : packoffset(c4.w);
    float _23_m14 : packoffset(c5);
    float _23_m15 : packoffset(c5.y);
    float _23_m16 : packoffset(c5.z);
    float _23_m17 : packoffset(c5.w);
    float _23_m18 : packoffset(c6);
    float _23_m19 : packoffset(c6.y);
    float _23_m20 : packoffset(c6.z);
    float _23_m21 : packoffset(c6.w);
    float _23_m22 : packoffset(c7);
    float4 _23_m23 : packoffset(c8);
};

[[vk::binding(2, 1)]]
cbuffer _24_25 : register(b2)
{
    float _25_m0 : packoffset(c0);
    float _25_m1 : packoffset(c0.y);
    float4 _25_m2 : packoffset(c1);
    float _25_m3 : packoffset(c2);
    float _25_m4 : packoffset(c2.y);
    float _25_m5 : packoffset(c2.z);
    float _25_m6 : packoffset(c2.w);
    float4 _25_m7 : packoffset(c3);
    float _25_m8 : packoffset(c4);
    float _25_m9 : packoffset(c4.y);
    float _25_m10 : packoffset(c4.z);
    float _25_m11 : packoffset(c4.w);
    float _25_m12 : packoffset(c5);
    float _25_m13 : packoffset(c5.y);
    float _25_m14 : packoffset(c5.z);
    float _25_m15 : packoffset(c5.w);
    float4 _25_m16 : packoffset(c6);
    float4 _25_m17 : packoffset(c7);
    float3 _25_m18 : packoffset(c8);
    column_major float4x4 _25_m19 : packoffset(c9);
    float4 _25_m20 : packoffset(c13);
    float _25_m21 : packoffset(c14);
    float _25_m22 : packoffset(c14.y);
    float _25_m23 : packoffset(c14.z);
    float _25_m24 : packoffset(c14.w);
    float _25_m25 : packoffset(c15);
    float4 _25_m26 : packoffset(c16);
    float _25_m27 : packoffset(c17);
    float _25_m28 : packoffset(c17.y);
    float _25_m29 : packoffset(c17.z);
    float _25_m30 : packoffset(c17.w);
    float4 _25_m31 : packoffset(c18);
    float _25_m32 : packoffset(c19);
    float _25_m33 : packoffset(c19.y);
    float _25_m34 : packoffset(c19.z);
    float _25_m35 : packoffset(c19.w);
    float _25_m36 : packoffset(c20);
    float _25_m37 : packoffset(c20.y);
    float _25_m38 : packoffset(c20.z);
    float _25_m39 : packoffset(c20.w);
    float _25_m40 : packoffset(c21);
    float _25_m41 : packoffset(c21.y);
    float _25_m42 : packoffset(c21.z);
    float _25_m43 : packoffset(c21.w);
    float _25_m44 : packoffset(c22);
    float4 _25_m45 : packoffset(c23);
    float _25_m46 : packoffset(c24);
    float _25_m47 : packoffset(c24.y);
    float _25_m48 : packoffset(c24.z);
    float _25_m49 : packoffset(c24.w);
    float _25_m50 : packoffset(c25);
    float _25_m51 : packoffset(c25.y);
    float _25_m52 : packoffset(c25.z);
    float _25_m53 : packoffset(c25.w);
    float _25_m54 : packoffset(c26);
    float4 _25_m55 : packoffset(c27);
    column_major float4x4 _25_m56 : packoffset(c28);
    float4 _25_m57 : packoffset(c32);
    float4 _25_m58 : packoffset(c33);
};

[[vk::binding(1, 0)]]
cbuffer _26_27 : register(b1)
{
    float _27_m0 : packoffset(c0);
    float _27_m1 : packoffset(c0.y);
    float _27_m2 : packoffset(c0.z);
    float _27_m3 : packoffset(c0.w);
};

[[vk::binding(0, 0)]]
cbuffer _28_29 : register(b0)
{
    column_major float4x4 _29_m0 : packoffset(c0);
    column_major float4x4 _29_m1 : packoffset(c4);
    column_major float4x4 _29_m2 : packoffset(c8);
    column_major float4x4 _29_m3 : packoffset(c12);
    column_major float4x4 _29_m4 : packoffset(c16);
    column_major float4x4 _29_m5 : packoffset(c20);
    column_major float4x4 _29_m6 : packoffset(c24);
    column_major float4x4 _29_m7 : packoffset(c28);
    column_major float4x4 _29_m8 : packoffset(c32);
    column_major float4x4 _29_m9 : packoffset(c36);
    column_major float4x4 _29_m10 : packoffset(c40);
    float4 _29_m11 : packoffset(c44);
    float4 _29_m12 : packoffset(c45);
    float4 _29_m13 : packoffset(c46);
    float4 _29_m14 : packoffset(c47);
    float4 _29_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _30_32 : register(b0)
{
    _31 _32_m0[1] : packoffset(c0);
};

[[vk::binding(1, 1)]] Texture2D<float4> _34 : register(t1);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0);

static float4 gl_Position = (float4)0;
static float4 _3 = (float4)0;
static float3 _4 = (float3)0;
static float4 _5 = (float4)0;
static float2 _6 = (float2)0;
static float2 _7 = (float2)0;
static float4 _9 = (float4)0;
static float2 _10 = (float2)0;
static float4 _11 = (float4)0;
static float4 _13 = (float4)0;
static float4 _14 = (float4)0;
static float4 _15 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float2 _6 : TEXCOORD3;
    [[vk::location(4)]] float2 _7 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : TEXCOORD0;
    [[vk::location(1)]] float2 _10 : TEXCOORD1;
    [[vk::location(2)]] float4 _11 : TEXCOORD2;
    [[vk::location(4)]] float4 _13 : TEXCOORD4;
    [[vk::location(5)]] float4 _14 : TEXCOORD5;
    [[vk::location(6)]] float4 _15 : TEXCOORD6;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    float4 _120 = _3;
    float4 _131 = _120;
    _131.x = _120.x + _25_m42;
    _131.y = _120.y + _25_m43;
    float4 _213;
    float _214;
    if (_23_m2 > 0.5f)
    {
        float _152 = clamp((_3.x - _23_m11) / max(9.9999997473787516355514526367188e-05f, _23_m12 - _23_m11), 0.0f, 1.0f);
        float _162 = lerp(_23_m9, _23_m10, _152);
        float2 _165 = _120.xy * (_162 * 0.00999999977648258209228515625f);
        float4 _189 = _34.SampleLevel(_35, float4(((_165 + (_6 * _23_m23.xy)) + _23_m23.zw) + (float2(_23_m3, _23_m4) * _17_m0.y), 0.0f, 0.0f).xy, 0.0f);
        float _190 = _189.x;
        float2 _198 = _165 + (_6 * _162);
        float _199 = _198.x;
        float _200 = _198.y;
        float2 _211 = _131.xy + (float2(sin(_199 + _200) + (_190 * _23_m5), cos((_199 * 1.37000000476837158203125f) - _200) + (_190 * _23_m6)) * lerp(_23_m7, _23_m8, _152));
        _213 = float4(_211.x, _211.y, _131.z, _131.w);
        _214 = _152;
    }
    else
    {
        _213 = _131;
        _214 = 0.0f;
    }
    bool _233 = _27_m0 > 0.0f;
    float4 _309;
    float4 _310;
    float4 _311;
    float4 _312;
    if (_233)
    {
        _309 = float4(_29_m8[3].x, _29_m8[3].y, _29_m8[3].z, _29_m8[3].w);
        _310 = float4(_29_m8[2].x, _29_m8[2].y, _29_m8[2].z, _29_m8[2].w);
        _311 = float4(_29_m8[1].x, _29_m8[1].y, _29_m8[1].z, _29_m8[1].w);
        _312 = float4(_29_m8[0].x, _29_m8[0].y, _29_m8[0].z, _29_m8[0].w);
    }
    else
    {
        _309 = float4(_19_m8[3].x, _19_m8[3].y, _19_m8[3].z, _19_m8[3].w);
        _310 = float4(_19_m8[2].x, _19_m8[2].y, _19_m8[2].z, _19_m8[2].w);
        _311 = float4(_19_m8[1].x, _19_m8[1].y, _19_m8[1].z, _19_m8[1].w);
        _312 = float4(_19_m8[0].x, _19_m8[0].y, _19_m8[0].z, _19_m8[0].w);
    }
    float4 _318 = mul(float4x4(_312, _311, _310, _309), float4(float3(mul(_32_m0[0]._m0, float4(_213.xyz, 1.0f)).xyz) - (_29_m11.xyz * _27_m0), 1.0f));
    float4 _335;
    if (_233)
    {
        float4 _327 = _318;
        _327.x = _318.x * (1.0f - (_27_m1 * 2.0f));
        _327.y = _318.y * (1.0f - (_27_m2 * 2.0f));
        _335 = _327;
    }
    else
    {
        _335 = _318;
    }
    float4 _366;
    float4 _367;
    if (_233)
    {
        _366 = float4(_29_m2[1].x, _29_m2[1].y, _115, _115);
        _367 = float4(_29_m2[0].x, _29_m2[0].y, _115, _115);
    }
    else
    {
        _366 = float4(_19_m5[1].x, _19_m5[1].y, _115, _115);
        _367 = float4(_19_m5[0].x, _19_m5[0].y, _115, _115);
    }
    float2 _377 = _335.w.xx / (float2(_25_m51, _25_m52) * abs(mul(float2x2(_367.xy, _366.xy), _29_m14.xy)));
    float _388 = rsqrt(dot(_377, _377)) * ((abs(_7.y) * _25_m50) * (_25_m54 + 1.0f));
    float4 _398;
    if (_233)
    {
        _398 = float4(_118, _118, _118, _29_m2[3].w);
    }
    else
    {
        _398 = float4(_118, _118, _118, _19_m5[3].w);
    }
    float _432;
    if (_398.w == 0.0f)
    {
        _432 = lerp(abs(_388) * (1.0f - _25_m53), _388, abs(dot(normalize(mul(float3x3(_32_m0[0]._m0[0].xyz, _32_m0[0]._m0[1].xyz, _32_m0[0]._m0[2].xyz), float3(1.0f / dot(_32_m0[0]._m0[0].xyz, _32_m0[0]._m0[0].xyz), 1.0f / dot(_32_m0[0]._m0[1].xyz, _32_m0[0]._m0[1].xyz), 1.0f / dot(_32_m0[0]._m0[2].xyz, _32_m0[0]._m0[2].xyz)) * _4)), normalize(_29_m11.xyz - mul(_32_m0[0]._m0, _213).xyz))));
    }
    else
    {
        _432 = _388;
    }
    float _445 = (((lerp(_25_m37, _25_m38, step(_7.y, 0.0f)) * 0.25f) + _25_m3) * _25_m39) * 0.5f;
    float _447 = 0.5f / _432;
    float _471;
    if (_23_m18 > 0.5f)
    {
        _471 = (1.0f - (_23_m19 * _25_m39)) - (_23_m21 * _25_m39);
    }
    else
    {
        _471 = (1.0f - (_25_m8 * _25_m39)) - (_25_m4 * _25_m39);
    }
    float4 _477 = clamp(_32_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float _481 = floor(_7.x * 0.000244140625f);
    float2 _485 = float2(_481, _7.x - (4096.0f * _481)) * 0.001953125f;
    float4 _498 = _335 * 0.5f;
    float2 _507 = float2(_498.x, _498.y * _29_m13.x) + _498.w.xx;
    float4 _563 = _335;
    _563.y = -_335.y;
    gl_Position = _563;
    _9 = _5;
    _10 = _6;
    _11 = float4(((_471 * 0.5f) - _447) - _445, _432, (0.5f - _445) + _447, _445);
    _13 = float4(mul(float3x3(_25_m19[0].xyz, _25_m19[1].xyz, _25_m19[2].xyz), float3(_29_m11.xyz) - mul(_32_m0[0]._m0, _213).xyz), _214);
    _14 = float4((_485 * _25_m57.xy) + _25_m57.zw, (_485 * _25_m58.xy) + _25_m58.zw);
    _15 = float4(_507.x, _507.y, _335.z, _335.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    vert_main();

    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output._9 = _9;
    stage_output._10 = _10;
    stage_output._11 = _11;
    stage_output._13 = _13;
    stage_output._14 = _14;
    stage_output._15 = _15;
    return stage_output;
}

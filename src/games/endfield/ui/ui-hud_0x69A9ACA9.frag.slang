#include "./hud_visibility.hlsli"

struct _12
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

static float4 _94;
static float _95;

[[vk::binding(0, 2)]] cbuffer _11_13 : register(b0, space2)
{
    _12 _13_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]] cbuffer _14_15 : register(b0, space1)
{
    float4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c1);
    float4 _15_m2 : packoffset(c5);
    float4 _15_m3 : packoffset(c6);
    float _15_m4 : packoffset(c7);
    float4 _15_m5 : packoffset(c8);
    float4 _15_m6 : packoffset(c9);
    float4 _15_m7 : packoffset(c10);
    float _15_m8 : packoffset(c11);
    float _15_m9 : packoffset(c11.y);
    float _15_m10 : packoffset(c11.z);
    float _15_m11 : packoffset(c11.w);
    float _15_m12 : packoffset(c12);
    float4 _15_m13 : packoffset(c13);
    float _15_m14 : packoffset(c14);
    float _15_m15 : packoffset(c14.y);
    float _15_m16 : packoffset(c14.z);
    float4 _15_m17 : packoffset(c15);
    float _15_m18 : packoffset(c16);
    float _15_m19 : packoffset(c16.y);
    float _15_m20 : packoffset(c16.z);
    float _15_m21 : packoffset(c16.w);
    float4 _15_m22 : packoffset(c17);
    float _15_m23 : packoffset(c18);
    float _15_m24 : packoffset(c18.y);
    float _15_m25 : packoffset(c18.z);
    float _15_m26 : packoffset(c18.w);
    int _15_m27 : packoffset(c19);
    int _15_m28 : packoffset(c19.y);
    float _15_m29 : packoffset(c19.z);
};

[[vk::binding(1, 3)]] Texture2D<float4> _17 : register(t1, space3);
[[vk::binding(0, 3)]] SamplerState _18 : register(s0, space3);
[[vk::binding(5, 1)]] Texture2D<float4> _19 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _20 : register(s2, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _21 : register(t6, space1);
[[vk::binding(3, 1)]] SamplerState _22 : register(s3, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _23 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _24 : register(s1, space1);

static float4 _3;
static float2 _4;
static float4 _5;
static float4 _6;
static float4 _7;
static float4 _8;

struct SPIRV_Cross_Input
{
    float4 position : SV_Position;
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _8 : SV_Target0;
};

void frag_main()
{
    float4 _97 = _3;
    _97.w = round(_97.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _110 = _17.Sample(_18, _4);
    _110.w = (_15_m12 != 0.0f) ? 1.0f : _110.w;
    float4 _120 = _97 * (_110 + _13_m0[0]._m2);
    float4 _134;
    if (_15_m23 > 0.5f)
    {
        float4 _129 = _23.Sample(_24, _4);
        float4 _132;
        _132.w = 1.0f - _120.x;
        _134 = float4(_129.x, _129.y, _129.z, _132.w);
    }
    else
    {
        _134 = _120;
    }
    float4 _165;
    if (_15_m16 > 0.5f)
    {
        float3 _163 = clamp((_134.xyz * (lerp(1.0f.xxx, _21.Sample(_22, ((_5.xy * _15_m13.xy) + _15_m13.zw) * 200.0f.xx).xyz, _15_m14.xxx) * _15_m15)).xyz, 0.0f.xxx, 1.0f.xxx);
        _165 = float4(_163.x, _163.y, _163.z, _134.w);
    }
    else
    {
        _165 = _134;
    }
    float4 _216;
    if (_15_m18 > 0.5f)
    {
        float2 _186 = abs((float2(fmod(_4.x * _15_m19, 1.0f), fmod(_4.y * _15_m19, 1.0f)) * 2.0f) - 1.0f.xx) - _15_m20.xx;
        float2 _187 = clamp(_186, 0.0f.xx, 1.0f.xx);
        float _190 = _187.x * _187.y;
        float _192 = _15_m20 * _15_m20;
        float2 _196 = ceil(_186);
        float _207 = ((1.0f - (_196.x * _196.y)) + ((ceil(_190) * clamp(_192 - _190, 0.0f, 1.0f)) / max(_192, 0.001000000047497451305389404296875f))) * _15_m17.w;
        float3 _214 = (_165.xyz * (1.0f - _207)) + (_15_m17.xyz * _207);
        _216 = float4(_214.x, _214.y, _214.z, _165.w);
    }
    else
    {
        _216 = _165;
    }
    float4 _258;
    if (_15_m24 > 0.5f)
    {
        float2 _226 = _7.xy / _7.w.xx;
        float4 _247 = _19.Sample(_20, float2((_226.x * float(_15_m27)) * 0.25f, (_226.y * float(_15_m28)) * 0.25f));
        float _248 = _247.x;
        float4 _257 = _216;
        _257.w = _216.w * lerp(sin(((_248 * _15_m26) * _15_m25) + (_248 * 3.1415927410125732421875f)), 1.0f, _15_m25);
        _258 = _257;
    }
    else
    {
        _258 = _216;
    }
    float2 _269 = clamp(((_13_m0[0]._m3.zw - _13_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    float4 _275 = clamp(_13_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _280 = ((_6.xy + _275.xy) + _275.zw) * 0.5f;
    float _281 = _280.x;
    float _286 = _280.y;
    float _306 = (_258.w * (_269.x * _269.y)) * (((smoothstep(0.0f, _13_m0[0]._m4.x, _281 - _275.x) * smoothstep(0.0f, _13_m0[0]._m4.z, _275.z - _281)) * smoothstep(0.0f, _13_m0[0]._m4.y, _286 - _275.y)) * smoothstep(0.0f, _13_m0[0]._m4.w, _275.w - _286));
    float4 _307 = _258;
    _307.w = _306;
    float4 _348;
    if (_15_m29 > 0.5f)
    {
        float4 _321 = lerp(float4(_258.zy, -1.0f, 0.666666686534881591796875f), float4(_258.yz, 0.0f, -0.3333333432674407958984375f), step(_258.z, _258.y).xxxx);
        float _323 = _321.x;
        float _330 = lerp(float4(_323, _95, _95, _258.x), float4(_258.x, _95, _95, _323), step(_323, _258.x).xxxx).x * 2.0f;
        float3 _339 = _307.xyz * _306;
        float4 _340 = float4(_339.x, _339.y, _339.z, _307.w);
        _340.w = 1.0f - lerp((float(int(sign(_330 - 1.0f))) < 0.0f) ? _330 : max(2.0f - _330, 0.00999999977648258209228515625f), 1.0f, 1.0f - _306);
        _348 = _340;
    }
    else
    {
        float3 _346 = _307.xyz * _306;
        _348 = float4(_346.x, _346.y, _346.z, _307.w);
    }
    float4 _353 = _348;
    _353.w = lerp(_348.w, 0.0f, _15_m8);
    _8 = _353;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    // RenoDX: fade only the classified gameplay HUD region; preserve premultiplied blending.
    _8 *= EndfieldHudOpacity(EndfieldHudPosition(stage_input.position.xy));
    stage_output._8 = _8;
    return stage_output;
}

#include "./hud_visibility.hlsli"

struct _11
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

static float4 _91;
static float _92;

[[vk::binding(0, 2)]] cbuffer _10_12 : register(b0, space2)
{
    _11 _12_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]] cbuffer _13_14 : register(b0, space1)
{
    float4 _14_m0 : packoffset(c0);
    column_major float4x4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c5);
    float4 _14_m3 : packoffset(c6);
    float _14_m4 : packoffset(c7);
    float4 _14_m5 : packoffset(c8);
    float4 _14_m6 : packoffset(c9);
    float4 _14_m7 : packoffset(c10);
    float _14_m8 : packoffset(c11);
    float _14_m9 : packoffset(c11.y);
    float _14_m10 : packoffset(c11.z);
    float _14_m11 : packoffset(c11.w);
    float _14_m12 : packoffset(c12);
    float4 _14_m13 : packoffset(c13);
    float _14_m14 : packoffset(c14);
    float _14_m15 : packoffset(c14.y);
    float _14_m16 : packoffset(c14.z);
    float4 _14_m17 : packoffset(c15);
    float _14_m18 : packoffset(c16);
    float _14_m19 : packoffset(c16.y);
    float _14_m20 : packoffset(c16.z);
    float _14_m21 : packoffset(c16.w);
    float4 _14_m22 : packoffset(c17);
    float _14_m23 : packoffset(c18);
    float _14_m24 : packoffset(c18.y);
    float _14_m25 : packoffset(c18.z);
    float _14_m26 : packoffset(c18.w);
    int _14_m27 : packoffset(c19);
    int _14_m28 : packoffset(c19.y);
    float _14_m29 : packoffset(c19.z);
};

[[vk::binding(1, 3)]] Texture2D<float4> _16 : register(t1, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(7, 1)]] Texture2D<float4> _18 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _19 : register(s3, space1);
[[vk::binding(8, 1)]] Texture2D<float4> _20 : register(t8, space1);
[[vk::binding(4, 1)]] SamplerState _21 : register(s4, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _22 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _23 : register(s2, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _24 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _25 : register(s1, space1);

static float4 _3;
static float4 _4;
static float4 _5;
static float4 _6;
static float4 _7;

struct SPIRV_Cross_Input
{
    float4 position : SV_Position;
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float4 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(4)]] float4 _6 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _7 : SV_Target0;
};

void frag_main()
{
    float4 _94 = _3;
    _94.w = round(_94.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _107 = _16.Sample(_17, _4.xy);
    _107.w = (_14_m12 != 0.0f) ? 1.0f : _107.w;
    float4 _117 = _94 * (_107 + _12_m0[0]._m2);
    float4 _131;
    if (_14_m23 > 0.5f)
    {
        float4 _126 = _22.Sample(_23, _4.xy);
        float4 _129;
        _129.w = 1.0f - _117.x;
        _131 = float4(_126.x, _126.y, _126.z, _129.w);
    }
    else
    {
        _131 = _117;
    }
    float4 _162;
    if (_14_m16 > 0.5f)
    {
        float3 _160 = clamp((_131.xyz * (lerp(1.0f.xxx, _20.Sample(_21, ((_5.xy * _14_m13.xy) + _14_m13.zw) * 200.0f.xx).xyz, _14_m14.xxx) * _14_m15)).xyz, 0.0f.xxx, 1.0f.xxx);
        _162 = float4(_160.x, _160.y, _160.z, _131.w);
    }
    else
    {
        _162 = _131;
    }
    bool2 _232 = (_14_m4 != 0.0f).xx;
    float2 _233 = float2((_4.z < 0.0f) ? _4.z : (((_4.z >= 0.0f) && (_4.z <= _14_m2.x)) ? ((_4.z * _14_m3.x) / _14_m2.x) : ((_4.z <= _14_m2.y) ? ((((_4.z - _14_m2.x) * (_14_m3.y - _14_m3.x)) / (_14_m2.y - _14_m2.x)) + _14_m3.x) : ((_4.z <= 1.0f) ? ((((_4.z - _14_m2.y) * (1.0f - _14_m3.y)) / (1.0f - _14_m2.y)) + _14_m3.y) : _4.z))), (_4.w < 0.0f) ? _4.w : (((_4.w >= 0.0f) && (_4.w <= _14_m2.z)) ? ((_4.w * _14_m3.z) / _14_m2.z) : ((_4.w <= _14_m2.w) ? ((((_4.w - _14_m2.z) * (_14_m3.w - _14_m3.z)) / (_14_m2.w - _14_m2.z)) + _14_m3.z) : ((_4.w <= 1.0f) ? ((((_4.w - _14_m2.w) * (1.0f - _14_m3.w)) / (1.0f - _14_m2.w)) + _14_m3.w) : _4.w))));
    float2 _235 = float2(_232.x ? _233.x : _4.zw.x, _232.y ? _233.y : _4.zw.y);
    float _247 = _235.x;
    float _254 = _235.y;
    float4 _262 = _162;
    _262.w = _162.w * ((_24.Sample(_25, (_235.xy * _14_m0.xy) + _14_m0.zw).w * (step(_247, 1.0f) * step(-_247, 0.0f))) * (step(_254, 1.0f) * step(-_254, 0.0f)));
    float4 _313;
    if (_14_m18 > 0.5f)
    {
        float2 _283 = abs((float2(fmod(_4.x * _14_m19, 1.0f), fmod(_4.y * _14_m19, 1.0f)) * 2.0f) - 1.0f.xx) - _14_m20.xx;
        float2 _284 = clamp(_283, 0.0f.xx, 1.0f.xx);
        float _287 = _284.x * _284.y;
        float _289 = _14_m20 * _14_m20;
        float2 _293 = ceil(_283);
        float _304 = ((1.0f - (_293.x * _293.y)) + ((ceil(_287) * clamp(_289 - _287, 0.0f, 1.0f)) / max(_289, 0.001000000047497451305389404296875f))) * _14_m17.w;
        float3 _311 = (_262.xyz * (1.0f - _304)) + (_14_m17.xyz * _304);
        _313 = float4(_311.x, _311.y, _311.z, _262.w);
    }
    else
    {
        _313 = _262;
    }
    float4 _355;
    if (_14_m24 > 0.5f)
    {
        float2 _323 = _6.xy / _6.w.xx;
        float4 _344 = _18.Sample(_19, float2((_323.x * float(_14_m27)) * 0.25f, (_323.y * float(_14_m28)) * 0.25f));
        float _345 = _344.x;
        float4 _354 = _313;
        _354.w = _313.w * lerp(sin(((_345 * _14_m26) * _14_m25) + (_345 * 3.1415927410125732421875f)), 1.0f, _14_m25);
        _355 = _354;
    }
    else
    {
        _355 = _313;
    }
    float4 _398;
    if (_14_m29 > 0.5f)
    {
        float4 _369 = lerp(float4(_355.zy, -1.0f, 0.666666686534881591796875f), float4(_355.yz, 0.0f, -0.3333333432674407958984375f), step(_355.z, _355.y).xxxx);
        float _371 = _369.x;
        float _378 = lerp(float4(_371, _92, _92, _355.x), float4(_355.x, _92, _92, _371), step(_371, _355.x).xxxx).x * 2.0f;
        float3 _388 = _355.xyz * _355.w;
        float4 _389 = float4(_388.x, _388.y, _388.z, _355.w);
        _389.w = 1.0f - lerp((float(int(sign(_378 - 1.0f))) < 0.0f) ? _378 : max(2.0f - _378, 0.00999999977648258209228515625f), 1.0f, 1.0f - _355.w);
        _398 = _389;
    }
    else
    {
        float3 _396 = _355.xyz * _355.w;
        _398 = float4(_396.x, _396.y, _396.z, _355.w);
    }
    float4 _403 = _398;
    _403.w = lerp(_398.w, 0.0f, _14_m8);
    _7 = _403;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    SPIRV_Cross_Output stage_output;
    // RenoDX code start: classify the complete native mask instead of cutting
    // its map image and soft border at a second, approximate circular mask.
    float2 mask_dx = ddx(_4.zw);
    float2 mask_dy = ddy(_4.zw);
    float determinant = mask_dx.x * mask_dy.y - mask_dx.y * mask_dy.x;
    float2 hud_position = stage_input.position.xy;
    if (abs(determinant) > 1e-10f) {
        float2 delta = 0.5f - _4.zw;
        hud_position += float2(delta.x * mask_dy.y - delta.y * mask_dy.x,
                               mask_dx.x * delta.y - mask_dx.y * delta.x) / determinant;
    }
    _7 *= EndfieldHudOpacity(EndfieldHudPosition(hud_position));
    // RenoDX code end
    stage_output._7 = _7;
    return stage_output;
}

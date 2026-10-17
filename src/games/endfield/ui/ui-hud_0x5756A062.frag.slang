#include "./hud_visibility.hlsli"

static float4 _90;
static float _91;

[[vk::binding(0, 0)]] cbuffer _10_11 : register(b0, space0)
{
    column_major float4x4 _11_m0 : packoffset(c0);
    column_major float4x4 _11_m1 : packoffset(c4);
    column_major float4x4 _11_m2 : packoffset(c8);
    column_major float4x4 _11_m3 : packoffset(c12);
    column_major float4x4 _11_m4 : packoffset(c16);
    column_major float4x4 _11_m5 : packoffset(c20);
    column_major float4x4 _11_m6 : packoffset(c24);
    column_major float4x4 _11_m7 : packoffset(c28);
    column_major float4x4 _11_m8 : packoffset(c32);
    column_major float4x4 _11_m9 : packoffset(c36);
    column_major float4x4 _11_m10 : packoffset(c40);
    float4 _11_m11 : packoffset(c44);
    float4 _11_m12 : packoffset(c45);
    float4 _11_m13 : packoffset(c46);
    float4 _11_m14 : packoffset(c47);
    float4 _11_m15 : packoffset(c48);
};

[[vk::binding(0, 1)]] cbuffer _12_13 : register(b0, space1)
{
    float4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c5);
    float4 _13_m3 : packoffset(c6);
    float _13_m4 : packoffset(c7);
    float4 _13_m5 : packoffset(c8);
    float4 _13_m6 : packoffset(c9);
    float4 _13_m7 : packoffset(c10);
    float _13_m8 : packoffset(c11);
    float _13_m9 : packoffset(c11.y);
    float _13_m10 : packoffset(c11.z);
    float _13_m11 : packoffset(c11.w);
    float _13_m12 : packoffset(c12);
    float4 _13_m13 : packoffset(c13);
    float _13_m14 : packoffset(c14);
    float _13_m15 : packoffset(c14.y);
    float _13_m16 : packoffset(c14.z);
    float4 _13_m17 : packoffset(c15);
    float _13_m18 : packoffset(c16);
    float _13_m19 : packoffset(c16.y);
    float _13_m20 : packoffset(c16.z);
    float _13_m21 : packoffset(c16.w);
    float4 _13_m22 : packoffset(c17);
    float _13_m23 : packoffset(c18);
    float _13_m24 : packoffset(c18.y);
    float _13_m25 : packoffset(c18.z);
    float _13_m26 : packoffset(c18.w);
    int _13_m27 : packoffset(c19);
    int _13_m28 : packoffset(c19.y);
    float _13_m29 : packoffset(c19.z);
    float _13_m30 : packoffset(c19.w);
    float _13_m31 : packoffset(c20);
    float _13_m32 : packoffset(c20.y);
    float4 _13_m33 : packoffset(c21);
    float4 _13_m34 : packoffset(c22);
    float4 _13_m35 : packoffset(c23);
};

[[vk::binding(7, 1)]] Texture2D<float4> _15 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _16 : register(s3, space1);
[[vk::binding(8, 1)]] Texture2D<float4> _17 : register(t8, space1);
[[vk::binding(4, 1)]] SamplerState _18 : register(s4, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _19 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _20 : register(s2, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _21 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _22 : register(s1, space1);

static float4 _3;
static float2 _4;
static float4 _5;
static float4 _6;
static float4 _7;

struct SPIRV_Cross_Input
{
    float4 position : SV_Position;
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(4)]] float4 _6 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _7 : SV_Target0;
};

void frag_main()
{
    float4 _93 = _3;
    _93.w = round(_93.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _137 = _21.Sample(_22, ((mul((lerp(_4, _4, _13_m32.xx) + (_13_m33.xy * fmod(_11_m12.y, 1024.0f))) - 0.5f.xx, float2x2(float2(_13_m34.xy), float2(_13_m34.zw))) + 0.5f.xx) * _13_m35.xy) + _13_m35.zw);
    float4 _142 = _93 * lerp(_137, float4(1.0f, 1.0f, 1.0f, _137.x), _13_m31.xxxx);
    float4 _156;
    if (_13_m23 > 0.5f)
    {
        float4 _151 = _19.Sample(_20, _4);
        float4 _154;
        _154.w = 1.0f - _142.x;
        _156 = float4(_151.x, _151.y, _151.z, _154.w);
    }
    else
    {
        _156 = _142;
    }
    float4 _187;
    if (_13_m16 > 0.5f)
    {
        float3 _185 = clamp((_156.xyz * (lerp(1.0f.xxx, _17.Sample(_18, ((_5.xy * _13_m13.xy) + _13_m13.zw) * 200.0f.xx).xyz, _13_m14.xxx) * _13_m15)).xyz, 0.0f.xxx, 1.0f.xxx);
        _187 = float4(_185.x, _185.y, _185.z, _156.w);
    }
    else
    {
        _187 = _156;
    }
    float4 _238;
    if (_13_m18 > 0.5f)
    {
        float2 _208 = abs((float2(fmod(_4.x * _13_m19, 1.0f), fmod(_4.y * _13_m19, 1.0f)) * 2.0f) - 1.0f.xx) - _13_m20.xx;
        float2 _209 = clamp(_208, 0.0f.xx, 1.0f.xx);
        float _212 = _209.x * _209.y;
        float _214 = _13_m20 * _13_m20;
        float2 _218 = ceil(_208);
        float _229 = ((1.0f - (_218.x * _218.y)) + ((ceil(_212) * clamp(_214 - _212, 0.0f, 1.0f)) / max(_214, 0.001000000047497451305389404296875f))) * _13_m17.w;
        float3 _236 = (_187.xyz * (1.0f - _229)) + (_13_m17.xyz * _229);
        _238 = float4(_236.x, _236.y, _236.z, _187.w);
    }
    else
    {
        _238 = _187;
    }
    float4 _280;
    if (_13_m24 > 0.5f)
    {
        float2 _248 = _6.xy / _6.w.xx;
        float4 _269 = _15.Sample(_16, float2((_248.x * float(_13_m27)) * 0.25f, (_248.y * float(_13_m28)) * 0.25f));
        float _270 = _269.x;
        float4 _279 = _238;
        _279.w = _238.w * lerp(sin(((_270 * _13_m26) * _13_m25) + (_270 * 3.1415927410125732421875f)), 1.0f, _13_m25);
        _280 = _279;
    }
    else
    {
        _280 = _238;
    }
    float4 _323;
    if (_13_m29 > 0.5f)
    {
        float4 _294 = lerp(float4(_280.zy, -1.0f, 0.666666686534881591796875f), float4(_280.yz, 0.0f, -0.3333333432674407958984375f), step(_280.z, _280.y).xxxx);
        float _296 = _294.x;
        float _303 = lerp(float4(_296, _91, _91, _280.x), float4(_280.x, _91, _91, _296), step(_296, _280.x).xxxx).x * 2.0f;
        float3 _313 = _280.xyz * _280.w;
        float4 _314 = float4(_313.x, _313.y, _313.z, _280.w);
        _314.w = 1.0f - lerp((float(int(sign(_303 - 1.0f))) < 0.0f) ? _303 : max(2.0f - _303, 0.00999999977648258209228515625f), 1.0f, 1.0f - _280.w);
        _323 = _314;
    }
    else
    {
        float3 _321 = _280.xyz * _280.w;
        _323 = float4(_321.x, _321.y, _321.z, _280.w);
    }
    float4 _328 = _323;
    _328.w = lerp(_323.w, 0.0f, _13_m8);
    _7 = _328;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    SPIRV_Cross_Output stage_output;
    // RenoDX code start: recognize the small orange notification pulse before
    // hiding it. Use its projected sprite center so a badge crossing a hit-area
    // edge cannot notify two neighboring buttons.
    uint hud_flags = uint(shader_injection.hud_draw_enabled);
    if ((hud_flags & 1u) != 0u && (hud_flags & 12582912u) != 0u
        && shader_injection.hud_viewport_height > 0.f && shader_injection.ui_aspect_ratio > 0.f) {
        uint texture_width, texture_height;
        _21.GetDimensions(texture_width, texture_height);
        float2 dx = ddx(_4), dy = ddy(_4);
        float determinant = dx.x * dy.y - dx.y * dy.x;
        if (texture_width == 64u && texture_height == 64u && abs(determinant) > 1e-10f
            && _7.a > 0.02f && _7.r > _7.g * 1.3f && _7.g > _7.b * 1.5f) {
            float scale = EndfieldHudScale(shader_injection.hud_viewport_height, shader_injection.ui_aspect_ratio);
            float2 delta = 0.5f.xx - _4;
            float2 center = stage_input.position.xy
                + float2(dy.y * delta.x - dy.x * delta.y, dx.x * delta.y - dx.y * delta.x) / determinant;
            float2 extent = float2(length(float2(dy.y, -dx.y)), length(float2(-dy.x, dx.x))) / abs(determinant) * scale;
            center = EndfieldHudPosition(center) * scale;
            int button = EndfieldHudButton(center.x, center.y,
                shader_injection.hud_viewport_height / shader_injection.ui_aspect_ratio * scale,
                                 shader_injection.hud_viewport_height * scale);
            if (all(extent >= 5.f) && all(extent <= 100.f)
                && (hud_flags & uint(EndfieldHudNotificationFlag(button))) != 0u) {
                InterlockedExchange(hud_notification_history[button], uint(shader_injection.hud_notification_tick) & 0x1FFFFFu);
            }
        }
    }
    // RenoDX code end
    // RenoDX: fade only the classified gameplay HUD region; preserve premultiplied blending.
    _7 *= EndfieldHudOpacity(EndfieldHudPosition(stage_input.position.xy));
    stage_output._7 = _7;
    return stage_output;
}

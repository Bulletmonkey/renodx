#include "./hud_visibility.hlsli"

// Endfield 1.6 native UI material; paired with 0xB698614D for the latency bar.
struct _11
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

static float4 _87;
static float _88;

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
[[vk::binding(5, 1)]] Texture2D<float4> _18 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _19 : register(s2, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _20 : register(t6, space1);
[[vk::binding(3, 1)]] SamplerState _21 : register(s3, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _22 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _23 : register(s1, space1);

static float4 _3;
static float2 _4;
static float4 _5;
static float4 _6;
static float4 _7;

struct SPIRV_Cross_Input
{
    // RenoDX: use raster position only for the draw-scoped latency-bar mask.
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
    float4 _90 = _3;
    _90.w = round(_90.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _102 = _16.Sample(_17, _4);
    _102.w = (_14_m12 != 0.0f) ? 1.0f : _102.w;
    float4 _112 = _90 * (_102 + _12_m0[0]._m2);
    float4 _126;
    if (_14_m23 > 0.5f)
    {
        float4 _121 = _22.Sample(_23, _4);
        float4 _124;
        _124.w = 1.0f - _112.x;
        _126 = float4(_121.x, _121.y, _121.z, _124.w);
    }
    else
    {
        _126 = _112;
    }
    float4 _157;
    if (_14_m16 > 0.5f)
    {
        float3 _155 = clamp((_126.xyz * (lerp(1.0f.xxx, _20.Sample(_21, ((_5.xy * _14_m13.xy) + _14_m13.zw) * 200.0f.xx).xyz, _14_m14.xxx) * _14_m15)).xyz, 0.0f.xxx, 1.0f.xxx);
        _157 = float4(_155.x, _155.y, _155.z, _126.w);
    }
    else
    {
        _157 = _126;
    }
    float4 _208;
    if (_14_m18 > 0.5f)
    {
        float2 _178 = abs((float2(fmod(_4.x * _14_m19, 1.0f), fmod(_4.y * _14_m19, 1.0f)) * 2.0f) - 1.0f.xx) - _14_m20.xx;
        float2 _179 = clamp(_178, 0.0f.xx, 1.0f.xx);
        float _182 = _179.x * _179.y;
        float _184 = _14_m20 * _14_m20;
        float2 _188 = ceil(_178);
        float _199 = ((1.0f - (_188.x * _188.y)) + ((ceil(_182) * clamp(_184 - _182, 0.0f, 1.0f)) / max(_184, 0.001000000047497451305389404296875f))) * _14_m17.w;
        float3 _206 = (_157.xyz * (1.0f - _199)) + (_14_m17.xyz * _199);
        _208 = float4(_206.x, _206.y, _206.z, _157.w);
    }
    else
    {
        _208 = _157;
    }
    float4 _250;
    if (_14_m24 > 0.5f)
    {
        float2 _218 = _6.xy / _6.w.xx;
        float4 _239 = _18.Sample(_19, float2((_218.x * float(_14_m27)) * 0.25f, (_218.y * float(_14_m28)) * 0.25f));
        float _240 = _239.x;
        float4 _249 = _208;
        _249.w = _208.w * lerp(sin(((_240 * _14_m26) * _14_m25) + (_240 * 3.1415927410125732421875f)), 1.0f, _14_m25);
        _250 = _249;
    }
    else
    {
        _250 = _208;
    }
    float4 _293;
    if (_14_m29 > 0.5f)
    {
        float4 _264 = lerp(float4(_250.zy, -1.0f, 0.666666686534881591796875f), float4(_250.yz, 0.0f, -0.3333333432674407958984375f), step(_250.z, _250.y).xxxx);
        float _266 = _264.x;
        float _273 = lerp(float4(_266, _88, _88, _250.x), float4(_250.x, _88, _88, _266), step(_266, _250.x).xxxx).x * 2.0f;
        float3 _283 = _250.xyz * _250.w;
        float4 _284 = float4(_283.x, _283.y, _283.z, _250.w);
        _284.w = 1.0f - lerp((float(int(sign(_273 - 1.0f))) < 0.0f) ? _273 : max(2.0f - _273, 0.00999999977648258209228515625f), 1.0f, 1.0f - _250.w);
        _293 = _284;
    }
    else
    {
        float3 _291 = _250.xyz * _250.w;
        _293 = float4(_291.x, _291.y, _291.z, _250.w);
    }
    float4 _298 = _293;
    _298.w = lerp(_293.w, 0.0f, _14_m8);
    _7 = _298;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    // RenoDX code start: hide only the matched latency-bar footprint in this shared UI material.
    float2 viewport_size = float2(shader_injection.latency_bar_viewport_width,
                                 shader_injection.latency_bar_viewport_height);
    float2 uv_pixel_size = fwidth(_4);
    uint texture_width, texture_height;
    _16.GetDimensions(texture_width, texture_height);
    // Loading-screen artwork shares this material. Only the captured HUD
    // atlases, solid accents and quest strip may receive HUD-region masks.
    bool hud_texture = (texture_width == 2048u && texture_height == 1024u)
        || (texture_width == 4u && texture_height == 4u)
        || (texture_width == 728u && texture_height == 68u);
    // The captured bar samples the 4x4 solid texture. Dialogue gradients and
    // buttons use the shared 2048x1024 atlas, even when their draw counts match.
    if (LATENCY_BAR_DRAW_OPACITY < 0.5f && all(viewport_size > 0.0f)
        && texture_width == 4 && texture_height == 4) {
        float2 bar_position = stage_input.position.xy;
        if ((uint(shader_injection.hud_draw_enabled) & 32u) != 0u) bar_position.y = viewport_size.y - bar_position.y;
        float2 screen_uv = bar_position / viewport_size;
        bool is_hud_latency_bar = screen_uv.x >= 0.005f && screen_uv.x <= 0.035f
            && screen_uv.y >= 0.95f && screen_uv.y <= 0.995f;
        bool is_transition_latency_bar = bar_position.x >= 20.0f
            && bar_position.x <= 60.0f
            && bar_position.y >= 15.0f
            && bar_position.y <= 50.0f
            && uv_pixel_size.x >= 0.1f && uv_pixel_size.y >= 0.05f;
        if (is_hud_latency_bar || is_transition_latency_bar) {
            discard;
        }
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    // RenoDX: fade only the classified gameplay HUD region; preserve premultiplied blending.
    float opacity = hud_texture ? EndfieldHudOpacity(EndfieldHudPosition(stage_input.position.xy)) : 1.f;
    // RenoDX code start: identify the pre-marker minimap background by sampled
    // content. Atlas packing changes between launches; screen layout does not.
    if (texture_width == 2048 && texture_height == 1024
        && shader_injection.hud_viewport_height > 0.f) {
        float2 dx = ddx(_4), dy = ddy(_4);
        float determinant = dx.x * dy.y - dx.y * dy.x;
        if (abs(determinant) > 1e-10f) {
            float scale = EndfieldHudScale(shader_injection.hud_viewport_height, shader_injection.ui_aspect_ratio);
            float2 logical_position = EndfieldHudPosition(stage_input.position.xy) * scale;
            if (all(logical_position > float2(50.f, 50.f))
                && all(logical_position < float2(280.f, 290.f))) {
                uint signature = 0u;
                for (uint index = 0u; index < 16u; ++index) {
                    float2 anchor = EndfieldHudPosition(
                        float2(80.f + (index % 4u) * 56.f, 80.f + (index / 4u) * 56.f) / scale);
                    float2 offset = anchor - stage_input.position.xy;
                    float4 texel = _16.SampleLevel(_17, _4 + dx * offset.x + dy * offset.y, 0.f);
                    uint value = uint(round(saturate(dot(texel.rgb, float3(.333333f, .333333f, .333333f)) * texel.a) * 3.f));
                    signature |= value << (index * 2u);
                }
                if (signature == 0x143D3D00u) {
                    opacity = shader_injection.hud_minimap_opacity;
                }
            }
            // Atlas packing changes between launches. Match sampled glyph content instead.
            // Match whole sprites; large dialogue gradients cannot match these derivatives.
            if ((uint(shader_injection.hud_draw_enabled) & 30u) != 0u
                && shader_injection.ui_aspect_ratio > 0.f
                && abs(abs(dx.x) / scale - 0.00061035f) < 0.00003f
                && abs(abs(dy.y) / scale - 0.0012207f) < 0.00006f
                && abs(dx.y) < 1e-6f && abs(dy.x) < 1e-6f) {
                const uint signatures[8] = {0x0C03FFFFu, 0x31010100u, 0xFC3D0CE3u, 0x10380000u,
                                            0x030000EFu, 0x2C000000u, 0x010F3F03u, 0x28590000u};
                const float2 screen_anchors[8] = {
                    float2(75.5f, 85.5f), float2(75.5f, 40.5f),
                    float2(282.5f, 90.5f), float2(282.5f, 45.5f),
                    float2(171.5f, 90.5f), float2(171.5f, 45.5f),
                    float2(67.5f, 90.5f), float2(67.5f, 45.5f)
                };
                for (uint index = 0; index < 8; ++index) {
                    if ((uint(shader_injection.hud_draw_enabled) & (2u << (index / 2u))) == 0u) continue;
                    float2 expected = screen_anchors[index] * 0.75f;
                    if (index >= 2u) expected.x = shader_injection.hud_viewport_height / shader_injection.ui_aspect_ratio * scale - expected.x;
                    float2 logical_position = EndfieldHudPosition(stage_input.position.xy) * scale;
                    if (any(abs(logical_position - expected) > float2(40.f, 32.f))) continue;
                    uint signature = 0u;
                    for (uint sample_index = 0; sample_index < 16; ++sample_index) {
                        float2 sample_position = (expected + float2(int(sample_index % 4u) * 6 - 9,
                                                                 int(sample_index / 4u) * 6 - 9)) / scale;
                        sample_position = EndfieldHudPosition(sample_position);
                        float2 offset = sample_position - stage_input.position.xy;
                        float4 texel = _16.SampleLevel(_17, _4 + dx * offset.x + dy * offset.y, 0.f);
                        uint value = uint(round(saturate(dot(texel.rgb, float3(.333333f, .333333f, .333333f)) * texel.a) * 3.f));
                        signature |= value << (sample_index * 2u);
                    }
                    if (signature == signatures[index]) {
                        opacity = 0.f;
                        break;
                    }
                }
            }
        }
    }
    // Background artwork extends beyond the text/button hit areas. Apply its
    // own coverage without enlarging hover targets or revealing the whole fade
    // when one nearby button is hovered. The title strip is a separate texture.
    float scale = EndfieldHudScale(shader_injection.hud_viewport_height, shader_injection.ui_aspect_ratio);
    float2 background_position = EndfieldHudPosition(stage_input.position.xy) * scale;
    if ((uint(shader_injection.hud_draw_enabled) & 1u) != 0u
        && background_position.x < 930.f
        && background_position.y >= 180.f && background_position.y < 630.f
        && ((texture_width == 728u && texture_height == 68u)
            || (texture_width == 2048u && texture_height == 1024u
                && (length(ddx(_4) * float2(2048.f, 1024.f)) < 0.6f * scale
                    || length(ddy(_4) * float2(2048.f, 1024.f)) < 0.6f * scale)))) {
        opacity = shader_injection.hud_quest_opacity;
    }
    // The location announcement stretches a 40-texel-wide atlas strip across
    // the screen (2400 x 500 UI units in the geometry capture). It is not HUD
    // artwork: preserve the entire strip, including where quest masks overlap.
    // Use texels per logical pixel so atlas relocation and resolution do not
    // change this classification. Ordinary HUD sprites and quest nine-slices
    // have substantially denser horizontal sampling. The Explore button's
    // nine-slice center stretches a near-constant column even further, so a
    // lower bound is also required to keep that center in the HUD mask.
    float2 atlas_dx = ddx(_4) * float2(texture_width, texture_height);
    float2 atlas_dy = ddy(_4) * float2(texture_width, texture_height);
    float horizontal_screen_texels = length(atlas_dx) * shader_injection.hud_viewport_height
        / max(shader_injection.ui_aspect_ratio, 0.001f);
    if (texture_width == 2048u && texture_height == 1024u
        && horizontal_screen_texels > 28.f && horizontal_screen_texels < 56.f
        && length(atlas_dy) > 0.6f * scale
        && abs(atlas_dx.y) < 0.001f * scale
        && abs(atlas_dy.x) < 0.001f * scale) {
        opacity = 1.f;
    }
    _7 *= opacity;
    // RenoDX code end
    stage_output._7 = _7;
    return stage_output;
}

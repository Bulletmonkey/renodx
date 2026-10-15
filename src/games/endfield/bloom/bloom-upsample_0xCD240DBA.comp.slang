// Native Endfield 1.6 bloom upsample, from its matching Vulkan dump.
// Retains both native blend and additive accumulation modes.
[[vk::binding(0, 1)]] cbuffer _11_12 : register(b0, space1)
{
    float4 _12_m0 : packoffset(c0);
    float4 _12_m1 : packoffset(c1);
    float4 _12_m2 : packoffset(c2);
};

[[vk::binding(3, 0)]] SamplerState _5 : register(s3, space0);
[[vk::binding(1, 0)]] Texture2D<float4> _7 : register(t1, space0);
[[vk::binding(2, 0)]] Texture2D<float4> _8 : register(t2, space0);
[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> _10 : register(u0, space0);

static uint3 gl_GlobalInvocationID;
struct SPIRV_Cross_Input
{
    uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

void comp_main()
{
    float2 _58 = float2(gl_GlobalInvocationID.xy);
    float2 _68 = clamp(float2(uint2(_58)), 0.0f.xx, _12_m2.xy - 1.0f.xx);
    float3 _77 = _8.Load(int3(int3(int(_68.x), int(_68.y), 0).xy, 0)).xyz;
    float2 _78 = 1.0f.xx - _12_m2.zw;
    float2 _85 = (((_58 + 0.5f.xx) * _12_m2.zw) * _12_m1.xy) + 0.5f.xx;
    float2 _86 = floor(_85);
    float2 _87 = frac(_85);
    float2 _93 = 0.16666667163372039794921875f.xx + (_87 * ((-0.5f).xx + (_87 * (0.5f.xx - (_87 * 0.16666667163372039794921875f)))));
    float2 _94 = _87 * 0.5f;
    float2 _97 = (_87 * ((-1.0f).xx + _94)) * _87;
    float2 _98 = 0.666666686534881591796875f.xx + _97;
    float2 _103 = 0.16666667163372039794921875f.xx + (_87 * (0.5f.xx + (_87 * (0.5f.xx - _94))));
    float2 _106 = ((0.333333313465118408203125f.xx - _97) - _103) - _93;
    float2 _107 = _93 + _98;
    float2 _108 = _103 + _106;
    float2 _111 = (-1.0f).xx + (_98 * (1.0f.xx / _107));
    float2 _114 = 1.0f.xx + (_106 * (1.0f.xx / _108));
    float _124 = _107.x;
    float _134 = _108.x;
    float3 _159 = ((((_7.SampleLevel(_5, min(((_86 + _111) - 0.5f.xx) * _12_m1.zw, _78), 0.0f) * _124) + (_7.SampleLevel(_5, min(((_86 + float2(_114.x, _111.y)) - 0.5f.xx) * _12_m1.zw, _78), 0.0f) * _134)) * _107.y) + (((_7.SampleLevel(_5, min(((_86 + float2(_111.x, _114.y)) - 0.5f.xx) * _12_m1.zw, _78), 0.0f) * _124) + (_7.SampleLevel(_5, min(((_86 + _114) - 0.5f.xx) * _12_m1.zw, _78), 0.0f) * _134)) * _108.y)).xyz;
    bool3 _163 = (_12_m0.y > 0.5f).xxx;
    float3 _167 = _77 + (_159 * _12_m0.x);
    float3 _169 = lerp(_77, _159, _12_m0.x.xxx);
    uint2 _171 = uint2(_12_m2.xy);
    _10[gl_GlobalInvocationID.xy] = float3(_163.x ? _167.x : _169.x, _163.y ? _167.y : _169.y, _163.z ? _167.z : _169.z) * float(all(bool2(gl_GlobalInvocationID.xy.x <= _171.x, gl_GlobalInvocationID.xy.y <= _171.y)));
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}

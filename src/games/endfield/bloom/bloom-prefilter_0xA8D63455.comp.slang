// RenoDX debug branch: shader category coloring.
#include "../shared.h"

// Endfield 1.5 Vulkan shader 0xA8D63455, migrated from 1.4.4 shader 0x3DAE293E.
static const float3 _86[13] = { float3(0.0f, 0.0f, 4.0f), float3(-2.0f, -2.0f, 1.0f), float3(2.0f, -2.0f, 1.0f), float3(2.0f, 2.0f, 1.0f), float3(-2.0f, 2.0f, 1.0f), float3(-2.0f, 0.0f, 2.0f), float3(2.0f, 0.0f, 2.0f), float3(0.0f, 2.0f, 2.0f), float3(0.0f, -2.0f, 2.0f), float3(-1.0f, 1.0f, 4.0f), float3(1.0f, 1.0f, 4.0f), float3(-1.0f, -1.0f, 4.0f), float3(-1.0f, 1.0f, 4.0f) };

[[vk::binding(0, 1)]]
cbuffer _4_5 : register(b0)
{
    float4 _5_m0 : packoffset(c0);
    float4 _5_m1 : packoffset(c1);
    float4 _5_m2 : packoffset(c2);
    float4 _5_m3 : packoffset(c3);
    float4 _5_m4 : packoffset(c4);
    float4 _5_m5 : packoffset(c5);
    float4 _5_m6[6] : packoffset(c6);
    float4 _5_m7[6] : packoffset(c12);
    float4 _5_m8 : packoffset(c18);
    float4 _5_m9 : packoffset(c19);
    float4 _5_m10 : packoffset(c20);
    float4 _5_m11 : packoffset(c21);
    float4 _5_m12 : packoffset(c22);
    float4 _5_m13 : packoffset(c23);
    float4 _5_m14 : packoffset(c24);
    float4 _5_m15 : packoffset(c25);
    float _5_m16 : packoffset(c26);
    float _5_m17 : packoffset(c26.y);
    float _5_m18 : packoffset(c26.z);
    uint _5_m19 : packoffset(c26.w);
    float4 _5_m20 : packoffset(c27);
    int4 _5_m21 : packoffset(c28);
    float4 _5_m22 : packoffset(c29);
    float4 _5_m23 : packoffset(c30);
    float4 _5_m24 : packoffset(c31);
    float4 _5_m25 : packoffset(c32);
    float4 _5_m26 : packoffset(c33);
    float4 _5_m27 : packoffset(c34);
    float4 _5_m28 : packoffset(c35);
    float4 _5_m29 : packoffset(c36);
    float4 _5_m30 : packoffset(c37);
    float4 _5_m31 : packoffset(c38);
    float4 _5_m32[4] : packoffset(c39);
    float4 _5_m33[4] : packoffset(c43);
    float4 _5_m34[4] : packoffset(c47);
    float4 _5_m35[4] : packoffset(c51);
    float4 _5_m36 : packoffset(c55);
    float4 _5_m37 : packoffset(c56);
    float4 _5_m38[4] : packoffset(c57);
    float4 _5_m39[4] : packoffset(c61);
    float4 _5_m40[4] : packoffset(c65);
    float4 _5_m41 : packoffset(c69);
    float4 _5_m42 : packoffset(c70);
    float4 _5_m43 : packoffset(c71);
    float4 _5_m44 : packoffset(c72);
    float4 _5_m45 : packoffset(c73);
    float4 _5_m46 : packoffset(c74);
    float4 _5_m47 : packoffset(c75);
    float4 _5_m48 : packoffset(c76);
    float4 _5_m49 : packoffset(c77);
    float4 _5_m50 : packoffset(c78);
    float4 _5_m51 : packoffset(c79);
    float4 _5_m52 : packoffset(c80);
    float4 _5_m53 : packoffset(c81);
    float4 _5_m54 : packoffset(c82);
    float4 _5_m55 : packoffset(c83);
    float4 _5_m56 : packoffset(c84);
    float4 _5_m57 : packoffset(c85);
    float4 _5_m58 : packoffset(c86);
    float4 _5_m59 : packoffset(c87);
    float4 _5_m60 : packoffset(c88);
    float4 _5_m61 : packoffset(c89);
    float4 _5_m62 : packoffset(c90);
    float4 _5_m63 : packoffset(c91);
    float4 _5_m64 : packoffset(c92);
    float4 _5_m65 : packoffset(c93);
    float4 _5_m66 : packoffset(c94);
    float4 _5_m67 : packoffset(c95);
    float4 _5_m68 : packoffset(c96);
    float4 _5_m69 : packoffset(c97);
    float4 _5_m70 : packoffset(c98);
    float4 _5_m71 : packoffset(c99);
    float4 _5_m72 : packoffset(c100);
    float4 _5_m73 : packoffset(c101);
    float4 _5_m74 : packoffset(c102);
    float4 _5_m75 : packoffset(c103);
    float4 _5_m76 : packoffset(c104);
    float4 _5_m77 : packoffset(c105);
    float4 _5_m78 : packoffset(c106);
    float4 _5_m79 : packoffset(c107);
    float4 _5_m80 : packoffset(c108);
    float4 _5_m81 : packoffset(c109);
    float4 _5_m82 : packoffset(c110);
    float4 _5_m83 : packoffset(c111);
    float4 _5_m84 : packoffset(c112);
    float4 _5_m85 : packoffset(c113);
    float4 _5_m86 : packoffset(c114);
    float4 _5_m87 : packoffset(c115);
    float4 _5_m88 : packoffset(c116);
    float4 _5_m89 : packoffset(c117);
    float4 _5_m90 : packoffset(c118);
    float4 _5_m91 : packoffset(c119);
    float4 _5_m92 : packoffset(c120);
    float4 _5_m93 : packoffset(c121);
    float4 _5_m94 : packoffset(c122);
    float4 _5_m95 : packoffset(c123);
    float4 _5_m96 : packoffset(c124);
    float4 _5_m97 : packoffset(c125);
    float4 _5_m98 : packoffset(c126);
    float4 _5_m99[2] : packoffset(c127);
    float4 _5_m100[2] : packoffset(c129);
    float _5_m101 : packoffset(c131);
    float _5_m102 : packoffset(c131.y);
    float _5_m103 : packoffset(c131.z);
    float _5_m104 : packoffset(c131.w);
    float4 _5_m105 : packoffset(c132);
    float4 _5_m106 : packoffset(c133);
    float4 _5_m107 : packoffset(c134);
    float4 _5_m108 : packoffset(c135);
    float4 _5_m109 : packoffset(c136);
    float4 _5_m110 : packoffset(c137);
    float4 _5_m111 : packoffset(c138);
    float4 _5_m112 : packoffset(c139);
    float4 _5_m113 : packoffset(c140);
    float4 _5_m114 : packoffset(c141);
    float4 _5_m115 : packoffset(c142);
    float4 _5_m116 : packoffset(c143);
    float4 _5_m117 : packoffset(c144);
    float4 _5_m118 : packoffset(c145);
    float4 _5_m119 : packoffset(c146);
    float4 _5_m120 : packoffset(c147);
    float4 _5_m121 : packoffset(c148);
    float4 _5_m122 : packoffset(c149);
    float4 _5_m123 : packoffset(c150);
    float4 _5_m124 : packoffset(c151);
    float4 _5_m125 : packoffset(c152);
    float4 _5_m126 : packoffset(c153);
    float4 _5_m127 : packoffset(c154);
    float4 _5_m128 : packoffset(c155);
    float4 _5_m129 : packoffset(c156);
    float4 _5_m130 : packoffset(c157);
    float4 _5_m131 : packoffset(c158);
    float4 _5_m132 : packoffset(c159);
    float4 _5_m133 : packoffset(c160);
    float4 _5_m134 : packoffset(c161);
    column_major float4x4 _5_m135 : packoffset(c162);
    float4 _5_m136 : packoffset(c166);
    float4 _5_m137 : packoffset(c167);
    float4 _5_m138[32] : packoffset(c168);
};

[[vk::binding(1, 1)]]
cbuffer _12_13 : register(b1)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
};

[[vk::binding(2, 0)]] SamplerState _7 : register(s2);
[[vk::binding(1, 0)]] Texture2D<float4> _9 : register(t1);
[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> _11 : register(u0);

static uint3 gl_GlobalInvocationID = (uint3)0;
struct SPIRV_Cross_Input
{
    uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

void comp_main()
{
    float2 _92 = float2(gl_GlobalInvocationID.xy);
    float2 _97 = (_92 + 0.5f.xx) * _13_m0.zw;
    float _100;
    float3 _103;
    _100 = 0.0f;
    _103 = 0.0f.xxx;
    float _89[13];
    [loop]
    for (int _105 = 0; _105 < 13; )
    {
        float3 _122 = _9.SampleLevel(_7, _97 + (_86[_105].xy * _5_m0.zw), 0.0f).xyz;
        uint3 _123 = asuint(_122);
        bool3 _124 = bool3(_123.x < uint3(2139095040u, 2139095040u, 2139095040u).x, _123.y < uint3(2139095040u, 2139095040u, 2139095040u).y, _123.z < uint3(2139095040u, 2139095040u, 2139095040u).z);
        float3 _125 = float3(_124.x ? _122.x : 0.0f.xxx.x, _124.y ? _122.y : 0.0f.xxx.y, _124.z ? _122.z : 0.0f.xxx.z);
        float _134 = max(max(_125.x, _125.y), _125.z);
        float _138 = clamp(_134 - _13_m1.y, 0.0f, _13_m1.z);
        float3 _149 = (_125 * (max((_13_m1.w * _138) * _138, _134 - _13_m1.x) / max(_134, 9.9999997473787516355514526367188e-05f))) * _5_m20.x;

        // RenoDX code: scale the vanilla prefiltered bloom contribution.

        _149 *= BLOOM_STRENGTH / 50.0f;
        _89[_105] = 1.0f / (dot(_149, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) + 1.0f);
        _100 += (_86[_105].z * _89[_105]);
        _103 += ((_149 * _86[_105].z) * _89[_105]);
        _105++;
        continue;
    }
    uint2 _164 = uint2(_13_m0.xy);
    _11[uint2(_92)] = ApplyShaderDebugColor((_103 / _100.xxx) * float(all(bool2(gl_GlobalInvocationID.xy.x <= _164.x, gl_GlobalInvocationID.xy.y <= _164.y))));
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}

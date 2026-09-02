#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x3FD93A7E, migrated from 1.4.4 shader 0x3207892A.
[[vk::binding(0, 1)]]
cbuffer _5_6 : register(b0)
{
    column_major float4x4 _6_m0 : packoffset(c0);
    column_major float4x4 _6_m1 : packoffset(c4);
    column_major float4x4 _6_m2 : packoffset(c8);
    column_major float4x4 _6_m3 : packoffset(c12);
    column_major float4x4 _6_m4 : packoffset(c16);
    column_major float4x4 _6_m5 : packoffset(c20);
    column_major float4x4 _6_m6 : packoffset(c24);
    column_major float4x4 _6_m7 : packoffset(c28);
    column_major float4x4 _6_m8 : packoffset(c32);
    column_major float4x4 _6_m9 : packoffset(c36);
    column_major float4x4 _6_m10 : packoffset(c40);
    float4 _6_m11 : packoffset(c44);
    column_major float4x4 _6_m12 : packoffset(c45);
    column_major float4x4 _6_m13 : packoffset(c49);
    column_major float4x4 _6_m14 : packoffset(c53);
    column_major float4x4 _6_m15 : packoffset(c57);
    column_major float4x4 _6_m16 : packoffset(c61);
    column_major float4x4 _6_m17 : packoffset(c65);
    column_major float4x4 _6_m18 : packoffset(c69);
    column_major float4x4 _6_m19 : packoffset(c73);
    column_major float4x4 _6_m20 : packoffset(c77);
    float4 _6_m21 : packoffset(c81);
};

[[vk::binding(1, 1)]]
cbuffer _7_8 : register(b1)
{
    float4 _8_m0 : packoffset(c0);
    float4 _8_m1 : packoffset(c1);
    float4 _8_m2 : packoffset(c2);
    float4 _8_m3 : packoffset(c3);
    float4 _8_m4 : packoffset(c4);
    float4 _8_m5 : packoffset(c5);
    float4 _8_m6[6] : packoffset(c6);
    float4 _8_m7[6] : packoffset(c12);
    float4 _8_m8 : packoffset(c18);
    float4 _8_m9 : packoffset(c19);
    float4 _8_m10 : packoffset(c20);
    float4 _8_m11 : packoffset(c21);
    float4 _8_m12 : packoffset(c22);
    float4 _8_m13 : packoffset(c23);
    float4 _8_m14 : packoffset(c24);
    float4 _8_m15 : packoffset(c25);
    float _8_m16 : packoffset(c26);
    float _8_m17 : packoffset(c26.y);
    float _8_m18 : packoffset(c26.z);
    uint _8_m19 : packoffset(c26.w);
    float4 _8_m20 : packoffset(c27);
    int4 _8_m21 : packoffset(c28);
    float4 _8_m22 : packoffset(c29);
    float4 _8_m23 : packoffset(c30);
    float4 _8_m24 : packoffset(c31);
    float4 _8_m25 : packoffset(c32);
    float4 _8_m26 : packoffset(c33);
    float4 _8_m27 : packoffset(c34);
    float4 _8_m28 : packoffset(c35);
    float4 _8_m29 : packoffset(c36);
    float4 _8_m30 : packoffset(c37);
    float4 _8_m31 : packoffset(c38);
    float4 _8_m32[4] : packoffset(c39);
    float4 _8_m33[4] : packoffset(c43);
    float4 _8_m34[4] : packoffset(c47);
    float4 _8_m35[4] : packoffset(c51);
    float4 _8_m36 : packoffset(c55);
    float4 _8_m37 : packoffset(c56);
    float4 _8_m38[4] : packoffset(c57);
    float4 _8_m39[4] : packoffset(c61);
    float4 _8_m40[4] : packoffset(c65);
    float4 _8_m41 : packoffset(c69);
    float4 _8_m42 : packoffset(c70);
    float4 _8_m43 : packoffset(c71);
    float4 _8_m44 : packoffset(c72);
    float4 _8_m45 : packoffset(c73);
    float4 _8_m46 : packoffset(c74);
    float4 _8_m47 : packoffset(c75);
    float4 _8_m48 : packoffset(c76);
    float4 _8_m49 : packoffset(c77);
    float4 _8_m50 : packoffset(c78);
    float4 _8_m51 : packoffset(c79);
    float4 _8_m52 : packoffset(c80);
    float4 _8_m53 : packoffset(c81);
    float4 _8_m54 : packoffset(c82);
    float4 _8_m55 : packoffset(c83);
    float4 _8_m56 : packoffset(c84);
    float4 _8_m57 : packoffset(c85);
    float4 _8_m58 : packoffset(c86);
    float4 _8_m59 : packoffset(c87);
    float4 _8_m60 : packoffset(c88);
    float4 _8_m61 : packoffset(c89);
    float4 _8_m62 : packoffset(c90);
    float4 _8_m63 : packoffset(c91);
    float4 _8_m64 : packoffset(c92);
    float4 _8_m65 : packoffset(c93);
    float4 _8_m66 : packoffset(c94);
    float4 _8_m67 : packoffset(c95);
    float4 _8_m68 : packoffset(c96);
    float4 _8_m69 : packoffset(c97);
    float4 _8_m70 : packoffset(c98);
    float4 _8_m71 : packoffset(c99);
    float4 _8_m72 : packoffset(c100);
    float4 _8_m73 : packoffset(c101);
    float4 _8_m74 : packoffset(c102);
    float4 _8_m75 : packoffset(c103);
    float4 _8_m76 : packoffset(c104);
    float4 _8_m77 : packoffset(c105);
    float4 _8_m78 : packoffset(c106);
    float4 _8_m79 : packoffset(c107);
    float4 _8_m80 : packoffset(c108);
    float4 _8_m81 : packoffset(c109);
    float4 _8_m82 : packoffset(c110);
    float4 _8_m83 : packoffset(c111);
    float4 _8_m84 : packoffset(c112);
    float4 _8_m85 : packoffset(c113);
    float4 _8_m86 : packoffset(c114);
    float4 _8_m87 : packoffset(c115);
    float4 _8_m88 : packoffset(c116);
    float4 _8_m89 : packoffset(c117);
    float4 _8_m90 : packoffset(c118);
    float4 _8_m91 : packoffset(c119);
    float4 _8_m92 : packoffset(c120);
    float4 _8_m93 : packoffset(c121);
    float4 _8_m94 : packoffset(c122);
    float4 _8_m95 : packoffset(c123);
    float4 _8_m96 : packoffset(c124);
    float4 _8_m97 : packoffset(c125);
    float4 _8_m98 : packoffset(c126);
    float4 _8_m99[2] : packoffset(c127);
    float4 _8_m100[2] : packoffset(c129);
    float _8_m101 : packoffset(c131);
    float _8_m102 : packoffset(c131.y);
    float _8_m103 : packoffset(c131.z);
    float _8_m104 : packoffset(c131.w);
    float4 _8_m105 : packoffset(c132);
    float4 _8_m106 : packoffset(c133);
    float4 _8_m107 : packoffset(c134);
    float4 _8_m108 : packoffset(c135);
    float4 _8_m109 : packoffset(c136);
    float4 _8_m110 : packoffset(c137);
    float4 _8_m111 : packoffset(c138);
    float4 _8_m112 : packoffset(c139);
    float4 _8_m113 : packoffset(c140);
    float4 _8_m114 : packoffset(c141);
    float4 _8_m115 : packoffset(c142);
    float4 _8_m116 : packoffset(c143);
    float4 _8_m117 : packoffset(c144);
    float4 _8_m118 : packoffset(c145);
    float4 _8_m119 : packoffset(c146);
    float4 _8_m120 : packoffset(c147);
    float4 _8_m121 : packoffset(c148);
    float4 _8_m122 : packoffset(c149);
    float4 _8_m123 : packoffset(c150);
    float4 _8_m124 : packoffset(c151);
    float4 _8_m125 : packoffset(c152);
    float4 _8_m126 : packoffset(c153);
    float4 _8_m127 : packoffset(c154);
    float4 _8_m128 : packoffset(c155);
    float4 _8_m129 : packoffset(c156);
    float4 _8_m130 : packoffset(c157);
    float4 _8_m131 : packoffset(c158);
    float4 _8_m132 : packoffset(c159);
    float4 _8_m133 : packoffset(c160);
    float4 _8_m134 : packoffset(c161);
    column_major float4x4 _8_m135 : packoffset(c162);
    float4 _8_m136 : packoffset(c166);
    float4 _8_m137 : packoffset(c167);
    float4 _8_m138[32] : packoffset(c168);
};

[[vk::binding(2, 1)]]
cbuffer _13_14 : register(b2)
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
    float4 _14_m9 : packoffset(c9);
};

[[vk::binding(10, 0)]] ByteAddressBuffer _21 : register(t10);
[[vk::binding(9, 0)]] SamplerState _10 : register(s9);
[[vk::binding(3, 0)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _16 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(6, 0)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(7, 0)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(8, 0)]] Texture2D<float4> _20 : register(t8);
[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> _23 : register(u0);
[[vk::binding(1, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _25 : register(u1);
[[vk::binding(2, 0)]] [[vk::image_format("r8")]] RWTexture2D<unorm float> _27 : register(u2);

static uint3 gl_WorkGroupID = (uint3)0;
static uint3 gl_LocalInvocationID = (uint3)0;
struct SPIRV_Cross_Input
{
    uint3 gl_WorkGroupID : SV_GroupID;
    uint3 gl_LocalInvocationID : SV_GroupThreadID;
};

void comp_main()
{
    do
    {
        uint _128 = _21.Load(gl_WorkGroupID.x * 4 + 0);
        uint2 _134 = (uint2((_128 >> 16u) & 65535u, _128 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_134.x >= uint(_14_m0.x)) || (_134.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _155 = _27[_134].xxxx;
        float _156 = _155.x;
        float _168 = (_19.SampleLevel(_10, (float2(_134) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f) ? _14_m3.x : max(ceil(_14_m3.x * 0.125f), 4.0f);

        // RenoDX code start: raise full- and low-quality ray floors.

        if (shader_injection.improved_ssr >= 0.5f) {

            bool renodx_full_trace = _19.SampleLevel(_10, (float2(_134) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f;

            _168 = max(_168, renodx_full_trace ? 256.0f : 32.0f);

        }

        // RenoDX code end
        int2 _169 = int2(_134);
        float2 _667;
        float _668;
        float2 _669;
        do
        {
            float2 _173 = float2(_169) + 0.5f.xx;
            float2 _174 = _173 * _14_m0.zw;
            if (_156 <= 0.001000000047497451305389404296875f)
            {
                _667 = 0.0f.xx;
                _668 = _156;
                _669 = _174;
                break;
            }
            float4 _181 = _17.SampleLevel(_10, _174, 0.0f);
            float _182 = _181.x;
            float2 _190 = (_174 * 2.0f) - 1.0f.xx;
            float _191 = _190.x;
            float3 _193 = float3(_191, _190.y, _182);
            float4 _196 = float4(_191, _190.y, _182, 1.0f);
            float4 _197 = mul(_6_m3, _196);
            float3 _201 = _197.xyz / _197.w.xxx;
            _201.y = -_201.y;
            float4 _211 = _20.Load(int3(int3(_169, 0).xy, 0));
            float2 _214 = (_211.xy * 2.0f) - 1.0f.xx;
            float _218 = 1.0f - dot(1.0f.xx, abs(_214));
            float3 _220 = float3(_214.x, _218, _214.y);
            float3 _232;
            if (_218 < 0.0f)
            {
                float2 _227 = _220.xz;
                bool2 _228 = bool2(_227.x >= 0.0f.xx.x, _227.y >= 0.0f.xx.y);
                float2 _230 = (1.0f.xx - abs(_220.zx)) * float2(_228.x ? 1.0f.xx.x : (-1.0f).xx.x, _228.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _232 = float3(_230.x, _220.y, _230.y);
            }
            else
            {
                _232 = _220;
            }
            float3 _233 = normalize(_232);
            float _234 = _211.z;
            float _235 = _234 * _234;
            float _236 = _235 * _235;
            float4 _255 = mul(_6_m2, float4(reflect(normalize(_201), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _233)), 0.0f));
            _255.y = -_255.y;
            float4 _259 = _255 + _196;
            float3 _264 = (_259.xyz / _259.w.xxx) - _193;
            float2 _265 = _193.xy;
            float2 _266 = _264.xy;
            float _268 = 0.5f * length(_266);
            float2 _277 = 1.0f.xx - (max(abs(_266 + (_265 * _268)) - _268.xx, 0.0f.xx) / abs(_266));
            float3 _282 = _264 * (min(_277.x, _277.y) / _268);
            float _293 = _282.z;
            float _296 = max(abs(_293) / _168, 9.9999997473787516355514526367188e-05f);
            float3 _307 = float3(_282.xy * 0.5f.xx, _293) * (1.0f / _168);
            float2 _311 = abs(_307.xy * _14_m0.xy);
            float _314 = max(_311.x, _311.y);
            float3 _320 = float3((_265 * 0.5f.xx) + 0.5f.xx, _182) + (_307 * ((_314 < 1.0f) ? (1.0f / (_314 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_173 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _328 = _320.z - _17.SampleLevel(_10, _320.xy, 0.0f).x;
            float3 _330;
            float3 _335;
            _330 = _320;
            _335 = 0.0f.xxx;
            float3 _331;
            float _337;
            float3 _415;
            bool _416;
            float _333 = 0.0f;
            float _336 = _328;
            for (;;)
            {
                if (_333 < _168)
                {
                    float4 _344 = _330.xyxy + (_307.xyxy * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _346 = _330.xyxy + (_307.xyxy * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _376 = (_330.zzzz + (_307.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_17.SampleLevel(_10, _344.xy, 0.0f).x, _17.SampleLevel(_10, _344.zw, 0.0f).x, _17.SampleLevel(_10, _346.xy, 0.0f).x, _17.SampleLevel(_10, _346.zw, 0.0f).x);
                    float4 _377 = _296.xxxx;
                    float4 _379 = abs(_376 + _377);
                    bool4 _380 = bool4(_379.x < _377.x, _379.y < _377.y, _379.z < _377.z, _379.w < _377.w);
                    [branch]
                    if (any(_380))
                    {
                        float _384 = _376.z;
                        bool _386 = _380.z;
                        float _390;
                        [flatten]
                        if (_386)
                        {
                            _390 = _376.y;
                        }
                        else
                        {
                            _390 = _384;
                        }
                        bool _393 = _380.y;
                        float _398;
                        float _399;
                        [flatten]
                        if (_393)
                        {
                            _398 = _376.y;
                            _399 = _376.x;
                        }
                        else
                        {
                            _398 = _386 ? _384 : _376.w;
                            _399 = _390;
                        }
                        bool _401 = _380.x;
                        float _405;
                        [flatten]
                        if (_401)
                        {
                            _405 = _376.x;
                        }
                        else
                        {
                            _405 = _398;
                        }
                        float _406 = _401 ? _336 : _399;
                        _415 = _330 + (_307 * ((_401 ? 0.0f : (_393 ? 1.0f : (_386 ? 2.0f : 3.0f))) + clamp(_406 / (_406 - _405), 0.0f, 1.0f)));
                        _416 = true;
                        break;
                    }
                    _331 = _330 + (_307 * 4.0f);
                    _337 = _376.w;
                    _330 = _331;
                    _333 += 4.0f;
                    _335 = _331;
                    _336 = _337;
                    continue;
                }
                else
                {
                    _415 = _335;
                    _416 = false;
                    break;
                }
            }
            bool4 _417 = _416.xxxx;
            float4 _421 = float4(_415, 1.0f);
            float4 _422 = float4(_415, 0.0f);
            float4 _423 = float4(_417.x ? _421.x : _422.x, _417.y ? _421.y : _422.y, _417.z ? _421.z : _422.z, _417.w ? _421.w : _422.w);
            float _512;
            float2 _513;
            float2 _514;
            [branch]
            if (_423.w == 1.0f)
            {
                float2 _428 = _423.xy;
                float _431 = _423.x;
                float _432 = _423.y;
                float _436 = min(1.0f - max(_431, _432), min(_431, _432));
                float _441 = _156 * clamp((_436 > _14_m1.y) ? 1.0f : (_436 / _14_m1.y), 0.0f, 1.0f);
                float2 _446 = _18.SampleLevel(_10, _428, 0.0f).xy;
                float2 _453 = (abs(_446) * 2.0f) - 1.0f.xx;
                float2 _454 = _453 * _453;
                float2 _460 = ((_454 * _454) * float2(int2(sign(_446 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _461 = _428 - _460;
                float4 _465 = _16.SampleLevel(_10, _461, 0.0f);
                float _466 = _465.x;
                float _511;
                if ((_466 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _475 = (_461 * 2.0f) - 1.0f.xx;
                    float4 _478 = float4(_475, _466, 1.0f);
                    _478.y = -_475.y;
                    float4 _481 = mul(_6_m16, _478);
                    float _486 = _423.z;
                    float2 _490 = (_428 * 2.0f) - 1.0f.xx;
                    float4 _493 = float4(_490, _486, 1.0f);
                    _493.y = -_490.y;
                    float4 _496 = mul(_6_m6, _493);
                    float _503 = 1.0f / ((_8_m2.z * _486) + _8_m2.w);
                    _511 = (length((_481.xyz / _481.w.xxx) - (_496.xyz / _496.w.xxx)) > max((_503 * _503) * 0.00999999977648258209228515625f, 0.25f)) ? 0.0f : _441;
                }
                else
                {
                    _511 = _441;
                }
                _512 = _511;
                _513 = _460;
                _514 = _461;
            }
            else
            {
                _512 = 0.0f;
                _513 = 0.0f.xx;
                _514 = _174;
            }
            float2 _519 = _18.SampleLevel(_10, _514, 0.0f).xy;
            float2 _526 = (abs(_519) * 2.0f) - 1.0f.xx;
            float2 _527 = _526 * _526;
            float _548 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _236) + (-1.0f))));
            float4 _551 = mul(_6_m6, _196);
            float4 _554 = _551 / _551.w.xxxx;
            float4 _562 = mul(_6_m6, float4((_423.xy * 2.0f) - 1.0f.xx, _423.z, 1.0f));
            float3 _569 = _554.xyz;
            float3 _571 = normalize(_6_m11.xyz - _569);
            float _572 = distance(_6_m11.xyz, _569);
            bool3 _576 = (abs(_233.z) < 0.999000012874603271484375f).xxx;
            float3 _579 = normalize(cross(float3(_576.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _576.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _576.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _233));
            float _581 = distance(_562 / _562.w.xxxx, _554);
            float3 _585 = cross(_579, _571);
            float3 _586 = -_571;
            float3 _590 = cos(_548).xxx;
            float _593 = sin(_548);
            float3 _597 = _6_m11.xyz - (_571 * _572);
            float3 _600 = cross(cross(_233, _579), _571);
            float4 _616 = mul(_6_m5, float4((_6_m11.xyz - (_571 * (_581 + _572))) - _6_m11.xyz, 1.0f));
            float2 _624 = (((_616.xy / _616.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _630 = mul(_6_m5, float4((_597 + ((lerp(_585 * dot(_585, _586), _586, _590) + (cross(_585, _586) * _593)) * _581)) - _6_m11.xyz, 1.0f));
            float4 _644 = mul(_6_m5, float4((_597 + ((lerp(_600 * dot(_600, _586), _586, _590) + (cross(_600, _586) * _593)) * _581)) - _6_m11.xyz, 1.0f));
            _667 = float2(exp((-length((((_527 * _527) * float2(int2(sign(_519 - 0.5f.xx)))) + _513) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _182) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_236 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_624, (((_630.xy / _630.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_624, (((_644.xy / _644.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));

            // RenoDX code start: favor sharper temporal data.

            if (shader_injection.improved_ssr >= 0.5f) _667.y = saturate((_667.y - 0.25f) / 0.75f);

            // RenoDX code end
            _668 = _512;
            _669 = _514;
            break;
        } while(false);
        float4 _673 = _15.SampleLevel(_10, _669, 0.0f);
        _23[_134] = _673.xyz * (1.0f / (max(max(_673.x, _673.y), _673.z) + 1.0f));
        _25[_134] = _667;
        _27[_134] = _668;
        break;
    } while(false);
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_WorkGroupID = stage_input.gl_WorkGroupID;
    gl_LocalInvocationID = stage_input.gl_LocalInvocationID;
    comp_main();
}

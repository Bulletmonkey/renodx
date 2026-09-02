#include "../shared.h"

// Endfield 1.5 Vulkan shader 0xAA02F92A, migrated from 1.4.4 shader 0x8112774A.
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

[[vk::binding(9, 0)]] ByteAddressBuffer _20 : register(t9);
[[vk::binding(8, 0)]] SamplerState _10 : register(s8);
[[vk::binding(3, 0)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _16 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(6, 0)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(7, 0)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(0, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _22 : register(u0);
[[vk::binding(1, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _23 : register(u1);
[[vk::binding(2, 0)]] [[vk::image_format("r8")]] RWTexture2D<unorm float> _25 : register(u2);

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
        uint _125 = _20.Load(gl_WorkGroupID.x * 4 + 0);
        uint2 _131 = (uint2((_125 >> 16u) & 65535u, _125 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_131.x >= uint(_14_m0.x)) || (_131.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _152 = _25[_131].xxxx;
        float _153 = _152.x;
        float _165 = (_18.SampleLevel(_10, (float2(_131) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f) ? _14_m3.x : max(ceil(_14_m3.x * 0.125f), 4.0f);

        // RenoDX code start: raise full- and low-quality ray floors.

        if (shader_injection.improved_ssr >= 0.5f) {

            bool renodx_full_trace = _18.SampleLevel(_10, (float2(_131) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f;

            _165 = max(_165, renodx_full_trace ? 256.0f : 32.0f);

        }

        // RenoDX code end
        int2 _166 = int2(_131);
        float2 _664;
        float _665;
        float2 _666;
        do
        {
            float2 _170 = float2(_166) + 0.5f.xx;
            float2 _171 = _170 * _14_m0.zw;
            if (_153 <= 0.001000000047497451305389404296875f)
            {
                _664 = 0.0f.xx;
                _665 = _153;
                _666 = _171;
                break;
            }
            float4 _178 = _16.SampleLevel(_10, _171, 0.0f);
            float _179 = _178.x;
            float2 _187 = (_171 * 2.0f) - 1.0f.xx;
            float _188 = _187.x;
            float3 _190 = float3(_188, _187.y, _179);
            float4 _193 = float4(_188, _187.y, _179, 1.0f);
            float4 _194 = mul(_6_m3, _193);
            float3 _198 = _194.xyz / _194.w.xxx;
            _198.y = -_198.y;
            float4 _208 = _19.Load(int3(int3(_166, 0).xy, 0));
            float2 _211 = (_208.xy * 2.0f) - 1.0f.xx;
            float _215 = 1.0f - dot(1.0f.xx, abs(_211));
            float3 _217 = float3(_211.x, _215, _211.y);
            float3 _229;
            if (_215 < 0.0f)
            {
                float2 _224 = _217.xz;
                bool2 _225 = bool2(_224.x >= 0.0f.xx.x, _224.y >= 0.0f.xx.y);
                float2 _227 = (1.0f.xx - abs(_217.zx)) * float2(_225.x ? 1.0f.xx.x : (-1.0f).xx.x, _225.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _229 = float3(_227.x, _217.y, _227.y);
            }
            else
            {
                _229 = _217;
            }
            float3 _230 = normalize(_229);
            float _231 = _208.z;
            float _232 = _231 * _231;
            float _233 = _232 * _232;
            float4 _252 = mul(_6_m2, float4(reflect(normalize(_198), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _230)), 0.0f));
            _252.y = -_252.y;
            float4 _256 = _252 + _193;
            float3 _261 = (_256.xyz / _256.w.xxx) - _190;
            float2 _262 = _190.xy;
            float2 _263 = _261.xy;
            float _265 = 0.5f * length(_263);
            float2 _274 = 1.0f.xx - (max(abs(_263 + (_262 * _265)) - _265.xx, 0.0f.xx) / abs(_263));
            float3 _279 = _261 * (min(_274.x, _274.y) / _265);
            float _290 = _279.z;
            float _293 = max(abs(_290) / _165, 9.9999997473787516355514526367188e-05f);
            float3 _304 = float3(_279.xy * 0.5f.xx, _290) * (1.0f / _165);
            float2 _308 = abs(_304.xy * _14_m0.xy);
            float _311 = max(_308.x, _308.y);
            float3 _317 = float3((_262 * 0.5f.xx) + 0.5f.xx, _179) + (_304 * ((_311 < 1.0f) ? (1.0f / (_311 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_170 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _325 = _317.z - _16.SampleLevel(_10, _317.xy, 0.0f).x;
            float3 _327;
            float3 _332;
            _327 = _317;
            _332 = 0.0f.xxx;
            float3 _328;
            float _334;
            float3 _412;
            bool _413;
            float _330 = 0.0f;
            float _333 = _325;
            for (;;)
            {
                if (_330 < _165)
                {
                    float4 _341 = _327.xyxy + (_304.xyxy * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _343 = _327.xyxy + (_304.xyxy * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _373 = (_327.zzzz + (_304.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_16.SampleLevel(_10, _341.xy, 0.0f).x, _16.SampleLevel(_10, _341.zw, 0.0f).x, _16.SampleLevel(_10, _343.xy, 0.0f).x, _16.SampleLevel(_10, _343.zw, 0.0f).x);
                    float4 _374 = _293.xxxx;
                    float4 _376 = abs(_373 + _374);
                    bool4 _377 = bool4(_376.x < _374.x, _376.y < _374.y, _376.z < _374.z, _376.w < _374.w);
                    [branch]
                    if (any(_377))
                    {
                        float _381 = _373.z;
                        bool _383 = _377.z;
                        float _387;
                        [flatten]
                        if (_383)
                        {
                            _387 = _373.y;
                        }
                        else
                        {
                            _387 = _381;
                        }
                        bool _390 = _377.y;
                        float _395;
                        float _396;
                        [flatten]
                        if (_390)
                        {
                            _395 = _373.y;
                            _396 = _373.x;
                        }
                        else
                        {
                            _395 = _383 ? _381 : _373.w;
                            _396 = _387;
                        }
                        bool _398 = _377.x;
                        float _402;
                        [flatten]
                        if (_398)
                        {
                            _402 = _373.x;
                        }
                        else
                        {
                            _402 = _395;
                        }
                        float _403 = _398 ? _333 : _396;
                        _412 = _327 + (_304 * ((_398 ? 0.0f : (_390 ? 1.0f : (_383 ? 2.0f : 3.0f))) + clamp(_403 / (_403 - _402), 0.0f, 1.0f)));
                        _413 = true;
                        break;
                    }
                    _328 = _327 + (_304 * 4.0f);
                    _334 = _373.w;
                    _327 = _328;
                    _330 += 4.0f;
                    _332 = _328;
                    _333 = _334;
                    continue;
                }
                else
                {
                    _412 = _332;
                    _413 = false;
                    break;
                }
            }
            bool4 _414 = _413.xxxx;
            float4 _418 = float4(_412, 1.0f);
            float4 _419 = float4(_412, 0.0f);
            float4 _420 = float4(_414.x ? _418.x : _419.x, _414.y ? _418.y : _419.y, _414.z ? _418.z : _419.z, _414.w ? _418.w : _419.w);
            float _509;
            float2 _510;
            float2 _511;
            [branch]
            if (_420.w == 1.0f)
            {
                float2 _425 = _420.xy;
                float _428 = _420.x;
                float _429 = _420.y;
                float _433 = min(1.0f - max(_428, _429), min(_428, _429));
                float _438 = _153 * clamp((_433 > _14_m1.y) ? 1.0f : (_433 / _14_m1.y), 0.0f, 1.0f);
                float2 _443 = _17.SampleLevel(_10, _425, 0.0f).xy;
                float2 _450 = (abs(_443) * 2.0f) - 1.0f.xx;
                float2 _451 = _450 * _450;
                float2 _457 = ((_451 * _451) * float2(int2(sign(_443 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _458 = _425 - _457;
                float4 _462 = _15.SampleLevel(_10, _458, 0.0f);
                float _463 = _462.x;
                float _508;
                if ((_463 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _472 = (_458 * 2.0f) - 1.0f.xx;
                    float4 _475 = float4(_472, _463, 1.0f);
                    _475.y = -_472.y;
                    float4 _478 = mul(_6_m16, _475);
                    float _483 = _420.z;
                    float2 _487 = (_425 * 2.0f) - 1.0f.xx;
                    float4 _490 = float4(_487, _483, 1.0f);
                    _490.y = -_487.y;
                    float4 _493 = mul(_6_m6, _490);
                    float _500 = 1.0f / ((_8_m2.z * _483) + _8_m2.w);
                    _508 = (length((_478.xyz / _478.w.xxx) - (_493.xyz / _493.w.xxx)) > max((_500 * _500) * 0.00999999977648258209228515625f, 0.25f)) ? 0.0f : _438;
                }
                else
                {
                    _508 = _438;
                }
                _509 = _508;
                _510 = _457;
                _511 = _458;
            }
            else
            {
                _509 = 0.0f;
                _510 = 0.0f.xx;
                _511 = _171;
            }
            float2 _516 = _17.SampleLevel(_10, _511, 0.0f).xy;
            float2 _523 = (abs(_516) * 2.0f) - 1.0f.xx;
            float2 _524 = _523 * _523;
            float _545 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _233) + (-1.0f))));
            float4 _548 = mul(_6_m6, _193);
            float4 _551 = _548 / _548.w.xxxx;
            float4 _559 = mul(_6_m6, float4((_420.xy * 2.0f) - 1.0f.xx, _420.z, 1.0f));
            float3 _566 = _551.xyz;
            float3 _568 = normalize(_6_m11.xyz - _566);
            float _569 = distance(_6_m11.xyz, _566);
            bool3 _573 = (abs(_230.z) < 0.999000012874603271484375f).xxx;
            float3 _576 = normalize(cross(float3(_573.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _573.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _573.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _230));
            float _578 = distance(_559 / _559.w.xxxx, _551);
            float3 _582 = cross(_576, _568);
            float3 _583 = -_568;
            float3 _587 = cos(_545).xxx;
            float _590 = sin(_545);
            float3 _594 = _6_m11.xyz - (_568 * _569);
            float3 _597 = cross(cross(_230, _576), _568);
            float4 _613 = mul(_6_m5, float4((_6_m11.xyz - (_568 * (_578 + _569))) - _6_m11.xyz, 1.0f));
            float2 _621 = (((_613.xy / _613.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _627 = mul(_6_m5, float4((_594 + ((lerp(_582 * dot(_582, _583), _583, _587) + (cross(_582, _583) * _590)) * _578)) - _6_m11.xyz, 1.0f));
            float4 _641 = mul(_6_m5, float4((_594 + ((lerp(_597 * dot(_597, _583), _583, _587) + (cross(_597, _583) * _590)) * _578)) - _6_m11.xyz, 1.0f));
            _664 = float2(exp((-length((((_524 * _524) * float2(int2(sign(_516 - 0.5f.xx)))) + _510) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _179) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_233 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_621, (((_627.xy / _627.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_621, (((_641.xy / _641.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));

            // RenoDX code start: favor sharper temporal data.

            if (shader_injection.improved_ssr >= 0.5f) _664.y = saturate((_664.y - 0.25f) / 0.75f);

            // RenoDX code end
            _665 = _509;
            _666 = _511;
            break;
        } while(false);
        _22[_131] = _666;
        _23[_131] = _664;
        _25[_131] = _665;
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

// RenoDX debug branch: shader category coloring.
#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x19D33C14, migrated from 1.4.4 shader 0x34A94A81.
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

[[vk::binding(8, 0)]] ByteAddressBuffer _19 : register(t8);
[[vk::binding(7, 0)]] SamplerState _10 : register(s7);
[[vk::binding(3, 0)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _16 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(6, 0)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(0, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _21 : register(u0);
[[vk::binding(1, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _22 : register(u1);
[[vk::binding(2, 0)]] [[vk::image_format("r8")]] RWTexture2D<unorm float> _24 : register(u2);

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
        uint _126 = uint(_14_m6.z) + gl_WorkGroupID.x;
        uint _128 = _19.Load(_126 * 4 + 0);
        uint2 _134 = (uint2((_128 >> 16u) & 65535u, _128 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_134.x >= uint(_14_m0.x)) || (_134.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _150 = _24[_134].xxxx;
        float _151 = _150.x;
        float _156 = max(ceil(_14_m3.x * 0.125f), 4.0f);

        // RenoDX code start: raise the low-quality ray floor.

        if (shader_injection.improved_ssr >= 0.5f) _156 = max(_156, 32.0f);

        // RenoDX code end
        int2 _157 = int2(_134);
        float2 _657;
        float _658;
        float2 _659;
        do
        {
            float2 _161 = float2(_157) + 0.5f.xx;
            float2 _164 = _161 * _14_m0.zw;
            if (_151 <= 0.001000000047497451305389404296875f)
            {
                _657 = 0.0f.xx;
                _658 = _151;
                _659 = _164;
                break;
            }
            float4 _171 = _16.SampleLevel(_10, _164, 0.0f);
            float _172 = _171.x;
            float2 _180 = (_164 * 2.0f) - 1.0f.xx;
            float _181 = _180.x;
            float3 _183 = float3(_181, _180.y, _172);
            float4 _186 = float4(_181, _180.y, _172, 1.0f);
            float4 _187 = mul(_6_m3, _186);
            float3 _191 = _187.xyz / _187.w.xxx;
            _191.y = -_191.y;
            float4 _201 = _18.Load(int3(int3(_157, 0).xy, 0));
            float2 _204 = (_201.xy * 2.0f) - 1.0f.xx;
            float _208 = 1.0f - dot(1.0f.xx, abs(_204));
            float3 _210 = float3(_204.x, _208, _204.y);
            float3 _222;
            if (_208 < 0.0f)
            {
                float2 _217 = _210.xz;
                bool2 _218 = bool2(_217.x >= 0.0f.xx.x, _217.y >= 0.0f.xx.y);
                float2 _220 = (1.0f.xx - abs(_210.zx)) * float2(_218.x ? 1.0f.xx.x : (-1.0f).xx.x, _218.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _222 = float3(_220.x, _210.y, _220.y);
            }
            else
            {
                _222 = _210;
            }
            float3 _223 = normalize(_222);
            float _224 = _201.z;
            float _225 = _224 * _224;
            float _226 = _225 * _225;
            float4 _245 = mul(_6_m2, float4(reflect(normalize(_191), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _223)), 0.0f));
            _245.y = -_245.y;
            float4 _249 = _245 + _186;
            float3 _254 = (_249.xyz / _249.w.xxx) - _183;
            float2 _255 = _183.xy;
            float2 _256 = _254.xy;
            float _258 = 0.5f * length(_256);
            float2 _267 = 1.0f.xx - (max(abs(_256 + (_255 * _258)) - _258.xx, 0.0f.xx) / abs(_256));
            float3 _272 = _254 * (min(_267.x, _267.y) / _258);
            float _283 = _272.z;
            float _286 = max(abs(_283) / _156, 9.9999997473787516355514526367188e-05f);
            float3 _297 = float3(_272.xy * 0.5f.xx, _283) * (1.0f / _156);
            float2 _301 = abs(_297.xy * _14_m0.xy);
            float _304 = max(_301.x, _301.y);
            float3 _310 = float3((_255 * 0.5f.xx) + 0.5f.xx, _172) + (_297 * ((_304 < 1.0f) ? (1.0f / (_304 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_161 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _318 = _310.z - _16.SampleLevel(_10, _310.xy, 0.0f).x;
            float3 _320;
            float3 _325;
            _320 = _310;
            _325 = 0.0f.xxx;
            float3 _321;
            float _327;
            float3 _405;
            bool _406;
            float _323 = 0.0f;
            float _326 = _318;
            for (;;)
            {
                if (_323 < _156)
                {
                    float4 _332 = _297.xyxy;
                    float4 _334 = _320.xyxy + (_332 * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _336 = _320.xyxy + (_332 * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _366 = (_320.zzzz + (_297.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_16.SampleLevel(_10, _334.xy, 0.0f).x, _16.SampleLevel(_10, _334.zw, 0.0f).x, _16.SampleLevel(_10, _336.xy, 0.0f).x, _16.SampleLevel(_10, _336.zw, 0.0f).x);
                    float4 _367 = _286.xxxx;
                    float4 _369 = abs(_366 + _367);
                    bool4 _370 = bool4(_369.x < _367.x, _369.y < _367.y, _369.z < _367.z, _369.w < _367.w);
                    [branch]
                    if (any(_370))
                    {
                        float _374 = _366.z;
                        bool _376 = _370.z;
                        float _380;
                        [flatten]
                        if (_376)
                        {
                            _380 = _366.y;
                        }
                        else
                        {
                            _380 = _374;
                        }
                        bool _383 = _370.y;
                        float _388;
                        float _389;
                        [flatten]
                        if (_383)
                        {
                            _388 = _366.y;
                            _389 = _366.x;
                        }
                        else
                        {
                            _388 = _376 ? _374 : _366.w;
                            _389 = _380;
                        }
                        bool _391 = _370.x;
                        float _395;
                        [flatten]
                        if (_391)
                        {
                            _395 = _366.x;
                        }
                        else
                        {
                            _395 = _388;
                        }
                        float _396 = _391 ? _326 : _389;
                        _405 = _320 + (_297 * ((_391 ? 0.0f : (_383 ? 1.0f : (_376 ? 2.0f : 3.0f))) + clamp(_396 / (_396 - _395), 0.0f, 1.0f)));
                        _406 = true;
                        break;
                    }
                    _321 = _320 + (_297 * 4.0f);
                    _327 = _366.w;
                    _320 = _321;
                    _323 += 4.0f;
                    _325 = _321;
                    _326 = _327;
                    continue;
                }
                else
                {
                    _405 = _325;
                    _406 = false;
                    break;
                }
            }
            bool4 _407 = _406.xxxx;
            float4 _411 = float4(_405, 1.0f);
            float4 _412 = float4(_405, 0.0f);
            float4 _413 = float4(_407.x ? _411.x : _412.x, _407.y ? _411.y : _412.y, _407.z ? _411.z : _412.z, _407.w ? _411.w : _412.w);
            float _502;
            float2 _503;
            float2 _504;
            [branch]
            if (_413.w == 1.0f)
            {
                float2 _418 = _413.xy;
                float _421 = _413.x;
                float _422 = _413.y;
                float _426 = min(1.0f - max(_421, _422), min(_421, _422));
                float _431 = _151 * clamp((_426 > _14_m1.y) ? 1.0f : (_426 / _14_m1.y), 0.0f, 1.0f);
                float2 _436 = _17.SampleLevel(_10, _418, 0.0f).xy;
                float2 _443 = (abs(_436) * 2.0f) - 1.0f.xx;
                float2 _444 = _443 * _443;
                float2 _450 = ((_444 * _444) * float2(int2(sign(_436 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _451 = _418 - _450;
                float4 _455 = _15.SampleLevel(_10, _451, 0.0f);
                float _456 = _455.x;
                float _501;
                if ((_456 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _465 = (_451 * 2.0f) - 1.0f.xx;
                    float4 _468 = float4(_465, _456, 1.0f);
                    _468.y = -_465.y;
                    float4 _471 = mul(_6_m16, _468);
                    float _476 = _413.z;
                    float2 _480 = (_418 * 2.0f) - 1.0f.xx;
                    float4 _483 = float4(_480, _476, 1.0f);
                    _483.y = -_480.y;
                    float4 _486 = mul(_6_m6, _483);
                    float _493 = 1.0f / ((_8_m2.z * _476) + _8_m2.w);
                    _501 = (length((_471.xyz / _471.w.xxx) - (_486.xyz / _486.w.xxx)) > max((_493 * _493) * 0.00999999977648258209228515625f, 0.25f)) ? 0.0f : _431;
                }
                else
                {
                    _501 = _431;
                }
                _502 = _501;
                _503 = _450;
                _504 = _451;
            }
            else
            {
                _502 = 0.0f;
                _503 = 0.0f.xx;
                _504 = _164;
            }
            float2 _509 = _17.SampleLevel(_10, _504, 0.0f).xy;
            float2 _516 = (abs(_509) * 2.0f) - 1.0f.xx;
            float2 _517 = _516 * _516;
            float _538 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _226) + (-1.0f))));
            float4 _541 = mul(_6_m6, _186);
            float4 _544 = _541 / _541.w.xxxx;
            float4 _552 = mul(_6_m6, float4((_413.xy * 2.0f) - 1.0f.xx, _413.z, 1.0f));
            float3 _559 = _544.xyz;
            float3 _561 = normalize(_6_m11.xyz - _559);
            float _562 = distance(_6_m11.xyz, _559);
            bool3 _566 = (abs(_223.z) < 0.999000012874603271484375f).xxx;
            float3 _569 = normalize(cross(float3(_566.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _566.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _566.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _223));
            float _571 = distance(_552 / _552.w.xxxx, _544);
            float3 _575 = cross(_569, _561);
            float3 _576 = -_561;
            float3 _580 = cos(_538).xxx;
            float _583 = sin(_538);
            float3 _587 = _6_m11.xyz - (_561 * _562);
            float3 _590 = cross(cross(_223, _569), _561);
            float4 _606 = mul(_6_m5, float4((_6_m11.xyz - (_561 * (_571 + _562))) - _6_m11.xyz, 1.0f));
            float2 _614 = (((_606.xy / _606.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _620 = mul(_6_m5, float4((_587 + ((lerp(_575 * dot(_575, _576), _576, _580) + (cross(_575, _576) * _583)) * _571)) - _6_m11.xyz, 1.0f));
            float4 _634 = mul(_6_m5, float4((_587 + ((lerp(_590 * dot(_590, _576), _576, _580) + (cross(_590, _576) * _583)) * _571)) - _6_m11.xyz, 1.0f));
            _657 = float2(exp((-length((((_517 * _517) * float2(int2(sign(_509 - 0.5f.xx)))) + _503) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _172) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_226 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_614, (((_620.xy / _620.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_614, (((_634.xy / _634.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));

            // RenoDX code start: favor sharper temporal data.

            if (shader_injection.improved_ssr >= 0.5f) _657.y = saturate((_657.y - 0.25f) / 0.75f);

            // RenoDX code end
            _658 = _502;
            _659 = _504;
            break;
        } while(false);
        _21[_134] = ApplyShaderDebugColor(_659);
        _22[_134] = _657;
        _24[_134] = _658;
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

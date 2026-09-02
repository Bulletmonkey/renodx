// RenoDX debug branch: shader category coloring.
#include "../shared.h"

// Endfield 1.5 Vulkan shader 0x9611100F, migrated from 1.4.4 shader 0x0CF65902.
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
[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> _22 : register(u0);
[[vk::binding(1, 0)]] [[vk::image_format("rg16")]] RWTexture2D<unorm float2> _24 : register(u1);
[[vk::binding(2, 0)]] [[vk::image_format("r8")]] RWTexture2D<unorm float> _26 : register(u2);

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
        uint _129 = uint(_14_m6.z) + gl_WorkGroupID.x;
        uint _131 = _20.Load(_129 * 4 + 0);
        uint2 _137 = (uint2((_131 >> 16u) & 65535u, _131 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_137.x >= uint(_14_m0.x)) || (_137.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _153 = _26[_137].xxxx;
        float _154 = _153.x;
        float _159 = max(ceil(_14_m3.x * 0.125f), 4.0f);

        // RenoDX code start: raise the low-quality ray floor.

        if (shader_injection.improved_ssr >= 0.5f) _159 = max(_159, 32.0f);

        // RenoDX code end
        int2 _160 = int2(_137);
        float2 _660;
        float _661;
        float2 _662;
        do
        {
            float2 _164 = float2(_160) + 0.5f.xx;
            float2 _167 = _164 * _14_m0.zw;
            if (_154 <= 0.001000000047497451305389404296875f)
            {
                _660 = 0.0f.xx;
                _661 = _154;
                _662 = _167;
                break;
            }
            float4 _174 = _17.SampleLevel(_10, _167, 0.0f);
            float _175 = _174.x;
            float2 _183 = (_167 * 2.0f) - 1.0f.xx;
            float _184 = _183.x;
            float3 _186 = float3(_184, _183.y, _175);
            float4 _189 = float4(_184, _183.y, _175, 1.0f);
            float4 _190 = mul(_6_m3, _189);
            float3 _194 = _190.xyz / _190.w.xxx;
            _194.y = -_194.y;
            float4 _204 = _19.Load(int3(int3(_160, 0).xy, 0));
            float2 _207 = (_204.xy * 2.0f) - 1.0f.xx;
            float _211 = 1.0f - dot(1.0f.xx, abs(_207));
            float3 _213 = float3(_207.x, _211, _207.y);
            float3 _225;
            if (_211 < 0.0f)
            {
                float2 _220 = _213.xz;
                bool2 _221 = bool2(_220.x >= 0.0f.xx.x, _220.y >= 0.0f.xx.y);
                float2 _223 = (1.0f.xx - abs(_213.zx)) * float2(_221.x ? 1.0f.xx.x : (-1.0f).xx.x, _221.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _225 = float3(_223.x, _213.y, _223.y);
            }
            else
            {
                _225 = _213;
            }
            float3 _226 = normalize(_225);
            float _227 = _204.z;
            float _228 = _227 * _227;
            float _229 = _228 * _228;
            float4 _248 = mul(_6_m2, float4(reflect(normalize(_194), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _226)), 0.0f));
            _248.y = -_248.y;
            float4 _252 = _248 + _189;
            float3 _257 = (_252.xyz / _252.w.xxx) - _186;
            float2 _258 = _186.xy;
            float2 _259 = _257.xy;
            float _261 = 0.5f * length(_259);
            float2 _270 = 1.0f.xx - (max(abs(_259 + (_258 * _261)) - _261.xx, 0.0f.xx) / abs(_259));
            float3 _275 = _257 * (min(_270.x, _270.y) / _261);
            float _286 = _275.z;
            float _289 = max(abs(_286) / _159, 9.9999997473787516355514526367188e-05f);
            float3 _300 = float3(_275.xy * 0.5f.xx, _286) * (1.0f / _159);
            float2 _304 = abs(_300.xy * _14_m0.xy);
            float _307 = max(_304.x, _304.y);
            float3 _313 = float3((_258 * 0.5f.xx) + 0.5f.xx, _175) + (_300 * ((_307 < 1.0f) ? (1.0f / (_307 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_164 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _321 = _313.z - _17.SampleLevel(_10, _313.xy, 0.0f).x;
            float3 _323;
            float3 _328;
            _323 = _313;
            _328 = 0.0f.xxx;
            float3 _324;
            float _330;
            float3 _408;
            bool _409;
            float _326 = 0.0f;
            float _329 = _321;
            for (;;)
            {
                if (_326 < _159)
                {
                    float4 _335 = _300.xyxy;
                    float4 _337 = _323.xyxy + (_335 * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _339 = _323.xyxy + (_335 * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _369 = (_323.zzzz + (_300.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_17.SampleLevel(_10, _337.xy, 0.0f).x, _17.SampleLevel(_10, _337.zw, 0.0f).x, _17.SampleLevel(_10, _339.xy, 0.0f).x, _17.SampleLevel(_10, _339.zw, 0.0f).x);
                    float4 _370 = _289.xxxx;
                    float4 _372 = abs(_369 + _370);
                    bool4 _373 = bool4(_372.x < _370.x, _372.y < _370.y, _372.z < _370.z, _372.w < _370.w);
                    [branch]
                    if (any(_373))
                    {
                        float _377 = _369.z;
                        bool _379 = _373.z;
                        float _383;
                        [flatten]
                        if (_379)
                        {
                            _383 = _369.y;
                        }
                        else
                        {
                            _383 = _377;
                        }
                        bool _386 = _373.y;
                        float _391;
                        float _392;
                        [flatten]
                        if (_386)
                        {
                            _391 = _369.y;
                            _392 = _369.x;
                        }
                        else
                        {
                            _391 = _379 ? _377 : _369.w;
                            _392 = _383;
                        }
                        bool _394 = _373.x;
                        float _398;
                        [flatten]
                        if (_394)
                        {
                            _398 = _369.x;
                        }
                        else
                        {
                            _398 = _391;
                        }
                        float _399 = _394 ? _329 : _392;
                        _408 = _323 + (_300 * ((_394 ? 0.0f : (_386 ? 1.0f : (_379 ? 2.0f : 3.0f))) + clamp(_399 / (_399 - _398), 0.0f, 1.0f)));
                        _409 = true;
                        break;
                    }
                    _324 = _323 + (_300 * 4.0f);
                    _330 = _369.w;
                    _323 = _324;
                    _326 += 4.0f;
                    _328 = _324;
                    _329 = _330;
                    continue;
                }
                else
                {
                    _408 = _328;
                    _409 = false;
                    break;
                }
            }
            bool4 _410 = _409.xxxx;
            float4 _414 = float4(_408, 1.0f);
            float4 _415 = float4(_408, 0.0f);
            float4 _416 = float4(_410.x ? _414.x : _415.x, _410.y ? _414.y : _415.y, _410.z ? _414.z : _415.z, _410.w ? _414.w : _415.w);
            float _505;
            float2 _506;
            float2 _507;
            [branch]
            if (_416.w == 1.0f)
            {
                float2 _421 = _416.xy;
                float _424 = _416.x;
                float _425 = _416.y;
                float _429 = min(1.0f - max(_424, _425), min(_424, _425));
                float _434 = _154 * clamp((_429 > _14_m1.y) ? 1.0f : (_429 / _14_m1.y), 0.0f, 1.0f);
                float2 _439 = _18.SampleLevel(_10, _421, 0.0f).xy;
                float2 _446 = (abs(_439) * 2.0f) - 1.0f.xx;
                float2 _447 = _446 * _446;
                float2 _453 = ((_447 * _447) * float2(int2(sign(_439 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _454 = _421 - _453;
                float4 _458 = _16.SampleLevel(_10, _454, 0.0f);
                float _459 = _458.x;
                float _504;
                if ((_459 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _468 = (_454 * 2.0f) - 1.0f.xx;
                    float4 _471 = float4(_468, _459, 1.0f);
                    _471.y = -_468.y;
                    float4 _474 = mul(_6_m16, _471);
                    float _479 = _416.z;
                    float2 _483 = (_421 * 2.0f) - 1.0f.xx;
                    float4 _486 = float4(_483, _479, 1.0f);
                    _486.y = -_483.y;
                    float4 _489 = mul(_6_m6, _486);
                    float _496 = 1.0f / ((_8_m2.z * _479) + _8_m2.w);
                    _504 = (length((_474.xyz / _474.w.xxx) - (_489.xyz / _489.w.xxx)) > max((_496 * _496) * 0.00999999977648258209228515625f, 0.25f)) ? 0.0f : _434;
                }
                else
                {
                    _504 = _434;
                }
                _505 = _504;
                _506 = _453;
                _507 = _454;
            }
            else
            {
                _505 = 0.0f;
                _506 = 0.0f.xx;
                _507 = _167;
            }
            float2 _512 = _18.SampleLevel(_10, _507, 0.0f).xy;
            float2 _519 = (abs(_512) * 2.0f) - 1.0f.xx;
            float2 _520 = _519 * _519;
            float _541 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _229) + (-1.0f))));
            float4 _544 = mul(_6_m6, _189);
            float4 _547 = _544 / _544.w.xxxx;
            float4 _555 = mul(_6_m6, float4((_416.xy * 2.0f) - 1.0f.xx, _416.z, 1.0f));
            float3 _562 = _547.xyz;
            float3 _564 = normalize(_6_m11.xyz - _562);
            float _565 = distance(_6_m11.xyz, _562);
            bool3 _569 = (abs(_226.z) < 0.999000012874603271484375f).xxx;
            float3 _572 = normalize(cross(float3(_569.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _569.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _569.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _226));
            float _574 = distance(_555 / _555.w.xxxx, _547);
            float3 _578 = cross(_572, _564);
            float3 _579 = -_564;
            float3 _583 = cos(_541).xxx;
            float _586 = sin(_541);
            float3 _590 = _6_m11.xyz - (_564 * _565);
            float3 _593 = cross(cross(_226, _572), _564);
            float4 _609 = mul(_6_m5, float4((_6_m11.xyz - (_564 * (_574 + _565))) - _6_m11.xyz, 1.0f));
            float2 _617 = (((_609.xy / _609.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _623 = mul(_6_m5, float4((_590 + ((lerp(_578 * dot(_578, _579), _579, _583) + (cross(_578, _579) * _586)) * _574)) - _6_m11.xyz, 1.0f));
            float4 _637 = mul(_6_m5, float4((_590 + ((lerp(_593 * dot(_593, _579), _579, _583) + (cross(_593, _579) * _586)) * _574)) - _6_m11.xyz, 1.0f));
            _660 = float2(exp((-length((((_520 * _520) * float2(int2(sign(_512 - 0.5f.xx)))) + _506) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _175) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_229 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_617, (((_623.xy / _623.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_617, (((_637.xy / _637.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));

            // RenoDX code start: favor sharper temporal data.

            if (shader_injection.improved_ssr >= 0.5f) _660.y = saturate((_660.y - 0.25f) / 0.75f);

            // RenoDX code end
            _661 = _505;
            _662 = _507;
            break;
        } while(false);
        float4 _666 = _15.SampleLevel(_10, _662, 0.0f);
        _22[_137] = ApplyShaderDebugColor(_666.xyz * (1.0f / (max(max(_666.x, _666.y), _666.z) + 1.0f)));
        _24[_137] = _660;
        _26[_137] = _661;
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

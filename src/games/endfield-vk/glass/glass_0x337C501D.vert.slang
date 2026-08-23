// Vulkan vertex shader 0x337C501D, decompiled from the matching game shader dump.

struct _27
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float4 _109 = 0.0f.xxxx;

[[vk::binding(12, 0)]]
cbuffer _22_23 : register(b12)
{
    column_major float4x4 _23_m0 : packoffset(c0);
    column_major float4x4 _23_m1 : packoffset(c4);
    column_major float4x4 _23_m2 : packoffset(c8);
    column_major float4x4 _23_m3 : packoffset(c12);
    column_major float4x4 _23_m4 : packoffset(c16);
    column_major float4x4 _23_m5 : packoffset(c20);
    column_major float4x4 _23_m6 : packoffset(c24);
    column_major float4x4 _23_m7 : packoffset(c28);
    column_major float4x4 _23_m8 : packoffset(c32);
    column_major float4x4 _23_m9 : packoffset(c36);
    column_major float4x4 _23_m10 : packoffset(c40);
    float4 _23_m11 : packoffset(c44);
    column_major float4x4 _23_m12 : packoffset(c45);
    column_major float4x4 _23_m13 : packoffset(c49);
    column_major float4x4 _23_m14 : packoffset(c53);
    column_major float4x4 _23_m15 : packoffset(c57);
    column_major float4x4 _23_m16 : packoffset(c61);
    column_major float4x4 _23_m17 : packoffset(c65);
    column_major float4x4 _23_m18 : packoffset(c69);
    column_major float4x4 _23_m19 : packoffset(c73);
    column_major float4x4 _23_m20 : packoffset(c77);
    float4 _23_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _24_25 : register(b16)
{
    float4 _25_m0 : packoffset(c0);
    float4 _25_m1 : packoffset(c1);
    float4 _25_m2 : packoffset(c2);
    float4 _25_m3 : packoffset(c3);
    float4 _25_m4 : packoffset(c4);
    float4 _25_m5 : packoffset(c5);
    float4 _25_m6[6] : packoffset(c6);
    float4 _25_m7[6] : packoffset(c12);
    float4 _25_m8 : packoffset(c18);
    float4 _25_m9 : packoffset(c19);
    float4 _25_m10 : packoffset(c20);
    float4 _25_m11 : packoffset(c21);
    float4 _25_m12 : packoffset(c22);
    float4 _25_m13 : packoffset(c23);
    float4 _25_m14 : packoffset(c24);
    float4 _25_m15 : packoffset(c25);
    float _25_m16 : packoffset(c26);
    float _25_m17 : packoffset(c26.y);
    float _25_m18 : packoffset(c26.z);
    uint _25_m19 : packoffset(c26.w);
    float4 _25_m20 : packoffset(c27);
    int4 _25_m21 : packoffset(c28);
    float4 _25_m22 : packoffset(c29);
    float4 _25_m23 : packoffset(c30);
    float4 _25_m24 : packoffset(c31);
    float4 _25_m25 : packoffset(c32);
    float4 _25_m26 : packoffset(c33);
    float4 _25_m27 : packoffset(c34);
    float4 _25_m28 : packoffset(c35);
    float4 _25_m29 : packoffset(c36);
    float4 _25_m30 : packoffset(c37);
    float4 _25_m31 : packoffset(c38);
    float4 _25_m32[4] : packoffset(c39);
    float4 _25_m33[4] : packoffset(c43);
    float4 _25_m34[4] : packoffset(c47);
    float4 _25_m35[4] : packoffset(c51);
    float4 _25_m36 : packoffset(c55);
    float4 _25_m37 : packoffset(c56);
    float4 _25_m38[4] : packoffset(c57);
    float4 _25_m39[4] : packoffset(c61);
    float4 _25_m40[4] : packoffset(c65);
    float4 _25_m41 : packoffset(c69);
    float4 _25_m42 : packoffset(c70);
    float4 _25_m43 : packoffset(c71);
    float4 _25_m44 : packoffset(c72);
    float4 _25_m45 : packoffset(c73);
    float4 _25_m46 : packoffset(c74);
    float4 _25_m47 : packoffset(c75);
    float4 _25_m48 : packoffset(c76);
    float4 _25_m49 : packoffset(c77);
    float4 _25_m50 : packoffset(c78);
    float4 _25_m51 : packoffset(c79);
    float4 _25_m52 : packoffset(c80);
    float4 _25_m53 : packoffset(c81);
    float4 _25_m54 : packoffset(c82);
    float4 _25_m55 : packoffset(c83);
    float4 _25_m56 : packoffset(c84);
    float4 _25_m57 : packoffset(c85);
    float4 _25_m58 : packoffset(c86);
    float4 _25_m59 : packoffset(c87);
    float4 _25_m60 : packoffset(c88);
    float4 _25_m61 : packoffset(c89);
    float4 _25_m62 : packoffset(c90);
    float4 _25_m63 : packoffset(c91);
    float4 _25_m64 : packoffset(c92);
    float4 _25_m65 : packoffset(c93);
    float4 _25_m66 : packoffset(c94);
    float4 _25_m67 : packoffset(c95);
    float4 _25_m68 : packoffset(c96);
    float4 _25_m69 : packoffset(c97);
    float4 _25_m70 : packoffset(c98);
    float4 _25_m71 : packoffset(c99);
    float4 _25_m72 : packoffset(c100);
    float4 _25_m73 : packoffset(c101);
    float4 _25_m74 : packoffset(c102);
    float4 _25_m75 : packoffset(c103);
    float4 _25_m76 : packoffset(c104);
    float4 _25_m77 : packoffset(c105);
    float4 _25_m78 : packoffset(c106);
    float4 _25_m79 : packoffset(c107);
    float4 _25_m80 : packoffset(c108);
    float4 _25_m81 : packoffset(c109);
    float4 _25_m82 : packoffset(c110);
    float4 _25_m83 : packoffset(c111);
    float4 _25_m84 : packoffset(c112);
    float4 _25_m85 : packoffset(c113);
    float4 _25_m86 : packoffset(c114);
    float4 _25_m87 : packoffset(c115);
    float4 _25_m88 : packoffset(c116);
    float4 _25_m89 : packoffset(c117);
    float4 _25_m90 : packoffset(c118);
    float4 _25_m91 : packoffset(c119);
    float4 _25_m92 : packoffset(c120);
    float4 _25_m93 : packoffset(c121);
    float4 _25_m94 : packoffset(c122);
    float4 _25_m95 : packoffset(c123);
    float4 _25_m96 : packoffset(c124);
    float4 _25_m97 : packoffset(c125);
    float4 _25_m98 : packoffset(c126);
    float4 _25_m99[2] : packoffset(c127);
    float4 _25_m100[2] : packoffset(c129);
    float _25_m101 : packoffset(c131);
    float _25_m102 : packoffset(c131.y);
    float _25_m103 : packoffset(c131.z);
    float _25_m104 : packoffset(c131.w);
    float4 _25_m105 : packoffset(c132);
    float4 _25_m106 : packoffset(c133);
    float4 _25_m107 : packoffset(c134);
    float4 _25_m108 : packoffset(c135);
    float4 _25_m109 : packoffset(c136);
    float4 _25_m110 : packoffset(c137);
    float4 _25_m111 : packoffset(c138);
    float4 _25_m112 : packoffset(c139);
    float4 _25_m113 : packoffset(c140);
    float4 _25_m114 : packoffset(c141);
    float4 _25_m115 : packoffset(c142);
    float4 _25_m116 : packoffset(c143);
    float4 _25_m117 : packoffset(c144);
    float4 _25_m118 : packoffset(c145);
    float4 _25_m119 : packoffset(c146);
    float4 _25_m120 : packoffset(c147);
    float4 _25_m121 : packoffset(c148);
    float4 _25_m122 : packoffset(c149);
    float4 _25_m123 : packoffset(c150);
    float4 _25_m124 : packoffset(c151);
    float4 _25_m125 : packoffset(c152);
    float4 _25_m126 : packoffset(c153);
    float4 _25_m127 : packoffset(c154);
    float4 _25_m128 : packoffset(c155);
    float4 _25_m129 : packoffset(c156);
    float4 _25_m130 : packoffset(c157);
    float4 _25_m131 : packoffset(c158);
    float4 _25_m132 : packoffset(c159);
    float4 _25_m133 : packoffset(c160);
    float4 _25_m134 : packoffset(c161);
    column_major float4x4 _25_m135 : packoffset(c162);
    float4 _25_m136 : packoffset(c166);
    float4 _25_m137 : packoffset(c167);
    float4 _25_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _26_28 : register(b0)
{
    _27 _28_m0[256] : packoffset(c0);
};

[[vk::binding(18, 0)]]
ByteAddressBuffer _30 : register(t18);

static float4 gl_Position;
static int gl_InstanceIndex;
static float3 _3;
static float3 _4;
static float4 _5;
static float4 _6;
static float2 _7;
static float2 _8;
static float4 _9;
static float4 _10;
static uint4 _11;
static float2 _14;
static float2 _15;
static float3 _16;
static float4 _17;
static float4 _18;
static float3 _19;
static float3 _20;
static uint _21;

struct SPIRV_Cross_Input
{
    float3 _3 : TEXCOORD0;
    float3 _4 : TEXCOORD1;
    float4 _5 : TEXCOORD2;
    float4 _6 : TEXCOORD3;
    float2 _7 : TEXCOORD4;
    float2 _8 : TEXCOORD5;
    float4 _9 : TEXCOORD6;
    float4 _10 : TEXCOORD7;
    uint4 _11 : TEXCOORD8;
    uint gl_InstanceIndex : SV_InstanceID;
};

struct SPIRV_Cross_Output
{
    float2 _14 : TEXCOORD0;
    float2 _15 : TEXCOORD1;
    float3 _16 : TEXCOORD2;
    float4 _17 : TEXCOORD3;
    float4 _18 : TEXCOORD4;
    float3 _19 : TEXCOORD5;
    float3 _20 : TEXCOORD6;
    nointerpolation uint _21 : TEXCOORD7;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    uint _122 = asuint(_4.x);
    bool _124 = (_122 & 1073741824u) > 0u;
    float4 _197;
    float3 _198;
    if (_124)
    {
        float _130 = float((_122 << 22u) >> 22u);
        float _133 = float((_122 << 12u) >> 22u);
        float _136 = float((_122 << 2u) >> 22u);
        float3 _150 = float3((_130 >= 512.0f) ? (_130 - 1024.0f) : _130, (_133 >= 512.0f) ? (_133 - 1024.0f) : _133, 0.0f) * 0.001956947147846221923828125f;
        float _156 = (1.0f - abs(_150.x)) - abs(_150.y);
        float3 _157 = _150;
        _157.z = _156;
        bool2 _159 = (_156 < 0.0f).xx;
        float2 _167 = (1.0f.xx - abs(_157.yx)) * ((step(0.0f.xx, _157.xy) * 2.0f) - 1.0f.xx);
        float2 _168 = float2(_159.x ? _167.x : _157.xy.x, _159.y ? _167.y : _157.xy.y);
        float3 _170 = normalize(float3(_168.x, _168.y, _157.z));
        float _171 = ((_136 >= 512.0f) ? (_136 - 1024.0f) : _136) * 0.001956947147846221923828125f;
        float3 _174 = _170.yzx - _170.zxy;
        float3 _178 = normalize(_174 - dot(_174, _170).xxx);
        float _183 = (_171 < 0.0f) ? (-1.0f) : 1.0f;
        float _186 = 1.0f - ((_171 * _183) * 2.0f);
        float3 _192 = mul(normalize(float2(_186, _183 * (1.0f - abs(_186)))), float2x3(_178, normalize(cross(_170, _178))));
        float4 _193 = float4(_192.x, _192.y, _192.z, _109.w);
        _193.w = (float((_122 >> 31u) & 1u) * 2.0f) - 1.0f;
        _197 = _193;
        _198 = _170;
    }
    else
    {
        _197 = 0.0f.xxxx;
        _198 = _4;
    }
    bool4 _199 = _124.xxxx;
    float4 _200 = float4(_199.x ? _197.x : _5.x, _199.y ? _197.y : _5.y, _199.z ? _197.z : _5.z, _199.w ? _197.w : _5.w);
    float4 _392;
    float3 _393;
    float3 _394;
    float3 _395;
    do
    {
        float4 _207 = float4(_3, 1.0f);
        uint _210 = asuint(_28_m0[uint(gl_InstanceIndex)]._m1.w);
        uint _211 = _210 & 4294967247u;
        if (((_210 & 32u) == 0u) || (_211 == 0u))
        {
            _392 = _200;
            _393 = _3;
            _394 = _9.xyz;
            _395 = _198;
            break;
        }
        uint4 _227 = _11 * uint4(3u, 3u, 3u, 3u);
        uint4 _228 = (asuint(_28_m0[uint(gl_InstanceIndex)]._m2.x) + 3u).xxxx + _227;
        uint4 _230 = (asuint(_28_m0[uint(gl_InstanceIndex)]._m2.y) + 3u).xxxx + _227;
        uint _231 = _228.x;
        uint _234 = _231 + 1u;
        uint _237 = _231 + 2u;
        uint _240 = _230.x;
        uint _243 = _240 + 1u;
        uint _246 = _240 + 2u;
        float4 _292;
        float4 _293;
        float4 _294;
        float4 _295;
        float4 _296;
        float4 _297;
        if (_211 >= 2u)
        {
            uint _255 = _228.y;
            uint _275 = _230.y;
            _292 = (asfloat(_30.Load4(_246 * 16 + 0)) * _10.x) + (asfloat(_30.Load4((_275 + 2u) * 16 + 0)) * _10.y);
            _293 = (asfloat(_30.Load4(_243 * 16 + 0)) * _10.x) + (asfloat(_30.Load4((_275 + 1u) * 16 + 0)) * _10.y);
            _294 = (asfloat(_30.Load4(_240 * 16 + 0)) * _10.x) + (asfloat(_30.Load4(_275 * 16 + 0)) * _10.y);
            _295 = (asfloat(_30.Load4(_237 * 16 + 0)) * _10.x) + (asfloat(_30.Load4((_255 + 2u) * 16 + 0)) * _10.y);
            _296 = (asfloat(_30.Load4(_234 * 16 + 0)) * _10.x) + (asfloat(_30.Load4((_255 + 1u) * 16 + 0)) * _10.y);
            _297 = (asfloat(_30.Load4(_231 * 16 + 0)) * _10.x) + (asfloat(_30.Load4(_255 * 16 + 0)) * _10.y);
        }
        else
        {
            _292 = asfloat(_30.Load4(_246 * 16 + 0));
            _293 = asfloat(_30.Load4(_243 * 16 + 0));
            _294 = asfloat(_30.Load4(_240 * 16 + 0));
            _295 = asfloat(_30.Load4(_237 * 16 + 0));
            _296 = asfloat(_30.Load4(_234 * 16 + 0));
            _297 = asfloat(_30.Load4(_231 * 16 + 0));
        }
        float4 _365;
        float4 _366;
        float4 _367;
        float4 _368;
        float4 _369;
        float4 _370;
        if (_211 >= 4u)
        {
            uint _301 = _228.z;
            uint _307 = _228.w;
            uint _335 = _230.z;
            uint _339 = _230.w;
            _365 = _292 + ((asfloat(_30.Load4((_335 + 2u) * 16 + 0)) * _10.z) + (asfloat(_30.Load4((_339 + 2u) * 16 + 0)) * _10.w));
            _366 = _293 + ((asfloat(_30.Load4((_335 + 1u) * 16 + 0)) * _10.z) + (asfloat(_30.Load4((_339 + 1u) * 16 + 0)) * _10.w));
            _367 = _294 + ((asfloat(_30.Load4(_335 * 16 + 0)) * _10.z) + (asfloat(_30.Load4(_339 * 16 + 0)) * _10.w));
            _368 = _295 + ((asfloat(_30.Load4((_301 + 2u) * 16 + 0)) * _10.z) + (asfloat(_30.Load4((_307 + 2u) * 16 + 0)) * _10.w));
            _369 = _296 + ((asfloat(_30.Load4((_301 + 1u) * 16 + 0)) * _10.z) + (asfloat(_30.Load4((_307 + 1u) * 16 + 0)) * _10.w));
            _370 = _297 + ((asfloat(_30.Load4(_301 * 16 + 0)) * _10.z) + (asfloat(_30.Load4(_307 * 16 + 0)) * _10.w));
        }
        else
        {
            _365 = _292;
            _366 = _293;
            _367 = _294;
            _368 = _295;
            _369 = _296;
            _370 = _297;
        }
        float3 _386 = _200.xyz;
        float3 _390 = float3(dot(_370.xyz, _386), dot(_369.xyz, _386), dot(_368.xyz, _386));
        _392 = float4(_390.x, _390.y, _390.z, _200.w);
        _393 = float3(dot(_370, _207), dot(_369, _207), dot(_368, _207));
        _394 = float3(dot(_367, _207), dot(_366, _207), dot(_365, _207));
        _395 = float3(dot(_370.xyz, _198), dot(_369.xyz, _198), dot(_368.xyz, _198));
        break;
    } while(false);
    float3x3 _404 = float3x3(_28_m0[uint(gl_InstanceIndex)]._m0[0].xyz, _28_m0[uint(gl_InstanceIndex)]._m0[1].xyz, _28_m0[uint(gl_InstanceIndex)]._m0[2].xyz);
    float3 _414 = mul(_404, _393) + (float3(_28_m0[uint(gl_InstanceIndex)]._m0[0].w, _28_m0[uint(gl_InstanceIndex)]._m0[1].w, _28_m0[uint(gl_InstanceIndex)]._m0[2].w) - _23_m11.xyz);
    float3 _423 = mul(_404, float3(1.0f / dot(_28_m0[uint(gl_InstanceIndex)]._m0[0].xyz, _28_m0[uint(gl_InstanceIndex)]._m0[0].xyz), 1.0f / dot(_28_m0[uint(gl_InstanceIndex)]._m0[1].xyz, _28_m0[uint(gl_InstanceIndex)]._m0[1].xyz), 1.0f / dot(_28_m0[uint(gl_InstanceIndex)]._m0[2].xyz, _28_m0[uint(gl_InstanceIndex)]._m0[2].xyz)) * _395);
    float3 _429 = mul(_404, _392.xyz);
    float4 _450 = mul(_23_m8, float4(_414, 1.0f));
    float2 _458 = _450.xy - ((_25_m9.zw * float2(2.0f, -2.0f)) * _450.w);
    float4 _459 = float4(_458.x, _458.y, _450.z, _450.w);
    bool3 _464 = (_28_m0[uint(gl_InstanceIndex)]._m4.x < 1.0f).xxx;
    bool4 _470 = (_28_m0[uint(gl_InstanceIndex)]._m4.y < 1.0f).xxxx;
    float4 _479 = float4(_414 + (_23_m11.xyz - _23_m21.xyz), 1.0f);
    float4 _499 = float4(mul(float3x3(_28_m0[uint(gl_InstanceIndex)]._m3[0].xyz, _28_m0[uint(gl_InstanceIndex)]._m3[1].xyz, _28_m0[uint(gl_InstanceIndex)]._m3[2].xyz), float3(_464.x ? _393.x : _394.xyz.x, _464.y ? _393.y : _394.xyz.y, _464.z ? _393.z : _394.xyz.z)) + (float3(_28_m0[uint(gl_InstanceIndex)]._m3[0].w, _28_m0[uint(gl_InstanceIndex)]._m3[1].w, _28_m0[uint(gl_InstanceIndex)]._m3[2].w) - _23_m21.xyz), 1.0f);
    _459.y = -_458.y;
    gl_Position = _459;
    _14 = _7;
    _15 = _8;
    _16 = _423 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_423, _423)));
    _17 = float4(_429 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_429, _429))), _392.w * ((_28_m0[uint(gl_InstanceIndex)]._m2.w >= 0.0f) ? 1.0f : (-1.0f)));
    _18 = _6;
    _19 = _450.xyw;
    _20 = mul(_23_m15, float4(_470.x ? _479.x : _499.x, _470.y ? _479.y : _499.y, _470.z ? _479.z : _499.z, _470.w ? _479.w : _499.w)).xyw;
    _21 = uint(gl_InstanceIndex);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_InstanceIndex = int(stage_input.gl_InstanceIndex);
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _11 = stage_input._11;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output._14 = _14;
    stage_output._15 = _15;
    stage_output._16 = _16;
    stage_output._17 = _17;
    stage_output._18 = _18;
    stage_output._19 = _19;
    stage_output._20 = _20;
    stage_output._21 = _21;
    return stage_output;
}

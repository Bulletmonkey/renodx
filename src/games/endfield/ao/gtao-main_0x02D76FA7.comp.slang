// Endfield 1.5 Vulkan GTAO main pass.
// This permutation reconstructs its normal from depth and no longer binds the
// normal texture used by the older 0x902C57D5 permutation.

[[vk::binding(0, 1)]]
cbuffer _4_5 : register(b0)
{
    column_major float4x4 _5_m0 : packoffset(c0);
    column_major float4x4 _5_m1 : packoffset(c4);
    column_major float4x4 _5_m2 : packoffset(c8);
    column_major float4x4 _5_m3 : packoffset(c12);
    column_major float4x4 _5_m4 : packoffset(c16);
    column_major float4x4 _5_m5 : packoffset(c20);
    column_major float4x4 _5_m6 : packoffset(c24);
    column_major float4x4 _5_m7 : packoffset(c28);
    column_major float4x4 _5_m8 : packoffset(c32);
    column_major float4x4 _5_m9 : packoffset(c36);
    column_major float4x4 _5_m10 : packoffset(c40);
    float4 _5_m11 : packoffset(c44);
    column_major float4x4 _5_m12 : packoffset(c45);
    column_major float4x4 _5_m13 : packoffset(c49);
    column_major float4x4 _5_m14 : packoffset(c53);
    column_major float4x4 _5_m15 : packoffset(c57);
    column_major float4x4 _5_m16 : packoffset(c61);
    column_major float4x4 _5_m17 : packoffset(c65);
    column_major float4x4 _5_m18 : packoffset(c69);
    column_major float4x4 _5_m19 : packoffset(c73);
    column_major float4x4 _5_m20 : packoffset(c77);
    float4 _5_m21 : packoffset(c81);
};

[[vk::binding(1, 1)]]
cbuffer _9_10 : register(b1)
{
    float4 _10_m0 : packoffset(c0);
    float4 _10_m1 : packoffset(c1);
    float4 _10_m2 : packoffset(c2);
    float4 _10_m3 : packoffset(c3);
    float4 _10_m4 : packoffset(c4);
};

[[vk::binding(3, 0)]] SamplerState _7 : register(s3);
[[vk::binding(2, 0)]] Texture2D<float4> _11 : register(t2);
[[vk::binding(0, 0)]] RWTexture2D<unorm float> _13 : register(u0);
[[vk::binding(1, 0)]] RWTexture2D<unorm float> _14 : register(u1);

#include "../shared.h"

static const float BM_HALF_PI = 1.5707963267948966f;
static const float BM_PI = 3.1415926535897932f;
static const float BM_NUM_BITS = 32.0f;

float BM_FastSqrt(float x)
{
    return asfloat(0x1fbd1df5 + (asint(x) >> 1));
}

float BM_FastACos(float inX)
{
    float x = abs(inX);
    float result = (-0.156583f * x + BM_HALF_PI) * BM_FastSqrt(1.0f - x);
    return (inX >= 0.0f) ? result : BM_PI - result;
}

uint BM_UpdateSectors(float minHorizon, float maxHorizon, uint bitmask)
{
    int startBit = clamp((int)(minHorizon * BM_NUM_BITS), 0, 31);
    int numBits = clamp((int)round((maxHorizon - minHorizon) * BM_NUM_BITS), 0, 32 - startBit);
    if (numBits > 0)
    {
        bitmask |= (0xFFFFFFFFu >> (32u - (uint)numBits)) << (uint)startBit;
    }
    return bitmask;
}

void BM_ProcessSample(
    float3 deltaPos,
    float3 viewVec,
    float samplingDir,
    float normalAngle,
    float thickness,
    inout uint bitmask)
{
    float3 deltaPosBack = deltaPos - viewVec * thickness;
    float2 frontBackH = float2(
        BM_FastACos(dot(normalize(deltaPos), viewVec)),
        BM_FastACos(dot(normalize(deltaPosBack), viewVec)));
    frontBackH = saturate((samplingDir * -frontBackH - normalAngle.xx + BM_HALF_PI) / BM_PI);
    frontBackH = (samplingDir >= 0.0f) ? frontBackH.yx : frontBackH.xy;
    frontBackH = smoothstep(0.0f, 1.0f, frontBackH);
    bitmask = BM_UpdateSectors(frontBackH.x, frontBackH.y, bitmask);
}

[numthreads(8, 8, 1)]
void main(uint3 vThreadID : SV_DispatchThreadID)
{
    bool useImproved = IMPROVED_GTAO >= 0.5f;
    float aoRadius = useImproved ? AO_RADIUS : _10_m0.x;
    float aoRadiusScale = useImproved ? AO_RADIUS_SCALE : _10_m0.y;
    float aoFalloffRange = useImproved ? AO_FALLOFF_RANGE : _10_m0.z;
    float aoDistributionPower = useImproved ? AO_DISTRIBUTION_POWER : _10_m0.w;
    float aoThinOccluder = useImproved ? AO_THIN_OCCLUDER : _10_m1.x;
    float aoGamma = useImproved ? AO_GAMMA : _10_m1.y;
    float aoMipBias = useImproved ? AO_MIP_BIAS : _10_m1.w;
    float aoThickness = useImproved ? AO_THICKNESS : 1.3f;
    float aoDirectionCount = useImproved ? AO_DIRECTION_COUNT : 3.0f;
    float aoStepPairCount = useImproved ? AO_STEP_COUNT * 0.5f : 3.0f;
    float aoNormalAttenuation = useImproved ? AO_NORMAL_ATTENUATION : 0.05f;
    float aoMaxMip = useImproved ? 4.0f : _10_m3.x - 1.0f;
    bool useBitmask = useImproved && (AO_BITMASK >= 0.5f);

    uint hilbertIndex = 0u;
    uint hilbertY = vThreadID.y;
    uint hilbertX = vThreadID.x;
    for (uint scale = 32u; scale > 0u; scale /= 2u)
    {
        uint rx = uint((hilbertX & scale) > 0u);
        uint ry = uint((hilbertY & scale) > 0u);
        hilbertIndex += (scale * scale) * ((3u * rx) ^ ry);
        if (ry == 0u)
        {
            if (rx == 1u)
            {
                hilbertY = 63u - hilbertY;
                hilbertX = 63u - hilbertX;
            }
            uint swapValue = hilbertX;
            hilbertX = hilbertY;
            hilbertY = swapValue;
        }
    }

    float2 noise = frac(
        0.5f.xx
        + float2(0.7548776865f, 0.5698403120f)
            * float(hilbertIndex + 288u * (uint(_10_m1.z) % 64u)));
    float2 pixel = float2(vThreadID.xy);
    float2 centerUV = (pixel + 0.5f.xx) * _10_m4.zw;
    float2 cornerUV = pixel * _10_m4.zw;

    float4 depthGather = _11.GatherRed(_7, cornerUV);
    float4 depthDiagonal = _11.GatherRed(_7, cornerUV, int2(1, 1));
    float centerDepth = depthGather.y;
    float4 depthDelta = float4(depthGather.x, depthDiagonal.z, depthGather.z, depthDiagonal.x) - centerDepth.xxxx;
    float horizontalPair = depthDelta.y - depthDelta.x;
    float verticalPair = depthDelta.w - depthDelta.z;
    float4 edgeStrength = saturate(
        1.25f.xxxx
        - min(
              abs(depthDelta),
              abs(depthDelta + float4(
                  horizontalPair * 0.5f,
                  horizontalPair * -0.5f,
                  verticalPair * 0.5f,
                  verticalPair * -0.5f)))
            / (centerDepth * 0.01099999994f).xxxx);
    _14[vThreadID.xy] = dot(
        round(edgeStrength * 2.900000095f),
        float4(0.250980407f, 0.062745102f, 0.015686275f, 0.003921569f));

    float2 centerProjected = mul(_5_m3, float4(centerUV * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy;
    float2 centerXY = centerProjected * centerDepth;
    float3 centerPosition = float3(centerXY.x, -centerXY.y, centerDepth);

    float leftDepth = depthGather.x;
    float rightDepth = depthDiagonal.z;
    float upDepth = depthGather.z;
    float downDepth = depthDiagonal.x;
    float2 leftXY = mul(_5_m3, float4((centerUV + float2(-1.0f, 0.0f) * _10_m4.zw) * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * leftDepth;
    float2 rightXY = mul(_5_m3, float4((centerUV + float2(1.0f, 0.0f) * _10_m4.zw) * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * rightDepth;
    float2 upXY = mul(_5_m3, float4((centerUV + float2(0.0f, -1.0f) * _10_m4.zw) * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * upDepth;
    float2 downXY = mul(_5_m3, float4((centerUV + float2(0.0f, 1.0f) * _10_m4.zw) * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * downDepth;

    float4 edgeWeights = saturate(float4(
        edgeStrength.x * edgeStrength.z,
        edgeStrength.z * edgeStrength.y,
        edgeStrength.y * edgeStrength.w,
        edgeStrength.w * edgeStrength.x) + 0.01f.xxxx);
    float3 leftDirection = normalize(float3(leftXY.x, -leftXY.y, leftDepth) - centerPosition);
    float3 rightDirection = normalize(float3(rightXY.x, -rightXY.y, rightDepth) - centerPosition);
    float3 upDirection = normalize(float3(upXY.x, -upXY.y, upDepth) - centerPosition);
    float3 downDirection = normalize(float3(downXY.x, -downXY.y, downDepth) - centerPosition);
    float3 normal = -normalize(
        cross(leftDirection, upDirection) * edgeWeights.x
        + cross(upDirection, rightDirection) * edgeWeights.y
        + cross(rightDirection, downDirection) * edgeWeights.z
        + cross(downDirection, leftDirection) * edgeWeights.w);

    float linearDepth = centerDepth * 0.9999899864f;
    float2 positionXY = centerProjected * linearDepth;
    float3 position = float3(positionXY.x, -positionXY.y, linearDepth);
    float3 viewDirection = normalize(-position);
    float2 adjacentXY = mul(_5_m3, float4((centerUV + _10_m4.zw) * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * linearDepth;
    float projectedPixelSize = adjacentXY.x - position.x;

    float radiusPixels = min((aoRadius * aoRadiusScale) / projectedPixelSize, 48.0f);
    float radiusWorld = radiusPixels * projectedPixelSize;
    float falloffWorld = aoFalloffRange * radiusWorld;
    float inverseFalloff = -1.0f / falloffWorld;
    float falloffBias = (radiusWorld * (1.0f - aoFalloffRange)) / falloffWorld + 1.0f;
    float viewDistance = length(position);
    float scaledThickness = aoThickness * (useImproved
        ? 1.0f + max(0.0f, viewDistance - 100.0f) * 0.02f
        : 1.0f);
    float thicknessPixels = scaledThickness / radiusPixels;
    float ao = saturate((10.0f - radiusPixels) * 0.01f) * 0.5f;

    for (float directionIndex = 0.0f; directionIndex < aoDirectionCount; directionIndex += 1.0f)
    {
        float directionAngle = (directionIndex + noise.x) * (BM_PI / aoDirectionCount);
        float2 sampleDirection = float2(cos(directionAngle), sin(directionAngle));
        float2 sampleRadius = sampleDirection * radiusPixels;
        float3 directionPlane = float3(sampleDirection, 0.0f);
        float3 projectedDirection = directionPlane - viewDirection * dot(directionPlane, viewDirection);
        float3 sliceNormal = normalize(cross(projectedDirection, viewDirection));
        float3 projectedNormal = normal - sliceNormal * dot(normal, sliceNormal);
        float projectedNormalLength = length(projectedNormal);
        float normalCos = saturate(dot(projectedNormal, viewDirection) / projectedNormalLength);
        float normalAngle = float(int(sign(dot(projectedDirection, projectedNormal))))
            * clamp(BM_FastACos(normalCos), 0.0f, BM_PI);
        float horizonNegative = cos(normalAngle + BM_HALF_PI);
        float horizonPositive = cos(normalAngle - BM_HALF_PI);
        uint bitmask = 0u;

        for (float stepIndex = 0.0f; stepIndex < aoStepPairCount; stepIndex += 1.0f)
        {
            float stepDistribution = pow(
                (stepIndex + frac(noise.y + (directionIndex + stepIndex * aoStepPairCount) * 0.6180340052f))
                    / aoStepPairCount,
                aoDistributionPower);
            float2 sampleOffset = sampleRadius * (stepDistribution + thicknessPixels);
            float sampleMip = clamp(log2(length(sampleOffset)) - aoMipBias, 0.0f, aoMaxMip);
            float2 roundedOffset = round(sampleOffset) * _10_m4.zw;
            float2 positiveUV = centerUV + roundedOffset;
            float positiveDepth = _11.SampleLevel(_7, positiveUV, sampleMip).x;
            float2 positiveXY = mul(_5_m3, float4(positiveUV * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * positiveDepth;
            float3 positiveDelta = float3(positiveXY.x, -positiveXY.y, positiveDepth) - position;

            float2 negativeUV = centerUV - roundedOffset;
            float negativeDepth = _11.SampleLevel(_7, negativeUV, sampleMip).x;
            float2 negativeXY = mul(_5_m3, float4(negativeUV * 2.0f - 1.0f.xx, 1.0f, 1.0f)).xy * negativeDepth;
            float3 negativeDelta = float3(negativeXY.x, -negativeXY.y, negativeDepth) - position;

            if (useBitmask)
            {
                BM_ProcessSample(positiveDelta, viewDirection, -1.0f, normalAngle, scaledThickness, bitmask);
                BM_ProcessSample(negativeDelta, viewDirection, 1.0f, normalAngle, scaledThickness, bitmask);
            }
            else
            {
                float thinOccluderScale = 1.0f + aoThinOccluder;
                float positiveFalloff = saturate(
                    length(float3(positiveDelta.xy, positiveDelta.z * thinOccluderScale)) * inverseFalloff
                    + falloffBias);
                float negativeFalloff = saturate(
                    length(float3(negativeDelta.xy, negativeDelta.z * thinOccluderScale)) * inverseFalloff
                    + falloffBias);
                horizonNegative = max(
                    horizonNegative,
                    lerp(
                        cos(normalAngle + BM_HALF_PI),
                        dot(normalize(positiveDelta), viewDirection),
                        positiveFalloff));
                horizonPositive = max(
                    horizonPositive,
                    lerp(
                        cos(normalAngle - BM_HALF_PI),
                        dot(normalize(negativeDelta), viewDirection),
                        negativeFalloff));
            }
        }

        if (useBitmask)
        {
            ao += 1.0f - (float)countbits(bitmask) / BM_NUM_BITS;
        }
        else
        {
            float horizonPositiveAngle = -2.0f * clamp(BM_FastACos(horizonPositive), 0.0f, BM_PI);
            float horizonNegativeAngle = 2.0f * clamp(BM_FastACos(horizonNegative), 0.0f, BM_PI);
            float sinNormal = sin(normalAngle);
            float conventionalAO =
                ((normalCos + horizonPositiveAngle * sinNormal) - cos(horizonPositiveAngle - normalAngle))
                + ((normalCos + horizonNegativeAngle * sinNormal) - cos(horizonNegativeAngle - normalAngle));
            ao += lerp(projectedNormalLength, 1.0f, aoNormalAttenuation) * conventionalAO * 0.25f;
        }
    }

    float outputAO = saturate(max(0.03f, pow(abs(ao / aoDirectionCount), aoGamma)) * (2.0f / 3.0f));
    if (shader_injection.disable_game_ao >= 0.5f)
    {
        outputAO = 1.0f;
    }
    _13[vThreadID.xy] = outputAO;
}

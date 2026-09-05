#ifndef ENDFIELD_GTAO_BITMASK_HLSLI
#define ENDFIELD_GTAO_BITMASK_HLSLI
static const float BM_HALF_PI = 1.5707963267948966;
static const float BM_PI = 3.1415926535897932;
static const float BM_NUM_BITS = 32.0;

float BM_FastSqrt(float x) {
  return asfloat(0x1fbd1df5 + (asint(x) >> 1));
}

float BM_FastACos(float inX) {
  float x = abs(inX);
  float res = -0.156583 * x + BM_HALF_PI;
  res *= BM_FastSqrt(1.0 - x);
  return (inX >= 0) ? res : BM_PI - res;
}

uint BM_UpdateSectors(float minHorizon, float maxHorizon, uint bm) {
  int startBit = (int)(minHorizon * BM_NUM_BITS);
  int numBits = max((int)(round((maxHorizon - minHorizon) * BM_NUM_BITS)), 0);
  startBit = clamp(startBit, 0, 31);
  numBits = clamp(numBits, 0, 32 - startBit);
  if (numBits > 0) {
    /*
    Previous RenoDX code:
    uint mask = ((1u << (uint)numBits) - 1u) << (uint)startBit;
    */
    // RenoDX code: Avoid an undefined 32-bit shift when all sectors are covered.
    uint mask = (0xFFFFFFFFu >> (32u - (uint)numBits)) << (uint)startBit;
    bm |= mask;
  }
  return bm;
}

void BM_ProcessSample(float3 deltaPos, float3 viewVec, float samplingDir, float n, float thickness, inout uint bm) {
  float3 deltaPosBack = deltaPos - viewVec * thickness;
  float2 frontBackH = float2(
    BM_FastACos(dot(normalize(deltaPos), viewVec)),
    BM_FastACos(dot(normalize(deltaPosBack), viewVec))
  );
  float2 N = float2(n, n);
  frontBackH = saturate((samplingDir * -frontBackH - N + BM_HALF_PI) / BM_PI);
  frontBackH = (samplingDir >= 0.0) ? frontBackH.yx : frontBackH.xy;
  frontBackH = smoothstep(0.0, 1.0, frontBackH);
  bm = BM_UpdateSectors(frontBackH.x, frontBackH.y, bm);
}
#endif

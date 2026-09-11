// A separate render of the existing scene pass, not a conversion of its HDR output.
#define ENDFIELD_SDR_PHOTO
#define main RenderPhotoScene
#include "../endfield/uberpost/uberpost_0x8E8A5512.frag.slang"
#undef main

void main(float4 position : SV_Position, float2 uv : TEXCOORD0,
          out float4 color : SV_Target0) {
  // Export linear BT.709 with white=1. The PNG writer applies sRGB once.
  RenderPhotoScene(position, uv, color);
  color.a = 1.f;
}

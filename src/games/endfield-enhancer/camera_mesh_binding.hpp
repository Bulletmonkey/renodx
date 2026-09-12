// Candidate visible/shadow mesh bindings. No bone or shader modifications.
struct Binding {
  uint32_t renderer=0, source=0, filtered=0, proxy=0, model=0;
  bool applied=false, failed=false;
  uint32_t bones=0;
};
inline std::vector<Binding> bindings;
inline uint32_t candidate_renderer=0,candidate_model=0,candidate_bones=0;
inline void* (*get_bones_array)(void*)=nullptr;
inline bool PaletteMatches(void* renderer,uint32_t saved) {
  if(!renderer||!saved||!get_bones_array)return false;
  void* actual=get_bones_array(renderer),*expected=gc_target(saved);
  if(!actual||!expected||array_length(actual)!=array_length(expected))return false;
  return std::memcmp(static_cast<uint8_t*>(actual)+0x20,static_cast<uint8_t*>(expected)+0x20,array_length(expected)*sizeof(void*))==0;
}
inline void* (*get_shared)(void*)=nullptr;
inline void (*set_shared)(void*,void*)=nullptr;
inline void* (*get_proxy)(void*)=nullptr;
inline void (*set_proxy)(void*,void*)=nullptr;
inline bool PrepareBinding() {
  get_shared=reinterpret_cast<decltype(get_shared)>(resolve("UnityEngine.SkinnedMeshRenderer::get_sharedMesh"));
  set_shared=reinterpret_cast<decltype(set_shared)>(resolve("UnityEngine.SkinnedMeshRenderer::set_sharedMesh"));
  get_proxy=reinterpret_cast<decltype(get_proxy)>(resolve("UnityEngine.Renderer::get_shadowProxyMesh"));
  set_proxy=reinterpret_cast<decltype(set_proxy)>(resolve("UnityEngine.Renderer::set_shadowProxyMesh"));
  get_bones_array=reinterpret_cast<decltype(get_bones_array)>(resolve("UnityEngine.SkinnedMeshRenderer::get_bones"));
  return get_shared&&set_shared&&get_proxy&&set_proxy&&get_bones_array;
}
inline bool NativeAlive(uint32_t root) {
  void* object=root?gc_target(root):nullptr;
  return object&&Read<void*>(object,0x10)!=nullptr;
}
inline void RestoreBinding(Binding* state) {
  auto& binding=*state;
  if(!NativeAlive(binding.renderer)){binding.applied=false;return;}
  if(!NativeAlive(binding.source)||!NativeAlive(binding.filtered)){
    if(NativeAlive(binding.filtered)&&get_shared(gc_target(binding.renderer))==gc_target(binding.filtered))
      throw std::runtime_error("Original mesh unavailable; retaining assigned copy");
    binding.applied=false;binding.failed=true;return;
  }
  void* r=gc_target(binding.renderer);
  // Restore only our own assignments; never overwrite a later engine change.
  if(get_shared(r)==gc_target(binding.filtered))set_shared(r,gc_target(binding.source));
  void* shadow=binding.proxy?gc_target(binding.proxy):gc_target(binding.source);
  const bool owned_shadow=get_proxy(r)==shadow;
  if(owned_shadow&&get_proxy(r)!=(binding.proxy?gc_target(binding.proxy):nullptr))set_proxy(r,binding.proxy?gc_target(binding.proxy):nullptr);
  if(get_shared(r)==gc_target(binding.filtered))throw std::runtime_error("Visible mesh restoration failed");
  if(owned_shadow&&get_proxy(r)!= (binding.proxy?gc_target(binding.proxy):nullptr))throw std::runtime_error("Shadow mesh restoration did not match");
  binding.applied=false;
}
inline void UpdateBinding(bool requested) {
  for(auto& binding:bindings){
  if(!NativeAlive(binding.renderer)||!NativeAlive(binding.source)||!NativeAlive(binding.filtered)||binding.failed)continue;
  const bool active=requested&&model_root&&gc_target(model_root)==gc_target(binding.model);
  try{
    void* r=gc_target(binding.renderer);
    if(active&&binding.applied){
      const auto visible=get_shared(r);
      const auto proxy=get_proxy(r);
      const auto expected_shadow=binding.proxy?gc_target(binding.proxy):gc_target(binding.source);
      if(visible==gc_target(binding.filtered)&&proxy==expected_shadow)continue;
      // The game can reassign the original during model/LOD initialization.
      // Reapply to that same source automatically; never overwrite a new mesh.
      binding.applied=false;
    }
    if(!active&&!binding.applied)continue;
    if(active){
      const auto visible=get_shared(r),proxy=get_proxy(r);
      const auto original_proxy=binding.proxy?gc_target(binding.proxy):nullptr;
      const auto shadow=binding.proxy?gc_target(binding.proxy):gc_target(binding.source);
      if(!PaletteMatches(r,binding.bones))throw std::runtime_error("Renderer bone palette changed; stale copy retired");
      if((visible!=gc_target(binding.source)&&visible!=gc_target(binding.filtered))||(proxy!=original_proxy&&proxy!=shadow))
        throw std::runtime_error("Renderer changed since capture; assignment refused");
      if(proxy!=shadow)set_proxy(r,shadow);
      if(visible!=gc_target(binding.filtered))set_shared(r,gc_target(binding.filtered));
      if(get_shared(r)!=gc_target(binding.filtered)||get_proxy(r)!=shadow)
        throw std::runtime_error("Renderer mesh assignment did not match");
      binding.applied=true;

    }else{
      RestoreBinding(&binding);static_cast<void>(0);
    }
  }catch(const std::exception& e){

    try{RestoreBinding(&binding);static_cast<void>(0);}catch(...){static_cast<void>(0);}
    binding.failed=true;
  }catch(...){

    try{RestoreBinding(&binding);static_cast<void>(0);}catch(...){static_cast<void>(0);}
    binding.failed=true;
  }
  }
}


#include "../hdr_graphics_bindings.hpp"
#include <array>
#include <cstdlib>
#include <iostream>

using endfield::hdr_output::GraphicsBindings;
static std::vector<GraphicsBindings::Batch> replay;
static void Require(bool value) { if (!value) std::abort(); }
static void VKAPI_CALL Bind(VkCommandBuffer command, VkPipelineBindPoint point, VkPipelineLayout layout,
    uint32_t first, uint32_t count, const VkDescriptorSet* sets, uint32_t offset_count, const uint32_t* offsets) {
  Require(command == reinterpret_cast<VkCommandBuffer>(1));
  Require(point == VK_PIPELINE_BIND_POINT_GRAPHICS && layout == reinterpret_cast<VkPipelineLayout>(2));
  auto& batch = replay.emplace_back();
  batch.first = first;
  batch.sets.assign(sets, sets + count);
  if (offset_count != 0) batch.offsets.assign(offsets, offsets + offset_count);
  else Require(offsets == nullptr);
}
int main() {
  GraphicsBindings state;
  const auto layout = reinterpret_cast<VkPipelineLayout>(2);
  const auto command = reinterpret_cast<VkCommandBuffer>(1);
  VkDescriptorSet sets[] = {reinterpret_cast<VkDescriptorSet>(10), reinterpret_cast<VkDescriptorSet>(11)};
  uint32_t offsets[] = {256, 1024, 4096};
  state.Record(layout, 0, 2, sets, 3, offsets);
  offsets[0] = 999;
  Require(state.Matches(2, std::array<uint64_t, 2>{10, 11}));
  state.Restore(command, Bind);
  Require(replay.size() == 1 && replay[0].offsets == std::vector<uint32_t>({256,1024,4096}));
  Require(replay[0].sets == std::vector<VkDescriptorSet>(std::begin(sets), std::end(sets)));
  state.Record(layout, 1, 2, sets, 1, offsets);
  Require(state.Matches(2, std::array<uint64_t, 3>{10, 10, 11}));
  Require(!state.Matches(3, std::array<uint64_t, 3>{10, 10, 11}));
  Require(!state.Matches(2, std::array<uint64_t, 3>{10, 12, 11}));
  replay.clear();
  state.Restore(command, Bind);
  Require(replay.size() == 2 && replay[1].first == 1 && replay[1].offsets[0] == 999);
  // Rebinding an identical range replaces the older offsets, with bounded storage.
  for (int i = 0; i < 1000; ++i) state.Record(layout, 1, 2, sets, 0, nullptr);
  Require(state.batches.size() == 2);
  replay.clear(); state.Restore(command, Bind);
  Require(replay[1].offsets.empty());
  state.Record(reinterpret_cast<VkPipelineLayout>(3), 2, 2, sets, 0, nullptr);
  Require(state.batches.size() == 1 && state.Matches(3, std::array<uint64_t, 4>{0,0,10,11}));
  state.Record(reinterpret_cast<VkPipelineLayout>(3), 0, 1, sets, 1, nullptr);
  Require(!state.valid && !state.Matches(3, std::array<uint64_t,4>{0,0,10,11}));
  state = {};
  Require(state.Matches(0, {}));
  state.Record(layout, 64, 1, sets, 0, nullptr);
  Require(!state.valid);
  state = {};
  for (uint32_t i = 0; i < 33; ++i) state.Record(layout, i, 2, sets, 0, nullptr);
  Require(!state.valid && state.batches.size() == 32);
  std::cout << "Native graphics bindings: offsets, deep copy, overlaps, overwrite, layout/reset, mismatch and bounds passed\n";
}

#include "../hdr_output_contract.hpp"
#include <cassert>
#include <iostream>

using namespace endfield::hdr_output;

template <typename Barrier>
void TestBoundary() {
  Barrier barrier{};
  barrier.oldLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;
  barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
  barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  barrier.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
  assert(IsOutputBoundary(barrier));
  const auto original = barrier;
  barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  assert(!IsOutputBoundary(barrier));  // Not a DLSS internal read hook.
  barrier = original;
  barrier.srcQueueFamilyIndex = 0;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.dstQueueFamilyIndex = 1;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_DEPTH_BIT;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.baseMipLevel = 1;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.baseArrayLayer = 1;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.levelCount = 2;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.layerCount = 2;
  assert(!IsOutputBoundary(barrier));
  barrier = original;
  barrier.subresourceRange.levelCount = VK_REMAINING_MIP_LEVELS;
  barrier.subresourceRange.layerCount = VK_REMAINING_ARRAY_LAYERS;
  assert(IsOutputBoundary(barrier));
}

int main() {
  TestBoundary<VkImageMemoryBarrier>();
  TestBoundary<VkImageMemoryBarrier2>();
  static_assert(WorkingLayout(VK_IMAGE_LAYOUT_PRESENT_SRC_KHR) == VK_IMAGE_LAYOUT_GENERAL);
  static_assert(WorkingLayout(VK_IMAGE_LAYOUT_GENERAL) == VK_IMAGE_LAYOUT_GENERAL);
  static_assert(WorkingLayout(VK_IMAGE_LAYOUT_UNDEFINED) == VK_IMAGE_LAYOUT_UNDEFINED);
  static_assert(WorkingLayout(VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL) == VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL);
  static_assert(WorkingLayout(VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL) == VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL);
  std::cout << "24 output-boundary cases and 5 working-layout invariants passed\n";
}

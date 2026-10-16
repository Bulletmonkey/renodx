#pragma once

#include <Windows.h>
#include <algorithm>
#include <array>
#include <cctype>
#include <cstring>
#include <mutex>
#include <shared_mutex>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

#include "../../utils/settings.hpp"
#include "../../utils/platform.hpp"
#include "./frame_generation.hpp"

namespace endfield::menu {

static int page = 1;
static bool drawing_header = false;
static float label_width = 0.f;
static renodx::utils::settings::Settings aligned_controls;
static constexpr uint32_t PAGE_COLORS[] = {0xA6B1C2, 0xF2C14E, 0xE63946, 0x4EA8DE, 0x2A9D8F, 0xF4A261};
static char search[128] = {};

static std::string LoadedVersion(HMODULE module) {
  if (module == nullptr) return "Not loaded";
  const auto resource = FindResourceW(module, MAKEINTRESOURCEW(VS_VERSION_INFO), MAKEINTRESOURCEW(16));
  if (resource == nullptr) return "Unavailable";
  const auto size = SizeofResource(module, resource);
  const auto* bytes = static_cast<const unsigned char*>(LockResource(LoadResource(module, resource)));
  constexpr wchar_t key[] = L"VS_VERSION_INFO";
  constexpr size_t offset = (6 + sizeof(key) + 3) & ~size_t(3);
  if (bytes == nullptr || size < offset + sizeof(VS_FIXEDFILEINFO)
      || std::memcmp(bytes + 6, key, sizeof(key)) != 0) return "Unavailable";
  VS_FIXEDFILEINFO version;
  std::memcpy(&version, bytes + offset, sizeof(version));
  if (version.dwSignature != VS_FFI_SIGNATURE) return "Unavailable";
  return std::to_string(HIWORD(version.dwFileVersionMS)) + "."
         + std::to_string(LOWORD(version.dwFileVersionMS)) + "."
         + std::to_string(HIWORD(version.dwFileVersionLS)) + "."
         + std::to_string(LOWORD(version.dwFileVersionLS));
}

static void DrawAbout() {
  ImGui::TextUnformatted("RenoDX for Arknights: Endfield 1.6");
  ImGui::TextWrapped("Maintained and extended by ItsTheSewerRat (Rat).");
  ImGui::SeparatorText("Credits & thanks");
  if (ImGui::BeginTable("credits", 2, ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_RowBg | ImGuiTableFlags_NoSavedSettings)) {
    ImGui::TableSetupColumn("Contributor", ImGuiTableColumnFlags_WidthStretch, 0.55f);
    ImGui::TableSetupColumn("Contribution", ImGuiTableColumnFlags_WidthStretch, 0.45f);
    constexpr const char* credits[][2] = {
        {"Spiwar & Forge", "Creators of the Endfield RenoDX Add-on"},
        {"ShortFuse", "RenoDX"},
        {"Musa & Miru", "Help with the addon"},
        {"RankFTW", "ReLimiter"},
        {"EightySixK", "FPS Unlocker & Graphics Enhancements"},
    };
    for (const auto& credit : credits) {
      ImGui::TableNextRow();
      ImGui::TableNextColumn();
      ImGui::TextWrapped("%s", credit[0]);
      ImGui::TableNextColumn();
      ImGui::TextWrapped("%s", credit[1]);
    }
    ImGui::EndTable();
  }
  ImGui::Spacing();
  ImGui::Separator();
  ImGui::TextWrapped("Addon version: %s", LoadedVersion(early_load::addon_module).c_str());
  ImGui::TextWrapped("Built %s at %s", __DATE__, __TIME__);
}

static ImVec4 TintColor(ImGuiCol style, uint32_t tint) {
  const auto accent = renodx::utils::settings::ImVec4FromHex(tint);
  auto color = ImGui::GetStyleColorVec4(style);
  float hue, saturation, value, accent_hue, accent_saturation, accent_value;
  ImGui::ColorConvertRGBtoHSV(accent.x, accent.y, accent.z, accent_hue, accent_saturation, accent_value);
  ImGui::ColorConvertRGBtoHSV(color.x, color.y, color.z, hue, saturation, value);
  ImGui::ColorConvertHSVtoRGB(accent_hue, saturation, value, color.x, color.y, color.z);
  return color;
}

static bool DrawLink(const char* label, const char* base, const char* path, uint32_t color, int remaining) {
  ImGui::PushStyleVar(ImGuiStyleVar_FrameRounding, 5.f);
  ImGui::PushStyleVar(ImGuiStyleVar_FrameBorderSize, 1.f);
  ImGui::PushStyleColor(ImGuiCol_Border, TintColor(ImGuiCol_SliderGrab, color));
  const float width = std::max(1.f, (ImGui::GetContentRegionAvail().x - ImGui::GetStyle().ItemSpacing.x * (remaining - 1)) / remaining);
  if (ImGui::Button(label, ImVec2(width, ImGui::GetFrameHeight() + 12.f))) {
    renodx::utils::platform::LaunchURL(base, path);
  }
  ImGui::PopStyleColor();
  ImGui::PopStyleVar(2);
  return false;
}

static std::string ControlLabel(const std::string& label, float width) {
  std::string visible = label;
  if (ImGui::CalcTextSize(label.c_str()).x > width) {
    while (!visible.empty() && ImGui::CalcTextSize((visible + "...").c_str()).x > width) {
      visible.pop_back();
    }
    visible += "...";
  }
  return visible + "###" + label;
}

static void DrawFpsLabel(const std::string& label) {
  const float control_x = ImGui::GetCursorPosX() + label_width + ImGui::GetStyle().ItemSpacing.x;
  const auto display = ControlLabel(label, label_width);
  ImGui::AlignTextToFramePadding();
  ImGui::TextUnformatted(display.c_str(), display.c_str() + display.find("###"));
  ImGui::SetItemTooltip("%s", label.c_str());
  ImGui::SameLine();
  ImGui::SetCursorPosX(control_x);
  ImGui::SetNextItemWidth(-1.f);
}

static bool DrawFpsLimit(const char* key, const std::array<int, 3>& suggestions) {
  auto* setting = renodx::utils::settings::FindSetting(key);
  if (setting == nullptr) return false;
  const int limit = (setting->GetValue() <= 0.f ? 0 : std::clamp(static_cast<int>(setting->GetValue()), 15, static_cast<int>(setting->max)));
  int position = (limit == 0 ? 0 : limit - 14);
  const auto display = (limit == 0 ? std::string("Off") : std::to_string(limit) + " FPS");
  DrawFpsLabel(setting->label);
  const float control_x = ImGui::GetCursorPosX();
  const float button_width = std::max(1.f, std::min(
      std::max(ImGui::CalcTextSize("360").x, ImGui::CalcTextSize("Off").x) + ImGui::GetStyle().FramePadding.x * 2.f,
      (ImGui::GetContentRegionAvail().x - ImGui::GetStyle().ItemSpacing.x * 3.f) / 4.f));
  bool changed = ImGui::SliderInt("##limit", &position, 0, static_cast<int>(setting->max) - 14, display.c_str(), ImGuiSliderFlags_NoInput);
  ImGui::SetItemTooltip("%s", setting->tooltip.c_str());
  int selected = (position == 0 ? 0 : position + 14);
  ImGui::SetCursorPosX(control_x);
  if (ImGui::Button("Off", ImVec2(button_width, 0.f))) {
    selected = 0;
    changed = true;
  }
  for (const int suggested : suggestions) {
    ImGui::SameLine();
    if (ImGui::Button(std::to_string(suggested).c_str(), ImVec2(button_width, 0.f))) {
      selected = suggested;
      changed = true;
    }
  }
  if (changed) setting->Set(static_cast<float>(selected))->Write();
  return changed;
}

static void Configure(renodx::utils::settings::Settings* settings) {
  renodx::utils::settings::Settings controls;
  controls.reserve(settings->size() * 2);
  for (auto* setting : *settings) {
    controls.push_back(setting);
    if (setting->value_type == renodx::utils::settings::SettingValueType::CUSTOM
        && (setting->section == "FPS Limit" || setting->label == "UI Toggle Hotkey")) {
      aligned_controls.push_back(setting);
    }
    if (!setting->HasNumericValue() || setting->key == "SettingsMode"
        || setting->key == "FPSLimit" || setting->key == "FrameGenerationFPSLimit" || setting->key == "BackgroundFPSLimit") continue;
    auto* control = new renodx::utils::settings::Setting(*setting);
    control->key.clear();
    control->binding = nullptr;
    control->value_type = renodx::utils::settings::SettingValueType::CUSTOM;
    control->can_reset = false;
    control->tooltip.clear();
    control->on_change = [] {};
    control->on_draw = [setting] {
      using renodx::utils::settings::SettingValueType;
      const float previous = setting->GetValue();
      const float reset_width = ImGui::GetFrameHeight();
      const float reset_x = ImGui::GetCursorPosX() + ImGui::GetContentRegionAvail().x - reset_width;
      const bool fps_control = setting->section == "FPS Limit";
      if (fps_control) {
        DrawFpsLabel(setting->label);
      } else {
        ImGui::SetNextItemWidth(std::max(1.f, ImGui::GetContentRegionAvail().x - label_width - reset_width - ImGui::GetStyle().ItemSpacing.x * 2.f));
      }
      const auto control_label = (fps_control ? std::string("##value") : ControlLabel(setting->label, label_width));
      bool changed = false;
      if (setting->value_type == SettingValueType::FLOAT) {
        changed = ImGui::SliderFloat(control_label.c_str(), &setting->value, setting->min, setting->max, setting->format.c_str(),
                                     setting->is_logarithmic ? ImGuiSliderFlags_Logarithmic : ImGuiSliderFlags_None);
      } else {
        const auto* format = setting->format.c_str();
        if (!setting->labels.empty()) {
          format = setting->labels[std::clamp(setting->value_as_int, 0, static_cast<int>(setting->labels.size()) - 1)].c_str();
        } else if (setting->value_type == SettingValueType::BOOLEAN) {
          format = (setting->value_as_int == 0 ? "Off" : "On");
        }
        changed = ImGui::SliderInt(control_label.c_str(), &setting->value_as_int, static_cast<int>(setting->min),
                                   static_cast<int>(setting->GetMax()), format, ImGuiSliderFlags_NoInput);
      }
      if (ImGui::CalcTextSize(setting->label.c_str()).x > label_width) {
        ImGui::SetItemTooltip("%s", setting->label.c_str());
      } else if (!setting->tooltip.empty()) {
        ImGui::SetItemTooltip("%s", setting->tooltip.c_str());
      }
      if (setting->can_reset) {
        ImGui::SameLine();
        ImGui::SetCursorPosX(reset_x);
        ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(0.f, 0.f));
        ImGui::PushStyleVar(ImGuiStyleVar_ButtonTextAlign, ImVec2(0.5f, 0.5f));
        ImGui::BeginDisabled(setting->IsUsingDefault());
        if (ImGui::Button(renodx::utils::icons::View(renodx::utils::icons::UNDO), ImVec2(reset_width, reset_width))) {
          setting->Set(setting->default_value);
          changed = true;
        }
        ImGui::EndDisabled();
        ImGui::PopStyleVar(2);
      }
      if (changed) {
        setting->on_change();
        const std::unique_lock lock(renodx::utils::mutex::global_mutex);
        setting->Write();
        setting->on_change_value(previous, setting->GetValue());
      }
      return changed;
    };
    setting->is_visible = [] { return false; };
    controls.push_back(control);
    aligned_controls.push_back(control);
  }
  *settings = std::move(controls);
  for (auto* setting : *settings) {
    int setting_page = 1;
    if (setting->section == "Effects" || setting->section == "Rendering Improvements") setting_page = 2;
    else if (setting->section == "User Interface & Video") setting_page = 3;
    else if (setting->section == "Display Output") setting_page = 4;
    else if (setting->section == "FPS Limit") setting_page = 5;
    else if (setting->section == "About" || setting->section == "Links") setting_page = 0;
    if (!setting->tint.has_value() && setting->key != "SettingsMode") {
      setting->tint = PAGE_COLORS[setting_page];
      if (setting->section == "Rendering Improvements") setting->tint = 0x57B881;
      else if (setting->section == "Color Grading") setting->tint = 0x2A9D8F;
      else if (setting->section == "Alternative Grading") setting->tint = 0xF4A261;
    }
    setting->is_visible = [setting, setting_page, visible = std::move(setting->is_visible)] {
      if (visible && !visible()) return false;
      if (setting->key == "SettingsMode") return drawing_header;
      if (drawing_header) return false;
      if (search[0] == '\0') return page == setting_page;
      const auto text = setting->label + " " + setting->section + " " + setting->tooltip + " " + setting->key;
      return std::search(text.begin(), text.end(), search, search + std::strlen(search),
                         [](unsigned char first, unsigned char second) { return std::tolower(first) == std::tolower(second); }) != text.end();
    };
  }
}

static void Draw(reshade::api::effect_runtime* runtime) {
  ImGui::PushID("EndfieldRenoDXMenu");
  ImGui::PushStyleVar(ImGuiStyleVar_FrameRounding, 2.f);
  ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(6.f, 2.f));
  drawing_header = true;
  renodx::utils::settings::OnRegisterOverlay(runtime);
  drawing_header = false;
  ImGui::Spacing();
  ImGui::SetNextItemWidth(-1.f);
  ImGui::InputTextWithHint("##search", "Search settings...", search, sizeof(search));
  ImGui::PushStyleVar(ImGuiStyleVar_FrameRounding, 6.f);
  ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(8.f, 3.f));
  ImGui::PushStyleVar(ImGuiStyleVar_ButtonTextAlign, ImVec2(0.5f, 0.5f));
  constexpr const char* pages[] = {"System & About", "HDR & Color", "Graphics", "UI & Video", "Display", "FPS"};
  std::array<float, std::size(pages)> widths;
  const float spacing = ImGui::GetStyle().ItemInnerSpacing.x;
  const float available_width = ImGui::GetContentRegionAvail().x;
  float minimum_width = spacing * (std::size(pages) - 1);
  for (size_t index = 0; index < std::size(pages); ++index) {
    widths[index] = ImGui::CalcTextSize(pages[index]).x + ImGui::GetStyle().FramePadding.x * 2.f;
    minimum_width += widths[index];
  }
  if (search[0] != '\0') {
    if (ImGui::SmallButton("Clear search")) search[0] = '\0';
  } else {
    const bool overflow = minimum_width > available_width;
    const float extra_width = std::max(0.f, available_width - minimum_width) / std::size(pages);
    const float height = ImGui::GetFrameHeight() + (overflow ? ImGui::GetStyle().ScrollbarSize : 0.f);
    ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0.f, 0.f));
    ImGui::PushStyleVar(ImGuiStyleVar_ChildBorderSize, 0.f);
    ImGui::SetNextWindowContentSize(ImVec2(std::max(minimum_width, available_width), ImGui::GetFrameHeight()));
    if (ImGui::BeginChild("Pages", ImVec2(available_width, height), ImGuiChildFlags_None,
                          ImGuiWindowFlags_NoBackground | (overflow ? ImGuiWindowFlags_HorizontalScrollbar | ImGuiWindowFlags_AlwaysHorizontalScrollbar : ImGuiWindowFlags_NoScrollbar))) {
      if (!overflow) ImGui::SetScrollX(0.f);
      for (int index = 0; index < static_cast<int>(std::size(pages)); ++index) {
        if (index != 0) ImGui::SameLine(0.f, spacing);
        ImGui::PushStyleColor(ImGuiCol_Button, TintColor(page == index ? ImGuiCol_TabSelected : ImGuiCol_Tab, PAGE_COLORS[index]));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, TintColor(ImGuiCol_TabHovered, PAGE_COLORS[index]));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, TintColor(ImGuiCol_TabSelected, PAGE_COLORS[index]));
        if (ImGui::Button(pages[index], ImVec2(widths[index] + extra_width, ImGui::GetFrameHeight()))) page = index;
        ImGui::PopStyleColor(3);
      }
    }
    ImGui::EndChild();
    ImGui::PopStyleVar(2);
  }
  ImGui::PopStyleVar(3);
  constexpr const char* descriptions[] = {
      "Runtime information, credits and useful links.",
      "Tone mapping, HDR brightness and color grading.",
      "Rendering improvements and visual effects.",
      "HUD visibility, keyboard shortcut and video brightness.",
      "Output encoding, color space and HDR frame generation.",
      "FPS Unlock and Limiter",
  };
  if (search[0] == '\0') ImGui::TextWrapped("%s", descriptions[page]);
  ImGui::Spacing();

  if (page == 0 && search[0] == '\0') {
    ImGui::SeparatorText("Runtime Information");
    if (ImGui::BeginTable("runtime", 2, ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_NoSavedSettings)) {
      ImGui::TableSetupColumn("Property", ImGuiTableColumnFlags_WidthStretch, 0.55f);
      ImGui::TableSetupColumn("Value", ImGuiTableColumnFlags_WidthStretch, 0.45f);
      const auto draw_info = [](const char* label, const std::string& value) {
        ImGui::TableNextRow();
        ImGui::TableNextColumn();
        ImGui::TextWrapped("%s", label);
        ImGui::TableNextColumn();
        ImGui::TextWrapped("%s", value.c_str());
      };
      std::array<char, 256> gpu = {};
      auto* device = runtime->get_device();
      if (device->get_property(reshade::api::device_properties::description, gpu.data())) {
        gpu.back() = '\0';
        draw_info("GPU", gpu.data());
      }
      uint32_t vendor = 0;
      uint32_t driver = 0;
      device->get_property(reshade::api::device_properties::vendor_id, &vendor);
      if (vendor == 0x10de && device->get_property(reshade::api::device_properties::driver_version, &driver) && driver != 0) {
        draw_info("NVIDIA Driver", std::to_string(driver / 100) + "." + (driver % 100 < 10 ? "0" : "") + std::to_string(driver % 100));
      }
      uint32_t width = 0, height = 0;
      runtime->get_screenshot_width_and_height(&width, &height);
      draw_info("Renderer", "Vulkan");
      draw_info("Resolution", std::to_string(width) + " x " + std::to_string(height));
      draw_info("ReShade Early Loading", early_load::configured ? "Configured" : "Not configured");
      draw_info("HDR Framegen Hooks", frame_generation::installed.load() ? "Active" : "Inactive");
      {
        const std::shared_lock lock(frame_rate::mutex);
        draw_info("FPS Unlock", frame_rate::applied ? "Applied" : "Inactive");
      }
      if (const auto* encoding = renodx::utils::settings::FindSetting("SwapChainEncoding")) {
        draw_info("Requested Output", encoding->labels[std::clamp(encoding->value_as_int, 0, static_cast<int>(encoding->labels.size()) - 1)].c_str());
      }
      ImGui::EndTable();
    }
    if (ImGui::BeginTable("modules", 2, ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_NoSavedSettings)) {
      ImGui::TableSetupColumn("Component", ImGuiTableColumnFlags_WidthStretch, 0.55f);
      ImGui::TableSetupColumn("Version", ImGuiTableColumnFlags_WidthStretch, 0.45f);
      ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
      ImGui::TableNextColumn();
      ImGui::TableHeader("Component");
      ImGui::TableNextColumn();
      ImGui::TableHeader("Version");
      const std::pair<const char*, HMODULE> modules[] = {
          {"RenoDX Endfield", early_load::addon_module},
          {"ReShade", reshade::internal::get_reshade_module_handle()},
          {"Streamline", GetModuleHandleW(L"sl.interposer.dll")},
          {"DLSS SR / DLAA", GetModuleHandleW(L"nvngx_dlss.dll")},
          {"DLSS FG", GetModuleHandleW(L"nvngx_dlssg.dll")},
      };
      for (const auto& [name, module] : modules) {
        ImGui::TableNextRow();
        ImGui::TableNextColumn();
        ImGui::TextWrapped("%s", name);
        ImGui::TableNextColumn();
        ImGui::TextWrapped("%s", LoadedVersion(module).c_str());
      }
      ImGui::EndTable();
    }
  }
  label_width = 0.f;
  for (const auto* setting : aligned_controls) {
    if (setting->is_visible && !setting->is_visible()) continue;
    label_width = std::max(label_width, ImGui::CalcTextSize(setting->label.c_str()).x);
  }
  label_width = std::min(label_width, std::max(1.f, ImGui::GetContentRegionAvail().x - ImGui::GetFrameHeight() - ImGui::GetStyle().ItemSpacing.x * 2.f) * 0.35f);
  const bool use_presets = renodx::utils::settings::use_presets;
  renodx::utils::settings::use_presets = false;
  renodx::utils::settings::OnRegisterOverlay(runtime);
  renodx::utils::settings::use_presets = use_presets;
  ImGui::PopStyleVar(2);
  ImGui::PopID();
}

}  // namespace endfield::menu

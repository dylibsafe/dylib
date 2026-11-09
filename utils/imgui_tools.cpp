#include "imgui_tools.h"

void HelpMarker(const char *desc) {
    ImGui::TextColored(ImVec4(1.0f, 0.0f, 0.0f, 1.0f), "(?)");
    if (ImGui::IsItemHovered()) {
        ImGui::BeginTooltip();
        ImGui::PushTextWrapPos(ImGui::GetFontSize() * 35.0f);
        ImGui::TextUnformatted(desc);
        ImGui::PopTextWrapPos();
        ImGui::EndTooltip();
    }
}

float calcTextSize(const char *text, float font_size) {
    ImGuiContext &g = *GImGui;
    
    ImFont *font = g.Font;
    
    ImVec2 text_size;
    if (font_size == 0) {
        text_size = font->CalcTextSizeA(font->FontSize, FLT_MAX, -1.0f, text, NULL, NULL);
    } else {
        text_size = font->CalcTextSizeA(font_size, FLT_MAX, -1.0f, text, NULL, NULL);
    }
    
    text_size.x = IM_FLOOR(text_size.x + 0.99999f);
    
    return text_size.x;
}

void setDarkTheme() {
    ImGuiStyle *style = &ImGui::GetStyle();

    style->Alpha = 0.83f;
    style->WindowPadding = ImVec2(14.0f, 14.0f);
    style->WindowRounding = 16.0f;
    style->WindowBorderSize = 0.0f;
    style->WindowTitleAlign = ImVec2(0.5f, 0.5f);
    style->WindowMenuButtonPosition = ImGuiDir_Right;
    style->ChildRounding = 12.0f;
    style->ChildBorderSize = 0.0f;
    style->PopupRounding = 12.0f;
    style->PopupBorderSize = 0.0f;
    style->FramePadding = ImVec2(12.0f, 7.0f);
    style->FrameRounding = 10.0f;
    style->FrameBorderSize = 0.0f;
    style->ItemSpacing = ImVec2(12.0f, 8.0f);
    style->ItemInnerSpacing = ImVec2(8.0f, 5.0f);
    style->IndentSpacing = 24.0f;
    style->ScrollbarSize = 8.0f;
    style->ScrollbarRounding = 6.0f;
    style->GrabMinSize = 12.0f;
    style->GrabRounding = 4.0f;
    style->TabRounding = 8.0f;
    style->TabBorderSize = 0.0f;
    style->ButtonTextAlign = ImVec2(0.5f, 0.5f);
    style->SelectableTextAlign = ImVec2(0.0f, 0.5f);
    style->ColumnsMinSpacing = 40.0f;
    style->FrameBorderSize = 0.0f;
    style->WindowBorderSize = 0.0f;
    style->ChildBorderSize = 0.0f;
    style->PopupBorderSize = 0.0f;

    ImVec4 *colors = style->Colors;
    colors[ImGuiCol_Text]                    = ImVec4(0.95f, 0.95f, 0.97f, 1.0f);
    colors[ImGuiCol_TextDisabled]            = ImVec4(0.40f, 0.40f, 0.45f, 1.0f);
    colors[ImGuiCol_WindowBg]                = ImVec4(0.06f, 0.06f, 0.08f, 0.83f);
    colors[ImGuiCol_ChildBg]                 = ImVec4(0.04f, 0.04f, 0.06f, 0.70f);
    colors[ImGuiCol_PopupBg]                 = ImVec4(0.05f, 0.05f, 0.07f, 0.90f);
    colors[ImGuiCol_Border]                  = ImVec4(0.18f, 0.18f, 0.22f, 0.40f);
    colors[ImGuiCol_BorderShadow]            = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
    colors[ImGuiCol_FrameBg]                 = ImVec4(0.10f, 0.10f, 0.13f, 1.0f);
    colors[ImGuiCol_FrameBgHovered]          = ImVec4(0.16f, 0.16f, 0.20f, 1.0f);
    colors[ImGuiCol_FrameBgActive]           = ImVec4(0.22f, 0.22f, 0.28f, 1.0f);
    colors[ImGuiCol_TitleBg]                 = ImVec4(0.06f, 0.06f, 0.08f, 1.0f);
    colors[ImGuiCol_TitleBgActive]           = ImVec4(0.08f, 0.08f, 0.10f, 1.0f);
    colors[ImGuiCol_TitleBgCollapsed]        = ImVec4(0.05f, 0.05f, 0.07f, 1.0f);
    colors[ImGuiCol_MenuBarBg]               = ImVec4(0.07f, 0.07f, 0.09f, 1.0f);
    colors[ImGuiCol_ScrollbarBg]             = ImVec4(0.08f, 0.08f, 0.10f, 0.60f);
    colors[ImGuiCol_ScrollbarGrab]           = ImVec4(0.30f, 0.30f, 0.35f, 0.80f);
    colors[ImGuiCol_ScrollbarGrabHovered]    = ImVec4(0.40f, 0.40f, 0.45f, 0.90f);
    colors[ImGuiCol_ScrollbarGrabActive]     = ImVec4(0.50f, 0.50f, 0.55f, 1.0f);
    colors[ImGuiCol_CheckMark]               = ImVec4(0.85f, 0.85f, 0.90f, 1.0f);
    colors[ImGuiCol_SliderGrab]              = ImVec4(0.60f, 0.60f, 0.65f, 0.90f);
    colors[ImGuiCol_SliderGrabActive]        = ImVec4(0.80f, 0.80f, 0.85f, 1.0f);
    colors[ImGuiCol_Button]                  = ImVec4(0.12f, 0.12f, 0.15f, 1.0f);
    colors[ImGuiCol_ButtonHovered]           = ImVec4(0.18f, 0.18f, 0.22f, 1.0f);
    colors[ImGuiCol_ButtonActive]            = ImVec4(0.25f, 0.25f, 0.30f, 1.0f);
    colors[ImGuiCol_Header]                  = ImVec4(0.10f, 0.10f, 0.13f, 1.0f);
    colors[ImGuiCol_HeaderHovered]           = ImVec4(0.15f, 0.15f, 0.18f, 1.0f);
    colors[ImGuiCol_HeaderActive]            = ImVec4(0.18f, 0.18f, 0.22f, 1.0f);
    colors[ImGuiCol_Separator]               = ImVec4(0.15f, 0.15f, 0.18f, 0.60f);
    colors[ImGuiCol_SeparatorHovered]        = ImVec4(0.30f, 0.30f, 0.35f, 0.80f);
    colors[ImGuiCol_SeparatorActive]         = ImVec4(0.40f, 0.40f, 0.45f, 1.0f);
    colors[ImGuiCol_ResizeGrip]              = ImVec4(0.12f, 0.12f, 0.15f, 0.40f);
    colors[ImGuiCol_ResizeGripHovered]       = ImVec4(0.18f, 0.18f, 0.22f, 0.60f);
    colors[ImGuiCol_ResizeGripActive]        = ImVec4(0.25f, 0.25f, 0.30f, 0.90f);
    colors[ImGuiCol_Tab]                     = ImVec4(0.10f, 0.10f, 0.13f, 1.0f);
    colors[ImGuiCol_TabHovered]              = ImVec4(0.15f, 0.15f, 0.18f, 1.0f);
    colors[ImGuiCol_TabActive]               = ImVec4(0.20f, 0.20f, 0.25f, 1.0f);
    colors[ImGuiCol_TabUnfocused]            = ImVec4(0.08f, 0.08f, 0.10f, 1.0f);
    colors[ImGuiCol_TabUnfocusedActive]      = ImVec4(0.12f, 0.12f, 0.15f, 1.0f);
    colors[ImGuiCol_PlotLines]               = ImVec4(0.50f, 0.50f, 0.55f, 1.0f);
    colors[ImGuiCol_PlotLinesHovered]        = ImVec4(0.70f, 0.70f, 0.75f, 1.0f);
    colors[ImGuiCol_PlotHistogram]           = ImVec4(0.50f, 0.50f, 0.55f, 1.0f);
    colors[ImGuiCol_PlotHistogramHovered]    = ImVec4(0.70f, 0.70f, 0.75f, 1.0f);
    colors[ImGuiCol_TableHeaderBg]           = ImVec4(0.08f, 0.08f, 0.10f, 1.0f);
    colors[ImGuiCol_TableBorderStrong]       = ImVec4(0.20f, 0.20f, 0.24f, 0.80f);
    colors[ImGuiCol_TableBorderLight]        = ImVec4(0.14f, 0.14f, 0.17f, 0.60f);
    colors[ImGuiCol_TableRowBg]              = ImVec4(0.06f, 0.06f, 0.08f, 0.60f);
    colors[ImGuiCol_TableRowBgAlt]           = ImVec4(0.08f, 0.08f, 0.10f, 0.60f);
    colors[ImGuiCol_TextSelectedBg]          = ImVec4(0.25f, 0.25f, 0.30f, 1.0f);
    colors[ImGuiCol_DragDropTarget]          = ImVec4(0.30f, 0.30f, 0.35f, 0.80f);
    colors[ImGuiCol_NavHighlight]            = ImVec4(0.30f, 0.30f, 0.35f, 0.80f);
    colors[ImGuiCol_NavWindowingHighlight]   = ImVec4(0.30f, 0.30f, 0.35f, 0.80f);
    colors[ImGuiCol_NavWindowingDimBg]       = ImVec4(0.00f, 0.00f, 0.00f, 0.20f);
    colors[ImGuiCol_ModalWindowDimBg]        = ImVec4(0.00f, 0.00f, 0.00f, 0.20f);
}

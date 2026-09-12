#pragma once

namespace endfield::ui_visibility::detail {
// Executed in the game's existing Lua environment, only from LuaManager.Tick.
// The cleanup callbacks contain no addon pointers and survive a hot unload.
inline constexpr char kScript[] = R"lua(
if not LuaUpdate or not UIManager or not PanelId or not CameraManager then return false end
local name = '__RenoDXUIVisibility'
local previous = rawget(_G, name)
if previous then previous.stop() end
local s = { mask = 0, saved = {}, targets = {}, callbacks = {}, camera = nil, generation = 0, nextApply = 0 }
local update = LuaUpdate
local key = 'RenoDX.UIVisibility'
local function restore(unusedOnly)
    for graphic, saved in pairs(s.saved) do
        if not unusedOnly or saved.generation ~= s.generation then
            if not IsNull(graphic) and graphic.enabled == false and saved.enabled then graphic.enabled = true end
            s.saved[graphic] = nil
        end
    end
    for target, cached in pairs(s.targets) do
        if not unusedOnly or cached.generation ~= s.generation then s.targets[target] = nil end
    end
end
local function restoreCamera()
    if s.camera then
        s.camera:RemoveUICamCullingMaskConfig(key)
        s.camera = nil
    end
end
function s.stop()
    restore()
    restoreCamera()
    for _, id in ipairs(s.callbacks) do update:Remove(id) end
    s.callbacks = {}
    if rawget(_G, name) == s then rawset(_G, name, nil) end
end
local function guarded(action)
    local ok, err = xpcall(action, debug.traceback)
    if not ok then
        s.failure = err
        -- Keep the watchdog alive if an object is being destroyed mid-update.
        pcall(restore)
        pcall(restoreCamera)
    end
end
local function suspend(component)
    if IsNull(component) then return end
    local enabled = component.enabled
    local saved = s.saved[component]
    if not saved then
        saved = { enabled = enabled }
        s.saved[component] = saved
    elseif enabled then
        -- Preserve a later game-authored enable when releasing our override.
        saved.enabled = true
    end
    saved.generation = s.generation
    if enabled then component.enabled = false end
end
local function hide(target, excluded)
    if IsNull(target) then return end
    -- pingCon is a container, not a Graphic. Traverse its renderers without
    -- disabling its GameObject, and leave the numeric ping subtree alone.
    local object = target.gameObject
    local cached = s.targets[object]
    if not cached or cached.excluded ~= excluded or Time.realtimeSinceStartup >= cached.refresh then
        cached = { excluded = excluded, graphics = {}, refresh = Time.realtimeSinceStartup + 0.5 }
        local graphics = object:GetComponentsInChildren(typeof(CS.UnityEngine.UI.Graphic), true)
        for i = 0, graphics.Length - 1 do
            local graphic = graphics[i]
            if IsNull(excluded) or not graphic.transform:IsChildOf(excluded.transform) then
                cached.graphics[#cached.graphics + 1] = graphic
            end
        end
        s.targets[object] = cached
    end
    cached.generation = s.generation
    for _, graphic in ipairs(cached.graphics) do suspend(graphic) end
end
local function apply()
    if s.failure then return end
    s.generation = s.generation + 1
    s.nextApply = Time.realtimeSinceStartup + 0.1
    local all = s.mask % 2 == 1
    if s.camera and (not all or s.camera ~= CameraManager) then restoreCamera() end
    if all and not s.camera and CameraManager then
        -- Own the key before calling the setter, so partial failure is reversible.
        s.camera = CameraManager
        s.camera:AddUICamCullingMaskConfig(key, 0)
    end
    if all and s.camera and not IsNull(s.camera.uiCamera) and s.camera.uiCamera.cullingMask ~= 0 then
        -- A later game-owned config may become the current mask. Reassert our
        -- own request without changing or removing any of the game's keys.
        s.camera:RemoveUICamCullingMaskConfig(key)
        s.camera:AddUICamCullingMaskConfig(key, 0)
    end
    if all then
        -- World-space and overlay canvases can bypass the UI camera. Suppress
        -- their rendering without replacing the scene camera's culling mask.
        for _, panel in pairs(UIManager.m_openedPanels) do
            local canvas = panel.view.panelCanvas
            if not IsNull(canvas) and (panel.panelCfg.isWorldUI or canvas.renderMode == 0) then
                suspend(canvas)
            end
        end
    end
    local panels = UIManager.m_openedPanels
    -- Reconcile at 10 Hz: HUD panels can close/recreate independently
    -- of UIDPanel during scene, mode, and input-device changes.
    local quest = panels[PanelId.MissionHud]
    if math.floor(s.mask / 16) % 2 == 1 then
        if quest then hide(quest.view.panelCanvas, quest.view.openMissionPanelBtnWrapper) end
        local mini = panels[PanelId.MissionHudMini]
        if mini then hide(mini.view.panelCanvas) end
    end
    if math.floor(s.mask / 32) % 2 == 1 then
        local map = panels[PanelId.MiniMap]
        if map then suspend(map.view.panelCanvas) end
    end
    local hud = panels[PanelId.MainHud]
    if math.floor(s.mask / 64) % 2 == 1 then
        if hud then hide(hud.view.topLeftBtns) end
        if quest then hide(quest.view.openMissionPanelBtnWrapper) end
        local sns = panels[PanelId.SNSHud]
        if sns then hide(sns.view.entryBtn) end
    end
    if math.floor(s.mask / 128) % 2 == 1 and hud then
        hide(hud.view.topRightBtns)
        hide(hud.view.simpleMenuBtnForForbidden)
    end
    if math.floor(s.mask / 256) % 2 == 1 then
        local utility = panels[PanelId.GeneralAbility]
        -- The game fades this HUD group separately when opening the selector.
        -- Leave the panel canvas and selector background/choices rendering.
        if utility then hide(utility.view.selectedCanvasGroup) end
    end
    local ctrl = panels[PanelId.UIDPanel]
    if not ctrl then restore(true); return end
    local view = ctrl.view
    -- Disable individual Graphic components, never their parent GameObjects.
    -- Keep them hidden until their override is released; toggling Graphic.enabled
    -- around every render invokes UI rebuilds even when settings are unchanged.
    if all or math.floor(s.mask / 2) % 2 == 1 then hide(view.text) end
    if all or math.floor(s.mask / 4) % 2 == 1 then hide(view.pingCon, view.pingNubTxt) end
    if all or math.floor(s.mask / 8) % 2 == 1 then hide(view.pingNubTxt) end
    restore(true)
end
function s.set(mask)
    if s.failure then error(s.failure) end
    local changed = s.mask ~= mask
    s.mask = mask
    s.expires = Time.realtimeSinceStartup + 1
    if mask == 0 then s.stop() elseif changed then guarded(apply) end
    if s.failure then error(s.failure) end
    return true
end
s.expires = Time.realtimeSinceStartup + 1
rawset(_G, name, s)
s.callbacks[1] = update:Add('Tick', function()
    if Time.realtimeSinceStartup > s.expires then guarded(s.stop) end
end)
s.callbacks[2] = update:Add('TailTick', function()
    if Time.realtimeSinceStartup >= s.nextApply then guarded(apply) end
end)
return true
)lua";
}  // namespace endfield::ui_visibility::detail

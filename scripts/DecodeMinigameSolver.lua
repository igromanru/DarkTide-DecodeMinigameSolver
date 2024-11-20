--[[
    Author: Igromanru
    Date: 20.11.2024
    Mod Name: Decode Minigame Solver
    Version: 1.1.0
]]
local mod = get_mod("DecodeMinigameSolver")

local SettingNames = mod:io_dofile("DecodeMinigameSolver/scripts/setting_names")

local decode_on_target = false
local next_decode_on_target = false
local cooldown = 0.0 ---@type number

function mod.update(delta_time)
    if cooldown > 0 then
        cooldown = cooldown - delta_time
    end
end

local function get_cooldown()
    return mod:get(SettingNames.InteractCooldown) * 0.001 -- ms to sec
end

local function get_target_precision()
    return mod:get(SettingNames.TargetPrecision) * 0.1
end

---@param minigame MinigameDecodeSymbols
---@param t float # Time
---@param stage_offset number? #Default: 0 (current stage)
---@return boolean is_on_target
local function is_decode_on_target(minigame, t, stage_offset)
    if not minigame or not t then return false end
    stage_offset = stage_offset or 0

	local current_stage = minigame._current_stage
    if not current_stage then return false end
    current_stage = current_stage + stage_offset
    
    local sweep_duration = minigame._decode_symbols_sweep_duration
	local targets = minigame._decode_targets
	local target = targets[current_stage]
    if target then
        local precision = get_target_precision()
        local start_offset = 1.5 - precision
        local end_offset = 0.5 + precision
        local target_margin = 1 / (minigame._decode_symbols_items_per_stage - 1) * sweep_duration
        local start_target = (target - start_offset) * target_margin
        local end_target = (target - end_offset) * target_margin
        local cursor_time = minigame:_calculate_cursor_time(t)
        return cursor_time > start_target and cursor_time < end_target
    end

    return false
end

mod:hook_safe(CLASS.MinigameDecodeSymbols, "is_on_target", function(self, t)
	decode_on_target = mod:get(SettingNames.EnableMod) and (next_decode_on_target or (cooldown <= 0 and is_decode_on_target(self, t)))
    next_decode_on_target = decode_on_target and next_decode_on_target ~= true and is_decode_on_target(self, t, 1)
end)

mod:hook(CLASS.InputService, "_get", function(func, self, action_name)
    local result = func(self, action_name)

    if not result and action_name == "interact_hold" and decode_on_target then
        cooldown = get_cooldown()
        result = true
    end

    return result
end)


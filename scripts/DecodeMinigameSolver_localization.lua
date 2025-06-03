--[[
    Author: Igromanru
    Date: 20.11.2024
    Mod Name: Decode Minigame Solver
]]
local mod = get_mod("DecodeMinigameSolver")

local SettingNames = mod:io_dofile("DecodeMinigameSolver/scripts/setting_names")

return {
  mod_name =
  {
    en = "Decode Minigame Solver",
  },
  mod_description =
  {
    en = "Passes the Decode Symbol Minigame automatically",
    ["zh-cn"] = "自动通过解码符号迷你游戏",
  },
  [SettingNames.EnableMod] = {
    en = "Enable",
    ["zh-cn"] = "启用",
  },
  [SettingNames.InteractCooldown] = {
    en = "Interaction Cooldown",
    ["zh-cn"] = "互动冷却",
  },
  [SettingNames.InteractCooldownTooltip] = {
    en = "Wait time between interactions in milliseconds. Default: 100",
    ["zh-cn"] = "互动冷却时间，默认100毫秒",
  },
  [SettingNames.TargetPrecision] = {
    en = "Target Precision",
    ["zh-cn"] = "精确度",
  },
  [SettingNames.TargetPrecisionTooltip] = {
    en = "The bigger the value, the smaller the detection window when the cursor is positioned on the symbol. Default: 3",
    ["zh-cn"] = "该值越大，当光标位于符号上时，检测窗口越小。默认值：3",
  },
}

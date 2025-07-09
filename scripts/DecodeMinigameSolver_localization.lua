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
    ["zh-tw"] = "自動解碼",
  },
  mod_description =
  {
    en = "Passes the Decode Symbol Minigame automatically",
    ["zh-tw"] = "自動解碼小遊戲",
    ["zh-cn"] = "自动通过解码符号小游戏",
    ru = "Автоматически проходит мини-игру с символами декодирования",
  },
  [SettingNames.EnableMod] = {
    en = "Enable",
    ["zh-tw"] = "啟動",
    ["zh-cn"] = "启用",
    ru = "Включить",
  },
  [SettingNames.InteractCooldown] = {
    en = "Interaction Cooldown",
    ["zh-tw"] = "互動冷卻時間",
    ["zh-cn"] = "交互冷却时间",
    ru = "Ожидание взаимодействия",
  },
  [SettingNames.InteractCooldownTooltip] = {
    en = "Wait time between interactions in milliseconds. Default: 100",
    ["zh-tw"] = "互動冷卻時間為毫秒 預設值為100",
    ["zh-cn"] = "两次交互之间的等待时间（毫秒）。默认值：100",
    ru = "Время ожидания между взаимодействиями в миллисекундах. По умолчанию: 100",
  },
  [SettingNames.TargetPrecision] = {
    en = "Target Precision",
    ["zh-tw"] = "目標精確度",
    ["zh-cn"] = "目标精度",
    ru = "Точность цели",
  },
  [SettingNames.TargetPrecisionTooltip] = {
    en = "The bigger the value, the smaller the detection window when the cursor is positioned on the symbol. Default: 3",
    ["zh-tw"] = "當指標定位在符號上時 數值越大 偵測框越小 預設值為4",
    ["zh-cn"] = "数值越大，当光标定位在符号上时，检测窗口越小。默认值：3",
    ru = "Чем больше значение, тем меньше окно обнаружения, когда курсор находится на символе. По умолчанию: 3",
  },
}

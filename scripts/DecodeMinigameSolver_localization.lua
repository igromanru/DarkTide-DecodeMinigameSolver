local mod = get_mod("DecodeMinigameSolver")

local SettingNames = mod:io_dofile("DecodeMinigameSolver/scripts/setting_names")

return {
  mod_name =
  {
    en = "Decode Minigame Solver",
  },
  mod_description =
  {
    en = "Passes the Decode Symbol Minigame automatically"
  },
  [SettingNames.InteractCooldown] = {
    en = "Interaction Cooldown"
  },
  [SettingNames.InteractCooldownTooltip] = {
    en = "Wait time between interactions in milliseconds. Default: 100"
  },
  [SettingNames.TargetPrecision] = {
    en = "Target Precision"
  },
  [SettingNames.TargetPrecisionTooltip] = {
    en = "The bigger the value, the smaller the detection window when the cursor is positioned on the symbol. Default: 2"
  },
}

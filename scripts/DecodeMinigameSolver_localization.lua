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
  [SettingNames.UsePing] = {
    en = "Use ping for interaction cooldown"
  },
  [SettingNames.InteractCooldown] = {
    en = "Interaction Cooldown"
  },
  [SettingNames.InteractCooldownTooltip] = {
    en = "Wait time between interactions in miliseconds"
  },
}

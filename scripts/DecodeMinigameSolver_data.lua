local mod = get_mod("DecodeMinigameSolver")

local SettingNames = mod:io_dofile("DecodeMinigameSolver/scripts/setting_names")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	allow_rehooking = true,
	options = {
		widgets =
		{
			{
				setting_id = SettingNames.InteractCooldown,
				tooltip = SettingNames.InteractCooldownTooltip,
				type = "numeric",
				default_value = 100,
				range = {50, 300},
				decimals_number = 0
			},
			{
				setting_id = SettingNames.TargetPrecision,
				tooltip = SettingNames.TargetPrecisionTooltip,
				type = "numeric",
				default_value = 2,
				range = {0, 5},
				decimals_number = 0
			},
		},
	},
}

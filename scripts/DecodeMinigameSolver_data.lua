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
				setting_id = SettingNames.UsePing,
				type = "checkbox",
				default_value = true
			},
			{
				setting_id = SettingNames.InteractCooldown,
				tooltip = SettingNames.InteractCooldownTooltip,
				type = "numeric",
				default_value = 100,
				range = {50, 300},
				decimals_number = 0
			},
		},
	},
}

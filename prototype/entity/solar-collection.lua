data:extend{
	---@type data.SurfacePropertyPrototype
	{
		type = "surface-property",
		name = "pm-solar-collection-factor-day",
		default_value = 1,
	},
	---@type data.SurfacePropertyPrototype
	{
		type = "surface-property",
		name = "pm-solar-collection-factor-night",
		default_value = 1,
	},
	---@type data.CustomEventPrototype
	{
		type = "custom-event",
		name = "on_pm_solar_platform_placed"
	},

	---@type data.SolarPanelPrototype
	{
		type = "solar-panel",
		name = "pm-solar-platform-day",
		energy_source = {
			type =  "electric",
			usage_priority = "solar",
		},
		performance_at_day = 1,
		performance_at_night = 0,
		production = "1MJ",
		solar_coefficient_property = "pm-solar-collection-factor-day",
		picture = data.raw["solar-panel"]["solar-panel"].picture,
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					type = "script",
					effect_id = "on_pm_solar_platform_placed",
					custom_event = "on_pm_solar_platform_placed",
				}
			}
		},
	},
	---@type data.SolarPanelPrototype
	{
		type = "solar-panel",
		name = "pm-solar-platform-night",
		energy_source = {
			type =  "electric",
			usage_priority = "solar",
		},
		performance_at_day = 0,
		performance_at_night = 1,
		production = "1MJ",
		solar_coefficient_property = "pm-solar-collection-factor-night",
		picture = data.raw["solar-panel"]["solar-panel"].picture,
	}
}
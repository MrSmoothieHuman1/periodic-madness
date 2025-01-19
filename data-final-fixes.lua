require("compatibility.K2")
require("compatibility.BZ.foundry")
require("compatibility.BZ.zirconium")
require("compatibility.colour-theory-circuits")

-- HACK: temporary
local PM = require("library")
data:extend{
	{
		type = "recipe-category",
		name = "pm-reactor-coolant-burning",
	}--[[@as data.RecipeCategory]],
	{
		type = "recipe",
		name = "pm-water-coolant-burn",
		auto_recycle = false,
		category = "pm-reactor-coolant-burning",
		-- We want the contents of the recipe to be how much fluid it takes to cool it for 1kJ
		-- That means the 'time' of the recipe needs to be 1 second
		energy_required = 1,
		ingredients = {
			PM.ingredient("water", 1, "fluid")
		},
		results = {
			PM.product("pm-liquid-heat", 1, "fluid")
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "fluid",
		name = "pm-liquid-heat",
		icon = "__core__/graphics/icons/unknown.png",
		hidden = true,
		auto_barrel = false,
		base_color = {1,0,0},
		flow_color = {1,0,0},
		default_temperature = 15,
		fuel_value = "1kJ",
	}--[[@as data.FluidPrototype]]
}
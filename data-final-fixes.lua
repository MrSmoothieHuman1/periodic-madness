require("compatibility.K2")
require("compatibility.BZ.foundry")
require("compatibility.BZ.zirconium")
require("compatibility.colour-theory-circuits")

-- HACK: temporary
local PM = require("library")
data:extend{
	{
		type = "recipe",
		name = "pm-water-coolant-burn",
		auto_recycle = false,
		category = "pm-reactor-coolant-burning",
		-- We want the contents of the recipe to be how much fluid it takes to cool it for 1kJ
		-- That means the 'time' of the recipe needs to be 1 second

		-- And because of the sheer quantity of energy a reactor puts off,
		-- we want coolant to be able to cool *at least* 10kJ per unit of fluid
		-- But that's *super* thirsty (like 100/s for 1MW)

		-- I just checked and it consumes
		--	4000/s for 40MW when it's 10x
		--	400/s for 40MW when it's 100x
		-- 	80/s for 40MW when it's 500x
		energy_required = 100,
		ingredients = {
			PM.ingredient("water", 1, "fluid")
		},
		results = {
			PM.product("pm-liquid-heat", 100, "fluid")
		}
	}--[[@as data.RecipePrototype]],
}
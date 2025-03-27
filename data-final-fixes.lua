require("compatibility.K2")
require("compatibility.BZ.foundry")
require("compatibility.BZ.zirconium")
require("compatibility.colour-theory-circuits")
require("compatibility.mini-trains")

-- HACK: temporary
local PM = require("library")
data:extend{
	{
		type = "recipe",
		name = "pm-water-coolant-burn",
		auto_recycle = false,
		category = "pm-reactor-coolant-burning",
		-- We want the contents of the recipe to be how much fluid it takes to cool it for 50kJ
		-- That means the 'time' of the recipe needs to 1s for each liquid heat it produces

		-- If a granularity of 50kJ isn't enough, change
		-- the fluid fuel value and divider of the consumption

		-- With 50kJ, it's
		--	80/s for 40MW when it's 10x
		--	8/s for 40MW when it's 100x
		-- 	1.6/s for 40MW when it's 500x
		energy_required = 10,
		ingredients = {
			PM.ingredient("water", 1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid")
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "recipe",
		name = "pm-water-coolant-burn-with-exhuast",
		auto_recycle = false,
		category = "pm-reactor-coolant-burning-with-exhuast",
		energy_required = 10,
		ingredients = {
			PM.ingredient("water", 1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("steam", 1, "fluid", 3),
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "sound",
		name = "pm-meltdown-alarm",
		filename = "__base__/sound/programmable-speaker/siren.ogg"
	}--[[@as data.SoundPrototype]]
}

for k, m in pairs(data.raw["assembling-machine"]) do
	allowed_module_categories = {"speed", "productivity", "efficiency"}
end

--- Replace instances of plastic with pm plastic

local removals = {}
for _, recipe in pairs(data.raw["recipe"]) do
	if recipe.main_product == "plastic-bar" then
		table.insert(removals, recipe.name)
		goto continue --Go to next recipe because this one will be removed
	end
	if recipe.results then
		for _, result in pairs(recipe.results) do
			if result.name == "plastic-bar" then
				table.insert(removals, recipe.name)
				goto continue --Go to next recipe because this one will be removed
			end
		end
	end
	if recipe.ingredients then
		for _, ingedient in pairs(recipe.ingredients) do
			if ingedient.name == "plastic-bar" then
				ingedient.name = "pm-polyethylene-plastic"
			end
		end
	end
	::continue::
end

for _, removal in pairs(removals) do
	data.raw["recipe"][removal] = nil -- May want additional steps to ensure compatibility works
end

data.raw["item"]["plastic-bar"] = nil
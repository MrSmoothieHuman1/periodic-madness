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
		name = "pm-water-coolant-burn-with-exhuast",
		hidden = true,
		hidden_in_factoriopedia = true,
		auto_recycle = false,
		category = "pm-reactor-coolant-burning-with-exhuast",
		energy_required = 10,
		ingredients = {
			PM.ingredient("water", 2, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("steam", 1, "fluid", 3),
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "recipe",
		name = "pm-coolant-burn-with-exhuast",
		hidden = true,
		hidden_in_factoriopedia = true,
		auto_recycle = false,
		category = "pm-reactor-coolant-burning-with-exhuast",
		energy_required = 10,
		ingredients = {
			PM.ingredient("pm-coolant", 1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("pm-hot-coolant", 1, "fluid", 3),
		}
	}--[[@as data.RecipePrototype]],
		{
		type = "recipe",
		name = "pm-light-coolant-burn-with-exhuast",
		hidden = true,
		hidden_in_factoriopedia = true,
		auto_recycle = false,
		category = "pm-reactor-coolant-burning-with-exhuast",
		energy_required = 10,
		ingredients = {
			PM.ingredient("pm-coolant", 1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("pm-hot-light-coolant", 1, "fluid", 3),
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "sound",
		name = "pm-meltdown-alarm",
		filename = "__base__/sound/programmable-speaker/siren.ogg"
	}--[[@as data.SoundPrototype]]
}

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

local exempt_heating_coil_machines =
{
	data.raw["beacon"],
	data.raw["assembling-machine"],
	data.raw["lab"],
	data.raw["mining-drill"]
}
local exempt_building_module_machines =
{
	data.raw["assembling-machine"]["pm-circuit-megassembler"]
}

for _, machineType in pairs(exempt_heating_coil_machines) do
	for _, machine in pairs(machineType) do
		if not (machine.allowed_module_categories == nil) then
			for i, moduleCat in pairs(machine.allowed_module_categories) do
				if moduleCat.name == "pm-heating-coils" then
					table.remove(machine.allowed_module_categories,i)
					break
				end
				if moduleCat.name == "pm-circuit-megassembler-module" and not exempt_building_module_machines then
					table.remove(machine.allowed_module_categories,i)
					break
				end
			end
		elseif not (machine.module_slots == nil) and machine.module_slots > 0 and not (machine.allowed_effects == nil)  then
			if(machine.allowed_module_categories == nil) then
				machine.allowed_module_categories = {}
			end
			for _, moduleCat in pairs(data.raw["module-category"]) do
				if not(moduleCat.name == "pm-heating-coils" or moduleCat.name == "pm-circuit-megassembler-module") then
					table.insert(machine.allowed_module_categories, moduleCat.name)
				end
			end
		end
	end
end
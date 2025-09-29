PM = require("pennyisms.library")

require("compatibility.K2")
require("compatibility.BZ.foundry")
require("compatibility.BZ.zirconium")
require("compatibility.colour-theory-circuits")
require("compatibility.mini-trains")
require("compatibility.stack-inserters")

-- HACK: temporary
data:extend{
	-- We want the contents of the recipe to be how much fluid it takes to cool it for 50kJ
		-- That means the 'time' of the recipe needs to 1s for each liquid heat it produces

		-- If a granularity of 50kJ isn't enough, change
		-- the fluid fuel value and divider of the consumption

		-- With 50kJ, it's
		--	80/s for 40MW when it's 10x
		--	8/s for 40MW when it's 100x
		-- 	1.6/s for 40MW when it's 500x
	{
		type = "recipe",
		name = "pm-water-coolant-burn-with-exhuast",
		hidden = true,
		hidden_in_factoriopedia = true,
		auto_recycle = false,
		category = "pm-reactor-coolant-burning-with-exhuast",
		energy_required = 10,
		ingredients = {
			PM.ingredient("water", 0.2, "fluid")
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
			PM.ingredient("pm-coolant", 0.1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("pm-hot-coolant", 0.1, "fluid", 3),
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
			PM.ingredient("pm-light-coolant", 0.1, "fluid")
		},
		icons = {util.empty_icon()},
		-- main_product = "pm-liquid-heat",
		results = {
			PM.product("pm-liquid-heat", 10, "fluid", 2),
			PM.product("pm-hot-light-coolant", 0.1, "fluid", 3),
		}
	}--[[@as data.RecipePrototype]],
	{
		type = "sound",
		name = "pm-meltdown-alarm",
		filename = "__base__/sound/programmable-speaker/siren.ogg"
	}--[[@as data.SoundPrototype]]
}

--- MARK: Item removal
--- Replace instances of plastic with pm plastic

local item_replacements = {
	["plastic-bar"] = "pm-polyethylene-plastic"
}

local removals = {}
for recipe_name, recipe in pairs(data.raw["recipe"]) do
	if item_replacements[recipe.main_product] then
		table.insert(removals, recipe_name)
		goto continue --Go to next recipe because this one will be removed
	end
	if recipe.results then
		for _, result in pairs(recipe.results) do
			if item_replacements[result.name] then
				table.insert(removals, recipe_name)
				goto continue --Go to next recipe because this one will be removed
			end
		end
	end
	if recipe.ingredients then
		for _, ingedient in pairs(recipe.ingredients) do
			if item_replacements[ingedient.name] then
				ingedient.name = item_replacements[ingedient.name]
			end
		end
	end
	::continue::
end

for _, removal in pairs(removals) do
	data.raw["recipe"][removal].hidden = true
	data.raw["recipe"][removal].hidden_in_factoriopedia = true
end

for item in pairs(item_replacements) do
	for item_type in pairs(defines.prototypes.item) do
		local item_lookup = data.raw[item_type]
		if item_lookup and item_lookup[item] then
			item_lookup[item].hidden = true
			item_lookup[item].hidden_in_factoriopedia = true
		end
	end
end

-- MARK: Science removal

local sciences_to_remove = {
	["military-science-pack"] = true,
	["utility-science-pack"] = true,
	["production-science-pack"] = true,
}

for _, technology in pairs(data.raw["technology"]) do
	local unit = technology.unit
	if not unit then goto continue end

	local bad_indexes, bad_count = {}, 0
	for index, ingredient in pairs(unit.ingredients) do
		if sciences_to_remove[ingredient[1]] then
			bad_count = 1 + bad_count
			bad_indexes[bad_count] = index
		end
	end

  for i = bad_count, 1, -1 do
    table.remove(unit.ingredients, bad_indexes[i])
  end

	::continue::
end

for name in pairs(sciences_to_remove) do
	local tech = data.raw["technology"][name]
	if tech then
		tech.hidden = true
	end

	local recipe = data.raw["recipe"][name]
	if recipe then
		recipe.hidden = true
		recipe.hidden_in_factoriopedia = true
	end

	local pack = data.raw["tool"][name]
	if pack then
		pack.hidden = true
		pack.hidden_in_factoriopedia = true
	end
end


-- MARK: No productivity limits

for _, recipe in pairs(data.raw.recipe) do
    recipe.maximum_productivity = 99999999 --insane number, if anyone reaches it just give them a medal
end

-- MARK: Category updating

local ignored_entities = {
	["pm-circuit-megassembler"] = true,
	["pm-circuit-megassembler-MK2"] = true,
	["pm-coil-heater"] = true,
	["pm-electric-coke-oven"] = true,
    ["pm-electronic-laser-etcher"] = true,
}

for _, entity_type in pairs{
	"beacon",
	"lab",
	"mining-drill",
	"assembling-machine",
	"rocket-silo",
} do
  for name, prototype in pairs(data.raw[entity_type] or {}) do
		if not ignored_entities[name] then
			prototype.allowed_module_categories = PM.remove_module_categories(prototype.allowed_module_categories,
			{
				"pm-heating-coils",
				"pm-circuit-megassembler-module",
				"pm-circuit-megassembler-module-MK2",
                "pm-laser-modules"
			})
		end
	end
end

-- MARK: Module slot updating

local excluded_machines =
{
	["electric-furnace"] = true,
	["pm-heat-furnace"] = true,
	["pm-electric-furnace-2"] = true,
	["pm-electric-boiler-1"] = true,
	["pm-electric-boiler-2"] = true,
}

for name, machine in pairs(data.raw["furnace"]) do
	--FIXME: Get some actual criteria for what's a thematic furnace
	if not machine.module_slots or machine.module_slots <= 0
	or excluded_machines[name] then
		goto continue
	end

	machine.module_slots = machine.module_slots + 8
	machine.allowed_module_categories = {"pm-heating-coils"}
	machine.icons_positioning =
	{
		{
			inventory_index = defines.inventory.crafter_modules,
			shift = {0, 1},
			multi_row_initial_height_modifier = -0.3,
			max_icons_per_row = 5,
			scale = 0.42
		}
	}

	::continue::
end

if false then
	-- FIXME: this check doesn't filter for unopenable entities
	-- for type_name in pairs(defines.prototypes.entity) do
	-- 	for name, entity in pairs(data.raw[type_name] or {}) do
	-- 		if not entity.open_sound then
	-- 			error("data.raw['"..type_name.."']['"..name.."'].open_sound is missing")
	-- 		end
	-- 		if not entity.close_sound then
	-- 			error("data.raw['"..type_name.."']['"..name.."'].close_sound is missing")
	-- 		end
	-- 	end
	-- end

	for type_name in pairs(defines.prototypes.item) do
		for name, item in pairs(data.raw[type_name] or {}) do
			if not item.inventory_move_sound then
				error("data.raw['"..type_name.."']['"..name.."'].inventory_move_sound is missing")
			end
		end
	end
end

---@alias data.defines.inventory defines.inventory

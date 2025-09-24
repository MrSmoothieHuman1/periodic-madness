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

--removes those darstardly military science packs
for _, technology in pairs(data.raw["technology"]) do
	local unit = technology.unit
	if unit then
	  local bad_indexes, bad_count = {}, 0
	  for index, ingredient in pairs(unit.ingredients) do
	    if ingredient[1] == "military-science-pack" then
	      bad_count = 1 + bad_count
	      bad_indexes[bad_count] = index
	    end
  end
  for i = bad_count, 1, -1 do
    table.remove(unit.ingredients, bad_indexes[i])
  end
end
end
data.raw["technology"]["military-science-pack"].hidden = true
data.raw["recipe"]["military-science-pack"].hidden = true
data.raw["recipe"]["military-science-pack"].hidden_in_factoriopedia = true
data.raw["tool"]["military-science-pack"].hidden = true
data.raw["tool"]["military-science-pack"].hidden_in_factoriopedia = true

--removed production/utility science
for _, technology in pairs(data.raw["technology"]) do
	local unit = technology.unit
	if unit then
	  local bad_indexes, bad_count = {}, 0
	  for index, ingredient in pairs(unit.ingredients) do
	    if ingredient[1] == "utility-science-pack" then
	      bad_count = 1 + bad_count
	      bad_indexes[bad_count] = index
	    end
  end
  for i = bad_count, 1, -1 do
    table.remove(unit.ingredients, bad_indexes[i])
  end
end
end
for _, technology in pairs(data.raw["technology"]) do
	local unit = technology.unit
	if unit then
	  local bad_indexes, bad_count = {}, 0
	  for index, ingredient in pairs(unit.ingredients) do
	    if ingredient[1] == "production-science-pack" then
	      bad_count = 1 + bad_count
	      bad_indexes[bad_count] = index
	    end
  end
  for i = bad_count, 1, -1 do
    table.remove(unit.ingredients, bad_indexes[i])
  end
end
end
data.raw["technology"]["utility-science-pack"].hidden = true
data.raw["recipe"]["utility-science-pack"].hidden = true
data.raw["recipe"]["utility-science-pack"].hidden_in_factoriopedia = true
data.raw["tool"]["utility-science-pack"].hidden = true
data.raw["tool"]["utility-science-pack"].hidden_in_factoriopedia = true
data.raw["technology"]["production-science-pack"].hidden = true
data.raw["recipe"]["production-science-pack"].hidden = true
data.raw["recipe"]["production-science-pack"].hidden_in_factoriopedia = true
data.raw["tool"]["production-science-pack"].hidden = true
data.raw["tool"]["production-science-pack"].hidden_in_factoriopedia = true

for _, recipe in pairs(data.raw.recipe) do
    recipe.maximum_productivity = 99999999 --insane number, if anyone reaches it just give them a medal
end

for _, entity_type in pairs{
  "beacon",
  "lab",
  "mining-drill",
  "assembling-machine",
  "rocket-silo",
} do

-- Inside the loop

  for entity, prototype in pairs(data.raw[entity_type] or {}) do
    prototype.allowed_module_categories = PM.remove_module_categories(prototype.allowed_module_categories,
	{
      "pm-heating-coils",
      "pm-circuit-megassembler-module",
	  "pm-circuit-megassembler-module-MK2"
    })
	if data.raw["assembling-machine"]["pm-circuit-megassembler"] then
		data.raw["assembling-machine"]["pm-circuit-megassembler"].allowed_module_categories = {"pm-circuit-megassembler-module"}
	end
	if data.raw["assembling-machine"]["pm-circuit-megassembler-MK2"] then
		data.raw["assembling-machine"]["pm-circuit-megassembler-MK2"].allowed_module_categories = {"pm-circuit-megassembler-module-MK2"}
	end
	if data.raw["beacon"]["pm-coil-heater"] then
		data.raw["beacon"]["pm-coil-heater"].allowed_module_categories = {"pm-heating-coils"}
	end
	if data.raw["assembling-machine"]["pm-electric-coke-oven"] then
		data.raw["assembling-machine"]["pm-electric-coke-oven"].allowed_module_categories = {"pm-heating-coils"}
	end
	end
end

local excluded_machines =
{
	data.raw["furnace"]["electric-furnace"],
	data.raw["furnace"]["pm-heat-furnace"],
	data.raw["furnace"]["pm-electric-furnace-2"],
	data.raw["furnace"]["pm-electric-boiler-1"],
	data.raw["furnace"]["pm-electric-boiler-2"]
}

 for _, machine in pairs(data.raw["furnace"]) do
        if not(machine.module_slots == nil) and machine.module_slots > 0 and not excluded_machines then
            machine.module_slots = machine.module_slots + 8
            machine.allowed_module_categories = {"hc-heating-coils"}
            machine.icons_positioning =
            {
                {inventory_index = defines.inventory.crafter_modules, shift = {0, 1}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 5, scale = 0.42}
            }
        end
    end

for _, machine in pairs(data.raw["assembling-machine"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end
for _, machine in pairs(data.raw["furnace"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end
for _, machine in pairs(data.raw["rocket-silo"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end

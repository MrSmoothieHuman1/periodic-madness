---@class MultiEnergySourceData
---@field energy_steps uint8 The uint8 limitation is arbitrary, but I do not feel like more makes any sense
---@field loader_data table<uint,{position:Vector,orientation:defines.direction}>

---@class PMMultiEnergySourceModData
---@field [data.EntityName] MultiEnergySourceData

---@type PMMultiEnergySourceModData
local multi_energy_source_data = {}

data:extend{
	---@type data.ModData
	{
		type = "mod-data",
		name = "pm-multi-energy-source-data",
		data_type = "PMMultiEnergySourceModData",
		data = multi_energy_source_data,
	}, 
	---@type data.Loader1x1Prototype
	{
		type = "loader-1x1",
		name = "pm-multi-energy-source-loader",
		filter_count = 5,
		speed = 1000,
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		-- collision_mask = {layers={loader = true}},
		container_distance = 1.0,
	},
	---@type data.CustomEventPrototype
	{
		type = "custom-event",
		name = "pm_on_multi_energy_entity_created",
	}
}
	
---@type data.FluidPrototype
local initial_fluid = {
	type = "fluid",
	name = "pm-initial-fake-energy-fluid",
	icons = {util.empty_icon()},
	base_color = {0.5, 0.5, 0.5},
	flow_color = {0.5, 0.5, 0.5},
	default_temperature = 1,
	max_temperature = 1e20,
	auto_barrel = false,
	-- fuel_value = "1MJ",
	heat_capacity = "1J",
}

local final_fluid = util.copy(initial_fluid)
final_fluid.name = "pm-final-fake-energy-fluid"

data:extend{initial_fluid, final_fluid}

local made_intermediate_fluids = 0
local function make_intermediate_fluid()
	made_intermediate_fluids = made_intermediate_fluids + 1
	local new_fluid = util.copy(initial_fluid)
	new_fluid.name = "pm-intermediate-fake-energy-fluid-"..made_intermediate_fluids
	data:extend{new_fluid}
end

---@param filter data.FluidID?
---@param direction data.FluidFlowDirection
---@return data.FluidBox
local function make_fluidbox(filter, direction)
	---@type data.FluidBox
	return {
		volume = 100,
		filter = filter,
		production_type = direction,
		pipe_connections = {{
			flow_direction = direction,
			connection_type = "linked",
			linked_connection_id = direction == "input" and 1 or 2,
		}}
	}
end

---@param energy_source data.CompoundEnergySource
---@param data MultiEnergySourceData
---@param index uint
---@return data.EnergySource
local function update_compound_data(energy_source, data, index)
	if energy_source.type == "burner" then
		data.loader_data[index] = {
			position = energy_source.loader_position or error("Loader position must be defined for burner energy source"),
			orientation = energy_source.loader_rotation or error("Loader rotation must be defined for burner energy source"),
		}
		energy_source.loader_position = nil
		energy_source.loader_rotation = nil
	end

	return energy_source
end

---@class data.CompoundElectricEnergySource : data.ElectricEnergySource
---@field usage_ratio number
---@class data.CompoundHeatEnergySource : data.HeatEnergySource
---@field usage_ratio number
---@class data.CompoundFluidEnergySource : data.FluidEnergySource
---@field usage_ratio number
---@class data.CompoundBurnerEnergySource : data.BurnerEnergySource
---@field usage_ratio number
---@field loader_position Vector
---@field loader_rotation defines.direction

---@alias data.CompoundEnergySource
---| data.CompoundElectricEnergySource
---| data.CompoundBurnerEnergySource
---| data.CompoundHeatEnergySource
---| data.CompoundFluidEnergySource -- Not recommended


---@alias Omit<T, K extends keyof T> Pick<T, Exclude<keyof T, K>>
---@alias SingleEnergySourceEntity data.EntityWithOwnerPrototype & {energy_source:data.BaseEnergySource, energy_usage:data.Energy}
---@alias MultiEnergySourced<T extends SingleEnergySourceEntity> Omit<T,'energy_source'> & {energy_source:data.CompoundEnergySource[]}

---@generic T extends SingleEnergySourceEntity
---@param proto MultiEnergySourced<T>
---@return T
local function multi_energy_source(proto)
	local energy_sources = proto.energy_source
	-- proto.energy_source = nil
	---@type T
	proto = proto
	---@cast proto.energy_source data.FluidEnergySource
	proto.energy_source = {
		type = "fluid",
		scale_fluid_usage = true,
		fluid_box = make_fluidbox(nil, "input")
	}

	proto.created_effect = PM.script_trigger("pm_on_multi_energy_entity_created", proto.created_effect)

	if not (#energy_sources > 1) then
		error("You need to provde two or more energy sources if you want it to be MultiEnergySourced. Provided:\n"..serpent.block(energy_sources))
	end

	local total_energy_use = util.parse_energy(proto.energy_usage)
	local ratio_total = 0.0
	for i = 1, #energy_sources do
		ratio_total = ratio_total + energy_sources[i].usage_ratio
	end

	---@type data.Energy[]
	local energy_use = {}
	---@type float[]
	local target_temperature = {}
	for i = 1, #energy_sources do
		local ratio = energy_sources[i].usage_ratio / ratio_total
		energy_use[i] = (ratio * total_energy_use).."J"
		target_temperature[i] = (target_temperature[i-1] or 1) + (ratio * total_energy_use)
		-- if i > 1 then
		-- else
		-- 	target_temperature[i] = 1
		-- end
	end

	---@type MultiEnergySourceData
	local compound_data = {
		energy_steps = #energy_sources,
		loader_data = {}
	}
	multi_energy_source_data[proto.name] = compound_data

	local last_fluid = "pm-initial-fake-energy-fluid"

	-- HACK: for testing
	initial_fluid.default_temperature = target_temperature[1]

	data:extend{{
		type = "offshore-pump",
		name = proto.name.."-energy-source-1",
		energy_source = update_compound_data(energy_sources[1], compound_data, 1),
		energy_usage = energy_use[1],
		pumping_speed = 1,
		fluid_source_offset = {0,0},
		fluid_box = make_fluidbox(last_fluid, "output"),
		-- selectable_in_game = false,
		collision_mask = {layers = {}},
		collision_box = proto.collision_box,
	}--[[@type data.OffshorePumpPrototype]]}


	for i = 2, #energy_sources do
		local next_fluid = "pm-final-fake-energy-fluid"
		if energy_sources[i+1] then
			next_fluid = "pm-intermediate-fake-energy-fluid-"..(i-1)
			if made_intermediate_fluids < i-1 then
				make_intermediate_fluid()
			end
		end

		data:extend{{
			type = "boiler",
			name = proto.name.."-energy-source-"..i,
			burning_cooldown = 0,
			energy_consumption = energy_use[i],
			target_temperature = target_temperature[i],
			mode = "output-to-separate-pipe",
			fluid_box = make_fluidbox(last_fluid, "input"),
			output_fluid_box = make_fluidbox(next_fluid, "output"),
			energy_source = update_compound_data(energy_sources[i], compound_data, i),
			collision_mask = {layers = {}},
			collision_box = proto.collision_box,
			-- selectable_in_game = false,
		}--[[@type data.BoilerPrototype]]}
	end

	---@diagnostic disable-next-line: return-type-mismatch
	return proto
end


---@type MultiEnergySourced<data.AssemblingMachinePrototype>
local accelerator = {
	type = "assembling-machine",
	name = "pm-30-particle-accelerator",
	icon_size = 64,
	icon = "__periodic-madness__/graphics/icons/buildings/cryogenic-plant.png",
	minable = { mining_time = 1, result = "pm-cryogenic-plant" },
	flags = { "placeable-neutral", "placeable-player", "player-creation" },
	max_health = 1000,
	corpse = "assembling-machine-1-remnants",
	dying_explosion = "assembling-machine-1-explosion",
	collision_box = { { -14.9, -14.9 }, { 14.9, 14.9 } },
	selection_box = { { -15, -15 }, {15, 15} },
	map_color = {0.655, 0.655, 0.655},
	alert_icon_shift = util.by_pixel(0, -12),
	crafting_speed = 1,
	crafting_categories = { "crafting" },
	module_slots = 6,
	allowed_effects = PM.all_effects(),
	icons_positioning = 
	{
		{inventory_index = defines.inventory.crafter_modules, shift = {0, 1}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 8, scale = 0.35}
	},
	energy_usage = "1GW",
	energy_source =
	{
		---@type data.CompoundBurnerEnergySource
		{
			type = "burner",
			fuel_inventory_size = 1,
			initial_fuel_percent = 1,
			--TODO: Get a custom fuel category and burner usage,
			loader_position = {14.5, 0},
			loader_rotation = defines.direction.west,
			usage_ratio = 1,
		},
		---@type data.CompoundElectricEnergySource
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = {pollution = 1},
			usage_ratio = 5,
		},
	},
	graphics_set =
	{
		status_colors = pm_diode_status_colors(),
		animation = 
		{
			layers =
			{
				{
					filename = "__periodic-madness__/graphics/entities/buildings/30-particle-accelerator/30-particle-accelerator.png",
					width = 1920,
					height = 1920,
					scale = 0.5
				},
			}
		},
	},
}


data:extend{
	multi_energy_source(accelerator), -- I don't know how to type a table literal parameter for this function call.
}
local collision_mask_util = require("collision-mask-util")


---@class MultiEnergySourcePlacementData
---@field entity_name data.EntityName
---@field position Vector
---@field direction defines.direction
---@field is_fluid? true
---@field is_hidden_surface? true
---@field is_linked_belt? true Every two linked belts will automatically be connected
---@field belt_type? BeltConnectionType
---@field proxy_target? defines.inventory The inventory index of the next entity in the placement array

---@class PMMultiEnergySourceModData
---@field [data.EntityName] MultiEnergySourcePlacementData[]

---@type PMMultiEnergySourceModData
local multi_energy_source_data = {}
	
---@type data.FluidPrototype
local fake_energy_fluid = {
	type = "fluid",
	name = "pm-fake-compound-energy-fluid",
	icons = {util.empty_icon()},
	base_color = {0.5, 0.5, 0.5},
	flow_color = {0.5, 0.5, 0.5},
	default_temperature = 1,
	max_temperature = 1e20,
	auto_barrel = false,
	heat_capacity = "1J",
}

---@return data.EntityPrototypeFlags
local function hidden_entity_flags()
	return {
		"placeable-player",
		"player-creation",
		"not-rotatable",
		"not-on-map",
		"not-deconstructable",
		"not-blueprintable",
		"not-in-made-in",
		"not-in-bonus-gui",
		"not-in-mined-by",
	}
end

data:extend{
	---@type data.ModData
	{
		type = "mod-data",
		name = "pm-multi-energy-source-data",
		data_type = "PMMultiEnergySourceModData",
		data = multi_energy_source_data,
	},
	---@type data.CustomEventPrototype
	{
		type = "custom-event",
		name = "pm_on_multi_energy_entity_created",
	},
	fake_energy_fluid,
	---@type data.Loader1x1Prototype
	{
		type = "loader-1x1",
		name = "pm-multi-energy-source-loader",
		icons = {util.empty_icon()},
		flags = hidden_entity_flags(),
		selectable_in_game = false,
		filter_count = 5,
    animation_speed_coefficient = 32/2,
    speed = 0.03125*2,
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		-- collision_mask = {layers={loader = true}},
		container_distance = 1.0,
		belt_animation_set = data.raw["transport-belt"]["transport-belt"].belt_animation_set,
	},
	---@type data.ProxyContainerPrototype
	{
		type = "proxy-container",
		name = "pm-multi-energy-source-proxy",
		icons = {util.empty_icon()},
		flags = hidden_entity_flags(),
		selectable_in_game = false,
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	},
	---@type data.LinkedBeltPrototype
	{
		type = "linked-belt",
		name = "pm-multi-energy-source-linked-belt",
		icons = {util.empty_icon()},
		flags = hidden_entity_flags(),
		selectable_in_game = false,
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    animation_speed_coefficient = 32/2,
    speed = 0.03125*2,
		structure = {
			direction_in = util.empty_sprite(),
			direction_out = util.empty_sprite(),
			back_patch = util.empty_sprite(),
			front_patch = util.empty_sprite(),
			direction_in_side_loading = util.empty_sprite(),
			direction_out_side_loading = util.empty_sprite(),
		},
		belt_animation_set = data.raw["transport-belt"]["transport-belt"].belt_animation_set,
	},
}

---@param name string
---@param default_temperature float
---@return data.FluidName
local function make_initial_fluid(name, default_temperature)
	local new_fluid = util.copy(fake_energy_fluid)
	new_fluid.name = name
	new_fluid.default_temperature = default_temperature
	data:extend{new_fluid}
	return name
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

---@param entity SingleEnergySourceEntity
---@param placement_data MultiEnergySourcePlacementData[]
local function add_placement(entity, placement_data)
	---@type data.CompoundEnergySource
	local energy_source = entity.energy_source
	---@type Vector
	local placement_position = {0,0}

	if energy_source.type == "burner" then
		local loader_position = energy_source.loader_position
		energy_source.loader_position = nil
		if not loader_position then error("Loader position must be defiend for burner energy source") end

		local output_direction = energy_source.loader_direction
		energy_source.loader_direction = nil
		if not output_direction then error("Loader rotation must be defined for burner energy source") end
		local input_direction = PM.rotate_direction(output_direction, defines.direction.south)

		-- Update entity
		entity.collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
		entity.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
		placement_position = PM.shift_direction(loader_position, input_direction, 1)

		placement_data[#placement_data + 1] = {
			entity_name = "pm-multi-energy-source-linked-belt",
			position = loader_position,
			direction = input_direction,
			belt_type = "input",
			is_linked_belt = true,
		}
		placement_data[#placement_data + 1] = {
			entity_name = "pm-multi-energy-source-linked-belt",
			position = PM.shift_direction(loader_position, output_direction, 1),
			direction = input_direction,
			belt_type = "output",
			is_hidden_surface = true,
			is_linked_belt = true,
		}
		placement_data[#placement_data + 1] = {
			entity_name = "pm-multi-energy-source-loader",
			position = loader_position,
			direction = input_direction,
			is_hidden_surface = true,
			belt_type = "input"
		}
		placement_data[#placement_data + 1] = {
			entity_name = "pm-multi-energy-source-proxy",
			position = placement_position,
			direction = defines.direction.north,
			is_hidden_surface = true,
			proxy_target = defines.inventory.fuel
		}
	end


	placement_data[#placement_data + 1] = {
		entity_name = entity.name,
		is_fluid = true,
		position = placement_position,
		direction = defines.direction.north,
	}
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
---@field loader_direction defines.direction

---@alias data.CompoundEnergySource
---| data.CompoundElectricEnergySource
---| data.CompoundBurnerEnergySource
---| data.CompoundHeatEnergySource
---| data.CompoundFluidEnergySource -- Not recommended


---@alias Omit<T, K extends keyof T> Pick<T, Exclude<keyof T, K>>
---@alias SingleEnergySourceEntity data.EntityWithOwnerPrototype & {energy_source:data.BaseEnergySource}
---@alias SingleEnergySourceEntityWithUsage data.EntityWithOwnerPrototype & {energy_source:data.BaseEnergySource, energy_usage:data.Energy}
---@alias MultiEnergySourced<T extends SingleEnergySourceEntityWithUsage> Omit<T,'energy_source'> & {energy_source:data.CompoundEnergySource[]}

---@generic T extends SingleEnergySourceEntityWithUsage
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
		fluid_box = make_fluidbox(fake_energy_fluid.name, "input"),
		render_no_power_icon = false, -- Other energy sources should cover it
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
		energy_sources[i].usage_ratio = nil -- cleanup
		energy_use[i] = (ratio * total_energy_use).."J"
		target_temperature[i] = (target_temperature[i-1] or 1) + (ratio * total_energy_use)
	end
	-- These are only for emmylua's sake
	assert(#energy_use > 1)
	assert(#target_temperature > 1)

	---@type MultiEnergySourcePlacementData[]
	local placement_info = {}
	multi_energy_source_data[proto.name] = placement_info
	local fluid = make_initial_fluid(proto.name.."-initial-energy-fluid", target_temperature[1])

	---@type data.OffshorePumpPrototype
	local offshore_pump = {
		type = "offshore-pump",
		name = proto.name.."-energy-source-1",
		icon = proto.icon,
		icon_size = proto.icon_size,
		icons = proto.icons,
		flags = hidden_entity_flags(),
		energy_source = energy_sources[1],
		energy_usage = energy_use[1],
		pumping_speed = 1,
		fluid_source_offset = {0,0},
		fluid_box = make_fluidbox(fluid, "output"),
		collision_mask = collision_mask_util.get_mask(proto),
		collision_box = proto.collision_box,
		selection_box = proto.collision_box,
		-- selectable_in_game = false,
		selection_priority = 65,
	}
	add_placement(offshore_pump, placement_info)
	data:extend{offshore_pump}



	for i = 2, #energy_sources do
		---@type data.BoilerPrototype
		local boiler = {
			type = "boiler",
			name = proto.name.."-energy-source-"..i,
			icon = proto.icon,
			icon_size = proto.icon_size,
			icons = proto.icons,
			flags = hidden_entity_flags(),
			burning_cooldown = 0,
			energy_consumption = energy_use[i]--[[@as data.Energy]],
			target_temperature = target_temperature[i],
			mode = "output-to-separate-pipe",
			fluid_box = make_fluidbox(nil, "input"),
			output_fluid_box = make_fluidbox(fake_energy_fluid.name, "output"),
			energy_source = energy_sources[i],
			collision_mask = collision_mask_util.get_mask(proto),
			collision_box = proto.collision_box,
			selection_box = proto.collision_box,
			selectable_in_game = false,
			selection_priority = 60,
		}
		add_placement(boiler, placement_info)
		data:extend{boiler}
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
			loader_direction = defines.direction.east,
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
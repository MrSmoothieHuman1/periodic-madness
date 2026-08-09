---@type event_handler
local handler = {}
handler.events = {}
handler.on_nth_tick = {}

---@class MultiEnergyEntity
---@field entities table<uint64,LuaEntity>
---@class MultiEnergyLoader
---@field data MultiEnergyEntity
---@field loader LuaEntity
---@field spill_position MapPosition
---@field spill_surface LuaSurface

---@class (partial) PeriodicStorage
---@field multi_energy_source_surface LuaSurface
---@field multi_energy_entities table<uint64, MultiEnergyEntity>
---@field multi_energy_loaders table<uint64, MultiEnergyLoader>
storage = storage

local belt_type_types = {
	["linked-belt"] = true,
	["loader"] = true,
	["loader-1x1"] = true,
	["underground-belt"] = true,
}

local true_or_nil = {
	["boolean"] = true,
	["nil"] = true,
}

---@type table<defines.inventory,true>
local valid_inventory_index = {}
for _, inv in pairs(defines.inventory) do
	valid_inventory_index[inv] = true
end

---@param msg string
---@param entity data.EntityName
---@param index integer
---@param placement MultiEnergySourcePlacementData
---@return never
local function placement_error_v(msg, entity, index, placement)
	error(msg..": "..entity.." ["..index.."]-> "..serpent.block(placement), 2)
end

local compound_map = prototypes.mod_data["pm-multi-energy-source-data"]--[[@as LuaModData<PMMultiEnergySourceModData>]].data
for entity_name, placement_array in pairs(compound_map) do
	if not prototypes.entity[entity_name] then
		log("PMMultiEnergySourceModData contained an entry for a non-existent entity: "..entity_name)
		compound_map[entity_name] = nil
		goto continue
	end

	---@type defines.inventory?
	local proxy_target
	---@type int?
	local proxy_source_index
	---@type MultiEnergySourcePlacementData?
	local proxy_source_placement
	for index, placement in pairs(placement_array) do
		local placement_error = function (msg)
			return placement_error_v(msg, entity_name, index, placement)
		end

		if not PM.validate.uint(index - 1) then
			placement_error("The array of placement data had a non-integer key")
		elseif not type(placement) == "table" then
			placement_error("A non-table entry was found within the array of placement data")
		end

		if not PM.validate.mapposition(placement.position) then
			placement_error("A valid placement position must be defined")
		end
		if not PM.validate.int_range(placement.direction, defines.direction.north, defines.direction.south * 2 - 1) then
			placement_error("A valid placement direction must be defined")
		end

		local placed_entity = prototypes.entity[placement.entity_name]
		if not placed_entity then
			placement_error("The placement entry was for an entity that does not exist")
		end

		if placement.belt_type and not belt_type_types[placed_entity.type] then
			placement_error("The placement entry had a belt type for an entity type that doesn't support it")
		elseif placement.belt_type and not placement.belt_type == "input" and placement.belt_type == "output" then
			placement_error("Invalid value for belt_type")
		end

		if placement.proxy_target then
			if placed_entity.type ~= "proxy-container" then
				placement_error("Non-proxy containers cannot have a proxy target")
			end
			if proxy_target then
				placement_error("Proxy containers cannot be chained")
			end
			if not valid_inventory_index[placement.proxy_target] then
				placement_error("Proxy target must be a valid inventory index")
			end
			proxy_target = placement.proxy_target
			proxy_source_index = index
			proxy_source_placement = placement
		elseif proxy_target then
			assert(proxy_source_index)
			assert(proxy_source_placement)

			local is_inv = placed_entity.get_inventory_size(proxy_target, "normal")
			if not is_inv then
				placement_error_v("Proxy target must be for a valid inventory index on the next placed entity, '"..placement.entity_name.."'",
					entity_name, proxy_source_index, proxy_source_placement
				)
			end

			proxy_target = nil
			proxy_source_index = nil
			proxy_source_placement = nil
		end

		if not true_or_nil[type(placement.is_fluid)] then
			placement_error("is_fluid needs to be a boolean")
		elseif not true_or_nil[type(placement.is_linked_belt)] then
			placement_error("is_linked_belt needs to be a boolean")
		elseif not true_or_nil[type(placement.is_hidden_surface)] then
			placement_error("is_hidden_surface needs to be a boolean")
		end

		if placed_entity.type == "linked-belt" or placement.is_linked_belt then
			if placed_entity.type ~= "linked-belt" or not placement.is_linked_belt then
				placement_error("A placed entity of type 'linked-belt' must set is_linked_belt to true")
			end
		end
	end

	::continue::
end

--MARK: Entity Placed

---@param event EventData.on_script_trigger_effect
function handler.events.pm_on_multi_energy_entity_created(event)
	local entity = event.cause_entity
	if not entity then return end
	---@type data.EntityName
	local entity_name = entity.name
	local placement_list = compound_map[entity_name]
	if not placement_list then return log("Entity we don't care about raised `on_multi_energy_entity_created`. Possible registration gone bad for "..entity.name) end

	local surface = entity.surface
	local force = entity.force
	local position = entity.position
	local quality = entity.quality

	local main_registration = script.register_on_object_destroyed(entity)
	---@type table<uint64, LuaEntity>
	local entities = {
		[main_registration] = entity
	}
	---@type MultiEnergyEntity
	local data = {
		entities = entities,
	}
	storage.multi_energy_entities[main_registration] = data

	---@type LuaEntity?
	local last_fluid_entity
	---@type LuaEntity?
	local linked_belt_entity
	---@type LuaEntity?
	local proxy_entity
	---@type defines.inventory?
	local proxy_inventory

	for _, placement_info in pairs(placement_list) do
		local cur_surface
		if placement_info.is_hidden_surface then
			cur_surface = storage.multi_energy_source_surface
		else
			cur_surface = surface
		end

		local cur_position = PM.add_vector(position, placement_info.position)
		local cur_entity = cur_surface.create_entity({
			name = placement_info.entity_name,
			position = cur_position,
			direction = placement_info.direction,
			quality = quality,
			force = force,
			cause = entity,
			type = placement_info.belt_type,
		})
		if not cur_entity then
			error("Creation of compound entity failed")
		end
		local reg_id = script.register_on_object_destroyed(cur_entity)

		if placement_info.is_linked_belt then
			if not linked_belt_entity then
				linked_belt_entity = cur_entity
			else
				linked_belt_entity.connect_linked_belts(cur_entity)
				linked_belt_entity = nil
			end
		end

		if proxy_entity then
			proxy_entity.proxy_target_entity = cur_entity
			proxy_entity.proxy_target_inventory = proxy_inventory
			proxy_entity = nil
			proxy_inventory = nil
		elseif placement_info.proxy_target then
			proxy_entity = cur_entity
			proxy_inventory = placement_info.proxy_target
		end

		if placement_info.is_fluid then
			if last_fluid_entity then
				last_fluid_entity.add_fluid_box_linked_connection(2, cur_entity, 1)
			end
			last_fluid_entity = cur_entity
		end

		if cur_entity.type == "loader-1x1" then
			storage.multi_energy_loaders[reg_id] = {
				data = data,
				loader = cur_entity,
				-- target = next_entity.loader_container,
				spill_position = cur_position,
				spill_surface = surface,
			}
		end

		entities[reg_id] = cur_entity
		storage.multi_energy_entities[reg_id] = data
	end
	---@cast last_fluid_entity -?

	last_fluid_entity.add_fluid_box_linked_connection(2, entity, 1)
end

---@param loader MultiEnergyLoader
---@param target LuaEntity
---@param line LuaTransportLine
---@return boolean did_spill
local function attempt_spill(loader, target, line)
	-- Can't spill an empty line
	if #line == 0 then return false end
	local item = line[1]
	-- Can't spill if it'll already fill
	if target.can_insert(item) then return false end
	local inv = target.get_inventory(defines.inventory.proxy_main)
	-- It should always be a proxy pointing at another entity. *Always*
	if not inv then error("Proxy container had no inventory?") end
	local empty_stacks = inv.count_empty_stacks(true, true)
	-- If it's full, ignore it.
	if empty_stacks == 0 then return false end

	-- Finally, it's backed up on something.
	loader.spill_surface.spill_item_stack{
		position = loader.spill_position,
		stack = item,
		allow_belts = false,
	}
	line.remove_item(item)
	return true
end

handler.on_nth_tick[30] = function()
	for index, loader in pairs(storage.multi_energy_loaders) do
		local loader_entity = loader.loader
		if not loader_entity.valid then
			storage.multi_energy_loaders[index] = nil
			goto continue
		end

		local line_1 = loader_entity.get_transport_line(defines.transport_line.right_line)
		local line_2 = loader_entity.get_transport_line(defines.transport_line.left_line)
		local target = loader_entity.loader_container
		-- This happens when placed on a 30th tick
		if not target then goto continue end

		local did_spill = attempt_spill(loader, target, line_1)
									and attempt_spill(loader, target, line_2)
		if did_spill then
			-- TODO: Alert
		end

		::continue::
	end
end

function handler.events.on_object_destroyed(event)
	local data = storage.multi_energy_entities[event.registration_number]
	if not data then return end

	for reg_id, entity in pairs(data.entities) do
		storage.multi_energy_entities[reg_id] = nil
		storage.multi_energy_loaders[reg_id] = nil
		--FIXME: Don't void items
		entity.destroy()
	end
end

---@return LuaSurface
local function create_hidden_surface()
	local surface = game.create_surface("pm-multi-energy-source-hidden-surface", {
		default_enable_all_autoplace_controls = false,
	})
	surface.generate_with_lab_tiles = true
	for _, force in pairs(game.forces) do
		force.set_surface_hidden(surface, true)
	end
	return surface
end

local function setup_storage()
	if not storage.multi_energy_source_surface or not storage.multi_energy_source_surface.valid then
		storage.multi_energy_source_surface = create_hidden_surface()
	end

	storage.multi_energy_entities = storage.multi_energy_entities or {}
	storage.multi_energy_loaders = storage.multi_energy_loaders or {}
end

handler.on_init = setup_storage
handler.on_configuration_changed = setup_storage

function handler.events.on_force_created(event)
	event.force.set_surface_hidden("pm-multi-energy-source-hidden-surface", true)
end

return handler
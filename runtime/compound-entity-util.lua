---@class PMCompoundEntityUtility : event_handler
local compound_util = {}
compound_util.events = {}--[[@as event_handler.events]]

---@alias unit_number uint64
---@alias object_registration uint64

---@class CompoundInfo
---@field entities table<object_registration,LuaEntity>
---@field surface LuaSurface
---@field position MapPosition

---@class (partial) PeriodicStorage
---@field compound_entities table<object_registration, CompoundInfo>

--MARK: Validation

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
---@param placement PlacementData
---@return never
local function placement_error_v(msg, entity, index, placement)
	error(msg..": "..entity.." ["..index.."]-> "..serpent.block(placement), 2)
end

compound_util.map = prototypes.mod_data["pm-compound-entity-placement"]--[[@as LuaModData<PMCompoundEntityPlacementData>]].data

for entity_name, placement_array in pairs(compound_util.map) do
	if not prototypes.entity[entity_name] then
		log("PMMultiEnergySourceModData contained an entry for a non-existent entity: "..entity_name)
		compound_util.map[entity_name] = nil
		goto continue
	end

	---@type defines.inventory?
	local proxy_target
	---@type int?
	local proxy_source_index
	---@type PlacementData?
	local proxy_source_placement

	---@type BeltConnectionType?
	local linked_type
	---@type int?
	local linked_source_index
	---@type PlacementData?
	local linked_source_placement
	for index, placement in pairs(placement_array) do
		local placement_error = function (msg)
			return placement_error_v(msg, entity_name, index, placement)
		end

		if not PM.validate.uint(index - 1) then
			placement_error("The array of placement data had an invalid key")
		elseif not type(placement) == "table" then
			placement_error("A non-table entry was found within the array of placement data")
		end

		if not PM.validate.mapposition(placement.position) then
			placement_error("A valid placement position must be defined")
		end
		---@diagnostic disable-next-line: param-type-mismatch
		if not PM.validate.int_range(placement.direction, defines.direction.north, defines.direction.south * 2 - 1) then
			placement_error("A valid placement direction must be defined")
		end

		local placed_entity = prototypes.entity[placement.entity_name]
		if not placed_entity then
			placement_error("The placement entry was for an entity that does not exist")
		end

		if placement.belt_type and not belt_type_types[placed_entity.type] then
			placement_error("The placement entry had a belt type for an entity type that doesn't support it")
		elseif placement.belt_type and placement.belt_type ~= "input" and placement.belt_type ~= "output" then
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
			assert(proxy_source_index and proxy_source_placement)

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
		-- elseif not true_or_nil[type(placement.is_hidden_surface)] then
		-- 	placement_error("is_hidden_surface needs to be a boolean")
		end

		if placed_entity.type == "linked-belt" or placement.is_linked_belt then
			if placed_entity.type ~= "linked-belt" or not placement.is_linked_belt then
				placement_error("A placed entity of type 'linked-belt' must set is_linked_belt to true")
			end
		end

		if placement.is_linked_belt then
			if not placement.belt_type then
				placement_error("A linked belt must define the belt type")
			end
			if linked_type then
				if linked_type == placement.belt_type then
					placement_error("Two linked belts must of different belt types to connect")
				end
				linked_type = nil
				linked_source_index = nil
				linked_source_placement = nil
			else
				linked_type = placement.belt_type
				linked_source_index = index
				linked_source_placement = placement
			end
		end
	end

	if proxy_target then
		assert(proxy_source_index and proxy_source_placement)
		placement_error_v("The last placed entity cannot a proxy container",
			entity_name, proxy_source_index, proxy_source_placement
		)
	end

	if linked_type then
		assert(linked_source_index and linked_source_placement)
		placement_error_v("There must be an even number of linked belts so they can all be connected", 
			entity_name, linked_source_index, linked_source_placement
		)
	end

	::continue::
end

--MARK: Placement

---@param entity LuaEntity
---@param placement_list PlacementData[]
---@return table<object_registration, LuaEntity>
---@return LuaEntity?
function compound_util.place(entity, placement_list)
	local surface = entity.surface
	local force = entity.force
	local position = entity.position
	local quality = entity.quality

	local main_reg = script.register_on_object_destroyed(entity)
	---@type table<uint64, LuaEntity>
	local entities = {
		[main_reg] = entity
	}
	local compound_data = {
		entities = entities,
		surface = surface,
		position = position,
	}
	storage.compound_entities[main_reg] = compound_data

	---@type LuaEntity?
	local last_fluid_entity
	---@type LuaEntity?
	local linked_belt_entity
	---@type LuaEntity?
	local proxy_entity
	---@type defines.inventory?
	local proxy_inventory

	for _, placement_info in pairs(placement_list) do
		local cur_position = PM.add_vector(position, placement_info.position)
		local cur_entity = surface.create_entity({
			name = placement_info.entity_name,
			position = cur_position,
			direction = placement_info.direction,
			quality = quality,
			force = force,
			cause = entity, -- :shrug:, might as well.
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

		entities[reg_id] = cur_entity
		storage.compound_entities[reg_id] = compound_data
	end

	return entities, last_fluid_entity
end

-- MARK: Event Plumbing
function compound_util.events.on_object_destroyed(event)
	local data = storage.compound_entities[event.registration_number]
	if not data then return end

	for reg_id, entity in pairs(data.entities) do
		storage.compound_entities[reg_id] = nil
		if not entity.valid then goto continue end

		-- Spill any contents
		for i = 1, entity.get_max_inventory_index() do
			local inv = entity.get_inventory(i--[[@as defines.inventory]])
			if inv then
				data.surface.spill_inventory{
					inventory = inv,
					position = data.position,
					allow_belts = false,
					enable_looted = true,
				}
			end
		end

		entity.destroy()
		::continue::
	end
end

local function setup_storage()
	storage.compound_entities = storage.compound_entities or {}
end

compound_util.on_init = setup_storage
compound_util.on_configuration_changed = setup_storage

return compound_util
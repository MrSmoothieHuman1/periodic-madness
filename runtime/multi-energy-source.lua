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

local compound_map = prototypes.mod_data["pm-multi-energy-source-data"]--[[@as LuaModData<PMMultiEnergySourceModData>]].data
for entity_name, compound_data in pairs(compound_map) do
	if not prototypes.entity[entity_name] then
		log("PMMultiEnergySourceModData contained an entry for a non-existent entity: "..entity_name)
		compound_map[entity_name] = nil
		goto continue
	end

	if not PM.validate.uint8(compound_data.energy_steps) then
		error("The energy_steps for "..entity_name.."'s compound data are not a uint8.")
	end
	for i = 1, compound_data.energy_steps do
		if not prototypes.entity[entity_name.."-energy-source-"..i] then
			error("The energy step '"..i.."' does not exist for the entity '"..entity_name.."' despite the compound data saying it should.")
		end
	end

	local unprocessed_loader_data = compound_data.loader_data
	compound_data.loader_data = {}
	for index_str, data in pairs(unprocessed_loader_data) do
		local index_num = tonumber(index_str)
		if not index_num or not PM.validate.uint8(index_num) then
			error("The keys for the loader_data map should all be uint8, found '"..index_str.."'")
		end

		--TODO: validate the loader_data
		compound_data.loader_data[index_num] = data
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
			direction = placement_info.orientation,
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

return handler
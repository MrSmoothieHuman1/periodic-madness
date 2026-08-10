local compound_util = require("runtime.compound-entity-util")

---@type event_handler
local handler = {}
handler.events = {}
handler.on_nth_tick = {}

---@class MultiEnergyEntity
---@field entities table<uint64,LuaEntity>

---@class (partial) PeriodicStorage
---@field multi_energy_entities table<uint64, MultiEnergyEntity>
storage = storage

--MARK: Entity Placed

---@param event EventData.on_script_trigger_effect
function handler.events.pm_on_multi_energy_entity_created(event)
	local entity = event.cause_entity
	if not entity then return end
	---@type data.EntityName
	local entity_name = entity.name
	local placement = compound_util.map[entity_name]
	if not placement then return log("Entity we don't care about raised `on_multi_energy_entity_created`. Possible registration gone bad for "..entity_name) end

	local entities, last_fluid_entity = compound_util.place(entity, placement)

	if not last_fluid_entity then
		error("No fluid entities in the placement for a MultiEnergySource entity?")
	end
	last_fluid_entity.add_fluid_box_linked_connection(2, entity, 1)

	---@type MultiEnergyEntity
	local data = {
		entities = entities,
	}

	storage.multi_energy_entities[entity.unit_number] = data
end

--MARK: Basic plumbing

local function setup_storage()
	storage.multi_energy_entities = storage.multi_energy_entities or {}
end

handler.on_init = setup_storage
handler.on_configuration_changed = setup_storage

return handler
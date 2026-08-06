---@type event_handler
local handler = {}
handler.events = {}

---@class (partial) PeriodicStorage
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

---@param a MapPosition
---@param b Vector
---@return MapPosition
local function shift_position(a,b)
	local ax = (a[1] or a.x) or error("Invalid position given.")
	local ay = (a[2] or a.y) or error("Invalid position given.")
	local bx = (b[1] or b.x) or error("Invalid offset given.")
	local by = (b[2] or b.y) or error("Invalid offset given.")
	return {ax + bx, ay + by}
end

---@param event EventData.on_script_trigger_effect
function handler.events.pm_on_multi_energy_entity_created(event)
	local entity = event.cause_entity
	if not entity then return end
	---@type data.EntityName
	local entity_name = entity.name
	local compound_data = compound_map[entity_name]
	if not compound_data then return log("Entity we don't care about raised `on_multi_energy_entity_created`. Possible registration gone bad for "..entity.name) end

	local surface = entity.surface
	local force = entity.force
	local position = entity.position
	local quality = entity.quality

	---@type LuaEntity[]
	local entities = {entity}
	local entity_count = 1

	---@type LuaEntity?
	local last_entity
	for i = 1, compound_data.energy_steps do
		local next_entity = surface.create_entity({
			name = entity_name.."-energy-source-"..i,
			position = position,
			quality = quality,
			force = force,
			cause = entity,
		}--[[@as LuaSurface.create_entity_param.loader_1x1]])
		if not next_entity then
			error("Creation of compound entity failed")
		end

		if last_entity then
			last_entity.add_fluid_box_linked_connection(2, next_entity, 1)
		end

		local loader_data = compound_data.loader_data[i]
		if loader_data then
			local loader = surface.create_entity{
				name = "pm-multi-energy-source-loader",
				type = "input",
				position = shift_position(position, loader_data.position),
				direction = loader_data.orientation,
				quality = quality,
				force = force,
				cause = entity,
			}
			if not loader then
				error("Creation of compound entity failed")
			end

			print(loader.loader_container)
			entity_count = entity_count + 1
			entities[entity_count] = loader
		end

		last_entity = next_entity
		entity_count = entity_count + 1
		entities[entity_count] = next_entity
	end
	---@cast last_entity -?

	last_entity.add_fluid_box_linked_connection(2, entity, 1)
end

return handler
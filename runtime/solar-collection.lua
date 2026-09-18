---@type event_handler
local event_handler = {}
event_handler.events = {}
local events = event_handler.events

---@class (partial) PeriodicStorage
---@field solar_platforms Mapping<unit_number, SolarPlatformTuple>
---@field solar_collection PerSurface<SolarCollection>

---@class SolarCollection
---@field surface LuaSurface
---@field collector_count uint
---@field reflector_count uint
---@field platforms Mapping<unit_number,SolarPlatformTuple>
---@field platform_count uint

---@class SolarPlatformTuple
---@field day LuaEntity
---@field day_number unit_number
---@field night LuaEntity
---@field night_number unit_number
---@field surface uint


---@param collection SolarCollection
local function update_collection(collection)
	local surface = collection.surface
	local day_power_factor = collection.collector_count / collection.platform_count
	local reflection_factor = collection.reflector_count / collection.platform_count

	surface.set_property("pm-solar-collection-factor-day", math.min(day_power_factor, 500))
	surface.set_property("pm-solar-collection-factor-night", math.min(reflection_factor, day_power_factor, 500))
	--TODO: runtime tooltip stuff on the collection platforms
end

---@param surface uint
---@param number int
local function update_collectors(surface, number)
	local collection = storage.solar_collection[surface]
	collection.collector_count = collection.collector_count + number
	if collection.collector_count < 0 then
		error("Negative solar collectors on surface `"..game.surfaces[surface].name.."`?")
	end
	update_collection(collection)
end

---@param surface uint
---@param number int
local function update_reflectors(surface, number)
	local collection = storage.solar_collection[surface]
	collection.reflector_count = collection.reflector_count + number
	if collection.reflector_count < 0 then
		error("Negative solar reflectors on surface `"..game.surfaces[surface].name.."`?")
	end
	update_collection(collection)
end

--TODO: Detect launched collector and reflectors
--TODO: Decay collector and reflectors


---@param event EventData.on_script_trigger_effect
function events.on_pm_solar_platform_placed(event)
	local day_platform = event.source_entity or event.target_entity or error("No entity in `on_pm_solar_platform_placed`?")
	---@cast day_platform.unit_number -?

	local night_platform = day_platform.surface.create_entity({
		name = "pm-solar-platform-night",
		position = day_platform.position,
		quality = day_platform.quality,
		force = day_platform.force,
	}--[[@as LuaSurface.create_entity_param.base]])
	if not night_platform then 
		error("Night platform was not sucessfully created")
	end
	---@cast night_platform.unit_number -?

	---@type SolarPlatformTuple
	local platform_tuple = {
		day = day_platform,
		day_number = day_platform.unit_number,
		night = night_platform,
		night_number = night_platform.unit_number,
		surface = day_platform.surface_index
	}

	script.register_on_object_destroyed(day_platform)
	script.register_on_object_destroyed(night_platform)
	storage.solar_platforms[platform_tuple.day_number] = platform_tuple
	storage.solar_platforms[platform_tuple.night_number] = platform_tuple

	local surface_collection = storage.solar_collection[platform_tuple.surface]
	surface_collection.platforms[platform_tuple.day_number] = platform_tuple
	surface_collection.platforms[platform_tuple.night_number] = platform_tuple
	surface_collection.platform_count = surface_collection.platform_count + 1
	update_collection(surface_collection)
end

function events.on_object_destroyed(event)
	if event.type ~= defines.target_type.entity then return end
	local tuple = storage.solar_platforms[event.useful_id]
	if not tuple then return end

	storage.solar_platforms[tuple.day_number] = nil
	storage.solar_platforms[tuple.night_number] = nil

	local surface_collection = storage.solar_collection[tuple.surface]
	surface_collection.platforms[tuple.day_number] = nil
	surface_collection.platforms[tuple.night_number] = nil
	surface_collection.platform_count = surface_collection.platform_count - 1
	update_collection(surface_collection)
end


--MARK: Initialization

---@param surface LuaSurface
local function init_surface(surface)
	surface.set_property("pm-solar-collection-factor-day", 0)
	surface.set_property("pm-solar-collection-factor-night", 0)

	storage.solar_collection[surface.index] = {
		surface = surface,
		collector_count = 0,
		reflector_count = 0,
		platforms = {},
		platform_count = 0,
	}
end

local function setup_storage()
	storage.solar_platforms = storage.solar_platforms or {}

	if storage.solar_collection then return end
	storage.solar_collection = {}

	for _, surface in pairs(game.surfaces) do
		init_surface(surface)
	end
end

event_handler.on_init = setup_storage
event_handler.on_configuration_changed = setup_storage

function events.on_surface_created(event)
	return init_surface(game.surfaces[event.surface_index])
end

function events.on_surface_deleted(event)
	storage.solar_collection[event.surface_index] = nil
end

return event_handler
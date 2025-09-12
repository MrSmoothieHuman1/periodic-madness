---@type event_handler
local event_handler = {events={}}
local events = event_handler.events

storage = storage or {}
---@class reactor_info
---@field reactor LuaEntity
---@field furnace LuaEntity
---@field alert? LuaRenderObject
---@field alert_tick? uint

--MARK: Setup

function setup_cooling_storage()
	---@type table<uint, reactor_info>
	storage.reactors = storage.reactors or {}
end

event_handler.on_init = function ()
	setup_cooling_storage()
end
event_handler.on_configuration_changed = function (data)
	setup_cooling_storage()
end

---@type table<string,fun(event:EventData.on_script_trigger_effect)>
local script_triggers = {}
---@param event EventData.on_script_trigger_effect
events[defines.events.on_script_trigger_effect] = function (event)
	local func = script_triggers[event.effect_id]
	if not func then return end
	func(event)
end

--MARK: placement

---@param reactor LuaEntity
function reactor_placed(reactor)
	script.register_on_object_destroyed(reactor)

	-- Create furnace
	local surface = reactor.surface
	local furnace = surface.create_entity{
		name = reactor.name.."-coolant-furnace",
		direction = reactor.direction,
		position = reactor.position,
		quality = reactor.quality,
		force = reactor.force,
		create_build_effect_smoke = false,
	}
	if not furnace then error("The internal furnace for the cooled reactor wasn't placed") end
	script.register_on_object_destroyed(furnace)

	-- Link fluidboxes
	for i = 1, 10, 1 do
		reactor.fluidbox.add_linked_connection(i, furnace, i)
	end

	-- Create info tables
	---@type reactor_info
	local reactor_info = {
		reactor = reactor,
		furnace = furnace
	}
	storage.reactors[reactor.unit_number--[[@as int]]] = reactor_info
	storage.reactors[furnace.unit_number--[[@as int]]] = reactor_info
end

---@type type<data.EntityID, true>
local cooled_reactors = prototypes.mod_data["pm-cooled-reactors"].data

PM.compound_events.built_events(events, function (event)
	local entity = event.entity or event.destination
	if not cooled_reactors[entity.name] then return end
	reactor_placed(entity)
end)

--MARK: GUI

---@param event EventData.on_gui_opened
events[defines.events.on_gui_opened] = function (event)
	-- Make sure it's an entity being opened
	if event.gui_type ~= defines.gui_type.entity then return end
	local entity = event.entity
	---@cast entity -?

	-- Make sure it's a reactor entity being opened
	local reactor_info = storage.reactors[entity.unit_number--[[@as int]]]
	if not reactor_info then return end

	-- Make sure it's *the reactor*
	if entity.type ~= "reactor" then return end --TODO: add heat bar to furnace?

	-- Finally open the furnace
	local player = game.get_player(event.player_index)
	---@cast player -?
	player.opened = reactor_info.furnace
end

--MARK: non-cooling

script_triggers["pm-cooled-reactor-died"] = function (event)
	-- game.print("Whoops... ".. event.source_entity.gps_tag)
	local furnace = event.source_entity
	if not furnace then error("The source entity for 'pm-cooled-reactor-died' was somehow nil") end
	local reactor_info = storage.reactors[furnace.unit_number--[[@as int]]]
	reactor_info.reactor.die()

	-- Alert people of the reactor meltdown
	for _, player in pairs(furnace.force.players) do -- TODO: Get a better icon than signal-skull
		player.add_custom_alert(furnace, {type="virtual", name="pm-reactor-meltdown"}, {"pm-alerts.reactor-meltdown"}, true)
	end
end

script_triggers["pm-cooled-reactor-hurt"] = function (event)
	local furnace = event.source_entity
	if not furnace then error("The source entity for 'pm-cooled-reactor-hurt' was somehow nil") end

	-- If there's coolant or a lack of heat, then it shouldn't be dying right now
	local has_coolant = function() return furnace.get_fluid(1) end -- Index 1 is always the coolant input
	local has_heat = function () return furnace.burner.heat ~= 0 or furnace.get_fluid(2) end -- Index 2 is always the heat output
	if has_coolant() or not has_heat() then
		furnace.health = furnace.health + 1/60
		return
	end

	-- Otherwise, alert
	local reactor_info = storage.reactors[furnace.unit_number --[[@as int]]]
	local force = furnace.force
	local alert = reactor_info.alert

	-- Show alert icon on reactor
	if not alert or not alert.valid then
		reactor_info.alert = rendering.draw_sprite{
			sprite = "virtual-signal/pm-reactor-melting-down",
			surface = furnace.surface,
			target = furnace,
			forces = force,
			time_to_live = 60,
			blink_interval = 30,
		}
	else
		alert.time_to_live = 60
	end

	-- Play alarm
	if event.tick > (reactor_info.alert_tick or 0) then
		force.play_sound{
			path = "pm-meltdown-alarm",
			override_sound_type = "alert",
			position = furnace.position
		}
		reactor_info.alert_tick = event.tick + 60*16 -- The length of the audio
	end

	-- Show alert
	for _, player in pairs(furnace.force.players) do -- TODO: Get a better icon than signal-skull
		player.add_custom_alert(furnace, {type="virtual", name="pm-reactor-melting-down"}, {"pm-alerts.reactor-melting-down"}, true)
	end
end

--MARK: cleanup

---@param event EventData.on_object_destroyed
events[defines.events.on_object_destroyed] = function (event)
	local unit_id = event.useful_id
	local reactor_info = storage.reactors[unit_id]
	if not reactor_info then return end
	storage.reactors[unit_id] = nil

	local reactor = reactor_info.reactor
	local furnace = reactor_info.furnace

	if reactor.valid then
		reactor.die()
	end
	if furnace.valid then
		furnace.destroy()
	end
end

return event_handler
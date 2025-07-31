---@class flashing_handler : event_handler
local handler = {on_nth_tick = {}}--[[@as event_handler]]

local function setup_storage()
	if not storage.alerts then
		---@type LuaRenderObject[]
		storage.alerts = {}
	end
end
handler.on_init = setup_storage
handler.on_configuration_changed = setup_storage

local mfloor = math.floor
handler.on_nth_tick[30] = function (event)
	local half = mfloor(event.tick / 30) % 2 == 1
	for index, alert in pairs(storage.alerts) do
		if not alert.valid then
			storage.alerts[index] = nil
		else
			alert.visible = half
		end
	end
end

---@param alert LuaRenderObject
function handler.add_render(alert)
	storage.alerts[alert.id] = alert
	alert.visible = mfloor(game.tick / 30) % 2 == 1
end

return handler
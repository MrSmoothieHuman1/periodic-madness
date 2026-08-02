---@type event_handler
local world_size_test = {}

local LARGEST_ENTITY_HEIGHT = 32
local LARGEST_ENTITY_WIDTH = 32

local function warn_size()
	local map_gen = game.default_map_gen_settings

	if map_gen.height < LARGEST_ENTITY_HEIGHT
	or map_gen.width < LARGEST_ENTITY_WIDTH then
		PM.compat_send(game, {"pm-alerts.pm-small-map", LARGEST_ENTITY_HEIGHT, LARGEST_ENTITY_WIDTH, map_gen.height, map_gen.width})
	end
end
world_size_test.on_init = warn_size
world_size_test.on_configuration_changed = warn_size
world_size_test.events = {[defines.events.on_player_created] = warn_size}

return world_size_test
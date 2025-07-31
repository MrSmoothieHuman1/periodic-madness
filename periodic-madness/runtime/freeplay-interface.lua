---@type event_handler
local freeplay_interface = {}
--- is the util definitions wrong for safe_insert?
--- Also why no definition for the freeplay interface :(
---@class item_dictionary
---@field [data.ItemID] integer

function freeplay_interface.on_init()
	if not remote.interfaces["freeplay"] then return end

	local init_ran = remote.call("freeplay", "get_init_ran")--[[@as boolean]]
	if not init_ran then -- Don't update crash site stuff after it was already made

		local ship_items = remote.call("freeplay", "get_ship_items")--[[@as item_dictionary]]
		local debris_items = remote.call("freeplay", "get_debris_items")--[[@as item_dictionary]]

		--- Add or remove items from the crash site here
		--- IF YOU OVERWRITE, OTHER MODS WILL LOSE THEIR CHANGES
		--- Like if a mod adds a special item, it might not be obtainable
		--- If you still want to do it, remove the call because it's uncessary
		--- Ditto for the set if you didn't update it at all

		remote.call("freeplay", "set_ship_items", ship_items)
		remote.call("freeplay", "set_debris_items", debris_items)
	end

	local initial_items = remote.call("freeplay", "get_created_items")--[[@as item_dictionary]]
	local respawn_items = remote.call("freeplay", "get_respawn_items")--[[@as item_dictionary]]

	--- Add or remove items from players spawning here
	--- IF YOU OVERWRITE, OTHER MODS WILL LOSE THEIR CHANGES
	--- Like if a mod adds a special item, it might not be obtainable
	--- If you still want to do it, remove the call because it's uncessary
	--- Ditto for the set if you didn't update it at all

	remote.call("freeplay", "set_created_items", initial_items)
	remote.call("freeplay", "set_respawn_items", respawn_items)
end

---WARNING: Maybe we want to also affect it on configuration changed?
---There's the chance that other mods will do weird things to it
---But there's a good chance to fuck-up doing that I think

return freeplay_interface
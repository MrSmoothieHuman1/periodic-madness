if not script.active_mods["automatic-underground-pipe-connectors"] then
	return {} -- Skip file if the relevant mod is not enabled
end

---@type event_handler
local handler = {events={}}

local pipe = "pipe"
local stainless_pipe = "pm-stainless-steel-pipe"

local function PM_pipe_undergrounds()
    local lookup =
    {
        ["pipe-to-ground"] = {item = pipe, entity = pipe},
        ["pm-stainless-steel-pipe-to-ground"] = {item = stainless_pipe, entity = stainless_pipe},
    }

    remote.call("automatic-underground-pipe-connectors", "add_undergrounds", lookup)
end

handler.on_init = PM_pipe_undergrounds
handler.on_configuration_changed = PM_pipe_undergrounds

return handler
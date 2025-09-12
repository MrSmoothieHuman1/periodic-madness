---@type event_handler
local handler = {events = {}}
handler.events[defines.events.on_research_finished] = function (event)
  if event.research.name == "pm-osmium-processing" then
    PM.compat_send(game, "AHHHHHHHH")
  end
end

return handler
---@type event_handler
local handler = {events = {}}
handler.events[defines.events.on_research_finished] = function (event)
  if event.research.name == "pm-osmium-processing" then
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered{
            name = "pm-hydroelectric-plant",
        }) do
            entity.power_production = entity.power_production * 2
        end
    end
  end
end

return handler
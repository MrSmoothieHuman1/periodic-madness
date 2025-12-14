---@type event_handler
local handler = {events = {}}

local function setup_logistic_storage()
    storage.logistic_chest_override = 1
    game.print("setup")

    if not storage.logistic_chests then
        local chests = {}
        storage.logistic_chests = chests
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered{
            name = "requester-chest",
        }) do
            chests[entity.unit_number] = entity
        end
    end
end
end

handler.on_init = setup_logistic_storage
handler.on_configuration_changed = setup_logistic_storage

PM.compound_events.built_events(handler.events, function (event)
    local tracked_entity = event.entity or event.destination

    if tracked_entity.name ~= "requester-chest" then return end

    storage.logistic_chests[tracked_entity.unit_number] = tracked_entity
    tracked_entity.set_inventory_size_override(defines.inventory.chest, storage.logistic_chest_override)

end)

handler.events[defines.events.on_research_finished] = function (event)
  if event.research.name == "pm-osmium-processing" then
        storage.logistic_chest_override = storage.logistic_chest_override + 1
        game.print("researched")
        for unit_number, entity in pairs(storage.logistic_chests) do
            if entity.valid then
                entity.set_inventory_size_override(defines.inventory.chest, storage.logistic_chest_override)
            else
                storage.logistic_chests[unit_number] = nil
            end
        end
    end
end
handler.events[defines.events.on_research_reversed] = function (event)
  if event.research.name == "pm-osmium-processing" then
        game.print("unresearched :(")
        storage.logistic_chest_override = storage.logistic_chest_override - 1
        for unit_number, entity in pairs(storage.logistic_chests) do
            if entity.valid then
                entity.set_inventory_size_override(defines.inventory.chest, storage.logistic_chest_override)
            else
                storage.logistic_chests[unit_number] = nil
            end
        end
    end
end

return handler
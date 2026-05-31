---@type event_handler
local handler = {events = {}}

local DEFAULT_SIZE = 1


---@param technologies LuaCustomTable<string,LuaTechnology>
local function get_current_size(technologies)
    local size = DEFAULT_SIZE
    for _, tech in pairs(technologies) do
        if tech.researched then
            size = size + PM.get_custom_modification("pm-requester-chest-inventory-size", tech)
        end
    end
    return size
end

---@param entity LuaEntity
---@param override int
local function set_override(entity, override)
    entity.set_inventory_size_override(
        defines.inventory.chest,
        override,
        storage.logistic_scratch_inventory
    )

    --TODO: Shove as much of it into the trash slots as I can when 2.1 adds that api

    entity.surface.spill_inventory{
        position = entity.position,
        inventory = storage.logistic_scratch_inventory,
        allow_belts = false, -- EW
        -- drop_full_stack = true, -- There can just be too many items
    }
end

---@param force_index uint
---@param override uint
---@param cumulative? boolean Whether or not the override is added to pre-existing override
local function update_overrides(force_index, override, cumulative)
    if cumulative then
        override = override + storage.logistic_chest_overrides[force_index]
    end
    storage.logistic_chest_overrides[force_index] = override

    local chests = storage.logistic_chests[force_index]
    for unit_number, entity in pairs(chests) do
        if entity.valid then
            set_override(entity, override)
        else
            chests[unit_number] = nil
        end
    end

    local force = game.forces[force_index]
    if not force then error("Overrides updated for a force that doesn't exist?") end

    -- Only do this if it becomes a bonus (per multiple requester types) instead of a flat value
    -- Otherwise, maybe only show it when requester chests are unlocked?
    -- if override == DEFAULT_SIZE then
    --     remote.call("custom-bonus-gui", "remove", force, "pm-requester-chest-inventory-size")
    --     return
    -- end

    remote.call("custom-bonus-gui", "set", force, {
        name = "pm-requester-chest-inventory-size",
        mod_name = script.mod_name,
        order = "a", -- TODO: Actually choose this I guess
        icons = {
            {type = "entity", name = "requester-chest"},
        },
        texts = {
            {"", {"gui-bonus.pm-requester-chest-inventory-size"}, ": "..override}
        }
    })
end

local function setup_logistic_storage()
    if not storage.logistic_chests then
        -- Gather all the chests if not previously collected

        ---@type table<uint,table<uint,LuaEntity>>
        local chests = {}
        storage.logistic_chests = chests
        for _, force in pairs(game.forces) do
            chests[force.index] = {}
        end

        for _, surface in pairs(game.surfaces) do
            for _, entity in pairs(surface.find_entities_filtered{
                name = "requester-chest",
            }) do
                chests[entity.force_index][entity.unit_number] = entity
            end
        end
    end

    if not storage.logistic_scratch_inventory or storage.logistic_scratch_inventory.valid then
        storage.logistic_scratch_inventory = game.create_inventory(100)
    end

    -- The bonus modifiers might've changed, just recalc it

    ---@type table<uint, uint>
    local overrides = {}
    storage.logistic_chest_overrides = overrides
    for _, force in pairs(game.forces) do
        update_overrides(force.index, get_current_size(force.technologies))
    end
end

handler.on_init = setup_logistic_storage
handler.on_configuration_changed = setup_logistic_storage

handler.events[defines.events.on_force_created] = function (event)
    local new_force = event.force.index
    storage.logistic_chest_overrides[new_force] = DEFAULT_SIZE
    storage.logistic_chests[new_force] = {}
end
handler.events[defines.events.on_force_reset] = function (event)
    update_overrides(event.force.index, DEFAULT_SIZE)
end

handler.events[defines.events.on_forces_merged] = function (event)
    local migrated_entities = storage.logistic_chests[event.source_index]
    storage.logistic_chests[event.source_index] = nil
    storage.logistic_chest_overrides[event.source_index] = nil

    local destination_index = event.destination.index
    local destination_override = storage.logistic_chest_overrides[destination_index]
    local destination_chests = storage.logistic_chests[destination_index]
    for unit_number, entity in pairs(migrated_entities) do
        if entity.valid then
            destination_chests[unit_number] = entity
            set_override(entity, destination_override)
        end
    end
end

PM.compound_events.built_events(handler.events, function (event)
    local tracked_entity = event.entity or event.destination
    if tracked_entity.name ~= "requester-chest" then return end
    local force = tracked_entity.force_index

    script.register_on_object_destroyed(tracked_entity)
    storage.logistic_chests[force][tracked_entity.unit_number] = tracked_entity
    set_override(tracked_entity, storage.logistic_chest_overrides[force])
end)

handler.events[defines.events.on_object_destroyed] = function (event)
    if event.type ~= defines.target_type.entity then return end
    for _, chests in pairs(storage.logistic_chests) do
        chests[event.useful_id] = nil
    end
end

handler.events[defines.events.on_research_finished] = function (event)
    local increase = PM.get_custom_modification("pm-requester-chest-inventory-size", event.research)
    if increase == 0 then return end
    update_overrides(event.research.force.index, increase, true)
end
handler.events[defines.events.on_research_reversed] = function (event)
    local decrease = PM.get_custom_modification("pm-requester-chest-inventory-size", event.research)
    if decrease == 0 then return end
    update_overrides(event.research.force.index, -decrease, true)
end
handler.events[defines.events.on_technology_effects_reset] = function (event)
    update_overrides(event.force.index, get_current_size(event.force.technologies))
end

--TODO: Add a cheat command to change the overrides of chests

return handler
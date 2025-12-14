---@type event_handler
local handler = {events = {}}



---@param technologies LuaCustomTable<string,LuaTechnology>
local function get_current_size(technologies)
    local size = 1 -- NOTE: This is the default size
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
    --NOTE: consider additional logic to spill any that doesn't fit into the trash on the ground
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

local function update_overrides(chests, override)
    for unit_number, entity in pairs(chests) do
        if entity.valid then
            set_override(entity, override)
        else
            chests[unit_number] = nil
        end
    end
end

---@param change int
---@param force uint
local function update_all_chests(change, force)
    local cur_overide = storage.logistic_chest_overrides[force] + change
    storage.logistic_chest_overrides[force] = cur_overide
    update_overrides(storage.logistic_chests[force], cur_overide)
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
        local force_index = force.index
        overrides[force_index] = get_current_size(force.technologies)
        update_overrides(storage.logistic_chests[force_index], overrides[force_index])
    end
end

handler.on_init = setup_logistic_storage
handler.on_configuration_changed = setup_logistic_storage

handler.events[defines.events.on_force_created] = function (event)
    local new_force = event.force.index
    storage.logistic_chest_overrides[new_force] = get_current_size{} -- HACK: To use the same default as before
    storage.logistic_chests[new_force] = {}
end
handler.events[defines.events.on_force_reset] = function (event)
    local reset_force = event.force.index
    storage.logistic_chest_overrides[reset_force] = get_current_size{}
    update_overrides(storage.logistic_chests[reset_force], storage.logistic_chest_overrides[reset_force])
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
    update_all_chests(increase, event.research.force.index)
end
handler.events[defines.events.on_research_reversed] = function (event)
    local decrease = PM.get_custom_modification("pm-requester-chest-inventory-size", event.research)
    if decrease == 0 then return end
    update_all_chests(-decrease, event.research.force.index)
end

return handler
--credit to quezeler for helping me out on this, and giving me the code

---@type event_handler
local handler = {on_nth_tick = {}, events = {}}

---@type table<EntityID, {[1]:number,[2]:number}>
local pollution_definition = {
  -- Where you define buildings and their pollution
  -- Migration is now needed if these numbers are ever changed

  --15 pollution in a til is the min. amount needed to have it spread
  --60 pollution is when trees start dying - makes sense thematically, but might be too low?
  ["pm-greenhouse"] = {0, 60},
  ["pm-factorian-bacteria-greenhouse"] = {0, 60}
}

--pollution value to colour list:
--0-50: Lowest colour
--55-65: Second colour
--65-75: Third colour
--75-85: Fourth colour
--85-95: Fifth colour
--95-105: Sitxh colour
--105-115: Seventh colour
--115-125: Eighth colour
--125-135: Nineth colour
--135-145: Tenth colour
--145-150+: Eleventh colour (max)

---@class PollutionBuilding
---@field entity LuaEntity
---@field min_pollution number The amount of pollution it needs to work
---@field max_pollution number The amount of pollution where it stops working
---@field alert? LuaRenderObject

---MARK: Setup

local function reload_buildings()
  ---@type PollutionBuilding[]
  local new_list, count = {}, 0
  storage.pollution_buildings = new_list

  local building_list, build_count = {}, 0
  for building in pairs(pollution_definition) do
    build_count = build_count + 1
    building_list[build_count] = building
  end

  for _, surface in pairs(game.surfaces) do
    for _, entity in pairs(surface.find_entities_filtered{
      name = building_list
    }) do
      count = count + 1
      local pollution_numbers = pollution_definition[entity.name]
      new_list[entity.unit_number--[[@as uint64]]] = {
        entity = entity,
        min_pollution = pollution_numbers[1],
        max_pollution = pollution_numbers[2],
      }
    end
  end

  storage.pollution_buildings_count = count
end

function handler.on_init()
  reload_buildings()
end
function handler.on_configuration_changed()
  reload_buildings()
end

---MARK: Entity Tracking

---@alias EventData.BuiltEvents
---| EventData.on_built_entity
---| EventData.on_robot_built_entity
---| EventData.on_space_platform_built_entity
---| EventData.script_raised_built
---@param event EventData.BuiltEvents
local function built_entity(event)
  local entity = event.entity
  local pollution_numbers = pollution_definition[entity.name]
  if not pollution_numbers then return end -- Not an entity we care about

  storage.pollution_buildings_count = storage.pollution_buildings_count + 1
  storage.pollution_buildings[entity.unit_number--[[@as number]]] = {
    entity = entity,
    min_pollution = pollution_numbers[1],
    max_pollution = pollution_numbers[2],
  }
end

handler.events[defines.events.on_entity_cloned] = function (event)
  ---@cast event +EventData.script_raised_built
  event.entity = event.destination
  built_entity(event--[[@as EventData.script_raised_built]])
end
handler.events[defines.events.on_built_entity] = built_entity
handler.events[defines.events.on_robot_built_entity] = built_entity
handler.events[defines.events.on_space_platform_built_entity] = built_entity
handler.events[defines.events.script_raised_built] = built_entity

--MARK: Disabling

---@param entity LuaEntity
---@param signal SignalID
---@param alert LocalisedString
local function alert_force(entity, signal, alert)
  for _, player in pairs(entity.force.players) do
    player.add_custom_alert(entity, signal, alert, true)
  end
end

---@param entity LuaEntity
---@param object PollutionBuilding
---@param diode defines.entity_status_diode
---@param status LocalisedString
---@param signal SignalID
---@param alert LocalisedString
---@param sprite LuaRendering.draw_sprite_param
local function disable_building(entity, object, diode, status, signal, alert, sprite)
  alert_force(entity, signal, alert)

  local alert = object.alert
  if not alert or not alert.valid then
    entity.disabled_by_script = true
    entity.custom_status = { diode = diode, label = status }
    object.alert = rendering.draw_sprite(sprite)
  else
    alert.time_to_live = sprite.time_to_live
  end
end

local function enable_building(entity, object)
  entity.disabled_by_script = false
  entity.custom_status = nil
  object.alert.destroy()
  object.alert = nil
end

--MARK: Pollution checking

---@param entity LuaEntity
---@param pollution_object PollutionBuilding
local function check_pollution(entity, pollution_object)
  local pollution = entity.surface.get_pollution(entity.position)

  if pollution > pollution_object.max_pollution then
    disable_building(entity, pollution_object,
      -- Custom Status
      defines.entity_status_diode.red,
      {"entity-status.pm-too-much-pollution"},
      -- Custom Alert
      {type="virtual", name="pm-too-much-pollution"},
      {"pm-alerts.pm-too-much-pollution"},
      -- Alert Sprite
      {
        sprite = "virtual-signal/pm-too-much-pollution",
        surface = entity.surface_index,
        target = entity,
        forces = entity.force,
        time_to_live = 120,
      }
    )

  elseif pollution < pollution_object.min_pollution then
    disable_building(entity, pollution_object,
      -- Custom Status
      defines.entity_status_diode.red,
      {"entity-status.pm-too-little-pollution"},
      -- Custom Alert
      {type="virtual", name="pm-too-little-pollution"},
      {"pm-alerts.pm-too-little-pollution"},
      -- Alert Sprite
      {
        sprite = "virtual-signal/pm-too-little-pollution",
        surface = entity.surface_index,
        target = entity,
        forces = entity.force,
        time_to_live = 120,
      }
    )

  elseif pollution_object.alert then
    enable_building(entity, pollution_object)
  end
end

--MARK: Tick handler
local mceil = math.ceil
handler.events[defines.events.on_tick] = function (event)
  local buildings = storage.pollution_buildings
  local max_count = mceil(storage.pollution_buildings_count / 60)
  local count = 0

  -- Loop start
  local index, object = next(buildings, storage.pollution_index)
  while index do
    ---@cast object -?

    -- Loop body
    local entity = object.entity
    if not entity.valid then
      buildings[index] = nil
      storage.pollution_buildings_count = storage.pollution_buildings_count - 1
    else
      check_pollution(entity, object)
    end

    -- Iteration
    count = count + 1
    if count >= max_count then break end
    index, object = next(buildings, index)
  end
  -- Save progress on the loop
  storage.pollution_index = index
end

return handler
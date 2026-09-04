---@type event_handler
local handler = {}
handler.on_nth_tick = {}
handler.events = {}

---@class (partial) PeriodicStorage
---@field pollution_buildings_count int
---@field pollution_buildings Mapping<uint,PollutionLimitTracking>
---@field pollution_index? uint
storage = storage

---@class PMPollutionLimit : pm-pollution-limit
---@field pollutant_type LuaAirbornePollutantPrototype

---@type {[data.EntityID]?:PMPollutionLimit}
local pollution_definition_map = {}
for data_name, mod_data in pairs(prototypes.mod_data) do
  if mod_data.data_type == "pm-pollution-limit" then
    ---@cast mod_data LuaModData<pm-pollution-limit>
    local data = mod_data.data
    -- Data validation
    if type(data.entity) ~= "string" or not prototypes.entity[data.entity] then error("The `pm-pollution-limit` of "..data_name.." expects an entity ID") end
    if pollution_definition_map[data.entity] then error("There's two defined pollution limits for '"..data.entity.."'") end
    if type(data.pollutant_type) ~= "string" or not prototypes.airborne_pollutant[data.pollutant_type] then
      error("The `pm-pollution-limit` of "..data_name.." expects an airborne pollutant ID")
    else
      data--[[@as PMPollutionLimit]].pollutant_type = prototypes.airborne_pollutant[data.pollutant_type]
    end
    if type(data.max_pollution) ~= "number" then error("The `pm-pollution-limit` of "..data_name.." expects a number for the `max_pollution`") end
    if type(data.min_pollution) ~= "number" then error("The `pm-pollution-limit` of "..data_name.." expects a number for the `min_pollution`") end
    if type(data.max_alert) ~= "boolean" then
      if data.max_alert then
        error("The `max_alert` of "..data_name.." must be a boolean")
      else
        data.max_alert = false
      end
    end
    if type(data.min_alert) ~= "boolean" then
      if data.min_alert then
        error("The `min_alert` of "..data_name.." must be a boolean")
      else
        data.min_alert = false
      end
    end

    pollution_definition_map[data.entity] = data
  end
end


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

---@class PollutionLimitTracking : pm-pollution-limit
---@field entity LuaEntity
---@field surface LuaSurface
---@field tooltip RuntimeTooltipField
---@field wrong_pollutant true?
---@field alert? LuaRenderObject

---MARK: Entity Tracking

---@param entity LuaEntity
---@param definition PMPollutionLimit
---@param old_tracker? PollutionLimitTracking
---@return PollutionLimitTracking
local function create_tracker(entity, definition, old_tracker)
  ---@type PollutionLimitTracking
  local tracker = old_tracker or {
    entity = entity,
    surface = entity.surface
  }--[[@as PollutionLimitTracking]]

  if not tracker.surface then
    tracker.surface = entity.surface
  end

  tracker.max_pollution = definition.max_pollution
  tracker.min_pollution = definition.min_pollution
  tracker.max_alert = definition.max_alert
  tracker.min_alert = definition.min_alert

  local surface_pollutant = tracker.surface.pollutant_type
  local current_pollution
  if surface_pollutant ~= definition.pollutant_type then
    current_pollution = 0
    tracker.wrong_pollutant = true
  else
    current_pollution = tracker.surface.get_pollution(entity.position)
    tracker.wrong_pollutant = nil
  end
  
  if not tracker.tooltip then
    for _, tooltip in pairs(entity.get_tooltip_fields()) do
      if tooltip.name[1] == "pm-tooltips.current-pollution" then
        tracker.tooltip = tooltip
        break;
      end
    end
  end

  if not tracker.tooltip then
    tracker.tooltip = {
      name = {"pm-tooltips.current-pollution"},
      value = {definition.pollutant_type.localised_name_with_amount_key, current_pollution},
      order = 103,
    }
    tracker.tooltip.id = entity.set_tooltip_field(tracker.tooltip)
  end

  return tracker
end

PM.compound_events.built_events(handler.events, function (event)
  local entity = event.entity or event.destination
  ---@cast entity -?
  local pollution_definition = pollution_definition_map[entity.name]
  if not pollution_definition then return end -- Not an entity we care about

  storage.pollution_buildings_count = storage.pollution_buildings_count + 1
  storage.pollution_buildings[entity.unit_number--[[@cast -?]]] = create_tracker(entity, pollution_definition)
end)

--MARK: Disabling

---@param entity LuaEntity
---@param tracker PollutionLimitTracking
---@param diode defines.entity_status_diode
---@param status LocalisedString
---@param signal SignalID
---@param alert LocalisedString
---@param sprite LuaRendering.draw_sprite_param
local function disable_building(entity, tracker, diode, status, do_alert, signal, alert, sprite)
  ---@cast entity.force LuaForce
  if do_alert then
    entity.force.add_custom_alert(
      entity, signal, alert, true
    )
  end

  local alert = tracker.alert
  if not alert or not alert.valid then
    entity.disabled_by_script = true
    entity.custom_status = { diode = diode, label = status }
    tracker.alert = rendering.draw_sprite(sprite)
  else
    alert.time_to_live = sprite.time_to_live
  end
end

---@param entity LuaEntity
---@param tracker PollutionLimitTracking
local function enable_building(entity, tracker)
  ---@cast tracker.alert -?
  entity.disabled_by_script = false
  entity.custom_status = nil
  tracker.alert.destroy()
  tracker.alert = nil
end

--MARK: Pollution checking

---@param entity LuaEntity
---@param tracker PollutionLimitTracking
local function check_pollution(entity, tracker)
  local pollution
  if tracker.wrong_pollutant then
    pollution = 0 -- FIXME: Currently does not check pollutant changes (https://forums.factorio.com/135837)
  else
    pollution = tracker.surface.get_pollution(entity.position)
    tracker.tooltip.value[2] = pollution
  end
  entity.set_tooltip_field(tracker.tooltip)

  if pollution > tracker.max_pollution then
    disable_building(entity, tracker,
      -- Custom Status
      defines.entity_status_diode.red,
      {"entity-status.pm-too-much-pollution"},
      -- Custom Alert
      tracker.max_alert,
      {type="virtual", name="pm-too-much-pollution"},
      {"pm-alerts.pm-too-much-pollution"},
      -- Alert Sprite
      {
        sprite = "virtual-signal/pm-too-much-pollution",
        surface = entity.surface_index,
        target = entity,
        forces = entity.force,
        time_to_live = 120,
        blink_interval = 30,
      }
    )

  elseif pollution < tracker.min_pollution then
    disable_building(entity, tracker,
      -- Custom Status
      defines.entity_status_diode.red,
      {"entity-status.pm-too-little-pollution"},
      -- Custom Alert
      tracker.min_alert,
      {type="virtual", name="pm-too-little-pollution"},
      {"pm-alerts.pm-too-little-pollution"},
      -- Alert Sprite
      {
        sprite = "virtual-signal/pm-too-little-pollution",
        surface = entity.surface_index,
        target = entity,
        forces = entity.force,
        time_to_live = 120,
        blink_interval = 30,
      }
    )

  elseif tracker.alert then
    enable_building(entity, tracker)
  end
end

--MARK: Tick handler
local mceil = math.ceil
handler.events[defines.events.on_tick] = function (event)
  local buildings = storage.pollution_buildings
  local max_count = mceil(storage.pollution_buildings_count / 60)
  local count = 0

  -- Loop start
  local index, tracker = next(buildings, storage.pollution_index)
  while tracker do

    -- Loop body
    local entity = tracker.entity
    if not entity.valid then
      buildings[index--[[@cast -?]]] = nil
      storage.pollution_buildings_count = storage.pollution_buildings_count - 1
    else
      check_pollution(entity, tracker)

      -- Iteration
      -- In the else chunk so it *has* to fetch a new index
      -- if the entity wasn't valid
      count = count + 1
    end

    if count >= max_count then break end
    index, tracker = next(buildings, index)
  end
  -- Save progress on the loop
  storage.pollution_index = index
end

---MARK: Setup

local function reload_buildings()
  local old_list = storage.pollution_buildings or {}
  ---@type Mapping<uint,PollutionLimitTracking>
  local new_list, count = {}, 0
  storage.pollution_buildings = new_list
  storage.pollution_index = nil

  local building_list, build_count = {}, 0
  for building in pairs(pollution_definition_map) do
    build_count = build_count + 1
    building_list[build_count] = building
  end

  for _, surface in pairs(game.surfaces) do
    for _, entity in pairs(surface.find_entities_filtered{
      name = building_list
    }) do
      count = count + 1
      local unit_id = entity.unit_number
      ---@cast unit_id -?
      local definition = pollution_definition_map[entity.name]
      ---@cast definition -?

      local old_tracker = old_list[unit_id] or {}--[[@as PollutionLimitTracking]]
      -- HACK: Because Black released an update that *didn't* include the fix for this >:(
      if not old_tracker.alert and entity.disabled_by_script then
---@diagnostic disable-next-line: assign-type-mismatch
        old_tracker.alert = {destroy = function()end} -- Will get 'destroyed' so doesn't matter
        enable_building(entity, old_tracker) -- If it's meant to be disabled, it will be re-disabled :shrug:
      end

      new_list[unit_id] = create_tracker(entity, definition, old_tracker)
      old_list[unit_id] = nil
    end
  end

  storage.pollution_buildings_count = count

  -- Go over all entities no longer watched, and make sure they're enabled.
  for _, tracker in pairs(old_list) do
    if tracker.alert then
      enable_building(tracker.entity, tracker)
    end
    if tracker.tooltip then
      tracker.entity.clear_tooltip_field(tracker.tooltip.id--[[@cast -?]])
    end
  end
end

function handler.on_init()
  reload_buildings()
end
function handler.on_configuration_changed()
  reload_buildings()
end

return handler
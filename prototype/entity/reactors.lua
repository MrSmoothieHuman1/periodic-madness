local PM = require("library")

---@class data.CooledReactorPrototype : data.ReactorPrototype
---@field coolant_fluid_box data.FluidBox The fluidbox for the coolant.
---@field coolant_category data.RecipeCategoryID[] The recipe categories for turning coolant into liquid heat
---@field coolant_life float How many seconds the reactor can last without heat

--- Makes a given reactor's paired assembling machine
--- and modifies what it needs to make it explode without coolant
---@param reactor data.ReactorPrototype|data.CooledReactorPrototype
---@param coolant_fluidbox data.FluidBox? The fluidbox for the coolant.
---@param coolant_category data.RecipeCategoryID[]? The recipe categories for turning coolant into liquid heat
---@param coolant_life float How many seconds the reactor can last without heat
---@overload fun(reactor:data.CooledReactorPrototype)
---@overload fun(reactor:data.ReactorPrototype,coolant_fluidbox:data.FluidBox,coolant_category:data.RecipeCategoryID[], coolant_life:float)
---@return data.ReactorPrototype reactor
local function coolant_reactor(reactor, coolant_fluidbox, coolant_category, coolant_life)
  --MARK: Parameter processing
  -- Get the coolant category
  coolant_category = coolant_category or reactor.coolant_category
  reactor.coolant_category = nil
  if not coolant_category then error("Not given a coolant_category for the reactor '"..reactor.name.."'") end

  -- Get the lifetime of the reactor without coolant
  coolant_life = coolant_life or reactor.coolant_life
  reactor.coolant_life = nil
  if not coolant_life then error("Not given a coolant_life for the reactor '"..reactor.name.."'") end

  -- Get the fluidbox definition for the coolant
  coolant_fluidbox = coolant_fluidbox or reactor.coolant_fluid_box
  reactor.coolant_fluid_box = nil
  if not coolant_life then error("Not given a coolant_fluid_box for the reactor '"..reactor.name.."'") end

  -- Make sure it's an input type fluidbox
  if not coolant_fluidbox.production_type then
    coolant_fluidbox.production_type = "input"
  elseif coolant_fluidbox.production_type ~= "input" then
    error("Given fluidbox is not a production_type of 'input': "..serpent.block(coolant_fluidbox))
  end

  ---Because we need lots of connections to allow for faster fluid transfer
  ---@type data.PipeConnectionDefinition[],data.PipeConnectionDefinition[]
  local input_connections, output_connections = {},{}
  for i = 1, 10, 1 do
    input_connections[i] = {
      flow_direction = "input",
      connection_type = "linked",
      linked_connection_id = i,
    }
    output_connections[i] = {
      flow_direction = "output",
      connection_type = "linked",
      linked_connection_id = i,
    }
  end

  --MARK: Reactor Furnace
  -- Make the furnace that'll burn resources at the cost of coolant
  data:extend{{
    type = "furnace",
    name = reactor.name.."-coolant-furnace",
    localised_name = reactor.localised_name or {"entity-name."..reactor.name},

    source_inventory_size = 0,
    result_inventory_size = 0,
    ignore_output_full = not reactor.scale_energy_usage,
    crafting_categories = coolant_category,

    -- Heat output fluidbox
    fluid_boxes = {
      coolant_fluidbox,
      {
        production_type = "output",
        volume = 1000,
        pipe_connections = output_connections
      }
    }--[[@as data.FluidBox[] ]],
    collision_box = reactor.collision_box,
    collision_mask = {layers={}},

    -- Energy consumption
    energy_usage = reactor.consumption,
    energy_source = reactor.energy_source,

    -- Coolant consumption
    -- Every recipe needs to output 1kJ per second of craft time
    -- Anything different, and the coolant is affecting the efficiency of the fuel
    crafting_speed = util.parse_energy(reactor.consumption)/1000*60,

    -- Make reactor start exploding
    max_health = coolant_life,
    production_health_effect = {
      not_producing = -1/60,
      producing = 1/600, -- Punish you for not cooling your reactor :)
    },

    dying_trigger_effect = PM.script_trigger_effect("pm-cooled-reactor-died"),
    damaged_trigger_effect = PM.script_trigger_effect("pm-cooled-reactor-hurt"),
  }--[[@as data.FurnacePrototype]]}

  --MARK: Reactor modifications

  -- Overwrite the reactor's energy source to consume the liquid heat
  reactor.energy_source = {
    type = "fluid",
    burns_fluid = true,
    scale_fluid_usage = true, -- Handled by the reactor consuming energy.
    fluid_box = {
      volume = 1000,
      pipe_connections = input_connections
    }
  }--[[@as data.FluidEnergySource]]

  -- Get an event for when the reactor is created
  reactor.created_effect = PM.script_trigger("pm-cooled-reactor-placed", reactor.created_effect)

	return reactor
end

coolant_reactor(data.raw["reactor"]["nuclear-reactor"],
  {
    production_type = "input",
    volume = 100,
    pipe_connections = {
      {
        flow_direction = "input",
        direction = defines.direction.north--[[@as int]],
        position = {0, -2}
      }
    }
  }--[[@as data.FluidBox]],
  {"pm-reactor-coolant-burning"},
  10
)

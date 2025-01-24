local PM = require("library")

---@class data.CooledReactorPrototype : data.ReactorPrototype
---@field coolant_life float How many seconds the reactor can last without heat
---@field coolant_categories data.RecipeCategoryID[] The recipe categories for turning coolant into liquid heat
---@field coolant_fluid_box data.FluidBox The fluidbox for the coolant.
---@field coolant_exhuast_fluidbox data.FluidBox? The fluidbox for the exhuasted coolant.

--- Makes a given reactor's paired assembling machine
--- and modifies what it needs to make it explode without coolant
---@param reactor data.ReactorPrototype|data.CooledReactorPrototype
---@param coolant_life float How many seconds the reactor can last without heat
---@param coolant_categories data.RecipeCategoryID[]? The recipe categories for turning coolant into liquid heat
---@param coolant_fluidbox data.FluidBox? The fluidbox for the coolant.
---@param coolant_exhuast_fluidbox data.FluidBox? The fluidbox for the exhuasted coolant.
---@overload fun(reactor:data.CooledReactorPrototype)
---@overload fun(reactor:data.ReactorPrototype,coolant_life:float,coolant_categories:data.RecipeCategoryID[],coolant_fluidbox:data.FluidBox,coolant_exhuast_fluidbox:data.FluidBox?)
---@return data.ReactorPrototype reactor
local function coolant_reactor(reactor, coolant_life, coolant_categories, coolant_fluidbox, coolant_exhuast_fluidbox)
  --MARK: Parameter processing
  -- Get the coolant category
  coolant_categories = coolant_categories or reactor.coolant_categories
  reactor.coolant_categories = nil
  if not coolant_categories then error("Not given a coolant_categories for the reactor '"..reactor.name.."'") end

  -- Get the lifetime of the reactor without coolant
  coolant_life = coolant_life or reactor.coolant_life
  reactor.coolant_life = nil
  if not coolant_life then error("Not given a coolant_life for the reactor '"..reactor.name.."'") end

  -- Get the fluidbox definition for the coolant
  coolant_fluidbox = coolant_fluidbox or reactor.coolant_fluid_box
  reactor.coolant_fluid_box = nil
  if not coolant_life then error("Not given a coolant_fluid_box for the reactor '"..reactor.name.."'") end

  -- Get the fluidbox definition for the coolant exhuast
  coolant_exhuast_fluidbox = coolant_exhuast_fluidbox or reactor.coolant_exhuast_fluidbox
  reactor.coolant_exhuast_fluidbox = nil
  -- Don't error, because optional

  -- Make sure it's an input type fluidbox
  if not coolant_fluidbox.production_type then
    coolant_fluidbox.production_type = "input"
  elseif coolant_fluidbox.production_type ~= "input" then
    error("Given fluidbox is not a production_type of 'input': "..serpent.block(coolant_fluidbox))
  end

  --MARK: Animation processing

  -- Remove shadow layers
  ---@type data.Animation[]
  local idle_animation_layers, index = {}, 0
  local reactor_sprite = reactor.picture
  if reactor_sprite then

    -- Convert the sprite to layered format
    if not reactor_sprite.layers then
      reactor_sprite = {layers = {reactor_sprite}}
    end

    -- Add the sprite layers
    for _, layer in pairs(reactor_sprite--[[@as data.Animation]].layers) do
      if not layer.draw_as_shadow then
        index = index + 1
        layer = util.copy(layer)
        if layer.frame_count and layer.frame_count ~= 1
        or layer.repeat_count and layer.repeat_count ~= 1 then
          log("The '"..reactor.name.."' had an animation for it's picture (a sprite)")
          ---@cast layer data.Animation
        end
        layer.frame_count = nil
        layer.repeat_count = nil
        idle_animation_layers[index] = layer
      end
    end
  end

  --MARK: Fluidbox processing

  ---Because we need lots of connections to allow for faster fluid transfer
  ---@type data.PipeConnectionDefinition[],data.PipeConnectionDefinition[]
  local input_connections, output_connections, index = {},{}, 10
  for i = 1, index, 1 do
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

  -- Add the coolant inputs/outputs to the heat input
  -- So they visually appear while placing
  for _, fluidbox in pairs{coolant_fluidbox, coolant_exhuast_fluidbox} do
    for _, connection in pairs(fluidbox.pipe_connections) do
      -- Ignore the non-visual connections
      if connection.connection_type ~= "linked" then
        connection = util.copy(connection)
        index = index + 1
        input_connections[index] = connection
        
        connection.connection_category = "null-category-fuck-off" -- Don't *actually* connect to anything
      end
    end
  end

  --MARK: Resistance Processing

  -- Make it resistant to every damage besides the production health efffect
  -- Theoretically other things can still hurt it, but `physical`
  -- should hit the reactor first more often than not
  ---@type data.Resistance[]
  local resistances, index = {}, 0
  for damage in pairs(data.raw["damage-type"]) do
    if damage ~= "physical" then
      index = index + 1
      resistances[index] = {
        type = damage,
        percent = 100
      }
    end
  end

  local flags_holder = {flags=util.copy(reactor.flags)}
  PM.set_flag(flags_holder, "not-deconstructable")
  PM.set_flag(flags_holder, "not-blueprintable")
  PM.set_flag(flags_holder, "not-on-map")

  --MARK: Reactor Furnace
  -- Make the furnace that'll burn resources at the cost of coolant
  data:extend{{
    type = "furnace",
    name = reactor.name.."-coolant-furnace",
    localised_name = reactor.localised_name or {"entity-name."..reactor.name},
    flags = flags_holder.flags;
    icon = reactor.icon,
    icon_size = reactor.icon_size,
    icons = util.copy(reactor.icons),

    source_inventory_size = 0,
    result_inventory_size = 0,
    show_recipe_icon = false,
    crafting_categories = coolant_categories,

    -- Visually look like a reactor
    match_animation_speed_to_activity = false,
    graphics_set = {
      animation = {
        north = {layers = idle_animation_layers}
      },
      working_visualisations = {
        {
          animation = reactor.working_light_picture
        }
      },
    },

    -- Heat output fluidbox
    fluid_boxes = {
      coolant_fluidbox,
      {
        production_type = "output",
        volume = 1000,
        pipe_connections = output_connections
      },
      coolant_exhuast_fluidbox,
    }--[[@as data.FluidBox[] ]],
    collision_box = reactor.collision_box,
    collision_mask = {layers={}},

    -- Energy consumption
    energy_usage = reactor.consumption,
    energy_source = reactor.energy_source,

    -- Coolant consumption
    -- Every recipe needs to output 1kJ per second of craft time
    -- Anything different, and the coolant is affecting the efficiency of the fuel
    crafting_speed = util.parse_energy(reactor.consumption)/50000*60,

    -- Make reactor start exploding
    max_health = coolant_life,
    resistances = resistances,
    hide_resistances = true,
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
  -- Hide the burning of liquid heat until hovered on
  PM.set_flag(reactor, "hide-alt-info")

	return reactor
end

coolant_reactor(data.raw["reactor"]["nuclear-reactor"], --MARK: Nuclear Reactor
  10, {"pm-reactor-coolant-burning"},
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
  }--[[@as data.FluidBox]]
)

data:extend({
  coolant_reactor{ --MARK: Polonium Reactor
    type = "reactor",
    name = "pm-polonium-reactor",
    icon = "__periodic-madness__/graphics/icons/buildings/polonium-reactor.png",
    icon_size = 128,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.7, result = "pm-polonium-reactor" },
    max_health = 250,
    corpse = "nuclear-reactor-remnants",
    dying_explosion  = "nuclear-reactor-explosion",
    consumption = "50MW",
    neighbour_bonus = 0.25,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"pm-polonium"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = {pollution = 15},
      light_flicker =
      {
        color = { 0, 0, 0 },
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/nuclear-reactor-1.ogg",
          volume = 0.55
        },
        {
          filename = "__base__/sound/nuclear-reactor-2.ogg",
          volume = 0.55
        }
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    meltdown_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "atomic-rocket"
          }
        }
      }
    },
    ---MARK: Polonium Coolant
    coolant_life = 10,
    coolant_categories = {"pm-reactor-coolant-burning-with-exhuast"},
    coolant_fluid_box =
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
    },
    coolant_exhuast_fluidbox = {
      production_type = "output",
      volume = 100,
      pipe_connections = {
        {
          flow_direction = "output",
          direction = defines.direction.south--[[@as int]],
          position = {0, 2},
        }
      }
    },
    collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    --MARK: Polonium graphics
    lower_layer_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      width = 320,
      height = 316,
      scale = 0.5,
      shift = util.by_pixel(-1, -5)
    },
    heat_lower_layer_picture = apply_heat_pipe_glow{
			filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
			width = 320,
			height = 316,
			scale = 0.5,
			shift = util.by_pixel(-0.5, -4.5)
		}--[[@as data.Sprite]],
    working_light_picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
          width = 320,
          height = 320,
          line_length = 6,
          frame_count = 24,
          animation_speed = 0.5,
          scale = 0.5,
          shift = util.by_pixel(-5, -7)
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
          width = 320,
          height = 320,
          line_length = 1,
          frame_count = 1,
          repeat_count = 24,
          scale = 0.5,
          shift = { 1.625, 0 },
          draw_as_shadow = true
        }
      }
    },
    picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
          width = 320,
          height = 320,
          frame_count = 1,
          scale = 0.5,
          shift = util.by_pixel(-5, -7)
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
          width = 320,
          height = 320,
          scale = 0.5,
          shift = { 1.625, 0 },
          draw_as_shadow = true
        }
      }
    },
    connection_patches_connected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 64,
        height = 64,
        variation_count = 12,
        scale = 0.5
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 64,
        height = 64,
        variation_count = 12,
        y = 64,
        scale = 0.5
      }
    },

    heat_connection_patches_connected =
    {
      sheet = apply_heat_pipe_glow{
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 12,
        scale = 0.5
      }--[[@as data.SpriteSheet]]
    },

    heat_connection_patches_disconnected =
    {
      sheet = apply_heat_pipe_glow{
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 12,
        y = 64,
        scale = 0.5
      }--[[@as data.SpriteSheet]]
    },
    --MARK: Polonium heatbox
    heat_buffer =
    {
      max_temperature = 2500,
      specific_heat = "10MJ",
      max_transfer = "10GW",
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = { -2, -2 },
          direction = defines.direction.north --[[@as int]]
        },
        {
          position = { 0, -2 },
          direction = defines.direction.north --[[@as int]]
        },
        {
          position = { 2, -2 },
          direction = defines.direction.north --[[@as int]]
        },
        {
          position = { 2, -2 },
          direction = defines.direction.east --[[@as int]]
        },
        {
          position = { 2, 0 },
          direction = defines.direction.east --[[@as int]]
        },
        {
          position = { 2, 2 },
          direction = defines.direction.east --[[@as int]]
        },
        {
          position = { 2, 2 },
          direction = defines.direction.south --[[@as int]]
        },
        {
          position = { 0, 2 },
          direction = defines.direction.south --[[@as int]]
        },
        {
          position = { -2, 2 },
          direction = defines.direction.south --[[@as int]]
        },
        {
          position = { -2, 2 },
          direction = defines.direction.west --[[@as int]]
        },
        {
          position = { -2, 0 },
          direction = defines.direction.west --[[@as int]]
        },
        {
          position = { -2, -2 },
          direction = defines.direction.west --[[@as int]]
        }
      },
    },
  },
}--[[@as data.ReactorPrototype[] ]])
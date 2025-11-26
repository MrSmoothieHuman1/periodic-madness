local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local fireutil = require("__base__.prototypes.fire-util")
local tile_collision_masks = require("collision-mask")
require("entity.pipe-pictures")

function pm_diode_status_colors()
    return
    {
        -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is used, always_draw of corresponding layer must be set to true to draw it in those states.

        no_power = {0, 0, 0, 0},                  -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}

        idle = {1, 0, 0, 1},                      -- If idle is not specified or is nil, it defaults to white.
        no_minable_resources = {1, 0, 0, 1},      -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or are nil, they default to idle color.
        insufficient_input = {1, 0, 0, 1},
        full_output = {1, 1, 0, 1},
        disabled = {1, 1, 0, 1},

        working = {0, 1, 0, 1},                   -- If working is not specified or is nil, it defaults to white.
        low_power = {1, 1, 0, 1},                 -- If low_power is not specified or is nil, it defaults to working color.
    }
end

local pm_lab_inputs =
{
  "automation-science-pack",
  "logistic-science-pack",
  "pm-advanced-advanced-transition-metal-science-pack",
  "chemical-science-pack",
  "pm-post-transition-metal-science-pack",
  "pm-alkali-metal-science-pack",
  "pm-metalloid-science-pack",
  "pm-alkaline-earth-metal-science-pack",
  "pm-advanced-advanced-advanced-transition-metal-science-pack",
  "pm-noble-gas-science-pack",
  "production-science-pack",
  "utility-science-pack",
  "space-science-pack",
  "pm-experimental-research-data"
}

circuit_connector_definitions["evaporator"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel(-20, 20), shadow_offset = util.by_pixel(-15, 31), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-20, 20), shadow_offset = util.by_pixel(-15, 31), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-20, 20), shadow_offset = util.by_pixel(-15, 31), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-20, 20), shadow_offset = util.by_pixel(-15, 31), show_shadow = true }
  }
)
circuit_connector_definitions["-inator"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel(-21.625,  8.25), shadow_offset = util.by_pixel(-21.625,  8.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-21.625,  8.25), shadow_offset = util.by_pixel(-21.625,  8.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-21.625,  8.25), shadow_offset = util.by_pixel(-21.625,  8.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-21.625,  8.25), shadow_offset = util.by_pixel(-21.625,  8.25), show_shadow = true },
  }
)
circuit_connector_definitions["cyclotron"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 39, main_offset = util.by_pixel(-33.25, -30.5), shadow_offset = util.by_pixel(-33.25, -30.5), show_shadow = true }, 
    { variation = 39, main_offset = util.by_pixel(-33.25, -30.5), shadow_offset = util.by_pixel(-33.25, -30.5), show_shadow = true }, 
    { variation = 39, main_offset = util.by_pixel(-33.25, -30.5), shadow_offset = util.by_pixel(-33.25, -30.5), show_shadow = true }, 
    { variation = 39, main_offset = util.by_pixel(-33.25, -30.5), shadow_offset = util.by_pixel(-33.25, -30.5), show_shadow = true }, 
  }
)
circuit_connector_definitions["cooling-plant"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 25, main_offset = util.by_pixel(-24.75, -12.25), shadow_offset = util.by_pixel(-24.75, -12.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-24.75, -12.25), shadow_offset = util.by_pixel(-24.75, -12.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-24.75, -12.25), shadow_offset = util.by_pixel(-24.75, -12.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-24.75, -12.25), shadow_offset = util.by_pixel(-24.75, -12.25), show_shadow = true },
  }
)
circuit_connector_definitions["polonium-reactor"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation =  10, main_offset = util.by_pixel(-49.75, -20.375), shadow_offset = util.by_pixel(-49.75, -20.375), show_shadow = true },
    { variation =  10, main_offset = util.by_pixel(-49.75, -20.375), shadow_offset = util.by_pixel(-49.75, -20.375), show_shadow = true },
    { variation =  10, main_offset = util.by_pixel(-49.75, -20.375), shadow_offset = util.by_pixel(-49.75, -20.375), show_shadow = true },
    { variation =  10, main_offset = util.by_pixel(-49.75, -20.375), shadow_offset = util.by_pixel(-49.75, -20.375), show_shadow = true },
  }
)
circuit_connector_definitions["mixing-tank"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 33, main_offset = util.by_pixel( 66, -40.25), shadow_offset = util.by_pixel( 66, -40.25), show_shadow = true }, 
    { variation = 33, main_offset = util.by_pixel( 66, -40.25), shadow_offset = util.by_pixel( 66, -40.25), show_shadow = true }, 
    { variation = 33, main_offset = util.by_pixel( 66, -40.25), shadow_offset = util.by_pixel( 66, -40.25), show_shadow = true }, 
    { variation = 33, main_offset = util.by_pixel( 66, -40.25), shadow_offset = util.by_pixel( 66, -40.25), show_shadow = true }, 
  }
)
circuit_connector_definitions["burn-inator"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel(-0.75, -17.25), shadow_offset = util.by_pixel(-0.75, -17.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-0.75, -17.25), shadow_offset = util.by_pixel(-0.75, -17.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-0.75, -17.25), shadow_offset = util.by_pixel(-0.75, -17.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel(-0.75, -17.25), shadow_offset = util.by_pixel(-0.75, -17.25), show_shadow = true },
  }
)
circuit_connector_definitions["air-filterer"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel( 2.5,  6.5), shadow_offset = util.by_pixel( 2.5,  6.5), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 2.5,  6.5), shadow_offset = util.by_pixel( 2.5,  6.5), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 2.5,  6.5), shadow_offset = util.by_pixel( 2.5,  6.5), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 2.5,  6.5), shadow_offset = util.by_pixel( 2.5,  6.5), show_shadow = true },
  }
)
circuit_connector_definitions["circuit-megassembler"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel( 65.125,  22.25), shadow_offset = util.by_pixel( 65.125,  22.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 65.125,  22.25), shadow_offset = util.by_pixel( 65.125,  22.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 65.125,  22.25), shadow_offset = util.by_pixel( 65.125,  22.25), show_shadow = true },
    { variation = 18, main_offset = util.by_pixel( 65.125,  22.25), shadow_offset = util.by_pixel( 65.125,  22.25), show_shadow = true },
  }
)
circuit_connector_definitions["catalyst-cracker"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 25, main_offset = util.by_pixel(-39.75, -17), shadow_offset = util.by_pixel(-39.75, -17), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-39.75, -17), shadow_offset = util.by_pixel(-39.75, -17), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-39.75, -17), shadow_offset = util.by_pixel(-39.75, -17), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-39.75, -17), shadow_offset = util.by_pixel(-39.75, -17), show_shadow = true },
  }
)
circuit_connector_definitions["crystallizer"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation =  0, main_offset = util.by_pixel( 59.375,  36.25), shadow_offset = util.by_pixel( 59.375,  36.25), show_shadow = true },
    { variation =  0, main_offset = util.by_pixel(-132.625,  36.25), shadow_offset = util.by_pixel(-132.625,  36.25), show_shadow = true },
    { variation =  0, main_offset = util.by_pixel( 59.375, -123.75), shadow_offset = util.by_pixel( 59.375, -123.75), show_shadow = true },
    { variation =  0, main_offset = util.by_pixel(-132.625, -123.75), shadow_offset = util.by_pixel(-132.625, -123.75), show_shadow = true },
  }
)
circuit_connector_definitions["atmospheric-condenser"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 22, main_offset = util.by_pixel(-34.75,  34.375), shadow_offset = util.by_pixel(-34.75,  34.375), show_shadow = true },
    { variation = 22, main_offset = util.by_pixel(-34.75,  34.375), shadow_offset = util.by_pixel(-34.75,  34.375), show_shadow = true },
    { variation = 22, main_offset = util.by_pixel(-34.75,  34.375), shadow_offset = util.by_pixel(-34.75,  34.375), show_shadow = true },
    { variation = 22, main_offset = util.by_pixel(-34.75,  34.375), shadow_offset = util.by_pixel(-34.75,  34.375), show_shadow = true },
  }
)


function fireutil.create_magnesium_fire_pictures(opts)
  local fire_blend_mode = opts.blend_mode or "normal"
  local fire_animation_speed1 = opts.animation_speed1 or 0.5
  local fire_animation_speed2 = opts.animation_speed2 or 0.9
  local fire_scale1 = opts.scale1 or 0.55
  local fire_scale2 = opts.scale2 or 0.35
  local fire_tint = {r=1,g=1,b=1,a=1}
  local fire_flags = nil
  local retval =
  {
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-01.png",
      line_length = 10,
      width = 84,
      height = 130,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed1,
      scale = fire_scale1,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-02.png",
      line_length = 10,
      width = 82,
      height = 106,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed1,
      scale = fire_scale1,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-03.png",
      line_length = 10,
      width = 84,
      height = 124,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed1,
      scale = fire_scale1,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-04.png",
      line_length = 10,
      width = 84,
      height = 94,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed1,
      scale = fire_scale1,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.25 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-01.png",
      line_length = 10,
      width = 84,
      height = 130,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed2,
      scale = fire_scale2,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-02.png",
      line_length = 10,
      width = 82,
      height = 106,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed2,
      scale = fire_scale2,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-03.png",
      line_length = 10,
      width = 84,
      height = 124,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed2,
      scale = fire_scale2,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.7 }
    },
    {
      filename = "__periodic-madness__/graphics/entities/buildings/magnesium-fire/fire-flame-04.png",
      line_length = 10,
      width = 84,
      height = 94,
      frame_count = 90,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed2,
      scale = fire_scale2,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.25 }
    }
  }
  retval = fireutil.foreach(retval, function(tab)
    if tab.shift and tab.scale then tab.shift = { tab.shift[1] * tab.scale, tab.shift[2] * tab.scale } end
  end)
  for k, layer in pairs (retval) do
    retval[k] = util.draw_as_glow(layer)
  end
  return retval
end

function fireutil.add_magnesium_fire_graphics_and_effects_definitions(fire)
  fire.flame_alpha = fire.flame_alpha or 0.45
  fire.flame_alpha_deviation = fire.flame_alpha_deviation or 0.05
  fire.add_fuel_cooldown = fire.add_fuel_cooldown or 10
  fire.fade_in_duration = fire.fade_in_duration or 30
  fire.fade_out_duration = fire.fade_out_duration or 60
  fire.burnt_patch_lifetime = fire.burnt_patch_lifetime or 1800
  fire.on_fuel_added_action = fire.on_fuel_added_action or
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-trivial-smoke",
          smoke_name = "fire-smoke-on-adding-fuel",
          offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
          speed_from_center = 0.01
        }
      }
    }
  }
  fire.pictures = fire.pictures or fireutil.create_magnesium_fire_pictures({})
  fire.smoke_source_pictures = fire.smoke_source_pictures or fireutil.create_fire_smoke_source_pictures(1, nil)
  fire.burnt_patch_pictures = fire.burnt_patch_pictures or fireutil.create_burnt_patch_pictures()
  fire.burnt_patch_alpha_default = fire.burnt_patch_alpha_default or 0.4
  fire.burnt_patch_alpha_variations = fire.burnt_patch_alpha_variations or
  {
    { tile = "stone-path", alpha = 0.26 },
    { tile = "concrete", alpha = 0.24 },
    -- "water", "deepwater", "water-green", "deepwater-green", "water-shallow", "water-mud", "water-wube"
    { tile = "water", alpha = 0 }, { tile = "deepwater", alpha = 0 },
    { tile = "water-green", alpha = 0 }, { tile = "deepwater-green", alpha = 0 },
    { tile = "water-shallow", alpha = 0 }, { tile = "water-mud", alpha = 0 }, { tile = "water-wube", alpha = 0 }
  }
  fire.smoke = fire.smoke or
  {
    {
      name = "fire-smoke",
      deviation = {0.5, 0.5},
      frequency = 0.25 / 2,
      position = {0.0, -0.8},
      starting_vertical_speed = 0.05,
      starting_vertical_speed_deviation = 0.005,
      vertical_speed_slowdown = 0.99,
      starting_frame_deviation = 60,
      height = -0.5
    }
  }
  fire.light_size_modifier_per_flame = 0.2
  fire.light_size_modifier_maximum = 3
  fire.working_sound = fire.working_sound or
  {
    sound = {category = "weapon", variations = sound_variations("__base__/sound/fire", 2, 0.7)},
    activate_sound = {category = "weapon", variations = sound_variations("__base__/sound/fight/fire-impact", 5, 0.9)},
  }
  return fire
end

local pm_placable_on_concrete =
{
  {area = {{-3.4, -3.4}, {3.4, 3.4}}, required_tiles = {layers = {pm_concrete = true}}, remove_on_collision = true}
}
local pm_placable_on_refined_concrete =
{
  {area = {{-3.4, -3.4}, {3.4, 3.4}}, required_tiles = {layers = {pm_refined_concrete = true}}, remove_on_collision = true}
}
local pm_placable_on_both_concrete =
{
  {area = {{-3.4, -3.4}, {3.4, 3.4}}, required_tiles = {layers = {pm_concrete = true, pm_refined_concrete = true}}, remove_on_collision = true}
}

data:extend({

  {
    type = "assembling-machine",
    name = "pm-welder",
    icon = "__periodic-madness__/graphics/icons/buildings/welder.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-welder" },
    max_health = 300,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{ -0.8, -0.8},  {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"pm-alloying"},
    energy_usage = "250kW",
    crafting_speed = 2,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"pm-oxidiser"},
      effectivity = 1,
      emissions_per_minute = {pollution = 3},
      fuel_inventory_size = 1,
      light_flicker =
      {
        color = {0, 0, 1},
        minimum_intensity = 0.9,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          frequency = 1,
          position = {0, -1},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/welder/welder-base.png",
            priority = "high",
            width = 128,
            height = 136,
            frame_count = 1,
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
            priority = "high",
            width = 277,
            height = 85,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.25, 11.25),
            scale = 0.5
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/welder/welder-on.png",
            width = 128,
            height = 136,
            frame_count = 24,
            line_length = 6,
            scale = 0.5,
            animation_speed = 0.33
          }
        },
      },
      fast_replaceable_group = "furnace",
    }
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-assembling-machine-0",
    icon = "__periodic-madness__/graphics/icons/buildings/assmachine-0.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-assembling-machine-0" },
    max_health = 100,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2 }},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "assembling-machine-1",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/ass-machine-0/assembling-machine-0.png",
          priority = "high",
          width = 214,
          height = 226,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority = "high",
          width = 190,
          height = 165,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5),
          scale = 0.5
        }
      }
    }
  },
    crafting_categories = {"crafting", "basic-crafting", "pm-circuitry"},
    crafting_speed = 0.25,
    energy_usage = "75kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical", "pm-fuel-canisters"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = {pollution = 6},
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "offshore-pump",
    name = "pm-water-extractor",
    icon = "__periodic-madness__/graphics/icons/buildings/water-extractor.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "filter-directions" },
    collision_mask = {layers = {
      -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
      object=true,
      train=true,
      is_object=true,
      is_lower_object=true
    }},
    tile_buildability_rules =
    {
      {area = {{-0.4, -0.4}, {0.4, 0.4}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={water_tile=true}}, remove_on_collision = true},
      {area = {{-1, -2}, {1, -1}}, required_tiles = {layers={water_tile=true}}, colliding_tiles = {layers={}}},
    },
    minable = { mining_time = 0.1, result = "pm-water-extractor"},
    max_health = 150,
    corpse = "offshore-pump-remnants",
    dying_explosion = "offshore-pump-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = -25
      },
    },
    collision_box = { { -0.6, -1.05 }, { 0.6, 0.3 } },
    selection_box = { { -0.6, -1.49 }, { 0.6, 0.49 } },
    fluid_source_offset = {0, -1},
    fluid_box =
    {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "pm-seawater",
      pipe_connections =
      {
        {
          position = {0, 0},
          direction = defines.direction.south--[[@as int]],
          flow_direction = "output"
        }
      }
    },
    pumping_speed = 10,
    tile_width = 1,
    tile_height = 1,
    energy_usage = "1kW",
    energy_source = {type = "void"},
    {
      sound =
      {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5
        }
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    perceived_performance = {minimum = 0.5},
    always_draw_fluid = true,
    graphics_set =
    {
      underwater_layer_offset = 30,
      base_render_layer = "ground-patch",
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_North.png",
              priority = "high",
              width = 90,
              height = 162,
              shift = util.by_pixel(-1, -15),
              scale = 0.5
            },
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_North-shadow.png",
              priority = "high",
              width = 150,
              height = 134,
              shift = util.by_pixel(13, -7),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        },
        east =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_East.png",
              priority = "high",
              width = 124,
              height = 102,
              shift = util.by_pixel(15, -2),
              scale = 0.5
            },
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_East-shadow.png",
              priority = "high",
              width = 180,
              height = 66,
              shift = util.by_pixel(27, 8),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        },
        south =
        {
          layers =
          {
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_South.png",
              priority = "high",
              width = 92,
              height = 192,
              shift = util.by_pixel(-1, 0),
              scale = 0.5
            },
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_South-shadow.png",
              priority = "high",
              width = 164,
              height = 128,
              shift = util.by_pixel(15, 23),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_West.png",
              priority = "high",
              width = 124,
              height = 102,
              shift = util.by_pixel(-15, -2),
              scale = 0.5
            },
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/water-extractor/water-extractor_West-shadow.png",
              priority = "high",
              width = 172,
              height = 66,
              shift = util.by_pixel(-3, 8),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      }
    }
  }--[[@as data.OffshorePumpPrototype]],

  {
    type = "storage-tank",
    name = "pm-stainless-steel-storage-tank",
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-tank.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.6, result = "pm-stainless-steel-storage-tank" },
    max_health = 1200,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "pm-storage-tank",
    fluid_box =
    {
      volume = 50000,
      pipe_covers = pm_stainlesspipecoverspictures(),
      max_pipeline_extent = 560,
      pipe_connections =
      {
        { direction = defines.direction.north--[[@as int]], position = {-1, -1} },
        { direction = defines.direction.east--[[@as int]], position = {1, 1} },
        { direction = defines.direction.south--[[@as int]], position = {1, 1} },
        { direction = defines.direction.west--[[@as int]], position = {-1, -1} }
      },
      hide_connection_info = true
    },
    two_direction_only = true,
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures =
    {
      picture =
      {
        sheets =
        {
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/stainless-steel-tank/stainless-steel-tank.png",
            priority = "extra-high",
            frames = 2,
            width = 219,
            height = 215,
            shift = util.by_pixel(-0.25, 3.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 291,
            height = 153,
            shift = util.by_pixel(29.75, 22.25),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 34,
        height = 48,
        scale = 0.5
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        animation_speed = 0.25,
        direction_count = 1,
        scale = 0.5
      }
    },
    flow_length_in_ticks = 360,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.5,
      max_sounds_per_type = 3
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  }--[[@as data.StorageTankPrototype]],
  {
    type = "boiler",
    name = "pm-dirty-boiler",
    icon = "__periodic-madness__/graphics/icons/buildings/dirty-boiler.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-dirty-boiler" },
    max_health = 200,
    corpse = "boiler-remnants",
    dying_explosion = "boiler-explosion",
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "explosion",
        percent = 10
      },
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
    selection_box = { { -1.5, -1 }, { 1.5, 1 } },
    target_temperature = 165,
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
      },
      production_type = "input",
      filter = "pm-seawater"
    },
    output_fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "900kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical", "pm-fuel-canisters"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = {pollution = 20},
      light_flicker =
      {
        color = { 0, 0, 0 },
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(-38, -47.5),
          south_position = util.by_pixel(38.5, -32),
          east_position = util.by_pixel(20, -70),
          west_position = util.by_pixel(-19, -8.5),
          frequency = 15,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.7
      },
      --max_sounds_per_type = 3,
      audible_distance_modifier = 0.3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    pictures =
    {
      north =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 0.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 200,
          height = 173,
          shift = util.by_pixel(-1, -6.75),
          blend_mode = "additive",
          scale = 0.5
        },
      },
      east =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 0.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 139,
          height = 244,
          shift = util.by_pixel(0.25, -13),
          blend_mode = "additive",
          scale = 0.5
        },
      },
      south =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          },
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 0.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 200,
          height = 162,
          shift = util.by_pixel(1, 5.5),
          blend_mode = "additive",
          scale = 0.5
        },
      },
      west =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          },
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 0.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 136,
          height = 217,
          shift = util.by_pixel(2, -6.25),
          blend_mode = "additive",
          scale = 0.5
        },
      }
    },
    burning_cooldown = 20,
    water_reflection = boiler_reflection()
  }--[[@as data.BoilerPrototype]];
  {
    type = "assembling-machine",
    name = "pm-vacuum-former-1",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/vacuum-former-1.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-vacuum-former-1" },
    max_health = 240,
    corpse = "pm-vacuum-former-1",
    dying_explosion = "assembling-machine-1-explosion",
    next_upgrade = "pm-vacuum-former-2",
    fast_replaceable_group = "pm-vacuum-former",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
    },
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fluid_boxes =
    {
      {
        volume = 1000,
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = 
        {
          {flow_direction = "input", direction = defines.direction.south--[[@as int]], position = {0, 1}}
        }
      },
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/vacuum-former-1/vacuum-former.png",
          priority = "high",
          width = 256,
          height = 256,
          frame_count = 60,
          line_length = 8,
          scale = 0.75 / 2
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/vacuum-former-2/vacuum-former-shadow.png",
          priority = "high",
          width = 256,
          height = 256,
          frame_count = 60,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(14, 0),
          scale = 0.75 / 2
        }
      }
    },
  },
    crafting_categories = { "pm-molding" },
    crafting_speed = 0.5,
    energy_usage = "175kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1.5},
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-washing-plant-1",
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-1.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-washing-plant-1" },
    max_health = 250,
    corpse = "pm-washing-plant-1",
    dying_explosion = "assembling-machine-1-explosion",
    next_upgrade = "pm-washing-plant-2",
    fast_replaceable_group = "pm-washers",
    resistances =
    {
      {
        type = "impact",
        percent = 20
      }
    },
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-1/washing-plant.png",
          priority = "high",
          width = 214,
          height = 226,
          shift = util.by_pixel(0, -4),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-1/washing-plant-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          draw_as_shadow = true,
          shift = util.by_pixel(40 - 10, -4),
          scale = 0.5
        }
      }
    },
  },
    crafting_categories = { "pm-washing" },
    crafting_speed = 0.5,
    energy_usage = "180kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2},
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.6
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-burner-crusher",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/burner-crusher.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-burner-crusher" },
    max_health = 200,
    corpse = "pm-burner-crusher",
    dying_explosion = "burner-mining-drill-explosion",
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    energy_usage = "150kW",
    energy_source =
    {
      type = "burner",
      emissions_per_minute = {pollution = 5},
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      fuel_categories = {"chemical", "pm-fuel-canisters"},
      light_flicker = nil, -- Default is to not flicker, and it doesn't take a boolean anyways
    },
    crafting_categories = { "pm-crushing" },
    crafting_speed = 1,
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/burner-crusher/burner-crusher.png",
          width = 177,
          height = 183,
          frame_count = 56,
          line_length = 8,
          shift = util.by_pixel(2.5, 0.5),
          scale = 0.5,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/burner-crusher/burner-crusher-shadow.png",
          width = 183,
          height = 177,
          frame_count = 56,
          line_length = 7,
          draw_as_shadow = true,
          shift = util.by_pixel(14, 4),
          scale = 0.5,
        }
      }
    }
  }
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-fractional-distillator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/fractional-distillator.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.7, result = "pm-fractional-distillator" },
    max_health = 550,
    corpse = "pm-fractional-distillator",
    dying_explosion = "oil-refinery-explosion",
    collision_box = {{ -1.9, -1.9 }, { 1.9, 1.9 }},
    selection_box = {{ -2, -2 }, { 2, 2 }},
    module_slots = 3,
    allowed_effects = PM.all_effects(),
    crafting_categories = { "pm-fractional-distillation" },
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 12}
    },
    energy_usage = "500kW",
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/fractional-distillator/fractional-distillator.png",
          width = 386,
          height = 498,
          shift = util.by_pixel(0, -30),
          scale = 0.4
        },
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/fractional-distillator/fractional-distillator-shadow.png",
          width = 338,
          height = 249 + 7,
          shift = util.by_pixel(70, 0),
          draw_as_shadow = true,
          scale = 0.56,
        }
      }
    },
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        filter = "crude-oil",
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0.5, 1.5}}},
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        filter = "crude-oil",
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {-0.5, 1.5}}},
      },

      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-1.5, 1.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = { { flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-1.5, 0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-1.5, -0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-1.5, -1.5}}},
      },

      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1.5, 1.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1.5, 0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1.5, -0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1.5, -1.5}}},
      },
    },
    -- if ANYONE reads this, i hope you know i hate this. I hate fluid boxes and you should too.
    -- (27/11/23) I HATE FLUID BOXES IT JUST *HAD* TO BE SOMETHING I ALREADY TRIED, but they work now.
    --(14 + 1/02/24) i just HADDD to finish the update, so i've spent... the entire day remaking this ONE entity? fuck fluidboxes, please fix them in 2.0 i beg
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-crusher-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/crusher-1.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.3, result = "pm-crusher-1" },
    max_health = 400,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    corpse = "pm-crusher-1",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-crushing" },
    module_slots = 2,
    allowed_effects = PM.all_effects(),
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2},
    },
    energy_usage = "150kW",
    next_upgrade = "pm-crusher-2",
    fast_replaceable_group = "pm-crusher",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crusher-1/crusher-1.png",
          width = 214,
          height = 226,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          animation_speed = 0.5,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crusher-1/crusher-1-shadow.png",
          width = 226,
          height = 214,
          frame_count = 32,
          line_length = 4,
          shift = util.by_pixel(20, 5),
          animation_speed = 0.5,
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
}--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-crusher-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/crusher-2.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.3, result = "pm-crusher-2" },
    max_health = 400,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    corpse = "pm-crusher-2",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-crushing" },
    module_slots = 4,
    allowed_effects = PM.all_effects(),
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
    },
    energy_usage = "300kW",
    fast_replaceable_group = "pm-crusher",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crusher-2/crusher-2.png",
          width = 214,
          height = 226,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          animation_speed = 0.5,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crusher-1/crusher-1-shadow.png",
          width = 226,
          height = 214,
          frame_count = 32,
          line_length = 4,
          shift = util.by_pixel(20, 5),
          animation_speed = 0.5,
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
}--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-atmospheric-condenser",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/atmospheric-condenser.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-atmospheric-condenser" },
    max_health = 450,
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    corpse = "pm-atmospheric-condenser",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = {"pm-atmospheric-condensing"},
    module_slots = 3,
    allowed_effects = PM.all_effects_but("productivity"),
    crafting_speed = 1,
    icon_draw_specification = {shift = {0, -0.36}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = -2}
    },
    energy_usage = "340kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 2,
    circuit_connector = circuit_connector_definitions["atmospheric-condenser"],
    graphics_set = 
    {
    status_colors = pm_diode_status_colors(),
    animation =
    {
      north = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-north-south-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
    south = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-north-south-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
      east = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-east-west-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
      west = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-east-west-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      }
    },
    working_visualisations =
    {
        {
            apply_tint = "status",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            south_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            east_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            west_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
        }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 200,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0, 2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north--[[@as int]], position = {1, -2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north--[[@as int]], position = {-1, -2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, -1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, -1} }},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-fluid-catalyst-cracker",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/fluid-cracker.png",
    minable = { mining_time = 0.4, result = "pm-fluid-catalyst-cracker" },
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    max_health = 250,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    corpse = "pm-fluid-catalyst-cracker",
    crafting_categories = { "pm-cracking" },
    crafting_speed = 1,
    module_slots = 2,
    allowed_effects = PM.all_effects(),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 2,
    circuit_connector = circuit_connector_definitions["catalyst-cracker"],
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",

    },
    energy_usage = "175kW",
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/fluid-cracker/fluid-cracker.png",
          width = 271,
          height = 292,
          shift = util.by_pixel(1, -9),
          scale = 0.5,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/fluid-cracker/fluid-cracker-shadow.png",
          width = 292,
          height = 271,
          shift = util.by_pixel(1, -9),
          draw_as_shadow = true,
          scale = 0.5
        },
      }
    },
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-1, -1}}
        }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {1, -1}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {-1, 1}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {1, 1}}
        }
      }
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-evaporator",
    icon = "__periodic-madness__/graphics/icons/buildings/evaporator.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-evaporator" },
    max_health = 125,
    corpse = "pm-evaporator",
    dying_explosion = "assembling-machine-1-explosion",
    forced_symmetry = "horizontal",
    resistances =
    {
      {
        type = "fire",
        percent = 40
      }
    },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["evaporator"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/evaporator/evaporator.png",
          priority = "high",
          width = 214,
          height = 226,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/evaporator/evaporator-shadow.png",
          priority = "high",
          width = 214,
          height = 226,
          draw_as_shadow = true,
          shift = util.by_pixel(26, 5.5),
          scale = 0.5
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
      },
    },
    crafting_categories = {"pm-evaporation"},
    crafting_speed = 0.75,
    energy_usage = "1kW",
    energy_source = {type = "void"},
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-molten-inator",
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-molten-inator" },
    max_health = 300,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    allowed_effects = PM.all_effects(),
    map_color = {r = 0.659, g = 0.106, b = 0.106},
    fast_replaceable_group = "pm-molteninator",
    next_upgrade = "pm-molten-inator-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["-inator"],
    forced_symmetry = "horizontal",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
    crafting_categories = { "pm-moltening" },
    energy_usage = "320kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 10},
      drain = "13kW"
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator/molteninator.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.3,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator/molteninator-shadow.png",
          priority = "high",
          width = 174,
          height = 171,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, 5),
          scale = 0.5
        }
      }
    }
  },
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 2000,
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
    },
    {

      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 2000,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
    },
  },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-cold-inator",
    icon = "__periodic-madness__/graphics/icons/buildings/cold-inator.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-cold-inator" },
    max_health = 300,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    allowed_effects = PM.all_effects(),
    map_color = {r = 0.106, g = 0.647, b = 0.659},
    fast_replaceable_group = "pm-coldinator",
    next_upgrade = "pm-cold-inator-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["-inator"],
    forced_symmetry = "horizontal",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/coldinator/coldinator.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.3,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator/molteninator-shadow.png",
          priority = "high",
          width = 174,
          height = 171,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, 5),
          scale = 0.5
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 1000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
      },
    },
    collision_box = {{-0.9, -0.9 }, { 0.9, 0.9 }},
    selection_box = {{-1.1, -1.1 }, { 1.1, 1.1 }},
    crafting_categories = {"pm-coldening"},
    energy_usage = "1kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      fluid_usage_per_tick = 1 / 60,
      emissions_per_minute = {pollution = 2},
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "water",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {0.5, -0.5}}},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-molten-inator-2",
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.6, result = "pm-molten-inator-2" },
    max_health = 600,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    allowed_effects = PM.all_effects(),
    map_color = {r = 0.659, g = 0.106, b = 0.106},
    fast_replaceable_group = "pm-molteninator",
    next_upgrade = "pm-molten-inator-3",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["-inator"],
    module_slots = 1,
    forced_symmetry = "horizontal",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
    crafting_categories = { "pm-moltening" },
    energy_usage = "442kW",
    crafting_speed = 1.4 + 0.1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 8},
      drain = "14kW"
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator-2/molteninator-2.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.3,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator-2/molteninator-2-shadow.png",
          priority = "high",
          width = 174,
          height = 171,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, 5),
          scale = 0.5
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 2000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 2000,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-cold-inator-2",
    icon = "__periodic-madness__/graphics/icons/buildings/cold-inator-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.6, result = "pm-cold-inator-2" },
    max_health = 600,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    allowed_effects = PM.all_effects(),
    map_color = {r = 0.106, g = 0.647, b = 0.659},
    module_slots = 1,
    fast_replaceable_group = "pm-coldinator",
    next_upgrade = "pm-cold-inator-3",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["-inator"],
    forced_symmetry = "horizontal",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/coldinator-2/coldinator-2.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.3,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/molteninator/molteninator-shadow.png",
          priority = "high",
          width = 174,
          height = 171,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, 5),
          scale = 0.5
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 2000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
      },
    },
    collision_box = {{-0.9, -0.9 }, { 0.9, 0.9 }},
    selection_box = {{-1.1, -1.1 }, { 1.1, 1.1 }},
    crafting_categories = {"pm-coldening"},
    energy_usage = "1kW",
    crafting_speed = 1.5,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      fluid_usage_per_tick = 0.5 / 60,
      emissions_per_minute = {pollution = 1},
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        filter = "pm-coolant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {0.5, -0.5}}},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-circuit-megassembler",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/circuit-megassembler.png",
    minable = { mining_time = 0.7, result = "pm-circuit-megassembler" },
    max_health = 1150,
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    corpse = "pm-circuit-megassembler",
    dying_explosion = "assembling-machine-1-explosion",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    crafting_categories = {"pm-circuitry"},
    module_slots = 4,
    allowed_effects = PM.all_effects(),
    crafting_speed = 2.5,
    allowed_module_categories = {"pm-circuit-megassembler-module"},
    tile_buildability_rules = pm_placable_on_both_concrete,
    custom_tooltip_fields = 
    {
      {
        name = {"pm-tooltips.placeable-on"},
        value = {"pm-tooltips.concrete-refined-concrete"}
      }
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["circuit-megassembler"],
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      fluid_usage_per_tick = 2 / 60,
      emissions_per_minute = {pollution = 2},
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        filter = "pm-heavy-lubricant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {0, -3}}},
      },
      --TODO: ask factorio server why you cant have multiple fluid boxes for this.
    },
    vector_to_place_result = {0, 3.55},
    energy_usage = "500kW",
    perceived_performance = {minimum = 1, maximum = 4.5},
    graphics_set =
    {
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-north.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        south =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-south.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        east =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-east.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-west.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
      },
      idle_animation = 
      {
        north =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-north-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        south =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-south-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        east =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-east-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-west-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
      },
      working_visualisations =
      {
        {
          apply_recipe_tint = "primary",
          north_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          north_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          }
        }
      },
    }
}--[[@as data.AssemblingMachinePrototype]],
  {
    type = "lab",
    name = "pm-science-center",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/science-center.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-science-center" },
    collision_box = { { -2.9, -2.9 }, { 2.9, 2.9 } },
    selection_box = { { -3, -3 }, { 3, 3 } },
    module_slots = 4,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "360kW",
    researching_speed = 1.5,
    allowed_module_categories = {"speed", "productivity", "efficiency"},
    inputs = pm_lab_inputs,
    icons_positioning =
    {
      {inventory_index = defines.inventory.lab_modules, shift = {0, 1}},
      {inventory_index = defines.inventory.lab_input, shift = {0, 0.0}, max_icons_per_row = 6, separation_multiplier = 0.9}
    },
    on_animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/science-center/science-center.png",
          width = 320,
          height = 320,
          frame_count = 54,
          line_length = 7,
          animation_speed = 0.2,
          scale = 0.625,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/science-center/science-center-shadow.png",
          width = 320,
          height = 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 54,
          draw_as_shadow = true,
          shift = util.by_pixel(10, 0),
          scale = 0.625,
        },
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/science-center/science-center-off.png",
          width = 320,
          height = 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 54,
          scale = 0.625,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/science-center/science-center-shadow.png",
          width = 320,
          height = 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 54,
          shift = util.by_pixel(10, 0),
          draw_as_shadow = true,
          scale = 0.5,
        }
      }
    }
  }--[[@as data.LabPrototype]],
  {
    type = "furnace",
    name = "pm-voltatic-charger",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/voltatic-charger.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.25, result = "pm-voltatic-charger" },
    max_health = 250,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    energy_source =
    {
      type = "electric",
      usage_priority = "tertiary",
      drain = "0kW"
    },
    energy_usage = "1MW",
    result_inventory_size = 2,
    source_inventory_size = 1,
    crafting_speed = 1,
    crafting_categories = { "pm-voltatic-charging" },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/voltatic-charger/voltatic-charger.png",
            width = 171,
            height = 174,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.25,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/voltatic-charger/voltatic-charger-shadow.png",
            width = 171,
            height = 174,
            frame_count = 1,
            line_length = 1,
            repeat_count = 30,
            animation_speed = 0.5,
            shift = util.by_pixel(20, 12),
            scale = 0.5,
            draw_as_shadow = true,
          },
        }
      }
    }
  }--[[@as data.FurnacePrototype]],
  {
    type = "burner-generator",
    name = "pm-voltatic-discharger",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/voltatic-discharger.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.25, result = "pm-voltatic-discharger" },
    max_health = 250,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    burner =
    {
      type = "burner",
      fuel_categories = {"pm-voltatic-piles"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    energy_source =
    {
      type = "electric",
      fuel_categories = {"pm-voltatic-piles"},
      usage_priority = "secondary-output",
      effectivity = 1,
    },
    max_power_output = "1MW",
    usage_priority = "secondary-output",
    animation = 
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/voltatic-discharger/voltatic-discharger.png",
          width = 171,
          height = 174,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.25,
          scale = 0.5,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/voltatic-charger/voltatic-charger-shadow.png",
          width = 171,
          height = 174,
          frame_count = 1,
          line_length = 1,
          repeat_count = 30,
          shift = util.by_pixel(20, 12),
          scale = 0.5,
          draw_as_shadow = true,
        },
      }
  }
  }--[[@as data.BurnerGeneratorPrototype]],
  {
    type = "furnace",
    name = "pm-CO2-nullifer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/CO2-nullifer.png",
    minable = { mining_time = 0.4 + 0.1, result = "pm-CO2-nullifer"},
    flags = { "placeable-neutral", "placeable-player", "player-creation"},
    max_health = 500,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    crafting_speed = 1,
    crafting_categories = {"pm-CO2-nullifying"},
    source_inventory_size = 1,
    result_inventory_size = 1,
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = {{flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        filter = "water",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
      },
    },
    energy_usage = "400kW",
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/CO2-nullifer/CO2-nullifer.png",
          priority = "high",
          width = 214,
          height = 226,
          shift = util.by_pixel(0, -6),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/CO2-nullifer/CO2-nullifer-shadow.png",
          priority = "high",
          width = 190,
          height = 165,
          draw_as_shadow = true,
          shift = util.by_pixel(20, 6),
          scale = 0.5
        }
      }
    }
  }
  }--[[@as data.FurnacePrototype]],
  {
    type = "assembling-machine",
    name = "pm-vacuum-former-2",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/vacuum-former-2.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation", },
    minable = { mining_time = 0.6, result = "pm-vacuum-former-2" },
    max_health = 420,
    corpse = "pm-vacuum-former-2",
    dying_explosion = "assembling-machine-1-explosion",
    fast_replaceable_group = "pm-vacuum-former",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
    },
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fluid_boxes =
    {
      {
        volume = 2000,
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          {flow_direction = "input", direction = defines.direction.south--[[@as int]], position = {0, 1}}
        }
      }
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/vacuum-former-2/vacuum-former.png",
          priority = "high",
          width = 256,
          height = 256,
          frame_count = 60,
          line_length = 8,
          scale = 0.75 / 2
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/vacuum-former-2/vacuum-former-shadow.png",
          priority = "high",
          width = 256,
          height = 256,
          frame_count = 60,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(14, 0),
          scale = 0.75 / 2
        }
      }
    }
  },
    crafting_categories = { "pm-molding", "pm-advanced-molding" },
    crafting_speed = 1,
    energy_usage = "320kW",
    module_slots = 2,
    allowed_effects = PM.all_effects(),
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "pm-argon-gas",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = { 0, -1 } } },
      },
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.6
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "furnace",
    name = "pm-air-filterer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/air-filterer.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation", },
    minable = { mining_time = 0.5, result = "pm-air-filterer" },
    max_health = 270 + 4 + 1,
    corpse = "pm-air-filterer",
    dying_explosion = "steel-furnace-explosion",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["air-filterer"],
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    module_slots = 2,
    allowed_effects = PM.all_effects_but("quality", "productivity"),
    source_inventory_size = 1,
    result_inventory_size = 1,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    crafting_categories = { "pm-air-filtering" },
    energy_usage = "1kW",
    crafting_speed = 1,
    allowed_module_categories = {"speed", "productivity", "efficiency"},
    energy_source = 
    {
      type = "void", 
      emissions_per_minute = {pollution = -50}
    },
    graphics_set = 
    {
    status_colors = pm_diode_status_colors(),
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/air-filterer/air-filterer.png",
          priority = "high",
          width = 128,
          height = 128,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.66,
          scale = 0.5,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/air-filterer/air-filterer-shadow.png",
          priority = "high",
          width = 128,
          height = 128,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(40, 0),
          scale = 0.5
        }
      }
    },
    working_visualisations =
    {
        {
            apply_tint = "status",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/air-filterer/air-filterer-diode.png",
              width = 128,
              height = 128,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
        }
    }
  }
  }--[[@as data.FurnacePrototype]],
  {
    type = "assembling-machine",
    name = "pm-washing-plant-2",
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-washing-plant-2" },
    max_health = 600,
    corpse = "pm-washing-plant-2",
    dying_explosion = "assembling-machine-1-explosion",
    fast_replaceable_group = "pm-washers",
    resistances =
    {
      {
        type = "impact",
        percent = 40
      }
    },
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-2/washing-plant.png",
          priority = "high",
          width = 214,
          height = 226,
          shift = util.by_pixel(0, -4),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-1/washing-plant-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          draw_as_shadow = true,
          shift = util.by_pixel(40 - 10, -4),
          scale = 0.5
        }
      }
    }
  },
    crafting_categories = { "pm-washing" },
    crafting_speed = 1,
    energy_usage = "240kW",
    allowed_effects = PM.all_effects(),
    module_slots = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.6
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],

  {
    type = "assembling-machine",
    name = "pm-greenhouse",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/greenhouse.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4 + 0.1, result = "pm-greenhouse" },
    max_health = 400,
    corpse = "pm-greenhouse",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    crafting_categories = { "pm-greenhousing" },
    allowed_effects = PM.all_effects(),
    crafting_speed = 1,
    energy_usage = "650kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 0},
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 2,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/greenhouse/greenhouse.png",
          width = 320,
          height = 316,
          scale = 0.6,
          shift = util.by_pixel(4.4 + 0.1, -20),
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/greenhouse/greenhouse-shadow.png",
          width = 316,
          height = 320,
          scale = 0.5,
          shift = util.by_pixel(60, 0),
          draw_as_shadow = true,
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0, 2} }},
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -2} }},
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-2, 0} }},
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 0} }},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-factorian-bacteria-greenhouse",
    icon_size = 160,
    icon = "__periodic-madness__/graphics/icons/buildings/factorian-bacteria-greenhouse.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.6, result = "pm-factorian-bacteria-greenhouse" },
    max_health = 450,
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    corpse = "pm-factorian-bacteria-greenhouse",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-bacteria-incubating" },
    crafting_speed = 1.25,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        filter = "pm-agar-solution",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east--[[@as int]], position = {2, 0}}},
      },
    },
    energy_usage = "500kW",
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/factorian-bacteria-greenhouse/factorian-bacteria-greenhouse.png",
            width = 320,
            height = 320,
            scale = 0.55,
          },
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/factorian-bacteria-greenhouse/factorian-bacteria-greenhouse-shadow.png",
            priority = "high",
            width = 320,
            height = 320,
            draw_as_shadow = true,
            shift = util.by_pixel(46, 5),
            scale = 0.6
          }
        }
      },
    },
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {1, -2}}},
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-1, -2}}},
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "input", direction = defines.direction.south--[[@as int]], position = {1, 2}}},
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "input", direction = defines.direction.south--[[@as int]], position = {-1, 2}}},
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "output", direction = defines.direction.west--[[@as int]], position = {-2, 2}}},
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "output", direction = defines.direction.west--[[@as int]], position = {-2, 0}}},
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          volume = 100,
          pipe_connections = {{flow_direction = "output", direction = defines.direction.west--[[@as int]], position = {-2, -2}}},
        },
      }
  }--[[@as data.FurnacePrototype]],
  {
    type = "lab",
    name = "pm-bio-lab",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/bio-lab.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4 + 0.1, result = "pm-bio-lab" },
    max_health = 620,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    allowed_effects = PM.all_effects(),
    module_slots = 2,
    icons_positioning =
    {
      {inventory_index = defines.inventory.lab_modules, shift = {0, 0.85}},
      {inventory_index = defines.inventory.lab_input, shift = {0, 0.0}, max_icons_per_row = 3, separation_multiplier = 0.9}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "720kW",
    researching_speed = 2,
    inputs = { "pm-agility-bio-module", "pm-health-bio-module", "pm-strength-bio-module" },
    on_animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-lab/bio-lab.png",
          priority = "high",
          width = 214,
          height = 226,
          frame_count = 30,
          line_length = 6,
          shift = util.by_pixel(0, -12),
          animation_speed = 0.4,
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-lab/bio-lab-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          frame_count = 30,
          line_length = 4 + 1,
          draw_as_shadow = true,
          shift = util.by_pixel(40 - 5, 5),
          animation_speed = 0.4,
          scale = 0.45
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-lab/bio-lab-off.png",
          priority = "high",
          width = 214,
          height = 226,
          frame_count = 1,
          line_length = 1,
          repeat_count = 30,
          shift = util.by_pixel(0, -12),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-lab/bio-lab-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          frame_count = 30,
          line_length = 4 + 1,
          draw_as_shadow = true,
          shift = util.by_pixel(40 - 5, 5),
          scale = 0.45
        }
      }
    },
  }--[[@as data.LabPrototype]],
  {
    type = "container",
    name = "pm-stainless-steel-chest",
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-chest.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-stainless-steel-chest" },
    max_health = 600,
    corpse = "steel-chest-remnants",
    dying_explosion = "steel-chest-explosion",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.43 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.43 },
    icon_draw_specification = {scale = 0.7},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 80
      }
    },
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fast_replaceable_group = "container",
    inventory_size = 64,
    picture =
    {
      layers =
      {
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/stainless-steel-chest/stainless-steel-chest.png",
          priority = "extra-high",
          width = 64,
          height = 80,
          shift = util.by_pixel(-0.25, -0.5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/steel-chest/steel-chest-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 46,
          shift = util.by_pixel(12.25, 8),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    circuit_connector = circuit_connector_definitions["chest"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }--[[@as data.ContainerPrototype]],

  {
    type = "assembling-machine",
    name = "pm-electrolysis-plant",
    icon = "__periodic-madness__/graphics/icons/buildings/electrolysis-plant.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-electrolysis-plant" },
    max_health = 350,
    corpse = "pm-electrolysis-plant",
    dying_explosion = "assembling-machine-1-explosion",
    resistances =
    {
      {
        type = "impact",
        percent = 40
      }
    },
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    allowed_effects = PM.all_effects(),
    module_slots = 2,
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/electrolysis-plant/electrolysis-plant.png",
          priority = "high",
          width = 214,
          height = 226,
          frame_count = 24,
          line_length = 6,
          animation_speed = 0.6,
          shift = util.by_pixel(0, -4),
          scale = 0.5
        },
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/electrolysis-plant/electrolysis-plant-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          line_length = 1,
          frame_count = 1,
          repeat_count = 24,
          draw_as_shadow = true,
          shift = util.by_pixel(16, -4),
          scale = 0.5
        }
      }
    }
    },
    crafting_categories = { "pm-electrolysis" },
    crafting_speed = 1,
    energy_usage = "165kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 3},
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.6
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-crystallizer",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/crystallizer.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4 + 0.1, result = "pm-crystallizer" },
    max_health = 650,
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    corpse = "pm-crystallizer",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-crystallisation" },
    module_slots = 4,
    allowed_effects = PM.all_effects(),
    crafting_speed = 1,
    energy_usage = "200kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 1.5,
    circuit_connector = circuit_connector_definitions["crystallizer"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crystallizer/crystallizer.png",
          width = 320,
          height = 320,
          scale = 0.5,
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/crystallizer/crystallizer-shadow.png",
          width = 320,
          height = 320,
          scale = 0.5,
          shift = util.by_pixel(30, -3),
          draw_as_shadow = true,
        }
      }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections =
        {
          { flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = { 2, 0 }}, --correct
          { flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = { -2, 0 }} --correct
        },
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = 
        {
          { flow_direction = "input-output", direction = defines.direction.south--[[@as int]], position = { 0, 2 }}, --correct
          { flow_direction = "input-output", direction = defines.direction.north--[[@as int]], position = { 0, -2 }} --correct
        },
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections =
        {
          { flow_direction = "input", direction = defines.direction.west--[[@as int]], position = { -2, 1 }} --correct
        },
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = 
        {
          { flow_direction = "input", direction = defines.direction.west--[[@as int]], position = { -2, -1 }} --correct
        },
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = 
        {
          { flow_direction = "output", direction = defines.direction.east--[[@as int]], position = { 2, 1 }} --correct
        },
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 250,
        pipe_connections = 
        {
          { flow_direction = "output", direction = defines.direction.east--[[@as int]], position = { 2, -1 }} --correct
        },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1.5},
    }

  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "solar-panel",
    name = "pm-solar-panel-2",
    icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "pm-solar-panel-2" },
    max_health = 400 + 1,
    corpse = "pm-solar-panel-2-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "solar-panel",
    map_color = {r = 0.341, g = 0.353, b = 0.63},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/solar-panel-2/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-3, 3.5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
          priority = "high",
          width = 220,
          height = 180,
          shift = util.by_pixel(9.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    overlay =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
          priority = "high",
          width = 214,
          height = 180,
          shift = util.by_pixel(10.5, 6),
          scale = 0.5
        }
      }
    },
    production = "240kW"
  }--[[@as data.SolarPanelPrototype]],
  {
    type = "assembling-machine",
    name = "pm-cyclotron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/cyclotron.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.6, result = "pm-cyclotron" },
    max_health = 800,
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    corpse = "pm-cyclotron",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-cyclotroning" },
    module_slots = 2,
    allowed_effects = PM.all_effects(),
    crafting_speed = 1,
    energy_usage = "800kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["cyclotron"],
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cyclotron/cyclotron.png",
            width = 448,
            height = 448,
            line_length = 6,
            frame_count = 24,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cyclotron/cyclotron-shadow.png",
            width = 448,
            height = 448,
            line_length = 1,
            frame_count = 1,
            repeat_count = 24,
            scale = 0.5,
            shift = util.by_pixel(40, 12),
            draw_as_shadow = true,
          }
        }
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0, 3}}},
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -3}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-3, 0}}},
      },
    },
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      fluid_usage_per_tick = 2 / 60, -- 5 fluid per tick my left ass
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "pm-proton-beam",
        pipe_connections = {{ flow_direction="input", direction = defines.direction.east--[[@as int]], position = {3, 0}}},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "furnace",
    name = "pm-burn-inator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/burninator.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-burn-inator" },
    max_health = 0.4,
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    corpse = "pm-burn-inator",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-burnining" },
    source_inventory_size = 0,
    result_inventory_size = 1,
    module_slots = 2,
    allowed_effects = PM.effects("speed", "consumption"),
    allowed_module_categories = {"speed", "efficiency"},
    crafting_speed = 0.5,
    energy_usage = "800kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["burn-inator"],
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 30},
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/burninator/burninator.png",
            width = 114 * 2,
            height = 138 * 2,
            line_length = 6,
            frame_count = 24,
            shift = util.by_pixel(0, -25),
            scale = 0.5
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/burninator/burninator-shadow.png",
            width = 135 * 2,
            height = 114 * 2,
            line_length = 1,
            frame_count = 1,
            repeat_count = 24,
            scale = 0.5,
            shift = util.by_pixel(32, 0),
            draw_as_shadow = true,
          }
        }
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = 
        {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  }--[[@as data.FurnacePrototype]],
  {
    type = "assembling-machine",
    name = "pm-francium-ultracool-centrifugal-kabbalism",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/FUCK.png",
    minable = { mining_time = 0.9, result = "pm-francium-ultracool-centrifugal-kabbalism" },
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    max_health = 1000,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    crafting_speed = 1,
    crafting_categories = { "pm-franciuming" },
    module_slots = 6,
    allowed_effects = PM.all_effects(),
    energy_usage = "1.17MW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 4},
    },
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/FUCK/FUCK.png",
          width = 320,
          height = 320,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/FUCK/FUCK-shadow.png",
          width = 320,
          height = 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(20, 0),
          scale = 0.5
        }
      }
    }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0, 2}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 0}}},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-evaporator-2",
    icon = "__periodic-madness__/graphics/icons/buildings/evaporator-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-evaporator-2" },
    max_health = 400,
    corpse = "pm-evaporator-2",
    dying_explosion = "assembling-machine-1-explosion",
    allowed_effects = PM.all_effects(),
    module_slots = 2,
    forced_symmetry = "horizontal",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["evaporator"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/evaporator-2/evaporator-2.png",
          priority = "high",
          width = 214,
          height = 226,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/evaporator/evaporator-shadow.png",
          priority = "high",
          width = 214,
          height = 226,
          draw_as_shadow = true,
          shift = util.by_pixel(26, 5.5),
          scale = 0.5
        }
      }
    }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
      },
    },
    crafting_categories = {"pm-evaporation"},
    crafting_speed = 1.25,
    energy_usage = "200kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 0.25},
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-leaching-field",
    icon = "__periodic-madness__/graphics/icons/buildings/leaching-field.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.9, result = "pm-leaching-field" },
    map_color = { 0.5, 0, 1 },
    max_health = 800,
    corpse = "pm-leaching-field",
    dying_explosion = "assembling-machine-1-explosion",
    energy_usage = "1kW",
    energy_source = { type = "void" },
    crafting_speed = 2,
    crafting_categories = { "pm-leaching" },
    emissions_per_minute = {pollution = 10},
    collision_box = { { -2.9, -2.9 }, { 2.9, 2.9 } },
    selection_box = { { -3, -3 }, { 3, 3 } },
    allowed_effects = PM.all_effects(),
    module_slots = 2,
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/lithium-field/lithium-field.png",
          priority = "high",
          width = 64 * 6,
          height = 64 * 6,
          shift = util.by_pixel(0, 0),
          scale = 0.5
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/lithium-field/lithium-field-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          width = 64 * 6,
          height = 64 * 6,
          shift = util.by_pixel(12, 0),
          scale = 0.5
        }
      }
    }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east--[[@as int]], position = {2.5, -0.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.east--[[@as int]], position = {2.5, 0.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.west--[[@as int]], position = {-2.5, -0.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.west--[[@as int]], position = {-2.5, 0.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -2.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0.5, -2.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.south--[[@as int]], position = {-0.5, 2.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 2.5}}},
      },
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "assembling-machine",
    name = "pm-electrolysis-plant-2",
    icon = "__periodic-madness__/graphics/icons/buildings/electrolysis-plant-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "pm-electrolysis-plant-2" },
    max_health = 700,
    corpse = "pm-electrolysis-plant-2",
    dying_explosion = "assembling-machine-1-explosion",
    resistances =
    {
      {
        type = "impact",
        percent = 80
      }
    },
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    alert_icon_shift = util.by_pixel(-3, -12),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    allowed_effects = PM.all_effects(),
    module_slots = 4,
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/electrolysis-plant-2/electrolysis-plant.png",
          priority = "high",
          width = 214,
          height = 226,
          frame_count = 24,
          line_length = 6,
          animation_speed = 0.7,
          shift = util.by_pixel(0, -4),
          scale = 0.5
        },
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/electrolysis-plant/electrolysis-plant-shadow.png",
          priority = "high",
          width = 226,
          height = 214,
          line_length = 1,
          frame_count = 1,
          repeat_count = 24,
          draw_as_shadow = true,
          shift = util.by_pixel(16, -4),
          scale = 0.5
        }
      }
    }
    },
    crafting_categories = { "pm-electrolysis" },
    crafting_speed = 2.5,
    energy_usage = "435kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2.5},
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.6
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "furnace",
    name = "pm-battery-charger",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/battery-charger.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-battery-charger" },
    max_health = 550,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0kW"
    },
    energy_usage = "10MW",
    result_inventory_size = 2,
    source_inventory_size = 1,
    crafting_speed = 1,
    crafting_categories = { "pm-battery-charging" },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/battery-charger/battery-charger.png",
            width = 171,
            height = 257,
            frame_count = 12,
            line_length = 4,
            animation_speed = 0.25,
            shift = util.by_pixel(0, -30),
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/battery-charger/battery-charger-shadow.png",
            width = 257,
            height = 171,
            frame_count = 1,
            line_length = 1,
            repeat_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(40, -12),
            scale = 0.5,
            draw_as_shadow = true,
          },
        }
      }
    }
  }--[[@as data.FurnacePrototype]],
  {
    type = "burner-generator",
    name = "pm-battery-discharger",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/battery-discharger.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-battery-discharger" },
    max_health = 550,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    burner =
    {
      type = "burner",
      fuel_categories = {"pm-charged-batteries"},
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      effectivity = 0.8,
    },
    energy_source =
    {
      type = "electric",
      fuel_categories = {"pm-charged-batteries"},
      usage_priority = "secondary-output",
      
    },
    max_power_output = "10MW",
    usage_priority = "secondary-output",
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/battery-discharger/battery-discharger.png",
            width = 171,
            height = 257,
            frame_count = 12,
            line_length = 4,
            animation_speed = 0.25,
            shift = util.by_pixel(0, -30),
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/battery-charger/battery-charger-shadow.png",
            width = 257,
            height = 171,
            frame_count = 1,
            line_length = 1,
            repeat_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(40, -12),
            scale = 0.5,
            draw_as_shadow = true,
          },
        }
      }
  }--[[@as data.BurnerGeneratorPrototype]],
  {
    type = "assembling-machine",
    name = "pm-chemical-plant-2",
    icon = "__periodic-madness__/graphics/icons/buildings/chemical-plant-2.png",
    icon_size = 64,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.375, result = "pm-chemical-plant-2"},
    max_health = 650,
    corpse = "chemical-plant-remnants",
    dying_explosion = "chemical-plant-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    fast_replaceable_group = "pm-chemical-plant",
    module_slots = 4,
    allowed_effects = PM.all_effects(),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["chemical-plant"],
    graphics_set = 
    {
    animation = make_4way_animation_from_spritesheet({
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/chemical-plant-2/chemical-plant-2.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(0.5, -9),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    })--[[@as data.Animation4Way]],
    working_visualisations =
    {
      {
        apply_recipe_tint = "primary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
          frame_count = 24,
          line_length = 6,
          width = 66,
          height = 44,
          shift = util.by_pixel(23, 15),
          scale = 0.5
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
          frame_count = 24,
          line_length = 6,
          width = 70,
          height = 36,
          shift = util.by_pixel(0, 22),
          scale = 0.5
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
          frame_count = 24,
          line_length = 6,
          width = 66,
          height = 42,
          shift = util.by_pixel(0, 17),
          scale = 0.5
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
          frame_count = 24,
          line_length = 6,
          width = 74,
          height = 36,
          shift = util.by_pixel(-10, 13),
          scale = 0.5
        }
      },
      {
        apply_recipe_tint = "secondary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
          frame_count = 24,
          line_length = 6,
          width = 62,
          height = 42,
          shift = util.by_pixel(24, 15),
          scale = 0.5
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
          frame_count = 24,
          line_length = 6,
          width = 68,
          height = 36,
          shift = util.by_pixel(0, 22),
          scale = 0.5
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
          frame_count = 24,
          line_length = 6,
          width = 60,
          height = 40,
          shift = util.by_pixel(1, 17),
          scale = 0.5
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
          frame_count = 24,
          line_length = 6,
          width = 68,
          height = 28,
          shift = util.by_pixel(-9, 15),
          scale = 0.5
        }
      },
      {
        apply_recipe_tint = "tertiary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        render_layer = "wires",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 90,
          height = 188,
          animation_speed = 0.5,
          shift = util.by_pixel(-2, -40),
          scale = 0.5
        }
      },
      {
        apply_recipe_tint = "quaternary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        render_layer = "wires",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
          frame_count = 47,
          line_length = 16,
          width = 40,
          height = 84,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -14),
          scale = 0.5
        }
      }
    },
  },
    impact_category = "metal-large",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5
        }
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 3}
    },
    energy_usage = "350kW",
    crafting_categories = {"chemistry"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.north--[[@as int]],
            position = {-1, -1}
          }
        }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.north--[[@as int]],
            position = {1, -1}
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.south--[[@as int]],
            position = {-1, 1}
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.south--[[@as int]],
            position = {1, 1}
          }
        }
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 36,
        shift = util.by_pixel(5, 60),
        variation_count = 4,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = true
    }
  }--[[@as data.AssemblingMachinePrototype]],
  {
    type = "furnace",
    name = "pm-heat-furnace",
    icon = "__periodic-madness__/graphics/icons/buildings/heat-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = "pm-heat-furnace"},
    fast_replaceable_group = "furnace",
    max_health = 450,
    corpse = "electric-furnace-remnants",
    dying_explosion = "electric-furnace-explosion",
    resistances =
    {
      {
        type = "fire",
        decrease = 2,
        percent = 95
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    module_slots = 8,
    icon_draw_specification = {shift = {0, -0.1}},
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 1.1}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 4, scale = 0.42}
    },
    allowed_effects = PM.all_effects(),
    allowed_module_categories = {"pm-heating-coils"},
    crafting_categories = {"smelting"},
    effect_receiver = {base_effect = {productivity = 0.05}},
    result_inventory_size = 2,
    crafting_speed = 1,
    energy_usage = "200kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "heat",
      default_temperature = 15,
      max_temperature = 1500,
      min_working_temperature = 750,
      specific_heat = "1MJ",
      max_transfer = "10MJ",
      connections =
      {
        {
          position = {0, 1},
          direction = defines.direction.south--[[@as int]] --[[@as int]]
        },
        {
          position = {0, -1},
          direction = defines.direction.north--[[@as int]] --[[@as int]]
        },
        {
          position = {1, 0},
          direction = defines.direction.east--[[@as int]] --[[@as int]]
        },
        {
          position = {-1, 0},
          direction = defines.direction.west--[[@as int]] --[[@as int]]
        },
      },
    },
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.85,
        modifiers = volume_multiplier("main-menu", 4.2),
        advanced_volume_control = {attenuation = "exponential"}
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/heat-furnace/heat-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          animation =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                priority = "high",
                width = 60,
                height = 56,
                frame_count = 12,
                animation_speed = 0.5,
                draw_as_glow = true,
                shift = util.by_pixel(1.75, 32.75),
                scale = 0.5
              },
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                draw_as_glow = true,
                shift = util.by_pixel(1, 0),
                scale = 0.5,
              },
            }
          },
        },
        {
          fadeout = true,
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
            blend_mode = "additive",
            width = 166,
            height = 124,
            draw_as_light = true,
            shift = util.by_pixel(3, 69),
            scale = 0.5,
          },
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5
          }
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5
          }
        }
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 5
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  }--[[@as data.FurnacePrototype]],
  {
    type = "furnace",
    name = "pm-electric-furnace-2",
    icon = "__periodic-madness__/graphics/icons/buildings/electric-furnace-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = "pm-electric-furnace-2"},
    fast_replaceable_group = "furnace",
    max_health = 400,
    corpse = "electric-furnace-remnants",
    dying_explosion = "electric-furnace-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        decrease = 3,
        percent = 35
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    module_slots = 10,
    icon_draw_specification = {shift = {0, -0.1}},
    icons_positioning =
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 1}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 5, scale = 0.42}
    },
    allowed_effects = PM.all_effects(),
    allowed_module_categories = {"pm-heating-coils"},
    crafting_categories = {"smelting"},
    result_inventory_size = 2,
    crafting_speed = 1.25,
    energy_usage = "180kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 0.5},
      drain = "20kW",
    },
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.85,
        modifiers = volume_multiplier("main-menu", 4.2),
        advanced_volume_control = {attenuation = "exponential"}
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-furnace-2/electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          animation =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                priority = "high",
                width = 60,
                height = 56,
                frame_count = 12,
                animation_speed = 0.5,
                draw_as_glow = true,
                shift = util.by_pixel(1.75, 32.75),
                scale = 0.5
              },
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                draw_as_glow = true,
                shift = util.by_pixel(1, 0),
                scale = 0.5,
              },
            }
          },
        },
        {
          fadeout = true,
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
            blend_mode = "additive",
            width = 166,
            height = 124,
            draw_as_light = true,
            shift = util.by_pixel(3, 69),
            scale = 0.5,
          },
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5
          }
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5
          }
        }
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 5
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  }--[[@as data.FurnacePrototype]],
  { --MARK: Fluid Burner
    type = "reactor",
    name = "pm-fluid-burner",
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-fluid-burner" },
    max_health = 300,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    allowed_effects = PM.all_effects(),
    map_color = {r = 0.659, g = 0.106, b = 0.106},
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
    consumption = "500kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"pm-fuel-canisters"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = { 0, 0, 0 },
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    },
    heat_buffer =
    {
      max_temperature = 1500,
      specific_heat = "10MJ",
      max_transfer = "500MW",
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = {0, -1},
          direction = defines.direction.north--[[@as int]] --[[@as int]]
        },
        {
          position = { 0, -1 },
          direction = defines.direction.south--[[@as int]] --[[@as int]]
        },
        {
          position = { -1, 0 },
          direction = defines.direction.west--[[@as int]] --[[@as int]]
        },
        {
          position = { 1, 0 },
          direction = defines.direction.east--[[@as int]] --[[@as int]]
        },
      },
			picture =
			{
				layers =
				{
					{
						filename = "__periodic-madness__/graphics/entities/buildings/fluid-burner/molteninator.png",
						priority = "high",
						width = 171,
						height = 174,
						scale = 0.5
					},
					{
						filename = "__periodic-madness__/graphics/entities/buildings/fluid-burner/molteninator-shadow.png",
						priority = "high",
						width = 174,
						height = 171,
						draw_as_shadow = true,
						shift = util.by_pixel(39.25, 5),
						scale = 0.5
					}
				}
			}
		}
	}--[[@as data.ReactorPrototype]],
{
  type = "wall",
  name = "pm-concrete-wall",
  icon = "__periodic-madness__/graphics/icons/buildings/concrete-wall.png",
  flags = {"placeable-neutral", "player-creation"},
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  damaged_trigger_effect = hit_effects.wall(),
  minable = {mining_time = 0.45, result = "pm-concrete-wall"},
  fast_replaceable_group = "wall",
  max_health = 550,
  repair_speed_modifier = 1.5,
  corpse = "pm-concrete-wall-remnants",
  dying_explosion = "wall-explosion",
  repair_sound = sounds.manual_repair,
  mined_sound = sounds.deconstruct_bricks(0.8),
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
  impact_category = "stone",
  hide_resistances = false,
  connected_gate_visualization =
  {
    filename = "__core__/graphics/arrows/underground-lines.png",
    priority = "high",
    width = 64,
    height = 64,
    scale = 0.5
  },
  resistances =
  {
    {
      type = "physical",
      decrease = 5,
      percent = 40
    },
    {
      type = "impact",
      decrease = 50,
      percent = 75
    },
    {
      type = "explosion",
      decrease = 30,
      percent = 30
    },
    {
      type = "fire",
      percent = 100
    },
    {
      type = "acid",
      percent = 90
    },
    {
      type = "laser",
      percent = 80
    }
  },
  visual_merge_group = 0, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
  pictures =
  {
    single =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-single.png",
          priority = "extra-high",
          width = 64,
          height = 86,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 60,
          repeat_count = 2,
          shift = util.by_pixel(10, 17),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    straight_vertical =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-vertical.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 5,
          line_length = 5,
          shift = util.by_pixel(0, 8),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 110,
          repeat_count = 5,
          shift = util.by_pixel(10, 29),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    straight_horizontal =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-horizontal.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 6,
          line_length = 6,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 6,
          shift = util.by_pixel(14, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    corner_right_down =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-corner-right.png",
          priority = "extra-high",
          width = 64,
          height = 128,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(17, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    corner_left_down =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-corner-left.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(9, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    t_up =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-t.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 4,
          line_length = 4,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 4,
          shift = util.by_pixel(14, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    ending_right =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-ending-right.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(17, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    ending_left =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-ending-left.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    filling =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-filling.png",
      priority = "extra-high",
      width = 48,
      height = 56,
      variation_count = 8,
      line_length = 8,
      shift = util.by_pixel(0, -1),
      scale = 0.5
    },
    water_connection_patch =
    {
      sheets =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/concrete-wall/wall-patch.png",
          priority = "extra-high",
          width = 116,
          height = 128,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
          priority = "extra-high",
          width = 144,
          height = 100,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    gate_connection_patch =
    {
      sheets =
      {
        {
          filename = "__base__/graphics/entity/wall/wall-gate.png",
          priority = "extra-high",
          width = 82,
          height = 108,
          shift = util.by_pixel(0, -7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
          priority = "extra-high",
          width = 130,
          height = 78,
          shift = util.by_pixel(14, 18),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  wall_diode_green =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/wall/wall-diode-green.png",
      priority = "extra-high",
      width = 72,
      height = 44,
      draw_as_glow = true,
      --frames = 4,
      shift = util.by_pixel(-1, -23),
      scale = 0.5
    }
  },
  wall_diode_green_light_top =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(0, -30),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_right =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(12, -23),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_bottom =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(0, -17),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_left =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(-12, -23),
    size = 1,
    intensity = 0.2
  },

  wall_diode_red =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/wall/wall-diode-red.png",
      priority = "extra-high",
      width = 72,
      height = 44,
      draw_as_glow = true,
      --frames = 4,
      shift = util.by_pixel(-1, -23),
      scale = 0.5
    }
  },
  wall_diode_red_light_top =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(0, -30),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_right =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(12, -23),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_bottom =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(0, -17),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_left =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(-12, -23),
    size = 1,
    intensity = 0.2
  },
  circuit_connector = circuit_connector_definitions["wall"],
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_output_signal = {type = "virtual", name = "signal-G"}
}--[[@as data.WallPrototype]],
{
  type = "wall",
  name = "pm-bio-wall",
  icon = "__periodic-madness__/graphics/icons/buildings/bio-wall.png",
  flags = {"placeable-neutral", "player-creation"},
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  damaged_trigger_effect = hit_effects.wall(),
  minable = {mining_time = 0.4, result = "pm-bio-wall"},
  fast_replaceable_group = "wall",
  max_health = 400,
  repair_speed_modifier = 2.5,
  corpse = "pm-bio-wall-remnants",
  dying_explosion = "wall-explosion",
  repair_sound = sounds.manual_repair,
  mined_sound = sounds.deconstruct_bricks(0.8),
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
  impact_category = "stone",
  healing_per_tick = 0.01,
  hide_resistances = false,
  connected_gate_visualization =
  {
    filename = "__core__/graphics/arrows/underground-lines.png",
    priority = "high",
    width = 64,
    height = 64,
    scale = 0.5
  },
  resistances =
  {
    {
      type = "physical",
      decrease = 3,
      percent = 20
    },
    {
      type = "impact",
      decrease = 30,
      percent = 50
    },
    {
      type = "explosion",
      decrease = 4,
      percent = 20
    },
    {
      type = "fire",
      decrease = -5,
      percent = 90
    },
    {
      type = "acid",
      decrease = 5,
      percent = 95
    },
    {
      type = "laser",
      percent = 70
    }
  },
  visual_merge_group = 0, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
  pictures =
  {
    single =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-single.png",
          priority = "extra-high",
          width = 64,
          height = 86,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 60,
          repeat_count = 2,
          shift = util.by_pixel(10, 17),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    straight_vertical =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-vertical.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 5,
          line_length = 5,
          shift = util.by_pixel(0, 8),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 110,
          repeat_count = 5,
          shift = util.by_pixel(10, 29),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    straight_horizontal =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-horizontal.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 6,
          line_length = 6,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 6,
          shift = util.by_pixel(14, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    corner_right_down =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-corner-right.png",
          priority = "extra-high",
          width = 64,
          height = 128,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(17, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    corner_left_down =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-corner-left.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(9, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    t_up =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-t.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 4,
          line_length = 4,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 4,
          shift = util.by_pixel(14, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    ending_right =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-ending-right.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(17, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    ending_left =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-ending-left.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    filling =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-filling.png",
      priority = "extra-high",
      width = 48,
      height = 56,
      variation_count = 8,
      line_length = 8,
      shift = util.by_pixel(0, -1),
      scale = 0.5
    },
    water_connection_patch =
    {
      sheets =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/bio-wall/wall-patch.png",
          priority = "extra-high",
          width = 116,
          height = 128,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
          priority = "extra-high",
          width = 144,
          height = 100,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    gate_connection_patch =
    {
      sheets =
      {
        {
          filename = "__base__/graphics/entity/wall/wall-gate.png",
          priority = "extra-high",
          width = 82,
          height = 108,
          shift = util.by_pixel(0, -7),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
          priority = "extra-high",
          width = 130,
          height = 78,
          shift = util.by_pixel(14, 18),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  wall_diode_green =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/wall/wall-diode-green.png",
      priority = "extra-high",
      width = 72,
      height = 44,
      draw_as_glow = true,
      --frames = 4,
      shift = util.by_pixel(-1, -23),
      scale = 0.5
    }
  },
  wall_diode_green_light_top =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(0, -30),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_right =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(12, -23),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_bottom =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(0, -17),
    size = 1,
    intensity = 0.2
  },
  wall_diode_green_light_left =
  {
    minimum_darkness = 0.3,
    color = {g=1},
    shift = util.by_pixel(-12, -23),
    size = 1,
    intensity = 0.2
  },

  wall_diode_red =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/wall/wall-diode-red.png",
      priority = "extra-high",
      width = 72,
      height = 44,
      draw_as_glow = true,
      --frames = 4,
      shift = util.by_pixel(-1, -23),
      scale = 0.5
    }
  },
  wall_diode_red_light_top =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(0, -30),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_right =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(12, -23),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_bottom =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(0, -17),
    size = 1,
    intensity = 0.2
  },
  wall_diode_red_light_left =
  {
    minimum_darkness = 0.3,
    color = {r=1},
    shift = util.by_pixel(-12, -23),
    size = 1,
    intensity = 0.2
  },
  circuit_connector = circuit_connector_definitions["wall"],
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_output_signal = {type = "virtual", name = "signal-G"}
}--[[@as data.WallPrototype]],
{ --MARK: RTG
  type = "burner-generator",
  name = "pm-RTG",
  icon = "__periodic-madness__/graphics/icons/buildings/RTG.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.7, result = "pm-RTG" },
  max_health = 1200,
  corpse = "nuclear-reactor-remnants",
  dying_explosion  = "nuclear-reactor-explosion",
  max_power_output = "20MW",
  burner =
  {
    type = "burner",
    fuel_categories = {"pm-strontium", "pm-strontium-fuel-rods"},
    effectivity = 2,
    fuel_inventory_size = 2,
    burnt_inventory_size = 2,
    light_flicker =
    {
      color = { 0, 0, 0 },
      minimum_intensity = 0.7,
      maximum_intensity = 0.95
    }
  },
  energy_source = 
  {
    type = "electric",
    buffer_capacity = "20MJ",
    usage_priority = "secondary-output",
  },
  collision_box = { { -0.9, -0.9 }, { 0.9, 0.9} },
  selection_box = { { -1, -1 }, { 1, 1 } },
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/RTG/RTG.png",
        width = 128,
        height = 165,
        line_length = 6,
        frame_count = 24,
        animation_speed = 0.42,
        scale = 0.5,
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/RTG/RTG-shadow.png",
        width = 169,
        height = 118,
        scale = 0.5,
        line_length = 1,
        frame_count = 1,
        repeat_count = 24,
        shift = util.by_pixel( 22, 18 ),
        draw_as_shadow = true
      }
    }
  },
  idle_animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/RTG/RTG-idle.png",
        width = 128,
        height = 165,
        line_length = 1,
        frame_count = 1,
        repeat_count = 24,
        scale = 0.5,
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/RTG/RTG-shadow.png",
        width = 169,
        height = 118,
        scale = 0.5,
        line_length = 1,
        frame_count = 1,
        repeat_count = 24,
        shift = util.by_pixel( 22, 18 ),
        draw_as_shadow = true
      }
    }
  },
},
{
  type = "solar-panel",
  name = "pm-solar-panel-3",
  icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-3.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-solar-panel-3" },
  max_health = 400 + 2,
  corpse = "pm-solar-panel-2-remnants",
  dying_explosion = "solar-panel-explosion",
  collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  fast_replaceable_group = "solar-panel",
  map_color = {r = 0.537, g = 0.341, b = 0.63},
  energy_source =
  {
    type = "electric",
    usage_priority = "solar"
  },
  picture =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/solar-panel-3/solar-panel.png",
        priority = "high",
        width = 230,
        height = 224,
        shift = util.by_pixel(-3, 3.5),
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
        priority = "high",
        width = 220,
        height = 180,
        shift = util.by_pixel(9.5, 6),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  },
  overlay =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
        priority = "high",
        width = 214,
        height = 180,
        shift = util.by_pixel(10.5, 6),
        scale = 0.5
      }
    }
  },
  production = "480kW"
}--[[@as data.SolarPanelPrototype]],
{
  type = "assembling-machine",
  name = "pm-molten-inator-3",
  icon = "__periodic-madness__/graphics/icons/buildings/molten-inator-3.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.75, result = "pm-molten-inator-3" },
  max_health = 850,
  corpse = "steel-furnace-remnants",
  dying_explosion = "steel-furnace-explosion",
  allowed_effects = PM.all_effects(),
  map_color = {r = 0.659, g = 0.106, b = 0.106},
  module_slots = 2,
  fast_replaceable_group = "pm-molteninator",
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["-inator"],
  forced_symmetry = "horizontal",
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/steel-furnace.ogg",
        volume = 0.5
      }
    },
    max_sounds_per_type = 4,
    audible_distance_modifier = 0.37,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  resistances =
  {
    {
      type = "fire",
      percent = 100
    }
  },
  collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
  selection_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
  crafting_categories = {"pm-moltening", "pm-advanced-moltening"},
  energy_usage = "630kW",
  crafting_speed = 3,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 6},
    drain = "33kW",
  },
  graphics_set = 
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/molteninator-3/molteninator-3.png",
        priority = "high",
        width = 171,
        height = 174,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.3,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/molteninator-2/molteninator-2-shadow.png",
        priority = "high",
        width = 174,
        height = 171,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        draw_as_shadow = true,
        shift = util.by_pixel(39.25, 5),
        scale = 0.5
      }
    }
  }
},
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
    },
    {

      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
    },

    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.east--[[@as int]], position = {0.5, -0.5}}},
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "input", direction = defines.direction.west--[[@as int]], position = {-0.5, 0.5}}},
    },
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-cold-inator-3",
  icon = "__periodic-madness__/graphics/icons/buildings/cold-inator-3.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.75, result = "pm-cold-inator-3" },
  max_health = 850,
  corpse = "steel-furnace-remnants",
  dying_explosion = "steel-furnace-explosion",
  allowed_effects = PM.all_effects(),
  map_color = {r = 0.106, g = 0.647, b = 0.659},
  module_slots = 2,
  fast_replaceable_group = "pm-coldinator",
  next_upgrade = "pm-cold-inator-3",
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["-inator"],
  forced_symmetry = "horizontal",
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/steel-furnace.ogg",
        volume = 0.5
      }
    },
    max_sounds_per_type = 4,
    audible_distance_modifier = 0.37,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  resistances =
  {
    {
      type = "fire",
      percent = 100
    }
  },
  graphics_set = 
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/coldinator-3/coldinator-3.png",
        priority = "high",
        width = 171,
        height = 174,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.3,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/molteninator/molteninator-shadow.png",
        priority = "high",
        width = 174,
        height = 171,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        draw_as_shadow = true,
        shift = util.by_pixel(39.25, 5),
        scale = 0.5
      }
    }
  }
},
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {-0.5, -0.5}}},
    },

    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south--[[@as int]], position = {0.5, 0.5}}},
    },
  },
  collision_box = {{-0.9, -0.9 }, { 0.9, 0.9 }},
  selection_box = {{-1.1, -1.1 }, { 1.1, 1.1 }},
  crafting_categories = {"pm-coldening", "pm-advanced-coldening"},
  energy_usage = "900kW",
  crafting_speed = 3,
  energy_source =
  {
    type = "fluid",
    effectivity = 1,
    burns_fluid = true,
    fluid_usage_per_tick = 0.5 / 60,
    emissions_per_minute = {pollution = 0.25},
    fluid_box =
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      filter = "pm-light-coolant",
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {0.5, -0.5}}},
    },
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-mixing-tank-1",
  icon_size = 64,
  icon = "__periodic-madness__/graphics/icons/buildings/mixing-tank-1.png",
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-mixing-tank-1" },
  max_health = 550,
  collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
  selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
  corpse = "pm-mixing-tank-1",
  dying_explosion = "assembling-machine-1-explosion",
  crafting_categories = { "pm-mixing" },
  module_slots = 3,
  allowed_effects = PM.all_effects(),
  crafting_speed = 0.75,
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["mixing-tank"],
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 6}
  },
  energy_usage = "350kW",
  graphics_set = 
{
  animation =
  {
    layers =
    {
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-1/mixing-tank.png",
        width = 320,
        height = 320,
        frame_count = 16,
        line_length = 4,
        animation_speed = 0.45,
        scale = 0.5,
      },
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-1/mixing-tank-shadow.png",
        width = 320,
        height = 320,
        frame_count = 1,
        repeat_count = 16,
        line_length = 1,
        scale = 0.5,
        shift = util.by_pixel(0, 2),
        draw_as_shadow = true,
      }
    }
  }
},
fluid_boxes =
{
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {-1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {1, -2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {-1, -2} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 0} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 0} }},
  },
},
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-mixing-tank-2",
  icon_size = 64,
  icon = "__periodic-madness__/graphics/icons/buildings/mixing-tank-2.png",
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.75, result = "pm-mixing-tank-2" },
  max_health = 750,
  collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
  selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
  corpse = "pm-mixing-tank-2",
  dying_explosion = "assembling-machine-1-explosion",
  crafting_categories = { "pm-mixing" },
  module_slots = 4,
  allowed_effects = PM.all_effects(),
  crafting_speed = 1.5,
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["mixing-tank"],
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 4}
  },
  energy_usage = "475kW",
  graphics_set =
{
  animation =
  {
    layers =
    {
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-2/mixing-tank.png",
        width = 320,
        height = 320,
        frame_count = 16,
        line_length = 4,
        animation_speed = 0.45,
        scale = 0.5,
      },
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-1/mixing-tank-shadow.png",
        width = 320,
        height = 320,
        frame_count = 1,
        repeat_count = 16,
        line_length = 1,
        scale = 0.5,
        shift = util.by_pixel(0, 2),
        draw_as_shadow = true,
      }
    }
  }
},
fluid_boxes =
{
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {-1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {1, -2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {-1, -2} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 0} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 0} }},
  },
},
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "furnace",
  name = "pm-electric-boiler-1",
  icon = "__periodic-madness__/graphics/icons/buildings/electric-boiler.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.4, result = "pm-electric-boiler-1" },
  max_health = 400,
  corpse = "boiler-remnants",
  dying_explosion = "boiler-explosion",
  crafting_categories = {"pm-steamed-hams"},
  crafting_speed = 0.5,
  module_slots = 1,
  source_inventory_size = 0,
  result_inventory_size = 0,
  allowed_effects = PM.all_effects(),
  allowed_module_categories = {"speed"},
  effect_recievers =
  {
    uses_beacon_effects = false,
  },
  resistances =
  {
    {
      type = "fire",
      percent = 50
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "impact",
      percent = 10
    }
  },
  collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
  selection_box = { { -1.5, -1 }, { 1.5, 1 } },
  fluid_boxes =
  {
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
      },
      production_type = "input",
    },
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    }
  },
  energy_usage = "1.7MW",
  energy_source =
  {
    type = "electric",
    emissions_per_minute = {pollution = 5},
    usage_priority = "secondary-input",
    drain = "100kW"
  },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/boiler.ogg",
      volume = 0.7
    },
    --max_sounds_per_type = 3,
    audible_distance_modifier = 0.3,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  graphics_set =
  {
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0.5,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 216,
            height = 301,
            shift = util.by_pixel(-3, 1.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 184,
            height = 194,
            scale = 0.5,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        },
      },
      south =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 260,
            height = 192,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 311,
            height = 131,
            scale = 0.5,
            shift = util.by_pixel(29.75, 15.75),
            draw_as_shadow = true
          }
        },
      },
      west =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 196,
            height = 273,
            shift = util.by_pixel(1.5, 7.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 206,
            height = 218,
            scale = 0.5,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true
          }
        },
      },
    },
  },
  water_reflection = boiler_reflection()
}--[[@as data.FurnacePrototype]];
{
  type = "furnace",
  name = "pm-electric-boiler-2",
  icon = "__periodic-madness__/graphics/icons/buildings/dirty-boiler.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.55, result = "pm-electric-boiler-2" },
  max_health = 650,
  corpse = "boiler-remnants",
  dying_explosion = "boiler-explosion",
  crafting_categories = {"pm-steamed-hams"},
  crafting_speed = 1,
  module_slots = 2,
  source_inventory_size = 0,
  result_inventory_size = 0,
  allowed_effects = PM.all_effects(),
  allowed_module_categories = {"speed"},
  effect_recievers =
  {
    uses_beacon_effects = false,
  },
  resistances =
  {
    {
      type = "fire",
      percent = 50
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "impact",
      percent = 10
    }
  },
  collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
  selection_box = { { -1.5, -1 }, { 1.5, 1 } },
  fluid_boxes =
  {
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
      },
      production_type = "input",
    },
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    }
  },
  energy_usage = "2.6MW", --(1.8MW * 1.5) - 100kW, to account for drain
  energy_source =
  {
    type = "electric",
    emissions_per_minute = {pollution = 2.5},
    usage_priority = "secondary-input",
    drain = "100kW"
  },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/boiler.ogg",
      volume = 0.7
    },
    --max_sounds_per_type = 3,
    audible_distance_modifier = 0.3,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  graphics_set =
  {
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0.5,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 216,
            height = 301,
            shift = util.by_pixel(-3, 1.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 184,
            height = 194,
            scale = 0.5,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        },
      },
      south =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 260,
            height = 192,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 311,
            height = 131,
            scale = 0.5,
            shift = util.by_pixel(29.75, 15.75),
            draw_as_shadow = true
          }
        },
      },
      west =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/electric-boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 196,
            height = 273,
            shift = util.by_pixel(1.5, 7.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 206,
            height = 218,
            scale = 0.5,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true
          }
        },
      },
    },
  },
  water_reflection = boiler_reflection()
}--[[@as data.FurnacePrototype]];
{
  type = "assembling-machine",
  name = "pm-cooling-plant",
  icon = "__periodic-madness__/graphics/icons/buildings/cooling-plant.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-cooling-plant" },
  max_health = 550,
  corpse = "assembling-machine-1-remnants",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-coolers",
  resistances =
  {
    {
      type = "impact",
      percent = 20
    }
  },
  collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  alert_icon_shift = util.by_pixel(-3, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["cooling-plant"],
  graphics_set =
  {
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-north.png",
            priority = "high",
            width = 192,
            height = 209,
            frame_count = 32,
            line_length = 8,
            scale = 0.5
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-north-shadow.png",
            priority = "high",
            width = 209,
            height = 173,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            shift = util.by_pixel(32, 3),
            draw_as_shadow = true,
            scale = 0.5
          },
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-south.png",
            priority = "high",
            width = 192,
            height = 209,
            frame_count = 32,
            line_length = 8,
            scale = 0.5
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-north-shadow.png",
            priority = "high",
            width = 209,
            height = 173,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            shift = util.by_pixel(32, 3),
            draw_as_shadow = true,
            scale = 0.5
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-east.png",
            priority = "high",
            width = 192,
            height = 209,
            frame_count = 32,
            line_length = 8,
            scale = 0.5
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-north-shadow.png",
            priority = "high",
            width = 209,
            height = 173,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            shift = util.by_pixel(32, 3),
            draw_as_shadow = true,
            scale = 0.5
          },
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-west.png",
            priority = "high",
            width = 192,
            height = 209,
            frame_count = 32,
            line_length = 8,
            scale = 0.5
          },
          {
            filename = "__periodic-madness__/graphics/entities/buildings/cooling-plant/cooling-plant-north-shadow.png",
            priority = "high",
            width = 209,
            height = 173,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            shift = util.by_pixel(32, 3),
            draw_as_shadow = true,
            scale = 0.5
          },
        }
      },
    },
  },
  allowed_effects = PM.all_effects(),
  module_slots = 2,
  crafting_categories = {"pm-cooling"},
  crafting_speed = 1,
  energy_usage = "240kW",
  energy_source =
  {
    type = "electric",
    usage_priority = "primary-input",
    emissions_per_minute = {pollution = 1},
  },
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/assembling-machine-t1-1.ogg",
        volume = 0.6
      }
    },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  fluid_boxes =
  {
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {-1, -1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {1, -1}}},
      secondary_draw_orders = { north = -1 }
    },
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-washing-plant-3",
  icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-3.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.6, result = "pm-washing-plant-3" },
  max_health = 850,
  corpse = "pm-washing-plant-2",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-washers",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    }
  },
  collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  alert_icon_shift = util.by_pixel(-3, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set = 
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-3/washing-plant.png",
        priority = "high",
        width = 214,
        height = 226,
        shift = util.by_pixel(0, -4),
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/washing-plant-1/washing-plant-shadow.png",
        priority = "high",
        width = 226,
        height = 214,
        draw_as_shadow = true,
        shift = util.by_pixel(40 - 10, -4),
        scale = 0.5
      }
    }
  }
},
  crafting_categories = { "pm-washing" },
  crafting_speed = 2,
  energy_usage = "360kW",
  allowed_effects = PM.all_effects(),
  module_slots = 3,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 0.75},
  },
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/assembling-machine-t1-1.ogg",
        volume = 0.6
      }
    },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
      secondary_draw_orders = { north = -1 }
    },
  },
}--[[@as data.AssemblingMachinePrototype]],
{
    type = "assembling-machine",
    name = "pm-assembling-machine-4",
    icon = "__periodic-madness__/graphics/icons/buildings/assembling-machine-4.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = "pm-assembling-machine-4"},
    max_health = 650,
    corpse = "assembling-machine-3-remnants",
    dying_explosion = "assembling-machine-3-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 85
      }
    },
    fluid_boxes =
    {
    {
      production_type = "input",
      pipe_picture = pm_assembler4pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "output",
      pipe_picture = pm_assembler4pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "input",
      pipe_picture = pm_assembler4pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
      secondary_draw_orders = { north = -1 }
    },
    {
        production_type = "output",
        pipe_picture = pm_assembler4pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
    },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.45, audible_distance_modifier = 0.5},
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.2,
    fast_replaceable_group = "assembling-machine",
    graphics_set =
    {
      animation_progress = 0.5,
      animation =
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/entities/buildings/assembling-machine-4/assembling-machine-4.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid", "pm-advanced-crafting-with-fluid", "pm-circuitry"},
    crafting_speed = 1.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 }
    },
    energy_usage = "450kW",
    module_slots = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
  },
  {
    type = "assembling-machine",
    name = "pm-circuit-megassembler-MK2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/circuit-megassembler-mk2.png",
    minable = { mining_time = 0.85, result = "pm-circuit-megassembler-MK2" },
    max_health = 2250,
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    corpse = "pm-circuit-megassembler",
    dying_explosion = "assembling-machine-1-explosion",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    crafting_categories = {"pm-circuitry"},
    module_slots = 5,
    allowed_effects = PM.all_effects(),
    crafting_speed = 5,
    allowed_module_categories = {"pm-circuit-megassembler-module-MK2"},
    effect_receiver = { base_effect = { productivity = 0.25 }},
    tile_buildability_rules = pm_placable_on_refined_concrete,
    custom_tooltip_fields =
    {
      {
        name = {"pm-tooltips.placeable-on"},
        value = {"pm-tooltips.refined-concrete"}
      }
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["circuit-megassembler"],
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      fluid_usage_per_tick = 1 / 60,
      emissions_per_minute = {pollution = 1},
      fluid_box =
      {
        production_type = "input",
        --pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1750,
        filter = "pm-light-lubricant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north--[[@as int]], position = {0, -3}}},
      },
      --TODO: ask factorio server why you cant have multiple fluid boxes for this.
    },
    vector_to_place_result = {0, 3.55},
    energy_usage = "500kW",
    graphics_set =
    {
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-north.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        south =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-south.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        east =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-east.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-west.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 32,
              line_length = 8,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
      },
      idle_animation = 
      {
        north =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-north-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        south =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-south-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        east =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-east-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler-MK2/circuit-megassembler-west-idle.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              animation_speed = 0.4,
              scale = 0.5
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
              priority = "high",
              width = 448,
              height = 448,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              shift = util.by_pixel(32, 3),
              draw_as_shadow = true,
              scale = 0.5
            },
          }
        },
      },
      working_visualisations =
      {
        {
          apply_recipe_tint = "primary",
          north_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-primary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          north_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-circuit-secondary.png",
            frame_count = 32,
            line_length = 8,
            width = 448,
            height = 448,
            animation_speed = 0.4,
            scale = 0.5
          }
        }
      },
    }
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-stone-coke-oven",
  icon = "__periodic-madness__/graphics/icons/buildings/stone-coke-oven.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.33, result = "pm-stone-coke-oven" },
  max_health = 550,
  corpse = "pm-stone-coke-oven",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-coke-ovens",
  next_upgrade = "pm-stone-coke-oven",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    },
    {
      type = "fire",
      percent = 75
    }
  },
  collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  alert_icon_shift = util.by_pixel(0, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set = 
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven/coke-oven.png",
        priority = "high",
        width = 192,
        height = 211,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven/coke-oven-shadow.png",
        priority = "high",
        width = 192,
        height = 211,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 7),
        scale = 0.5
      }
    }
  },
  working_visualisations =
  {
    {
      fadeout = true,
      animation =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven/coke-oven-on.png",
        width = 192,
        height = 211,
        frame_count = 24,
        line_length = 6,
        scale = 0.5,
        animation_speed = 0.45
      }
    }
  }
},
  crafting_categories = { "pm-coking" },
  crafting_speed = 0.3,
  energy_usage = "150kW",
  energy_source =
  {
    type = "burner",
    fuel_categories = {"chemical", "pm-fuel-canisters"},
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 5},
  },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-stone-coke-oven-2",
  icon = "__periodic-madness__/graphics/icons/buildings/stone-coke-oven-2.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.45, result = "pm-stone-coke-oven-2" },
  max_health = 750,
  corpse = "pm-stone-coke-oven-2",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-coke-ovens",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    },
    {
      type = "fire",
      percent = 75
    }
  },
  collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  alert_icon_shift = util.by_pixel(0, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set =
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven-2/coke-oven-2.png",
        priority = "high",
        width = 192,
        height = 211,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven/coke-oven-shadow.png",
        priority = "high",
        width = 192,
        height = 211,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 7),
        scale = 0.5
      }
    }
  },
  working_visualisations =
  {
    {
      fadeout = true,
      animation =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven-2/coke-oven-2-on.png",
        width = 192,
        height = 211,
        frame_count = 24,
        line_length = 6,
        scale = 0.5,
        animation_speed = 0.45
      }
    }
  }
},
  crafting_categories = { "pm-coking" },
  crafting_speed = 0.6,
  energy_usage = "125kW",
  energy_source =
  {
    type = "burner",
    fuel_categories = {"chemical", "pm-fuel-canisters"},
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 4},
  },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-stone-coke-oven-3",
  icon = "__periodic-madness__/graphics/icons/buildings/stone-coke-oven-3.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-stone-coke-oven-3" },
  max_health = 950,
  corpse = "pm-stone-coke-oven-3",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-coke-ovens",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    },
    {
      type = "fire",
      percent = 75
    }
  },
  collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  alert_icon_shift = util.by_pixel(0, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set =
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven-3/coke-oven-3.png",
        priority = "high",
        width = 192,
        height = 211,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven-3/coke-oven-3-shadow.png",
        priority = "high",
        width = 192,
        height = 211,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 7),
        scale = 0.5
      }
    }
  },
  working_visualisations =
  {
    {
      fadeout = true,
      animation =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stone-coke-oven-2/coke-oven-2-on.png",
        width = 192,
        height = 211,
        frame_count = 24,
        line_length = 6,
        scale = 0.5,
        animation_speed = 0.45
      }
    }
  }
},
  crafting_categories = { "pm-coking" },
  crafting_speed = 1,
  energy_usage = "115kW",
  energy_source =
  {
    type = "burner",
    fuel_categories = {"chemical", "pm-fuel-canisters"},
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 3},
  },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-electric-coke-oven",
  icon = "__periodic-madness__/graphics/icons/buildings/electric-coke-oven.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-electric-coke-oven" },
  max_health = 800,
  corpse = "pm-electric-coke-oven",
  dying_explosion = "assembling-machine-1-explosion",
  fast_replaceable_group = "pm-coke-ovens",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    },
    {
      type = "fire",
      percent = 75
    }
  },
  collision_box = { { -1.85, -1.85 }, { 1.85, 1.85 } },
  selection_box = { { -2, -2 }, { 2, 2 } },
  alert_icon_shift = util.by_pixel(0, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set =
{
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electric-coke-oven/electric-coke-oven-base.png",
        width = 256,
        height = 278,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electric-coke-oven/electric-coke-oven-fans.png",
        width = 256,
        height = 278,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.5,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electric-coke-oven/electric-coke-oven-shadow.png",
        width = 256,
        height = 278,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        draw_as_shadow = true,
        shift = util.by_pixel(110, 0),
        scale = 0.5
      }
    }
  },
  working_visualisations =
  {
    {
      fadeout = true,
      animation =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electric-coke-oven/electric-coke-oven-on.png",
        width = 256,
        height = 278,
        frame_count = 32,
        line_length = 8,
        scale = 0.5,
        animation_speed = 0.33
      }
    }
  }
},
  crafting_categories = { "pm-coking", "pm-coking-with-fluid" },
  allowed_effects = PM.all_effects(),
  module_slots = 4,
  allowed_module_categories = {"pm-heating-coils"},
  crafting_speed = 1,
  energy_usage = "175kW",
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 3},
  },
  fluid_boxes =
  {
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections = 
      {
        {flow_direction="input-output", direction = defines.direction.north --[[@as int]], position = {1.5, -1.5}},
        {flow_direction="input-output", direction = defines.direction.south --[[@as int]], position = {1.5, 1.5}}
      },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections = 
      {
        {flow_direction="input-output", direction = defines.direction.north --[[@as int]], position = {-1.5, -1.5}},
        {flow_direction="input-output", direction = defines.direction.south --[[@as int]], position = {-1.5, 1.5}}
      },
    },
  },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
}--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-electronic-laser-etcher",
  icon = "__periodic-madness__/graphics/icons/buildings/electric-coke-oven.png",
  icon_size = 64,
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 0.5, result = "pm-electric-coke-oven" },
  max_health = 800,
  corpse = "pm-electronic-laser-etcher",
  dying_explosion = "assembling-machine-1-explosion",
  resistances =
  {
    {
      type = "impact",
      percent = 65
    },
    {
      type = "fire",
      percent = 85
    }
  },
  collision_box = { { -1.85, -1.85 }, { 1.85, 1.85 } },
  selection_box = { { -2, -2 }, { 2, 2 } },
  alert_icon_shift = util.by_pixel(0, -12),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  graphics_set =
{
  status_colors = pm_diode_status_colors(),
  animation =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-base.png",
        width = 256,
        height = 278,
        frame_count = 1,
        line_length = 1,
        repeat_count = 48,
        animation_speed = 0.5,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-south-laser.png",
        width = 256,
        height = 278,
        frame_count = 48,
        line_length = 8,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-glass.png",
        width = 256,
        height = 278,
        frame_count = 1,
        line_length = 1,
        repeat_count = 48,
        tint = {0, 0, 0, 0.45},
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-fans.png",
        width = 256,
        height = 278,
        frame_count = 48,
        line_length = 8,
        scale = 0.5
      },
      {
        filename = "__periodic-madness__/graphics/entities/buildings/electric-coke-oven/electric-coke-oven-shadow.png",
        width = 256,
        height = 278,
        frame_count = 1,
        line_length = 1,
        repeat_count = 48,
        draw_as_shadow = true,
        shift = util.by_pixel(110, 0),
        scale = 0.5
      }
    }
  },
    working_visualisations =
    {
        {
            apply_recipe_tint = "tertiary",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-left-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            south_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-left-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            east_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-left-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            west_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-left-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
        },
        {
            apply_recipe_tint = "quaternary",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-right-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            south_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-right-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            east_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-right-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
            west_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-right-tint.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              scale = 0.5,
            },
        },
        {
            apply_tint = "status",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-diode.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            south_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-diode.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            east_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-diode.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            west_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/electronic-laser-etcher/electronic-laser-etcher-diode.png",
              width = 256,
              height = 278,
              frame_count = 1,
              line_length = 1,
              repeat_count = 48,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
        },
    }
  },
  crafting_categories = {"pm-circuit-boards"},
  allowed_effects = PM.all_effects(),
  module_slots = 3,
  allowed_module_categories = {"pm-laser-modules"},
  crafting_speed = 2,
  energy_usage = "650kW",
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "100kW",
    emissions_per_minute = {pollution = 4},
  },
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections = 
      {
        {flow_direction="input-output", direction = defines.direction.north --[[@as int]], position = {1.5, -1.5}},
        {flow_direction="input-output", direction = defines.direction.south --[[@as int]], position = {1.5, 1.5}}
      },
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections = 
      {
        {flow_direction="input-output", direction = defines.direction.north --[[@as int]], position = {-1.5, -1.5}},
        {flow_direction="input-output", direction = defines.direction.south --[[@as int]], position = {-1.5, 1.5}}
      },
    },
  },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.5
        }
      },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
}--[[@as data.AssemblingMachinePrototype]],
{
    type = "electric-energy-interface",
    name = "pm-hydroelectric-plant",
    icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "pm-solar-panel-2" },
    max_health = 400 + 1,
    corpse = "pm-solar-panel-2-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = { { -1.4, -1.05 }, { 1.4, 0.3 } },
    selection_box = { { -1.5, -2.49 }, { 1.5, 1.49 } },
    --[[tile_buildability_rules =
    {
      {area = {{-0.6, -0.6}, {0.6, 0.6}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={water_tile=true}}, remove_on_collision = true}, --checks for ground
      {area = {{-1.5, -2}, {1.5, 1.5}}, required_tiles = {layers={water_tile=true}}, colliding_tiles = {layers={}}}, --checks for water {{-1 is west, -1 is north}, {1 is east, 1 is south}}
    }, --]]
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/solar-panel-2/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-3, 3.5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
          priority = "high",
          width = 220,
          height = 180,
          shift = util.by_pixel(9.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    energy_production = "330kW"
  },
  {
    type = "fusion-reactor",
    name = "pm-geothermal-plant",
    icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-solar-panel-2" },
    max_health = 1000,
    corpse = "pm-solar-panel-2-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = { { -2.9, -2.9 }, { 2.9, 2.9 } },
    selection_box = { { -3, -3 }, { 3, 3 } },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    power_input = "500kW",
    burner = 
    {
        type = "burner",
        fuel_inventory_size = 1,
        fuel_categories = {"pm-geothermal-bore"},
        initial_fuel_percent = 0.01,
    },
    input_fluid_box = 
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 250,
      filter = "water",
      pipe_connections = 
      {
        {flow_direction="input", direction = defines.direction.north --[[@as int]], position = {1.5, -2.5}}, --right input
        {flow_direction="input", direction = defines.direction.north --[[@as int]], position = {-1.5, -2.5}} --left input
      },
    },
    output_fluid_box = 
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 250,
      filter = "steam",
      pipe_connections = 
      {
        {flow_direction="output", direction = defines.direction.south --[[@as int]], position = {-1.5, 2.5}}, --right input
        {flow_direction="output", direction = defines.direction.south --[[@as int]], position = {1.5, 2.5}} --left input
      },
    },
    max_fluid_usage = 1,
    picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/solar-panel-2/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-3, 3.5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
          priority = "high",
          width = 220,
          height = 180,
          shift = util.by_pixel(9.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    energy_production = "330kW"
  },
  {
    type = "assembling-machine",
    name = "pm-atmospheric-condenser-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/atmospheric-condenser-2.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "pm-atmospheric-condenser" },
    max_health = 700,
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    corpse = "pm-atmospheric-condenser",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = {"pm-atmospheric-condensing"},
    module_slots = 4,
    allowed_effects = PM.all_effects_but("productivity"),
    crafting_speed = 2,
    icon_draw_specification = {shift = {0, -0.36}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = -2}
    },
    energy_usage = "460kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 2,
    circuit_connector = circuit_connector_definitions["atmospheric-condenser"],
    graphics_set = 
    {
    status_colors = pm_diode_status_colors(),
    animation =
    {
      north = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser-2/atmospheric-condenser-2-north-south-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
    south = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser-2/atmospheric-condenser-2-north-south-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
      east = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-east-west-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      },
      west = 
      {
        layers = 
        {
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-east-west-base.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-fans.png",
                width = 320,
                height = 320,
                frame_count = 32,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.5,
            },
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
                width = 320,
                height = 320,
                frame_count = 1,
                line_length = 1,
                repeat_count = 32,
                scale = 0.5,
                shift = util.by_pixel(146, 0),
                draw_as_shadow = true,
            }
        }
      }
    },
    working_visualisations =
    {
        {
            apply_tint = "status",
            always_draw = true,
            north_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            south_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            east_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
            west_animation =
            {
              filename = "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-diode.png",
              width = 320,
              height = 320,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              blend_mode = "additive",
              draw_as_glow = true,
              scale = 0.5,
            },
        }
    }
  },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 200,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {0, 2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north--[[@as int]], position = {1, -2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north--[[@as int]], position = {-1, -2} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, -1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 1} }},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, -1} }},
      },
    },
  }--[[@as data.AssemblingMachinePrototype]],
{
  type = "assembling-machine",
  name = "pm-mixing-tank-3",
  icon_size = 64,
  icon = "__periodic-madness__/graphics/icons/buildings/mixing-tank-2.png",
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { mining_time = 1, result = "pm-mixing-tank-2" },
  max_health = 1250,
  collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
  selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
  corpse = "pm-mixing-tank-3",
  dying_explosion = "assembling-machine-1-explosion",
  crafting_categories = { "pm-mixing" },
  module_slots = 5,
  allowed_effects = PM.all_effects(),
  crafting_speed = 3,
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["mixing-tank"],
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 3}
  },
  energy_usage = "550kW",
  graphics_set =
{
  animation =
  {
    layers =
    {
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-2/mixing-tank.png",
        width = 320,
        height = 320,
        frame_count = 16,
        line_length = 4,
        animation_speed = 0.45,
        scale = 0.5,
      },
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/mixing-tank-1/mixing-tank-shadow.png",
        width = 320,
        height = 320,
        frame_count = 1,
        repeat_count = 16,
        line_length = 1,
        scale = 0.5,
        shift = util.by_pixel(0, 2),
        draw_as_shadow = true,
      }
    }
  }
},
fluid_boxes =
{
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south--[[@as int]], position = {-1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {1, -2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north--[[@as int]], position = {-1, -2} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.west--[[@as int]], position = {-2, 0} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.east--[[@as int]], position = {2, 0} }},
  },
},
}--[[@as data.AssemblingMachinePrototype]],
}--[[@as data.EntityPrototype[] ]])
data:extend({
fireutil.add_magnesium_fire_graphics_and_effects_definitions
{
  type = "fire",
  name = "pm-magnesium-fire-flame",
  flags = {"placeable-off-grid", "not-on-map"},
  hidden = true,
  damage_per_tick = {amount = 15 / 60, type = "fire"},
  maximum_damage_multiplier = 2,
  damage_multiplier_increase_per_added_fuel = 0.5,
  damage_multiplier_decrease_per_tick = 0.008,
  spawn_entity = "fire-flame-on-tree",
  spread_delay = 450,
  spread_delay_deviation = 180,
  maximum_spread_count = 100,
  emissions_per_second = { pollution = 0.0075 },
  initial_lifetime = 360 * 2,
  lifetime_increase_by = 60,
  lifetime_increase_cooldown = 4,
  maximum_lifetime = 36000,
  delay_between_initial_flames = 10,
  --initial_flame_count = 1,

}})

--REMINDERS SO I KNOW HOW TO MAKE THESE:
-- negative co-ords are up, positive co-ords are down
-- selection_box = {{-2.2, -2.2}, {2.5, 2.6}}, first two are up and down, third is left, fourth is right
--14/11/24 well this became fucking useless

local ShorePumpBanishment = data.raw["recipe"]["offshore-pump"]
ShorePumpBanishment.enabled = false
ShorePumpBanishment.subgroup = "pm-water-machine"
ShorePumpBanishment.order = "b"

table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "crafting-with-fluid")
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "pm-circuitry")
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes =
{
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 500,
    pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 500,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
    secondary_draw_orders = { north = -1 }
  },
}
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes_off_when_no_fluid_recipe = true

table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "pm-circuitry")
data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes = 
{
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
    secondary_draw_orders = { north = -1 }
  },
}

table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "pm-advanced-crafting-with-fluid")
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "pm-circuitry")
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes =
{
  {
    production_type = "input",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.north--[[@as int]], position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south--[[@as int]], position = {0, 1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "input",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.west--[[@as int]], position = {-1, 0}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.east--[[@as int]], position = {1, 0}}},
    secondary_draw_orders = { north = -1 }
  },
}
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes_off_when_no_fluid_recipe = true

data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids =
{
  {type = "crude-oil", damage_modifier = 0.5},
  {type = "pm-petrol", damage_modifer = 1.1},
  {type = "pm-diesel", damage_modifer = 1.1},
  {type = "pm-naptha", damage_modifier = 1.5},
  {type = "pm-kerosene", damager_modifier = 1.3}
}
data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluid_consumption = 0.2 * 4
data.raw["fluid-turret"]["flamethrower-turret"].attacking_speed = 0.75
data.raw["fluid-turret"]["flamethrower-turret"].max_health = 1000
data.raw["fluid-turret"]["flamethrower-turret"].prepare_range = 30
data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.range = 25
data.raw["stream"]["flamethrower-fire-stream"].action.radius = 2
data.raw["stream"]["flamethrower-fire-stream"].action =
{
  {
    type = "area",
    radius = 2,
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-sticker",
          sticker = "fire-sticker",
          show_in_tooltip = true
        },
        {
          type = "damage",
          damage = { amount = 2, type = "fire" },
          apply_damage_to_trees = true
        }
      }
    }
  },
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-fire",
          entity_name = "fire-flame",
          show_in_tooltip = true
        }
      }
    }
  }
}

data.raw["fire"]["fire-flame"].damage_per_tick = {amount = 7 / 60, type = "fire"}
data.raw["sticker"]["fire-sticker"].damage_per_tick = {amount = 10 * 10 / 60, type = "fire"}


data.raw["storage-tank"]["storage-tank"].next_upgrade = "pm-stainless-steel-storage-tank"
data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = "pm-storage-tank"

data.raw["container"]["steel-chest"].next_upgrade = "pm-stainless-steel-chest"

data.raw["lab"]["lab"].inputs = {"automation-science-pack", "logistic-science-pack", "pm-advanced-advanced-transition-metal-science-pack" }

data.raw["solar-panel"]["solar-panel"].production = "120kW"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
data.raw["solar-panel"]["solar-panel"].next_upgrade = "pm-solar-panel-2"
data.raw["accumulator"]["accumulator"].energy_source.buffer_capacity = "10MJ"
data.raw["accumulator"]["accumulator"].energy_source.input_flow_limit = "750kW"
data.raw["accumulator"]["accumulator"].energy_source.output_flow_limit = "750kW"

data.raw["mining-drill"]["electric-mining-drill"].icon ="__periodic-madness__/graphics/icons/buildings/electric-mining-drill.png"
data.raw["item"]["electric-mining-drill"].icon ="__periodic-madness__/graphics/icons/buildings/electric-mining-drill.png"
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "pm-electric-mining-drill-2"

data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "pm-high-density-underground-belt"
data.raw["splitter"]["express-splitter"].next_upgrade = "pm-high-density-splitter"
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "pm-high-density-transport-belt"

data.raw["assembling-machine"]["chemical-plant"].module_slots = 2
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "pm-chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "pm-chemical-plant-2"

data.raw["mining-drill"]["burner-mining-drill"].energy_usage = "115kW"

data.raw["combat-robot"]["defender"].time_to_live = 60 * 60

data.raw["pump"]["pump"].pumping_speed = 100

data.raw["electric-turret"]["laser-turret"].energy_source.drain = "30kW"
data.raw["electric-turret"]["laser-turret"].energy_source.input_flow_limit = "5400kW"
data.raw["electric-turret"]["laser-turret"].folding_speed = 0.085

data.raw["wall"]["stone-wall"].hide_resistances = false
data.raw["wall"]["stone-wall"].repair_speed_modifier = 1
data.raw["wall"]["stone-wall"].resistances =
{
  {
    type = "physical",
    percent = 20
  },
  {
    type = "impact",
    decrease = 20,
    percent = 30
  },
  {
    type = "explosion",
    decrease = 2,
    percent = 15
  },
  {
    type = "fire",
    percent = 65
  },
  {
    type = "acid",
    percent = 2
  },
  {
    type = "laser",
    percent = 10
  }
}

data.raw["tile"]["refined-concrete"].walking_speed_modifier = 1.65
data.raw["tile"]["refined-concrete"].collision_mask = tile_collision_masks.pm_refined_concrete()
data.raw["tile"]["concrete"].collision_mask = tile_collision_masks.pm_concrete()


data.raw["locomotive"]["locomotive"].energy_source.burnt_inventory_size = 3
data.raw["car"]["car"].energy_source.burnt_inventory_size = 2
data.raw["car"]["tank"].energy_source.burnt_inventory_size = 2

data.raw["furnace"]["electric-furnace"].allowed_module_categories = {"pm-heating-coils"}
data.raw["furnace"]["electric-furnace"].module_slots = 6
data.raw["furnace"]["electric-furnace"].icons_positioning =
{
  {inventory_index = defines.inventory.furnace_modules, shift = {0, 1}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 6, scale = 0.42}
}
data.raw["furnace"]["electric-furnace"].crafting_speed = 1
data.raw["furnace"]["electric-furnace"].energy_usage = "100kW"
data.raw["furnace"]["electric-furnace"].energy_source.drain = "0kW"
data.raw["furnace"]["electric-furnace"].energy_source.emissions_per_minute = {pollution = 0.5}

data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 4.5
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 10

data.raw["boiler"]["boiler"].energy_source.burnt_inventory_size = 1
data.raw["mining-drill"]["burner-mining-drill"].energy_source.burnt_inventory_size = 1
data.raw["inserter"]["burner-inserter"].energy_source.burnt_inventory_size = 1

data.raw["logistic-container"]["active-provider-chest"].inventory_size = 64
data.raw["logistic-container"]["passive-provider-chest"].inventory_size = 64
data.raw["logistic-container"]["storage-chest"].inventory_size = 64
data.raw["logistic-container"]["buffer-chest"].inventory_size = 64
data.raw["logistic-container"]["requester-chest"].inventory_size = 64

data.raw["rocket-silo"]["rocket-silo"].to_be_inserted_to_rocket_inventory_size = 2
data.raw["rocket-silo"]["rocket-silo"].module_slots = 5
data.raw["rocket-silo"]["rocket-silo"].energy_usage = "8MW"
data.raw["rocket-silo"]["rocket-silo"].active_energy_usage = "2MW"
data.raw["rocket-silo"]["rocket-silo"].lamp_energy_usage = "250kW"
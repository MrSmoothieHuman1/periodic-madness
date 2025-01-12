local PM = require("library")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local red_belt = {r = 0.878, g = 0.169, b = 0.169}
local orange_belt = {r = 1, g = 0.502, b = 0}
local blue_belt = {r = 0.169, g = 0.608, b = 0.878}
local purple_belt = {r = 0.616, g = 0.169, b = 0.878}

local pm_lab_inputs =
{
  "automation-science-pack",
  "military-science-pack",
  "logistic-science-pack",
  "pm-advanced-advanced-transition-metal-science-pack",
  "chemical-science-pack",
  "pm-post-transition-metal-science-pack",
  "pm-alkali-metal-science-pack",
  "pm-metalloid-science-pack",
  "pm-alkaline-earth-metal-science-pack",
  "production-science-pack",
  "utility-science-pack",
  "space-science-pack",
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

function pm_electric_mining_drill2_animation()
  return
  {
    priority = "high",
    filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill.png",
    line_length = 6,
    width = 162,
    height = 156,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(1, -11),
    scale = 0.5
  }
end

function pm_electric_mining_drill_horizontal2_animation()
  return
  {
    priority = "high",
    filename =
    "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-horizontal.png",
    line_length = 6,
    width = 80,
    height = 160,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2, -12),
    scale = 0.5
  }
end
--This is here because it no longer exists globally
local fast_belt_animation_set = {
  animation_set =
  {
    filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
    priority = "extra-high",
    size = 128,
    scale = 0.5,
    frame_count = 32,
    direction_count = 20
  }
}
local orange_fast_belt_animation_set = {
  animation_set =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/fast-transport-belt/fast-transport-belt.png",
    priority = "extra-high",
    size = 128,
    scale = 0.5,
    frame_count = 32,
    direction_count = 20
  }
}
local high_density_animation_set = {
  animation_set =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/high-density-transport-belts/high-density-transport-belt.png",
    priority = "extra-high",
    size = 128,
    scale = 0.5,
    frame_count = 16,
    direction_count = 20,
  }
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
          frequency = 10,
          position = {0.7, -1.2},
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
          filename = "__periodic-madness__/graphics/entities/buildings/welder/welder.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 1,
          shift = util.by_pixel(-1.25, 2),
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
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          line_length = 8,
          width = 57,
          height = 81,
          frame_count = 48,
          direction_count = 1,
          shift = util.by_pixel(-0.75, 5.75),
          scale = 0.5
        },
      },
      {
        fadeout = true,
        draw_as_light = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
          priority = "high",
          width = 60,
          height = 43,
          frame_count = 1,
          shift = { 0.03125, 0.640625 },
          blend_mode = "additive"
        }
      },
      {
        fadeout = true,
        draw_as_light = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
          priority = "high",
          line_length = 1,
          width = 128,
          height = 150,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5),
          blend_mode = "additive",
          scale = 0.5,
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-ground-light.png",
          priority = "high",
          line_length = 1,
          draw_as_sprite = false,
          width = 152,
          height = 126,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(1, 48),
          blend_mode = "additive",
          scale = 0.5,
        },
      },
    },
    fast_replaceable_group = "furnace",
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 45),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  }
},

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
      fuel_categories = {"chemical", "pm-oil-canisters"},
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
  },
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
          direction = defines.direction.south,
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
  },

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
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { direction = defines.direction.north, position = {-1, -1} },
        { direction = defines.direction.east, position = {1, 1} },
        { direction = defines.direction.south, position = {1, 1} },
        { direction = defines.direction.west, position = {-1, -1} }
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

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
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
  },
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
        {flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east, position = {1, 0.5}}
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
        {flow_direction = "output", direction = defines.direction.north, position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "900kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical", "pm-oil-canisters"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = {pollution = 30},
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
  },
  {
    type = "underground-belt",
    name = "pm-high-density-underground-belt",
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-underground-belt.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-high-density-underground-belt" },
    max_health = 250,
    corpse = "express-underground-belt-remnants",
    dying_explosion = "express-underground-belt-explosion",
    max_distance = 15,
    map_color = purple_belt,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-underground-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 2,
      audible_distance_modifier = 0.5,
      persistent = true,
      use_doppler_shift = false
    },
    animation_speed_coefficient = 32,
    belt_animation_set = high_density_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.1875,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192,
          scale = 0.5
        }
      },
      direction_out =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 3,
          scale = 0.5
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 2,
          scale = 0.5
        }
      },
      back_patch =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      },
      front_patch =
      {
        sheet =
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      }
    }
  },

  {
    type = "splitter",
    name = "pm-high-density-splitter",
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-splitter.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-high-density-splitter" },
    max_health = 250,
    corpse = "express-splitter-remnants",
    dying_explosion = "express-splitter-explosion",
    map_color = purple_belt,
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
    selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = high_density_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.1875,
    structure =
    {
      north =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 160,
        height = 70,
        shift = util.by_pixel(7, 0),
        scale = 0.5
      },
      east =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 84,
        shift = util.by_pixel(4, 13),
        scale = 0.5
      },
      south =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 164,
        height = 64,
        shift = util.by_pixel(4, 0),
        scale = 0.5
      },
      west =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 86,
        shift = util.by_pixel(5, 12),
        scale = 0.5
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 104,
        shift = util.by_pixel(4, -20),
        scale = 0.5
      },
      south = util.empty_sprite(),
      west =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 96,
        shift = util.by_pixel(5, -18),
        scale = 0.5
      }
    }
  },

  {
    type = "transport-belt",
    name = "pm-advanced-transport-belt",
    icon = "__base__/graphics/icons/fast-transport-belt.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-advanced-transport-belt" },
    max_health = 170,
    corpse = "express-transport-belt-remnants",
    dying_explosion = "express-transport-belt-explosion",
    map_color = red_belt,
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.3
      },
      persistent = true,
      use_doppler_shift = true,
    },
    animation_speed_coefficient = 32,
    belt_animation_set = fast_belt_animation_set,
    related_underground_belt = "pm-advanced-underground-belt",
    fast_replaceable_group = "transport-belt",
    next_upgrade = "express-transport-belt",
    speed = 0.09375,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  {
    type = "underground-belt",
    name = "pm-advanced-underground-belt",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-advanced-underground-belt" },
    max_health = 170,
    corpse = "express-underground-belt-remnants",
    dying_explosion = "express-underground-belt-explosion",
    max_distance = 9,
    map_color = red_belt,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-underground-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 2,
      audible_distance_modifier = 0.5,
      persistent = true,
      use_doppler_shift = false
    },
    animation_speed_coefficient = 32,
    belt_animation_set = fast_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "express-underground-belt",
    speed = 0.09375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192,
          scale = 0.5
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 3,
          scale = 0.5
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 2,
          scale = 0.5
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "splitter",
    name = "pm-advanced-splitter",
    icon = "__base__/graphics/icons/fast-splitter.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-advanced-splitter" },
    max_health = 170,
    corpse = "express-splitter-remnants",
    dying_explosion = "express-splitter-explosion",
    map_color = red_belt,
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
    selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = fast_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "express-splitter",
    speed = 0.09375,
    structure =
    {
      north =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 160,
        height = 70,
        shift = util.by_pixel(7, 0),
        scale = 0.5
      },
      east =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 84,
        shift = util.by_pixel(4, 13),
        scale = 0.5
      },
      south =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 164,
        height = 64,
        shift = util.by_pixel(4, 0),
        scale = 0.5
      },
      west =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 86,
        shift = util.by_pixel(6, 12),
        scale = 0.5
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 104,
        shift = util.by_pixel(4, -20),
        scale = 0.5
      },
      south = util.empty_sprite(),
      west =
      {
        filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 96,
        shift = util.by_pixel(6, -18),
        scale = 0.5
      }
    }
  },

  {
    type = "transport-belt",
    name = "pm-high-density-transport-belt",
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-transport-belt.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "pm-high-density-transport-belt" },
    max_health = 250,
    corpse = "express-transport-belt-remnants",
    dying_explosion = "express-transport-belt-explosion",
    map_color = purple_belt,
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.3
      },
      persistent = true,
      use_doppler_shift = true,
    },

    animation_speed_coefficient = 32,
    belt_animation_set = high_density_animation_set,
    related_underground_belt = "pm-high-density-underground-belt",
    fast_replaceable_group = "transport-belt",
    speed = 0.1875,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },

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
          {flow_direction = "input", direction = defines.direction.south, position = {0, 1}}
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
  },
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
        pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  },
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
      emissions_per_minute = {pollution = 2.5},
      fuel_inventory_size = 1,
      fuel_categories = {"chemical", "pm-oil-canisters"},
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
  },

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
          width = 249 + 7,
          height = 338,
          shift = util.by_pixel(0, -40),
          scale = 0.56
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
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0.5, 1.5}}},
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        filter = "crude-oil",
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-0.5, 1.5}}},
      },

      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-1.5, 1.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = { { flow_direction="output", direction = defines.direction.west, position = {-1.5, 0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.west, position = {-1.5, -0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-1.5, -1.5}}},
      },

      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {1.5, 1.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {1.5, 0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {1.5, -0.5}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 5000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1.5, -1.5}}},
      },
    },
    -- if ANYONE reads this, i hope you know i hate this. I hate fluid boxes and you should too.
    -- (27/11/23) I HATE FLUID BOXES IT JUST *HAD* TO BE SOMETHING I ALREADY TRIED, but they work now.
    --(14 + 1/02/24) i just HADDD to finish the update, so i've spent... the entire day remaking this ONE entity? fuck fluidboxes, please fix them in 2.0 i beg
  },

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
},

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
},

  {
    type = "assembling-machine",
    name = "pm-atmospheric-condenser",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/atmospheric-condenser.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-atmospheric-condenser" },
    max_health = 450,
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.4 + -0.1, -2.4 + -0.1 }, { 2.4 + 0.1, 2.4 + 0.1 } },
    corpse = "pm-atmospheric-condenser",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = { "pm-atmospheric-condensing" },
    module_slots = 3,
    allowed_effects = PM.all_effects_but("productivity"),
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = -2}
    },
    energy_usage = "500kW",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance * 2,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser.png",
          width = 320,
          height = 316,
          frame_count = 56,
          line_length = 8,
          scale = 0.5,
        },
        {
          filename =
          "__periodic-madness__/graphics/entities/buildings/atmospheric-condenser/atmospheric-condenser-shadow.png",
          width = 320,
          height = 316,
          frame_count = 56,
          line_length = 8,
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
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, -2} }},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-2, 0} }},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {2, 0} }},
      },
    },
  },

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
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",

    },
    energy_usage = "275kW",
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
          {flow_direction = "input", direction = defines.direction.north, position = {-1, -1}}
        }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "input", direction = defines.direction.north, position = {1, -1}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "output", direction = defines.direction.south, position = {-1, 1}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {flow_direction = "output", direction = defines.direction.south, position = {1, 1}}
        }
      }
    },
  },
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
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
  },

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
    energy_usage = "650kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 10},
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
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
    },
    {

      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 2000,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
    },
  },
  },
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
      },
    },
    collision_box = {{-0.9, -0.9 }, { 0.9, 0.9 }},
    selection_box = {{-1.1, -1.1 }, { 1.1, 1.1 }},
    crafting_categories = {"pm-coldening"},
    energy_usage = "550kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      emissions_per_minute = {pollution = 2},
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "water",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0.5, -0.5}}},
      },
    },
  },
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
    module_slots = 1,
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
    energy_usage = "750kW",
    crafting_speed = 1.4 + 0.1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 8},
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 2000,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
      },
    },
  },
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
      },
    },
    collision_box = {{-0.9, -0.9 }, { 0.9, 0.9 }},
    selection_box = {{-1.1, -1.1 }, { 1.1, 1.1 }},
    crafting_categories = {"pm-coldening"},
    energy_usage = "750kW",
    crafting_speed = 1.4 + 0.1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      emissions_per_minute = {pollution = 1},
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        filter = "pm-coolant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0.5, -0.5}}},
      },
    },
  },

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
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      emissions_per_minute = {pollution = 2},
      fluid_box =
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        filter = "pm-heavy-lubricant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0, -3}}},
      },
      --TODO: ask factorio server why you cant have multiple fluid boxes for this.
    },
    energy_usage = "625kW",
    graphics_set = 
  {
    animation =
    {
      layers =
      {
         {
           filename =
           "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler.png",
           width = 32 * 7 * 2,
           height = 32 * 7 * 2,
           frame_count = 32,
           line_length = 8,
           animation_speed = 0.25,
           shift = util.by_pixel(-2, 0),
           scale = 0.575,
         },
         {
           filename =
           "__periodic-madness__/graphics/entities/buildings/circuit-megassembler/circuit-megassembler-shadow.png",
           width = 32 * 7 * 2,
           height = 32 * 7 * 2,
           frame_count = 32,
           line_length = 4,
           draw_as_shadow = true,
           shift = util.by_pixel(64, 10),
           animation_speed = 0.25,
           scale = 0.575
         },
      }
    }
  }
},
  {
    type = "pipe",
    name = "pm-stainless-steel-pipe",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pipe.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-stainless-steel-pipe" },
    max_health = 800,
    corpse = "pipe-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 75,
      },
      {
        type = "impact",
        percent = 70,
      },
      {
        type = "acid",
        percent = 85,
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
      pipe_connections =
      {
        { direction = defines.direction.north, position = {0, 0} },
        { direction = defines.direction.east, position = {0, 0} },
        { direction = defines.direction.south, position = {0, 0} },
        { direction = defines.direction.west, position = {0, 0} }
      },
      hide_connection_info = true
    },
    impact_category = "metal",
    pictures =
    {
      straight_vertical_single =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        scale = 0.5,
      },
      straight_vertical =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      straight_vertical_window =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      straight_horizontal_window =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      straight_horizontal =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      corner_up_right =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      corner_up_left =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      corner_down_right =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      corner_down_left =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      t_up =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      t_down =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      t_right =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      t_left =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      cross =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-cross.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      ending_up =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-ending-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      ending_down =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-ending-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      ending_right =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-ending-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      ending_left =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-ending-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      horizontal_window_background =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      vertical_window_background =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe/stainless-steel-pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/pipe/fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5,
      },
      low_temperature_flow =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18,
      },
      middle_temperature_flow =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18,
      },
      high_temperature_flow =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18,
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
        direction_count = 1,
      },
    },
    horizontal_window_bounding_box = { { -0.25, -0.28125 }, { 0.25, 0.15625 } },
    vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
  },
  {
    type = "pipe-to-ground",
    name = "pm-stainless-steel-pipe-to-ground",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pipe-to-ground.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "pm-stainless-steel-pipe-to-ground" },
    max_health = 700,
    corpse = "pipe-remnants",
    resistances = {
      {
        type = "fire",
        percent = 75,
      },
      {
        type = "impact",
        percent = 60,
      },
      {
        type = "acid",
        percent = 85
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { direction = defines.direction.north, position = {0, 0} },
        {
          connection_type = "underground",
          direction = defines.direction.south,
          position = {0, 0},
          max_underground_distance = 20
        }
      },
      hide_connection_info = true
    },
    impact_category = "metal",
    pictures =
    {
      north =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe-to-ground/stainless-steel-pipe-to-ground-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      south =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe-to-ground/stainless-steel-pipe-to-ground-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      west =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe-to-ground/stainless-steel-pipe-to-ground-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
      east =
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/stainless-steel-pipe-to-ground/stainless-steel-pipe-to-ground-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
      },
    },
  },

  {
    type = "lab",
    name = "pm-science-center",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/science-center.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "pm-science-center" },
    max_health = 600,
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
    inputs = pm_lab_inputs,
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
  },
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
},
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
    pictures =
    {
      north =
      {
        structure =
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
      },
      east =
      {
        structure =
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
      },
      west =
      {
        structure =
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
      },
      south =
      {
        structure =
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
        volume = 1000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.west, position = {-1, 0}}},
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east, position = {1, 0}}},
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
  },
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
          {flow_direction = "input", direction = defines.direction.south, position = {0, 1}}
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
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
  },
  {
    type = "furnace",
    name = "pm-air-filterer",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/air-filterer.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation", },
    minable = { mining_time = 0.5, result = "pm-air-filterer" },
    max_health = 270 + 4 + 1,
    corpse = "pm-air-filterer",
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
    module_slots = 2,
    allowed_effects = PM.all_effects(),
    source_inventory_size = 1,
    result_inventory_size = 1,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    crafting_categories = { "pm-air-filtering" },
    energy_usage = "1kW",
    crafting_speed = 1,
    energy_source = {type = "void"},
    emissions_per_minute = -50,
    graphics_set = 
  {
    animation =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/air-filterer/air-filterer.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 34 + 1,
          line_length = 7,
          scale = 0.5,
          shift = util.by_pixel(2, -10),
        },
        {
          filename = "__periodic-madness__/graphics/entities/buildings/air-filterer/air-filterer-shadow.png",
          priority = "high",
          width = 174,
          height = 171,
          frame_count = 1,
          line_length = 1,
          repeat_count = 34 + 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, -2.25),
          scale = 0.5
        }
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
    energy_usage = "420kW",
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
        pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  },

  {
    type = "assembling-machine",
    name = "pm-greenhouse",
    icon_size = 64,
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
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }},
      },
      {

        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -2} }},
      },
      {

        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-2, 0} }},
      },
      {

        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {2, 0} }},
      },
    },
  },
  {
    type = "furnace",
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
    crafting_speed = 2,
    source_inventory_size = 0,
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
        volume = 1000,
        filter = "pm-agar-solution",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east, position = {2, 0}}},
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
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east, position = {0, -2}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.west, position = {0, 2}}},
      }
    }
  }
  },
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
  },
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
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "mining-drill",
    name = "pm-electric-mining-drill-2",
    icon = "__periodic-madness__/graphics/icons/buildings/electric-mining-drill-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.7, result = "pm-electric-mining-drill-2" },
    max_health = 700,
    resource_categories = { "basic-solid" },
    corpse = "electric-mining-drill-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5,  -1.5 }, {1.5,  1.5 }},
    input_fluid_box =
    {
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections =
      {
        { direction = defines.direction.west, position = {-1, 0}},
        { direction = defines.direction.east, position = {1, 0}},
        { direction = defines.direction.south, position = {0, 1}}
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-N.png",
              line_length = 1,
              width = 190,
              height = 208,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 60,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-3, -44),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, -3),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-E.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 74,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -8),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 222,
              height = 182,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(10, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S.png",
              line_length = 1,
              width = 184,
              height = 192,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -1),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-W.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 60,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-31, -13),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 200,
              height = 182,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(-5, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.6
        north = { { 0, 0 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.5 }, { 0, 0.2 }, { 0, -0.1 }, { 0, -0.5 }, { 0, -0.15 }, { 0, 0.25 }, { 0, 0.6 }, { 0, 0.3 } },
        -- Bounds -1 - 0
        east = { { 0, 0 }, { -0.4, 0 }, { -0.1, 0 }, { -0.5, 0 }, { -0.75, 0 }, { -1, 0 }, { -0.65, 0 }, { -0.3, 0 }, { -0.9, 0 }, { -0.6, 0 }, { -0.3, 0 } },
        -- Bounds -1 - 0
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, -0.5 }, { 0, -0.75 }, { 0, -1 }, { 0, -0.65 }, { 0, -0.3 }, { 0, -0.9 }, { 0, -0.6 }, { 0, -0.3 } },
        -- Bounds 0 - 1
        west = { { 0, 0 }, { 0.4, 0 }, { 0.1, 0 }, { 0.5, 0 }, { 0.75, 0 }, { 1, 0 }, { 0.65, 0 }, { 0.3, 0 }, { 0.9, 0 }, { 0.6, 0 }, { 0.3, 0 } }
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 42,
                height = 58,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              pm_electric_mining_drill2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal2_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              pm_electric_mining_drill2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal2_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 46,
                height = 56,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 48,
                height = 36,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 46,
                height = 54,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-25, -11),
                scale = 0.5
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename =
            "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 136,
            height = 148,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(21, 10),
            scale = 0.5
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 84,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 190,
                height = 104,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 27),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            priority = "high",
            filename =
            "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 134,
            height = 140,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-22, 12),
            scale = 0.5
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        -- electric_mining_drill_secondary_light
      }
    },
    wet_mining_graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 48, south = 48, west = 48 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 190,
              height = 198,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -7),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 60,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-3, -44),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 248,
              height = 222,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 1),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 194,
              height = 208,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(1, -9),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 60,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-31, -13),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 260,
              height = 202,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(9, 6),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 192,
              height = 208,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(1, -5),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 248,
              height = 192,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 5),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename =
              "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 194,
              height = 208,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -9),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 74,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -8),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 226,
              height = 202,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(9, 5),
              repeat_count = 5,
              scale = 0.5
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.2
        north = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 } },
        -- Bounds -0.3 - 0
        east = { { 0, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.25, 0 } },
        -- Bounds -0.7 - 0
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.7 }, { 0, -0.3 } },
        -- Bounds 0 - 0.3
        west = { { 0, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.25, 0 } }
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 42,
                height = 58,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front()
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 46,
                height = 56,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 48,
                height = 36,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 46,
                height = 54,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-25, -11),
                scale = 0.5
              }
            }
          }
        },

        -- fluid window background (bottom)
        {
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -49,
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 30,
                height = 20,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -43),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 28,
                height = 18,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -43),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
                line_length = 1,
                width = 24,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 26,
                height = 16,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -42),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
                line_length = 1,
                width = 24,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 172,
                height = 90,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 9),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 80,
                height = 106,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 10),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
                line_length = 1,
                width = 172,
                height = 22,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 82,
                height = 110,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-15, 9),
                scale = 0.5
              }
            }
          }
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 178,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 9),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 80,
                height = 102,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 11),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
                line_length = 1,
                width = 178,
                height = 28,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 82,
                height = 106,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-15, 10),
                scale = 0.5
              }
            }
          }
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 172,
                height = 88,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 10),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 78,
                height = 102,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 11),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
                line_length = 1,
                width = 172,
                height = 22,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 78,
                height = 106,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-14, 10),
                scale = 0.5
              }
            }
          }
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 200,
                height = 130,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 16),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 208,
                height = 144,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 84,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-S-wet-front.png",
                line_length = 1,
                width = 192,
                height = 140,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-2/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 208,
                height = 148,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 11),
                scale = 0.5
              }
            }
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        -- electric_mining_drill_secondary_light
      }
    },

    integration_patch =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 216,
        height = 218,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-1, 1),
        repeat_count = 5,
        scale = 0.5
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 236,
        height = 214,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(3, 2),
        repeat_count = 5,
        scale = 0.5
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 214,
        height = 230,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, 3),
        repeat_count = 5,
        scale = 0.5
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 234,
        height = 214,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-4, 1),
        repeat_count = 5,
        scale = 0.5
      }
    },
    mining_speed = 1,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = {pollution = 7},
      usage_priority = "secondary-input"
    },
    energy_usage = "120kW",
    resource_searching_radius = 2.491,
    vector_to_place_result = { 0, -1.85 },
    module_slots = 4,
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = { r = 78, g = 173, b = 255 },
    fast_replaceable_group = "mining-drill",
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
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
    module_slots = 3,
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
    energy_usage = "200kW",
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
        pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  },
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
    energy_usage = "400kW",
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
        volume = 200,
        pipe_connections = {{ flow_direction = "input", direction = defines.direction.east, position = { 2, 0 }}},
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
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "pm-coolant",
        pipe_connections = {{flow_direction = "input", direction = defines.direction.west, position = { -2, 0 }} },
      },
    },
  },
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
  },
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
        pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 3}}},
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -3}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-3, 0}}},
      },
    },
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      fluid_usage_per_tick = 5, --HACK: Set a *real* value instead of this outta my ass one
      fluid_box =
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "pm-proton-beam",
        pipe_connections = {{ flow_direction="input", direction = defines.direction.east, position = {3, 0}}},
      },
    },
  },
  {
    type = "boiler",
    name = "pm-heat-exchanger-2",
    icon = "__periodic-madness__/graphics/icons/buildings/heat-exchanger-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.8, result = "pm-heat-exchanger-2" },
    max_health = 600,
    corpse = "heat-exchanger-remnants",
    dying_explosion = "heat-exchanger-explosion",
    mode = "output-to-separate-pipe",
    fast_replaceable_group = "pm-heat-exchangers",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 60
      },
      {
        type = "impact",
        percent = 40
      }
    },
    collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
    selection_box = { { -1.5, -1 }, { 1.5, 1 } },
    target_temperature = 500,
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east, position = {1, 0.5}}
      },
      production_type = "input",
      filter = "water"
    },
    output_fluid_box =
    {
      volume  = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north, position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "11.64MW",
    energy_source =
    {
      type = "heat",
      max_temperature = 2500,
      specific_heat = "1MJ",
      max_transfer = "2GW",
      min_working_temperature = 750,
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = { 0, 0.5 },
          direction = defines.direction.south --[[@as int]]
        }
      },
      pipe_covers =
          make_4way_animation_from_spritesheet(
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
              width = 64,
              height = 64,
              direction_count = 4,
              scale = 0.5
            }),
      heat_pipe_covers =
          make_4way_animation_from_spritesheet(
            apply_heat_pipe_glow {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              width = 64,
              height = 64,
              direction_count = 4,
              scale = 0.5
            }),
      heat_picture =
      {
        north = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
              priority = "extra-high",
              width = 44,
              height = 96,
              shift = util.by_pixel(-0.5, 8.5),
              scale = 0.5
            },
        east = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
              priority = "extra-high",
              width = 80,
              height = 80,
              shift = util.by_pixel(-21, -13),
              scale = 0.5
            },
        south = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
              priority = "extra-high",
              width = 28,
              height = 40,
              shift = util.by_pixel(-1, -30),
              scale = 0.5
            },
        west = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
              priority = "extra-high",
              width = 64,
              height = 76,
              shift = util.by_pixel(23, -13),
              scale = 0.5
            }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/heat-exchanger.ogg",
        volume = 0.65
      },
      --max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
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
              filename = "__periodic-madness__/graphics/entities/buildings/heat-exchanger-2/heatex-N-idle.png",
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
        }
      },
      east =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/heat-exchanger-2/heatex-E-idle.png",
              priority = "extra-high",
              width = 211,
              height = 301,
              shift = util.by_pixel(-1.75, 1.25),
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
        }
      },
      south =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/heat-exchanger-2/heatex-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 201,
              shift = util.by_pixel(4, 10.75),
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
          }
        }
      },
      west =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/heat-exchanger-2/heatex-W-idle.png",
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
          }
        }
      },
    },
    fire = {},
    fire_glow = {},
    burning_cooldown = 20,
    water_reflection = boiler_reflection()
  }--[[@as data.BoilerPrototype]],
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
    crafting_speed = 0.5,
    energy_usage = "800kW",
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
        {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  },
  {
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
    collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    lower_layer_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      width = 320,
      height = 316,
      scale = 0.5,
      shift = util.by_pixel(-1, -5)
    },
    heat_lower_layer_picture = apply_heat_pipe_glow
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
          width = 320,
          height = 316,
          scale = 0.5,
          shift = util.by_pixel(-0.5, -4.5)
        },
    picture =
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
          width = 320,
          height = 320,
          line_length = 6,
          frame_count = 24,
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
        sheet = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
              width = 64,
              height = 64,
              variation_count = 12,
              scale = 0.5
            }
      },

      heat_connection_patches_disconnected =
      {
        sheet = apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
              width = 64,
              height = 64,
              variation_count = 12,
              y = 64,
              scale = 0.5
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
      }
    },
  },
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
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, 2}}},
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2500,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-2, 0}}},
      },
    },
  },
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
      },
      {

        production_type = "output",
        pipe_covers = pipecoverspictures(),
        priority = "medium",
        volume = 200,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
      },
    },
    crafting_categories = {"pm-evaporation"},
    crafting_speed = 1.25,
    energy_usage = "350kW",
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
  },
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
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east, position = {2.5, -0.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.east, position = {2.5, 0.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.west, position = {-2.5, -0.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.west, position = {-2.5, 0.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -2.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.north, position = {0.5, -2.5}}},
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.south, position = {-0.5, 2.5}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 750,
        pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 2.5}}},
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
        pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
        secondary_draw_orders = { north = -1 }
      },
    },
  },
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
  },
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
    graphics_set = 
    {
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
    }
  }--[[@as data.BurnerGeneratorPrototype]],
  {
    type = "pump",
    name = "pm-stainless-steel-pump",
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pump.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation"},
    minable = {mining_time = 0.35, result = "pm-stainless-steel-pump" },
    max_health = 400,
    fast_replaceable_group = "pipe",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/pump.ogg",
        volume = 0.3
      },
      audible_distance_modifier = 0.5,
      max_sounds_per_type = 2
    },
    damaged_trigger_effect = hit_effects.entity(),
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fluid_box =
    {
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { direction = defines.direction.north, position = {0, -0.5}, flow_direction = "output" },
        { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input" }
      }
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    energy_usage = "35kW",
    pumping_speed = 400,
    impact_category = "metal-large",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    animations =
    {
      north =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stainless-steel-pump/pump-north.png",
        width = 103,
        height = 164,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(8, 3.5)   -- {0.515625, 0.21875}
      },
      east =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stainless-steel-pump/pump-east.png",
        width = 130,
        height = 109,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(-0.5, 1.75)   --{-0.03125, 0.109375}
      },
      south =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stainless-steel-pump/pump-south.png",
        width = 114,
        height = 160,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(12.5, -8)   -- {0.75, -0.5}
      },
      west =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stainless-steel-pump/pump-west.png",
        width = 131,
        height = 111,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        animation_speed = 0.5,
        shift = util.by_pixel(-0.25, 1.25)   -- {-0.015625, 0.078125}
      }
    },
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = require("__base__.prototypes.entity.pump-connector"),
    fluid_animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
        apply_runtime_tint = true,
        width = 38,
        height = 22,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        shift = util.by_pixel(-0.250, -16.750)
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
        width = 35,
        height = 46,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        shift = util.by_pixel(6.25, -8.5)
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
        width = 38,
        height = 45,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        shift = util.by_pixel(0.5, -9.25)
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
        width = 35,
        height = 47,
        scale = 0.5,
        line_length = 8,
        frame_count = 32,
        shift = util.by_pixel(-6.5, -9.5)
      }
    },
    glass_pictures =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-glass.png",
        width = 64,
        height = 128,
        scale = 0.5
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-glass.png",
        width = 128,
        height = 192,
        scale = 0.5
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-glass.png",
        width = 64,
        height = 128,
        scale = 0.5
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-glass.png",
        width = 192,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-16, 0)
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "sticker",
    name = "pm-bio-poison-sticker",
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
      line_length = 5,
      width = 42,
      height = 48,
      frame_count = 50,
      animation_speed = 0.5,
      tint = { r = 0.612, g = 0.063, b = 0.729, a = 0.694 },   -- #ffa900b1
      shift = util.by_pixel(2, -0.5),
      scale = 0.5
    },
    duration_in_ticks = 10 * 60,
    damage_interval = 60,
    damage_per_tick =
    {
      amount = 6,
      type = "poison"
    }
  },
  {
    type = "projectile",
    name = "pm-sodium-grenade",
    flags = { "not-on-map" },
    acceleration = 0.008,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,     -- soft decoratives are decoratives with grows_through_rail_path = true
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,     -- if true, destroys only decoratives that have trigger_effect set
              radius = 2.25                              -- large radius for demostrative purposes
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    light = { intensity = 0.5, size = 4 },
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      draw_as_glow = true,
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 48,
      height = 54,
      shift = util.by_pixel(0.5, 0.5),
      priority = "high",
      scale = 0.5
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 50,
      height = 40,
      shift = util.by_pixel(2, 6),
      priority = "high",
      draw_as_shadow = true,
      scale = 0.5
    }
  },
  {
    type = "projectile",
    name = "pm-poison-shotgun-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 5, type = "physical"}
          },
          {
            type = "create-sticker",
            sticker = "pm-bio-poison-sticker",
            duration_in_ticks = 10 * 60,
            damage_interval = 60,
            show_in_tooltip = true
          }
        }
      },
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      tint = {r = 1, g = 0, b = 1},
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "pm-slug-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.1, -0.3}, {0.1, 0.3 }},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 16, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "pm-poison-slug-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.1, -0.3}, {0.1, 0.3 }},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = 
            {
              amount = 14, type = "physical",
            }
          },
          {
            type = "create-sticker",
            sticker = "pm-bio-poison-sticker",
            duration_in_ticks = 10 * 60,
            damage_interval = 60,
            show_in_tooltip = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    }
  },
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
    }),
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
            direction = defines.direction.north,
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
            direction = defines.direction.north,
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
            direction = defines.direction.south,
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
            direction = defines.direction.south,
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
  },
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
    module_slots = 3,
    icon_draw_specification = {shift = {0, -0.1}},
    icons_positioning =
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.8}}
    },
    allowed_effects = PM.all_effects(),
    crafting_categories = {"smelting"},
    effect_receiver = {base_effect = { productivity = 0.05}},
    result_inventory_size = 1,
    crafting_speed = 3,
    energy_usage = "180kW",
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
          direction = defines.direction.south --[[@as int]]
        },
        {
          position = {0, -1},
          direction = defines.direction.north --[[@as int]]
        },
        {
          position = {1, 0},
          direction = defines.direction.east --[[@as int]]
        },
        {
          position = {-1, 0},
          direction = defines.direction.west --[[@as int]]
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
  },
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
    module_slots = 3,
    icon_draw_specification = {shift = {0, -0.1}},
    icons_positioning =
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.8}}
    },
    allowed_effects = PM.all_effects(),
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    crafting_speed = 2.5,
    energy_usage = "220kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 0.5}
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
  },
  {
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
      fuel_categories = {"pm-oil-canisters"},
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
          direction = defines.direction.north --[[@as int]]
        },
        {
          position = { 0, -1 },
          direction = defines.direction.south --[[@as int]]
        },
        {
          position = { -1, 0 },
          direction = defines.direction.west --[[@as int]]
        },
        {
          position = { 1, 0 },
          direction = defines.direction.east --[[@as int]]
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
},
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
},
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
},
{
  type = "reactor",
  name = "pm-rtg",
  icon = "__periodic-madness__/graphics/icons/buildings/polonium-reactor.png",
  icon_size = 128,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.7, result = "pm-polonium-reactor" },
  max_health = 1200,
  corpse = "nuclear-reactor-remnants",
  dying_explosion  = "nuclear-reactor-explosion",
  consumption = "20MW",
  neighbour_bonus = 0.05,
  energy_source =
  {
    type = "burner",
    fuel_categories = {"pm-polonium"},
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
  collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
  selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
  picture =
  {
    layers =
    {
      {
        filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
        width = 320,
        height = 320,
        line_length = 6,
        frame_count = 24,
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
  heat_buffer =
  {
    max_temperature = 0,
    specific_heat = "10MJ",
    max_transfer = "10GW",
    minimum_glow_temperature = 0,
    min_working_temperature = 0,
    default_temperature = 0,
    connections = {},
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
},
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
  energy_usage = "1MW",
  crafting_speed = 3,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 6},
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
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
    },
    {

      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
    },

    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.east, position = {0.5, -0.5}}},
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "input", direction = defines.direction.west, position = {-0.5, 0.5}}},
    },
  },
},
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
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {-0.5, -0.5}}},
    },

    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      priority = "medium",
      volume = 3500,
      pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0.5, 0.5}}},
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
    destroy_non_fuel_fluid = true,
    emissions_per_minute = {pollution = 0.25},
    fluid_box =
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 2000,
      filter = "pm-coolant",
      pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0.5, -0.5}}},
    },
  },
},
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
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {1, -2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {-1, -2} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-2, 0} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {2, 0} }},
  },
},
},
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
  crafting_speed = 1.25,
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
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-1, 2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {1, -2} }},
  },
  {
    production_type = "input",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {-1, -2} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-2, 0} }},
  },
  {
    production_type = "output",
    pipe_covers = pipecoverspictures(),
    volume = 1500,
    pipe_connections = {{ flow_direction="output", direction = defines.direction.east, position = {2, 0} }},
  },
},
},
{
  type = "inserter",
  name = "pm-express-inserter",
  icon = "__periodic-madness__/graphics/icons/buildings/express-inserter.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = { mining_time = 0.15, result = "pm-express-inserter" },
  max_health = 250,
  corpse = "fast-inserter-remnants",
  dying_explosion = "fast-inserter-explosion",
  resistances =
  {
    {
      type = "fire",
      percent = 90
    },
    {
      type = "impact",
      percent = 45
    },
  },
  collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
  selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
  damaged_trigger_effect = hit_effects.entity(),
  pickup_position = {0, -1},
  insert_position = {0, 1.2},
  energy_per_movement = "10kJ",
  energy_per_rotation = "10kJ",
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "0.7kW"
  },
  extension_speed = 0.2,
  rotation_speed = 0.04 * 1.5,
  filter_count = 5,
  icon_draw_specification = {scale = 0.5},
  fast_replaceable_group = "inserter",
  impact_category = "metal",
  open_sound = sounds.inserter_open,
  close_sound = sounds.inserter_close,
  working_sound = sounds.inserter_fast,
  hand_base_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-inserter/express-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25
  },
  hand_closed_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-inserter/express-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25
  },
  hand_open_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-inserter/express-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25
  },
  platform_picture =
  {
    sheet =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-inserter/express-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5-1),
      scale = 0.5
    }
  },
  circuit_connector = circuit_connector_definitions["inserter"],
  circuit_wire_max_distance = inserter_circuit_wire_max_distance,
  default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
{
  type = "inserter",
  name = "pm-express-long-handed-inserter",
  icon = "__periodic-madness__/graphics/icons/buildings/express-long-handed-inserter.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 0.15, result = "pm-express-long-handed-inserter"},
  max_health = 275,
  corpse = "long-handed-inserter-remnants",
  dying_explosion = "long-handed-inserter-explosion",
  resistances =
  {
    {
      type = "fire",
      percent = 90
    },
    {
      type = "impact",
      percent = 45
    },
  },
  collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
  selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
  damaged_trigger_effect = hit_effects.entity(),
  starting_distance = 1.7,
  pickup_position = {0, -2},
  insert_position = {0, 2.2},
  energy_per_movement = "8kJ",
  energy_per_rotation = "8kJ",
  extension_speed = 0.1,
  rotation_speed = (0.02 * 1.5) * 1.5,
  filter_count = 5,
  icon_draw_specification = {scale = 0.5},
  hand_size = 1.5,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "0.55kW"
  },
  fast_replaceable_group = "long-handed-inserter",
  impact_category = "metal",
  open_sound = sounds.inserter_open,
  close_sound = sounds.inserter_close,
  working_sound = sounds.inserter_long_handed,
  hand_base_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-long-handed-inserter/express-long-handed-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25
  },
  hand_closed_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-long-handed-inserter/express-long-handed-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25
  },
  hand_open_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-long-handed-inserter/express-long-handed-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25
  },
  platform_picture =
  {
    sheet =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-long-handed-inserter/express-long-handed-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5-1),
      scale = 0.5
    }
  },
  circuit_connector = circuit_connector_definitions["inserter"],
  circuit_wire_max_distance = inserter_circuit_wire_max_distance,
  default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
{
  type = "inserter",
  name = "pm-express-bulk-inserter",
  icon = "__periodic-madness__/graphics/icons/buildings/express-bulk-inserter.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  bulk = true,
  minable = { mining_time = 0.2, result = "pm-express-bulk-inserter" },
  max_health = 275,
  corpse = "bulk-inserter-remnants",
  dying_explosion = "bulk-inserter-explosion",
  resistances =
  {
    {
      type = "fire",
      percent = 90
    },
    {
      type = "impact",
      percent = 45
    },
  },
  collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
  selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
  damaged_trigger_effect = hit_effects.entity(),
  starting_distance = 0.85,
  pickup_position = {0, -1},
  insert_position = {0, 1.2},
  energy_per_movement = "35kJ",
  energy_per_rotation = "35kJ",
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "1.5kW"
  },
  extension_speed = 0.2,
  rotation_speed = 0.04 * 1.5,
  filter_count = 5,
  icon_draw_specification = {scale = 0.5},
  fast_replaceable_group = "inserter",
  open_sound = sounds.inserter_open,
  close_sound = sounds.inserter_close,
  working_sound = sounds.inserter_fast,
  hand_base_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-bulk-inserter/express-bulk-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25
  },
  hand_closed_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-bulk-inserter/express-bulk-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25
  },
  hand_open_picture =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/express-bulk-inserter/express-bulk-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25
  },
  platform_picture =
  {
    sheet =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-bulk-inserter/express-bulk-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5-1),
      scale = 0.5
    }
  },
  circuit_connector = circuit_connector_definitions["inserter"],
  circuit_wire_max_distance = inserter_circuit_wire_max_distance,
  default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
}--[[@as data.EntityPrototype[] ]])
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
    pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 500,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
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
    pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
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
    pipe_connections = {{flow_direction="input", direction = defines.direction.north, position = {0, -1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.south, position = {0, 1}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "input",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="input", direction = defines.direction.west, position = {-1, 0}}},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler3pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 2000,
    pipe_connections = {{flow_direction="output", direction = defines.direction.east, position = {1, 0}}},
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
data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluid_consumption = 0.2 * 2
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

data.raw["storage-tank"]["storage-tank"].next_upgrade = "pm-stainless-steel-storage-tank"
data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = "pm-storage-tank"

data.raw["container"]["steel-chest"].next_upgrade = "pm-stainless-steel-chest"

data.raw["lab"]["lab"].inputs = {"automation-science-pack", "logistic-science-pack","military-science-pack", "pm-advanced-advanced-transition-metal-science-pack" }

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

data.raw["boiler"]["heat-exchanger"].energy_consumption = "5.82MW"
data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "pm-heat-exchangers"
data.raw["boiler"]["heat-exchanger"].next_upgrade = "pm-heat-exchanger-2"
data.raw["boiler"]["heat-exchanger"].energy_source.min_working_temperature = 400
data.raw["boiler"]["heat-exchanger"].energy_source.minimum_glow_temperature = 250
data.raw["boiler"]["heat-exchanger"].energy_source.max_temperature = 750
data.raw["boiler"]["heat-exchanger"].target_temperature = 750

data.raw["assembling-machine"]["chemical-plant"].module_slots = 2
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "pm-chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "pm-chemical-plant-2"

data.raw["mining-drill"]["burner-mining-drill"].energy_usage = "115kW"
table.insert(data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_categories, "pm-oil-canisters")

data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature = 750
data.raw["heat-pipe"]["heat-pipe"].heat_buffer.min_temperature_gradient = 1.75
data.raw["heat-pipe"]["heat-pipe"].map_color = {r = 0.6, g = 0.506, b = 0.353}

data.raw["combat-robot"]["defender"].time_to_live = 60 * 60

data.raw["pump"]["pump"].pumping_speed = 100

data.raw["unit"]["big-biter"].resistances =
  {
    {
      type = "physical",
      decrease = 8,
      percent = 10
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "fire",
      percent = 15
    }
  }
  data.raw["unit"]["big-spitter"].resistances =
  {
    {
      type = "explosion",
      percent = 15
    },
    {
      type = "fire",
      percent = 5
    },
    {
      type = "poison",
      decrease = 10,
      percent = 25
    },
    {
      type = "acid",
      decrease = 10 * 1.5,
      percent = 25 * 1.4
    },
  }
  data.raw["unit"]["behemoth-biter"].resistances =
  {
    {
      type = "physical",
      decrease = 12,
      percent = 10
    },
    {
      type = "explosion",
      decrease = 12,
      percent = 10
    },
    {
      type = "fire",
      decrease = 10,
      percent = 25
    }
  }
  data.raw["unit"]["behemoth-spitter"].resistances =
  {
    {
      type = "explosion",
      percent = 30
    },
    {
      type = "fire",
      decrease = 2,
      percent = 15
    },
    {
      type = "poison",
      decrease = 15,
      percent = 40
    },
    {
      type = "acid",
      decrease = 40 * 1.5,
      percent = 50 * 1.4
    }
  }

data.raw["transport-belt"]["fast-transport-belt"].map_color = red_belt
data.raw["underground-belt"]["fast-underground-belt"].map_color = red_belt
data.raw["splitter"]["fast-splitter"].map_color = red_belt
data.raw["transport-belt"]["express-transport-belt"].map_color = blue_belt
data.raw["underground-belt"]["express-underground-belt"].map_color = blue_belt
data.raw["splitter"]["express-splitter"].map_color = blue_belt

data.raw["solar-panel"]["solar-panel"].map_color = {r = 0.356, g = 0.495, b = 0.62}

data.raw["transport-belt"]["fast-transport-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"
data.raw["splitter"]["fast-splitter"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"
data.raw["underground-belt"]["fast-underground-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"

data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set = orange_fast_belt_animation_set
data.raw["splitter"]["fast-splitter"].belt_animation_set = orange_fast_belt_animation_set
data.raw["splitter"]["fast-splitter"].structure =
{
  north =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-north.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 160,
    height = 70,
    shift = util.by_pixel(7, 0),
    scale = 0.5
  },
  east =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-east.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 84,
    shift = util.by_pixel(4, 13),
    scale = 0.5
  },
  south =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-south.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 164,
    height = 64,
    shift = util.by_pixel(4, 0),
    scale = 0.5
  },
  west =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-west.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 86,
    shift = util.by_pixel(5, 12),
    scale = 0.5
  }
}
data.raw["splitter"]["fast-splitter"].structure_patch =
{
  north = util.empty_sprite(),
  east =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-east-top_patch.png",
    frame_count = 1,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 104,
    shift = util.by_pixel(4, -20),
    scale = 0.5
  },
  south = util.empty_sprite(),
  west =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-west-top_patch.png",
    frame_count = 1,
    line_length = 8,
    priority = "extra-high",
    width = 94,
    height = 96,
    shift = util.by_pixel(5, -18),
    scale = 0.5
  }
}
data.raw["underground-belt"]["fast-underground-belt"].belt_animation_set = orange_fast_belt_animation_set
data.raw["underground-belt"]["fast-underground-belt"].structure =
{
  direction_in =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192,
      scale = 0.5
    }
  },
  direction_out =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      scale = 0.5
    }
  },
  direction_in_side_loading =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192 * 3,
      scale = 0.5
    }
  },
  direction_out_side_loading =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192 * 2,
      scale = 0.5
    }
  }
}

data.raw["transport-belt"]["fast-transport-belt"].map_color = orange_belt
data.raw["underground-belt"]["fast-underground-belt"].map_color = orange_belt
data.raw["splitter"]["fast-splitter"].map_color = orange_belt
data.raw["transport-belt"]["express-transport-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].max_distance = 12 --TODO: Confirm this is what you wanted
--yes, yes it is what i wanted
data.raw["splitter"]["express-splitter"].speed = 0.125
data.raw["splitter"]["fast-splitter"].next_upgrade = "pm-advanced-splitter"
data.raw["transport-belt"]["fast-transport-belt"].next_upgrade = "pm-advanced-transport-belt"
data.raw["underground-belt"]["fast-underground-belt"].next_upgrade = "pm-advanced-underground-belt"

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

data.raw["inserter"]["long-handed-inserter"].rotation_speed = 0.02 * 1.5

data.raw["locomotive"]["locomotive"].energy_source.burnt_inventory_size = 3
data.raw["car"]["car"].energy_source.burnt_inventory_size = 2
data.raw["car"]["tank"].energy_source.burnt_inventory_size = 2
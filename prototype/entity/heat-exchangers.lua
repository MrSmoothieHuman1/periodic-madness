local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "boiler",
    name = "pm-heat-exchanger-2",
    icon = "__periodic-madness__/graphics/icons/buildings/heat-exchanger-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.65, result = "pm-heat-exchanger-2" },
    max_health = 600,
    corpse = "heat-exchanger-remnants",
    dying_explosion = "heat-exchanger-explosion",
    mode = "output-to-separate-pipe",
    fast_replaceable_group = "pm-heat-exchangers",
    impact_category = "metal",
    custom_tooltip_fields =
    {
      {
        name = {"pm-tooltips.max-temperature"},
        value = {"pm-tooltips.temp-1000"}
      },
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    target_temperature = 750,
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
    energy_consumption = "15MW",
    energy_source =
    {
      type = "heat",
      max_temperature = 1000,
      specific_heat = "1MJ",
      max_transfer = "2GW",
      min_working_temperature = 750,
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = {0, 0.5},
          direction = defines.direction.south
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
        apply_heat_pipe_glow{
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
          width = 64,
          height = 64,
          direction_count = 4,
          scale = 0.5
        }),
      heat_picture =
      {
        north =
        {
          layers =
          {
            apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
              priority = "extra-high",
              width = 44,
              height = 96,
              shift = util.by_pixel(-0.5, 8.5),
              scale = 0.5
            },
            apply_heat_pipe_glow(util.sprite_load( "__base__/graphics/entity/heat-exchanger/heatex-N-glow",
              {
                priority = "extra-high",
                blend_mode = "additive",
                scale = 0.5
              }
            ))
          }

        },
        east =
        {
          layers =
          {
            apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
              priority = "extra-high",
              width = 80,
              height = 80,
              shift = util.by_pixel(-21, -13),
              scale = 0.5
            },
            apply_heat_pipe_glow(util.sprite_load( "__base__/graphics/entity/heat-exchanger/heatex-E-glow",
              {
                priority = "extra-high",
                blend_mode = "additive",
                scale = 0.5
              }
            ))
          }
        },
        south =
        {
          layers =
          {
            apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
              priority = "extra-high",
              width = 28,
              height = 40,
              shift = util.by_pixel(-1, -30),
              scale = 0.5
            },
            apply_heat_pipe_glow(util.sprite_load( "__base__/graphics/entity/heat-exchanger/heatex-S-glow",
              {
                priority = "extra-high",
                blend_mode = "additive",
                scale = 0.5
              }
            ))
          }
        },
        west =
        {
          layers =
          {
            apply_heat_pipe_glow
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
              priority = "extra-high",
              width = 64,
              height = 76,
              shift = util.by_pixel(23, -13),
              scale = 0.5
            },
             apply_heat_pipe_glow(util.sprite_load( "__base__/graphics/entity/heat-exchanger/heatex-W-glow",
              {
                priority = "extra-high",
                blend_mode = "additive",
                scale = 0.5
              }
            ))
          }
        }
      }
    },
    circuit_connector = circuit_connector_definitions["boiler"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/heat-exchanger.ogg",
        volume = 0.65,
        modifiers = volume_multiplier("main-menu", 0.7),
        audible_distance_modifier = 0.5,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    open_sound = sounds.steam_open,
    close_sound = sounds.steam_close,

    pictures =
    {
      north =
      {
        structure =
        {
          layers =
          {
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-N-idle",
            {
              priority = "extra-high",
              scale = 0.5
            }),
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-N-shadow",
            {
              priority = "extra-high",
              scale = 0.5,
              draw_as_shadow = true
            })
          }
        },
       fire = util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-N-fluid",
        {
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 32,
          animation_speed = 0.5,
          blend_mode = "additive",
          scale = 0.5,
        })
      },
      east =
      {
        structure =
        {
          layers =
          {
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-E-idle",
            {
              priority = "extra-high",
              scale = 0.5
            }),
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-E-shadow",
            {
              priority = "extra-high",
              scale = 0.5,
              draw_as_shadow = true
            })
          }
        },
        fire = util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-E-fluid",
        {
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 32,
          animation_speed = 0.5,
          blend_mode = "additive",
          scale = 0.5,
        })
      },
      south =
      {
        structure =
        {
          layers =
          {
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-S-idle",
            {
              priority = "extra-high",
              scale = 0.5
            }),
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-S-shadow",
            {
              priority = "extra-high",
              scale = 0.5,
              draw_as_shadow = true
            })
          }
        },
        fire = util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-S-fluid",
          {
            draw_as_glow = true,
            priority = "extra-high",
            frame_count = 32,
            animation_speed = 0.5,
            blend_mode = "additive",
            scale = 0.5
          })
      },
      west =
      {
        structure =
        {
          layers =
          {
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-W-idle",
            {
              priority = "extra-high",
              scale = 0.5
            }),
            util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-W-shadow",
            {
              priority = "extra-high",
              scale = 0.5,
              draw_as_shadow = true
            })
          }
        },
        fire = util.sprite_load("__base__/graphics/entity/heat-exchanger/heatex-W-fluid",
          {
            draw_as_glow = true,
            priority = "extra-high",
            frame_count = 32,
            animation_speed = 0.5,
            blend_mode = "additive",
            scale = 0.5
          })
      },
    },
    fire_flicker_enabled = true,
    fire_glow_flicker_enabled = true,
    burning_cooldown = 20,
    water_reflection = boiler_reflection()
  },
})
data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "pm-heat-exchangers"
data.raw["boiler"]["heat-exchanger"].next_upgrade = "pm-heat-exchanger-2"
data.raw["boiler"]["heat-exchanger"].energy_source.max_temperature = 750
data.raw["boiler"]["heat-exchanger"].target_temperature = 500
data.raw["boiler"]["heat-exchanger"].custom_tooltip_fields =
{
  {
    name = {"pm-tooltips.max-temperature"},
    value = {"pm-tooltips.temp-750"}
    },
}
data.raw["generator"]["steam-turbine"].maximum_temperature = 750
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
        percent = 60
      },
      {
        type = "impact",
        percent = 40
      }
    },
    collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
    selection_box = { { -1.5, -1 }, { 1.5, 1 } },
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
      filter = "water"
    },
    output_fluid_box =
    {
      volume  = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
      filter = "steam"
    },
    target_temperature = 750,
    energy_consumption = "15MW",
    energy_source =
    {
      type = "heat",
      max_temperature = 1000,
      specific_heat = "1MJ",
      max_transfer = "2GW",
      min_working_temperature = 750,
      minimum_glow_temperature = 600,
      connections =
      {
        {
          position = { 0, 0.5 },
          direction = defines.direction.south--[[@as int]] --[[@as int]]
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
            })--[[@as data.Sprite4Way]],
      heat_pipe_covers =
          make_4way_animation_from_spritesheet(
            apply_heat_pipe_glow {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              width = 64,
              height = 64,
              direction_count = 4,
              scale = 0.5
            })--[[@as data.Sprite4Way]],
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
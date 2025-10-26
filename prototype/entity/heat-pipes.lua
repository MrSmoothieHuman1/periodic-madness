data:extend({

    {
        type = "heat-pipe",
        name = "pm-heat-pipe-1",
        icon = "__periodic-madness__/graphics/icons/buildings/heat-pipe-1.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.05, result = "pm-heat-pipe-1"},
        max_health = 175,
        corpse = "heat-pipe-remnants",
        dying_explosion = "heat-pipe-explosion",
        random_corpse_variation = true,
        map_color = {r = 0.6, g = 0.353, b = 0.353},
        custom_tooltip_fields = 
        {
          {
            name = {"pm-tooltips.max-temperature"},
            value = {"pm-tooltips.temp-600"}
          },
        },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/heat-pipe.ogg",
              volume = 0.4
            }
          },
          match_volume_to_activity = true,
          max_sounds_per_type = 3,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        resistances =
        {
          {
            type = "fire",
            percent = 70
          },
          {
            type = "explosion",
            percent = 20
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        heat_buffer =
        {
          max_temperature = 600,
          specific_heat = "1MJ",
          max_transfer = "1GW",
          minimum_glow_temperature = 250,
          connections =
          {
            {
              position = { 0, 0 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.west --[[@as int]]
            }
          }
        },
    
        connection_sprites = make_heat_pipe_pictures(
          "__periodic-madness__/graphics/entities/buildings/heat-pipe-1/", "heat-pipe",
          {
            single = { name = "straight-vertical-single", ommit_number = true },
            straight_vertical = { variations = 6 },
            straight_horizontal = { variations = 6 },
            corner_right_up = { name = "corner-up-right", variations = 6 },
            corner_left_up = { name = "corner-up-left", variations = 6 },
            corner_right_down = { name = "corner-down-right", variations = 6 },
            corner_left_down = { name = "corner-down-left", variations = 6 },
            t_up = {},
            t_down = {},
            t_right = {},
            t_left = {},
            cross = { name = "t" },
            ending_up = {},
            ending_down = {},
            ending_right = {},
            ending_left = {}
          }
        ),
    
        heat_glow_sprites = make_heat_pipe_pictures(
          "__base__/graphics/entity/heat-pipe/", "heated",
          {
            single = { empty = true },
            straight_vertical = { variations = 6 },
            straight_horizontal = { variations = 6 },
            corner_right_up = { name = "corner-up-right", variations = 6 },
            corner_left_up = { name = "corner-up-left", variations = 6 },
            corner_right_down = { name = "corner-down-right", variations = 6 },
            corner_left_down = { name = "corner-down-left", variations = 6 },
            t_up = {},
            t_down = {},
            t_right = {},
            t_left = {},
            cross = { name = "t" },
            ending_up = {},
            ending_down = {},
            ending_right = {},
            ending_left = {}
          }, true)
      },
      {
        type = "heat-pipe",
        name = "pm-heat-pipe-3",
        icon = "__periodic-madness__/graphics/icons/buildings/heat-pipe-3.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.15, result = "pm-heat-pipe-3"},
        max_health = 400,
        corpse = "heat-pipe-remnants",
        dying_explosion = "heat-pipe-explosion",
        random_corpse_variation = true,
        map_color = {r = 0.6, g = 0.58, b = 0.353},
        custom_tooltip_fields = 
        {
          {
            name = {"pm-tooltips.max-temperature"},
            value = {"pm-tooltips.temp-1000"}
          },
        },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/heat-pipe.ogg",
              volume = 0.4
            }
          },
          match_volume_to_activity = true,
          max_sounds_per_type = 3,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        resistances =
        {
          {
            type = "fire",
            percent = 80
          },
          {
            type = "explosion",
            percent = 20
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        heat_buffer =
        {
          max_temperature = 1000,
          specific_heat = "1MJ",
          max_transfer = "1GW",
          minimum_glow_temperature = 600,
          connections =
          {
            {
              position = { 0, 0 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { 0, 0 },
              direction = defines.direction.west --[[@as int]]
            }
          }
        },
    
        connection_sprites = make_heat_pipe_pictures(
          "__periodic-madness__/graphics/entities/buildings/heat-pipe-3/", "heat-pipe",
          {
            single = { name = "straight-vertical-single", ommit_number = true },
            straight_vertical = { variations = 6 },
            straight_horizontal = { variations = 6 },
            corner_right_up = { name = "corner-up-right", variations = 6 },
            corner_left_up = { name = "corner-up-left", variations = 6 },
            corner_right_down = { name = "corner-down-right", variations = 6 },
            corner_left_down = { name = "corner-down-left", variations = 6 },
            t_up = {},
            t_down = {},
            t_right = {},
            t_left = {},
            cross = { name = "t" },
            ending_up = {},
            ending_down = {},
            ending_right = {},
            ending_left = {}
          }
        ),
    
        heat_glow_sprites = make_heat_pipe_pictures(
          "__base__/graphics/entity/heat-pipe/", "heated",
          {
            single = { empty = true },
            straight_vertical = { variations = 6 },
            straight_horizontal = { variations = 6 },
            corner_right_up = { name = "corner-up-right", variations = 6 },
            corner_left_up = { name = "corner-up-left", variations = 6 },
            corner_right_down = { name = "corner-down-right", variations = 6 },
            corner_left_down = { name = "corner-down-left", variations = 6 },
            t_up = {},
            t_down = {},
            t_right = {},
            t_left = {},
            cross = { name = "t" },
            ending_up = {},
            ending_down = {},
            ending_right = {},
            ending_left = {}
          }, true)
      },
})
data.raw["heat-pipe"]["heat-pipe"].custom_tooltip_fields = 
{
  {
    name = {"pm-tooltips.max-temperature"},
    value = {"pm-tooltips.temp-800"}
  },
}
data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature = 800
data.raw["heat-pipe"]["heat-pipe"].map_color = {r = 0.6, g = 0.506, b = 0.353}
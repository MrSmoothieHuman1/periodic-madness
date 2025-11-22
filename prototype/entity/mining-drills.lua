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

function pm_electric_mining_drill3_animation()
  return {
    priority = "high",
    filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill.png",
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

function pm_electric_mining_drill_horizontal3_animation()
  return {
    priority = "high",
    filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-horizontal.png",
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
function pm_electric_mining_drill_horizontal3_front_animation()
  return {
    priority = "high",
    filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-horizontal-front.png",
    line_length = 6,
    width = 54,
    height = 136,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(14, -23),
    scale = 0.5,
  }
end



function pm_status_leds_working_visualisation()
  local led_blend_mode = nil -- "additive"
  local led_tint = { 1, 1, 1, 0.5 }
  return {
    apply_tint = "status",
    always_draw = true,
    draw_as_sprite = true,
    draw_as_light = true,
    north_animation = {
      filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-light.png",
      width = 30,
      height = 32,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(26, -69),
      scale = 0.5,
    },
    east_animation = {
      filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-light.png",
      width = 32,
      height = 34,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(41, -45),
      scale = 0.5,
    },
    south_animation = {
      filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-light.png",
      width = 32,
      height = 30,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(26, 10),
      scale = 0.5,
    },
    west_animation = {
      filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-light.png",
      width = 32,
      height = 34,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(-42, -45),
      scale = 0.5,
    },
  }
end


function pm_assembler4pipepictures()
  return
  {
    north =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/assembling-machine-4/assembling-machine-4-pipe-N.png",
      priority = "extra-high",
      width = 71,
      height = 38,
      shift = util.by_pixel(2.25, 13.5),
      scale = 0.5
    },
    east =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/assembling-machine-4/assembling-machine-4-pipe-E.png",
      priority = "extra-high",
      width = 42,
      height = 76,
      shift = util.by_pixel(-24.5, 1),
      scale = 0.5
    },
    south =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/assembling-machine-4/assembling-machine-4-pipe-S.png",
      priority = "extra-high",
      width = 88,
      height = 61,
      shift = util.by_pixel(0, -31.25),
      scale = 0.5
    },
    west =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/assembling-machine-4/assembling-machine-4-pipe-W.png",
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5
    }
  }
end
data:extend({

--MARK: Mining drill 2
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
    allowed_module_categories = {"speed", "productivity", "efficiency"},
    input_fluid_box =
    {
      --pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections =
      {
        { direction = defines.direction.west--[[@as int]], position = {-1, 0}},
        { direction = defines.direction.east--[[@as int]], position = {1, 0}},
        { direction = defines.direction.south--[[@as int]], position = {0, 1}}
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
  }--[[@as data.MiningDrillPrototype]],
--MARK: Mining drill 3
  {
    type = "mining-drill",
    name = "pm-electric-mining-drill-3",
    icon = "__periodic-madness__/graphics/icons/buildings/electric-mining-drill-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "pm-electric-mining-drill-2" },
    max_health = 1000,
    resource_categories = { "basic-solid" },
    corpse = "electric-mining-drill-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5,  -1.5 }, {1.5,  1.5 }},
    allowed_module_categories = {"speed", "productivity", "efficiency"},
    resource_drain_rate_percent = 75,
    input_fluid_box =
    {
      --pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 500,
      pipe_connections =
      {
        { direction = defines.direction.west--[[@as int]], position = {-1, 0}},
        { direction = defines.direction.east--[[@as int]], position = {1, 0}},
        { direction = defines.direction.south--[[@as int]], position = {0, 1}}
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

    animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N.png",
              line_length = 1,
              width = 194,
              height = 242,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 72,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-1, -44),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 274,
              height = 206,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(19, -3),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E.png",
              line_length = 1,
              width = 194,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -33),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 56,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -11),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 276,
              height = 170,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 6),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S.png",
              line_length = 1,
              width = 194,
              height = 240,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -7),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 274,
              height = 204,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(19, 2),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W.png",
              line_length = 1,
              width = 194,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -33),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 56,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-31, -12),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 282,
              height = 170,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(15, 6),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
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
              pm_electric_mining_drill3_animation(), --keep as tier 2 drills, looks better imo
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal3_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              pm_electric_mining_drill3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal3_animation(),
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
          east_animation = pm_electric_mining_drill_horizontal3_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = pm_electric_mining_drill_horizontal3_front_animation()
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-front.png",
                line_length = 1,
                width = 208,
                height = 186,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 2),
                scale = 0.5
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-extra-front.png",
                line_length = 1,
                width = 136,
                height = 148,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(21, 10),
                scale = 0.5
              }
            },
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 82,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 190,
                height = 104,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 27),
                scale = 0.5
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-front.png",
                line_length = 1,
                width = 210,
                height = 190,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 1),
                scale = 0.5
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-extra-front.png",
                line_length = 1,
                width = 134,
                height = 140,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-22, 12),
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

    wet_mining_graphics_set = {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 194,
              height = 242,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 72,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-1, -44),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 276,
              height = 222,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(19, 1),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 194,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -33),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 56,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-31, -12),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 284,
              height = 194,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(15, 8),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 194,
              height = 240,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -7),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 276,
              height = 204,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(19, 2),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 194,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -33),
              repeat_count = 5,
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 56,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -11),
              scale = 0.5,
            },
            {
              priority = "high",
              filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 276,
              height = 194,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 8),
              repeat_count = 5,
              scale = 0.5,
            },
          },
        },
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
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 46,
                height = 58,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(1, -44),
                scale = 0.5,
              },
            },
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              pm_electric_mining_drill3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal3_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              pm_electric_mining_drill3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              pm_electric_mining_drill_horizontal3_animation(),
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
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-window-background-front.png",
                line_length = 1,
                width = 132,
                height = 28,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -18),
                scale = 0.5,
              },
            },
          },
          east_animation = nil,
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 132,
                height = 88,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -33),
                scale = 0.5,
              },
            },
          },
          west_animation = nil,
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 30,
                height = 20,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(1, 21),
                scale = 0.5,
              },
            },
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 88,
                height = 86,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(11, 0),
                scale = 0.5,
              },
            },
          },
          south_animation = nil,
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 86,
                height = 86,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                scale = 0.5,
              },
            },
          },
        },
        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-fluid-background-front.png",
                line_length = 1,
                width = 130,
                height = 36,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -17),
                scale = 0.5,
              },
            },
          },
          east_animation = nil,
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 130,
                height = 96,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -32),
                scale = 0.5,
              },
            },
          },
          west_animation = nil,
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 28,
                height = 22,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 21),
                scale = 0.5,
              },
            },
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 82,
                height = 88,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, -1),
                scale = 0.5,
              },
            },
          },
          south_animation = nil,
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 82,
                height = 88,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, -1),
                scale = 0.5,
              },
            },
          },
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-fluid-flow-front.png",
                line_length = 1,
                width = 130,
                height = 28,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -17),
                scale = 0.5,
              },
            },
          },
          east_animation = nil,
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 130,
                height = 88,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -32),
                scale = 0.5,
              },
            },
          },
          west_animation = nil,
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 26,
                height = 20,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 22),
                scale = 0.5,
              },
            },
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 84,
                height = 86,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(11, 0),
                scale = 0.5,
              },
            },
          },
          south_animation = nil,
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 82,
                height = 86,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                scale = 0.5,
              },
            },
          },
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 162,
                height = 124,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                scale = 0.5,
              },
            },
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 210,
                height = 190,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 1),
                scale = 0.5,
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-wet-extra-front.png",
                line_length = 1,
                width = 208,
                height = 144,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 12),
                scale = 0.5
              }
            },
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 82,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5,
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-wet-extra-front.png",
                line_length = 1,
                width = 192,
                height = 140,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                scale = 0.5
              }
            },
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 208,
                height = 186,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 2),
                scale = 0.5,
              },
              {
                priority = "high",
                filename =
                "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-wet-extra-front.png",
                line_length = 1,
                width = 208,
                height = 148,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 11),
                scale = 0.5
              }
            },
          },
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = pm_electric_mining_drill_horizontal3_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = pm_electric_mining_drill_horizontal3_front_animation()
        },

        -- LEDs
        pm_status_leds_working_visualisation(),

        -- light
        {
          light = { intensity = 1, size = 2, color = { r = 1, g = 1, b = 1 } },
          north_position = { 1, -2.0 },
          east_position = { 1.5, -1.5 },
          south_position = { 1, 0.5 },
          west_position = { -1.5, -1.5 },
        },
      },
    },
    integration_patch = {
      north = {
        priority = "high",
        filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 230,
        height = 236,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
      },
      east = {
        priority = "high",
        filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 238,
        height = 204,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(2, 5),
        repeat_count = 5,
        scale = 0.5,
      },
      south = {
        priority = "high",
        filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 224,
        height = 228,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
      },
      west = {
        priority = "high",
        filename = "__periodic-madness__/graphics/entities/buildings/electric-mining-drill-3/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 234,
        height = 202,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 5),
        repeat_count = 5,
        scale = 0.5,
      },
    },

    mining_speed = 1.5,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = {pollution = 5},
      usage_priority = "secondary-input"
    },
    energy_usage = "240kW",
    resource_searching_radius = 2.491 * 1.5,
    vector_to_place_result = { 0, -1.85 },
    module_slots = 5,
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
  }--[[@as data.MiningDrillPrototype]],
})
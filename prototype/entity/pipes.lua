local PM = require("library")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({

--MARK: Pipes
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
        hide_resistances = false,
        fast_replaceable_group = "pipe",
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        icon_draw_specification = {scale = 0.5},
        fluid_box =
        {
            max_pipeline_extent = 320 * 1.75,
            volume = 200,
            pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
            pipe_connections =
            {
                { direction = defines.direction.north--[[@as int]], position = {0, 0} },
                { direction = defines.direction.east--[[@as int]], position = {0, 0} },
                { direction = defines.direction.south--[[@as int]], position = {0, 0} },
                { direction = defines.direction.west--[[@as int]], position = {0, 0} }
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
        icon_draw_specification = {scale = 0.5},
        fluid_box =
        {
            max_pipeline_extent = 320 * 1.75,
            volume = 200,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { direction = defines.direction.north--[[@as int]], position = {0, 0} },
                {
                    connection_type = "underground",
                    direction = defines.direction.south--[[@as int]],
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
        type = "pipe",
        name = "pm-osmium-pipe",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/buildings/osmium-pipe.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.35, result = "pm-osmium-pipe" },
        max_health = 1200,
        corpse = "pipe-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 80,
            },
            {
                type = "impact",
                percent = 90,
                decrease = 5
            },
            {
                type = "acid",
                percent = 95,
            },
            {
                type = "physical",
                percent = 85,
                decrease = 2,
            }
        },
        hide_resistances = false,
        fast_replaceable_group = "pipe",
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        icon_draw_specification = {scale = 0.5},
        fluid_box =
        {
            max_pipeline_extent = 320 * 1.75,
            volume = 200,
            pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
            pipe_connections =
            {
                { direction = defines.direction.north--[[@as int]], position = {0, 0} },
                { direction = defines.direction.east--[[@as int]], position = {0, 0} },
                { direction = defines.direction.south--[[@as int]], position = {0, 0} },
                { direction = defines.direction.west--[[@as int]], position = {0, 0} }
            },
            hide_connection_info = true
        },
        impact_category = "metal",
        pictures =
        {
            straight_vertical_single =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-straight-vertical-single.png",
                priority = "extra-high",
                width = 160,
                height = 160,
                scale = 0.5,
            },
            straight_vertical =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-straight-vertical.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            straight_vertical_window =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-straight-vertical-window.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            straight_horizontal_window =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-straight-horizontal-window.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            straight_horizontal =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-straight-horizontal.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            corner_up_right =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-corner-up-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            corner_up_left =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-corner-up-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            corner_down_right =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-corner-down-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            corner_down_left =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-corner-down-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            t_up =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-t-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            t_down =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-t-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            t_right =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-t-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            t_left =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-t-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            cross =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-cross.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            ending_up =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-ending-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            ending_down =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-ending-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            ending_right =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-ending-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            ending_left =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-ending-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            horizontal_window_background =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-horizontal-window-background.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5,
            },
            vertical_window_background =
            {
                filename =
                "__periodic-madness__/graphics/entities/buildings/osmium-pipe/osmium-pipe-vertical-window-background.png",
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
    
--MARK: Pumps
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
        icon_draw_specification = {scale = 0.5},
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
                { direction = defines.direction.north--[[@as int]], position = {0, -0.5}, flow_direction = "output" },
                { direction = defines.direction.south--[[@as int]], position = {0, 0.5}, flow_direction = "input" }
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
    }
    
})
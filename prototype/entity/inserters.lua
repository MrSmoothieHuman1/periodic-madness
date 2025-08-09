local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
--MARK: Express inserters
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
      }--[[@as data.InserterPrototype]],
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
      }--[[@as data.InserterPrototype]],
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
      }--[[@as data.InserterPrototype]],

--MARK: Sideserters
    {
        type = "inserter",
        name = "pm-sideserter",
        icon = "__periodic-madness__/graphics/icons/buildings/express-inserter.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = { mining_time = 0.15, result = "pm-sideserter" },
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
        insert_position = {1.2, 0},
        energy_per_movement = "10kJ",
        energy_per_rotation = "10kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          drain = "0.6kW"
        },
        extension_speed = 0.3,
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
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
          priority = "extra-high",
          width = 32,
          height = 136,
          scale = 0.25
        },
        hand_closed_picture =
        {
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        hand_open_picture =
        {
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        platform_picture =
        {
          sheet =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/sideserter/sideserter-platform.png",
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
      }--[[@as data.InserterPrototype]],
      {
        type = "inserter",
        name = "pm-long-handed-sideserter",
        icon = "__periodic-madness__/graphics/icons/buildings/express-inserter.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = { mining_time = 0.15, result = "pm-long-handed-sideserter" },
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
        pickup_position = {0, -2},
        insert_position = {2.2, 0},
        energy_per_movement = "10kJ",
        energy_per_rotation = "10kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          drain = "0.6kW"
        },
        extension_speed = 0.3,
        rotation_speed = (0.02 * 1.5) * 1.5,
        filter_count = 5,
        icon_draw_specification = {scale = 0.5},
        fast_replaceable_group = "inserter",
        impact_category = "metal",
        open_sound = sounds.inserter_open,
        close_sound = sounds.inserter_close,
        working_sound = sounds.inserter_fast,
        hand_base_picture =
        {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
          priority = "extra-high",
          width = 32,
          height = 136,
          scale = 0.25
        },
        hand_closed_picture =
        {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        hand_open_picture =
        {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        platform_picture =
        {
          sheet =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/sideserter/sideserter-platform.png",
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
      }--[[@as data.InserterPrototype]],
          {
        type = "inserter",
        name = "pm-bulk-sideserter",
        icon = "__periodic-madness__/graphics/icons/buildings/express-inserter.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = { mining_time = 0.15, result = "pm-bulk-sideserter" },
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
        insert_position = {1.2, 0},
        energy_per_movement = "10kJ",
        energy_per_rotation = "10kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          drain = "0.6kW"
        },
        extension_speed = 0.3,
        rotation_speed = 0.04 * 1.5,
        filter_count = 5,
        bulk = true,
        icon_draw_specification = {scale = 0.5},
        fast_replaceable_group = "inserter",
        impact_category = "metal",
        open_sound = sounds.inserter_open,
        close_sound = sounds.inserter_close,
        working_sound = sounds.inserter_fast,
        hand_base_picture =
        {
          filename = "__base__/graphics/entity/bulk-inserter/bulk-inserter-hand-base.png",
          priority = "extra-high",
          width = 32,
          height = 136,
          scale = 0.25
        },
        hand_closed_picture =
        {
          filename = "__base__/graphics/entity/bulk-inserter/bulk-inserter-hand-closed.png",
          priority = "extra-high",
          width = 100,
          height = 164,
          scale = 0.25
        },
        hand_open_picture =
        {
          filename = "__base__/graphics/entity/bulk-inserter/bulk-inserter-hand-open.png",
          priority = "extra-high",
          width = 130,
          height = 164,
          scale = 0.25
        },
        platform_picture =
        {
          sheet =
          {
            filename = "__periodic-madness__/graphics/entities/buildings/sideserter/sideserter-platform.png",
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
      }--[[@as data.InserterPrototype]],
      
--MARK: Longer handed inserter
{
    type = "inserter",
    name = "pm-longer-handed-inserter",
    icon = "__base__/graphics/icons/long-handed-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.15, result = "pm-longer-handed-inserter"},
    max_health = 175,
    corpse = "long-handed-inserter-remnants",
    dying_explosion = "long-handed-inserter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    starting_distance = 1.7,
    pickup_position = {0, -3},
    insert_position = {0, 3.2},
    energy_per_movement = "7.5kJ",
    energy_per_rotation = "7.5kJ",
    extension_speed = 0.05,
    rotation_speed = 0.02 * 1.5,
    filter_count = 5,
    icon_draw_specification = {scale = 0.5},
    hand_size = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.5kW"
    },
    fast_replaceable_group = "long-handed-inserter",
    impact_category = "metal",
    open_sound = sounds.inserter_open,
    close_sound = sounds.inserter_close,
    working_sound = sounds.inserter_long_handed,
    hand_base_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/longer-handed-inserter/longer-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    },
    hand_closed_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/longer-handed-inserter/longer-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_open_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/longer-handed-inserter/longer-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/longer-handed-inserter/longer-handed-inserter-platform.png",
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
})

data.raw["inserter"]["long-handed-inserter"].rotation_speed = 0.02 * 1.5
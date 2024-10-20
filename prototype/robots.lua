local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local robot_animations = {}

robot_animations.sparks =
{
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    draw_as_glow = true,
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = { -0.109375, 0.3125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    draw_as_glow = true,
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = { 0.03125, 0.125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    draw_as_glow = true,
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = { -0.0625, 0.203125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    draw_as_glow = true,
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = { -0.0625, 0.234375 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    draw_as_glow = true,
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = { -0.109375, 0.171875 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    draw_as_glow = true,
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = { 0.03125, 0.3125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  }
}

robot_animations.logistic_robot =
{
  idle =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 84,
    scale = 0.5
  },
  idle_with_cargo =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    scale = 0.5
  },
  in_motion =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 252,
    scale = 0.5
  },
  in_motion_with_cargo =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 168,
    scale = 0.5
  },
  shadow_idle =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    frame_count = 1,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 57,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_idle_with_cargo =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    frame_count = 1,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    frame_count = 1,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 57 * 3,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion_with_cargo =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/hr-logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    frame_count = 1,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 114,
    scale = 0.5,
    draw_as_shadow = true
  }
}

robot_animations.construction_robot =
{
  idle =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    scale = 0.5
  },
  in_motion =
  {
    filename = "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 76,
    scale = 0.5
  },
  shadow_idle =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  working =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot-working.png",
    priority = "high",
    line_length = 2,
    width = 57,
    height = 74,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    scale = 0.5
  },
  shadow_working =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/hr-construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    frame_count = 1,
    repeat_count = 2,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  }
}

local robots =
{
  {
    type = "construction-robot",
    name = "pm-lithium-construction-robot",
    icon = "__periodic-madness__/graphics/icons/lithium-construction-robot.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "pm-lithium-construction-robot" },
    resistances =
    {
      {
        type = "fire",
        percent = 64
      }
    },
    max_health = 200,
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    hit_visualization_box = { { -0.1, -1.1 }, { 0.1, -1.0 } },
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "construction-robot-explosion",
    corspe = "pm-lithium-construction-robot-remnants",
    max_payload_size = 1,
    speed = 0.08,
    max_energy = "2MJ",
    energy_per_tick = "0.03kJ",
    speed_multiplier_when_out_of_energy = 0.4,
    energy_per_move = "2kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.9,
    --working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = { 0.078125, -0.15625 },
      animation_speed = 0.3
    },
    sparks = robot_animations.sparks,
    repairing_sound =
    {
      { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.6 },
    },
    working_sound = sounds.construction_robot(0.47),
    cargo_centered = { 0.0, 0.2 },
    construction_vector = { 0.30, 0.22 },
    water_reflection = robot_reflection(1),
    idle = robot_animations.construction_robot.idle,
    idle_with_cargo = robot_animations.construction_robot.idle_with_cargo,
    in_motion = robot_animations.construction_robot.in_motion,
    in_motion_with_cargo = robot_animations.construction_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.construction_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.construction_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.construction_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.construction_robot.shadow_in_motion_with_cargo,
    working = robot_animations.construction_robot.working,
    shadow_working = robot_animations.construction_robot.shadow_working
  },
  {
    type = "logistic-robot",
    name = "pm-lithium-logistic-robot",
    icon = "__periodic-madness__/graphics/icons/lithium-logistic-robot.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "pm-lithium-logistic-robot" },
    resistances =
    {
      {
        type = "fire",
        percent = 64
      }
    },
    max_health = 200,
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    hit_visualization_box = { { -0.1, -1.1 }, { 0.1, -1.0 } },
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "logistic-robot-explosion",
    corspe = "pm-lithium-logistic-robot-remnants",
    max_payload_size = 1,
    speed = 0.08,
    max_energy = "2MJ",
    energy_per_tick = "0.03kJ",
    speed_multiplier_when_out_of_energy = 0.4,
    energy_per_move = "2kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.9,
    working_sound = sounds.flying_robot(0.48),
    cargo_centered = { 0.0, 0.2 },
    water_reflection = robot_reflection(1),
    idle = robot_animations.logistic_robot.idle,
    idle_with_cargo = robot_animations.logistic_robot.idle_with_cargo,
    in_motion = robot_animations.logistic_robot.in_motion,
    in_motion_with_cargo = robot_animations.logistic_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.logistic_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.logistic_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.logistic_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.logistic_robot.shadow_in_motion_with_cargo
  }
}

data:extend(robots)

data.raw["construction-robot"]["construction-robot"].max_energy = "3.5MJ"
data.raw["construction-robot"]["construction-robot"].speed = 0.035
data.raw["construction-robot"]["construction-robot"].speed_multiplier_when_out_of_energy = 0.12
data.raw["construction-robot"]["construction-robot"].max_payload_size = 2

data.raw["logistic-robot"]["logistic-robot"].max_energy = "3.5MJ"
data.raw["logistic-robot"]["logistic-robot"].speed = 0.035
data.raw["logistic-robot"]["logistic-robot"].speed_multiplier_when_out_of_energy = 0.12
data.raw["logistic-robot"]["logistic-robot"].max_payload_size = 2

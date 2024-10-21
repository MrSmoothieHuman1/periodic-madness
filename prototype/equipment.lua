data:extend({

  {
    type = "solar-panel-equipment",
    name = "pm-solar-panel-equipment-2",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/solar-panel-equipment-2.png",
      width = 64,
      height = 64,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "60kW",
    categories = { "armor" }
  },

  {
    type = "roboport-equipment",
    name = "pm-personal-robostasher-equipment",
    take_result = "pm-personal-robostasher-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/personal-robostasher-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "void",
      usage_priority = "secondary-input"
    },
    charging_energy = "0kW",
    robot_limit = 20,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 0,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = { intensity = 0.2, size = 3, color = { r = 0.5, g = 0.5, b = 1.0 } },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 0,
    charging_threshold_distance = 0,
    categories = { "armor" }
  },

  {
    type = "roboport-equipment",
    name = "pm-personal-robostasher-mk2-equipment",
    take_result = "pm-personal-robostasher-mk2-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/personal-robostasher-mk2-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "void",
      usage_priority = "secondary-input"
    },
    charging_energy = "0kW",
    robot_limit = 40,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 0,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = { intensity = 0.2, size = 3, color = { r = 0.5, g = 0.5, b = 1.0 } },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 0,
    charging_threshold_distance = 0,
    categories = { "armor" }
  },

  {
    type = "roboport-equipment",
    name = "pm-personal-robocharger-equipment",
    take_result = "pm-personal-robocharger-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/personal-robocharger-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "35MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 5,
    spawn_and_station_height = 0,
    spawn_and_station_shadow_height_offset = 0,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = { intensity = 0.2, size = 3, color = { r = 0.5, g = 0.5, b = 1.0 } },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 8,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" }
  },
  {
    type = "roboport-equipment",
    name = "pm-personal-robocharger-mk2-equipment",
    take_result = "pm-personal-robocharger-mk2-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/personal-robocharger-mk2-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "75MJ",
      input_flow_limit = "5000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "2000kW",
    robot_limit = 0,
    construction_radius = 8,
    spawn_and_station_height = 0,
    spawn_and_station_shadow_height_offset = 0,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = { intensity = 0.2, size = 3, color = { r = 0.5, g = 0.5, b = 1.0 } },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 16,
    charging_distance = 1.6,
    charging_threshold_distance = 8,
    categories = { "armor" }
  },

  {
    type = "battery-equipment",
    name = "pm-lithium-sulfur-battery-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/lithium-battery-equipment-icon.png",
      width = 64,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "25MJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
  {
    type = "battery-equipment",
    name = "pm-lithium-sulfur-battery-mk2-equipment",
    sprite =
    {
      filename = "__periodic-madness__/graphics/equipment/lithium-battery-mk2-equipment-icon.png",
      width = 64,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120MJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
})

data.raw["item"]["battery-equipment"].icon = "__periodic-madness__/graphics/equipment/vanadium-battery-equipment.png"
data.raw["item"]["battery-mk2-equipment"].icon = "__periodic-madness__/graphics/equipment/vanadium-battery-mk2-equipment.png"
data.raw["battery-equipment"]["battery-equipment"].sprite.filename = "__periodic-madness__/graphics/equipment/vanadium-battery-equipment-icon.png"
data.raw["battery-equipment"]["battery-equipment"].sprite.hr_version.filename = "__periodic-madness__/graphics/equipment/vanadium-battery-equipment-icon.png"
data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename = "__periodic-madness__/graphics/equipment/vanadium-battery-mk2-equipment-icon.png"
data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.hr_version.filename = "__periodic-madness__/graphics/equipment/vanadium-battery-mk2-equipment-icon.png"
data.raw["battery-equipment"]["battery-equipment"].shape =
    {
      width = 2,
      height = 2,
      type = "full"
    }
data.raw["battery-equipment"]["battery-mk2-equipment"].shape =
    {
      width = 2,
      height = 2,
      type = "full"
    }
data.raw["battery-equipment"]["battery-equipment"].energy_source.buffer_capacity = "50MJ"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.buffer_capacity = "200MJ"
data.raw["battery-equipment"]["battery-equipment"].energy_source.output_flow_limit = "750kW"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.output_flow_limit = "1200kW"
data.raw["item"]["battery-equipment"].subgroup = "pm-modular-storage"
data.raw["item"]["battery-equipment"].order = "a"
data.raw["item"]["battery-mk2-equipment"].subgroup = "pm-modular-storage"
data.raw["item"]["battery-mk2-equipment"].order = "b"

data.raw["generator-equipment"]["fusion-reactor-equipment"].burner = 
{
  usage_priority = "primary-output",
  fuel_category = "pm-fuel-rods",
  fuel_inventory_size = 1,
  burnt_inventory_size = 1,
}
data.raw["generator-equipment"]["fusion-reactor-equipment"].power = "500kW"
data.raw["item"]["fusion-reactor-equipment"].subgroup = "pm-modular-power"
data.raw["item"]["fusion-reactor-equipment"].order = "c"

data.raw["item"]["solar-panel-equipment"].subgroup = "pm-modular-power"
data.raw["item"]["solar-panel-equipment"].order = "a"

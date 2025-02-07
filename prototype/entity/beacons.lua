local PM = require("library")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
data:extend({

    {
        type = "beacon",
        name = "pm-hub-beacon",
        icon = "__base__/graphics/icons/beacon.png",
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.45, result = "beacon"},
        fast_replaceable_group = "beacon",
        max_health = 550,
        corpse = "beacon-remnants",
        dying_explosion = "beacon-explosion",
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.7,
        allowed_effects = {"consumption", "speed", "pollution"},
        graphics_set = require("__base__.prototypes.entity.beacon-animations"),
        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
          priority = "extra-high-no-scale",
          width = 10,
          height = 10
        },
        supply_area_distance = 7,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
        close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
        working_sound =
        {
          sound =
          {
            variations = sound_variations("__base__/sound/beacon", 2, 0.3),
            audible_distance_modifier = 0.33,
          },
          max_sounds_per_prototype = 3
        },
        energy_usage = "500kW",
        distribution_effectivity = 0.75,
        distribution_effectivity_bonus_per_quality_level = 0.2,
        profile = 
        {
            1,
            0.975, 0.95, 0.925, 0.9,
            0.874, 0.849, 0.824, 0.799,
            0.773, 0.748, 0.723, 0.698,
            0.672, 0.647, 0.622, 0.597,
            0.571, 0.546, 0.521, 0.496,
            0.470, 0.445, 0.420, 0.395,
            0.369, 0.344, 0.319, 0.294,
            0.268, 0.243, 0.218, 0.193,
            0.167, 0.142, 0.117, 0.092,
            0.066, 0.041, 0.016
            -- loses 0.25 for every extra beacon, every time it goes down a 0.X, it loses +0.01
            -- the final number before it goes down a 'level' is just the 0.X number, with the same rules as before
        },
        beacon_counter = "same_type",
        module_slots = 6,
        icons_positioning =
        {
          {inventory_index = defines.inventory.beacon_modules, shift = {0, 0}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 6}
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/beacon/beacon-reflection.png",
            priority = "extra-high",
            width = 18,
            height = 29,
            shift = util.by_pixel(0, 55),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }
    },
    {
        type = "beacon",
        name = "pm-proximity-beacon",
        icon = "__base__/graphics/icons/beacon.png",
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "beacon"},
        fast_replaceable_group = "beacon",
        max_health = 150,
        corpse = "beacon-remnants",
        dying_explosion = "beacon-explosion",
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.7,
        allowed_effects = {"consumption", "speed", "pollution"},
        graphics_set = require("__base__.prototypes.entity.beacon-animations"),
        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
          priority = "extra-high-no-scale",
          width = 10,
          height = 10
        },
        supply_area_distance = 3,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
        close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
        working_sound =
        {
          sound =
          {
            variations = sound_variations("__base__/sound/beacon", 2, 0.3),
            audible_distance_modifier = 0.33,
          },
          max_sounds_per_prototype = 3
        },
        energy_usage = "1MW",
        distribution_effectivity = 2.25,
        distribution_effectivity_bonus_per_quality_level = 0.2,
        profile = 
        {
            1,
            0.7071, 0.5, 0.4082, 0.3535, 0.3162, 0.2886, 0.2672, 0.25, 0.2357,
            0.2236, 0.2132, 0.2041, 0.1961, 0.1889, 0.1825, 0.1767, 0.1714, 0.1666, 0.1622,
            0.1581, 0.1543, 0.1507, 0.1474, 0.1443, 0.1414, 0.1386, 0.136, 0.1336, 0.1313,
            0.129, 0.127, 0.125, 0.123, 0.1212, 0.1195, 0.1178, 0.1162, 0.1147, 0.1132,
            0.1118, 0.1104, 0.1091, 0.1078, 0.1066, 0.1054, 0.1042, 0.1031, 0.102, 0.101,
            0.1
            -- normal beacon distribution but with every other number cut out
        },
        beacon_counter = "same_type",
        module_slots = 2,
        icons_positioning =
        {
          {inventory_index = defines.inventory.beacon_modules, shift = {0, 0}, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 2}
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/beacon/beacon-reflection.png",
            priority = "extra-high",
            width = 18,
            height = 29,
            shift = util.by_pixel(0, 55),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }
      },
})
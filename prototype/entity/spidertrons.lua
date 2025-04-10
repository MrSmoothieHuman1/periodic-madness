local simulations = require("__base__.prototypes.factoriopedia-simulations")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

function create_spiderling(arguments)
local scale = arguments.scale
local leg_scale = scale * arguments.leg_scale
local body_height = 1.5 * scale * leg_scale
local spiderling_resistances =
{
  {
    type = "fire",
    decrease = 10,
    percent = 45
  },
  {
    type = "physical",
    percent = 50
  },
  {
    type = "impact",
    decrease = 10,
    percent = 70
  },
  {
    type = "explosion",
    decrease = 5,
    percent = 45
  },
  {
    type = "acid",
    percent = 70
  },
  {
    type = "laser",
    percent = 70
  },
  {
    type = "electric",
    decrease = 0,
    percent = 70
  }
}
local spiderling_leg_resistances = util.table.deepcopy(spiderling_resistances)
spiderling_leg_resistances[4] = { type = "explosion", percent = 98 }

data:extend({
  {
    type = "spider-vehicle",
    name = arguments.name,
    collision_box = {{-1 * scale, -1 * scale}, {1 * scale, 1 * scale}},
    sticker_box = {{-1.5 * scale, -1.5 * scale}, {1.5 * scale, 1.5 * scale}},
    selection_box = {{-1 * scale, -1 * scale}, {1 * scale, 1 * scale}},
    drawing_box_vertical_extension = 3 * scale,
    icon = "__base__/graphics/icons/spidertron.png",
    factoriopedia_simulation = arguments.factoriopedia_simulation,
    mined_sound = sounds.deconstruct_large(0.8),
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.45 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    working_sound =
    {
      sound = { filename = "__base__/sound/spidertron/spidertron-vox.ogg", volume = 0.4 },
      activate_sound = { filename = "__base__/sound/spidertron/spidertron-activate.ogg", volume = 0.5 },
      deactivate_sound = { filename = "__base__/sound/spidertron/spidertron-deactivate.ogg", volume = 0.5 },
      match_speed_to_activity = true,
      activity_to_speed_modifiers =
      {
        multiplier = 6.0,
        minimum = 1.0,
        offset = 0.93333333333
        }
    },
    weight = 1,
    braking_force = 1,
    friction_force = 1,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.7, result = arguments.name},
    max_health = 200,
    resistances = util.table.deepcopy(spiderling_resistances),
    minimap_representation =
    {
      filename = "__base__/graphics/entity/spidertron/spidertron-map.png",
      flags = {"icon"},
      size = {128, 128},
      scale = 0.5
    },
    selected_minimap_representation =
    {
      filename = "__base__/graphics/entity/spidertron/spidertron-map-selected.png",
      flags = {"icon"},
      size = {128, 128},
      scale = 0.5
    },
    corpse = "spidertron-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "pm-spiderling-discharge-defense", "submachine-gun"},
    inventory_size = 60,
    equipment_grid = "pm-spiderling-equipment-grid",
    trash_inventory_size = 20,
    height = body_height,
    alert_icon_shift = { 0, -body_height },
    torso_rotation_speed = 0.0085,
    chunk_exploration_radius = 3,
    selection_priority = 60,
    graphics_set = spidertron_torso_graphics_set(scale),
    energy_source =
    {
      type = "void"
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 0.8,
    spider_engine =
    {
      legs =
      {
        { -- 2
          leg = arguments.name .. "-leg-2",
          mount_position = util.by_pixel(23  * scale, -10  * scale),
          ground_position = {3  * leg_scale, -1  * leg_scale},
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 3
          leg = arguments.name .. "-leg-3",
          mount_position = util.by_pixel(25  * scale, 4  * scale),
          ground_position = {3  * leg_scale, 1  * leg_scale},
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 4
          leg = arguments.name .. "-leg-4",
          mount_position = util.by_pixel(15  * scale, 17  * scale),
          ground_position = {2.25  * leg_scale, 2.5  * leg_scale},
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 6
          leg = arguments.name .. "-leg-6",
          mount_position = util.by_pixel(-23 * scale, -10 * scale),
          ground_position = {-3 * leg_scale, -1 * leg_scale},
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 7
        leg = arguments.name .. "-leg-7",
        mount_position = util.by_pixel(-25 * scale, 4 * scale),
        ground_position = {-3 * leg_scale, 1 * leg_scale},
        walking_group = 1,
        leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
      },
      { -- 8
        leg = arguments.name .. "-leg-8",
        mount_position = util.by_pixel(-15 * scale, 17 * scale),
        ground_position = {-2.25 * leg_scale, 2.5 * leg_scale},
        walking_group = 2,
        leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
      }
    },
    },
    is_military_target = true,
    allow_remote_driving = true,
  },
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 1, spiderling_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 2, spiderling_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 3, spiderling_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 4, spiderling_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 6, spiderling_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 7, spidertron_leg_resistances),
  make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 8, spidertron_leg_resistances),

})
end
function make_spidertron_leg(spidertron_name, scale, leg_thickness, movement_speed, number, leg_resistances)
    return
    {
      type = "spider-leg",
      name = spidertron_name .. "-leg-" .. number,
      hidden = true,
      localised_name = {"entity-name.spidertron-leg"},
      collision_box = {{-0.05, -0.05}, {0.05, 0.05}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      icon = "__base__/graphics/icons/spidertron.png",
      walking_sound_volume_modifier = 0.8,
      walking_sound_speed_modifier = 0.5,
      target_position_randomisation_distance = 0.25 * scale,
      minimal_step_size = 1 * scale,
      working_sound =
      {
        match_progress_to_activity = true,
        sound = sounds.spidertron_leg,
      },
      stretch_force_scalar = 2.5 / (3.5 * scale), -- longer legs, weaker stretch force
      knee_height = 2.25 * scale,
      knee_distance_factor = 0.4,
      initial_movement_speed = 0.07 * movement_speed,
      movement_acceleration = 0.0475 * movement_speed,
      max_health = 100,
      resistances = util.table.deepcopy(leg_resistances),
      base_position_selection_distance = 6 * scale,
      movement_based_position_selection_distance = 4 * scale,
      selectable_in_game = false,
      alert_when_damaged = false,
      graphics_set = create_spidertron_leg_graphics_set(scale * leg_thickness, number)
    }
end
create_spiderling{name = "pm-spiderling-issy",
                  scale = 0.85,
                  leg_scale = 0.95, -- relative to scale
                  leg_thickness = 0.85, -- relative to leg_scale
                  leg_movement_speed = 0.95,
                  factoriopedia_simulation = simulations.factoriopedia_spidertron}


function get_leg_hit_the_ground_trigger()
    return
      {
        {
          type = "create-trivial-smoke",
          smoke_name = "smoke-building",
          repeat_count = 4,
          starting_frame_deviation = 5,
          offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}},
          speed_from_center = 0.03
        }
      }
end

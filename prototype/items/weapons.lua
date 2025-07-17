local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({

  {
    type = "gun",
    name = "pm-spiderling-combat-shotgun",
    icon = "__base__/graphics/icons/combat-shotgun.png",
    subgroup = "gun",
    order = "b[shotgun]-a[combat]",
    inventory_move_sound = item_sounds.shotgun_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.shotgun_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_categories = {"shotgun-shell", "pm-shotgun-slug"},
      cooldown = 15,
      movement_slow_down_factor = 0.25,
      damage_modifier = 1.25,
      projectile_creation_distance = 0.125,
      range = 20,
      sound = sounds.shotgun
    },
    stack_size = 5
  },
  {
    type = "gun",
    name = "pm-spiderling-submachine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 5,
      movement_slow_down_factor = 0.5,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0,
      range = 25,
      sound = sounds.submachine_gunshot
    },
    stack_size = 1
  },
})

data.raw["gun"]["shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}
data.raw["gun"]["combat-shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}
data.raw["gun"]["shotgun"].attack_parameters.min_range = 0.5
data.raw["gun"]["combat-shotgun"].attack_parameters.min_range = 1.25

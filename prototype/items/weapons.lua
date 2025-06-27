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
})

data.raw["gun"]["shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}
data.raw["gun"]["combat-shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}
data.raw["gun"]["shotgun"].attack_parameters.min_range = 0.5
data.raw["gun"]["combat-shotgun"].attack_parameters.min_range = 1.25

local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
{
    type = "gun",
    name = "pm-spiderling-discharge-defense",
    icon = "__base__/graphics/icons/discharge-defense-equipment.png",
    subgroup = "gun",
    hidden = true,
    auto_recycle = false,
    order = "z[spider]-a[rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      damage_modifier = 10,
      cooldown = 150,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 15,
      sound =
      {
        switch_vibration_data = {filename = "__base__/sound/fight/pulse.bnvib"},
        game_controller_vibration_data =
        {
          low_frequency_vibration_intensity = 0.5,
          duration = 100
        },
        filename = "__base__/sound/fight/pulse.ogg", volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        energy_consumption = "2MJ",
        action =
        {
          {
            type = "area",
            radius = 8,
            force = "enemy",
            action_delivery =
            {
             {
               type = "instant",
               target_effects =
               {
                {
                  type = "create-sticker",
                  sticker = "stun-sticker"
                },
                {
                  type = "push-back",
                  distance = 4
                }
               }
             },
             {
               type = "beam",
               beam = "electric-beam-no-sound",
               max_length = 16,
               duration = 15,
               source_offset = {0, -0.5},
               add_to_shooter = false
             }
            }
          }
        }
      }
    },
    inventory_move_sound = item_sounds.ammo_large_inventory_move,
    pick_sound = item_sounds.ammo_large_inventory_pickup,
    drop_sound = item_sounds.ammo_large_inventory_move,
    stack_size = 1
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
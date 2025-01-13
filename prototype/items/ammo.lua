data:extend({
    {
      type = "ammo-category",
      name = "pm-shotgun-slug",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/basic-slug.png"
    },

    {
        type = "ammo",
        name = "pm-high-density-magazine",
        icon = "__periodic-madness__/graphics/icons/high-density-magazine.png",
        icon_size = 64,
        ammo_category = "bullet",
        ammo_type =
        {
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5 }, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = {amount = 14, type = "physical"}
                }
              }
            }
          }
        },
        magazine_size = 15,
        subgroup = "ammo",
        order = "a[basic-clips]-ca",
        stack_size = 200
      },
      {
        type = "ammo",
        name = "pm-genevas-neglection-magazine",
        icon = "__periodic-madness__/graphics/icons/geneva's-neglection-magazine.png",
        icon_size = 64,
        ammo_category = "bullet",
        ammo_type =
        {
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5 }, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = {amount = 10, type = "physical"}
                },
                {
                  type = "create-sticker",
                  sticker = "pm-bio-poison-sticker",
                  duration_in_ticks = 10 * 60,
                  damage_interval = 60,
                  show_in_tooltip = true
                }
              }
            }
          }
        },
        magazine_size = 12,
        subgroup = "ammo",
        order = "a[basic-clips]-c",
        stack_size = 200
      },

--shotgun shells

    {
        type = "ammo",
        name = "pm-high-density-shotgun-shell",
        icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
        icon_size = 64, 
        ammo_category = "shotgun-shell",
        ammo_type =
        {
          target_type = "direction",
          clamp_position = true,
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  },
                }
              }
            },
            {
              type = "direct",
              repeat_count = 20,
              action_delivery =
              {
                type = "projectile",
                projectile = "piercing-shotgun-pellet",
                starting_speed = 1,
                starting_speed_deviation = 0.12,
                direction_deviation = 0.55,
                range_deviation = 0.55,
                max_range = 20
              }
            }
          }
        },
        magazine_size = 15,
        subgroup = "pm-shotgun-ammo",
        order = "c",
        stack_size = 100
    },
    {
        type = "ammo",
        name = "pm-genevas-neglection-shotgun-shell",
        icon = "__periodic-madness__/graphics/icons/geneva's-neglection-shell.png",
        icon_size = 64, 
        ammo_category = "shotgun-shell",
        ammo_type =
        {
          target_type = "direction",
          clamp_position = true,
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot",
                  },
                },
              }
            },
            {
              type = "direct",
              repeat_count = 8, --amount of pellets made
              action_delivery =
              {
                type = "projectile",
                projectile = "pm-poison-shotgun-pellet",
                starting_speed = 1,
                starting_speed_deviation = 0.1,
                direction_deviation = 0.3,
                range_deviation = 0.3,
                max_range = 20
              },
            }
          }
        },
        magazine_size = 12,
        subgroup = "pm-shotgun-ammo",
        order = "c",
        stack_size = 200
    },
--slugs
{
  type = "ammo",
  name = "pm-shotgun-slug",
  icon = "__periodic-madness__/graphics/icons/basic-slug.png",
  icon_size = 64, 
  ammo_category = "pm-shotgun-slug",
  ammo_type =
  {
    target_type = "direction",
    clamp_position = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
          }
        }
      },
      {
        type = "direct",
        repeat_count = 2,
        action_delivery =
        {
          type = "projectile",
          projectile = "pm-slug-pellet",
          starting_speed = 1,
          starting_speed_deviation = 0.2,
          direction_deviation = 0.7,
          range_deviation = 0.7,
          max_range = 18
        }
      }
    }
  },
  piercing_damage = 30,
  magazine_size = 6,
  subgroup = "pm-shotgun-ammo",
  order = "aa",
  stack_size = 200
},
{
  type = "ammo",
  name = "pm-heavy-piercing-shotgun-slug",
  icon = "__periodic-madness__/graphics/icons/piercing-slug.png",
  icon_size = 64, 
  ammo_category = "pm-shotgun-slug",
  ammo_type =
  {
    target_type = "direction",
    clamp_position = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
          }
        }
      },
      {
        type = "direct",
        repeat_count = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "pm-slug-pellet",
          starting_speed = 1,
          starting_speed_deviation = 0.2,
          direction_deviation = 0.55,
          range_deviation = 0.55,
          max_range = 25
        }
      }
    }
  },
  piercing_damage = 300,
  magazine_size = 6,
  subgroup = "pm-shotgun-ammo",
  order = "ba",
  stack_size = 200
},
{
  type = "ammo",
  name = "pm-high-density-shotgun-slug",
  icon = "__periodic-madness__/graphics/icons/high-density-slug.png",
  icon_size = 64, 
  ammo_category = "pm-shotgun-slug",
  ammo_type =
  {
    target_type = "direction",
    clamp_position = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
          }
        }
      },
      {
        type = "direct",
        repeat_count = 3,
        action_delivery =
        {
          type = "projectile",
          projectile = "pm-slug-pellet",
          starting_speed = 1,
          starting_speed_deviation = 0.2,
          direction_deviation = 0.7,
          range_deviation = 0.7,
          max_range = 16
        }
      }
    }
  },
  piercing_damage = 100,
  magazine_size = 6,
  subgroup = "pm-shotgun-ammo",
  order = "ca",
  stack_size = 100
},
{
  type = "ammo",
  name = "pm-genevas-neglection-shotgun-slug",
  icon = "__periodic-madness__/graphics/icons/geneva's-neglection-slug.png",
  icon_size = 64, 
  ammo_category = "pm-shotgun-slug",
  ammo_type =
  {
    target_type = "direction",
    clamp_position = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
          }
        }
      },
      {
        type = "direct",
        repeat_count = 4,
        action_delivery =
        {
          type = "projectile",
          projectile = "pm-poison-slug-pellet",
          starting_speed = 1,
          starting_speed_deviation = 0.2,
          direction_deviation = 0.7,
          range_deviation = 0.7,
          max_range = 16
        }
      }
    }
  },
  piercing_damage = 100,
  magazine_size = 8,
  subgroup = "pm-shotgun-ammo",
  order = "da",
  stack_size = 200
},
})

data.raw["ammo"]["shotgun-shell"].icon = "__periodic-madness__/graphics/icons/shotgun-shell.png"
data.raw["ammo"]["shotgun-shell"].subgroup = "pm-shotgun-ammo"
data.raw["ammo"]["shotgun-shell"].order = "a"
data.raw["ammo"]["piercing-shotgun-shell"].icon = "__base__/graphics/icons/shotgun-shell.png"
data.raw["ammo"]["piercing-shotgun-shell"].subgroup = "pm-shotgun-ammo"
data.raw["ammo"]["piercing-shotgun-shell"].order = "b"
data.raw["ammo"]["rocket"].subgroup = "pm-rockets"
data.raw["ammo"]["rocket"].order = "b"
data.raw["recipe"]["rocket"].subgroup = "pm-rockets"
data.raw["recipe"]["rocket"].order = "b"
data.raw["ammo"]["explosive-rocket"].subgroup = "pm-rockets"
data.raw["ammo"]["explosive-rocket"].order = "c"
data.raw["recipe"]["explosive-rocket"].subgroup = "pm-rockets"
data.raw["recipe"]["explosive-rocket"].order = "c"
data.raw["ammo"]["atomic-bomb"].subgroup = "pm-rockets"
data.raw["ammo"]["atomic-bomb"].order = "d"
data.raw["recipe"]["atomic-bomb"].subgroup = "pm-rockets"
data.raw["recipe"]["atomic-bomb"].order = "d"
data.raw["ammo"]["cannon-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["cannon-shell"].order = "e"
data.raw["recipe"]["cannon-shell"].subgroup = "pm-rockets"
data.raw["recipe"]["cannon-shell"].order = "e"
data.raw["ammo"]["explosive-cannon-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["explosive-cannon-shell"].order = "f"
data.raw["recipe"]["explosive-cannon-shell"].subgroup = "pm-rockets"
data.raw["recipe"]["explosive-cannon-shell"].order = "f"
data.raw["ammo"]["uranium-cannon-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["uranium-cannon-shell"].order = "g"
data.raw["ammo"]["uranium-cannon-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["uranium-cannon-shell"].order = "g"
data.raw["ammo"]["explosive-uranium-cannon-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["explosive-uranium-cannon-shell"].order = "h"
data.raw["recipe"]["explosive-uranium-cannon-shell"].subgroup = "pm-rockets"
data.raw["recipe"]["explosive-uranium-cannon-shell"].order = "h"
data.raw["ammo"]["artillery-shell"].subgroup = "pm-rockets"
data.raw["ammo"]["artillery-shell"].order = "i"
data.raw["recipe"]["artillery-shell"].subgroup = "pm-rockets"
data.raw["recipe"]["artillery-shell"].order = "i"

data.raw["gun"]["shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}
data.raw["gun"]["combat-shotgun"].attack_parameters.ammo_categories = {"shotgun-shell", "pm-shotgun-slug"}

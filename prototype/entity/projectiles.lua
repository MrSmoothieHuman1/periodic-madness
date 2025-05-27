data:extend({

    {
    type = "projectile",
    name = "pm-sodium-grenade",
    flags = { "not-on-map" },
    acceleration = 0.008,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,     -- soft decoratives are decoratives with grows_through_rail_path = true
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,     -- if true, destroys only decoratives that have trigger_effect set
              radius = 2.25                              -- large radius for demostrative purposes
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    light = { intensity = 0.5, size = 4 },
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      draw_as_glow = true,
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 48,
      height = 54,
      shift = util.by_pixel(0.5, 0.5),
      priority = "high",
      scale = 0.5
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 50,
      height = 40,
      shift = util.by_pixel(2, 6),
      priority = "high",
      draw_as_shadow = true,
      scale = 0.5
    }
  },
  {
  type = "projectile",
  name = "pm-incendiary-rocket",
  flags = {"not-on-map"},
  hidden = true,
  acceleration = 0.01,
  turn_speed = 0.003,
  turning_speed_increases_exponentially_with_projectile_speed = true,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-entity",
          entity_name = "big-explosion"
        },
        {
          type = "damage",
          damage = {amount = 25, type = "explosion"}
        },
        {
          type = "create-entity",
          entity_name = "medium-scorchmark-tintable",
          check_buildability = true
        },
        {
          type = "invoke-tile-trigger",
          repeat_count = 1
        },
        {
          type = "destroy-decoratives",
          from_render_layer = "decorative",
          to_render_layer = "object",
          include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
          include_decals = false,
          invoke_decorative_trigger = true,
          decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
          radius = 3.5 -- large radius for demostrative purposes
        },
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 6.5,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {amount = 50, type = "explosion"}
                },
                {
                  type = "create-entity",
                  entity_name = "explosion"
                },
                {
                  type = "create-fire",
                  entity_name = "pm-magnesium-fire-flame",
                  show_in_tooltip = true
                }
              }
            }
          }
        }
      }
    }
  },
  animation = require("__base__.prototypes.entity.rocket-projectile-pictures").animation({1, 0.2, 0.2}),
  shadow = require("__base__.prototypes.entity.rocket-projectile-pictures").shadow,
  smoke = require("__base__.prototypes.entity.rocket-projectile-pictures").smoke,
},


{
  type = "projectile",
  name = "pm-poison-shotgun-pellet",
  flags = {"not-on-map"},
  collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
  acceleration = 0,
  direction_only = true,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "damage",
          damage = {amount = 2, type = "physical"}
        },
        {
          type = "damage",
          damage = {amount = 4, type = "pm-penetrative"}
        },
        {
          type = "create-sticker",
          sticker = "pm-bio-poison-sticker",
          duration_in_ticks = 12 * 60,
          damage_interval = 60,
          show_in_tooltip = true
        }
      }
    },
  },
  animation =
  {
    filename = "__base__/graphics/entity/bullet/bullet.png",
    tint = {r = 1, g = 0, b = 1},
    draw_as_glow = true,
    frame_count = 1,
    width = 3,
    height = 50,
    priority = "high"
  }
},
{
  type = "projectile",
  name = "pm-slug-pellet",
  flags = {"not-on-map"},
  collision_box = {{-0.1, -0.3}, {0.1, 0.3 }},
  acceleration = 0,
  direction_only = true,
  piercing_damage = 30,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "damage",
          damage = {amount = 4, type = "physical"}
        },
        {
          type = "damage",
          damage = {amount = 12, type = "pm-penetrative"}
        },
      }
    }
  },
  animation =
  {
    filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
    draw_as_glow = true,
    frame_count = 1,
    width = 3,
    height = 50,
    priority = "high"
  }
},
{
  type = "projectile",
  name = "pm-heavy-piercing-slug-pellet",
  flags = {"not-on-map"},
  collision_box = {{-0.1, -0.3}, {0.1, 0.3}},
  acceleration = 1,
  direction_only = true,
  piercing_damage = 90,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "damage",
          damage = {amount = 3, type = "physical"}
        },
        {
          type = "damage",
          damage = {amount = 15, type = "pm-penetrative"}
        },
      }
    }
  },
  animation =
  {
    filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
    draw_as_glow = true,
    frame_count = 1,
    width = 3,
    height = 50,
    priority = "high"
  }
},

{
  type = "projectile",
  name = "pm-high-density-slug-pellet",
  flags = {"not-on-map"},
  collision_box = {{-0.1, -0.3}, {0.1, 0.3}},
  acceleration = 1,
  direction_only = true,
  piercing_damage = 300,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "damage",
          damage = {amount = 2, type = "physical"},
        },
        {
          type = "damage",
          damage = {amount = 18, type = "pm-penetrative"}
        }
      },
    }
  },
  animation =
  {
    filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
    draw_as_glow = true,
    frame_count = 1,
    width = 3,
    height = 50,
    priority = "high"
  }
},
{
  type = "projectile",
  name = "pm-poison-slug-pellet",
  flags = {"not-on-map"},
  collision_box = {{-0.1, -0.3}, {0.1, 0.3 }},
  acceleration = 0,
  direction_only = true,
  piercing_damage = 100,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "damage",
          damage = {amount = 14, type = "pm-penetrative"}
        },
        {
          type = "create-sticker",
          sticker = "pm-bio-poison-sticker",
          duration_in_ticks = 20 * 60,
          damage_interval = 60,
          show_in_tooltip = true
        }
      }
    }
  },
  animation =
  {
    filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
    draw_as_glow = true,
    frame_count = 1,
    width = 3,
    height = 50,
    priority = "high"
  }
},
})

data.raw["projectile"]["shotgun-pellet"].action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "damage",
        damage = {amount = 3, type = "physical"}
      },
      {
        type = "damage",
        damage = {amount = 3, type = "pm-penetrative"}
      }
    }
  }
}

data.raw["projectile"]["piercing-shotgun-pellet"].piercing_damage = 150
data.raw["projectile"]["piercing-shotgun-pellet"].action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "damage",
        damage = {amount = 4, type = "physical"}
      },
      {
        type = "damage",
        damage = {amount = 4, type = "pm-penetrative"}
      },
    }
  }
}
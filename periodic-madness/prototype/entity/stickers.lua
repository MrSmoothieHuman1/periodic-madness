data:extend({

{
    type = "sticker",
    name = "pm-bio-poison-sticker",
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
      line_length = 5,
      width = 42,
      height = 48,
      frame_count = 50,
      animation_speed = 0.5,
      tint = { r = 0.612, g = 0.063, b = 0.729, a = 0.694 },   -- #ffa900b1
      shift = util.by_pixel(2, -0.5),
      scale = 0.5
    },
    duration_in_ticks = 10 * 60,
    damage_interval = 60,
    target_movement_modifier = 0.9,
    damage_per_tick =
    {
      amount = 6,
      type = "poison"
    }
},
})
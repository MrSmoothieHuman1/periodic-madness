  return
  {
     animation_list = {
        -- Beacon Base
        {
            render_layer = "lower-object-above-shadow",
            always_draw = true,
            animation = {
                layers = {
                    -- Base
                    {
                        filename = "__periodic-graphics-1__/graphics/entities/buildings/hub-beacon/beacon-base.png",
                        width = 116 * 2,
                        height = 93 * 2,
                        scale = 0.75,
                        shift = util.by_pixel(11, 1.5),
                    },
                    -- Shadow
                    {
                        filename = "__periodic-graphics-1__/graphics/entities/buildings/hub-beacon/beacon-base-shadow.png",
                        width = 116 * 2,
                        height = 93 * 2,
                        scale = 0.75,
                        shift = util.by_pixel(11, 1.5),
                        draw_as_shadow = true,
                    }
                }
            }
        },
        -- Beacon Antenna
        {
            render_layer = "object",
            always_draw = true,
            animation = {
                layers = {
                    -- Base
                    {
                        filename = "__periodic-graphics-1__/graphics/entities/buildings/hub-beacon/beacon-antenna.png",
                        width = 54 * 2,
                        height = 50 * 2,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        scale = 0.75,
                        shift = util.by_pixel(-1, -55),
                    },
                    -- Shadow
                    {
                        filename = "__periodic-graphics-1__/graphics/entities/buildings/hub-beacon/beacon-antenna-shadow.png",
                        width = 63 * 2,
                        height = 49 * 2,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        scale = 0.75,
                        shift = util.by_pixel(100.5, 15.5),
                        draw_as_shadow = true,
                    }
                }
            }
        }
    }
}
--end

data:extend({

    {
        type = "item",
        name = "pm-protactinium-233",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "a",
        custom_tooltip_fields =
        {
            {
              name = {"pm-tooltips.beta-decay"},
              value = {"", "[img=item.pm-uranium-233]", {"item-name.pm-uranium-233"}}
            },
        },
        stack_size = 100,
    },

    {
        type = "recipe",
        name = "pm-protactinium-233",
        enabled = false,
        energy_required = 12,
        categories = {"pm-beta-decay"},
        main_product = "pm-protactinium-233",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-thorium-233", 4),
        },
        results =
        {
            PM.product("pm-protactinium-233"):amount(2):chance(0, 0.5):done(),
            PM.product("pm-thorium-233"):amount(2):chance(0.5, 1):catalyst(2):done()
        }
    },
})
data:extend({
    {
        type = "item",
        name = "pm-tennessine-297",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-tennessine-rnm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-tennessine-294",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-tennessine-rnm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-tennessine-297",
        enabled = false,
        energy_required = 50,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-tennessine-297",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 5),
            PM.ingredient("pm-livermorium-296", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(4):chance(0, 0.55):done(),
            PM.product("pm-livermorium-296"):amount(4):chance(0, 0.55):done(),
            PM.product("pm-tennessine-297"):amount(2):chance(0.55, 1):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-tennessine-294",
        enabled = false,
        energy_required = 25,
        categories = {"pm-alpha-decay"},
        main_product = "pm-tennessine-294",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-tennessine-297", 4)
        },
        results =
        {
            PM.product("pm-tennessine-294"):amount(4):done(),
        }
    },
})
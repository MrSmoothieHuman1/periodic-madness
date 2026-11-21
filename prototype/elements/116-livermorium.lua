data:extend({
    {
        type = "item",
        name = "pm-livermorium-296",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-livermorium-ptm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-livermorium-293",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-livermorium-ptm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-livermorium-296",
        enabled = false,
        energy_required = 60,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-moscovium-288",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 5),
            PM.ingredient("pm-moscovium-288", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(4):chance(0, 0.5):done(),
            PM.product("pm-moscovium-288"):amount(4):chance(0, 0.5):done(),
            PM.product("pm-livermorium-296"):amount(2):chance(0.5, 1):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-livermorium-293",
        enabled = false,
        energy_required = 20,
        categories = {"pm-alpha-decay"},
        main_product = "pm-livermorium-293",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-livermorium-296", 4)
        },
        results =
        {
            PM.product("pm-livermorium-293"):amount(3):done(),
            PM.product("pm-flevorium-290"):amount(1):chance(0.5, 1):done(),
        }
    },
})
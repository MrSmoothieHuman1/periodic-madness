data:extend({
    {
        type = "item",
        name = "pm-flevorium-292",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-flevorium-ptm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-flevorium-290",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-flevorium-ptm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-flevorium-292",
        enabled = false,
        energy_required = 30,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-flevorium-292",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 5),
            PM.ingredient("pm-nihonium-288", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(4):chance(0, 0.4):done(),
            PM.product("pm-nihonium-288"):amount(4):chance(0, 0.4):done(),
            PM.product("pm-flevorium-292"):amount(2):chance(0.4, 1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-flevorium-290",
        enabled = false,
        energy_required = 15,
        categories = {"pm-alpha-decay"},
        main_product = "pm-flevorium-290",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-flevorium-292", 4)
        },
        results =
        {
            PM.product("pm-flevorium-290"):amount(4):done()
        }
    },

})
data:extend({
    {
        type = "item",
        name = "pm-moscovium-288",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-moscovium-ptm",
        order = "a",
        stack_size = 100
    },

    {
        type = "recipe",
        name = "pm-moscovium-288",
        enabled = false,
        energy_required = 40,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-moscovium-288",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 5),
            PM.ingredient("pm-flevorium-290", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(4):chance(0, 0.45):done(),
            PM.product("pm-flevorium-290"):amount(4):chance(0, 0.45):done(),
            PM.product("pm-moscovium-288"):amount(2):chance(0.45, 1):done(),
            PM.product("pm-nihonium-288"):amount(1):chance(0.45, 1):done(),
        }
    },

})
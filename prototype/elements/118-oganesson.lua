data:extend({
    {
        type = "item",
        name = "pm-oganesson-294",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-oganesson-nb",
        order = "a",
        stack_size = 100
    },

    {
        type = "recipe",
        name = "pm-oganesson-294",
        enabled = false,
        energy_required = 60,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-oganesson-294",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 10),
            PM.ingredient("pm-tennessine-294", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(8):chance(0, 0.6):done(),
            PM.product("pm-tennessine-294"):amount(4):chance(0, 0.6):done(),
            PM.product("pm-oganesson-294"):amount(2):chance(0.6, 1):done(),
        }
    },
})
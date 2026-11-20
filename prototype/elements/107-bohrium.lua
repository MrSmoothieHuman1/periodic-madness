data:extend({
    {
        type = "item",
        name = "pm-bohrium-262",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-bohrium-tm",
        order = "a",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-bohrium-262",
        enabled = false,
        energy_required = 5,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-bohrium-262",
        ingredients =
        {
            PM.ingredient("pm-chromium-54", 5),
            PM.ingredient("pm-seaborgium-263", 5)
        },
        results =
        {
            PM.product("pm-chromium-54"):amount(4):chance(0, 0.05):done(),
            PM.product("pm-seaborgium-263"):amount(4):chance(0, 0.05):done(),
            PM.product("pm-bohrium-262"):amount(2):chance(0.05, 1):done()
        }
    },

})
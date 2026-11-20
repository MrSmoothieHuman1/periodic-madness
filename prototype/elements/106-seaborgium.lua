data:extend({
    {
        type = "item",
        name = "pm-seaborgium-263",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-seaborgium-tm",
        order = "a",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-seaborgium-263",
        enabled = false,
        energy_required = 2.5,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-seaborgium-263",
        ingredients =
        {
            PM.ingredient("pm-oxygen-18", 5, "fluid"),
            --PM.ingredient("pm-californium-249", 5)
        },
        results =
        {
            PM.product("pm-oxygen-18", "fluid"):amount(4):done(),
            --PM.product("pm-calinforium-249"):amount(4):chance(0, 0.1):done(),
            PM.product("pm-seaborgium-263"):amount(2):done()
        }
    },
})
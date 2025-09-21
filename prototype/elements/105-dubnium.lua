data:extend({
    {
        type = "item",
        name = "pm-trace-dubnium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dubnium-tm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-usable-dubnium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/usable-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-dubnium-tm",
        order = "b",
        stack_size = 10
    },

    {
        type = "recipe",
        name = "pm-trace-dubnium",
        enabled = false,
        energy_required = 40,
        category = "pm-cyclotroning",
        subgroup = "pm-dubnium-tm",
        order = "a",
        main_product = "pm-trace-dubnium",
        ingredients =
        {
            PM.ingredient("pm-polonium-210", 5),
            PM.ingredient("iron-plate", 20)
        },
        results =
        {
            PM.product_chance("pm-polonium-210", 5, 0.33),
            PM.product_chance("iron-plate", 20, 0.33),
            PM.product_chance("pm-trace-dubnium", 5, 0.34)
        }
    },
    {
        type = "recipe",
        name = "pm-usable-dubnium",
        enabled = false,
        energy_required = 10,
        subgroup = "pm-dubnium-tm",
        order = "b",
        ingredients =
        {
            PM.ingredient("pm-trace-dubnium", 10)
        },
        results =
        {
            PM.product("pm-usable-dubnium", 1)
        }
    }
})
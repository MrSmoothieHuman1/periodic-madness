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
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dubnium-tm",
        order = "b",
        stack_size = 10
    },

    {
        type = "recipe",
        name = "pm-trace-dubnium",
        enabled = false,
        energy_required = 50,
        category = "pm-cyclotroning",
        subgroup = "pm-dubnium-tm",
        order = "a",
        main_product = "pm-trace-dubnium",
        ingredients =
        {
            PM.ingredient("pm-polonium-210", 20),
            PM.ingredient("iron-plate", 50)
        },
        results =
        {
            PM.product_chance("pm-polonium-210", 20, 0.33),
            PM.product_chance("iron-plate", 50, 0.33),
            PM.product_chance("pm-trace-dubnium", 20, 0.34)
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
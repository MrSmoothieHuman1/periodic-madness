data:extend({
    {
        type = "item",
        name = "pm-molybdenum-99",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-technectium-tm",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-trace-technectium-99",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-technectium-99.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/trace-technectium-99.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/trace-technectium-100.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-technectium-tm",
        order = "b",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-technectium-99",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/technectium-99.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/technectium-99.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/technectium-100.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/technectium-101.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-technectium-tm",
        order = "c",
        stack_size = 10
    },

    {
        type = "recipe",
        name = "pm-molybdenum-99",
        enabled = false,
        energy_required = 30,
        category = "pm-cyclotroning",
        subgroup = "pm-technectium-tm",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-molybdenum-ore", 20)
        },
        results =
        {
            PM.product_range("pm-molybdenum-99", 9, 14)
        }
    },
    {
        type = "recipe",
        name = "pm-trace-technectium-99",
        enabled = false,
        energy_required = 15,
        category = "chemistry",
        subgroup = "pm-technectium-tm",
        order = "b",
        main_product = "pm-trace-technectium-99",
        ingredients =
        {
            PM.ingredient("pm-molybdenum-99", 10),
            PM.ingredient("pm-aluminium-plate", 8),
            PM.ingredient("sulfuric-acid", 12, "fluid"),
        },
        results =
        {
            PM.product("pm-trace-technectium-99", 5),
            PM.product_range_chance("pm-trace-technectium-99", 0, 3, 0.75),
            PM.product_chance("pm-trace-technectium-99", 1, 0.5),
            PM.product_range_chance("pm-trace-technectium-99", 0, 1, 0.25)
        }
    },
    {
        type = "recipe",
        name = "pm-technectium-99",
        enabled = false,
        energy_required = 15,
        subgroup = "pm-technectium-tm",
        order = "c",
        ingredients =
        {
            PM.ingredient("pm-trace-technectium-99", 10)
        },
        results =
        {
            PM.product("pm-technectium-99", 1)
        }
    }
})
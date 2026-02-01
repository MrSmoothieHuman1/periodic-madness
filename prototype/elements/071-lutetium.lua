data:extend({

    {
        type = "item",
        name = "pm-trace-lutetium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "a",
        stack_size = 10,
    },
    {
        type = "item",
        name = "pm-lutetium-powder",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "b",
        stack_size = 100,
    },
    {
        type = "item",
        name = "pm-lutetium-salts",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "c",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-low-lutetium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "da",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-high-lutetium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "ea",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-lutetium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-lutetium-la",
        order = "f",
        stack_size = 100,
    },
    {
        type = "item",
        name = "pm-lutetium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/lutetium.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/lutetium.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/lutetium-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/lutetium-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-lutetium-la",
        order = "b",
        protons = 71,
        neutrons = 104,
        stack_size = 200,
    },

    {
        type = "recipe",
        name = "pm-trace-lutetium",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 5),
            PM.ingredient("sulfuric-acid", 10, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 3)
        },
        results =
        {
            PM.product_range("pm-trace-lutetium", 2, 5)
        }
    },
    {
        type = "recipe",
        name = "pm-lutetium-powder",
        enabled = false,
        energy_required = 8,
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-trace-lutetium", 10)
        },
        results =
        {
            PM.product("pm-lutetium-powder", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-lutetium-salts",
        enabled = false,
        energy_required = 16,
        category = "pm-electrolysis",
        ingredients =
        {
            PM.ingredient("pm-lutetium-powder", 2),
            PM.ingredient("pm-hydrogen-gas", 20, "fluid"),
            PM.ingredient("pm-patina", 6)
        },
        results =
        {
            PM.product("pm-lutetium-salts", 4),
        }
    },
    {
        type = "recipe",
        name = "pm-lutetium-salt-seperation",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        subgroup = "pm-lutetium-la",
        order = "c",
        main_product = "pm-low-lutetium-mixture",
        ingredients =
        {
            PM.ingredient("pm-rubber-resin", 25, "fluid"),
            PM.ingredient("pm-pheonlic-resin", 25, "fluid"),
            PM.ingredient("pm-lutetium-salts", 2)
        },
        results =
        {
            PM.product("pm-low-lutetium-mixture", 3),
            PM.product_range("pm-high-lutetium-mixture", 1, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-low-lutetium-mixture-seperation",
        enabled = false,
        energy_required = 12,
        category = "pm-washing",
        subgrouo = "pm-lutetium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-lutetium-chloride",
        ingredients =
        {
            PM.ingredient("pm-low-lutetium-mixture", 2),
            PM.ingredient("pm-chlorine", 25, "fluid"),
            PM.ingredient("pm-beryllium-plate", 4)
        },
        results =
        {
            PM.catalyst("pm-beryllium-plate", 2, 2),
            PM.product("pm-lutetium-chloride", 2),
            PM.catalyst("pm-rubber-resin", 12.5, 12.5, "fluid"),
            PM.catalyst("pm-pheonlic-resin", 12.5, 12.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-high-lutetium-mixture-seperation",
        enabled = false,
        energy_required = 12,
        category = "pm-washing",
        subgrouo = "pm-lutetium-la",
        order = "da",
        allow_productivity = true,
        main_product = "pm-lutetium-chloride",
        ingredients =
        {
            PM.ingredient("pm-high-lutetium-mixture", 2),
            PM.ingredient("pm-chlorine", 25, "fluid"),
            PM.ingredient("pm-magnesium-plate", 4)
        },
        results =
        {
            PM.catalyst("pm-magnesium-plate", 2, 2),
            PM.product("pm-lutetium-chloride", 3),
            PM.catalyst("pm-rubber-resin", 12.5, 12.5, "fluid"),
            PM.catalyst("pm-pheonlic-resin", 12.5, 12.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-lutetium",
        enabled = false,
        energy_required = 24,
        category = "pm-electrolysis",
        allow_productivity = true,
        main_product = "pm-lutetium",
        ingredients =
        {
            PM.ingredient("pm-lutetium-chloride", 2),
            PM.ingredient("pm-calcium-ore", 4)
        },
        results =
        {
            PM.catalyst("pm-calcium-ore", 2, 2),
            PM.product("pm-lutetium", 2)
        }
    }
})
data:extend({
    {
        type = "item",
        name = "pm-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "a",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-washed-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "c",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-holmium-enriched-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "d",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-holmium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "ea",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-holmium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "eb",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-holmium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-holmium-la",
        order = "g",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-holmium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/holmium-plate.png",
        subgroup = "pm-holmium-la",
        order = "h",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-monazite-sand",
        enabled = false,
        energy_required = 4,
        category = "pm-crushing",
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 3),
            PM.ingredient("pm-sand", 2),
            PM.ingredient("pm-lanthanum-ore", 1),
        },
        results =
        {
            PM.product_range("pm-monazite-sand", 12, 15)
        }
    },
    {
        type = "recipe",
        name = "pm-monazite-sand-seperation",
        enabled = false,
        energy_required = 12,
        category = "centrifuging",
        subgroup = "pm-holmium-la",
        order = "b",
        main_product = "pm-holmium-fluoride",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 6),
            PM.ingredient("pm-flourine", 2),
            PM.ingredient("pm-chlorine", 5, "fluid")
        },
        results =
        {
            PM.product_chance("pm-holmium-fluoride", 2, 0.05),
            PM.product_chance("pm-holmium-chloride", 2, 0.05),
            PM.catalyst("pm-flourine", 1, 1),
            PM.catalyst("pm-chlorine", 4, 4, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-washed-monazite-sand",
        enabled = false,
        energy_required = 8,
        category = "pm-washing",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 12),
            PM.ingredient("pm-chromic-acid", 25, "fluid"),
            PM.ingredient("pm-nitric-acid", 10, "fluid")
        },
        results =
        {
            PM.product("pm-washed-monazite-sand", 8)
        }
    },
    {
        type = "recipe",
        name = "pm-washed-monazite-sand-seperation",
        enabled = false,
        energy_required = 6,
        category = "centrifuging",
        subgroup = "pm-holmium-la",
        order = "d",
        main_product = "pm-holmium-fluoride",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-washed-monazite-sand", 4),
            PM.ingredient("pm-flourine", 3),
            PM.ingredient("pm-chlorine", 10, "fluid")
        },
        results =
        {
            PM.product_chance("pm-holmium-fluoride", 2, 0.1),
            PM.product_chance("pm-holmium-chloride", 2, 0.1),
            PM.catalyst("pm-flourine", 2, 2),
            PM.catalyst("pm-chlorine", 7.5, 7.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-enriched-monazite-sand",
        enabled = false,
        energy_required = 16,
        category = "pm-mixing",
        ingredients =
        {
            PM.ingredient("pm-washed-monazite-sand", 8),
            PM.ingredient("pm-lanthanum-ore", 2),
            PM.ingredient("pm-zinc-plate", 1)
        },
        results =
        {
            PM.product("pm-holmium-enriched-monazite-sand", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-enriched-monazite-sand-seperation",
        enabled = false,
        energy_required = 3,
        category = "centrifuging",
        subgroup = "pm-holmium-la",
        order = "f",
        main_product = "pm-holmium-fluoride",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-holmium-enriched-monazite-sand", 3),
            PM.ingredient("pm-flourine", 4),
            PM.ingredient("pm-chlorine", 20, "fluid")
        },
        results =
        {
            PM.product_chance("pm-holmium-fluoride", 2, 0.2),
            PM.product_chance("pm-holmium-chloride", 2, 0.2),
            PM.catalyst("pm-flourine", 3, 3),
            PM.catalyst("pm-chlorine", 15, 15, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-from-holmium-fluoride",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-holmium-la",
        order = "g",
        allow_productivity = true,
        main_product = "pm-holmium",
        ingredients =
        {
            PM.ingredient("pm-holmium-fluoride", 4),
            PM.ingredient("pm-calcium-ore", 2),
            PM.ingredient("pm-yttrium-catalyst", 3)
        },
        results = 
        {
            PM.product_range("pm-holmium", 3, 4),
            PM.catalyst_chance("pm-yttrium-catalyst", 3, 0.8, 3),
            PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-from-holmium-chloride",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-holmium-la",
        order = "ga",
        allow_productivity = true,
        main_product = "pm-holmium",
        ingredients =
        {
            PM.ingredient("pm-holmium-chloride", 4),
            PM.ingredient("pm-calcium-ore", 2),
            PM.ingredient("pm-yttrium-catalyst", 3)
        },
        results = 
        {
            PM.product_range("pm-holmium", 3, 4),
            PM.catalyst_chance("pm-yttrium-catalyst", 3, 0.8, 3),
            PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-holmium", 1)
        },
        results =
        {
            PM.product("pm-holmium-plate", 1)
        }
    },
})
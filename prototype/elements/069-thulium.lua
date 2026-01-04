data:extend({
    {
        type = "item",
        name = "pm-thulium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/thulium.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/thulium.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/thulium-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/thulium-3.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/thulium-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-thulium-la",
        order = "e",
        protons = 69,
        neutrons = 136,
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-rhenium-platinum-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        category = "centrifuging",
        subgroup = "pm-thulium-la",
        order = "a",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 2),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2),
            PM.ingredient("pm-iodine", 3)
        },
        results =
        {
            PM.product("pm-monazite-sand", 1),
            PM.product_range_chance("pm-thulium", 1, 2, 0.07),
            PM.catalyst("pm-rhenium-platinum-catalyst", 2, 2),
            PM.catalyst_chance("pm-iodine", 3, 0.95, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-yttrium-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        category = "centrifuging",
        subgroup = "pm-thulium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 2),
            PM.ingredient("pm-yttrium-catalyst", 2),
            PM.ingredient("pm-bromine", 3, "fluid")
        },
        results =
        {
            PM.product("pm-monazite-sand", 1),
            PM.product_range_chance("pm-thulium", 1, 2, 0.07),
            PM.catalyst("pm-yttrium-catalyst", 2, 2),
            PM.catalyst_chance("pm-bromine", 3, 3, 0.95, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-cobalt-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        category = "centrifuging",
        subgroup = "pm-thulium-la",
        order = "c",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 2),
            PM.ingredient("pm-cobalt-catalyst", 4),
            PM.ingredient("pm-chlorine", 3, "fluid")
        },
        results =
        {
            PM.product("pm-monazite-sand", 1),
            PM.product_range_chance("pm-thulium", 1, 2, 0.07),
            PM.catalyst("pm-yttrium-catalyst", 4, 4),
            PM.catalyst_chance("pm-chlorine", 3, 3, 0.95, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-vanadium-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        category = "centrifuging",
        subgroup = "pm-thulium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 2),
            PM.ingredient("pm-vanadium-oxide-catalyst", 4),
            PM.ingredient("pm-flourine", 3)
        },
        results =
        {
            PM.product("pm-monazite-sand", 1),
            PM.product_range_chance("pm-thulium", 1, 2, 0.07),
            PM.catalyst("pm-vanadium-oxide-catalyst", 4, 4),
            PM.catalyst_chance("pm-flourine", 3, 0.95, 3)
        }
    },
})
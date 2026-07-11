data:extend({
    {
        type = "item",
        name = "pm-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/monazite-sand.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/monazite-sand.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/monazite-sand-2.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/monazite-sand.png", size = 64, scale = 0.52},
          { filename = "__periodic-madness__/graphics/icons/monazite-sand-2.png", size = 64, scale = 0.43},
        },
        subgroup = "pm-holmium-la",
        order = "a",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-washed-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/washed-monazite-sand.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/washed-monazite-sand.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/washed-monazite-sand-2.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/washed-monazite-sand.png", size = 64, scale = 0.52},
          { filename = "__periodic-madness__/graphics/icons/washed-monazite-sand-2.png", size = 64, scale = 0.45},
        },
        subgroup = "pm-holmium-la",
        order = "c",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-holmium-enriched-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/holmium-enriched-monazite-sand.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/holmium-enriched-monazite-sand.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/holmium-enriched-monazite-sand-2.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/holmium-enriched-monazite-sand-3.png", size = 64, scale = 0.5},
          { filename = "__periodic-madness__/graphics/icons/holmium-enriched-monazite-sand-2.png", size = 64, scale = 0.45},
        },
        subgroup = "pm-holmium-la",
        order = "d",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-holmium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/holmium-fluoride.png",
        subgroup = "pm-holmium-la",
        order = "ea",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-holmium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/holmium-chloride.png",
        subgroup = "pm-holmium-la",
        order = "eb",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-holmium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/holmium.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/ores/holmium.png",   size = 64, scale = 0.5 },
          { filename = "__periodic-madness__/graphics/icons/ores/holmium-2.png", size = 64, scale = 0.5 },
          { filename = "__periodic-madness__/graphics/icons/ores/holmium-3.png", size = 64, scale = 0.46 },
          { filename = "__periodic-madness__/graphics/icons/ores/holmium-4.png", size = 64, scale = 0.5 },
        },
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
        protons = 67,
        neutrons = 98,
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-monazite-sand",
        enabled = false,
        energy_required = 4,
        categories = {"pm-crushing"},
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 3),
            PM.ingredient("pm-sand", 2),
            PM.ingredient("pm-lanthanum-ore", 1),
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(12, 15):done()
        }
    },
    {
        type = "recipe",
        name = "pm-monazite-sand-seperation",
        enabled = false,
        energy_required = 12,
        categories = {"centrifuging"},
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
            PM.product("pm-holmium-fluoride"):amount(2):chance(0.05):done(),
            PM.product("pm-holmium-chloride"):amount(2):chance(0.05):done(),
            PM.product("pm-flourine"):amount(1):catalyst(1):done(),
            PM.product("pm-chlorine", "fluid"):amount(4):catalyst(4):done()
        }
    },
    {
        type = "recipe",
        name = "pm-washed-monazite-sand",
        enabled = false,
        energy_required = 8,
        categories = {"pm-washing"},
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 12),
            PM.ingredient("pm-chromic-acid", 25, "fluid"),
            PM.ingredient("pm-nitric-acid", 10, "fluid")
        },
        results =
        {
            PM.product("pm-washed-monazite-sand"):amount(8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-washed-monazite-sand-seperation",
        enabled = false,
        energy_required = 6,
        categories = {"centrifuging"},
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
            PM.product("pm-holmium-fluoride"):amount(2):chance(0.1):done(),
            PM.product("pm-holmium-chloride"):amount(2):chance(0.1):done(),
            PM.product("pm-flourine"):amount(2):catalyst(2):done(),
            PM.product("pm-chlorine", "fluid"):amount(7.5):catalyst(7.5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-enriched-monazite-sand",
        enabled = false,
        energy_required = 16,
        categories = {"pm-mixing"},
        ingredients =
        {
            PM.ingredient("pm-washed-monazite-sand", 8),
            PM.ingredient("pm-lanthanum-ore", 2),
            PM.ingredient("pm-zinc-plate", 1)
        },
        results =
        {
            PM.product("pm-holmium-enriched-monazite-sand"):amount(6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-enriched-monazite-sand-seperation",
        enabled = false,
        energy_required = 3,
        categories = {"centrifuging"},
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
            PM.product("pm-holmium-fluoride"):amount(2):chance(0.2):done(),
            PM.product("pm-holmium-chloride"):amount(2):chance(0.2):done(),
            PM.product("pm-flourine"):amount(3):catalyst(3):done(),
            PM.product("pm-chlorine", "fluid"):amount(15):catalyst(15):done()
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-from-holmium-fluoride",
        enabled = false,
        energy_required = 6,
        categories = {"chemistry"},
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
            PM.product("pm-holmium"):amount(3, 4):done(),
            PM.product("pm-yttrium-catalyst"):amount(3):chance(0.8):catalyst(3):done(),
            PM.product("pm-catalyst-container"):amount(3):chance(0.2):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-from-holmium-chloride",
        enabled = false,
        energy_required = 6,
        categories = {"chemistry"},
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
            PM.product("pm-holmium"):amount(3, 4):done(),
            PM.product("pm-yttrium-catalyst"):amount(3):chance(0.8):catalyst(3):done(),
            PM.product("pm-catalyst-container"):amount(3):chance(0.2):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-holmium-plate",
        enabled = false,
        energy_required = 6.4,
        categories = {"smelting"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-holmium", 1)
        },
        results =
        {
            PM.product("pm-holmium-plate"):amount(1):done()
        }
    },
})
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
        categories = {"centrifuging"},
        subgroup = "pm-thulium-la",
        order = "a",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.catalyst_ingredient("pm-monazite-sand", 2, 1),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2),
            PM.ingredient("pm-iodine", 3)
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(1):catalyst(1):done(),
            PM.product("pm-thulium"):amount(1, 2):chance(0.07):done(),
            PM.product("pm-rhenium-platinum-catalyst"):amount(2):catalyst(2):done(),
            PM.product("pm-iodine"):amount(3):chance(0.95):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-yttrium-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        categories = {"centrifuging"},
        subgroup = "pm-thulium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.catalyst_ingredient("pm-monazite-sand", 2, 1),
            PM.ingredient("pm-yttrium-catalyst", 2),
            PM.ingredient("pm-bromine", 3, "fluid")
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(1):catalyst(1):done(),
            PM.product("pm-thulium"):amount(1, 2):chance(0.07):done(),
            PM.product("pm-yttrium-catalyst"):amount(2):catalyst(2):done(),
            PM.product("pm-bromine", "fluid"):amount(3):chance(0.95):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-cobalt-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        categories = {"centrifuging"},
        subgroup = "pm-thulium-la",
        order = "c",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.catalyst_ingredient("pm-monazite-sand", 2, 1),
            PM.ingredient("pm-cobalt-catalyst", 4),
            PM.ingredient("pm-chlorine", 3, "fluid")
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(1):catalyst(1):done(),
            PM.product("pm-thulium"):amount(1, 2):chance(0.07):done(),
            PM.product("pm-yttrium-catalyst"):amount(4):catalyst(4):done(),
            PM.product("pm-chlorine", "fluid"):amount(3):chance(0.95):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-vanadium-thulium-centrifuging",
        enabled = false,
        energy_required = 3,
        categories = {"centrifuging"},
        subgroup = "pm-thulium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-thulium",
        ingredients =
        {
            PM.catalyst_ingredient("pm-monazite-sand", 2, 1),
            PM.ingredient("pm-vanadium-oxide-catalyst", 4),
            PM.ingredient("pm-flourine", 3)
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(1):catalyst(1):done(),
            PM.product("pm-thulium"):amount(1, 2):chance(0.07):done(),
            PM.product("pm-vanadium-oxide-catalyst"):amount(4):catalyst(4):done(),
            PM.product("pm-flourine"):amount(3):chance(0.95):catalyst(3):done()
        }
    },
})
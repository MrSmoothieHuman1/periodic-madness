data:extend({
    {
      type = "item",
      name = "pm-gadolinium-nitrate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/gadolinium-nitrate.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/gadolinium-nitrate.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/gadolinium-nitrate-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/gadolinium-nitrate.png", size = 64, scale = 0.45},
        {filename = "__periodic-madness__/graphics/icons/gadolinium-nitrate-2.png", size = 64, scale = 0.52},
      },
      subgroup = "pm-gadolinium-la",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-gadolinium-sponge",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/gadolinium-sponge.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/gadolinium-sponge.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/gadolinium-sponge-2.png", size = 64, scale = 0.45}
      },
      subgroup = "pm-gadolinium-la",
      order = "c",
      stack_size = 250
    },
    {
      type = "item",
      name = "pm-gadolinium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/gadolinium.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/gadolinium.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/gadolinium-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/gadolinium-3.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-gadolinium-la",
      order = "d",
      protons = 64,
      neutrons = 93,
      stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-molten-gadolinium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/molten-gadolinium-chloride.png",
        subgroup = "pm-gadolinium-la",
        order = "b",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-gadolinium-nitrate",
        enabled = false,
        energy_required = 12,
        categories = {"pm-acids"},
        ingredients =
        {
            PM.ingredient("pm-ammonia-gas", 15, "fluid"),
            PM.ingredient("steam", 10, "fluid"),
            PM.ingredient("pm-pure-monazite", 6)
        },
        results =
        {
            PM.product("pm-gadolinium-nitrate"):amount(8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-molten-gadolinium-chloride",
        enabled = false,
        energy_required = 18,
        categories = {"pm-moltening"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-gadolinium-nitrate", 4),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-molten-gadolinium-chloride", "fluid"):amount(7.5):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-gadolinium-sponge",
        enabled = false,
        energy_required = 9,
        categories = {"pm-electrolysis"},
        main_product = "pm-gadolinium-sponge",
        ingredients =
        {
            PM.ingredient("pm-molten-gadolinium-chloride", 7.5, "fluid"),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2)
        },
        results =
        {
            PM.product("pm-gadolinium-sponge"):amount(5):done(),
            PM.product("pm-chlorine", "fluid"):amount(10):done(),
            PM.product("pm-rhenium-platinum-catalyst"):amount(2):chance(0.8):catalyst(2):done(),
            PM.product("pm-catalyst-container"):amount(2):chance(0.2):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-gadolinium",
        enabled = false,
        energy_required = 18,
        categories = {"pm-moltening"},
        allow_productivity = true,
        main_product = "pm-gadolinium",
        ingredients =
        {
            PM.ingredient("pm-gadolinium-sponge", 5),
            PM.ingredient("pm-calcium-ore", 6),
            PM.ingredient("pm-industrial-noble-gas", 25, "fluid")
        },
        results =
        {
            PM.product("pm-gadolinium"):amount(4):done(),
            PM.product("pm-industrial-noble-gas", "fluid"):amount(12.5):catalyst(12.5):done()
        }
    },
})
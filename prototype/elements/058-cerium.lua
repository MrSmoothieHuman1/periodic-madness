data:extend({

    {
      type = "item",
      name = "pm-bastnasite-ce",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/bastnasite-ce.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-ce.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-ce-2.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-ce-3.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-ce-4.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-cerium-la",
      order = "a",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-cerium-dioxide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/cerium-dioxide.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/cerium-dioxide.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/cerium-dioxide-2.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/cerium-dioxide-3.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/cerium-dioxide-4.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-cerium-la",
      order = "b",
      stack_size = 300
    },
    {
      type = "item",
      name = "pm-cerium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/cerium.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/cerium.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/cerium-2.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/cerium-3.png", size = 64, scale = 0.5},
        { filename = "__periodic-madness__/graphics/icons/ores/cerium-4.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-cerium-la",
      order = "c",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-cerium-plate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/plates/cerium-plate.png",
      subgroup = "pm-cerium-la",
      order = "c",
      protons = 59,
      neutrons = 82,
      stack_size = 100
    },
    
    {
        type = "recipe",
        name = "pm-bastnasite-ce",
        energy_required = 12,
        categories = {"chemistry"},
        main_product = "pm-bastnasite-ce",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 6),
            PM.ingredient("sulfuric-acid", 25, "fluid"),
            PM.ingredient("pm-palladium-catalyst", 4)
        },
        results =
        {
            PM.product("pm-bastnasite-ce"):amount(4):done(),
            PM.product("pm-palladium-catalyst"):amount(4):chance(0.85):catalyst(4):done(),
            PM.product("pm-catalyst-container"):amount(4):chance(0.15):catalyst(4):done(),
            PM.product("pm-samarium-oxide"):amount(2):chance(0.2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-cerium-dioxide",
        energy_required = 24,
        categories = {"pm-mixing"},
        main_product = "pm-cerium-dioxide",
        ingredients =
        {
            PM.ingredient("pm-bastnasite-ce", 4),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-cerium-dioxide"):amount(3):done(),
            PM.product("pm-chlorine", "fluid"):amount(5, 10):done(),
            PM.product("pm-hydrogen-gas", "fluid"):amount(5, 10):done(),
            PM.product("pm-calcium-chloride"):amount(0, 2):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-cerium",
        energy_required = 24,
        categories = {"chemistry"},
        main_product = "pm-cerium",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-cerium-dioxide", 4),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2)
        },
        results =
        {
            PM.product("pm-cerium"):amount(4):done(),
            PM.product("pm-rhenium-platinum-catalyst"):amount(2):chance(0.9):catalyst(2):done(),
            PM.product("pm-catalyst-container"):amount(2):chance(0.1):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-cerium-plate",
        energy_required = 6.4,
        categories = {"smelting"},
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-cerium", 1)
        },
        results = 
        {
            PM.product("pm-cerium-plate"):amount(1):done()
        }
    }
})
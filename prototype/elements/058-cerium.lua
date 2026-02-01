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
        category = "chemistry",
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
            PM.product("pm-bastnasite-ce", 4),
            PM.catalyst_chance("pm-palladium-catalyst", 4, 0.85, 4),
            PM.catalyst_chance("pm-catalyst-container", 4, 0.15, 4),
            PM.product_chance("pm-samarium-oxide", 2, 0.2)
        }
    },
    {
        type = "recipe",
        name = "pm-cerium-dioxide",
        energy_required = 24,
        category = "pm-mixing",
        main_product = "pm-cerium-dioxide",
        ingredients =
        {
            PM.ingredient("pm-bastnasite-ce", 4),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-cerium-dioxide", 3),
            PM.product_range("pm-chlorine", 5, 10, "fluid"),
            PM.product_range("pm-hydrogen-gas", 5, 10, "fluid"),
            PM.product_range("pm-calcium-chloride", 0, 2),
        }
    },
    {
        type = "recipe",
        name = "pm-cerium",
        energy_required = 24,
        category = "chemistry",
        main_product = "pm-cerium",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-cerium-dioxide", 4),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2)
        },
        results =
        {
            PM.product("pm-cerium", 4),
            PM.catalyst_chance("pm-rhenium-platinum-catalyst", 2, 0.9, 2),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.1, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-cerium-plate",
        energy_required = 6.4,
        category = "smelting",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-cerium", 1)
        },
        results = 
        {
            PM.product("pm-cerium-plate", 1)
        }
    }
})
data:extend({

    {
      type = "item",
      name = "pm-bastnasite-ce",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png", size = 128, scale = 0.25},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y-2.png", size = 128, scale = 0.25},
      },
      subgroup = "pm-cerium-la",
      order = "a",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-cerium-dioxide",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png", size = 128, scale = 0.25},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y-2.png", size = 128, scale = 0.25},
      },
      subgroup = "pm-cerium-la",
      order = "b",
      stack_size = 300
    },
    {
      type = "item",
      name = "pm-cerium",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png", size = 128, scale = 0.25},
        { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y-2.png", size = 128, scale = 0.25},
      },
      subgroup = "pm-cerium-la",
      order = "c",
      stack_size = 200
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
            --PM.product_chance("pm-samarium", 1, 0.2)
        }
    },
    {
        type = "recipe",
        name = "pm-cerium-dioxide",
        energy_required = 8,
        category = "pm-mixing",
        main_product = "pm-cerium-dioxide",
        ingredients =
        {
            PM.ingredient("pm-bastnasite-ce", 6),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-cerium-dioxide", 2),
            PM.product_range("pm-chlorine", 5, 10, "fluid"),
            PM.product_range("pm-hydrogen-gas", 5, 10, "fluid"),
            PM.product_range("pm-calcium-chloride", 0, 2),
        }
    },
    {
        type = "recipe",
        name = "pm-cerium",
        energy_required = 4,
        category = "chemistry",
        main_product = "pm-cerium",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-cerium-dioxide", 3),
            PM.ingredient("pm-rhenium-platinum-catalyst", 2)
        },
        results =
        {
            PM.product("pm-cerium", 2),
            PM.catalyst_chance("pm-rhenium-platinum-catalyst", 2, 0.9, 2),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.1, 2)
        }
    },
})
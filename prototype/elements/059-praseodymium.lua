data:extend({
    {
      type = "item",
      name = "pm-mixed-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-praseodymium-la",
      order = "a",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-25-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/31-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-praseodymium-la",
      order = "b",
      stack_size = 175
    }, --sounds like a skill issue ngl
    {
      type = "item",
      name = "pm-50-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/51-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-praseodymium-la",
      order = "c",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-75-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-praseodymium-la",
      order = "d",
      stack_size = 125
    },
    {
      type = "item",
      name = "pm-pure-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-praseodymium-la",
      order = "e",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-praseodymium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-praseodymium-la",
      order = "f",
      stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-mixed-praseodymium-deposit",
        enabled = false,
        energy_required = 10,
        category = "pm-leaching",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 8),
            PM.ingredient("pm-acidic-water", 20, "fluid")
        },
        results =
        {
            PM.product("pm-mixed-praseodymium-deposit", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-praseodymium-deposit-seperation",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-praseodymium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-pure-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-mixed-praseodymium-deposit", 6)
        },
        results =
        {
            PM.product_chance("pm-pure-praseodymium-deposit", 1, 0.25),
            PM.product_chance("pm-75-praseodymium-deposit", 1, 0.5),
            PM.product("pm-50-praseodymium-deposit", 1),
            PM.product("pm-25-praseodymium-deposit", 2),
            PM.product_chance("pm-neodymium-oxide", 1, 0.75)
        }
    },
    {
        type = "recipe",
        name = "pm-75-to-pure-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        category = "pm-crystallisation",
        subgroup = "pm-praseodymium-la",
        order = "c",
        allow_productivity = true,
        main_product = "pm-pure-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-ammonium-nitrate", 2),
            PM.ingredient("pm-light-coolant", 2.5, "fluid", 1),
            PM.ingredient("pm-75-praseodymium-deposit", 2)
        },
        results =
        {
            PM.product("pm-pure-praseodymium-deposit", 1),
            PM.product("pm-ammonium-nitrate", 1),
            PM.catalyst("pm-hot-light-coolant", 2.5, 2.5, "fluid", 1),
            PM.product_chance("pm-50-praseodymium-deposit", 1, 0.5),
            PM.product_chance("pm-25-praseodymium-deposit", 1, 0.75)
        }
    },
    {
        type = "recipe",
        name = "pm-50-to-75-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        category = "pm-crystallisation",
        subgroup = "pm-praseodymium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-75-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-ammonium-nitrate", 3),
            PM.ingredient("pm-light-coolant", 5, "fluid", 1),
            PM.ingredient("pm-50-praseodymium-deposit", 2)
        },
        results =
        {
            PM.product("pm-75-praseodymium-deposit", 1),
            PM.product_range("pm-ammonium-nitrate", 1, 2),
            PM.catalyst("pm-hot-light-coolant", 5, 5, "fluid", 1),
            PM.product_chance("pm-pure-praseodymium-deposit", 1, 0.2),
            PM.product_chance("pm-25-praseodymium-deposit", 1, 0.75)
        }
    },
    {
        type = "recipe",
        name = "pm-25-to-50-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        category = "pm-crystallisation",
        subgroup = "pm-praseodymium-la",
        order = "e",
        allow_productivity = true,
        main_product = "pm-50-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-ammonium-nitrate", 4),
            PM.ingredient("pm-light-coolant", 7.5, "fluid", 1),
            PM.ingredient("pm-25-praseodymium-deposit", 2)
        },
        results =
        {
            PM.product("pm-50-praseodymium-deposit", 1),
            PM.product("pm-ammonium-nitrate", 2),
            PM.catalyst("pm-hot-light-coolant", 7.5, 7.5, "fluid", 1),
            PM.product_chance("pm-pure-praseodymium-deposit", 1, 0.2),
            PM.product_chance("pm-75-praseodymium-deposit", 1, 0.25)
        }
    },
    {
        type = "recipe",
        name = "pm-praseodymium",
        enabled = false,
        energy_required = 2.5,
        category = "chemistry",
        main_product = "pm-praseodymium",
        ingredients =
        {
            PM.ingredient("pm-pure-praseodymium-deposit", 4)
        },
        results =
        {
            PM.product_chance("stone", 2, 0.33),
            PM.product("pm-praseodymium", 2)
        }
    }
})
data:extend({
    {
      type = "item",
      name = "pm-mixed-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/mixed-praseodymium-deposit.png",
      subgroup = "pm-praseodymium-la",
      order = "a",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-25-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/25-praseodymium-deposit.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/25-praseodymium-deposit.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/26-praseodymium-deposit.png", size = 64, scale = 0.43}
      },
      subgroup = "pm-praseodymium-la",
      order = "b",
      stack_size = 175
    }, --sounds like a skill issue ngl
    {
      type = "item",
      name = "pm-50-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/50-praseodymium-deposit.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/50-praseodymium-deposit.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/51-praseodymium-deposit.png", size = 64, scale = 0.45}
      },
      subgroup = "pm-praseodymium-la",
      order = "c",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-75-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/75-praseodymium-deposit.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/75-praseodymium-deposit.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/76-praseodymium-deposit.png", size = 64, scale = 0.44}
      },
      subgroup = "pm-praseodymium-la",
      order = "d",
      stack_size = 125
    },
    {
      type = "item",
      name = "pm-pure-praseodymium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/pure-praseodymium-deposit.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/pure-praseodymium-deposit.png", size = 64, scale = 0.5},
        --{filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-praseodymium-la",
      order = "e",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-praseodymium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/praseodymium.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/praseodymium.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/praseodymium-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/praseodymium-3.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-praseodymium-la",
      order = "f",
      protons = 59,
      neutrons = 82,
      stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-mixed-praseodymium-deposit",
        enabled = false,
        energy_required = 10,
        categories = {"pm-leaching"},
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 8),
            PM.ingredient("pm-acidic-water", 20, "fluid")
        },
        results =
        {
            PM.product("pm-mixed-praseodymium-deposit"):amount(6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-praseodymium-deposit-seperation",
        enabled = false,
        energy_required = 10,
        categories = {"pm-crushing"},
        subgroup = "pm-praseodymium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-pure-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-mixed-praseodymium-deposit", 4)
        },
        results =
        {
            PM.product("pm-pure-praseodymium-deposit"):amount(1):chance(0.25):done(),
            PM.product("pm-75-praseodymium-deposit"):amount(1):chance(0.5):done(),
            PM.product("pm-50-praseodymium-deposit"):amount(1):done(),
            PM.product("pm-25-praseodymium-deposit"):amount(2):done(),
            PM.product("pm-neodymium-oxide"):amount(1):chance(0.75):done()
        }
    },
    {
        type = "recipe",
        name = "pm-75-to-pure-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        categories = {"pm-crystallisation"},
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
            PM.product("pm-pure-praseodymium-deposit"):amount(1):done(), --turns into 1 pure
            PM.product("pm-ammonium-nitrate"):amount(1):catalyst(1):done(),
            PM.product("pm-hot-light-coolant", "fluid"):amount(2.5):catalyst(2.5):index(1):done(),
            PM.product("pm-50-praseodymium-deposit"):amount(1):chance(0.5):catalyst(1):done(),
            PM.product("pm-25-praseodymium-deposit"):amount(1):chance(0.75):catalyst(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-50-to-75-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        categories = {"pm-crystallisation"},
        subgroup = "pm-praseodymium-la",
        order = "d",
        main_product = "pm-75-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-ammonium-nitrate", 3),
            PM.ingredient("pm-light-coolant", 5, "fluid", 1),
            PM.ingredient("pm-50-praseodymium-deposit", 2)
        },
        results =
        {
            PM.product("pm-75-praseodymium-deposit"):amount(1):catalyst(1):done(), --turns into 1 75% pras
            PM.product("pm-ammonium-nitrate"):amount(1, 2):catalyst(2):done(),
            PM.product("pm-hot-light-coolant", "fluid"):amount(5):catalyst(5):index(1):done(),
            PM.product("pm-pure-praseodymium-deposit"):amount(1):chance(0.5):catalyst(1):done(),
            PM.product("pm-25-praseodymium-deposit"):amount(1):chance(0.75):catalyst(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-25-to-50-praseodymium-deposit",
        enabled = false,
        energy_required = 5,
        categories = {"pm-crystallisation"},
        subgroup = "pm-praseodymium-la",
        order = "e",
        main_product = "pm-50-praseodymium-deposit",
        ingredients =
        {
            PM.ingredient("pm-ammonium-nitrate", 4),
            PM.ingredient("pm-light-coolant", 7.5, "fluid", 1),
            PM.ingredient("pm-25-praseodymium-deposit", 2)
        },
        results =
        {
            PM.product("pm-50-praseodymium-deposit"):amount(1):catalyst(1):done(), --turns into 1 50% pras
            PM.product("pm-ammonium-nitrate"):amount(2):catalyst(2):done(),
            PM.product("pm-hot-light-coolant", "fluid"):amount(7.5):catalyst(7.5):index(1):done(),
            PM.product("pm-pure-praseodymium-deposit"):amount(1):chance(0.5):catalyst(1):done(),
            PM.product("pm-75-praseodymium-deposit"):amount(1):chance(0.75):catalyst(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-praseodymium",
        enabled = false,
        energy_required = 2.5,
        categories = {"chemistry"},
        main_product = "pm-praseodymium",
        ingredients =
        {
            PM.ingredient("pm-pure-praseodymium-deposit", 4)
        },
        results =
        {
            PM.product("stone"):amount(2):chance(0.33):catalyst(2):done(),
            PM.product("pm-praseodymium"):amount(2, 3):done()
        }
    }
})
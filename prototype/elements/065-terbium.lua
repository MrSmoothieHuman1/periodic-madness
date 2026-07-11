data:extend({
    {
      type = "item",
      name = "pm-terbium-salts",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-salts.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-salts.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-salts-2.png", size = 64, scale = 0.46},
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-salts-3.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-salts-4.png", size = 64, scale = 0.51},
      },
      subgroup = "pm-terbium-la",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-terbium-chloride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-chloride.png",
      subgroup = "pm-terbium-la",
      order = "b",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-bromide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-bromide.png",
      subgroup = "pm-terbium-la",
      order = "c",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-hydride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-hydride.png",
      subgroup = "pm-terbium-la",
      order = "d",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-sulfate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-sulfate.png",
      subgroup = "pm-terbium-la",
      order = "e",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-impure-terbium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/impure-terbium.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/impure-terbium.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/impure-terbium-2.png", size = 64, scale = 0.46},
        {filename = "__periodic-madness__/graphics/icons/ores/impure-terbium-3.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/impure-terbium-4.png", size = 64, scale = 0.51},
      },
      subgroup = "pm-terbium-la",
      order = "f",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-terbium-fluoride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium-fluoride.png",
      subgroup = "pm-terbium-la",
      order = "g",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-terbium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/terbium.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/terbium.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/terbium-3.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-terbium-la",
      order = "h",
      protons = 65,
      neutrons = 94,
      stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-terbium-salts",
        enabled = false,
        energy_required = 12,
        categories = {"pm-acids"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ammonium-chloride", 3),
            PM.ingredient("pm-nitrogen-gas", 20, "fluid")
        },
        results =
        {
            PM.product("pm-terbium-salts"):amount(8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-salt-seperation",
        enabled = false,
        energy_required = 8,
        categories = {"centrifuging"},
        subgroup = "pm-terbium-la",
        order = "b",
        main_product = "pm-terbium-chloride",
        ingredients =
        {
            PM.product("pm-terbium-salts"):amount(8):done(),
        },
        results =
        {
            PM.product("pm-terbium-chloride"):amount(1, 3):done(),
            PM.product("pm-terbium-bromide"):amount(1, 3):done(),
            PM.product("pm-terbium-hydride"):amount(1, 3):done(),
            PM.product("pm-terbium-sulfate"):amount(1, 3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-chloride-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-terbium-la",
        order = "c",
        allow_productivity = true,
        main_product = "pm-impure-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-chloride", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-terbium"):amount(3):done(),
            PM.product("pm-chlorine", "fluid"):amount(2.5, 5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-bromide-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-terbium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-impure-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-bromide", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-terbium"):amount(3):done(),
            PM.product("pm-boron", "fluid"):amount(2.5, 5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-hydride-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-terbium-la",
        order = "e",
        allow_productivity = true,
        main_product = "pm-impure-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-hydride", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-terbium"):amount(3):done(),
            PM.product("pm-hydrogen-gas", "fluid"):amount(2.5, 5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-sulfate-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-terbium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-impure-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-sulfate", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-terbium"):amount(3):done(),
            PM.product("pm-sulfur-dioxide", "fluid"):amount(2.5, 5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-fluoride",
        enabled = false,
        energy_required = 7.5,
        categories = {"pm-washing"},
        ingredients =
        {
            PM.ingredient("pm-impure-terbium", 4),
            PM.ingredient("pm-ion-exchange-beads", 5),
            PM.ingredient("pm-flourine", 4)
        },
        results =
        {
            PM.product("pm-terbium-fluoride"):amount(6):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-terbium",
        enabled = false,
        energy_required = 15,
        categories = {"pm-moltening"},
        main_product = "pm-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-fluoride", 12),
            PM.ingredient("pm-calcium-ore", 3)
        },
        results = 
        {
            PM.product("pm-terbium"):amount(12):done(),
            PM.product("pm-flourine"):amount(6, 8):catalyst(7):done()
        }
    }
})
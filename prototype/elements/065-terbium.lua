data:extend({
    {
      type = "item",
      name = "pm-terbium-salts",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-terbium-chloride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "b",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-bromide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "c",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-hydride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "d",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-terbium-sulfate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "e",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-impure-terbium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "f",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-terbium-fluoride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "g",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-terbium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-terbium-la",
      order = "h",
      stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-terbium-salts",
        enabled = false,
        energy_required = 12,
        category = "pm-acids",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ammonium-chloride", 3),
            PM.ingredient("pm-nitrogen-gas", 20, "fluid")
        },
        results =
        {
            PM.product("pm-terbium-salts", 8)
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-salt-seperation",
        enabled = false,
        energy_required = 8,
        category = "centrifuging",
        subgroup = "pm-terbium-la",
        order = "b",
        main_product = "pm-terbium-chloride",
        ingredients =
        {
            PM.product("pm-terbium-salts", 8),
        },
        results =
        {
            PM.product_range("pm-terbium-chloride", 1, 3),
            PM.product_range("pm-terbium-bromide", 1, 3),
            PM.product_range("pm-terbium-hydride", 1, 3),
            PM.product_range("pm-terbium-sulfate", 1, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-chloride-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
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
            PM.product("pm-impure-terbium", 3),
            PM.product_range("pm-chlorine", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-bromide-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
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
            PM.product("pm-impure-terbium", 3),
            PM.product_range("pm-boron", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-hydride-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
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
            PM.product("pm-impure-terbium", 3),
            PM.product_range("pm-hydrogen-gas", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-sulfate-to-impure-terbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
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
            PM.product("pm-impure-terbium", 3),
            PM.product_range("pm-sulfur-dioxide", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-terbium-fluoride",
        enabled = false,
        energy_required = 7.5,
        category = "pm-washing",
        ingredients =
        {
            PM.ingredient("pm-impure-terbium", 4),
            PM.ingredient("pm-ion-exchange-beads", 5),
            PM.ingredient("pm-flourine", 4)
        },
        results =
        {
            PM.product("pm-terbium-fluoride", 6),
        }
    },
    {
        type = "recipe",
        name = "pm-terbium",
        enabled = false,
        energy_required = 15,
        category = "pm-moltening",
        main_product = "pm-terbium",
        ingredients =
        {
            PM.ingredient("pm-terbium-fluoride", 12),
            PM.ingredient("pm-calcium-ore", 3)
        },
        results = 
        {
            PM.product("pm-terbium", 12),
            PM.catalyst_range("pm-flourine", 6, 8, 7)
        }
    }
})
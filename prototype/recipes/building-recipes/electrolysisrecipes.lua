data:extend({

  -- a relic, from a kinder past

  {
    type = "recipe",
    name = "pm-salt-electroylsis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/salt-electroylsis.png",
    subgroup = "pm-chlorine-rnm",
    order = "b",
    category = "pm-electrolysis",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-sea-salt", 3 )     --when the fuck did you guys get here
    },
    results =
    {
      PM.product_range("pm-sodium", 2, 4),
      PM.product("pm-chlorine", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-gas-water-electroylsis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gas-water-electroylsis.png",
    energy_required = 1,
    enabled = false,
    category = "pm-electrolysis",
    subgroup = "pm-hydrogen-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("water", 50, "fluid"),
      PM.ingredient("pm-platinum-plate", 3)
    },
    results =
    {
      PM.product("pm-oxygen-gas", 20, "fluid"),
      PM.product("pm-hydrogen-gas", 40, "fluid"),
    },
  },
  {
    type = "recipe",
    name = "pm-nimop-gas-water-electroylsis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gas-water-electroylsis.png",
    energy_required = 1.5,
    enabled = false,
    category = "pm-electrolysis",
    subgroup = "pm-hydrogen-rnm",
    order = "ba",
    ingredients =
    {
      PM.ingredient("water", 150, "fluid"),
      PM.ingredient("pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst", 1)
    },
    results =
    {
      PM.product("pm-oxygen-gas", 50, "fluid"),
      PM.product("pm-hydrogen-gas", 100, "fluid"),
      PM.product_chance("pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst", 1, 0.999)
    },
  },
  {
    type = "recipe",
    name = "pm-carbon-monoxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zirconia-CO2-electroylsis.png",
    energy_required = 4,
    enabled = false,
    category = "pm-electrolysis",
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-gas", 20, "fluid"),
      PM.ingredient("pm-zirconia", 12)
    },
    results =
    {
      PM.product("pm-carbon-monoxide", 20, "fluid"),
      PM.product("pm-oxygen-gas", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-sea-salt-electrolysis",
    enabled = false,
    energy_required = 3,
    category = "pm-electrolysis",
    main_product = "pm-chlorine",
    ingredients =
    {
        PM.ingredient("pm-sea-salt", 8),
    },
    results =
    {
        PM.product("pm-chlorine", 6, "fluid"),
        PM.product("pm-solid-sodium-hydroxide", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-water-mercury-electrolysis",
    enabled = false,
    energy_required = 1,
    category = "pm-electrolysis",
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 25, "fluid"),
        PM.ingredient("pm-liquid-mercury", 10, "fluid")
    },
    results = 
    {
        PM.product("pm-oxygen-gas", 20, "fluid"),
        PM.product("pm-hydrogen-gas", 30, "fluid")
    }
  }
} --[[@as data.RecipePrototype[] ]])

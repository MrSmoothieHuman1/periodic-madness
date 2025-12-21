data:extend({

  -- a relic, from a kinder past
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
    name = "pm-water-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-electrolysis.png",
    enabled = false,
    energy_required = 1,
    category = "pm-electrolysis",
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 25, "fluid"),
    },
    results =
    {
        PM.product("pm-oxygen-gas", 15, "fluid"),
        PM.product("pm-hydrogen-gas", 20, "fluid"),
        PM.product_chance("sulfur", 1, 0.66),
        PM.product_range("stone", 1, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-water-mercury-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-mercury-electrolysis.png",
    enabled = false,
    energy_required = 1,
    category = "pm-electrolysis",
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 25, "fluid"),
        PM.ingredient("pm-liquid-mercury", 7.5, "fluid")
    },
    results =
    {
        PM.product("pm-oxygen-gas", 20, "fluid"),
        PM.product("pm-hydrogen-gas", 30, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-water-platinum-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-platinum-electrolysis.png",
    enabled = false,
    energy_required = 1,
    category = "pm-electrolysis",
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 30, "fluid"),
        PM.ingredient("pm-platinum-plate", 4),
    },
    results = 
    {
        PM.product("pm-oxygen-gas", 25, "fluid"),
        PM.product("pm-hydrogen-gas", 35, "fluid"),
        PM.product_range("pm-platinum-plate", 2, 4)
    }
  }
} --[[@as data.RecipePrototype[] ]])

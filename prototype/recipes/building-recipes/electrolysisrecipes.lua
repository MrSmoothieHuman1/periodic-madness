data:extend({

  -- a relic, from a kinder past
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

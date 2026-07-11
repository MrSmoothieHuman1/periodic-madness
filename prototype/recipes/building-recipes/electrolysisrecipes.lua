data:extend({

  -- a relic, from a kinder past
  {
    type = "recipe",
    name = "pm-carbon-monoxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zirconia-CO2-electroylsis.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-electrolysis"},
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-gas", 20, "fluid"),
      PM.ingredient("pm-zirconia", 8)
    },
    results =
    {
      PM.product("pm-carbon-monoxide", "fluid"):amount(20):done(),
      PM.product("pm-zirconia"):amount(4):catalyst(4):done(),
      PM.product("pm-oxygen-gas", "fluid"):amount(10):done()
    }
  },
  {
    type = "recipe",
    name = "pm-water-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-electrolysis.png",
    enabled = false,
    energy_required = 1,
    categories = {"pm-electrolysis"},
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 25, "fluid"),
    },
    results =
    {
        PM.product("pm-oxygen-gas", "fluid"):amount(15):done(),
        PM.product("pm-hydrogen-gas", "fluid"):amount(20):done(),
        PM.product("sulfur"):amount(1):chance(0.66):done(),
        PM.product("stone"):amount(1, 2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-water-mercury-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-mercury-electrolysis.png",
    enabled = false,
    energy_required = 1,
    categories = {"pm-electrolysis"},
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 25, "fluid"),
        PM.ingredient("pm-liquid-mercury", 7.5, "fluid")
    },
    results =
    {
        PM.product("pm-oxygen-gas", "fluid"):amount(20):done(),
        PM.product("pm-hydrogen-gas", "fluid"):amount(30):done()
    }
  },
  {
    type = "recipe",
    name = "pm-water-platinum-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-platinum-electrolysis.png",
    enabled = false,
    energy_required = 1,
    categories = {"pm-electrolysis"},
    main_product = "pm-oxygen-gas",
    ingredients =
    {
        PM.ingredient("water", 30, "fluid"),
        PM.ingredient("pm-platinum-plate", 4),
    },
    results = 
    {
        PM.product("pm-oxygen-gas", "fluid"):amount(25):done(),
        PM.product("pm-hydrogen-gas", "fluid"):amount(35):done(),
        PM.product("pm-platinum-plate"):amount(2, 4):done()
    }
  }
} --[[@as data.RecipePrototype[] ]])

local PM = require("library")
data:extend({

  {
    type = "recipe",
    name = "pm-water-electroylsis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-electroylsis.png",
    subgroup = "pm-hydrogen-rnm",
    order = "a",
    category = "pm-electrolysis",
    energy_required = 1,
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.2, b = 0.6, a = 1 }, --main visible colour
      secondary = { r = 1, g = 0, b = 0, a = 1 }, --background visible colour
      tertiary = { r = 0.4, g = 0.4, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.5, b = 0.5, a = 1 } --smoke
    },
    ingredients =
    {
      PM.ingredient("pm-seawater", 50 , "fluid"),
    },
    results =
    {
      PM.product("pm-oxygen-gas",   10 , "fluid"),
      PM.product("pm-hydrogen-gas", 20 , "fluid"),
    }
  },
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
      PM.product("pm-oxygen-gas",   20, "fluid"),
      PM.product("pm-hydrogen-gas", 40, "fluid"),
    },
  },
  {
    type = "recipe",
    name = "pm-nimop-gas-water-electroylsis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gas-water-electroylsis.png",
    energy_required = 1.5,
    --enabled = false,
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
    name = "pm-zirconia-carbon-dioxide-electrolysis",
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
} --[[@as data.RecipePrototype[] ]])

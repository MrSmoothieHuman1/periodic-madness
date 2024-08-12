local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "recipe",
    name = "pm-bromine-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-leeching.png",
    enabled = false,
    energy_required = 12,
    category = "pm-washing",
    subgroup = "pm-bromine-rnm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-seawater", 100, "fluid"),
      PM.ingredient("pm-atmosphere", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-hydrogen-bromide", 14, 28, "fluid"),
      PM.product("pm-trace-gas", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-bromide-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-seperation.png",
    enabled = false,
    energy_required = 8,
    category = "pm-electrolysis",
    subgroup = "pm-bromine-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-bromide", 14, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 2)
    },
    results =
    {
      PM.product("pm-bromine-ions", 8, "fluid"),
      PM.product("pm-hydrogen-gas", 8, "fluid"),
      PM.product_range("pm-catalyst-container", 1, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bromide-ion-oxidisation",
    icon_size = 64,
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-bromine-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-bromine-ions", 8, "fluid"),
      PM.ingredient("pm-chlorine", 24, "fluid")
    },
    results =
    {
      PM.product("pm-trace-bromine", 6, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-trace-bromine-condensation",
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-bromine-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-trace-bromine", 6, "fluid"),
    },
    results =
    {
      PM.product("pm-bromine", 4, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vinyl-bromide",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-bromine-rnm",
    order = "e",
    main_product = "pm-vinyl-bromide",
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 5, "fluid"),
      PM.ingredient("pm-bromine", 4, "fluid")
    },
    results =
    {
      PM.product("pm-vinyl-bromide", 10, "fluid"),
      PM.product_range("pm-hydrogen-bromide", 1, 3, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-bromine-leeching",
    enabled = false,
    energy_required = 45,
    category = "pm-leaching",
    subgroup = "pm-bromine-rnm",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-potash", 25),
      PM.ingredient("pm-sea-salt", 30),
      PM.ingredient("pm-high-brine", 50, "fluid")
    },
    results =
    {
      PM.product_range("pm-bromine-ions", 20, 40, "fluid")
    }
  } --[[@as data.RecipePrototype]]
})

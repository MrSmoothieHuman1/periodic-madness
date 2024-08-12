local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "recipe",
    name = "pm-brine-acidifying",
    enabled = false,
    energy_required = 20,
    category = "pm-leaching",
    subgroup = "pm-iodine-rnm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-biomass", 5),
      PM.ingredient("pm-brine", 40, "fluid"),
      PM.ingredient("sulfuric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-acidic-brine", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-solution",
    enabled = false,
    energy_required = 5,
    category = "pm-acids",
    subgroup = "pm-iodine-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-acidic-brine", 5, "fluid"),
      PM.ingredient("pm-chlorine", 20, "fluid"),
      PM.ingredient("pm-iodine", 3)
    },
    results =
    {
      PM.product("pm-iodine-solution", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-solution-concentration",
    enabled = false,
    energy_required = 5,
    category = "pm-washing",
    subgroup = "pm-iodine-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-iodine-solution", 10, "fluid"),
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid")
    },
    results =
    {
      PM.product("pm-hydrogen-iodide", 20, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-iodide-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-iodine-seperation.png",
    enabled = false,
    energy_required = 10,
    category = "pm-acids",
    subgroup = "pm-iodine-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-iodide", 10, "fluid"),
      PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
      PM.product_range("pm-iodine", 5, 8),
      PM.product("pm-hydrochloric-acid", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]]
})

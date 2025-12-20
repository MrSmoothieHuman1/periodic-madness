data:extend({
  {
    type = "item",
    name = "pm-iodine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/iodine.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/iodine.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/iodine-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-iodine-rnm",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-acidic-brine",
    enabled = false,
    energy_required = 20,
    category = "pm-leaching",
    subgroup = "pm-iodine-rnm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-biomass", 5),
      PM.ingredient("pm-brine", 40, "fluid"),
      PM.ingredient("sulfuric-acid", 15, "fluid")
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
    allow_productivity = true,
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
    name = "pm-hydrogen-iodide",
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
    name = "pm-iodine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-iodine-seperation.png",
    enabled = false,
    energy_required = 10,
    category = "pm-acids",
    subgroup = "pm-iodine-rnm",
    order = "d",
    main_product = "pm-iodine",
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

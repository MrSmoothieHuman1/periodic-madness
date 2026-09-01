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
    protons = 53,
    neutrons = 74,
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-hydrogen-iodide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-iodine.png",
    subgroup = "pm-iodine-rnm",
    order = "c",
    default_temperature = 15,
    base_color = {r = 0.96, g = 0.85, b = 1 },
    flow_color = {r = 0.96, g = 0.85, b = 1 },
    auto_barrel = false
  },

  {
    type = "recipe",
    name = "pm-acidic-brine",
    enabled = false,
    energy_required = 20,
    categories = {"pm-leaching"},
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
      PM.product("pm-acidic-brine", "fluid"):amount(10):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-solution",
    enabled = false,
    energy_required = 5,
    categories = {"pm-acids"},
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
      PM.product("pm-iodine-solution", "fluid"):amount(10):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-iodide",
    enabled = false,
    energy_required = 5,
    categories = {"pm-washing"},
    subgroup = "pm-iodine-rnm",
    order = "c",
    crafting_machine_tint = 
    {
        primary = {r = 0.96, g = 0.85, b = 1}
    },
    ingredients =
    {
      PM.ingredient("pm-iodine-solution", 10, "fluid"),
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid")
    },
    results =
    {
      PM.product("pm-hydrogen-iodide", "fluid"):amount(20):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-iodine-seperation.png",
    enabled = false,
    energy_required = 10,
    categories = {"pm-acids"},
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
      PM.product("pm-iodine"):amount(5, 8):done(),
      PM.product("pm-hydrochloric-acid", "fluid"):amount(5):done()
    }
  } --[[@as data.RecipePrototype]]
})

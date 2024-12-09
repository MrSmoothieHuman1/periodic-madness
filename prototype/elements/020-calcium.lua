local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-calcite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/calcite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/calcite.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-1.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-2.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-3.png", size = 128, scale = 0.25 }
    },
    subgroup = "pm-calcium-aem",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-calcium-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-dust.png",
    subgroup = "pm-calcium-aem",
    order = "b",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-calcium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/calcium-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/calcium-chloride-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-calcium-aem",
    order = "c",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-calcite-filtering",
    subgroup = "pm-calcium-aem",
    order = "A",
    category = "pm-evaporation",
    enabled = true,
    energy_required = 1.3,
    main_product = "pm-calcite",
    ingredients =
    {
      PM.ingredient("pm-seawater", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-calcite", 4),
      PM.product("water", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-calcite-crushing",
    subgroup = "pm-calcium-aem",
    order = "a",
    category = "pm-crushing",
    enabled = true,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-calcite", 4)
    },
    results =
    {
      PM.product("pm-calcium-dust", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-calcium-dust-washing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/calcium-dust-washing.png",
    subgroup = "pm-calcium-aem",
    category = "pm-washing",
    order = "b",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-calcium-dust", 4),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-calcium-ore", 2),
      PM.product_chance("pm-carbon", 1, 0.5)
    }
  } --[[@as data.RecipePrototype]],
})

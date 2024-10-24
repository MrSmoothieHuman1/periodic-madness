local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-indium-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/indium-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/indium-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/indium-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-indium-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "pm-indium-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-filtering.png",
    category = "pm-washing",
    subgroup = "pm-indium-ptm",
    order = "a",
    energy_required = 2,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-tailings", 10, "fluid"),
      PM.ingredient("pm-lead-froth", 10, "fluid")
    },
    results =
    {
      PM.product("pm-indium-chunks", 4),
      PM.product_chance("pm-zinc-tailings", 5, 0.5, "fluid"),
      PM.product_chance("pm-lead-froth", 5, 0.5, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-indium-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-electrolysis.png",
    category = "pm-electrolysis",
    subgroup = "pm-indium-ptm",
    order = "b",
    energy_required = 20,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-indium-chunks", 12),
      PM.ingredient("pm-stainless-steel-alloy", 4)
    },
    results =
    {
      PM.product("pm-indium-ore", 6),
      PM.product_chance("pm-lead-powder", 2, 0.5),
      PM.product_chance("pm-zinc-chunk", 2, 0.5),
    }
  } --[[@as data.RecipePrototype]]

})

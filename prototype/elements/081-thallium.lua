local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-lorandite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lorandite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lorandite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/lorandite-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-thallium-ptm",
    order = "a",
    stack_size = 100 / 2
  },
  {
    type = "item",
    name = "pm-thallium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/thallium-sulfate.png",
    subgroup = "pm-thallium-ptm",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-thallium-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/thallium-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    enabled = false,
    energy_required = 4,
    category = "pm-acids",
    subgroup = "pm-thallium-ptm",
    allow_productivity = true,
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lorandite", 6),
      PM.product("sulfur", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-mixing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-mixing.png",
    enabled = false,
    energy_required = 8,
    category = "pm-mixing",
    subgroup = "pm-thallium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-ore", 8),
      PM.ingredient("copper-ore", 8),
      PM.ingredient("pm-zinc-ore", 8),
      PM.ingredient("pm-lorandite", 1),
      PM.ingredient("sulfuric-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-thallium-sulfate", 4),
      PM.product_range_chance("pm-arsenic-ore", 0, 3, 0.7),
      PM.catalyst_range("copper-ore", 4, 7, 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-sulfate-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-electrolysis.png",
    enabled = false,
    energy_required = 3,
    category = "pm-electrolysis",
    subgroup = "pm-thallium-ptm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-thallium-sulfate", 4),
      PM.ingredient("pm-stainless-steel-alloy", 6)
    },
    results =
    {
      PM.product("pm-thallium-ore", 2),
      PM.product_range("sulfur", 1, 4)
    }
  } --[[@as data.RecipePrototype]],

})

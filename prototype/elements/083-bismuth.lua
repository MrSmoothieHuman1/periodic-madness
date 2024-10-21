local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-bismuth-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png", size = 64, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-bismuth-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-bismite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.25, mipmap_count = 4},
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.24, mipmap_count = 4},
    },
    subgroup = "pm-bismuth-ptm",
    order = "b",
    stack_size = 400
  },

  {
    type = "recipe",
    name = "pm-bismuth-leeching",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-leeching.png",
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
    subgroup = "pm-bismuth-ptm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-bismuth-chunks", 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bismuth-mixing",
    enabled = false,
    energy_required = 16,
    category = "pm-acids",
    subgroup = "pm-bismuth-ptm",
    order = "b",
    main_product = "pm-bismite",
    ingredients =
    {
      PM.ingredient("pm-molybdenum-ore", 4),
      PM.ingredient("pm-tin-ore", 4),
      PM.ingredient("pm-filled-flux-container", 1),
      PM.ingredient("pm-bismuth-chunks", 6),
      PM.ingredient("pm-chlorine", 12, "fluid")
    },
    results =
    {
      PM.product("pm-bismite", 4),
      PM.catalyst_product("pm-flux-container", 1, 1),
      PM.catalyst_range("pm-tin-ore", 1, 3, 3)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bismuth-crystallisation",
    enabled = false,
    energy_required = 16,
    category = "pm-crystallisation",
    subgroup = "pm-bismuth-ptm",
    order = "c",
    main_product = "pm-bismuth-ore",
    ingredients =
    {
      PM.ingredient("pm-liquid-mercury", 50, "fluid"),
      PM.ingredient("pm-bismite", 4)
    },
    results =
    {
      PM.product("pm-bismuth-ore", 8),
      PM.product_range("pm-mixed-ore-slag", 2, 5)
    }
  } --[[@as data.RecipePrototype]]
})

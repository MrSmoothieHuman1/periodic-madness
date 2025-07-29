local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-bismuth-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png", size = 64, scale = 0.5},
      { filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks-2.png", size = 64, scale = 0.5}
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
      {filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.5, mipmap_count = 4},
      {filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.4, mipmap_count = 4},
    },
    subgroup = "pm-bismuth-ptm",
    order = "b",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-bismuth-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/bismuth.png", size = 64, scale = 0.5, mipmap_count = 4},
      {filename = "__periodic-madness__/graphics/icons/ores/bismuth-2.png", size = 64, scale = 0.5, mipmap_count = 4},
      {filename = "__periodic-madness__/graphics/icons/ores/bismuth-3.png", size = 64, scale = 0.5, mipmap_count = 4}
    },
    subgroup = "pm-bismuth-ptm",
    order = "c",
    stack_size = 200
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
    name = "pm-bismite",
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
      PM.ingredient("pm-bismuth-chunks", 6),
      PM.ingredient("pm-chlorine", 12, "fluid")
    },
    results =
    {
      PM.product("pm-bismite", 4),
      PM.catalyst_range("pm-tin-ore", 1, 3, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-fluxed-bismite",
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
    subgroup = "pm-bismuth-ptm",
    order = "ba",
    main_product = "pm-bismite",
    ingredients =
    {
      PM.ingredient("pm-molybdenum-ore", 4),
      PM.ingredient("pm-tin-ore", 4),
      PM.ingredient("pm-bismuth-chunks", 4),
      PM.ingredient("pm-filled-flux-container", 1),
      PM.ingredient("pm-chlorine", 12, "fluid")
    },
    results =
    {
      PM.product_range("pm-bismite", 4, 6),
      PM.catalyst("pm-flux-container", 1, 1),
      PM.catalyst_range("pm-tin-ore", 1, 4, 3)
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-ore",
    enabled = false,
    energy_required = 10,
    category = "pm-crystallisation",
    subgroup = "pm-bismuth-ptm",
    order = "c",
    main_product = "pm-bismuth-ore",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-liquid-mercury", 50, "fluid"),
      PM.ingredient("pm-bismite", 4),
      PM.ingredient("pm-coolant", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-bismuth-ore", 8),
      PM.product_range("pm-mixed-ore-slag", 0, 3),
      PM.product("pm-hot-coolant", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]]
})

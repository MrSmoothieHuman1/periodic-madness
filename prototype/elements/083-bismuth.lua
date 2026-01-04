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
    protons = 83,
    neutrons = 126,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-bismuth-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      }
    },
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
      PM.ingredient("pm-liquid-mercury", 50, "fluid", 3),
      PM.ingredient("pm-bismite", 4),
      PM.ingredient("pm-coolant", 5, "fluid", 1),
    },
    results =
    {
      PM.product("pm-bismuth-ore", 8),
      PM.product_range("pm-mixed-ore-slag", 0, 3),
      PM.catalyst("pm-hot-coolant", 5, 5, "fluid", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-light-coolant-bismuth-ore",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/bismuth-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/light-coolant.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 10,
    category = "pm-crystallisation",
    subgroup = "pm-bismuth-ptm",
    order = "ca",
    main_product = "pm-bismuth-ore",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-liquid-mercury", 40, "fluid", 3),
      PM.ingredient("pm-bismite", 4),
      PM.ingredient("pm-light-coolant", 2.5, "fluid", 1),
    },
    results =
    {
      PM.product("pm-bismuth-ore", 8),
      PM.product_range("pm-mixed-ore-slag", 0, 2),
      PM.catalyst("pm-hot-coolant", 2.5, 2.5, "fluid", 1)
    }
  },
})

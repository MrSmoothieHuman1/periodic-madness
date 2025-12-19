data:extend({

  {
    type = "item",
    name = "pm-tungsten-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-tungsten-tm",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-wolframite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/wolframite.png",
    subgroup = "pm-tungsten-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tungsten-crystals",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-krystals.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-krystals.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-krystals-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-tungsten-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-scheelite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/scheelite.png",
    subgroup = "pm-tungsten-tm",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tungsten-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-tungsten-tm",
    order = "a",
    stack_size = 150
  },

  {
    type = "recipe",
    name = "pm-tungsten-chunks",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
        scale = 0.45,
      },
    },
    category = "pm-acids",
    subgroup = "pm-tungsten-tm",
    order = "a",
    enabled = false,
    energy_required = 8,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-tungsten-chunks", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-wolframite",
    category = "pm-crushing",
    subgroup = "pm-tungsten-tm",
    order = "c",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-tungsten-chunks", 4)
    },
    results =
    {
      PM.product("pm-wolframite", 6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-wolframite-washing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/wolframite-washing.png",
    category = "pm-washing",
    subgroup = "pm-tungsten-tm",
    order = "d",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-wolframite", 2),
      PM.ingredient("water", 40, "fluid")
    },
    results =
    {
      PM.product("pm-tungsten-crystals", 3),
      PM.product("pm-scheelite", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tungsten-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",
    category = "pm-crushing",
    subgroup = "pm-tungsten-tm",
    order = "e",
    energy_required = 6,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-tungsten-crystals", 6),
      PM.ingredient("pm-scheelite", 4)
    },
    results =
    {
      PM.product("pm-tungsten-ore", 4),
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-argon-tungsten-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-titanium-welding.png",
    subgroup = "pm-tungsten-tm",
    order = "i",
    category = "pm-moltening",
    energy_required = 4.5,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-argon-gas", 40, "fluid"),
      PM.ingredient("pm-wolframite", 15)
    },
    results =
    {
      PM.product("pm-molten-tungsten", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-tungsten-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      },
    },
    category = "pm-acids",
    subgroup = "pm-tungsten-tm",
    order = "b",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-tungsten-chunks", 8)
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-wolframite-crystallisation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/wolframite-crystallisation.png",
    category = "pm-crystallisation",
    subgroup = "pm-tungsten-tm",
    order = "da",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-wolframite", 10),
      PM.ingredient("pm-liquid-mercury", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 2.5, "fluid", 1),
    },
    results =
    {
      PM.product("pm-tungsten-crystals", 15),
      PM.product("pm-scheelite", 10),
      PM.catalyst("pm-hot-coolant", 2.5, 2.5, "fluid", 1),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tungsten-plate",
    subgroup = "pm-tungsten-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-tungsten-ore", 1) },
    results = {
      PM.product("pm-tungsten-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-tungsten",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-tungsten.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tungsten-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-tungsten-tm",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-tungsten-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-tungsten", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-tungsten-tm",
    order = "h",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-tungsten", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-tungsten-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-tungsten-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",
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
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/tungsten-krystals.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-krystals.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/tungsten-krystals-2.png", size = 128, scale = 0.25 }
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
    name = "pm-tungsten-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
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
      PM.ingredient("pm-acidic-water", 50, "fluid")
    },
    results =
    {
      PM.product("pm-tungsten-chunks", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tungsten-crushing",
    category = "pm-crushing",
    subgroup = "pm-tungsten-tm",
    order = "c",
    energy_required = 12,
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
    name = "pm-tungsten-seperation",
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
    order = "h",
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
      PM.ingredient("pm-liquid-mercury", 40, "fluid")
    },
    results =
    {
      PM.product("pm-tungsten-crystals", 15),
      PM.product("pm-scheelite", 10)
    }
  } --[[@as data.RecipePrototype]],
})

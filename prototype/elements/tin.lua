local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-white-tin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/white-tin.png",
    subgroup = "pm-tin-ptm",
    order = "e",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-black-tin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/black-tin.png",
    subgroup = "pm-tin-ptm",
    order = "d",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-cassiterite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/cassiterite.png",
    subgroup = "pm-tin-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tin-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tin-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/tin-chunks.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/tin-chunks-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-tin-ptm",
    order = "b",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-tin-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/tin-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-tin-ptm",
    order = "a",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 6,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-acidic-water", 50, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-cassiterite", 2),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cassiterite-crushing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tin-chunks.png",
    category = "pm-crushing",
    subgroup = "pm-tin-ptm",
    order = "c",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-carbon", 4),
      PM.ingredient("pm-cassiterite", 2)
    },
    results =
    {
      PM.product("pm-tin-chunks", 4),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tin-chunk-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/white-tin.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    category = "pm-acids",
    subgroup = "pm-tin-ptm",
    order = "d",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-calcium-ore", 4),
      PM.ingredient("pm-tin-chunks", 4),
      PM.ingredient("pm-hydrochloric-acid", 25, "fluid")
    },
    results =
    {
      PM.product("pm-black-tin", 3),
      PM.product("pm-white-tin", 3),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-coloured-tin-combining",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tin-combining.png",
    category = "advanced-crafting",
    subgroup = "pm-tin-ptm",
    order = "e",
    main_product = "pm-tin-ore",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-black-tin", 4),
      PM.ingredient("pm-white-tin", 4)
    },
    results =
    {
      PM.product("pm-tin-ore", 6),
      PM.product("pm-cassiterite", 1)
    }
  } --[[@as data.RecipePrototype]],
  -- tin plate is order f
  {
    type = "recipe",
    name = "pm-chromic-tin-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/tin-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-tin-ptm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.82, g = 0, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-cassiterite", 4),
    }
  } --[[@as data.RecipePrototype]],
})

local PM = require("library")
data:extend({


  {
    type = "item",
    name = "pm-nickel-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-nickel-tm",
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-transition-nickel-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-nickel-tm",
    order = "a",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 8),
      PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-nickel-ore", 6),
      PM.product_range("sulfur", 2, 4),
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-transition-nickel-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-nickel-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 8),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-nickel-ore", 6),
      PM.product_range("sulfur", 0, 4),
    }
  } --[[@as data.RecipePrototype]],
})

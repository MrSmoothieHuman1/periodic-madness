local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-iron-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-iron-tm",
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-transition-iron-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-iron-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.66, g = 0.91, b = 1, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("iron-ore", 8),
      PM.product("pm-ferrum", 4),
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-transition-iron-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-iron-tm",
    order = "c",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },     --main visible colour
      secondary = { r = 0.56, g = 0, b = 1, a = 1 },    --background visible colour
      tertiary = { r = 0.66, g = 0, b = 1, a = 0.5 },   -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    allow_productivity = true,
    results =
    {
      PM.product("iron-ore", 8),
      PM.product("pm-ferrum", 4),
    }
  } --[[@as data.RecipePrototype]],
})

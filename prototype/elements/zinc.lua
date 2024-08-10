data:extend({

  {
    type = "item",
    name = "pm-zinc-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-transition-zinc-decomposition",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.63, g = 0.64, b = 0.78, a = 1 }, --background visible colour
      tertiary = { r = 0.73, g = 0.7, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 4,
    ingredients =
    {
      { type = "item",  name = "pm-transition-metals-ore", amount = 12 },
      { type = "fluid", name = "pm-hydrochloric-acid",     amount = 10 },
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      { "pm-zinc-ore", 8 },
      { "sulfur",      4 },
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-transition-zinc-decomposition",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      }
    },
    subgroup = "pm-zinc-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.63, g = 0, b = 0.78, a = 1 },  --background visible colour
      tertiary = { r = 0.73, g = 0, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "pm-transition-metals-ore", amount = 12 },
      { type = "fluid", name = "pm-chromic-acid",          amount = 2 },
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      { "pm-zinc-ore", 8 },
      { "sulfur",      4 },
    }
  } --[[@as data.RecipePrototype]],
})

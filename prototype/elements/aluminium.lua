data:extend({

  {
    type = "recipe",
    name = "pm-transition-aluminium-decomposition",
    subgroup = "pm-aluminium-ptm",
    order = "a",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 1 },    --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 4,
    ingredients =
    {
      { type = "item", name = "pm-post-transition-metals-ore", amount = 12 },
      { "pm-sodium",   6 }
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      { "pm-aluminium-ore", 8 },
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-transition-aluminium-decomposition",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/aluminium-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-aluminium-ptm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 1 },    --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "pm-post-transition-metals-ore", amount = 12 },
      { type = "fluid", name = "pm-chromic-acid",               amount = 2 }
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      { "pm-aluminium-ore", 8 },
    }
  } --[[@as data.RecipePrototype]],
})

data:extend({
  {
    type = "recipe",
    name = "pm-transition-manganese-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.07, g = 0.08, b = 0.38, a = 1 }, --background visible colour
      tertiary = { r = 0.07, g = 0.08, b = 0.4, a = 0.5 }, -- smoke afteraffects
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
      { "pm-manganese-ore", 8 },
      { "iron-ore",         4 }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-transition-manganese-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "c",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.37, g = 0.08, b = 0.38, a = 1 }, --background visible colour
      tertiary = { r = 0.37, g = 0.08, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
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
      { "pm-manganese-ore", 8 },
      { "iron-ore",         4 }
    }
  } --[[@as data.RecipePrototype]],
})

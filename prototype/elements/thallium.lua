data:extend({

  {
    type = "item",
    name = "pm-lorándite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/lorandite.png",
    subgroup = "pm-thallium-ptm",
    order = "a",
    stack_size = 100 / 2
  },
  {
    type = "item",
    name = "pm-thallium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/thallium-sulfate.png",
    subgroup = "pm-thallium-ptm",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-thallium-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/thallium-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    enabled = false,
    energy_required = 4,
    category = "pm-acids",
    subgroup = "pm-thallium-ptm",
    order = "a",
    ingredients =
    {
      { "pm-post-transition-metals-ore", 12 },
      { type = "fluid",                  name = "pm-chromic-acid", amount = 10 }
    },
    results =
    {
      { "pm-lorándite", 6 },
      { "sulfur",       2 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-mixing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-mixing.png",
    enabled = false,
    energy_required = 12,
    category = "pm-acids",
    subgroup = "pm-thallium-ptm",
    order = "b",
    ingredients =
    {
      { "pm-gold-ore",  8 },
      { "copper-ore",   8 },
      { "pm-zinc-ore",  8 },
      { "pm-lorándite", 12 },
      { type = "fluid", name = "sulfuric-acid", amount = 12 }
    },
    results =
    {
      { "pm-thallium-sulfate", 4 },
      {
        name = "pm-arsenic-ore",
        probability = 0.7,
        amount_min = 1,
        amount_max = 4,
      },
      {
        name = "copper-ore",
        amount_min = 4,
        amount_max = 7,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-sulfate-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-electrolysis.png",
    enabled = false,
    energy_required = 3,
    category = "pm-electrolysis",
    subgroup = "pm-thallium-ptm",
    order = "c",
    ingredients =
    {
      { "pm-thallium-sulfate",      4 },
      { "pm-stainless-steel-alloy", 6 }
    },
    results =
    {
      { "pm-thallium-ore", 2 },
      {
        name = "sulfur",
        amount_min = 2,
        amount_max = 4
      }
    }
  } --[[@as data.RecipePrototype]],

})

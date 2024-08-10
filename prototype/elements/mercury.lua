data:extend({

  {
    type = "item",
    name = "pm-mercury-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/mercury-powder.png",
    subgroup = "pm-mercury-tm",
    order = "b",
    stack_size = 140 + 10
  },
  {
    type = "item",
    name = "pm-red-mercury",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/red-mercury.png",
    subgroup = "pm-mercury-tm",
    order = "c",
    stack_size = 140 + 10
  },


  {
    type = "recipe",
    name = "pm-cinnabar-processing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/cinnabar.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-mercury-tm",
    category = "pm-acids",
    order = "a",
    energy_required = 4,
    ingredients =
    {
      { type = "item",  name = "pm-transition-metals-ore", amount = 12 },
      { type = "fluid", name = "pm-hydrochloric-acid",     amount = 4 * 6 + 1 } --i would do factorials but lua doesnt support it. i think. also, that would require typing 4 + 1.
    },
    enabled = false,
    results =
    {
      { "pm-mercury-ore", 8 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mercury-powdering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mercury-powdering.png",
    energy_required = 2,
    ingredients = { { "pm-mercury-ore", 2 } },
    category = "pm-crushing",
    subgroup = "pm-mercury-tm",
    order = "c",
    enabled = false,
    results =
    {
      { "pm-mercury-powder", 4 },
      { "pm-red-mercury",    4 },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mercury-liquifying",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mercury-liquifying.png",
    energy_required = 2,
    subgroup = "pm-mercury-tm",
    category = "crafting-with-fluid",
    order = "d",
    enabled = false,
    ingredients =
    {
      { type = "item",  name = "pm-mercury-powder", amount = 4 },
      { type = "item",  name = "pm-red-mercury",    amount = 4 },
      { type = "fluid", name = "water",             amount = 40 + 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-liquid-mercury", amount = 50 },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mercury-vapour-condensing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mercury-condensing.png",
    subgroup = "pm-mercury-tm",
    order = "e",
    category = "pm-acids",
    allow_decomposition = false,
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { type = "fluid", name = "pm-mercury-vapour", amount = 5 }
    },
    results =
    {
      { type = "fluid", name = "pm-liquid-mercury", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-cinnabar-processing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/cinnabar.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-mercury-tm",
    category = "pm-acids",
    order = "b",
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "pm-transition-metals-ore", amount = 12 },
      { type = "fluid", name = "pm-chromic-acid",          amount = 4 + 1 } --i would do factorials but lua doesnt support it. i think. also, that would require typing 4 + 1.
    },
    enabled = false,
    results =
    {
      { "pm-mercury-ore", 8 }
    }
  } --[[@as data.RecipePrototype]],
})

local PM = require("library")
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
        icon = "__periodic-madness__/graphics/icons/ores/mercury-ore-icon.png",
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
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-hydrochloric-acid", 25, "fluid") 
    },
    enabled = false,
    allow_productivity = true,
    results =
    {
      PM.product("pm-mercury-ore", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mercury-powdering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mercury-powdering.png",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-mercury-ore", 2)
    },
    category = "pm-crushing",
    subgroup = "pm-mercury-tm",
    order = "c",
    enabled = false,
    results =
    {
      PM.product("pm-mercury-powder", 4),
      PM.product("pm-red-mercury", 4),
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-mercury-powder", 4),
      PM.ingredient("pm-red-mercury", 4),
      PM.ingredient("water", 50, "fluid")
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
      PM.ingredient("pm-mercury-vapour", 5, "fluid")
    },
    results =
    {
      PM.product("pm-liquid-mercury", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-cinnabar-processing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/mercury-ore-icon.png",
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 5, "fluid")
    },
    enabled = false,
    results =
    {
      PM.product("pm-mercury-ore", 8)
    }
  } --[[@as data.RecipePrototype]],
})

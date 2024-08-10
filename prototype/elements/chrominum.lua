data:extend({

  {
    type = "item",
    name = "pm-chromite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/chromite.png",
    subgroup = "pm-chrominum-tm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-ferrochrominum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/ferrochrominum.png",
    subgroup = "pm-chrominum-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-chrome-green",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/chrome-green.png",
    subgroup = "pm-chrominum-tm",
    order = "c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "pm-chrominum-leeching",
    energy_required = 4,
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "a",
    ingredients =
    {
      { "pm-transition-metals-ore", 12 },
      { type = "fluid",             name = "pm-acidic-water", amount = 40 + 10 }
    },
    results =
    {
      { "pm-chromite", 8 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromite-seperation",
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-chrominum-tm",
    order = "c",
    enabled = false,
    ingredients =
    {
      { "pm-chromite",  2 },
      { "pm-carbon",    6 },
      { type = "fluid", name = "steam", amount = 20 }
    },
    results =
    {
      { "pm-ferrochrominum", 4 },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ferrochrominum-carbon-seperation",
    category = "pm-coldening",
    main_product = "pm-chrominum-ore",
    subgroup = "pm-chrominum-tm",
    order = "d",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      { "pm-ferrochrominum", 4 },
      { "pm-calcium-ore",    2 },
    },
    results =
    {
      { name = "pm-chrominum-ore", amount_min = 2, amount_max = 4 },
      {
        name = "pm-ferrum",
        amount = 2,
        probability = 0.8
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-acid",
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "e",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-chrominum-ore", 12 },
      { type = "fluid",     name = "sulfuric-acid", amount = 10 },
      { "pm-sodium",        10 }
    },
    results =
    {
      { type = "fluid", name = "pm-chromic-acid", amount = 100 }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-chrominum-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/chromite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    energy_required = 4,
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "b",
    ingredients =
    {
      { "pm-transition-metals-ore", 12 },
      { type = "fluid",             name = "pm-chromic-acid", amount = 10 }
    },
    results =
    {
      { "pm-chromite", 8 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chrome-green",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-chrominum-tm",
    order = "c",
    enabled = false,
    ingredients =
    {
      { "pm-chrominum-ore", 12 },
      { "sulfur",           6 },
      { type = "fluid",     name = "pm-oxygen-gas", amount = 18 }
    },
    results =
    {
      { "pm-chrome-green", 6 }
    }
  } --[[@as data.RecipePrototype]],
})

-- 10 chromic acid = fifty acidic water

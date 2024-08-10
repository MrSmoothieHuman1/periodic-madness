data:extend({

  {
    type = "item",
    name = "pm-anhydrite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/androgynite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/androgynite.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/androgynite-2.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-potassium-am",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sylvite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sylvite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/sylvite.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-2.png", size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-3.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-potassium-am",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-potash",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/potash.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/potash.png",   size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/potash-2.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-potassium-am",
    order = "c",
    stack_size = 350
  },

  {
    type = "recipe",
    name = "pm-seawater-evaporite",
    enabled = false,
    energy_required = 10,
    category = "pm-evaporation",
    subgroup = "pm-potassium-am",
    order = "a",
    main_product = "pm-sylvite",
    ingredients =
    {
      { type = "fluid",         name = "pm-seawater", amount = 50 },
      { "pm-alkali-metals-ore", 6 }
    },
    results =
    {
      {
        name = "pm-calcite",
        amount_min = 1,
        amount_max = 6,
      },
      {
        name = "pm-anhydrite",
        amount_min = 2,
        amount_max = 5
      },
      { "pm-sylvite", 4 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sylvite-seperation",
    enabled = false,
    energy_required = 4,
    category = "pm-crushing",
    subgroup = "pm-potassium-am",
    order = "b",
    main_product = "pm-potash",
    ingredients =
    {
      { "pm-sylvite", 5 }
    },
    results =
    {
      {
        name = "pm-potash",
        amount_min = 2,
        amount_max = 4,
      },
      {
        name = "stone",
        amount = 5,
        probability = 0.65
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-anhydrite-seperation",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-potassium-am",
    order = "c",
    main_product = "pm-calcium-sulfate",
    ingredients =
    {
      { "pm-anhydrite", 10 }
    },
    results =
    {
      {
        name = "pm-calcium-sulfate",
        amount_min = 1,
        amount_max = 5,
        probability = 0.9
      },
      {
        name = "pm-potash",
        amount = 2,
        probability = 0.22
      },
      {
        name = "pm-sodium",
        amount_min = 0,
        amount_max = 3,
        probability = 0.1
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-potash-potassium",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-potassium-am",
    order = "d",
    main_product = "pm-potassium",
    ingredients =
    {
      { "pm-potash", 6 },
      { "pm-sodium", 6 }
    },
    results =
    {
      { "pm-sea-salt",  6 },
      { "pm-potassium", 6 }
    }
  } --[[@as data.RecipePrototype]]
})

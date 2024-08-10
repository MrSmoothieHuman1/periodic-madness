data:extend({

  {
    type = "item",
    name = "pm-sassolite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sassolite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite-2.png", size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite-3.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-boron-mt",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-borax",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/borax.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/borax.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/borax-2.png", size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/borax-3.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-boron-mt",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-boric-oxide",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/boric-oxide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/boric-oxide.png",   size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/boric-oxide-2.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/boric-oxide-3.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/boric-oxide-4.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-boron-mt",
    order = "c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "pm-sassolite",
    enabled = false,
    energy_required = 10,
    category = "pm-evaporation",
    subgroup = "pm-boron-mt",
    order = "a",
    main_product = "pm-sassolite",
    ingredients =
    {
      { type = "fluid",     name = "pm-seawater", amount = 50 },
      { "pm-metalloid-ore", 6 }
    },
    results =
    {
      {
        name = "pm-sassolite",
        amount_min = 2,
        amount_max = 5
      },
      {
        name = "pm-calcite",
        amount_min = 1,
        amount_max = 6,
      },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sassolite-seperation",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-boron-mt",
    order = "b",
    main_product = "pm-diluted-boric-acid",
    ingredients =
    {
      { "pm-sassolite", 6 },
      { type = "fluid", name = "water",                amount = 50 },
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-diluted-boric-acid", amount = 20 },
      { "sulfur",       4 },
      {
        name = "pm-ferrum",
        amount_min = 2,
        amount_max = 6
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ethylolamine",
    enabled = false,
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-boron-mt",
    order = "c",
    main_product = "pm-ethylolamine",
    ingredients =
    {
      { type = "fluid",               name = "pm-ethylene-glycol", amount = 20 },
      { "pm-indium-plate",            3 },
      { "pm-vanadium-oxide-catalyst", 3 }
    },
    results =
    {
      { type = "fluid", name = "pm-ethylolamine", amount = 10 },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount_max = 3
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-boron-extraction",
    enabled = false,
    energy_required = 15,
    category = "pm-washing",
    subgroup = "pm-boron-mt",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-diluted-boric-acid", amount = 10 },
      { type = "fluid", name = "pm-ethylolamine",       amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-boron", amount = 20 },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-borax",
    enabled = false,
    energy_required = 3,
    category = "pm-advanced-crafting-with-fluid",
    subgroup = "pm-boron-mt",
    order = "e",
    ingredients =
    {
      { type = "fluid", name = "pm-boron",      amount = 5 },
      { type = "fluid", name = "pm-oxygen-gas", amount = 5 },
      { "pm-sodium",    10 }
    },
    results =
    {
      { "pm-borax", 5 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-boric-oxide",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-boron-mt",
    order = "f",
    ingredients =
    {
      { "pm-borax",     2 },
      { type = "fluid", name = "sulfuric-acid", amount = 12 }
    },
    results =
    {
      { "pm-boric-oxide", 4 }
    }
  } --[[@as data.RecipePrototype]]
})

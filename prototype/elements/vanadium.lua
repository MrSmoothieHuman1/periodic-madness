data:extend({

  {
    type = "item",
    name = "pm-magnetite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/magnetite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite.png",   size = 128, scale = 0.124 + 0.01 },
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite-2.png", size = 128, scale = 0.126 },
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite-3.png", size = 128, scale = 0.124 },
    },
    subgroup = "pm-vanadium-tm",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-ferrovanadium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/ferrovanadium.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/ferrovanadium.png",        size = 64, scale = 0.24 + 0.01 },
      { filename = "__periodic-madness__/graphics/icons/ores/ferrovanadium-icon-2.png", size = 64, scale = 0.26 },
    },
    subgroup = "pm-vanadium-tm",
    order = "b",
    stack_size = 200
  },


  {
    type = "recipe",
    name = "pm-magnetite-forming",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-vanadium-tm",
    order = "a",
    ingredients =
    {
      { "pm-residual-chunks", 3 },
      { "pm-ferrum",          6 },
      { "pm-vanadium-oxide",  2 }
    },
    results =
    {
      { "pm-magnetite", 4 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ferrovanadium",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-vanadium-tm",
    order = "b",
    main_product = "pm-ferrovanadium",
    ingredients =
    {
      { "pm-magnetite", 2 },
      { type = "fluid", name = "pm-oxygen-gas", amount = 6 }
    },
    results =
    {
      { "pm-ferrovanadium", 4 },
      {
        name = "iron-ore",
        amount_min = 0,
        amount_max = 2
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vanadate-solution",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-vanadium-tm",
    order = "c",
    ingredients =
    {
      { "pm-ferrovanadium", 2 },
      { type = "fluid",     name = "sulfuric-acid", amount = 10 },
      { type = "fluid",     name = "pm-chlorine",   amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-vanadate-solution", amount = 5 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vanadate-solution-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/vanadate-solution-seperation.png",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-vanadium-tm",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-vanadate-solution", amount = 5 },
    },
    results =
    {
      {
        name = "pm-vanadium-ore",
        amount_min = 6,
        amount_max = 10
      }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-ammonium-vanadate-solution",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-vanadium-tm",
    order = "ca",
    ingredients =
    {
      { "pm-ferrovanadium",     2 },
      { type = "fluid",         name = "sulfuric-acid", amount = 10 },
      { "pm-ammonium-chloride", 4 }
    },
    results =
    {
      { type = "fluid", name = "pm-vanadate-solution", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-vanadate-solution-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/iodine-vanadate-solution-seperation.png",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-vanadium-tm",
    order = "da",
    ingredients =
    {
      { type = "fluid", name = "pm-vanadate-solution", amount = 5 },
      { "pm-iodine",    4 }
    },
    results =
    {
      { "pm-vanadium-ore", 10 },
      {
        name = "pm-vanadium-ore",
        amount_min = 0,
        amount_max = 4
      }
    }
  } --[[@as data.RecipePrototype]],
})

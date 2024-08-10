data:extend({

  {
    type = "recipe",
    name = "pm-fuel-oil-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oil-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "a",
    ingredients =
    {
      { type = "fluid",       name = "pm-fuel-oils", amount = 10 },
      { type = "fluid",       name = "steam",        amount = 20 },
      { "pm-cobalt-catalyst", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-sulfur-dioxide", amount = 15 },
      { type = "fluid", name = "water",             amount_min = 18, amount_max = 20 },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount_max = 2,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-kerosene-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "b",
    ingredients =
    {
      { type = "fluid",       name = "pm-kerosene", amount = 10 },
      { type = "fluid",       name = "steam",       amount = 20 },
      { "pm-cobalt-catalyst", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-sulfur-dioxide", amount = 15 },
      { type = "fluid", name = "water",             amount_min = 18, amount_max = 20 },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount_max = 2,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sulfur-dioxide-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dioxide-cracking.png",
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-sulfur-rnm",
    order = "c",
    enabled = false,
    ingredients =
    {
      { type = "fluid",               name = "pm-sulfur-dioxide", amount = 10 },
      { "pm-vanadium-oxide-catalyst", 1 }
    },
    results =
    {
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { "sulfur",       2 },
      {
        name = "pm-catalyst-container",
        probability = 0.9,
        amount = 1
      }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-sulfur-burning",
    enabled = false,
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-sulfur-rnm",
    order = "d",
    main_product = "pm-sulfur-dioxide",
    ingredients =
    {
      { "sulfur",             10 },
      { type = "fluid",       name = "pm-oxygen-gas", amount = 10 },
      { "pm-cobalt-catalyst", 3 }
    },
    results =
    {
      { type = "fluid", name = "pm-sulfur-dioxide", amount = 20 },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount_max = 3,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sulfur-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-trioxide.png",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "e",
    ingredients =
    {
      { type = "fluid",               name = "pm-sulfur-dioxide", amount = 10 },
      { type = "fluid",               name = "pm-oxygen-gas",     amount = 20 },
      { "pm-vanadium-oxide-catalyst", 4 },
      { "pm-potassium",               2 }
    },
    results =
    {
      { type = "fluid", name = "pm-sulfur-trioxide", amount = 10 },
      { type = "fluid", name = "pm-oxygen-gas",      amount_min = 5, amount_max = 10, probability = 0.5 },
      {
        name = "pm-catalyst-container",
        amount_min = 2,
        amount_max = 4,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-oleum",
    enabled = false,
    energy_required = 6,
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-sulfur-trioxide", amount = 5 },
      { type = "fluid", name = "sulfuric-acid",      amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-oleum", amount_min = 10, amount_max = 15 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-better-sulfuric-acid",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "g",
    ingredients =
    {
      { type = "fluid", name = "pm-oleum",   amount = 5 },
      { type = "fluid", name = "pm-caesium", amount = 2 }
    },
    results =
    {
      { type = "fluid", name = "sulfuric-acid", amount = 30 }
    }
  } --[[@as data.RecipePrototype]]

})

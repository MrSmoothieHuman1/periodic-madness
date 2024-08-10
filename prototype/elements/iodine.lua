data:extend({

  {
    type = "recipe",
    name = "pm-brine-acidifying",
    enabled = false,
    energy_required = 20,
    category = "pm-leaching",
    subgroup = "pm-iodine-rnm",
    order = "a",
    ingredients =
    {
      { "pm-biomass",   5 },
      { type = "fluid", name = "pm-brine",      amount = 40 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-acidic-brine", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-solution",
    enabled = false,
    energy_required = 5,
    category = "pm-acids",
    subgroup = "pm-iodine-rnm",
    order = "b",
    ingredients =
    {
      { type = "fluid", name = "pm-acidic-brine", amount = 5 },
      { type = "fluid", name = "pm-chlorine",     amount = 20 },
      { "pm-iodine",    3 }
    },
    results =
    {
      { type = "fluid", name = "pm-iodine-solution", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-solution-concentration",
    enabled = false,
    energy_required = 5,
    category = "pm-washing",
    subgroup = "pm-iodine-rnm",
    order = "c",
    ingredients =
    {
      { type = "fluid", name = "pm-iodine-solution", amount = 10 },
      { type = "fluid", name = "pm-sulfur-dioxide",  amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-hydrogen-iodide", amount = 20 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-iodide-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-iodine-seperation.png",
    enabled = false,
    energy_required = 10,
    category = "pm-acids",
    subgroup = "pm-iodine-rnm",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-hydrogen-iodide", amount = 10 },
      { type = "fluid", name = "pm-chlorine",        amount = 10 }
    },
    results =
    {
      {
        name = "pm-iodine",
        amount_min = 5,
        amount_max = 8
      },
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 5 }
    }
  } --[[@as data.RecipePrototype]]
})

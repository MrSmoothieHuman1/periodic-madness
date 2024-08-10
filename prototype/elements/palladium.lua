data:extend({

  {
    type = "recipe",
    name = "pm-palladium-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-palladium-tm",
    order = "b",
    enabled = false,
    energy_required = 3.2,
    ingredients =
    {
      { type = "fluid", name = "pm-nickel-froth", amount = 4 + 1 },
      { "pm-sand",      6 },
      { "pm-coke",      4 }
    },
    results =
    {
      { "pm-nickel-ore",    2 },
      { "pm-palladium-ore", 2 },
      {
        name = "pm-ferrum",
        amount_min = 1,
        amount_max = 3,
        probability = 0.4 + 0.1
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-fluxed-palladium-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flux-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-palladium-tm",
    order = "ba",
    enabled = false,
    energy_required = 1.6,
    ingredients =
    {
      { type = "fluid",             name = "pm-nickel-froth", amount = 4 + 1 },
      { "pm-filled-flux-container", 1 }
    },
    results =
    {
      { "pm-nickel-ore",    2 },
      { "pm-palladium-ore", 2 },
      {
        name = "pm-ferrum",
        amount = 1,
        probability = 0.4 + 0.1
      },
      {
        name = "pm-flux-container",
        probability = 0.66,
        amount = 1,
      }
    }
  } --[[@as data.RecipePrototype]],
})

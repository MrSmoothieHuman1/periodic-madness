data:extend({

  {
    type = "item",
    name = "pm-platinum-powder",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/platinum-powder.png",
    subgroup = "pm-platinum-tm",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-ammonium-chloride",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ammonium-chloride.png",
    subgroup = "pm-platinum-tm",
    order = "x",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-nickel-chunk-frothing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-chunk-frothing.png",
    category = "pm-washing",
    subgroup = "pm-platinum-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-nickel-chunk", 4 },
      { type = "fluid",    name = "water",         amount = 20 + 1 + 4 },
      { type = "fluid",    name = "sulfuric-acid", amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-nickel-froth",    amount = 6 - 1 },
      { type = "fluid", name = "pm-nickel-tailings", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-platinum-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-platinum-tm",
    order = "b",
    enabled = false,
    energy_required = 6.4,
    ingredients =
    {
      { type = "fluid", name = "pm-nickel-froth", amount = 4 + 1 },
      { "pm-sand",      6 },
      { "pm-coke",      4 }
    },
    results =
    {
      { "pm-nickel-ore",      2 },
      { "pm-platinum-powder", 4 },
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
    name = "pm-platinum-powder-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-powder-seperation.png",
    category = "pm-acids",
    subgroup = "pm-platinum-tm",
    order = "d",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      { "pm-platinum-powder", 6 },
      { type = "fluid",       name = "pm-hydrochloric-acid", amount = 20 }
    },
    results =
    {
      {
        type = "item",
        name = "pm-platinum-ore",
        amount_min = 1,
        amount_max = 2,
      },
      {
        type = "item",
        name = "pm-ammonium-chloride",
        probability = 0.8,
        amount_min = 2,
        amount_max = 4,
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-nickel-tailings-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-tailings-looping.png",
    category = "pm-washing",
    subgroup = "pm-platinum-tm",
    order = "c",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { type = "fluid", name = "pm-nickel-tailings", amount = 10 },
      { type = "fluid", name = "sulfuric-acid",      amount = 7 - 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-nickel-tailings", amount_min = 2, amount_max = 8 },
      { type = "fluid", name = "pm-nickel-froth",    amount = 8 - 3, probability = 0.9 }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-fluxed-platinum-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flux-platinum-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-platinum-tm",
    order = "ba",
    enabled = false,
    energy_required = 3.2,
    ingredients =
    {
      { type = "fluid",             name = "pm-nickel-froth", amount = 4 + 1 },
      { "pm-filled-flux-container", 1 }
    },
    results =
    {
      { "pm-nickel-ore",      2 },
      { "pm-platinum-powder", 4 },
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

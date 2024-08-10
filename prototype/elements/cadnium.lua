data:extend({

  {
    type = "item",
    name = "pm-cadnium-red",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadmium-red.png",
    subgroup = "pm-cadnium-tm",
    order = "d",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "pm-zinc-chunk-seperation",
    icon_size = 64,
    category = "pm-moltening",
    main_product = "pm-zinc-tailings",
    subgroup = "pm-cadnium-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-zinc-chunk", 4 },
      { type = "fluid",  name = "steam", amount = 20 + 1 + 4 }
    },
    results =
    {
      { type = "fluid", name = "pm-zinc-tailings", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-zinc-tailings-condensing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zinc-tailings-seperation.png",
    category = "pm-coldening",
    main_product = "pm-cadnium-ore",
    subgroup = "pm-cadnium-tm",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { type = "fluid", name = "pm-zinc-tailings", amount = 10 },
    },
    results =
    {
      { "pm-cadnium-ore", 2 },
      { "pm-zinc-ore",    2 },
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
    name = "pm-cadnium-red",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cadnium-tm",
    order = "ba",
    enabled = false,
    ingredients =
    {
      { "pm-cadnium-ore", 6 },
      { "sulfur",         6 },
    },
    results =
    {
      { "pm-cadnium-red", 6 }
    }
  } --[[@as data.RecipePrototype]],
})

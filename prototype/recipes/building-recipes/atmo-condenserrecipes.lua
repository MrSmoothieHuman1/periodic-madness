--all recipes related to atmospheric condensation

data:extend({

  {
    type = "recipe",
    name = "pm-atmospheric-gathering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "a",
    enabled = false,
    energy_required = 6,
    ingredients = {},
    results =
    {
      { type = "fluid", name = "pm-atmosphere", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-oxygen-atmosphere-filtering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "b",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      { type = "fluid",         name = "pm-atmosphere", amount = 25 },
      { "pm-oxygen-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-oxygen-gas", amount = 25 }
    }
  },
  {
    type = "recipe",
    name = "pm-chlorine-atmosphere-filtering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "c",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      { type = "fluid",           name = "pm-atmosphere", amount = 25 },
      { "pm-chlorine-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-chlorine", amount = 25 }
    }
  },
  {
    type = "recipe",
    name = "pm-nitrogen-atmosphere-filtering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "e",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      { type = "fluid",           name = "pm-atmosphere", amount = 25 },
      { "pm-nitrogen-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-nitrogen-gas", amount = 25 }
    }
  },
  {
    type = "recipe",
    name = "pm-carbon-dioxide-atmosphere-filtering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "d",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      { type = "fluid",                 name = "pm-atmosphere", amount = 25 },
      { "pm-carbon-dioxide-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 25 }
    }
  },
  {
    type = "recipe",
    name = "pm-trace-gas-atmosphere-filtering",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "f",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      { type = "fluid",            name = "pm-atmosphere", amount = 25 },
      { "pm-trace-gas-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-trace-gas", amount = 25 }
    }
  },

  {
    type = "recipe",
    name = "pm-advanced-oxygen-atmosphere-filtering",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/oxygen-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-advanced-atmospheric-condensation-rnm",
    order = "a",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.75,
    ingredients =
    {
      { type = "fluid",                  name = "pm-atmosphere", amount = 12.5 },
      { "pm-advanced-oxygen-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-oxygen-gas", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-chlorine-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chlorine-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-advanced-atmospheric-condensation-rnm",
    order = "b",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.75,
    ingredients =
    {
      { type = "fluid",                    name = "pm-atmosphere", amount = 12.5 },
      { "pm-advanced-chlorine-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-chlorine", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-nitrogen-atmosphere-filtering",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/nitrogen-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-advanced-atmospheric-condensation-rnm",
    order = "c",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.75,
    ingredients =
    {
      { type = "fluid",                    name = "pm-atmosphere", amount = 12.5 },
      { "pm-advanced-nitrogen-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-nitrogen-gas", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-carbon-dioxide-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/carbon-dioxide-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-advanced-atmospheric-condensation-rnm",
    order = "d",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 1.5,
    ingredients =
    {
      { type = "fluid",                          name = "pm-atmosphere", amount = 12.5 },
      { "pm-advanced-carbon-dioxide-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-trace-gas-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-advanced-atmospheric-condensation-rnm",
    order = "e",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.75,
    ingredients =
    {
      { type = "fluid",                     name = "pm-atmosphere", amount = 12.5 },
      { "pm-advanced-trace-gas-air-filter", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-trace-gas", amount = 50 }
    }
  },

  {
    type = "recipe",
    name = "pm-oxygen-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "a",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-air-filter", 1 },
      { "iron-plate",    4 }
    },
    results =
    {
      { "pm-oxygen-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-nitrogen-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "b",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-air-filter",      1 },
      { "pm-manganese-plate", 4 }
    },
    results =
    {
      { "pm-nitrogen-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-chlorine-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "c",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-air-filter", 1 },
      { "copper-plate",  4 }
    },
    results =
    {
      { "pm-chlorine-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-carbon-dioxide-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "d",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-air-filter",   1 },
      { "pm-nickel-plate", 4 }
    },
    results =
    {
      { "pm-carbon-dioxide-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-trace-gas-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "e",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"pm-air-filter", 1},
      {"pm-chalk", 4}
    },
    results =
    {
      {"pm-trace-gas-air-filter", 1}
    }
  },

  --voding atmospheric gasses

  {
    type = "recipe",
    name = "pm-oxygen-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/oxygen-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "a",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      {type = "fluid", name = "pm-oxygen-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-chlorine-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/chlorine-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "b",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      {type = "fluid", name = "pm-chlorine", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-nitrogen-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/nitrogen-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "c",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      {type = "fluid", name = "pm-nitrogen-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-carbon-dioxide-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/carbon-dioxide-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "d",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-trace-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "e",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      {type = "fluid", name = "pm-trace-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-helium-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/helium-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "f",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      {type = "fluid", name = "pm-helium-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-argon-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "g",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = -1,
    ingredients =
    {
      {type = "fluid", name = "pm-argon-gas", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-carbon-monoxide-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/carbon-monoxide-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "k",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = -2,
    ingredients =
    {
      {type = "fluid", name = "pm-carbon-monoxide", amount = 25}
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-ammonia-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ammonia-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-voiding-rnm",
    order = "l",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = -1,
    ingredients =
    {
      {type = "fluid", name = "pm-ammonia-gas", amount = 25}
    },
    results = {}
  },

  {
    type = "recipe",
    name = "pm-CO2-nullifying",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/carbon-dioxide.png",
    category = "pm-CO2-nullifying",
    subgroup = "pm-reactive-nonmetals",
    hide_from_player_crafting = true,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 10},
    },
    results =
    {
      {type = "fluid", name = "pm-oxygen-gas", amount = 20},
      {type = "item",  name = "pm-carbon", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "pm-CO3-nullifying",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/carbon-trioxide.png",
    category = "pm-CO2-nullifying",
    subgroup = "pm-reactive-nonmetals",
    hide_from_player_crafting = true,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "pm-carbon-trioxide", amount = 10},
    },
    results =
    {
      {type = "fluid", name = "pm-oxygen-gas", amount = 20},
      {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "pm-trace-gas-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-refining.png",
    energy_required = 3,
    enabled = false,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "g",
    main_product = "pm-helium-gas",
    ingredients =
    {
      {type = "fluid", name = "pm-trace-gas", amount = 24 + 1 }
    },
    results =
    {
      {type = "fluid", name = "pm-helium-gas", amount = 20},
      {type = "fluid", name = "pm-argon-gas", amount = 20},
      {type = "fluid", name = "pm-water-vapour", amount = 4 + 1}
    }
  },
  {
    type = "recipe",
    name = "pm-ammonia-trace-gas-seperation",
    energy_required = 6,
    enabled = false,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmospheric-condensation-rnm",
    order = "h",
    main_product = "pm-ammonia-gas",
    ingredients =
    {
      {type = "fluid", name = "pm-trace-gas", amount = 25},
      {"pm-nitrogen-air-filter", 1}
    },
    results =
    {
      {type = "fluid", name = "pm-ammonia-gas",  amount = 15},
      {type = "fluid", name = "pm-water-vapour", amount = 5},
      {
        type = "fluid",
        name = "pm-nitrogen-gas",
        amount = 4 + 1,
        probability = 0.6
      }
    }
  },

  --i didnt want to have to make an entire file just for one (two) recipe(s)
  {
    type = "recipe",
    name = "pm-air-filterering",
    energy_required = 240,
    category = "pm-air-filtering",
    hide_from_player_crafting = true,
    ingredients =
    {
      {"pm-carbon-dioxide-air-filter", 1}
    },
    results =
    {
      {"pm-dirty-carbon-dioxide-air-filter", 1}
    }
  },
  {
    type = "recipe",
    name = "pm-better-air-filterering",
    energy_required = 360,
    category = "pm-air-filtering",
    hide_from_player_crafting = true,
    emissions_multiplier = 2,
    ingredients =
    {
      {"pm-advanced-air-filter", 1}
    },
    results =
    {
      {"pm-dirty-advanced-air-filter", 1}
    }
  },
  {
    type = "recipe",
    name = "pm-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/dirty-air-filter-washing.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-air-filters-rnm",
    order = "f",
    ingredients =
    {
      {"pm-dirty-carbon-dioxide-air-filter", 1},
      {type = "fluid", name = "water", amount = 20}
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 20 },
      { type = "fluid", name = "pm-carbon-monoxide", amount = 10, probability = 0.2 },
      {
        name = "pm-carbon-dioxide-air-filter",
        probability = 0.85,
        amount = 1
      }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lithium-dirty-air-filter-cleaning.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-air-filters-rnm",
    order = "g",
    ingredients =
    {
      { "pm-dirty-advanced-air-filter", 1 },
      { type = "fluid",                 name = "pm-lithium-hydroxide", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 40 },
      { type = "fluid", name = "pm-carbon-monoxide",    amount = 25, probability = 0.8 },
      {
        name = "pm-advanced-air-filter",
        probability = 0.95,
        amount = 1
      }
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-air-filter-cleaning",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-dirty-air-filter-1-cleaning.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-air-filters-rnm",
    order = "fa",
    ingredients =
    {
      { "pm-dirty-carbon-dioxide-air-filter", 1 },
      { type = "fluid",                       name = "pm-sodium-hydroxide", amount = 15 }
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 20 },
      { type = "fluid", name = "pm-carbon-monoxide",    amount = 10, probability = 0.2 },
      {
        name = "pm-carbon-dioxide-air-filter",
        probability = 0.9,
        amount = 1
      },
      {
        name = "pm-sodium-bicarbonate",
        amount_min = 2,
        amount_max = 5
      }
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-advanced-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-dirty-air-filter-cleaning.png",
    energy_required = 2,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-air-filters-rnm",
    order = "ga",
    ingredients =
    {
      { "pm-dirty-advanced-air-filter", 1 },
      { type = "fluid",                 name = "pm-sodium-hydroxide", amount = 15 }
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 40 },
      { type = "fluid", name = "pm-carbon-monoxide",    amount = 25, probability = 0.8 },
      {
        name = "pm-advanced-air-filter",
        probability = 0.99,
        amount = 1
      },
      {
        name = "pm-sodium-bicarbonate",
        amount_min = 2,
        amount_max = 5
      }
    }
  },

} --[[@as data.RecipePrototype[] ]])

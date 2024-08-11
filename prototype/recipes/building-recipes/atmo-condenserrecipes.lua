local PM = require("__periodic-madness__/library")
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
      PM.product("pm-atmosphere", 50, "fluid")
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
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-oxygen-air-filter", 1)
    },
    results =
    {
      PM.product("pm-oxygen-gas", 25, "fluid")
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
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-chlorine-air-filter", 1)
    },
    results =
    {
      PM.product("pm-chlorine", 25, "fluid")
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
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-nitrogen-air-filter", 1)
    },
    results =
    {
      PM.product("pm-nitrogen-gas", 25, "fluid")
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
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-carbon-dioxide-air-filter", 1)
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 25, "fluid")
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
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-trace-gas-air-filter", 1)
    },
    results =
    {
      PM.product("pm-trace-gas", 25, "fluid")
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
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-oxygen-air-filter", 1)
    },
    results =
    {
      PM.product("pm-oxygen-gas", 50, "fluid")
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
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-chlorine-air-filter", 1)
    },
    results =
    {
      PM.product("pm-chlorine", 50, "fluid")
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
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-nitrogen-air-filter", 1)
    },
    results =
    {
      PM.product("pm-nitrogen-gas", 50, "fluid")
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
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-carbon-dioxide-air-filter", 1)
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 50, "fluid")
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
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-trace-gas-air-filter", 1)
    },
    results =
    {
      PM.product("pm-trace-gas", 50, "fluid")
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("iron-plate", 4)
    },
    results =
    {
      PM.product("pm-oxygen-air-filter", 1)
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-manganese-plate", 4)
    },
    results =
    {
      PM.product("pm-nitrogen-air-filter", 1)
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("copper-plate", 4)
    },
    results =
    {
      PM.product("pm-chlorine-air-filter", 1)
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-nickel-plate", 4)
    },
    results =
    {
      PM.product("pm-carbon-dioxide-air-filter", 1)
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-chalk", 4)
    },
    results =
    {
      PM.product("pm-trace-gas-air-filter", 1)
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
      PM.ingredient("pm-oxygen-gas", 2, "fluid")
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
      PM.ingredient("pm-chlorine", 2, "fluid")
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
      PM.ingredient("pm-nitrogen-gas", 2, "fluid")
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
      PM.ingredient("pm-carbon-dioxide-gas", 2, "fluid")
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
      PM.ingredient("pm-trace-gas", 2, "fluid")
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
      PM.ingredient("pm-helium-gas", 2, "fluid")
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
      PM.ingredient("pm-argon-gas", 2, "fluid")
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
      PM.ingredient("pm-carbon-monoxide", 2, "fluid")
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
      PM.ingredient("pm-ammonia-gas", 2, "fluid")
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
      PM.ingredient("pm-carbon-dioxide-gas", 1, "fluid"),
    },
    results =
    {
      PM.product("pm-oxygen-gas", 20, "fluid"),
      PM.product("pm-carbon", 10)
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
      PM.ingredient("pm-carbon-trioxide", 1, "fluid"),
    },
    results =
    {
      PM.product("pm-oxygen-gas", 20, "fluid"),
      PM.product("pm-carbon-dioxide-gas", 10, "fluid")
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
      PM.ingredient("pm-trace-gas", 25, "fluid")
    },
    results =
    {
      PM.product("pm-helium-gas", 20, "fluid"),
      PM.product("pm-argon-gas", 20, "fluid"),
      PM.product("pm-water-vapour", 5, "fluid")
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
      PM.ingredient("pm-trace-gas", 2, "fluid"),
      PM.ingredient("pm-nitrogen-air-filter", 1)
    },
    results =
    {
      PM.product("pm-ammonia-gas", 15, "fluid"),
      PM.product("pm-water-vapour", 5, "fluid"),
      PM.product_chance("pm-nitrogen-gas", 5, 0.6, "fluid")
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
      PM.ingredient("pm-carbon-dioxide-air-filter", 1)
    },
    results =
    {
      PM.product("pm-dirty-carbon-dioxide-air-filter", 1)
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
      PM.ingredient("pm-advanced-air-filter", 1)
    },
    results =
    {
      PM.product("pm-dirty-advanced-air-filter", 1)
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
      PM.ingredient("pm-dirty-carbon-dioxide-air-filter", 1),
      PM.ingredient("water", 2, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 20, "fluid"),
      PM.product_chance("pm-carbon-monoxide", 10, 0.2, "fluid"),
      PM.product_chance("pm-carbon-dioxide-air-filter", 1, 0.85)
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
      PM.ingredient("pm-dirty-advanced-air-filter", 1),
      PM.ingredient("pm-lithium-hydroxide", 20, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 40, "fluid"),
      PM.product_chance("pm-carbon-monoxide", 25, 0.8, "fluid"),
      PM.product_chance("pm-advanced-air-filter", 1, 0.95)
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
      PM.ingredient("pm-dirty-carbon-dioxide-air-filter", 1),
      PM.ingredient("pm-sodium-hydroxide", 15, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 20, "fluid"),
      PM.product_chance("pm-carbon-monoxide", 10, 0.2, "fluid"),
      PM.product_chance("pm-carbon-dioxide-air-filter", 1, 0.9),
      PM.product_range("pm-sodium-bicarbonate", 2, 5)
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
      PM.ingredient("pm-dirty-advanced-air-filter", 1),
      PM.ingredient("pm-sodium-hydroxide", 15, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", 40, "fluid"),
      PM.product_chance("pm-carbon-monoxide", 25, 0.8, "fluid"),
      PM.product_chance("pm-advanced-air-filter", 1, 0.99),
      PM.product_range("pm-sodium-bicarbonate", 2, 5)
    }
  },

} --[[@as data.RecipePrototype[] ]])

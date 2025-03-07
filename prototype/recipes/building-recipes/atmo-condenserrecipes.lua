local PM = require("library")
--all recipes related to atmospheric condensation

data:extend({

  {
    type = "recipe",
    name = "pm-atmosphere",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-atmosphere-rnm",
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
    name = "pm-trace-gas",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-trace-gas-rnm",
    order = "b",
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
    name = "pm-advanced-trace-gas-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-trace-gas-rnm",
    order = "c",
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
    name = "pm-trace-gas-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-trace-gas-rnm",
    order = "a",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-calcium-ore", 4)
    },
    results =
    {
      PM.product("pm-trace-gas-air-filter", 1)
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
    subgroup = "pm-trace-gas-rnm",
    order = "e",
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

  --voding atmospheric gasses

  {
    type = "recipe",
    name = "pm-trace-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-trace-gas-rnm",
    order = "d",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      PM.ingredient("pm-trace-gas", 25, "fluid")
    },
    results = {}
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
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-dirty-carbon-dioxide-air-filter", 1),
      PM.ingredient("water", 20, "fluid")
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
    order = "d",
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
    order = "ca",
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
    order = "da",
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

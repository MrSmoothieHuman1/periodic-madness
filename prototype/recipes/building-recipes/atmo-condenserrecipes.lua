--all recipes related to atmospheric condensation

data:extend({

  {
    type = "recipe",
    name = "pm-atmosphere",
    categories = {"pm-atmospheric-condensing"},
    subgroup = "pm-atmosphere-rnm",
    order = "a",
    enabled = false,
    energy_required = 6,
    ingredients = {},
    results =
    {
      PM.product("pm-atmosphere", "fluid"):amount(50):done()
    }
  },
  {
    type = "recipe",
    name = "pm-trace-gas",
    categories = {"pm-atmospheric-condensing"},
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
      PM.product("pm-trace-gas", "fluid"):amount(25):done()
    }
  },

  {
    type = "recipe",
    name = "pm-advanced-trace-gas-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-condensation.png",
    categories = {"pm-atmospheric-condensing"},
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
      PM.product("pm-trace-gas", "fluid"):amount(50):done()
    }
  },

  {
    type = "recipe",
    name = "pm-trace-gas-air-filter",
    categories = {"advanced-crafting"},
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
      PM.product("pm-trace-gas-air-filter"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-trace-gas-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-refining.png",
    energy_required = 3,
    enabled = false,
    categories = {"pm-atmospheric-condensing"},
    subgroup = "pm-trace-gas-rnm",
    order = "e",
    main_product = "pm-helium-gas",
    ingredients =
    {
      PM.ingredient("pm-trace-gas", 25, "fluid")
    },
    results =
    {
      PM.product("pm-helium-gas", "fluid"):amount(20):done(),
      PM.product("pm-argon-gas", "fluid"):amount(20):done(),
      PM.product("pm-water-vapour", "fluid"):amount(5):done()
    }
},

{
    type = "recipe",
    name = "pm-mixed-noble-gas-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mixed-noble-gas-seperation.png",
    enabled = false,
    energy_required = 6,
    categories = {"pm-atmospheric-condensing"},
    subgroup = "pm-nb-nb",
    order = "a",
    ingredients = 
    {
        PM.ingredient("pm-mixed-noble-gas", 50, "fluid"),
        --PM.ingredient("pm-trace-gas", 25, "fluid") maybe include? does require another input fluidbox, but also gives more use to trace gasses
    },
    results = 
    {
        PM.product("pm-helium-gas", "fluid"):amount(10, 15):done(),
        PM.product("pm-neon-gas", "fluid"):amount(7.5, 12.5):done(),
        PM.product("pm-argon-gas", "fluid"):amount(5, 10):done(),
        PM.product("pm-krypton-gas", "fluid"):amount(2.5, 7.5):done(),
        PM.product("pm-xenon-gas", "fluid"):amount(0, 5):done(),
        PM.product("pm-radon-gas", "fluid"):amount(0, 2.5):done()
    }
},


  --voding atmospheric gasses

  {
    type = "recipe",
    name = "pm-trace-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-gas-voiding.png",
    categories = {"pm-atmospheric-condensing"},
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

  --i didnt want to have to make an entire file just for one (two) ((six)) recipe(s)
  {
    type = "recipe",
    name = "pm-air-filterering",
    energy_required = 240,
    categories = {"pm-air-filtering"},
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-air-filter", 1)
    },
    results =
    {
      PM.product("pm-dirty-carbon-dioxide-air-filter"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-better-air-filterering",
    energy_required = 360,
    categories = {"pm-air-filtering"},
    hide_from_player_crafting = true,
    emissions_multiplier = 2,
    ingredients =
    {
      PM.ingredient("pm-advanced-carbon-dioxide-air-filter", 1)
    },
    results =
    {
      PM.product("pm-dirty-advanced-air-filter"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/dirty-air-filter-washing.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-air-filters-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-dirty-carbon-dioxide-air-filter", 1),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(20):done(),
      PM.product("pm-carbon-monoxide", "fluid"):amount(10):chance(0.2):done(),
      PM.product("pm-carbon-dioxide-air-filter"):amount(1):chance(0.85):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lithium-dirty-air-filter-cleaning.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-air-filters-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-dirty-advanced-air-filter", 1),
      PM.ingredient("pm-lithium-hydroxide", 20, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(40):done(),
      PM.product("pm-carbon-monoxide", "fluid"):amount(25):chance(0.8):done(),
      PM.product("pm-advanced-carbon-dioxide-air-filter"):amount(1):chance(0.95):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-air-filter-cleaning",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-dirty-air-filter-1-cleaning.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-air-filters-rnm",
    order = "ca",
    ingredients =
    {
      PM.ingredient("pm-dirty-carbon-dioxide-air-filter", 1),
      PM.ingredient("pm-sodium-hydroxide", 15, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(20):done(),
      PM.product("pm-carbon-monoxide", "fluid"):amount(10):chance(0.2):done(),
      PM.product("pm-carbon-dioxide-air-filter"):amount(1):chance(0.9):done(),
      PM.product("pm-sodium-bicarbonate"):amount(2, 5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-advanced-air-filter-cleaning",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-dirty-air-filter-cleaning.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-air-filters-rnm",
    order = "da",
    ingredients =
    {
      PM.ingredient("pm-dirty-advanced-air-filter", 1),
      PM.ingredient("pm-sodium-hydroxide", 15, "fluid")
    },
    results =
    {
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(40):done(),
      PM.product("pm-carbon-monoxide", "fluid"):amount(25):chance(0.8):done(),
      PM.product("pm-advanced-carbon-dioxide-air-filter"):amount(1):chance(0.99):done(),
      PM.product("pm-sodium-bicarbonate"):amount(2, 5):done()
    }
  },

} --[[@as data.RecipePrototype[] ]])

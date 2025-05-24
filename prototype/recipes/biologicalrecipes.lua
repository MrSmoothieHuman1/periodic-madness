local PM = require("library")
data:extend({

  {
    type = "recipe",
    name = "pm-basic-basic-wood-growth",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/basic-basic-wood-growth.png",
    category = "pm-washing",
    energy_required = 45,
    enabled = false,
    ingredients = 
    {
      PM.ingredient("wood", 5),
      PM.ingredient("stone", 6),
      PM.ingredient("water", 20, "fluid"),
      PM.ingredient("pm-oxygen-gas", 10, "fluid")
    },
    results = 
    {
      PM.product_range("wood", 5, 7)
    }
  },
  {
    type = "recipe",
    name = "pm-basic-wood-growth",
    energy_required = 45,
    enabled = false,
    category = "pm-greenhousing",
    subgroup = "pm-greenhousing-rnm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-gas", 50, "fluid"),
      PM.ingredient("pm-oxygen-gas", 25, "fluid"),
      PM.ingredient("water", 50, "fluid"),
      PM.ingredient("wood", 20)
    },
    results =
    {
      PM.product("wood", 50)
    }
  },
  {
    type = "recipe",
    name = "pm-fertilised-wood-growth",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fertilised-wood-growth.png",
    energy_required = 30,
    enabled = false,
    category = "pm-greenhousing",
    subgroup = "pm-greenhousing-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-gas", 50, "fluid"),
      PM.ingredient("pm-oxygen-gas", 12, "fluid"),
      PM.ingredient("water", 25, "fluid"),
      PM.ingredient("wood", 10),
      PM.ingredient("pm-fertiliser", 1)
    },
    results =
    {
      PM.product("wood", 50)
    }
  },

  --misc recipes

  {
    type = "recipe",
    name = "pm-fertiliser",
    energy_required = 5,
    category = "crafting-with-fluid",
    subgroup = "pm-greenhousing-rnm",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ammonia-gas", 20, "fluid"),
      PM.ingredient("pm-red-phosphorus", 6),
      PM.ingredient("pm-polyethylene-plastic", 4),
    },
    results =
    {
      PM.product("pm-fertiliser", 1)
    }
  },

  {
    type = "recipe",
    name = "pm-potassium-fertiliser",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fertiliser.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png",
        icon_size = 64
      }
    },
    energy_required = 5,
    category = "crafting-with-fluid",
    subgroup = "pm-greenhousing-rnm",
    order = "ca",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("pm-red-phosphorus", 4),
      PM.ingredient("pm-polyethylene-plastic", 6),
      PM.ingredient("pm-potassium", 4)
    },
    results =
    {
      PM.product("pm-fertiliser", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-cellouse-pulp",
    energy_required = 1,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-greenhousing-rnm",
    order = "e",
    main_product = "pm-cellouse-pulp",
    ingredients =
    {
      PM.ingredient("pm-wood-strips", 5),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-cellouse-pulp", 5, "fluid"),
      PM.product_range("pm-wood-strips", 2, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-biomass",
    energy_required = 3,
    category = "crafting-with-fluid",
    enabled = false,
    subgroup = "pm-greenhousing-rnm",
    order = "f",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cellouse-pulp", 5, "fluid"),
      PM.ingredient("pm-wood-strips", 8)
    },
    results =
    {
      PM.product("pm-biomass", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-agar-solution",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-biostuff-rnm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-chlorine", 10, "fluid"),
      PM.ingredient("wood", 6),
      PM.ingredient("sulfur", 2),
      PM.ingredient("water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-agar-solution", 30, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-bacteriaed-agar-solution",
    energy_required = 3,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-biostuff-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-agar-solution", 10, "fluid"),
      PM.ingredient("pm-biomass", 1)
    },
    results =
    {
      PM.product("pm-bacteriaed-agar-solution", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cyanobacteriaed-agar-solution",
    energy_required = 3,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-biostuff-rnm",
    order = "ba",
    ingredients =
    {
      PM.ingredient("pm-agar-solution", 10, "fluid"),
      PM.ingredient("pm-wood-strips", 5)
    },
    results =
    {
      PM.product("pm-cyanobacteriaed-agar-solution", 10, "fluid")
    }
  },

  {
    type = "recipe",
    name = "pm-empty-petri-dish",
    energy_required = 1,
    enabled = false,
    subgroup = "pm-biostuff-rnm",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 4),
      PM.ingredient("pm-anti-bacterial-panelling", 1)
    },
    results =
    {
      PM.product("pm-empty-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-agar-petri-dish",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-biostuff-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-empty-petri-dish", 1),
      PM.ingredient("pm-agar-solution", 25, "fluid")
    },
    results =
    {
      PM.product("pm-agar-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-bacteriaed-petri-dish",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-biostuff-rnm",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-empty-petri-dish", 1),
      PM.ingredient("pm-bacteriaed-agar-solution", 25, "fluid")
    },
    results =
    {
      PM.product("pm-bacteriaed-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cyanobacteriaed-petri-dish",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-biostuff-rnm",
    order = "ea",
    ingredients =
    {
      PM.ingredient("pm-empty-petri-dish", 1),
      PM.ingredient("pm-cyanobacteriaed-agar-solution", 25, "fluid")
    },
    results =
    {
      PM.product("pm-cyanobacteriaed-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-agar-dish-emptying",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    main_product = "pm-agar-solution",
    subgroup = "pm-biostuff-rnm",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-agar-petri-dish", 1)
    },
    results =
    {
      PM.product("pm-agar-solution", 25, "fluid"),
      PM.product("pm-empty-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-bacteriaed-dish-emptying",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    main_product = "pm-bacteriaed-agar-solution",
    subgroup = "pm-biostuff-rnm",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-bacteriaed-petri-dish", 1)
    },
    results =
    {
      PM.product("pm-bacteriaed-agar-solution", 25, "fluid"),
      PM.product("pm-empty-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cyanobacteriaed-dish-emptying",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    main_product = "pm-cyanobacteriaed-agar-solution",
    subgroup = "pm-biostuff-rnm",
    order = "ga",
    ingredients =
    {
      PM.ingredient("pm-cyanobacteriaed-petri-dish", 1)
    },
    results =
    {
      PM.product("pm-cyanobacteriaed-agar-solution", 25, "fluid"),
      PM.product("pm-empty-petri-dish", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-gene-harvesting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gene-base-harvesting.png",
    energy_required = 2,
    enabled = false,
    hide_from_player_crafting = true,
    category = "pm-bacteria-incubating",
    subgroup = "pm-biostuff-rnm",
    order = "h",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-bacteriaed-agar-solution", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-gene-base", 10, "fluid"),
      --PM.product_chance("pm-dead-bacteriaed-biomass", 2, 0.6)
    }
  },
  {
    type = "recipe",
    name = "pm-melatonin-harvesting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
    energy_required = 2,
    enabled = false,
    hide_from_player_crafting = true,
    category = "pm-bacteria-incubating",
    subgroup = "pm-biostuff-rnm",
    order = "i",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cyanobacteriaed-agar-solution", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-melatonin", 10, "fluid"),
      PM.product_chance("pm-bacteriaed-agar-solution", 2, 0.2, "fluid")

    }
  },
  {
    type = "recipe",
    name = "pm-bacteriaed-agar-methyl-chloride-offgassing",
    enabled = false,
    energy_required = 20,
    category = "pm-bacteria-incubating",
    subgroup = "pm-biostuff-rnm",
    allow_productivity = true,
    main_product = "pm-methyl-chloride",
    ingredients = 
    {
      PM.ingredient("pm-bacteriaed-agar-solution", 30, "fluid"),
      PM.ingredient("pm-carbon-dioxide-gas", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-bacteriaed-agar-solution", 39, 40, "fluid"),
      PM.product_range("pm-methyl-chloride", 2, 6, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-bacteriaed-agar-hydrogen-sulfide-offgassing",
    enabled = false,
    energy_required = 20,
    category = "pm-bacteria-incubating",
    subgroup = "pm-biostuff-rnm",
    allow_productivity = true,
    main_product = "pm-hydrogen-sulfide",
    ingredients = 
    {
      PM.ingredient("pm-bacteriaed-agar-solution", 40, "fluid"),
      PM.ingredient("pm-hydrogen-gas", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-bacteriaed-agar-solution", 39, 40, "fluid"),
      PM.product_range("pm-hydrogen-sulfide", 2, 8, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cyanobacteriaed-agar-ammonia-offgassing",
    enabled = false,
    energy_required = 20,
    category = "pm-bacteria-incubating",
    subgroup = "pm-biostuff-rnm",
    allow_productivity = true,
    main_product = "pm-ammonia-gas",
    ingredients = 
    {
      PM.ingredient("pm-cyanobacteriaed-agar-solution", 40, "fluid"),
      PM.ingredient("pm-water-vapour", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-cyanobacteriaed-agar-solution", 38, 40, "fluid"),
      PM.product_range("pm-ammonia-gas", 3, 9, "fluid")
    }
  },
} --[[@as data.RecipePrototype[] ]])

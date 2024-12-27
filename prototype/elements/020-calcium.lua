local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-calcite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/calcite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/calcite.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-1.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-2.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/calcite-3.png", size = 128, scale = 0.25 }
    },
    subgroup = "pm-calcium-aem",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-calcium-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-dust.png",
    subgroup = "pm-calcium-aem",
    order = "b",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-mixed-calcium-rock",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/mixed-calcium-rock.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/mixed-calcium-rock.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/mixed-calcium-rock-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/mixed-calcium-rock-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/mixed-calcium-rock-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-calcium-aem",
    order = "c",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-calcium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-oxide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/calcium-oxide.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/calcium-oxide-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/calcium-oxide-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-calcium-aem",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-calcium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/calcium-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/calcium-chloride-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-calcium-aem",
    order = "x",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-calcite-filtering",
    subgroup = "pm-calcium-aem",
    order = "a",
    category = "pm-evaporation",
    enabled = true,
    energy_required = 4,
    main_product = "pm-calcite",
    ingredients =
    {
      PM.ingredient("pm-seawater", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-calcite", 4),
      PM.product_range_chance("pm-sea-salt", 0, 6, 0.75),
      PM.product("water", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-calcite-crushing",
    subgroup = "pm-calcium-aem",
    order = "b",
    category = "pm-crushing",
    enabled = true,
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-calcite", 4)
    },
    results =
    {
      PM.product("pm-calcium-dust", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-calcium-dust-washing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/calcium-dust-washing.png",
    subgroup = "pm-calcium-aem",
    category = "pm-washing",
    order = "c",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-calcium-dust", 4),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-calcium-ore", 2),
      PM.product_chance("pm-carbon", 1, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mixed-calcium-rock",
    category = "pm-acids",
    subgroup = "pm-calcium-aem",
    order = "d",
    energy_required = 8,
    main_product = "pm-mixed-calcium-rock",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-alkaline-earth-metals-ore", 16),
      PM.ingredient("pm-chromic-acid", 25, "fluid")
    },
    results = 
    {
      PM.product_range("pm-mixed-calcium-rock", 4, 6),
      PM.product_range_chance("pm-calcium-sulfate", 1, 2, 0.15)
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-hydroxide-slurry",
    subgroup = "pm-calcium-aem",
    category = "pm-mixing",
    order = "d",
    energy_required = 6,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-mixed-calcium-rock", 6),
      PM.ingredient("water", 50, "fluid"),
      PM.ingredient("pm-calcium-dust", 4),
    },
    results = 
    {
      PM.product("pm-calcium-hydroxide-slurry", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-calcite",
    category = "chemistry",
    subgroup = "pm-calcium-aem",
    order = "e",
    energy_required = 4,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-calcium-hydroxide-slurry", 10, "fluid"),
      PM.ingredient("pm-carbon-dioxide-gas", 40, "fluid"),
    },
    results = 
    {
      PM.product("pm-calcite", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-oxide",
    category = "pm-moltening",
    subgroup = "pm-calcium-aem",
    order = "f",
    energy_required = 3,
    main_product = "pm-calcium-oxide",
    ingredients = 
    {
      PM.ingredient("pm-calcite", 6),
      PM.ingredient("pm-filled-flux-container", 2),
      PM.ingredient("steam", 10, "fluid")
    },
    results = 
    {
      PM.product("pm-calcium-oxide", 4),
      PM.product_range("pm-carbon-dioxide-gas", 8, 20, "fluid"),
      PM.product_range("pm-flux-container", 1, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-alumnotheric-calcium",
    category = "pm-coldening",
    subgroup = "pm-calcium-aem",
    order = "g",
    energy_required = 9,
    main_product = "pm-calcium-ore",
    ingredients = 
    {
      PM.ingredient("pm-molten-aluminium", 5, "fluid"),
      PM.ingredient("pm-calcium-oxide", 4),
      PM.ingredient("pm-ferrum", 6)
    },
    results = 
    {
      PM.product("pm-aluminium-plate", 10),
      PM.product_range("pm-calcium-ore", 3, 8)
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-sulfate-slurry",
    enabled = false,
    energy_required = 24,
    category = "pm-mixing",
    subgroup = "pm-calcium-aem",
    order = "h",
    ingredients = 
    {
      PM.ingredient("pm-calcium-hydroxide-slurry", 40, "fluid"),
      PM.ingredient("sulfuric-acid", 80, "fluid"),
      PM.ingredient("pm-calcite", 10)
    },
    results = 
    {
      PM.product("pm-calcium-sulfate-slurry", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-sulfate-chunks",
    enabled = false,
    energy_required = 12,
    category = "chemistry",
    subgroup = "pm-calcium-aem",
    order = "i",
    main_product = "pm-calcium-sulfate-chunks",
    ingredients = 
    {
      PM.ingredient("pm-calcium-sulfate-slurry", 10, "fluid"),
      PM.ingredient("pm-coolant", 5, "fluid")
    },
    results = 
    {
      PM.product_range("pm-calcium-sulfate-chunks", 5, 10),
      PM.product_chance_range("sulfur", 0, 8, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-sulfate",
    enabled = false,
    energy_required = 12,
    category = "pm-crushing",
    subgroup = "pm-calcium-aem",
    order = "j",
    ingredients = 
    {
      PM.ingredient("pm-calcium-sulfate-chunks", 5),
    },
    results = 
    {
      PM.product_range("pm-calcium-sulfate", 5, 10),
      PM.product_range("stone", 0, 8),
      PM.product_chance_range("pm-calcium-dust", 0, 8, 0.75)
    }
  }

})

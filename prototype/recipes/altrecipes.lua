--for all alternative recipes for items

data:extend({
  {
    type = "recipe",
    name = "pm-circuit-mold",
    energy_required = 3,
    categories = {"pm-molding"},
    subgroup = "pm-molded-circuits",
    order = "a",
    enabled = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-pheonlic-resin", 25, "fluid"),
    },
    results =
    {
      PM.product("pm-circuit-mold"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-electronic-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/green-circuitboard-molding.png",
    energy_required = 1,
    categories = {"pm-molding"},
    subgroup = "pm-molded-circuits",
    order = "c",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-circuit-mold", 1),
      PM.ingredient("pm-electronic-breadboard", 1)
    },
    results =
    {
      PM.product("pm-electronic-breadboard-mold"):amount(1):done(),
      PM.product("pm-electronic-breadboard"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-electronic-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/green-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "d",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-electronic-breadboard-mold", 1),
      PM.ingredient("pm-nickel-plate", 2)
    },
    results =
    {
      PM.product("pm-electronic-breadboard-mold"):amount(1):chance(0.7):done(),
      PM.product("pm-electronic-breadboard"):amount(2):done()
    },
  },
  {
    type = "recipe",
    name = "pm-orange-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuitboard-molding.png",
    energy_required = 1,
    categories = {"pm-molding"},
    subgroup = "pm-molded-circuits",
    order = "g",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-circuit-mold", 1),
      PM.ingredient("pm-fluid-breadboard", 1)
    },
    results =
    {
      PM.product("pm-fluid-breadboard-mold"):amount(1):done(),
      PM.product("pm-fluid-breadboard"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-orange-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "h",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-fluid-breadboard-mold", 1),
      PM.ingredient("pm-vulcanised-rubber", 2)
    },
    results =
    {
      PM.product("pm-fluid-breadboard-mold"):amount(1):chance(0.6):done(),
      PM.product("pm-fluid-breadboard"):amount(2):done()
    },
  },
  {
    type = "recipe",
    name = "pm-advanced-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuitboard-molding.png",
    energy_required = 1,
    categories = {"pm-molding"},
    subgroup = "pm-molded-circuits",
    order = "k",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-circuit-mold", 1),
      PM.ingredient("pm-advanced-circuit-breadboard", 1)
    },
    results =
    {
      PM.product("pm-advanced-breadboard-mold"):amount(1):done(),
      PM.product("pm-advanced-circuit-breadboard"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "l",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-advanced-breadboard-mold", 1),
      PM.ingredient("pm-palladium-plate", 2),
      PM.ingredient("pm-platinum-plate", 2),
    },
    results =
    {
      PM.product("pm-advanced-breadboard-mold"):amount(1):chance(0.5):done(),
      PM.product("pm-advanced-circuit-breadboard"):amount(2):done()
    },
  },
  {
    type = "recipe",
    name = "pm-processing-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-circuitboard-molding.png",
    energy_required = 1,
    categories = {"pm-molding"},
    subgroup = "pm-molded-circuits",
    order = "n",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-circuit-mold", 1),
      PM.ingredient("pm-processing-breadboard", 1)
    },
    results =
    {
      PM.product("pm-processing-breadboard-mold"):amount(1):done(),
      PM.product("pm-processing-breadboard"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-processing-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-circuitboard-mold.png",
    categories = {"crafting-with-fluid"},
    subgroup = "pm-molded-circuits",
    order = "na",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-processing-breadboard-mold", 1),
      PM.ingredient("pm-ferric-chloride", 10, "fluid"),
      PM.ingredient("pm-indium-plate", 3),
      PM.ingredient("pm-cobalt-blue", 6)
    },
    results =
    {
      PM.product("pm-processing-breadboard-mold"):amount(1):chance(0.4):done(),
      PM.product("pm-processing-breadboard"):amount(2):done()
    },
  },
  
  {
    type = "recipe",
    name = "pm-sulfuric-acid-to-acidic-water",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfuric-acid-to-acidic-water.png",
    energy_required = 4,
    categories = {"pm-washing"},
    subgroup = "pm-sulfur-rnm",
    order = "ia",
    enabled = false,
    ingredients =
    {
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-calcium-ore", 6)
    },
    results =
    {
      PM.product("pm-acidic-water", "fluid"):amount(50):done(),
      PM.product("sulfur"):amount(2, 5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-water-deacifying",
    categories = {"pm-acids"},
    subgroup = "pm-sulfur-rnm",
    order = "ib",
    main_product = "water",
    enabled = false,
    crafting_machine_tint =
    {
      primary = { r = 0.98, g = 0.87, b = 0.09, a = 1 }, --main visible colour
      secondary = { r = 0, g = 0.4, b = 0, a = 1 }, --background visible colour
      tertiary = { r = 0.76, g = 0.89, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-calcium-ore", 6),
      PM.ingredient("pm-acidic-water", 50, "fluid"),
    },
    results =
    {
      PM.product("water", "fluid"):amount(50):done(),
      PM.product("sulfur"):amount(2, 5):done()
    }
  },

  {
    type = "recipe",
    name = "pm-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/integrated-circuit-mold.png",
    energy_required = 4,
    categories = {"pm-advanced-molding"},
    subgroup = "pm-molded-circuits",
    order = "b",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
    },
    results =
    {
      PM.product("pm-integrated-circuit-mold"):amount(3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-green-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/basic-integrated-circuit-molding.png",
    energy_required = 2,
    categories = {"pm-advanced-molding"},
    subgroup = "pm-molded-circuits",
    order = "e",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-integrated-circuit-mold", 3),
      PM.ingredient("pm-electronic-integrated-circuits", 3)
    },
    results =
    {
      PM.product("pm-electronic-integrated-circuit-mold"):amount(3):done(),
      PM.product("pm-electronic-integrated-circuits"):amount(2, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-electronic-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "f",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-electronic-integrated-circuit-mold", 3),
      PM.ingredient("copper-cable", 1)
    },
    results =
    {
      PM.product("pm-electronic-integrated-circuit-mold"):amount(3):chance(0.6):done(),
      PM.product("pm-electronic-integrated-circuits"):amount(3):done()
    },
  },
  {
    type = "recipe",
    name = "pm-fluid-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fluid-integrated-circuit-molding.png",
    energy_required = 2,
    categories = {"pm-advanced-molding"},
    subgroup = "pm-molded-circuits",
    order = "i",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-integrated-circuit-mold", 3),
      PM.ingredient("pm-fluid-integrated-circuits", 3)
    },
    results =
    {
      PM.product("pm-fluid-integrated-circuit-mold"):amount(3):done(),
      PM.product("pm-fluid-integrated-circuits"):amount(2, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "j",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-fluid-integrated-circuit-mold", 3),
      PM.ingredient("pm-gold-wire", 2)
    },
    results =
    {
      PM.product("pm-fluid-integrated-circuit-mold"):amount(3):chance(0.5):done(),
      PM.product("pm-fluid-integrated-circuits"):amount(3):done()
    },
  },
  {
    type = "recipe",
    name = "pm-advanced-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-integrated-circuit-molding.png",
    energy_required = 2,
    categories = {"pm-advanced-molding"},
    subgroup = "pm-molded-circuits",
    order = "m",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-integrated-circuit-mold", 3),
      PM.ingredient("pm-advanced-integrated-circuits", 3)
    },
    results =
    {
      PM.product("pm-advanced-integrated-circuit-mold"):amount(3):done(),
      PM.product("pm-advanced-integrated-circuits"):amount(2, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "n",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-advanced-integrated-circuit-mold", 3),
      PM.ingredient("pm-gold-wire", 2)
    },
    results =
    {
      PM.product("pm-advanced-integrated-circuit-mold"):amount(3):chance(0.4):done(),
      PM.product("pm-advanced-integrated-circuits"):amount(3):done()
    },
  },
  {
    type = "recipe",
    name = "pm-processing-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/processing-integrated-circuit-molding.png",
    energy_required = 2,
    categories = {"pm-advanced-molding"},
    subgroup = "pm-molded-circuits",
    order = "o",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-integrated-circuit-mold", 3),
      PM.ingredient("pm-processing-integrated-circuits", 3)
    },
    results =
    {
      PM.product("pm-processing-integrated-circuit-mold"):amount(3):done(),
      PM.product("pm-processing-integrated-circuits"):amount(2, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-processing-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "p",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients =
    {
      PM.ingredient("pm-processing-integrated-circuit-mold", 3),
      PM.ingredient("pm-indium-wire", 2)
    },
    results =
    {
      PM.product("pm-processing-integrated-circuit-mold"):amount(3):chance(0.3):done(),
      PM.product("pm-processing-integrated-circuits"):amount(3):done()
    },
  },
  {
    type = "recipe",
    name = "pm-bismuth-carbon-dioxide-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-CO2-electroylsis.png",
    energy_required = 3,
    enabled = false,
    categories = {"pm-electrolysis"},
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      PM.ingredient("pm-carbon-dioxide-gas", 40, "fluid"),
      PM.ingredient("pm-zirconia", 4),
      PM.ingredient("pm-bismuth-ore", 4)
    },
    results =
    {
      PM.product("pm-carbon-monoxide", "fluid"):amount(40):done(),
      PM.product("pm-zirconia"):amount(2):catalyst(2):done(),
      PM.product("pm-bismuth-ore"):amount(2):catalyst(2):done(), 
      PM.product("pm-oxygen-gas", "fluid"):amount(20):done()
    }
  },
} --[[@as data.RecipePrototype[] ]])

local PM = require("library")
--for any recipes that relate to byproducts

data:extend({

  {
    type = "recipe",
    name = "pm-ferrum-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ferrum-decomposition.png",
    category = "pm-acids",
    subgroup = "pm-tm-tm",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-ferrum", 4),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    crafting_machine_tint =
    {
      primary = { r = 0.36, g = 0, b = 0, a = 1 }, --main visible colour
      secondary = { r = 0.58, g = 0.969, b = 0.86, a = 1 }, --background visible colour
      tertiary = { r = 0, g = 0.9, b = 0.86, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0.36, g = 0, b = 0, a = 1 } --smoke
    },
    results =
    {
      PM.product_chance("iron-ore", 2, 0.75),
      PM.product_range("pm-acidic-water", 10, 12.5, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-patina-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/patina-decomposition.png",
    category = "pm-acids",
    subgroup = "pm-tm-tm",
    order = "d",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-patina", 4),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0, b = .56, a = 1 }, --main visible colour
      secondary = { r = 0.58, g = 0.969, b = 0.86, a = 1 }, --background visible colour
      tertiary = { r = 0, g = 0.9, b = 0.86, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0, g = 0, b = 0.56, a = 1 } --smoke
    },
    results =
    {
      PM.product_chance("copper-ore", 2, 0.75),
      PM.product_range("pm-acidic-water", 10, 12.5, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-glass-resmelting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-resmelting.png",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    subgroup = "pm-glassing",
    category = "smelting",
    order = "da",
    ingredients =
    {
      PM.ingredient("pm-glass-shards", 4)
    },
    results =
    {
      PM.product("pm-glass-pane", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-hydride-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png",
    energy_required = 4,
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-palladium-tm",
    order = "Aa",
    ingredients =
    {
      PM.ingredient("pm-palladium-hydride", 8)
    },
    results =
    {
      PM.product("pm-palladium-ore", 4),
      PM.product_range("pm-hydrogen-gas", 2, 4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-mixed-ore-slag-crushing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mixed-ore-slag-crushing.png",
    enabled = false,
    energy_required = 9,
    category = "pm-crushing",
    subgroup = "pm-ptm-ptm",
    ingredients =
    {
      PM.ingredient("pm-mixed-ore-slag", 6)
    },
    results =
    {
      PM.product_range_chance("pm-ferrum", 3, 9, 0.5),
      PM.product_range_chance("pm-patina", 3, 9, 0.5),
      PM.product_range_chance("pm-post-transition-metals-ore", 3, 9, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-mixed-ore-slag-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mixed-ore-slag-leeching.png",
    enabled = false,
    energy_required = 4.5,
    category = "pm-acids",
    subgroup = "pm-ptm-ptm",
    ingredients =
    {
      PM.ingredient("pm-mixed-ore-slag", 9),
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results =
    {
      PM.product_range_chance("pm-arsenic-ore", 2, 8, 0.4),
      PM.product_range_chance("pm-lead-ore", 3, 5, 0.5),
      PM.product_range_chance("pm-bismuth-ore", 3, 5, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-ferrum-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chromic-ferrum-decomposition.png",
    category = "pm-acids",
    subgroup = "pm-tm-tm",
    order = "c",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-ferrum", 8),
      PM.ingredient("pm-chromic-acid", 2, "fluid")
    },
    crafting_machine_tint =
    {
      primary = { r = 0.36, g = 0, b = 0, a = 1 }, --main visible colour
      secondary = { r = 0.4, g = 0.4, b = 0.82, a = 1 }, --background visible colour
      tertiary = { r = 0.41, g = 0.4, b = 0.82, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0.36, g = 0, b = 0, a = 1 } --smoke
    },
    results =
    {
      PM.product_range("iron-ore", 2, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-patina-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chromic-patina-decomposition.png",
    category = "pm-acids",
    subgroup = "pm-tm-tm",
    order = "e",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-patina", 8),
      PM.ingredient("pm-chromic-acid", 2, "fluid")
    },
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0, b = .56, a = 1 }, --main visible colour
      secondary = { r = 0.4, g = 0.4, b = 0.82, a = 1 }, --background visible colour
      tertiary = { r = 0.41, g = 0.4, b = 0.82, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0, g = 0, b = 0.56, a = 1 } --smoke
    },
    results =
    {
      PM.product_range("copper-ore", 2, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-cobaltite-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobaltite-seperation.png",
    category = "pm-crushing",
    enabled = false,
    energy_required = 4,
    subgroup = "pm-cobalt-tm",
    order = "cb",
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-cobaltite", 12)
    },
    results =
    {
      PM.product_range("pm-cobalt-ore", 6, 10),
      PM.product_range("pm-arsenic-ore", 3, 6),
      PM.product_range("sulfur", 7, 12),
      PM.product_range_chance("pm-ferrum", 2, 4, 0.12)
    }
  },
  {
    type = "recipe",
    name = "pm-ferrous-waste-water",
    category = "pm-mixing",
    subgroup = "pm-iron-tm",
    order = "i",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-ferrum", 12),
      PM.ingredient("pm-sodium-hydroxide", 4, "fluid"),
      PM.ingredient("water", 20, "fluid"),
    },
    results = 
    {
      PM.product("pm-ferrous-waste-water", 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cupric-waste-water",
    category = "pm-mixing",
    subgroup = "pm-copper-tm",
    order = "i",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-patina", 12),
      PM.ingredient("pm-sodium-hydroxide", 4, "fluid"),
      PM.ingredient("water", 20, "fluid"),
    },
    results = 
    {
      PM.product("pm-cupric-waste-water", 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-sulfuric-waste-water",
    subgroup = "pm-sulfur-rnm",
    order = "ea",
    category = "pm-mixing",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("sulfur", 12),
      PM.ingredient("pm-sodium-hydroxide", 4, "fluid"),
      PM.ingredient("water", 20, "fluid"),
    },
    results = 
    {
      PM.product("pm-sulfuric-waste-water", 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-ferrous-waste-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ferrous-waste-water-seperation.png",
    category = "chemistry",
    subgroup = "pm-iron-tm",
    order = "j",
    enabled = false,
    allow_productivity = true,
    energy_required = 15,
    ingredients = 
    {
      PM.ingredient("pm-ferrous-waste-water", 10, "fluid"),
    },
    results = 
    {
      PM.product_range_chance("pm-manganese-ore", 0, 3, 0.75),
      PM.product_range_chance("iron-ore", 0, 5, 0.8),
      PM.product_range_chance("pm-titanium-ore", 0, 3, 0.66),
      PM.product_range_chance("pm-lead-ore", 0, 2, 0.35),
      PM.product_range_chance("pm-silver-ore", 0, 4, 0.6)
    }
  },
  {
    type = "recipe",
    name = "pm-cupric-waste-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cupric-waste-water-seperation.png",
    category = "chemistry",
    subgroup = "pm-copper-tm",
    order = "j",
    enabled = false,
    allow_productivity = true,
    energy_required = 15,
    ingredients = 
    {
      PM.ingredient("pm-cupric-waste-water", 10, "fluid"),
    },
    results = 
    {
      PM.product_range_chance("pm-gold-ore", 0, 3, 0.75),
      PM.product_range_chance("copper-ore", 0, 5, 0.8),
      PM.product_range_chance("pm-palladium-ore", 0, 3, 0.5),
      PM.product_range_chance("pm-platinum-ore", 0, 4, 0.4),
      PM.product_range_chance("pm-indium-ore", 0, 2, 0.35)
    }
  },
  {
    type = "recipe",
    name = "pm-sulfuric-waste-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cupric-waste-water-seperation.png",
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 15,
    ingredients = 
    {
      PM.ingredient("pm-sulfuric-waste-water", 10, "fluid"),
    },
    results = 
    {
      PM.product_range_chance("iron-ore", 0, 3, 0.66),
      PM.product_range_chance("pm-zinc-ore", 0, 2, 0.5),
      PM.product_range_chance("pm-mercury-ore", 0, 3, 0.45),
      PM.product_range_chance("pm-hydrogen-sulfide", 0, 4, 0.6, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-ferrous-waste-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ferrous-waste-water-looping.png",
    category = "pm-mixing",
    subgroup = "pm-iron-tm",
    order = "k",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-ferrous-waste-water", 15, "fluid"),
      PM.ingredient("water", 15, "fluid")
    },
    results = 
    {
      PM.product_range("water", 15, 20, "fluid"),
      PM.product_range_chance("pm-ferrum", 0, 4, 0.25)
    }
  },
  {
    type = "recipe",
    name = "pm-cupric-waste-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cupric-waste-water-looping.png",
    category = "pm-mixing",
    subgroup = "pm-copper-tm",
    order = "k",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-cupric-waste-water", 15, "fluid"),
      PM.ingredient("water", 15, "fluid")
    },
    results = 
    {
      PM.product_range("water", 15, 20, "fluid"),
      PM.product_range_chance("pm-patina", 0, 4, 0.25)
    }
  },
  {
    type = "recipe",
    name = "pm-sulfuric-waste-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ferrous-waste-water-looping.png",
    category = "pm-mixing",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-sulfuric-waste-water", 15, "fluid"),
      PM.ingredient("water", 15, "fluid")
    },
    results = 
    {
      PM.product_range("water", 15, 20, "fluid"),
      PM.product_range_chance("pm-acidic-water", 0, 8, 0.33, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-chloride-seperation",
    enabled = false,
    category = "pm-washing",
    energy_required = 5,
    main_product = "pm-calcium-ore",
    ingredients = 
    {
      PM.ingredient("pm-calcium-chloride", 6),
      PM.ingredient("water", 40, "fluid")
    },
    results = 
    {
      PM.product_range("pm-calcium-ore", 0, 6),
      PM.product_range("pm-chlorine", 0, 12, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-sulfate-seperation",
    enabled = false,
    category = "pm-mixing",
    energy_required = 5,
    main_product = "pm-calcium-chloride",
    ingredients = 
    {
      PM.ingredient("pm-calcium-sulfate", 8),
      PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-calcium-chloride", 4, 6),
      PM.product_range("pm-sulfur-dioxide", 0, 4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-combined-ore-slag",
    enabled = false,
    category = "pm-coldening",
    subgroup = "pm-tm-tm",
    order = "c",
    energy_required = 5,
    main_product = "pm-combined-ore-slab",
    ingredients =
    {
      PM.ingredient("pm-molten-ore-slag", 5, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 2)
    },
    results =
    {
      PM.product_range("pm-combined-ore-slab", 2, 4),
      PM.product_range_chance("pm-palladium-catalyst", 0, 2, 0.75),
      PM.product_range_chance("pm-catalyst-container", 0, 2, 0.2) --intended loss of catalyst
    }
  },
  {
    type = "recipe",
    name = "pm-combined-ore-slab-crushing",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-tm-tm",
    order = "d",
    energy_required = 8,
    main_product = "pm-mixed-ore-slag",
    ingredients =
    {
      PM.ingredient("pm-combined-ore-slab", 4)
    },
    results =
    {
      --PM.product_range("pm-rutile", 0, 3)
      PM.product_range("pm-ferrum", 0, 3),
      PM.product_range("pm-patina", 0, 3),
      PM.product_range("pm-mixed-ore-slag", 0, 2)
    }
  }
} --[[@as data.RecipePrototype[] ]])

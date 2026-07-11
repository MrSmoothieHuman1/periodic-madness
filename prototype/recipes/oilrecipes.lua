--for all recipes related to oil

data:extend({

  {
    type = "recipe",
    name = "pm-basic-oil-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-cracking.png",
    categories = {"oil-processing"},
    subgroup = "pm-oil",
    order = "a",
    enabled = false,
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("crude-oil", 100, "fluid")
    },
    results =
    {
      PM.product("pm-refinery-gases", "fluid"):amount(30):done(),
      PM.product("pm-naptha", "fluid"):amount(30):done(),
      PM.product("pm-oil-residuals", "fluid"):amount(30):done()
    }
  },
  {
    type = "recipe",
    name = "pm-oil-residuals-splitting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/oil-residuals-splitting.png",
    categories = {"chemistry"},
    subgroup = "pm-oil",
    order = "x",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-oil-residuals", 30, "fluid"),
      PM.ingredient("pm-glass-fibers", 5),
      PM.ingredient("steam", 20, "fluid")
    },
    results =
    {
      PM.product("pm-high-sulfur-residuals", "fluid"):amount(12):done(),
      PM.product("pm-low-sulfur-residuals", "fluid"):amount(12):done(),
      PM.product("pm-glass-fibers"):amount(3, 5):catalyst(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-high-sulfur-residuals-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/high-sulfur-residual-seperation.png",
    categories = {"chemistry"},
    subgroup = "pm-chrominum-tm",
    order = "A",
    enabled = false,
    energy_required = 6,
    ingredients = 
    {
      PM.ingredient("pm-high-sulfur-residuals", 6, "fluid"),
      PM.ingredient("pm-molybdenum-disulfide", 2)
    },
    results = 
    {
      PM.product("pm-bitumen"):amount(0, 2):done(),
      PM.product("sulfur"):amount(5, 10):done(),
      PM.product("pm-chromium-ore"):amount(1, 4):done(),
      PM.product("pm-hydrogen-sulfide", "fluid"):amount(2.5, 8):done()
    }
  },
  {
    type = "recipe",
    name = "pm-low-sulfur-residuals-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/low-sulfur-residual-seperation.png",
    categories = {"chemistry"},
    subgroup = "pm-vanadium-tm",
    order = "A",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      PM.ingredient("pm-low-sulfur-residuals", 6, "fluid"),
      PM.ingredient("pm-molybdenum-disulfide", 2)
    },
    results =
    {
      PM.product("pm-bitumen"):amount(2, 4):done(),
      PM.product("sulfur"):amount(3, 4):done(),
      PM.product("pm-vanadium-ore"):amount(1, 4):done(),
      PM.product("pm-syngas", "fluid"):amount(0.5, 5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bitumen-seperation.png",
    categories = {"pm-washing"},
    subgroup = "pm-oil",
    order = "xa",
    enabled = false,
    energy_required = 4,
    ingredients = 
    {
      PM.ingredient("pm-bitumen", 6),
      PM.ingredient("pm-calcium-ore", 3),
      PM.ingredient("water", 30, "fluid")
    },
    results = 
    {
      PM.product("pm-acidic-water", "fluid"):amount(5, 12.5):done(),
      PM.product("pm-naptha", "fluid"):amount(0, 5):done(),
      PM.product("pm-coke"):amount(2, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-refinery-gases-refining",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/refinery-gas-refining.png",
    energy_required = 2,
    categories = {"chemistry"},
    enabled = false,
    subgroup = "pm-plastics",
    order = "A",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-refinery-gases", 30, "fluid"),
    },
    results =
    {
      PM.product("pm-butane-gas", "fluid"):amount(15):chance(0.5):done(),
      PM.product("pm-butene-gas", "fluid"):amount(15):chance(0.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-catalyst-refinery-gas-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/palladium-catalyst-refinery-gas-cracking.png",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-refinery-gases", 25, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 1)
    },
    results =
    {
      PM.product("pm-palladium-catalyst"):amount(1):chance(0.8):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(1):chance(0.2):catalyst(1):done(),
      PM.product("pm-butane-gas", "fluid"):amount(20):chance(0.75):done(),
      PM.product("pm-syngas", "fluid"):amount(5, 10):chance(0.35):done(),
      PM.product("pm-palladium-hydride"):amount(0, 2):catalyst(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-butene-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butene-cracking.png",
    energy_required = 1,
    categories = {"pm-washing"},
    subgroup = "pm-plastics",
    order = "a",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-naptha", 5, "fluid"),
      PM.ingredient("pm-butene-gas", 10, "fluid")
    },
    results =
    {
      PM.product("pm-ethylene-gas", "fluid"):amount(4, 8):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-butane-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butane-cracking.png",
    energy_required = 1,
    categories = {"pm-washing"},
    subgroup = "pm-plastics",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-naptha", 5, "fluid"),
      PM.ingredient("pm-butane-gas", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-ethylene-gas", "fluid"):amount(18):done(),
      PM.product("pm-hydrogen-gas", "fluid"):amount(3, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-butene-to-butane",
    energy_required = 2,
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-butene-gas", 15, "fluid"),
      PM.ingredient("pm-nickel-plate", 3)
    },
    results =
    {
      PM.product("pm-butane-gas", "fluid"):amount(15):done()
    }
  },
  {
    type = "recipe",
    name = "pm-ethylene-polymerisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ethylene-plastic-pellets.png",
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 6, "fluid"),
      PM.ingredient("pm-carbon", 2),
      PM.ingredient("pm-hydrogen-gas", 4, "fluid")
    },
    results =
    {
      PM.product("pm-plastic-pellets"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-yttrium-ethylene-polymerisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ethylene-plastic-pellets.png",
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "ca",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 12, "fluid"),
      PM.ingredient("pm-carbon", 4),
      PM.ingredient("pm-hydrogen-gas", 8, "fluid"),
      PM.ingredient("pm-yttrium-catalyst", 1)
    },
    results =
    {
      PM.product("pm-plastic-pellets"):amount(12):done(),
      PM.product("pm-yttrium-catalyst"):amount(1):chance(0.95):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(1):chance(0.05):catalyst(1):done()
    }
  },

  {
    type = "recipe",
    name = "pm-molybdenum-disulfide",
    energy_required = 1.5,
    categories = {"chemistry"},
    subgroup = "pm-oil",
    order = "g",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molybdenum-ore", 1),
      PM.ingredient("sulfur", 2)
    },
    results =
    {
      PM.product("pm-molybdenum-disulfide"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-crude-oil-fractional-distillation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-fractional-distillation.png",
    energy_required = 8,
    enabled = false,
    categories = {"pm-fractional-distillation"},
    subgroup = "pm-oil",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("crude-oil", 250, "fluid")
    },
    results =
    {
      PM.product("pm-oil-residuals", "fluid"):amount(50):done(),
      PM.product("pm-fuel-oils", "fluid"):amount(50):done(),
      PM.product("pm-lubricating-oils", "fluid"):amount(50):done(),
      PM.product("pm-diesel", "fluid"):amount(50):done(),
      PM.product("pm-kerosene", "fluid"):amount(50):done(),
      PM.product("pm-naptha", "fluid"):amount(50):done(),
      PM.product("pm-petrol", "fluid"):amount(50):done(),
      PM.product("pm-refinery-gases", "fluid"):amount(50):done()
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking.png",
    crafting_machine_tint = 
    {
        primary = {0.35, 0.35, 0.25}
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-mixing"},
    subgroup = "pm-oil",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-diesel", 20, "fluid"),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-legendary-diesel", "fluid"):amount(8, 10):done(),
      PM.product("pm-common-diesel", "fluid"):amount(10, 12):done()
    }
  },
  {
    type = "recipe",
    name = "pm-legendary-diesel-to-solid-fuel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/legendary-diesel.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-legendary-diesel", 10, "fluid")
    },
    results =
    {
      PM.product("solid-fuel"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-common-diesel-to-solid-fuel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/common-diesel.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    energy_required = 4,
    enabled = false,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-common-diesel", 40, "fluid")
    },
    results =
    {
      PM.product("solid-fuel"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-to-solid-fuel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/kerosene.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 20, "fluid")
    },
    results =
    {
      PM.product("solid-fuel"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-to-solid-fuel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/petrol.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-petrol", 20, "fluid")
    },
    results =
    {
      PM.product("solid-fuel"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-solid-lubricant",
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-lubricant",
    order = "b",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-carbon", 12),
      PM.ingredient("lubricant", 10, "fluid")
    },
    results = 
    {
      PM.product("pm-solid-lubricant"):amount(2):done()
    }
  },

  {
    type = "recipe",
    name = "pm-common-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/common-diesel-cracking.png",
    enabled = false,
    energy_required = 2,
    categories = {"pm-washing"},
    subgroup = "pm-palladium-tm",
    order = "A",
    ingredients =
    {
      PM.ingredient("pm-common-diesel", 6, "fluid"),
      PM.ingredient("steam", 20, "fluid")
    },
    results =
    {
      PM.product("pm-palladium-ore"):amount(2, 4):done(),
      PM.product("pm-bitumen"):amount(2):chance(0.75):done(),
      PM.product("pm-syngas", "fluid"):amount(0, 5):done(),
      PM.product("water", "fluid"):amount(1.8, 2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-lubricant",
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-lubricant",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-solid-lubricant", 10),
      PM.ingredient("pm-liquid-gallium", 10, "fluid"),
      PM.ingredient("pm-cadnium-ore", 6)
    },
    results =
    {
      PM.product("pm-heavy-lubricant", "fluid"):amount(10):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-steam-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-steam-cracking.png",
    categories = {"oil-processing"},
    subgroup = "pm-oil",
    order = "d",
    enabled = false,
    energy_required = 8,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-naptha", 60, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-benzene", "fluid"):amount(10):done(),
      PM.product("pm-ethylene-gas", "fluid"):amount(2, 6):done(),
      PM.product("sulfur"):amount(4):done()
    }
  },
  {
    type = "recipe",
    name = "pm-acetone",
    categories = {"chemistry"},
    subgroup = "pm-resin",
    order = "g",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-petrol", 45, "fluid"),
      PM.ingredient("pm-benzene", 10, "fluid"),
      PM.ingredient("pm-potassium-permanganate", 5)
    },
    results =
    {
      PM.product("pm-acetone", "fluid"):amount(20):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-bisphenol-A",
    categories = {"chemistry"},
    subgroup = "pm-resin",
    order = "h",
    enabled = false,
    energy_required = 4,
    main_product = "pm-bisphenol-A",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-acetone", 10, "fluid"),
      PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-bisphenol-A", "fluid"):amount(20):done(),
      PM.product("pm-chlorine", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-chemical-resin",
    categories = {"pm-washing"},
    enabled = false,
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-bisphenol-A", 30, "fluid"),
      PM.ingredient("pm-vinyl-bromide", 5, "fluid"),
      PM.ingredient("sulfur", 4),
      PM.ingredient("pm-carbon", 4),
    },
    results =
    {
      PM.product("pm-resin", "fluid"):amount(100):done()
    }
  },
  {
    type = "recipe",
    name = "pm-polyethylene-plastic",
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "d",
    enabled = false,
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-plastic-pellets", 5),
      PM.ingredient("pm-naptha", 20, "fluid")
    },
    results =
    {
      PM.product("pm-polyethylene-plastic"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-polyethylene-plastic",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/polyethylene-plastic.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/dont-model-your-molecules-A.png",
        icon_size = 128,
      },
    },
    categories = {"chemistry"},
    subgroup = "pm-plastics",
    order = "e",
    enabled = false,
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-bisphenol-A", 30, "fluid"),
      PM.ingredient("pm-vinyl-bromide", 10, "fluid"),
      PM.ingredient("pm-plastic-pellets", 10),
    },
    results =
    {
      PM.product("pm-polyethylene-plastic"):amount(5):done()
    }
  },

  --misc recipes related to oil products

  {
    type = "recipe",
    name = "pm-vanadium-oxide-catalyst",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-vanadium-oxide", 1),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-vanadium-oxide-catalyst"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-catalyst",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-palladium-plate", 4),
      PM.ingredient("pm-carbon", 2),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-palladium-catalyst"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-catalyst",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 2),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-cobalt-catalyst"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-yttrium-catalyst",
    energy_required = 3,
    categories = {"crafting-with-fluid"},
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-yttrium-ore", 2),
      PM.ingredient("pm-oxygen-gas", 40, "fluid"),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-yttrium-catalyst"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-tungsten-catalyst",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 2),
      PM.ingredient("pm-tungsten-plate", 1),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-nickel-tungsten-catalyst"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-empty-fuel-canister",
    energy_required = 1,
    subgroup = "pm-fuels",
    enabled = false,
    ingredients =
    {
      PM.ingredient("steel-plate", 2),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results = {
      PM.product("pm-empty-fuel-canister"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    categories = {"chemistry"},
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-diesel", 40, "fluid")
    },
    results = {
      PM.product("pm-diesel-fuel-canister"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    categories = {"chemistry"},
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-kerosene", 40, "fluid")
    },
    results = {
      PM.product("pm-kerosene-fuel-canister"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    categories = {"chemistry"},
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-petrol", 40, "fluid")
    },
    results = {
      PM.product("pm-petrol-fuel-canister"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    categories = {"chemistry"},
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-naptha", 40, "fluid")
    },
    results = {
      PM.product("pm-naptha-fuel-canister"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-catalyst-container",
    energy_required = 1.5,
    enabled = false,
    subgroup = "pm-catalysts",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-vulcanised-rubber", 4),
    },
    results = {
      PM.product("pm-catalyst-container"):amount(1):done()
    }
  },

  {
    type = "recipe",
    name = "pm-octane-processing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/octane-processing.png",
    enabled = false,
    energy_required = 10,
    categories = {"oil-processing"},
    subgroup = "pm-octane-processing",
    order = "a",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-butene-gas", 40, "fluid"),
      PM.ingredient("pm-butane-gas", 40, "fluid"),
      --PM.ingredient("pm-aluminium-chloride", 5)
    },
    results =
    {
      PM.product("pm-N-octane", "fluid"):amount(4.5):done(),
      PM.product("pm-iso-octane", "fluid"):amount(5.5):done(),
      PM.product("pm-2-3-3-trimethylpentane", "fluid"):amount(2.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-N-octane-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/n-octane-cracking.png",
    enabled = false,
    energy_required = 5,
    categories = {"chemistry"},
    subgroup = "pm-octane-processing",
    order = "b",
    ingredients = 
    {
      PM.ingredient("pm-N-octane", 3, "fluid"),
      PM.ingredient("pm-iso-octane", 0.5, "fluid")
    },
    results =
    {
      PM.product("pm-iso-octane", "fluid"):amount(2):done()
    }
  },
    {
    type = "recipe",
    name = "pm-2-3-3-trimethylpentane-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/2-3-3-trimethylpentane-cracking.png",
    enabled = false,
    energy_required = 5,
    categories = {"chemistry"},
    subgroup = "pm-octane-processing",
    order = "c",
    ingredients = 
    {
      PM.ingredient("pm-2-3-3-trimethylpentane", 4, "fluid"),
      PM.ingredient("pm-iso-octane", 0.5, "fluid")
    },
    results =
    {
      PM.product("pm-iso-octane", "fluid"):amount(3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-N-octane-solid-fuel",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/n-octane.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-N-octane", 1, "fluid"),
      PM.ingredient("pm-fuel-oils", 10, "fluid"),
      PM.ingredient("solid-fuel", 2)
    },
    results =
    {
      PM.product("solid-fuel"):amount(6):catalyst(4):done()
    }
  },
    {
    type = "recipe",
    name = "pm-iso-octane-solid-fuel",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/iso-octane.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "f",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-iso-octane", 1, "fluid"),
      PM.ingredient("pm-fuel-oils", 10, "fluid"),
      PM.ingredient("solid-fuel", 2)
    },
    results =
    {
      PM.product("solid-fuel"):amount(6):catalyst(4):done()
    }
  },
    {
    type = "recipe",
    name = "pm-2-3-3-trimethylpentane-solid-fuel",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/solid-fuel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/2-3-3-trimethylpentane.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-solid-fuel",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-2-3-3-trimethylpentane", 1, "fluid"),
      PM.ingredient("pm-fuel-oils", 10, "fluid"),
      PM.ingredient("solid-fuel", 2)
    },
    results =
    {
      PM.product("solid-fuel"):amount(6):catalyst(3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    categories = {"crafting-with-fluid"},
    ingredients = 
    {
      PM.ingredient("pm-N-octane", 2, "fluid"),
      PM.ingredient("pm-naptha-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-industrial-octane-fuel-canister"):amount(1):done()
    }
  },
    {
    type = "recipe",
    name = "pm-kerosene-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    categories = {"crafting-with-fluid"},
    ingredients = 
    {
      PM.ingredient("pm-iso-octane", 2, "fluid"),
      PM.ingredient("pm-kerosene-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-industrial-octane-fuel-canister"):amount(1):done()
    }
  },
    {
    type = "recipe",
    name = "pm-diesel-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    categories = {"crafting-with-fluid"},
    ingredients = 
    {
      PM.ingredient("pm-iso-octane", 2, "fluid"),
      PM.ingredient("pm-diesel-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-vehicle-octane-fuel-canister"):amount(1):done()
    }
  },
    {
    type = "recipe",
    name = "pm-petrol-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    categories = {"crafting-with-fluid"},
    ingredients = 
    {
      PM.ingredient("pm-2-3-3-trimethylpentane", 2, "fluid"),
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("pm-petrol-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-vehicle-octane-fuel-canister"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-octane-processing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-octane-processing.png",
    enabled = false,
    energy_required = 10,
    categories = {"oil-processing"},
    subgroup = "pm-octane-processing",
    order = "a",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-butene-gas", 40, "fluid"),
      PM.ingredient("pm-butane-gas", 40, "fluid"),
      PM.ingredient("pm-rhenium-platinum-catalyst", 3)
    },
    results =
    {
      PM.product("pm-N-octane", "fluid"):amount(4.5 * 2):done(),
      PM.product("pm-iso-octane", "fluid"):amount(5.5 * 2):done(),
      PM.product("pm-2-3-3-trimethylpentane", "fluid"):amount(2.5 * 2):done(),
      PM.product("pm-rhenium-platinum-catalyst"):amount(3):chance(0.85):catalyst(3):done(),
      PM.product("pm-catalyst-container"):amount(3):chance(0.15):catalyst(3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-to-crude-oil",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/bitumen.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    categories = {"oil-processing"},
    subgroup = "pm-oil",
    order = "z",
    ingredients = 
    {
      PM.ingredient("pm-bitumen", 10),
      PM.ingredient("crude-oil", 20, "fluid")
    },
    results = 
    {
      PM.product("crude-oil", "fluid"):amount(35):done(),
      PM.product("pm-oil-residuals", "fluid"):amount(0.5, 5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-crude-oil-fractional-distillation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-fractional-distillation.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-fractional-distillation"},
    subgroup = "pm-oil",
    order = "ba",
    allow_productivity = true,
    emissions_multiplier = 0.75,
    ingredients =
    {
      PM.ingredient("crude-oil", 250, "fluid"),
      PM.ingredient("pm-rhenium-platinum-catalyst", 3),
      PM.ingredient("pm-ruthenium-plate", 2)
    },
    results =
    {
      PM.product("pm-oil-residuals", "fluid"):amount(50):done(),
      PM.product("pm-fuel-oils", "fluid"):amount(50):done(),
      PM.product("pm-lubricating-oils", "fluid"):amount(50):done(),
      PM.product("pm-diesel", "fluid"):amount(50):done(),
      PM.product("pm-kerosene", "fluid"):amount(50):done(),
      PM.product("pm-naptha", "fluid"):amount(50):done(),
      PM.product("pm-petrol", "fluid"):amount(50):done(),
      PM.product("pm-refinery-gases", "fluid"):amount(50):done(),
      PM.product("pm-rhenium-platinum-catalyst"):amount(3):chance(0.85):catalyst(3):done(),
      PM.product("pm-ruthenium-plate"):amount(2):chance(0.66):catalyst(2):done(),
      PM.product("pm-catalyst-container"):amount(3):chance(0.15):catalyst(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-xylene-naptha-cracking",
    enabled = false,
    energy_required = 6,
    categories = {"oil-processing"},
    subgroup = "pm-oil",
    order = "d",
    allow_productivity = true,
    main_product = "pm-p-xylene",
    ingredients =
    {
        PM.ingredient("pm-benzene", 10, "fluid"),
        PM.ingredient("pm-naptha", 30, "fluid")
    },
    results =
    {
        PM.product("pm-ethylene-gas", "fluid"):amount(0, 5):done(),
        PM.product("pm-p-xylene", "fluid"):amount(5, 15):done(),
        PM.product("pm-o-xylene", "fluid"):amount(5, 10):done()
    }
  },

  -- Oil Cracking/Reforming

  {
    type = "recipe",
    name = "pm-oil-residual-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/oil-residuals-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-oil-residuals", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-fuel-oils", "fluid"):amount(30):done()
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oils-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 30, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-lubricating-oils", "fluid"):amount(40):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lubricating-oils-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-lubricating-oils", 40, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-diesel", "fluid"):amount(50):done()
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking-2.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-diesel", 50, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-kerosene", "fluid"):amount(60):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 60, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-naptha", "fluid"):amount(70):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-naptha", 70, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-petrol", "fluid"):amount(80):done()
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-cracking.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-cracking",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-petrol", 80, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-refinery-gases", "fluid"):amount(90):done()
    }
  },

  {
    type = "recipe",
    name = "pm-petrol-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-reforming.png",
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "a",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-refinery-gases", 100, "fluid"),
      PM.ingredient("pm-petrol", 10, "fluid")
    },
    results =
    {
      PM.product("pm-petrol", "fluid"):amount(90):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/petrol.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/naptha.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "b",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-petrol", 90, "fluid"),
      PM.ingredient("pm-naptha", 10, "fluid")
    },
    results =
    {
      PM.product("pm-naptha", "fluid"):amount(80):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/naptha.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/kerosene.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "c",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-naptha", 80, "fluid"),
      PM.ingredient("pm-kerosene", 10, "fluid")
    },
    results =
    {
      PM.product("pm-kerosene", "fluid"):amount(70):done()
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/kerosene.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/diesel.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "d",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-kerosene", 70, "fluid"),
      PM.ingredient("pm-diesel", 10, "fluid")
    },
    results =
    {
      PM.product("pm-diesel", "fluid"):amount(60):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/diesel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/lubricating-oils.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "e",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-diesel", 60, "fluid"),
      PM.ingredient("pm-lubricating-oils", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lubricating-oils", "fluid"):amount(50):done()
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/lubricating-oils.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/fuel-oils.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "f",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-lubricating-oils", 50, "fluid"),
      PM.ingredient("pm-fuel-oils", 10, "fluid")
    },
    results =
    {
      PM.product("pm-fuel-oils", "fluid"):amount(40):done()
    }
  },
  {
    type = "recipe",
    name = "pm-oil-residuals-reforming",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/fuel-oils.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        icon_size = 64,
        scale = 0.38,
        shift = {0, 2.5}
      },
    },
    energy_required = 2,
    enabled = false,
    categories = {"pm-cracking"},
    subgroup = "pm-oil-reforming",
    order = "g",
    hide_from_signal_gui = false,
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 40, "fluid"),
      PM.ingredient("pm-oil-residuals", 10, "fluid")
    },
    results =
    {
      PM.product("pm-oil-residuals", "fluid"):amount(30):done()
    }
  },

--MARK: Burning oil
  {
    type = "recipe",
    name = "pm-petrol-to-burning-oil",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/burning-oil.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/petrol.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    crafting_machine_tint =
    {
        primary = {0.91, 0.502, 0.224},
        secondary = {0.5, 0, 0},
        tertiary = {0.91, 0.502, 0.224, 0.5},
        quaternary = {0.5, 0, 0}
    },
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-burning-oil",
    order = "b",
    ingredients =
    {
        PM.ingredient("pm-petrol", 15, "fluid"),
        PM.ingredient("solid-fuel", 2)
    },
    results =
    {
        PM.product("pm-burning-oil", "fluid"):amount(7.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-to-burning-oil",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/burning-oil.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/naptha.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    crafting_machine_tint =
    {
        primary = {0.91, 0.502, 0.224},
        secondary = {0, 0, 0.4},
        tertiary = {0.91, 0.502, 0.224, 0.5},
        quaternary = {0, 0, 0.4}
    },
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-burning-oil",
    order = "c",
    ingredients =
    {
        PM.ingredient("pm-naptha", 15, "fluid"),
        PM.ingredient("solid-fuel", 2)
    },
    results =
    {
        PM.product("pm-burning-oil", "fluid"):amount(7.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-to-burning-oil",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/burning-oil.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/kerosene.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    crafting_machine_tint =
    {
        primary = {0.91, 0.502, 0.224},
        secondary = {0.541, 0.522, 0.424},
        tertiary = {0.91, 0.502, 0.224, 0.5},
        quaternary = {0.541, 0.522, 0.424}
    },
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-burning-oil",
    order = "d",
    ingredients =
    {
        PM.ingredient("pm-kerosene", 15, "fluid"),
        PM.ingredient("solid-fuel", 2)
    },
    results =
    {
        PM.product("pm-burning-oil", "fluid"):amount(7.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-to-burning-oil",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/burning-oil.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/diesel.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    crafting_machine_tint =
    {
        primary = {0.91, 0.502, 0.224},
        secondary =  {0.333, 0.333, 0.332},
        tertiary = {0.91, 0.502, 0.224, 0.5},
        quaternary = {0.333, 0.333, 0.332}
    },
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-burning-oil",
    order = "e",
    ingredients =
    {
        PM.ingredient("pm-diesel", 15, "fluid"),
        PM.ingredient("solid-fuel", 2)
    },
    results =
    {
        PM.product("pm-burning-oil", "fluid"):amount(7.5):done()
    }
  },



  {
    type = "recipe",
    name = "pm-syngas",
    enabled = false,
    energy_required = 6,
    categories = {"oil-processing"},
    subgroup = "pm-oil",
    order = "y",
    main_product = "pm-syngas",
    ingredients =
    {
      PM.ingredient("pm-carbon", 6),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-syngas", "fluid"):amount(20):done(),
      PM.product("pm-oxygen-gas", "fluid"):amount(0, 2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-syngas-seperation",
    enabled = false,
    energy_required = 3,
    categories = {"oil-processing"},
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      PM.ingredient("pm-syngas", 12, "fluid"),
    },
    results =
    {
      PM.product("pm-carbon-monoxide", "fluid"):amount(6, 10):done(),
      PM.product("pm-sulfur-dioxide", "fluid"):amount(0, 2):done(), --hydrogen sulfide in hard mode
      --PM.product("pm-methane", "fluid"):amount(1, 4):done()
    }
  },
  {
    type = "recipe",
    name = "pm-light-lubricant",
    categories = {"chemistry"},
    subgroup = "pm-lubricant",
    order = "d",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-polydimethylsiloxane", 8, "fluid"),
        PM.ingredient("pm-heavy-lubricant", 10, "fluid"),
    },
    results =
    {
        PM.product("pm-light-lubricant", "fluid"):amount(10):done()
    }
},
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["lubricant"].subgroup = "pm-lubricant"
data.raw["recipe"]["lubricant"].order = "a"
data.raw["recipe"]["lubricant"].ingredients =
{
  PM.ingredient("pm-lubricating-oils", 12, "fluid"),
  PM.ingredient("pm-molybdenum-disulfide", 2)
}
data.raw["recipe"]["lubricant"].results =
{
  PM.product("lubricant", "fluid"):amount(10):done(),
}

data.raw["recipe"]["solid-fuel-from-heavy-oil"].hidden = true
data.raw["recipe"]["solid-fuel-from-light-oil"].hidden = true
data.raw["recipe"]["solid-fuel-from-petroleum-gas"].hidden = true
data.raw["recipe"]["solid-fuel-from-heavy-oil"].hidden_in_factoriopedia = true
data.raw["recipe"]["solid-fuel-from-light-oil"].hidden_in_factoriopedia = true
data.raw["recipe"]["solid-fuel-from-petroleum-gas"].hidden_in_factoriopedia = true

data.raw["recipe"]["coal-liquefaction"].subgroup = "pm-oil"
data.raw["recipe"]["coal-liquefaction"].order = "c"

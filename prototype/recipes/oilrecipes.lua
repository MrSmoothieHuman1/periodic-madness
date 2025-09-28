--for all recipes related to oil

data:extend({

  {
    type = "recipe",
    name = "pm-basic-oil-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-cracking.png",
    category = "oil-processing",
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
      PM.product("pm-refinery-gases", 30, "fluid"),
      PM.product("pm-naptha", 30, "fluid"),
      PM.product("pm-oil-residuals", 30, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-oil-residuals-splitting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/oil-residuals-splitting.png",
    category = "chemistry",
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
      PM.product("pm-high-sulfur-residuals", 12, "fluid"),
      PM.product("pm-low-sulfur-residuals", 12, "fluid"),
      PM.catalyst_range("pm-glass-fibers", 3, 5, 5)
    }
  },
  {
    type = "recipe",
    name = "pm-high-sulfur-residuals-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/high-sulfur-residual-seperation.png",
    category = "chemistry",
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
      PM.product_range("pm-bitumen", 0, 2),
      PM.product_range("sulfur", 5, 10),
      PM.product_range("pm-chromium-ore", 1, 4),
      PM.product_range("pm-hydrogen-sulfide", 2.5, 8, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-low-sulfur-residuals-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/low-sulfur-residual-seperation.png",
    category = "chemistry",
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
      PM.product_range("pm-bitumen", 2, 4),
      PM.product_range("sulfur", 3, 4),
      PM.product_range("pm-vanadium-ore", 1, 4),
      PM.product_range("pm-syngas", 0.5, 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bitumen-seperation.png",
    category = "pm-washing",
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
      PM.product_range("pm-acidic-water", 5, 12.5, "fluid"),
      PM.product_range("pm-naptha", 0, 5, "fluid"),
      PM.product_range("pm-coke", 2, 6)
    }
  },
  {
    type = "recipe",
    name = "pm-refinery-gases-refining",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/refinery-gas-refining.png",
    energy_required = 2,
    category = "chemistry",
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
      PM.product_chance("pm-butane-gas", 15, 0.5, "fluid"),
      PM.product_chance("pm-butene-gas", 15, 0.5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-catalyst-refinery-gas-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/palladium-catalyst-refinery-gas-cracking.png",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
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
      PM.catalyst_chance("pm-palladium-catalyst", 1, 0.8, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.2, 1),
      PM.product_chance("pm-butane-gas", 20, 0.75, "fluid"),
      PM.product_range_chance("pm-syngas", 5, 10, 0.35, "fluid"),
      PM.catalyst_range("pm-palladium-hydride", 0, 2, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-butene-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butene-cracking.png",
    energy_required = 1,
    category = "pm-washing",
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
      PM.product_range("pm-ethylene-gas", 4, 8, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-butane-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butane-cracking.png",
    energy_required = 1,
    category = "pm-washing",
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
      PM.product("pm-ethylene-gas", 18, "fluid"),
      PM.product_range("pm-hydrogen-gas", 3, 6, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-butene-to-butane",
    energy_required = 2,
    category = "chemistry",
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
      PM.product("pm-butane-gas", 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-ethylene-polymerisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ethylene-plastic-pellets.png",
    energy_required = 3,
    category = "chemistry",
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
      PM.product("pm-plastic-pellets", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-yttrium-ethylene-polymerisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ethylene-plastic-pellets.png",
    energy_required = 3,
    category = "chemistry",
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
      PM.product("pm-plastic-pellets", 12),
      PM.catalyst_chance("pm-yttrium-catalyst", 1, 0.95, 1),
      PM.product_chance("pm-catalyst-container", 1, 0.05)
    }
  },

  {
    type = "recipe",
    name = "pm-molybdenum-disulfide",
    energy_required = 1.5,
    category = "chemistry",
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
      PM.product("pm-molybdenum-disulfide", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-crude-oil-fractional-distillation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-fractional-distillation.png",
    energy_required = 8,
    enabled = false,
    category = "pm-fractional-distillation",
    subgroup = "pm-oil",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("crude-oil", 250, "fluid")
    },
    results =
    {
      PM.product("pm-oil-residuals", 50, "fluid"),
      PM.product("pm-fuel-oils", 50, "fluid"),
      PM.product("pm-lubricating-oils", 50, "fluid"),
      PM.product("pm-diesel", 50, "fluid"),
      PM.product("pm-kerosene", 50, "fluid"),
      PM.product("pm-naptha", 50, "fluid"),
      PM.product("pm-petrol", 50, "fluid"),
      PM.product("pm-refinery-gases", 50, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-mixing",
    subgroup = "pm-oil",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-diesel", 20, "fluid"),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product_range("pm-legendary-diesel", 8, 10, "fluid"),
      PM.product_range("pm-common-diesel", 10, 12, "fluid")
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
    category = "chemistry",
    subgroup = "pm-solid-fuel",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-legendary-diesel", 10, "fluid")
    },
    results =
    {
      PM.product("solid-fuel", 2)
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
    category = "chemistry",
    subgroup = "pm-solid-fuel",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-common-diesel", 40, "fluid")
    },
    results =
    {
      PM.product("solid-fuel", 2)
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
    category = "chemistry",
    subgroup = "pm-solid-fuel",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 20, "fluid")
    },
    results =
    {
      PM.product("solid-fuel", 2)
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
    category = "chemistry",
    subgroup = "pm-solid-fuel",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-petrol", 20, "fluid")
    },
    results =
    {
      PM.product("solid-fuel", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-solid-lubricant",
    energy_required = 4,
    category = "chemistry",
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
      PM.product("pm-solid-lubricant", 2)
    }
  },

  {
    type = "recipe",
    name = "pm-common-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/common-diesel-cracking.png",
    enabled = false,
    energy_required = 2,
    category = "pm-washing",
    subgroup = "pm-palladium-tm",
    order = "A",
    ingredients =
    {
      PM.ingredient("pm-common-diesel", 6, "fluid"),
      PM.ingredient("steam", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-palladium-ore", 2, 4),
      PM.product_chance("pm-bitumen", 2, 0.75),
      PM.product_range("pm-syngas", 0, 5, "fluid"),
      PM.product_range("water", 1.8, 2, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-lubricant",
    energy_required = 4,
    category = "chemistry",
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
      PM.product("pm-heavy-lubricant", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-steam-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-steam-cracking.png",
    category = "oil-processing",
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
      PM.product("pm-benzene", 10, "fluid"),
      PM.product_range("pm-ethylene-gas", 2, 6, "fluid"),
      PM.product("sulfur", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-acetone",
    category = "chemistry",
    subgroup = "pm-resin",
    order = "g",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-petrol", 45, "fluid"),
      PM.ingredient("pm-benzene", 10, "fluid"),
      PM.ingredient("pm-hydrogen-fuel", 5)
    },
    results =
    {
      PM.product("pm-acetone", 20, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-bisphenol-A",
    category = "chemistry",
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
      PM.product("pm-bisphenol-A", 20, "fluid"),
      PM.product("pm-chlorine", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-chemical-resin",
    category = "pm-washing",
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
      PM.product("pm-resin", 100, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-polyethylene-plastic",
    category = "chemistry",
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
      PM.product("pm-polyethylene-plastic", 1)
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
    category = "chemistry",
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
      PM.product("pm-polyethylene-plastic", 5)
    }
  },

  --misc recipes related to oil products

  {
    type = "recipe",
    name = "pm-vanadium-oxide-catalyst",
    energy_required = 3,
    subgroup = "pm-catalysts",
    order = "ba",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-vanadium-oxide", 1),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-vanadium-oxide-catalyst", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-catalyst",
    energy_required = 3,
    subgroup = "pm-catalysts",
    order = "ca",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-palladium-plate", 4),
      PM.ingredient("pm-carbon", 2),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-palladium-catalyst", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-catalyst",
    energy_required = 3,
    subgroup = "pm-catalysts",
    order = "da",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 2),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-cobalt-catalyst", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-yttrium-catalyst",
    energy_required = 3,
    category = "crafting-with-fluid",
    subgroup = "pm-catalysts",
    order = "fa",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-yttrium-ore", 2),
      PM.ingredient("pm-oxygen-gas", 40, "fluid"),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-yttrium-catalyst", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-tungsten-catalyst",
    energy_required = 3,
    subgroup = "pm-catalysts",
    order = "ba",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 2),
      PM.ingredient("pm-tungsten-plate", 1),
      PM.ingredient("pm-catalyst-container", 1)
    },
    results = {
      PM.product("pm-nickel-tungsten-catalyst", 1)
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
      PM.product("pm-empty-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-diesel", 40, "fluid")
    },
    results = {
      PM.product("pm-diesel-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-kerosene", 40, "fluid")
    },
    results = {
      PM.product("pm-kerosene-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-petrol", 40, "fluid")
    },
    results = {
      PM.product("pm-petrol-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-fuel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      PM.ingredient("pm-empty-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1),
      PM.ingredient("pm-naptha", 40, "fluid")
    },
    results = {
      PM.product("pm-naptha-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-catalyst-container",
    energy_required = 1.5,
    enabled = false,
    subgroup = "pm-catalysts",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-vulcanised-rubber", 4),
    },
    results = {
      PM.product("pm-catalyst-container", 1)
    }
  },

  {
    type = "recipe",
    name = "pm-octane-processing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/octane-processing.png",
    enabled = false,
    energy_required = 10,
    category = "oil-processing",
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
      PM.product("pm-N-octane", 4.5, "fluid"),
      PM.product("pm-iso-octane", 5.5, "fluid"),
      PM.product("pm-2-3-3-trimethylpentane", 2.5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-N-octane-cracking",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-octane-processing",
    order = "b",
    ingredients = 
    {
      PM.ingredient("pm-N-octane", 3, "fluid"),
      PM.ingredient("pm-iso-octane", 0.5, "fluid")
    },
    results =
    {
      PM.product("pm-iso-octane", 2, "fluid")
    }
  },
    {
    type = "recipe",
    name = "pm-2-3-3-trimethylpentane-cracking",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-octane-processing",
    order = "c",
    ingredients = 
    {
      PM.ingredient("pm-2-3-3-trimethylpentane", 4, "fluid"),
      PM.ingredient("pm-iso-octane", 0.5, "fluid")
    },
    results =
    {
      PM.product("pm-iso-octane", 3, "fluid")
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
    category = "chemistry",
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
      PM.catalyst("solid-fuel", 6, 4)
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
    category = "chemistry",
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
      PM.catalyst("solid-fuel", 6, 4)
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
    category = "chemistry",
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
      PM.catalyst("solid-fuel", 6, 3)
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    ingredients = 
    {
      PM.ingredient("pm-N-octane", 2, "fluid"),
      PM.ingredient("pm-naptha-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-industrial-octane-fuel-canister", 1)
    }
  },
    {
    type = "recipe",
    name = "pm-kerosene-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    ingredients = 
    {
      PM.ingredient("pm-N-octane", 2, "fluid"),
      PM.ingredient("pm-kerosene-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-industrial-octane-fuel-canister", 1)
    }
  },
    {
    type = "recipe",
    name = "pm-diesel-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    ingredients = 
    {
      PM.ingredient("pm-iso-octane", 2, "fluid"),
      PM.ingredient("pm-diesel-fuel-canister", 1),
      PM.ingredient("solid-fuel", 2)
    },
    results = 
    {
      PM.product("pm-vehicle-octane-fuel-canister", 1)
    }
  },
    {
    type = "recipe",
    name = "pm-petrol-to-octane-fuel-canister",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    ingredients = 
    {
      PM.ingredient("pm-2-3-3-trimethylpentane", 2, "fluid"),
      PM.ingredient("pm-petrol-fuel-canister", 1),
      PM.ingredient("solid-fuel", 1)
    },
    results = 
    {
      PM.product("pm-vehicle-octane-fuel-canister", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-octane-processing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/octane-processing.png",
    enabled = false,
    energy_required = 10,
    category = "oil-processing",
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
      PM.product("pm-N-octane", 4.5 * 2, "fluid"),
      PM.product("pm-iso-octane", 5.5 * 2, "fluid"),
      PM.product("pm-2-3-3-trimethylpentane", 2.5 * 2, "fluid"),
      PM.catalyst_chance("pm-rhenium-platinum-catalyst", 3, 0.85, 2),
      PM.catalyst_chance("pm-catalyst-container", 3, 0.15, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-to-crude-oil",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/bitumen.png",
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
    category = "oil-processing",
    subgroup = "pm-oil",
    order = "z",
    ingredients = 
    {
      PM.ingredient("pm-bitumen", 10),
      PM.ingredient("crude-oil", 20, "fluid")
    },
    results = 
    {
      PM.product("crude-oil", 35, "fluid"),
      PM.product_range("pm-oil-residuals", 0.5, 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-crude-oil-fractional-distillation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/crude-oil-fractional-distillation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-fractional-distillation",
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
      PM.product("pm-oil-residuals", 50, "fluid"),
      PM.product("pm-fuel-oils", 50, "fluid"),
      PM.product("pm-lubricating-oils", 50, "fluid"),
      PM.product("pm-diesel", 50, "fluid"),
      PM.product("pm-kerosene", 50, "fluid"),
      PM.product("pm-naptha", 50, "fluid"),
      PM.product("pm-petrol", 50, "fluid"),
      PM.product("pm-refinery-gases", 50, "fluid"),
      PM.catalyst_chance("pm-rhenium-platinum-catalyst", 3, 0.85, 2),
      PM.catalyst_chance("pm-ruthenium-plate", 2, 0.66, 2),
      PM.catalyst_chance("pm-catalyst-container", 3, 0.15, 2)
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
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-oil-residuals", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-fuel-oils", 30, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oils-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 30, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-lubricating-oils", 40, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lubricating-oils-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-lubricating-oils", 40, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-diesel", 50, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking-2.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-diesel", 50, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-kerosene", 60, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 60, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-naptha", 70, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-naptha", 70, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-petrol", 80, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-petrol", 80, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-refinery-gases", 90, "fluid")
    }
  },

  {
    type = "recipe",
    name = "pm-petrol-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-reforming.png",
    energy_required = 2,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-refinery-gases", 100, "fluid"),
      PM.ingredient("pm-petrol", 10, "fluid")
    },
    results =
    {
      PM.product("pm-petrol", 90, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-petrol", 90, "fluid"),
      PM.ingredient("pm-naptha", 10, "fluid")
    },
    results =
    {
      PM.product("pm-naptha", 80, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-naptha", 80, "fluid"),
      PM.ingredient("pm-kerosene", 10, "fluid")
    },
    results =
    {
      PM.product("pm-kerosene", 70, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 70, "fluid"),
      PM.ingredient("pm-diesel", 10, "fluid")
    },
    results =
    {
      PM.product("pm-diesel", 60, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-diesel", 60, "fluid"),
      PM.ingredient("pm-lubricating-oils", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lubricating-oils", 50, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-lubricating-oils", 50, "fluid"),
      PM.ingredient("pm-fuel-oils", 10, "fluid")
    },
    results =
    {
      PM.product("pm-fuel-oils", 40, "fluid")
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
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 40, "fluid"),
      PM.ingredient("pm-oil-residuals", 10, "fluid")
    },
    results =
    {
      PM.product("pm-oil-residuals", 30, "fluid")
    }
  },

  {
    type = "recipe",
    name = "pm-syngas",
    enabled = false,
    energy_required = 6,
    category = "oil-processing",
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
      PM.product("pm-syngas", 20, "fluid"),
      PM.product_range("pm-oxygen-gas", 0, 2, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-syngas-seperation",
    enabled = false,
    energy_required = 3,
    category = "oil-processing",
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      PM.ingredient("pm-syngas", 12, "fluid"),
    },
    results =
    {
      PM.product_range("pm-carbon-monoxide", 6, 10, "fluid"),
      PM.product_range("pm-sulfur-dioxide", 0, 2, "fluid"), --hydrogen sulfide in hard mode
      --PM.product_range("pm-methane", 1, 4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-light-lubricant",
    category = "chemistry",
    subgroup = "pm-lubricant",
    order = "e",
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
        PM.product("pm-light-lubricant", 10, "fluid")
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
  PM.product("lubricant", 10, "fluid"),
}

data.raw["recipe"]["solid-fuel-from-heavy-oil"].hidden = true
data.raw["recipe"]["solid-fuel-from-light-oil"].hidden = true
data.raw["recipe"]["solid-fuel-from-petroleum-gas"].hidden = true
data.raw["recipe"]["solid-fuel-from-heavy-oil"].hidden_in_factoriopedia = true
data.raw["recipe"]["solid-fuel-from-light-oil"].hidden_in_factoriopedia = true
data.raw["recipe"]["solid-fuel-from-petroleum-gas"].hidden_in_factoriopedia = true

data.raw["recipe"]["coal-liquefaction"].subgroup = "pm-oil"
data.raw["recipe"]["coal-liquefaction"].order = "c"

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
    energy_required = 8,
    ingredients =
    {
      { type = "fluid", name = "crude-oil", amount = 100 }
    },
    results =
    {
      { type = "fluid", name = "pm-refinery-gases", amount = 30 },
      { type = "fluid", name = "pm-naptha",         amount = 30 },
      { type = "fluid", name = "pm-oil-residuals",  amount = 30 }
    }
  },
  {
    type = "recipe",
    name = "pm-oil-residual-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/oil-residual.png",
    category = "chemistry",
    subgroup = "pm-oil",
    order = "x",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { type = "fluid", name = "pm-oil-residuals", amount = 30 },
      { type = "fluid", name = "pm-naptha",        amount = 30 }
    },
    results =
    {
      {
        name = "pm-residual-chunks",
        amount_min = 4,
        amount_max = 6
      },
      { type = "fluid", name = "pm-refinery-gases", amount = 15 },
      { "pm-bitumen",   2 },
      { "sulfur",       4 }
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
    ingredients =
    {
      { type = "fluid", name = "pm-refinery-gases", amount = 30 },
    },
    results =
    {
      {
        type = "fluid",
        name = "pm-butane-gas",
        probability = 0.5,
        amount = 15
      },
      {
        type = "fluid",
        name = "pm-butene-gas",
        probability = 0.5,
        amount = 15
      }
    }
  },
  {
    type = "recipe",
    name = "pm-butene-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butene-cracking.png",
    energy_required = 1,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "a",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-butene-gas", amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-ethylene-gas",   amount_min = 4, amount_max = 8 },
      { type = "fluid", name = "pm-refinery-gases", amount = 5 }
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
      { type = "fluid",    name = "pm-butene-gas", amount = 10 + 4 + 1 },  --the number between 4 and 6 key isnt working, best i got
      { "pm-nickel-plate", 3 }
    },
    results =
    {
      { type = "fluid", name = "pm-butane-gas", amount = 10 + 4 + 1 }
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
    ingredients =
    {
      { type = "fluid", name = "pm-ethylene-gas", amount = 6 },
      { "pm-carbon",    2 },
      { type = "fluid", name = "pm-hydrogen-gas", amount = 4 }
    },
    results =
    {
      { "pm-plastic-pellets", 2 }
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
    ingredients =
    {
      { type = "fluid",        name = "pm-ethylene-gas", amount = 12 },
      { "pm-carbon",           4 },
      { type = "fluid",        name = "pm-hydrogen-gas", amount = 8 },
      { "pm-yttrium-catalyst", 1 }
    },
    results =
    {
      { "pm-plastic-pellets", 10 },
      {
        name = "pm-catalyst-container",
        amount = 1,
        probability = 0.98
      }
    }
  },

  {
    type = "recipe",
    name = "pm-residual-chunk-refining",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/residual-chunks.png",
    energy_required = 6,
    category = "pm-acids",
    subgroup = "pm-vanadium-tm",
    order = "A",
    enabled = false,
    ingredients =
    {
      { "pm-residual-chunks",      10 },
      { "pm-molybdenum-disulfide", 4 }
    },
    results =
    {
      { name = "pm-chrominum-ore", amount_min = 2, amount_max = 5 },
      { name = "pm-vanadium-ore",  amount_min = 1, amount_max = 4 },
      { "sulfur",                  8 }
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-clearing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bitumen-clearing.png",
    energy_required = 6,
    category = "advanced-crafting",
    subgroup = "pm-oil",
    order = "y",
    enabled = false,
    ingredients =
    {
      { "pm-bitumen", 6 }
    },
    results =
    {
      { name = "pm-bitumen", amount_min = 0, amount_max = 2, probability = 0.9 },
      { name = "pm-coke",    amount_min = 1, amount_max = 3 },
      { "pm-carbon",         4 }
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-washing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bitumen-washing.png",
    energy_required = 3,
    category = "pm-washing",
    subgroup = "pm-oil",
    order = "x",
    enabled = false,
    ingredients =
    {
      { "pm-bitumen",   2 },
      { type = "fluid", name = "water", amount = 20 }
    },
    results =
    {
      { type = "fluid",     name = "pm-acidic-water", amount = 10,    probability = 0.6 },
      { name = "pm-carbon", amount_min = 8,           amount_max = 12 },
      { "pm-coke",          4 }
    }
  },
  {
    type = "recipe",
    name = "pm-molybdenum-vulcanisation",
    energy_required = 1.5,
    category = "chemistry",
    subgroup = "pm-oil",
    order = "g",
    enabled = false,
    ingredients =
    {
      { "pm-molybdenum-ore", 1 },
      { "sulfur",            2 }
    },
    results =
    {
      { "pm-molybdenum-disulfide", 1 }
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
    ingredients =
    {
      { type = "fluid", name = "crude-oil", amount = 250 }
    },
    results =
    {
      { type = "fluid", name = "pm-oil-residuals",    amount = 50 },
      { type = "fluid", name = "pm-fuel-oils",        amount = 50 },
      { type = "fluid", name = "pm-lubricating-oils", amount = 50 },
      { type = "fluid", name = "pm-diesel",           amount = 50 },
      { type = "fluid", name = "pm-kerosene",         amount = 50 },
      { type = "fluid", name = "pm-naptha",           amount = 50 },
      { type = "fluid", name = "pm-petrol",           amount = 50 },
      { type = "fluid", name = "pm-refinery-gases",   amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking.png",
    energy_required = 2,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-diesel-processing",
    order = "a",
    ingredients =
    {
      { type = "fluid", name = "pm-diesel", amount = 20 },
      { type = "fluid", name = "steam",     amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-legendary-diesel", amount = 10 },
      { type = "fluid", name = "pm-common-diesel",    amount = 12 }

    }
  },
  {
    type = "recipe",
    name = "pm-legendary-diesel-to-solid-fuel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/legendary-diesel-to-solid-fuel.png",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-fuels",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-legendary-diesel", amount = 10 }
    },
    results =
    {
      { "solid-fuel", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-common-diesel-to-solid-fuel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/common-diesel-to-solid-fuel.png",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-fuels",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-common-diesel", amount = 40 }
    },
    results =
    {
      { "solid-fuel", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-to-solid-fuel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-to-solid-fuel.png",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-fuels",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-kerosene", amount = 20 }
    },
    results =
    {
      { "solid-fuel", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-to-solid-fuel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-to-solid-fuel.png",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-fuels",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-petrol", amount = 20 }
    },
    results =
    {
      { "solid-fuel", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-solid-lubricant",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/solid-lubricant.png",
    energy_required = 4,
    category = "chemistry",
    enabled = false,
    ingredients =
    {
      { "pm-molybdenum-ore", 2 },
      { "sulfur",            2 },
      { type = "fluid",      name = "lubricant", amount = 20 }
    },
    result = "pm-solid-lubricant"
  },


  {
    type = "recipe",
    name = "pm-acidic-water-to-sulfuric-acid",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/acidic-water-to-sulfuric-acid.png",
    energy_required = 6,
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "d",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-acidic-water", amount = 50 },
      { "sulfur",       5 }
    },
    results =
    {
      { type = "fluid", name = "sulfuric-acid", amount = 10 }
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
      { type = "fluid", name = "pm-common-diesel", amount = 6 },
      { type = "fluid", name = "steam",            amount = 20 }
    },
    results =
    {
      { name = "pm-palladium-ore", amount_min = 2, amount_max = 4 },
      { "pm-residual-chunks",      4 },
      { type = "fluid",            name = "water", amount_min = 18, amount_max = 20 }
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
    ingredients =
    {
      { type = "fluid",          name = "pm-refinery-gases", amount = 25 },
      { "pm-palladium-catalyst", 1 }
    },
    results =
    {
      { type = "fluid",                name = "pm-hydrogen-gas", amount_min = 4,  amount_max = 6 },
      {
        name = "pm-catalyst-container",
        probability = 0.9,
        amount = 1
      },
      { name = "pm-palladium-hydride", amount_min = 1,           amount_max = 3,  probability = 0.5 },
      { type = "fluid",                name = "pm-butane-gas",   amount_min = 20, amount_max = 30 }
    }
  },
  {
    type = "recipe",
    name = "pm-butane-cracking",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/butane-cracking.png",
    energy_required = 1,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "b",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-butane-gas", amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-ethylene-gas", amount = 18 },
      { type = "fluid", name = "pm-hydrogen-gas", amount_min = 3, amount_max = 6 }
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-lubricant",
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-oil",
    order = "f",
    enabled = false,
    ingredients =
    {
      { type = "fluid",   name = "lubricant",         amount = 10 },
      { type = "fluid",   name = "pm-liquid-gallium", amount = 10 },
      { "pm-cadnium-ore", 6 }
    },
    results =
    {
      { type = "fluid", name = "pm-heavy-lubricant", amount = 15 }
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oil-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oil-cracking.png",
    category = "oil-processing",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { type = "fluid", name = "pm-fuel-oils", amount = 75 }
    },
    results =
    {
      { type = "fluid", name = "pm-petrol",   amount = 25 },
      { type = "fluid", name = "pm-diesel",   amount = 25 },
      { type = "fluid", name = "pm-kerosene", amount = 25 },
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
    ingredients =
    {
      { type = "fluid", name = "pm-naptha", amount = 60 },
      { type = "fluid", name = "steam",     amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-benzene",      amount = 10 },
      { type = "fluid", name = "pm-ethylene-gas", amount_min = 2, amount_max = 6 },
      { "sulfur",       4 }
    }
  },
  {
    type = "recipe",
    name = "pm-acetone",
    category = "chemistry",
    subgroup = "pm-resin-processing",
    order = "g",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { type = "fluid",     name = "pm-petrol",  amount = 40 + 6 - 1 },
      { type = "fluid",     name = "pm-benzene", amount = 10 },
      { "pm-hydrogen-fuel", 5 }
    },
    results =
    {
      { type = "fluid", name = "pm-acetone", amount = 20 },
    }
  },
  {
    type = "recipe",
    name = "pm-bisphenol-A",
    category = "chemistry",
    subgroup = "pm-resin-processing",
    order = "h",
    enabled = false,
    energy_required = 4,
    main_product = "pm-bisphenol-A",
    ingredients =
    {
      { type = "fluid", name = "pm-acetone",           amount = 10 },
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-bisphenol-A", amount = 20 },
      { type = "fluid", name = "pm-chlorine",    amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-chemical-resin",
    category = "pm-washing",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { type = "fluid", name = "pm-bisphenol-A",   amount = 30 },
      { type = "fluid", name = "pm-vinyl-bromide", amount = 5 },
      { "sulfur",       4 },
      { "pm-carbon",    4 },
    },
    results =
    {
      { type = "fluid", name = "pm-resin", amount = 100 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-polyethylene-plastic",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-polyethylene-plastic.png",
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "e",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { type = "fluid",       name = "pm-bisphenol-A",   amount = 30 },
      { type = "fluid",       name = "pm-vinyl-bromide", amount = 10 },
      { "pm-plastic-pellets", 10 },
    },
    results =
    {
      { "pm-polyethylene-plastic", 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-butene-burning",
    category = "pm-moltening",
    enabled = false,
    energy_required = 1,
    emissions_multiplier = 1.4 + 0.1,
    main_product = "pm-carbon-monoxide",
    ingredients =
    {
      { type = "fluid", name = "pm-butene-gas", amount = 4 + 1 },
    },
    results =
    {
      { type = "fluid", name = "pm-carbon-monoxide", amount_min = 2, amount_max = 8 - 2 - 1 }
    }
  },

  --misc recipes related to oil products

  {
    type = "recipe",
    name = "pm-vanadium-oxide-catalyst",
    energy_required = 4,
    subgroup = "pm-refined-items",
    enabled = false,
    ingredients =
    {
      { "pm-vanadium-oxide",     1 },
      { "pm-catalyst-container", 1 }
    },
    result = "pm-vanadium-oxide-catalyst"
  },
  {
    type = "recipe",
    name = "pm-palladium-catalyst",
    energy_required = 4,
    subgroup = "pm-refined-items",
    enabled = false,
    ingredients =
    {
      { "pm-palladium-ore",      4 },
      { "pm-carbon",             2 },
      { "pm-catalyst-container", 1 }
    },
    result = "pm-palladium-catalyst"
  },
  {
    type = "recipe",
    name = "pm-cobalt-catalyst",
    energy_required = 4,
    subgroup = "pm-refined-items",
    enabled = false,
    ingredients =
    {
      { "pm-cobalt-plate",       2 },
      { "pm-catalyst-container", 1 }
    },
    result = "pm-cobalt-catalyst"
  },
  {
    type = "recipe",
    name = "pm-yttrium-catalyst",
    energy_required = 4,
    category = "crafting-with-fluid",
    subgroup = "pm-refined-items",
    enabled = false,
    ingredients =
    {
      { "pm-yttrium-ore",        2 },
      { type = "fluid", name = "pm-oxygen-gas", amount = 20 },
      { "pm-catalyst-container", 1 }
    },
    result = "pm-yttrium-catalyst"
  },
  {
    type = "recipe",
    name = "pm-fuel-canister",
    energy_required = 1,
    subgroup = "pm-fuels",
    enabled = false,
    ingredients =
    {
      { "empty-barrel",            1 },
      { "pm-polyethylene-plastic", 2 }
    },
    result = "pm-empty-fuel-canister"
  },
  {
    type = "recipe",
    name = "pm-diesel-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      { "pm-empty-fuel-canister", 1 },
      { "solid-fuel",             1 },
      { type = "fluid",           name = "pm-legendary-diesel", amount = 40 }
    },
    result = "pm-diesel-canister"
  },
  {
    type = "recipe",
    name = "pm-kerosene-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      { "pm-empty-fuel-canister", 1 },
      { "solid-fuel",             1 },
      { type = "fluid",           name = "pm-kerosene", amount = 40 }
    },
    result = "pm-kerosene-canister"
  },
  {
    type = "recipe",
    name = "pm-petrol-canister",
    energy_required = 2,
    enabled = false,
    subgroup = "pm-fuels",
    category = "chemistry",
    ingredients =
    {
      { "pm-empty-fuel-canister", 1 },
      { "solid-fuel",             1 },
      { type = "fluid",           name = "pm-petrol", amount = 40 }
    },
    result = "pm-petrol-canister"
  },
  {
    type = "recipe",
    name = "pm-catalyst-container",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-refined-items",
    ingredients =
    {
      { "pm-vulcanised-rubber", 4 },
    },
    result = "pm-catalyst-container"
  },

  -- Oil Cracking/Reforming

  {
    type = "recipe",
    name = "pm-oil-residual-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/oil-residuals-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "a",
    ingredients =
    {
      { type = "fluid", name = "pm-oil-residuals", amount = 20 },
      { type = "fluid", name = "steam",            amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-fuel-oils", amount = 30 }
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oils-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "b",
    ingredients =
    {
      { type = "fluid", name = "pm-fuel-oils", amount = 30 },
      { type = "fluid", name = "steam",        amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-lubricating-oils", amount = 40 }
    }
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lubricating-oils-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "c",
    ingredients =
    {
      { type = "fluid", name = "pm-lubricating-oils", amount = 40 },
      { type = "fluid", name = "steam",               amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-diesel", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-cracking-2.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-diesel", amount = 50 },
      { type = "fluid", name = "steam",     amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-kerosene", amount = 60 }
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "e",
    ingredients =
    {
      { type = "fluid", name = "pm-kerosene", amount = 60 },
      { type = "fluid", name = "steam",       amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-naptha", amount = 70 }
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-naptha", amount = 70 },
      { type = "fluid", name = "steam",     amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-petrol", amount = 80 }
    }
  },
  {
    type = "recipe",
    name = "pm-petrol-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-cracking.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-cracking",
    order = "g",
    ingredients =
    {
      { type = "fluid", name = "pm-petrol", amount = 80 },
      { type = "fluid", name = "steam",     amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-refinery-gases", amount = 90 }
    }
  },

  {
    type = "recipe",
    name = "pm-petrol-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/petrol-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "a",
    ingredients =
    {
      { type = "fluid", name = "pm-refinery-gases", amount = 100 },
      { type = "fluid", name = "pm-petrol",         amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-petrol", amount = 90 }
    }
  },
  {
    type = "recipe",
    name = "pm-naptha-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/naptha-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "b",
    ingredients =
    {
      { type = "fluid", name = "pm-petrol", amount = 90 },
      { type = "fluid", name = "pm-naptha", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-naptha", amount = 80 }
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "c",
    ingredients =
    {
      { type = "fluid", name = "pm-naptha",   amount = 80 },
      { type = "fluid", name = "pm-kerosene", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-kerosene", amount = 70 }
    }
  },
  {
    type = "recipe",
    name = "pm-diesel-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/diesel-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-kerosene", amount = 70 },
      { type = "fluid", name = "pm-diesel",   amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-diesel", amount = 60 }
    }
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lubricating-oils-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "e",
    ingredients =
    {
      { type = "fluid", name = "pm-diesel",           amount = 60 },
      { type = "fluid", name = "pm-lubricating-oils", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-lubricating-oils", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oils-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-lubricating-oils", amount = 50 },
      { type = "fluid", name = "pm-fuel-oils",        amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-fuel-oils", amount = 40 }
    }
  },
  {
    type = "recipe",
    name = "pm-oil-residuals-reforming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/oil-residuals-reforming.png",
    energy_required = 4,
    enabled = false,
    category = "pm-cracking",
    subgroup = "pm-oil-reforming",
    order = "g",
    ingredients =
    {
      { type = "fluid", name = "pm-fuel-oils",     amount = 40 },
      { type = "fluid", name = "pm-oil-residuals", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-oil-residuals", amount = 30 }
    }
  },
  -- Solid Lubricant > Heavy Lubricant > light Lubricant
  -- some recipes *can* take multiple, but im gonna try to restrict it
} --[[@as data.RecipePrototype[] ]])

local LubricantFix = data.raw["recipe"]["lubricant"]
LubricantFix.subgroup = "pm-oil"
LubricantFix.order = "e"
LubricantFix.ingredients =
{
  { type = "fluid",            name = "pm-lubricating-oils", amount = 12 },
  { "pm-molybdenum-disulfide", 2 }
}
LubricantFix.results =
{
  { type = "fluid", name = "lubricant", amount = 10 },
}

local HeavyOilSolidFuelFix = data.raw["recipe"]["solid-fuel-from-heavy-oil"]

HeavyOilSolidFuelFix.icon_size = 64
HeavyOilSolidFuelFix.icon = "__periodic-madness__/graphics/icons/recipes/fuel-oils-to-solid-fuel.png"
HeavyOilSolidFuelFix.subgroup = "pm-fuels"
HeavyOilSolidFuelFix.order = "g"
HeavyOilSolidFuelFix.ingredients =
{
  { type = "fluid", name = "pm-fuel-oils", amount = 20 }
}

data.raw["recipe"]["coal-liquefaction"].subgroup = "pm-oil"
data.raw["recipe"]["coal-liquefaction"].order = "c"

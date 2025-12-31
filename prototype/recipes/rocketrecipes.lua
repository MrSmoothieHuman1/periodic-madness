data:extend({
--MARK: Rocket fuels
   {
    type = "recipe",
    name = "pm-ammonium-nitrate",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    allow_productivity = true,
    main_product = "pm-ammonium-nitrate",
    ingredients = 
    {
        PM.ingredient("pm-ammonia-gas", 10, "fluid"),
        PM.ingredient("pm-nitric-acid", 10, "fluid"),
        PM.ingredient("pm-yttrium-catalyst", 2)
    },
    results =
    {
        PM.product("pm-ammonium-nitrate", 10),
        PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 2),
        PM.catalyst_chance("pm-yttrium-catalyst", 3, 0.8, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-dinitramide-solution",
    enabled = false,
    energy_required = 10,
    category = "chemistry",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-ammonium-nitrate", 5),
        PM.ingredient("pm-nitric-acid", 5, "fluid"),
        PM.ingredient("sulfuric-acid", 10, "fluid")
    },
    results =
    {
        PM.product("pm-ammonium-dinitramide-solution", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-dinitramide-ampule",
    enabled = false,
    energy_required = 10,
    category = "pm-crystallisation",
    allow_productivity = true,
    main_product = "pm-ammonium-dinitramide-ampule",
    ingredients =
    {
        PM.ingredient("pm-empty-glass-ampule", 8),
        PM.ingredient("pm-ammonium-dinitramide-solution", 20, "fluid", 2),
        PM.ingredient("pm-light-coolant", 10, "fluid", 1),
        PM.ingredient("pm-lithium-hydroxide", 25, "fluid", 3)
    },
    results =
    {
        PM.catalyst("pm-hot-light-coolant", 10, 10, "fluid", 1),
        PM.product("pm-ammonium-dinitramide-ampule", 8)
    }
  },
  {
    type = "recipe",
    name = "pm-hexamethyleneteramine",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-methanol", 12, "fluid"),
        PM.ingredient("pm-ammonia-gas", 8, "fluid")
    },
    results =
    {
        PM.product("pm-hexamethyleneteramine", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-HMX",
    enabled = false,
    energy_required = 12,
    category = "chemistry",
    allow_productivity = true,
    main_product = "pm-HMX",
    ingredients =
    {
        PM.ingredient("pm-hexamethyleneteramine", 2),
        PM.ingredient("pm-acetic-acid", 8, "fluid"),
        PM.ingredient("pm-palladium-catalyst", 3)
    },
    results =
    {
        PM.product("pm-HMX", 2),
        PM.catalyst_chance("pm-palladium-catalyst", 3, 0.75, 2),
        PM.catalyst_chance("pm-catalyst-container", 3, 0.25, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-rocket-control-unit",
    enabled = false,
    energy_required = 35,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
      {
        PM.ingredient("pm-CRT", 1),
        PM.ingredient("pm-fluid-circuit", 3),
        PM.ingredient("processing-unit", 3),
        PM.ingredient("pm-heavy-lubricant", 8, "fluid"),
        PM.ingredient("pm-polyethylene-plastic", 6),
      },
    results = 
    {
      PM.product("pm-rocket-control-unit", 1)
    }
  },

    {
    type = "recipe",
    name = "pm-nitrogen-dioxide",
    enabled = false,
    energy_required = 12,
    category = "chemistry",
    allow_productivity = true,
    ingredients = 
    {
        PM.ingredient("pm-nitric-oxide", 10, "fluid"),
        PM.ingredient("steam", 25, "fluid")
    },
    results =
    {
        PM.product("pm-nitrogen-dioxide", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-dinitrogen-tetroxide",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    allow_productivity = true,
    main_product = "pm-dinitrogen-tetroxide",
    ingredients =
    {
        PM.ingredient("pm-nitrogen-dioxide", 10, "fluid"),
        PM.ingredient("copper-plate", 4)
    },
    results =
    {
        PM.product("pm-dinitrogen-tetroxide", 5, "fluid"),
        PM.product_chance("pm-nitric-acid", 5, 0.5,"fluid"),
        PM.product_chance("copper-plate", 4, 0.85)
    }
  },

  {
    type = "recipe",
    name = "pm-high-sulfur-refined-kerosene",
    enabled = false,
    energy_required = 4,
    category = "oil-processing",
    allow_productivity = true,
    main_product = "pm-high-sulfur-refined-kerosene",
    ingredients =
    {
        PM.ingredient("pm-kerosene", 100, "fluid"),
        PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
        PM.product("pm-high-sulfur-refined-kerosene", 75, "fluid"),
        PM.product_chance("pm-oil-residuals", 10, 0.25, "fluid"),
        PM.product_range("sulfur", 2, 3)
    }
  },
  {
    type = "recipe",
    name = "pm-medium-sulfur-refined-kerosene",
    enabled = false,
    energy_required = 6,
    category = "oil-processing",
    allow_productivity = true,
    main_product = "pm-medium-sulfur-refined-kerosene",
    ingredients =
    {
        PM.ingredient("pm-high-sulfur-refined-kerosene", 75, "fluid"),
        PM.ingredient("steam", 33, "fluid"),
        PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-medium-sulfur-refined-kerosene", 50, "fluid"),
        PM.product_chance("pm-fuel-oils", 10, 0.15, "fluid"),
        PM.product_range("sulfur", 0, 1),
        PM.product("pm-vanadium-oxide-catalyst", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-low-sulfur-refined-kerosene",
    enabled = false,
    energy_required = 8,
    category = "oil-processing",
    allow_productivity = true,
    main_product = "pm-low-sulfur-refined-kerosene",
    ingredients =
    {
        PM.ingredient("pm-medium-sulfur-refined-kerosene", 50, "fluid"),
        PM.ingredient("steam", 25, "fluid"),
        PM.ingredient("pm-cobalt-catalyst", 3)
    },
    results = 
    {
        PM.product("pm-low-sulfur-refined-kerosene", 25, "fluid"),
        PM.product_chance("pm-lubricating-oils", 10, 0.05, "fluid"),
        PM.product_chance("sulfur", 1, 0.5),
        PM.product("pm-cobalt-catalyst", 3)
    }
  },

  {
    type = "recipe",
    name = "pm-RP-1",
    enabled = false,
    energy_required = 12,
    category = "chemistry",
    allow_productivity = true,
    main_product = "pm-RP-1",
    ingredients =
    {
        PM.ingredient("pm-low-sulfur-refined-kerosene", 25, "fluid"),
        PM.ingredient("pm-2-3-3-trimethylpentane", 5, "fluid"),
        PM.ingredient("solid-fuel", 10),
        PM.ingredient("pm-ruthenium-sulfide", 4),
        PM.ingredient("pm-nickel-tungsten-catalyst", 3)
    },
    results =
    {
        PM.product("pm-RP-1", 12.5, "fluid")
    }
  },

--MARK: Rocket parts
  {
    type = "recipe",
    name = "pm-heat-shielding",
    enabled = false,
    energy_required = 9,
    category = "pm-advanced-crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-graphene", 8),
        PM.ingredient("pm-gold-wire", 12),
        PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
        PM.ingredient("pm-liquid-silicone", 15, "fluid"),
        PM.ingredient("pm-aluminium-plate", 6),
        PM.ingredient("pm-mylar", 9)
    },
    results =
    {
        PM.product("pm-heat-shielding", 3)
    }
  },
  {
    type = "recipe",
    name = "pm-rocket-nozzle-parts",
    enabled = false,
    energy_required = 15,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("low-density-structure", 2),
        PM.ingredient("pm-tungsten-plate", 8),
        PM.ingredient("copper-plate", 8),
        PM.ingredient("pm-vulcanised-rubber", 9),
        PM.ingredient("pm-C103-plate", 4),
        PM.ingredient("pm-inconel-625-plate", 3)
    },
    results = 
    {
        PM.product("pm-rocket-nozzle-parts", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-rocket-cladding-parts",
    enabled = false,
    energy_required = 15,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("low-density-structure", 2),
        PM.ingredient("pm-heat-shielding", 4),
        PM.ingredient("pm-aluminium-plate", 5),
        PM.ingredient("pm-uhrlumin-plate", 3),
        PM.ingredient("pm-lightweight-framing", 8),
    },
    results =
    {
        PM.product("pm-rocket-cladding-parts", 2)
    }
  },

  {
    type = "recipe",
    name = "pm-liquid-rocket-fuel-tank",
    enabled = false,
    energy_required = 15,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-RP-1", 12.5, "fluid"),
        PM.ingredient("pm-lightweight-panelling", 16),
        PM.ingredient("pm-corrosion-resistant-tubing", 24),
        PM.ingredient("pm-advanced-electric-engine-unit", 2),
        PM.ingredient("pm-heavyweight-framing", 8),
        PM.ingredient("pm-fluid-circuit", 4)
    },
    results =
    {
        PM.product("pm-liquid-rocket-fuel-tank", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-rocket-oxidiser-tank",
    enabled = false,
    energy_required = 15,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-dinitrogen-tetroxide", 12.5, "fluid"),
        PM.ingredient("pm-lightweight-panelling", 16),
        PM.ingredient("pm-corrosion-resistant-tubing", 24),
        PM.ingredient("pm-advanced-electric-engine-unit", 2),
        PM.ingredient("pm-heavyweight-framing", 8),
        PM.ingredient("pm-fluid-circuit", 4)
    },
    results =
    {
        PM.product("pm-liquid-rocket-oxidiser-tank", 2)
    }
  },

  {
    type = "recipe",
    name = "pm-space-processing-unit-rocket-control-unit",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/rocket-control-unit.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/space-processing-unit.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    enabled = false,
    energy_required = 28,
    category = "crafting-with-fluid",
    subgroup = "pm-rocket-parts",
    order = "da",
    allow_productivity = true,
    ingredients =
      {
        PM.ingredient("pm-CRT", 1),
        PM.ingredient("pm-space-processing-unit", 3),
        PM.ingredient("pm-light-lubricant", 6, "fluid"),
        PM.ingredient("pm-polyethylene-plastic", 2),
        PM.ingredient("pm-mylar", 2)
      },
    results = 
    {
      PM.product("pm-rocket-control-unit", 1)
    }
  },
--MARK: Rocket launchables
  {
    type = "recipe",
    name = "pm-space-processing-unit-satellite",
    icons =
    {
      {
        icon = "__base__/graphics/icons/satellite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/space-processing-unit.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    enabled = false,
    energy_required = 15,
    subgroup = "pm-rocket-launchables",
    order = "b",
    ingredients =
    {
        PM.ingredient("pm-solar-panel-3", 20),
        PM.ingredient("rocket-fuel", 25),
        PM.ingredient("pm-gyroscope", 1),
        PM.ingredient("pm-radiation-resistant-panelling", 24),
        PM.ingredient("pm-gold-plate", 12),
        PM.ingredient("pm-space-processing-unit", 5),
        PM.ingredient("pm-selenium-sulfur-battery", 20),
        PM.ingredient("pm-rocket-control-unit", 5)
    },
    results =
    {
        PM.product("satellite", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-reusable-rocket-guidance-unit",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
        PM.ingredient("pm-rocket-control-unit", 2),
        PM.ingredient("pm-gyroscope", 1),
        PM.ingredient("pm-advanced-processing-unit", 5),
        PM.ingredient("pm-travelling-wave-amplifier-tube", 4),
        PM.ingredient("pm-heat-shielding", 6)
    },
    results =
    {
        PM.product("pm-reusable-rocket-guidance-unit", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-reusable-rocket-part-unpacking",
    enabled = false,
    energy_required = 15,
    maximum_productivity = 2,
    main_product = "pm-rocket-control-unit",
    ingredients =
    {
        PM.ingredient("pm-reusable-rocket-part", 1)
    },
    results =
    {
        PM.product_chance("pm-reusable-rocket-guidance-unit", 1, 0.2),
        PM.product_chance("pm-rocket-control-unit", 1, 0.5),
        PM.product_chance("pm-rocket-cladding-parts", 2, 0.5),
        PM.product_chance("pm-rocket-nozzle-parts", 2, 0.5),
    }
  },

--MARK: Rocket recipes
  {
    type = "recipe",
    name = "pm-liquid-fuel-rocket-part",
    enabled = false,
    energy_required = 3,
    category = "rocket-building",
    subgroup = "pm-rocket-recipes",
    order = "b",
    allow_productivity = true,
    ingredients = 
    {
        PM.ingredient("pm-liquid-rocket-fuel-tank", 5),
        PM.ingredient("pm-liquid-rocket-oxidiser-tank", 5),
        PM.ingredient("pm-rocket-control-unit", 5),
        PM.ingredient("pm-rocket-cladding-parts", 8),
        PM.ingredient("pm-rocket-nozzle-parts", 8)
    },
    results = 
    {
        PM.product("rocket-part", 1)
    }
  }
})

data.raw["recipe"]["rocket-part"].subgroup = "pm-rocket-recipes"
data.raw["recipe"]["rocket-part"].order = "a"
data.raw["recipe"]["rocket-part"].hide_from_player_crafting = false
data.raw["recipe"]["rocket-part"].ingredients =
{
    PM.ingredient("rocket-fuel", 10),
    PM.ingredient("pm-rocket-control-unit", 5),
    PM.ingredient("pm-rocket-cladding-parts", 8),
    PM.ingredient("pm-rocket-nozzle-parts", 8)
}
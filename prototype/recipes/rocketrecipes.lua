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
        PM.product("pm-hot-light-coolant", 10, "fluid", 1),
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

--MARK: Rocket parts
  {
    type = "recipe",
    name = "pm-heat-shielding",
    enabled = false,
    energy_required = 8,
    category = "pm-advanced-crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-carbon", 50),
        PM.ingredient("pm-gold-plate", 20),
        PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
        PM.ingredient("pm-liquid-silicone", 15, "fluid"),
        PM.ingredient("pm-aluminium-plate", 30)
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
        PM.ingredient("pm-vulcanised-rubber", 10),
        PM.ingredient("pm-C103-plate", 6)
    },
    results = 
    {
        PM.product("pm-rocket-nozzle-parts", 2)
    }
  },

--MARK: Rocket launchables
  {
    type = "recipe",
    name = "pm-space-processing-unit-satellite",
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
        --PM.ingredient("pm-liquid-rocket-fuel", 5),
        --PM.ingredient("pm-rocket-oxidisier", 5),
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
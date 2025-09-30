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
  }

--MARK: Rocket recipes
})

data.raw["recipe"]["rocket-part"].subgroup = "pm-rocket-recipes"
data.raw["recipe"]["rocket-part"].order = "a"
data.raw["recipe"]["rocket-part"].hide_from_player_crafting = false
data.raw["recipe"]["rocket-part"].ingredients =
{
    PM.ingredient("rocket-fuel", 10),
    PM.ingredient("pm-rocket-control-unit", 5),
    --PM.ingredient("pm-rocket-cladding-parts", 8),
    --PM.ingredient("pm-rocket-nozzle-parts", 8)
}
data:extend({
    {
    type = "fluid",
    name = "pm-sulfur-dioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/sulfur-dioxide.png",
    subgroup = "pm-sulfur-rnm",
    order = "f",
    default_temperature = 15,
    base_color = {r = 1, g = 1, b = 0},
    flow_color = {r = 1, g = 1, b = 0},
    auto_barrel = false,
    auto_void = true,
    auto_void_emissions = 1.5,
  },
  {
    type = "fluid",
    name = "pm-sulfur-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/sulfur-trioxide.png",
    subgroup = "pm-sulfur-rnm",
    order = "g",
    default_temperature = 15,
    base_color = {r = 1, g = 0.8, b = 0},
    flow_color = {r = 1, g = 0.8, b = 0},
    auto_barrel = false,
    auto_void = true,
    auto_void_emissions = 1.75,
  },
  {
    type = "fluid",
    name = "pm-oleum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/oleum.png",
    subgroup = "pm-sulfur-rnm",
    order = "h",
    default_temperature = 15,
    base_color = {r = 1, g = 1, b = 0},
    flow_color = {r = 1, g = 1, b = 0},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-hydrogen-sulfide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-sulfide.png",
    subgroup = "pm-sulfur-rnm",
    order = "d",
    default_temperature = 15,
    base_color = {r = 0.56, g = 0.422, b = 0.22},
    flow_color = {r = 0.56, g = 0.422, b = 0.22},
    auto_void = true,
    auto_void_emissions = 2,
  },

  --MARK: Sulfuric acid
  {
    type = "recipe",
    name = "pm-fuel-oil-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oil-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 10, "fluid"),
      PM.product_range("water", 1.2, 2, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 2, 0.75, 1),
      PM.catalyst_chance("pm-catalyst-container", 2, 0.25, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 10, "fluid"),
      PM.product_range("water", 1.2, 2, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 2, 0.75, 1),
      PM.catalyst_chance("pm-catalyst-container", 2, 0.25, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur-dioxide-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dioxide-cracking.png",
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "d",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 1)
    },
    results =
    {
      PM.product("sulfuric-acid", 20, "fluid"),
      PM.catalyst_chance("pm-vanadium-oxide-catalyst", 1, 0.75, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.25, 1)
    }
  },
    {
    type = "recipe",
    name = "pm-sulfur-dioxide",
    enabled = false,
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "e",
    main_product = "pm-sulfur-dioxide",
    ingredients =
    {
      PM.ingredient("sulfur", 10),
      PM.ingredient("pm-oxygen-gas", 10, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 3)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 20, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 3, 0.85, 2),
      PM.catalyst_chance("pm-catalyst-container", 3, 0.15, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-trioxide.png",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid"),
      PM.ingredient("pm-oxygen-gas", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 3),
      PM.ingredient("pm-potassium", 2)
    },
    results =
    {
      PM.product("pm-sulfur-trioxide", 10, "fluid"),
      PM.product_range_chance("pm-oxygen-gas", 5, 10, 0.5, "fluid"),
      PM.catalyst_chance("pm-vanadium-oxide-catalyst", 3, 0.8, 2),
      PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-oleum",
    enabled = false,
    energy_required = 6,
    category = "pm-acids",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sulfur-trioxide", 5, "fluid"),
      PM.ingredient("sulfuric-acid", 5, "fluid")
    },
    results =
    {
      PM.product_range("pm-oleum", 10, 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-better-sulfuric-acid",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-sulfuric-acid-rnm",
    order = "h",
    allow_productivity = true,
    main_product = "sulfuric-acid",
    ingredients =
    {
      PM.ingredient("pm-oleum", 5, "fluid"),
      PM.ingredient("pm-caesium-glass-ampule", 1)
    },
    results =
    {
      PM.product("sulfuric-acid", 30, "fluid"),
      PM.catalyst_chance("pm-empty-glass-ampule", 1, 0.8, 1)
    }
  },
--MARK: Sulfur

  {
    type = "recipe",
    name = "pm-hydrogen-sulfide",
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-sulfur-rnm",
    order = "a",
    allow_productivity = true,
    enabled = false,
    main_product = "pm-hydrogen-sulfide",
    ingredients =
    {
      PM.ingredient("pm-molybdenum-disulfide", 1),
      PM.ingredient("pm-syngas", 20, "fluid")
    },
    results =
    {
      PM.product("pm-hydrogen-sulfide", 15, "fluid"),
      PM.product_range("pm-carbon-dioxide-gas", 0, 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-sulfur-rnm",
    order = "b",
    allow_productivity = true,
    main_product = "sulfur",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-sulfide", 7.5, "fluid"),
      PM.ingredient("pm-nickel-tungsten-catalyst", 1)
    },
    results =
    {
      PM.product_range("sulfur", 4, 10),
      PM.product_range("water", 0, 5, "fluid"),
      PM.catalyst_chance("pm-nickel-tungsten-catalyst", 1, 0.85, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.15, 1)
    }
  },
})

data.raw["item"]["sulfur"].subgroup = "pm-sulfur-rnm"
data.raw["item"]["sulfur"].order = "b"

data.raw["recipe"]["sulfuric-acid"].energy_required = 4
data.raw["recipe"]["sulfuric-acid"].category = "pm-mixing"
data.raw["recipe"]["sulfuric-acid"].subgroup = "pm-sulfuric-acid-rnm"
data.raw["recipe"]["sulfuric-acid"].order = "a"
data.raw["recipe"]["sulfuric-acid"].main_product = "sulfuric-acid"
data.raw["recipe"]["sulfuric-acid"].ingredients =
{
  PM.ingredient("pm-ferrum", 3),
  PM.ingredient("pm-patina", 3),
  PM.ingredient("pm-acidic-water", 5, "fluid"),
  PM.ingredient("sulfur", 4)
}
data.raw["recipe"]["sulfuric-acid"].results =
{
  PM.product_chance("pm-ferrum", 3, 0.5),
  PM.product_chance("pm-patina", 3, 0.5),
  PM.product("sulfuric-acid", 10, "fluid")
}
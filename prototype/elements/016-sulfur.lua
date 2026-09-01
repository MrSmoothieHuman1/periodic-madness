data:extend({
    {
    type = "fluid",
    name = "pm-sulfur-dioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/sulfur-dioxide.png",
    subgroup = "pm-sulfur-rnm",
    order = "f",
    default_temperature = 15,
    base_color = {r = 1, g = 0.89, b = 0},
    flow_color = {r = 0.9, g = 0.79, b = 0},
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
    base_color = {r = 1, g = 0.7, b = 0},
    flow_color = {r = 0.9, g = 0.7, b = 0},
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
    categories = {"pm-washing"},
    subgroup = "pm-sulfuric-acid-rnm",
    order = "b",
    crafting_machine_tint = 
    {
        primary = {0.58, 0.443, 0}
    },
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", "fluid"):amount(10):done(),
      PM.product("water", "fluid"):amount(1.2, 2):done(),
      PM.product("pm-cobalt-catalyst"):amount(2):chance(0.75):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.25):catalyst(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-kerosene-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-sulfuric-acid-rnm",
    order = "c",
    crafting_machine_tint = 
    {
        primary = {0.839, 0.78, 0.337}
    },
    ingredients =
    {
      PM.ingredient("pm-kerosene", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", "fluid"):amount(10):done(),
      PM.product("water", "fluid"):amount(1.2, 2):done(),
      PM.product("pm-cobalt-catalyst"):amount(2):chance(0.75):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.25):catalyst(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur-dioxide-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dioxide-cracking.png",
    crafting_machine_tint = 
    {
        primary = {0.902, 0.78, 0.353},
        secondary = {0.522, 0.475, 0.306},
        tertiary = {0.902, 0.78, 0.353, 0.5},
        quaternary = {0.902, 0.78, 0.353}
    },
    energy_required = 2,
    categories = {"chemistry"},
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
      PM.product("sulfuric-acid", "fluid"):amount(20):done(),
      PM.product("pm-vanadium-oxide-catalyst"):amount(1):chance(0.75):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(1):chance(0.25):catalyst(1):done()
    }
  },
    {
    type = "recipe",
    name = "pm-sulfur-dioxide",
    enabled = false,
    energy_required = 2,
    categories = {"pm-moltening"},
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
      PM.product("pm-sulfur-dioxide", "fluid"):amount(20):done(),
      PM.product("pm-cobalt-catalyst"):amount(3):chance(0.85):catalyst(2):done(),
      PM.product("pm-catalyst-container"):amount(3):chance(0.15):catalyst(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-trioxide.png",
    enabled = false,
    energy_required = 3,
    categories = {"pm-acids"},
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
      PM.product("pm-sulfur-trioxide", "fluid"):amount(10):done(),
      PM.product("pm-oxygen-gas", "fluid"):amount(5, 10):chance(0.5):done(),
      PM.product("pm-vanadium-oxide-catalyst"):amount(3):chance(0.8):catalyst(2):done(),
      PM.product("pm-catalyst-container"):amount(3):chance(0.2):catalyst(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-oleum",
    enabled = false,
    energy_required = 6,
    categories = {"pm-acids"},
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
      PM.product("pm-oleum", "fluid"):amount(10, 15):done()
    }
  },
  {
    type = "recipe",
    name = "pm-better-sulfuric-acid",
    enabled = false,
    energy_required = 6,
    categories = {"pm-washing"},
    subgroup = "pm-sulfuric-acid-rnm",
    order = "h",
    allow_productivity = true,
    main_product = "sulfuric-acid",
    crafting_machine_tint =
    {
        primary = {0.75, 0.65, 0}
    },
    ingredients =
    {
      PM.ingredient("pm-oleum", 5, "fluid"),
      PM.ingredient("pm-caesium-glass-ampule", 1)
    },
    results =
    {
      PM.product("sulfuric-acid", "fluid"):amount(30):done(),
      PM.product("pm-empty-glass-ampule"):amount(1):chance(0.8):catalyst(1):done()
    }
  },
--MARK: Sulfur

  {
    type = "recipe",
    name = "pm-hydrogen-sulfide",
    crafting_machine_tint = 
    {
        primary = {0.671, 0.439, 0.2},
        secondary = {r = 0.56, g = 0.422, b = 0.22},
        tertiary = {r = 0.56, g = 0.422, b = 0.22, 0.5},
        quaternary = {0.671, 0.439, 0.2}
    },
    energy_required = 2,
    categories = {"chemistry"},
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
      PM.product("pm-hydrogen-sulfide", "fluid"):amount(15):done(),
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(0, 5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sulfur",
    crafting_machine_tint = 
    {
        primary = {1, 0.995, 0.089},
        secondary = {1, 0.974, 0.69},
        tertiary = {0.723, 0.638, 0.714},
        quaternary = {0.954, 1, 0.35}
    },
    energy_required = 4,
    enabled = false,
    categories = {"chemistry"},
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
      PM.product("sulfur"):amount(4, 10):done(),
      PM.product("water", "fluid"):amount(0, 5):done(),
      PM.product("pm-nickel-tungsten-catalyst"):amount(1):chance(0.85):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(1):chance(0.15):catalyst(1):done()
    }
  },
})

data.raw["item"]["sulfur"].subgroup = "pm-sulfur-rnm"
data.raw["item"]["sulfur"].order = "b"
data.raw["item"]["sulfur"].protons = 16
data.raw["item"]["sulfur"].neutrons = 16

data.raw["recipe"]["sulfuric-acid"].energy_required = 4
data.raw["recipe"]["sulfuric-acid"].categories = {"pm-mixing"}
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
  PM.product("pm-ferrum"):amount(3):chance(0.5):catalyst(3):done(),
  PM.product("pm-patina"):amount(3):chance(0.5):catalyst(3):done(),
  PM.product("sulfuric-acid", "fluid"):amount(10):done()
}
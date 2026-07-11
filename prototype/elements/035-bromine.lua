data:extend({
  {
    type = "fluid",
    name = "pm-hydrogen-bromide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-bromide.png",
    subgroup = "pm-bromine-rnm",
    order = "a",
    default_temperature = 15,
    base_color = {r = 1, g = 0.675, b = 0.2},
    flow_color = {r = 1, g = 0.675, b = 0.2},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-bromine-ions",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/bromine-ions.png",
    subgroup = "pm-bromine-rnm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.7, g = 0.64, b = 0},
    flow_color = {r = 0.7, g = 0.64, b = 0},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-trace-bromine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/trace-bromine.png",
    subgroup = "pm-bromine-rnm",
    order = "c",
    default_temperature = 15,
    base_color = {r = 0.75, g = 0.68, b = 0.6},
    flow_color = {r = 0.75, g = 0.68, b = 0.6},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-bromine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/bromine.png",
    subgroup = "pm-bromine-rnm",
    order = "d",
    protons = 35,
    neutrons = 45,
    default_temperature = 15,
    base_color = {r = 0.67, g = 0.36, b = 0},
    flow_color = {r = 0.67, g = 0.36, b = 0},
    auto_barrel = false
  },

  {
    type = "recipe",
    name = "pm-hydrogen-bromide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-leeching.png",
    enabled = false,
    energy_required = 10,
    categories = {"pm-washing"},
    subgroup = "pm-bromine-rnm",
    order = "a",
    allow_productivity = true,
    main_product = "pm-hydrogen-bromide",
    ingredients =
    {
      PM.ingredient("pm-seawater", 100, "fluid"),
      PM.ingredient("pm-atmosphere", 20, "fluid")
    },
    results =
    {
      PM.product("pm-hydrogen-bromide", "fluid"):amount(14, 28):done(),
      PM.product("pm-trace-gas", "fluid"):amount(5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-bromide-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-seperation.png",
    enabled = false,
    energy_required = 5,
    categories = {"pm-electrolysis"},
    subgroup = "pm-bromine-rnm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-bromide", 14, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 2)
    },
    results =
    {
      PM.product("pm-bromine-ions", "fluid"):amount(8):done(),
      PM.product("pm-hydrogen-gas", "fluid"):amount(8):done(),
      PM.product("pm-palladium-catalyst"):amount(2):chance(0.85):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.15):catalyst(1):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-trace-bromine",
    icon_size = 64,
    enabled = false,
    energy_required = 6,
    categories = {"chemistry"},
    subgroup = "pm-bromine-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-bromine-ions", 8, "fluid"),
      PM.ingredient("pm-chlorine", 24, "fluid")
    },
    results =
    {
      PM.product("pm-trace-bromine", "fluid"):amount(8):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bromine",
    enabled = false,
    energy_required = 3,
    categories = {"pm-atmospheric-condensing"},
    subgroup = "pm-bromine-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-trace-bromine", 6, "fluid"),
    },
    results =
    {
      PM.product("pm-bromine", "fluid"):amount(4):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vinyl-bromide",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-bromine-rnm",
    order = "e",
    main_product = "pm-vinyl-bromide",
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 5, "fluid"),
      PM.ingredient("pm-bromine", 4, "fluid")
    },
    results =
    {
      PM.product("pm-vinyl-bromide", "fluid"):amount(10):done(),
      PM.product("pm-hydrogen-bromide", "fluid"):amount(1, 3):done()
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-bromine-leeching",
    enabled = false,
    energy_required = 45,
    categories = {"pm-leaching"},
    subgroup = "pm-bromine-rnm",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-potash", 25),
      PM.ingredient("pm-sea-salt", 30),
      PM.ingredient("pm-high-brine", 50, "fluid")
    },
    results =
    {
      PM.product("pm-bromine-ions", "fluid"):amount(20, 40):done()
    }
  } --[[@as data.RecipePrototype]]
})

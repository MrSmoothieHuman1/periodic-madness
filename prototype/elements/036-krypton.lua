data:extend({
  {
    type = "item",
    name = "pm-krypton-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/krypton-air-filter.png",
    subgroup = "pm-krypton-nb",
    order = "a",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-krypton-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/krypton-gas.png",
    subgroup = "pm-krypton-nb",
    order = "b",
    protons = 36,
    neutrons = 48,
    default_temperature = 15,
    gas_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
  },

  {
    type = "recipe",
    name = "pm-krypton-air-filter",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-advanced-air-filter", 2),
        PM.ingredient("pm-potassium", 4),
        PM.ingredient("pm-iodine", 3),
        PM.ingredient("pm-lightweight-framing", 5)
    },
    results = 
    {
        PM.product("pm-krypton-air-filter"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-krypton-gas",
    enabled = false,
    energy_required = 2,
    categories = {"pm-atmospheric-condensing"},
    main_product = "pm-krypton-gas",
    ingredients =
    {
        PM.ingredient("pm-krypton-air-filter", 1),
        PM.ingredient("pm-mixed-noble-gas", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-krypton-gas", "fluid"):amount(10):done(),
        PM.product("pm-trace-gas", "fluid"):amount(15):chance(0.5):done(),
        PM.product("pm-krypton-air-filter"):amount(1):chance(0.5):catalyst(1):done()
    }
  },
{
    type = "recipe",
    name = "pm-krypton-gas-into-industrial-noble-gas",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/industrial-noble-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/krypton-gas.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 4,
    categories = {"pm-atmospheric-condensing"},
    subgroup = "pm-krypton-nb",
    order = "c",
    main_product = "pm-industrial-noble-gas",
    ingredients =
    {
        PM.ingredient("pm-krypton-gas", 12.5, "fluid"),
        PM.ingredient("pm-nickel-tungsten-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", "fluid"):amount(5):done(),
        PM.product("pm-nickel-tungsten-catalyst"):amount(2):chance(0.85):done(),
        PM.product("pm-catalyst-container"):amount(2):chance(0.15):done()
    }
},
{
  type = "recipe",
  name = "pm-krypton-gas-atmospheric-voiding",
  icon_size = 64,
  icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/krypton-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
        scale = 0.4
      },
    },
  categories = {"pm-atmospheric-condensing"},
  subgroup = "pm-krypton-nb",
  order = "x",
  enabled = false,
  energy_required = 6,
  emissions_multiplier = 0.5,
  ingredients =
  {
    PM.ingredient("pm-krypton-gas", 25, "fluid")
  },
  results = {}
},
})
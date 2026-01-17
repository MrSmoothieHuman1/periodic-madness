data:extend({

  {
    type = "item",
    name = "pm-radon-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/radon-air-filter.png",
    subgroup = "pm-radon-nb",
    order = "a",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-radon-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/radon-gas.png",
    subgroup = "pm-radon-nb",
    order = "b",
    protons = 86,
    neutrons = 136,
    default_temperature = 15,
    gas_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
  },

  {
    type = "recipe",
    name = "pm-radon-air-filter",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-advanced-air-filter", 2),
        PM.ingredient("pm-radium-ore", 4),
        PM.ingredient("pm-iodine", 3),
        PM.ingredient("pm-lightweight-framing", 5)
    },
    results = 
    {
        PM.product("pm-radon-air-filter", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-radon-gas",
    enabled = false,
    energy_required = 2,
    category = "pm-atmospheric-condensing",
    main_product = "pm-radon-gas",
    ingredients =
    {
        PM.ingredient("pm-radon-air-filter", 1),
        PM.ingredient("pm-mixed-noble-gas", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-radon-gas", 5, "fluid"),
        PM.product_chance("pm-trace-gas", 15, 0.5, "fluid"),
        PM.catalyst_chance("pm-radon-air-filter", 1, 0.5, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-radon-gas-into-industrial-noble-gas",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/industrial-noble-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/radon-gas.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-radon-nb",
    order = "c",
    main_product = "pm-industrial-noble-gas",
    ingredients =
    {
        PM.ingredient("pm-radon-gas", 7.5, "fluid"),
        PM.ingredient("pm-rhenium-platinum-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", 5, "fluid"),
        PM.product_chance("pm-rhenium-platinum-catalyst", 2, 0.95),
        PM.product_chance("pm-catalyst-container", 2, 0.05)
    }
  },
{
  type = "recipe",
  name = "pm-radon-gas-atmospheric-voiding",
  icon_size = 64,
  icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/radon-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
        scale = 0.4
      },
    },
  category = "pm-atmospheric-condensing",
  subgroup = "pm-radon-nb",
  order = "x",
  enabled = false,
  energy_required = 6,
  emissions_multiplier = 0.5,
  ingredients =
  {
    PM.ingredient("pm-radon-gas", 25, "fluid")
  },
  results = {}
},
})
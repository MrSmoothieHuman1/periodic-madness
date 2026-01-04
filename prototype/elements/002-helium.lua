data:extend({
  {
    type = "item",
    name = "pm-helium-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/helium-air-filter.png",
    subgroup = "pm-helium-nb",
    order = "a",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-helium-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/helium-gas.png",
    subgroup = "pm-helium-nb",
    order = "b",
    protons = 2,
    neutrons = 2,
    default_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
  },

  {
    type = "recipe",
    name = "pm-helium-air-filter",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-advanced-air-filter", 2),
        PM.ingredient("pm-sodium", 4),
        PM.ingredient("pm-iodine", 3),
        PM.ingredient("pm-lightweight-framing", 5)
    },
    results = 
    {
        PM.product("pm-helium-air-filter", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-helium-gas",
    enabled = false,
    energy_required = 2,
    category = "pm-atmospheric-condensing",
    main_product = "pm-helium-gas",
    ingredients =
    {
        PM.ingredient("pm-helium-air-filter", 1),
        PM.ingredient("pm-mixed-noble-gas", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-helium-gas", 17.5, "fluid"),
        PM.product_chance("pm-trace-gas", 15, 0.5, "fluid"),
        PM.catalyst_chance("pm-helium-air-filter", 1, 0.5, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-helium-gas-into-industrial-noble-gas",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/industrial-noble-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/helium-gas.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-helium-nb",
    order = "c",
    ingredients =
    {
        PM.ingredient("pm-helium-gas", 20, "fluid"),
        PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", 5, "fluid"),
        PM.product_chance("pm-vanadium-oxide-catalyst", 2, 0.66),
        PM.product_chance("pm-catalyst-container", 2, 0.33)
    }
},
{
  type = "recipe",
  name = "pm-helium-gas-atmospheric-voiding",
  icon_size = 128,
  icon = "__periodic-madness__/graphics/icons/recipes/helium-gas-voiding.png",
  category = "pm-atmospheric-condensing",
  subgroup = "pm-helium-nb",
  order = "x",
  enabled = false,
  energy_required = 6,
  emissions_multiplier = 0.5,
  ingredients =
  {
    PM.ingredient("pm-helium-gas", 25, "fluid")
  },
  results = {}
},
})
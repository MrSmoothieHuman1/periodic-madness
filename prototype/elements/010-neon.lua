data:extend({
  {
    type = "item",
    name = "pm-neon-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/neon-air-filter.png",
    subgroup = "pm-neon-nb",
    order = "a",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-neon-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/neon-gas.png",
    subgroup = "pm-neon-nb",
    order = "b",
    protons = 10,
    neutrons = 10,
    default_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
  },

  {
    type = "recipe",
    name = "pm-neon-air-filter",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-advanced-air-filter", 2),
        PM.ingredient("pm-carbon", 4),
        PM.ingredient("pm-iodine", 3),
        PM.ingredient("pm-lightweight-framing", 5)
    },
    results = 
    {
        PM.product("pm-neon-air-filter", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-neon-gas",
    enabled = false,
    energy_required = 2,
    category = "pm-atmospheric-condensing",
    main_product = "pm-neon-gas",
    ingredients =
    {
        PM.ingredient("pm-neon-air-filter", 1),
        PM.ingredient("pm-mixed-noble-gas", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-neon-gas", 15, "fluid"),
        PM.product_chance("pm-trace-gas", 15, 0.5, "fluid"),
        PM.catalyst_chance("pm-neon-air-filter", 1, 0.5, 1)
    }
  },
{
    type = "recipe",
    name = "pm-neon-gas-into-industrial-noble-gas",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/industrial-noble-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/neon-gas.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-neon-nb",
    order = "c",
    main_product = "pm-industrial-noble-gas",
    ingredients =
    {
        PM.ingredient("pm-neon-gas", 17.5, "fluid"),
        PM.ingredient("pm-palladium-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", 5, "fluid"),
        PM.product_chance("pm-palladium-catalyst", 2, 0.75),
        PM.product_chance("pm-catalyst-container", 2, 0.25)
    }
},
})
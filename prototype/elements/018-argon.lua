data:extend({
  {
    type = "item",
    name = "pm-argon-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/chlorine-air-filter-2.png",
    subgroup = "pm-argon-nb",
    order = "a",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-argon-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/argon-gas.png",
    subgroup = "pm-argon-nb",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.6, g = 0, b = 0},
    flow_color = {r = 0.6, g = 0, b = 0},
    auto_barrel = false,
    fuel_value = "0.4MJ"
  },

  {
    type = "recipe",
    name = "pm-argon-air-filter",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-advanced-air-filter", 2),
        PM.ingredient("sulfur", 4),
        PM.ingredient("pm-iodine", 4),
        PM.ingredient("pm-lightweight-framing", 6)
    },
    results = 
    {
        PM.product("pm-argon-air-filter", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-argon-gas",
    enabled = false,
    energy_required = 2,
    category = "pm-atmospheric-condensing",
    main_product = "pm-argon-gas",
    ingredients =
    {
        PM.ingredient("pm-argon-air-filter", 1),
        PM.ingredient("pm-mixed-noble-gas", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-argon-gas", 12.5, "fluid"),
        PM.product_chance("pm-trace-gas", 15, 0.5, "fluid")
    }
  },
{
    type = "recipe",
    name = "pm-argon-gas-into-industrial-noble-gas",
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-argon-nb",
    order = "c",
    main_product = "pm-industrial-noble-gas",
    ingredients =
    {
        PM.ingredient("pm-argon-gas", 15, "fluid"),
        PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", 5, "fluid"),
        PM.product_chance("pm-cobalt-catalyst", 2, 0.8),
        PM.product_chance("pm-catalyst-container", 2, 0.2)
    }
},
{
   type = "recipe",
   name = "pm-argon-gas-atmospheric-voiding",
   icon_size = 128,
   icon = "__periodic-madness__/graphics/icons/recipes/argon-gas-voiding.png",
   category = "pm-atmospheric-condensing",
   subgroup = "pm-argon-nb",
   order = "x",
   enabled = false,
   energy_required = 6,
   emissions_multiplier = -1,
   ingredients =
   {
     PM.ingredient("pm-argon-gas", 25, "fluid")
   },
   results = {}
},
})
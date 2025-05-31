local PM = require("library")
data:extend({
  {
    type = "fluid",
    name = "pm-argon-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/argon-gas.png",
    subgroup = "pm-argon-nb",
    order = "a",
    default_temperature = 15,
    base_color = {r = 0.6, g = 0, b = 0},
    flow_color = {r = 0.6, g = 0, b = 0},
    auto_barrel = false,
    fuel_value = "0.4MJ"
  },
  {
    type = "recipe",
    name = "pm-argon-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-argon-nb",
    order = "a",
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
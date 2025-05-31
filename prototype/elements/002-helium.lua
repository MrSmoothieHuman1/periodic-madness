local PM = require("library")
data:extend({

  {
    type = "fluid",
    name = "pm-helium-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/helium-gas.png",
    subgroup = "pm-helium-nb",
    order = "a",
    default_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
    auto_barrel = false,
  },
  {
    type = "recipe",
    name = "pm-helium-gas-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/helium-gas-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-helium-nb",
    order = "a",
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
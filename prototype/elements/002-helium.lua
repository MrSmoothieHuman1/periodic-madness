local PM = require("__periodic-madness__/library")
data:extend({

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
local PM = require("library")
data:extend({

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
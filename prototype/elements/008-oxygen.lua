local PM = require("library")
data:extend({

    {
        type = "recipe",
        name = "pm-oxygen-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-oxygen-rnm",
        order = "a",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-air-filter", 1),
          PM.ingredient("iron-plate", 4)
        },
        results =
        {
          PM.product("pm-oxygen-air-filter", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-oxygen-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-oxygen-rnm",
        order = "b",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-oxygen-air-filter", 1),
          PM.ingredient("pm-gold-plate", 3),
          PM.ingredient("pm-iodine", 2),
          PM.ingredient("pm-lightweight-framing", 6)
        },
        results =
        {
          PM.product("pm-advanced-oxygen-air-filter", 1)
        }
      },
    {
        type = "recipe",
        name = "pm-oxygen-gas",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-oxygen-rnm",
        order = "c",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 0.5,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 25, "fluid"),
          PM.ingredient("pm-oxygen-air-filter", 1)
        },
        results =
        {
          PM.product("pm-oxygen-gas", 25, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-oxygen-atmosphere-filtering",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/oxygen-condensation.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-oxygen-rnm",
        order = "d",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 0.75,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 12.5, "fluid"),
          PM.ingredient("pm-advanced-oxygen-air-filter", 1)
        },
        results =
        {
          PM.product("pm-oxygen-gas", 50, "fluid")
        }
      },
    {
        type = "recipe",
        name = "pm-oxygen-atmospheric-voiding",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/oxygen-voiding.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-oxygen-rnm",
        order = "e",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 2,
        ingredients =
        {
          PM.ingredient("pm-oxygen-gas", 25, "fluid")
        },
        results = {}
      },
})
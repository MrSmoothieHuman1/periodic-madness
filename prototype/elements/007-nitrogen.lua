local PM = require("__periodic-madness__/library")
data:extend({

    {
        type = "recipe",
        name = "pm-nitrogen-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-nitrogen-rnm",
        order = "a",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-air-filter", 1),
          PM.ingredient("pm-manganese-plate", 4)
        },
        results =
        {
          PM.product("pm-nitrogen-air-filter", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-nitrogen-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-nitrogen-rnm",
        order = "b",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-nitrogen-air-filter", 1),
          PM.ingredient("pm-gold-plate", 3),
          PM.ingredient("pm-iodine", 2),
          PM.ingredient("pm-lightweight-framing", 6)
        },
        results =
        {
          PM.product("pm-advanced-nitrogen-air-filter", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-nitrogen-atmosphere-filtering",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "c",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 0.5,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 25, "fluid"),
          PM.ingredient("pm-nitrogen-air-filter", 1)
        },
        results =
        {
          PM.product("pm-nitrogen-gas", 25, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-nitrogen-atmosphere-filtering",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/nitrogen-condensation.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "d",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 0.75,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 12.5, "fluid"),
          PM.ingredient("pm-advanced-nitrogen-air-filter", 1)
        },
        results =
        {
          PM.product("pm-nitrogen-gas", 50, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-nitrogen-atmospheric-voiding",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/nitrogen-voiding.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "e",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 2,
        ingredients =
        {
          PM.ingredient("pm-nitrogen-gas", 25, "fluid")
        },
        results = {}
    },
    {
        type = "recipe",
        name = "pm-ammonia-trace-gas-seperation",
        energy_required = 6,
        enabled = false,
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "f",
        main_product = "pm-ammonia-gas",
        ingredients =
        {
          PM.ingredient("pm-trace-gas", 25, "fluid"),
          PM.ingredient("pm-nitrogen-air-filter", 1)
        },
        results =
        {
          PM.product("pm-ammonia-gas", 15, "fluid"),
          PM.product("pm-water-vapour", 5, "fluid"),
          PM.product_chance("pm-nitrogen-gas", 5, 0.6, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-ammonia-atmospheric-voiding",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/ammonia-voiding.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "g",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = -1,
        ingredients =
        {
          PM.ingredient("pm-ammonia-gas", 25, "fluid")
        },
        results = {}
    },
})
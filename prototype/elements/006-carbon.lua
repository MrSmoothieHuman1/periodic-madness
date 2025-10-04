data:extend({

    {
        type = "recipe",
        name = "pm-carbon-dioxide-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-carbon-rnm",
        order = "a",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-air-filter", 1),
          PM.ingredient("pm-nickel-plate", 4)
        },
        results =
        {
          PM.product("pm-carbon-dioxide-air-filter", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-carbon-dioxide-air-filter",
        category = "advanced-crafting",
        subgroup = "pm-carbon-rnm",
        order = "b",
        energy_required = 4,
        enabled = false,
        allow_productivity = true,
        ingredients =
        {
          PM.ingredient("pm-advanced-air-filter", 1),
          PM.ingredient("pm-nickel-plate", 3),
          PM.ingredient("pm-iodine", 2),
          PM.ingredient("pm-lightweight-framing", 3)
        },
        results =
        {
          PM.product("pm-advanced-carbon-dioxide-air-filter", 1)
        }
      },
    {
        type = "recipe",
        name = "pm-carbon-dioxide-gas",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-carbon-rnm",
        order = "c",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 2,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 25, "fluid"),
          PM.ingredient("pm-carbon-dioxide-air-filter", 1)
        },
        results =
        {
          PM.product("pm-carbon-dioxide-gas", 25, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-advanced-carbon-dioxide-atmosphere-filtering",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/carbon-dioxide-condensation.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-carbon-rnm",
        order = "d",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 1.5,
        ingredients =
        {
          PM.ingredient("pm-atmosphere", 12.5, "fluid"),
          PM.ingredient("pm-advanced-carbon-dioxide-air-filter", 1)
        },
        results =
        {
          PM.product("pm-carbon-dioxide-gas", 50, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-carbon-dioxide-atmospheric-voiding",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/carbon-dioxide-voiding.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-carbon-rnm",
        order = "e",
        enabled = false,
        energy_required = 6,
        emissions_multiplier = 0.5,
        ingredients =
        {
          PM.ingredient("pm-carbon-dioxide-gas", 25, "fluid")
        },
        results = {}
    },
    {
      type = "recipe",
      name = "pm-carbon-monoxide-atmospheric-voiding",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/recipes/carbon-monoxide-voiding.png",
      category = "pm-atmospheric-condensing",
      subgroup = "pm-carbon-rnm",
      order = "ea",
      enabled = false,
      energy_required = 6,
      emissions_multiplier = 0.5,
      ingredients =
      {
        PM.ingredient("pm-carbon-monoxide", 25, "fluid")
      },
      results = {}
  },
    {
        type = "recipe",
        name = "pm-CO2-nullifying",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/carbon-dioxide.png",
        category = "pm-CO2-nullifying",
        subgroup = "pm-carbon-rnm",
        order = "f",
        energy_required = 3,
        enabled = false,
        ingredients =
        {
          PM.ingredient("pm-carbon-dioxide-gas", 10, "fluid"),
        },
        results =
        {
          PM.product("pm-oxygen-gas", 20, "fluid", 1),
          PM.product("pm-carbon", 10)
        }
    },
    {
        type = "recipe",
        name = "pm-CO3-nullifying",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/carbon-trioxide.png",
        category = "pm-CO2-nullifying",
        subgroup = "pm-carbon-rnm",
        order = "g",
        enabled = false,
        energy_required = 3,
        ingredients =
        {
          PM.ingredient("pm-carbon-trioxide", 10, "fluid"),
        },
        results =
        {
          PM.product("pm-oxygen-gas", 20, "fluid", 1),
          PM.product("pm-carbon-dioxide-gas", 10, "fluid", 2)
        }
    },
    {
      type = "recipe",
      name = "pm-carbon-to-carbon-dioxide",
      category = "pm-mixing",
      subgroup = "pm-carbon-rnm",
      order = "h",
      enabled = false,
      energy_required = 5,
      allow_decomposition = false,
      ingredients = 
      {
        PM.ingredient("pm-carbon", 10),
        PM.ingredient("pm-sodium-hydroxide", 6, "fluid")
      },
      results = 
      {
        PM.product_range("pm-carbon-dioxide-gas", 8, 10, "fluid"),
      }
    }
})
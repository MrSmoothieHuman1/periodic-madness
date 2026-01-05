data:extend({
    {
      type = "fluid",
      name = "pm-oxygen-gas",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/oxygen-gas.png",
      subgroup = "pm-oxygen-rnm",
      order = "a",
      protons = 8,
      neutrons = 8,
      default_temperature = 15,
      base_color = {r = 1, g = 0, b = 0},
      flow_color = {r = 1, g = 0, b = 0}
    },
    {
      type = "fluid",
      name = "pm-liquid-oxygen",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/liquid-oxygen.png",
      subgroup = "pm-oxygen-rnm",
      order = "g",
      default_temperature = 15,
      base_color = {r = 1, g = 0.25, b = 0.25},
      flow_color = {r = 1, g = 0.25, b = 0.25}
    },

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
          PM.ingredient("pm-advanced-air-filter", 1),
          PM.ingredient("iron-plate", 3),
          PM.ingredient("pm-iodine", 2),
          PM.ingredient("pm-lightweight-framing", 3)
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
    {
        type = "recipe",
        name = "pm-liquid-oxygen",
        enabled = false,
        energy_required = 10,
        category = "pm-cryogenics",
        ingredients =
        {
            PM.ingredient("pm-oxygen-gas", 10, "fluid")
        },
        results = 
        {
            PM.product("pm-liquid-oxygen", 1, "fluid")
        }
    },

    {
        type = "recipe",
        name = "pm-solid-sodium-hydroxide-mixing",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/solid-sodium-hydroxide-mixing.png",
        enabled = false,
        energy_required = 2,
        category = "pm-acids",
        subgroup = "pm-oxygen-rnm",
        order = "f",
        main_product = "pm-oxygen-gas",
        ingredients =
        {
            PM.ingredient("pm-solid-sodium-hydroxide", 5),
            PM.ingredient("water", 20, "fluid"),
            PM.ingredient("pm-nickel-plate", 1)
        },
        results =
        {
            PM.product("pm-seawater", 12.5, "fluid"),
            PM.product("pm-oxygen-gas", 10, "fluid")
        }
    }
})
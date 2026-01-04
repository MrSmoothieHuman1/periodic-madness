data:extend({

    {
      type = "item",
      name = "pm-nitrous-iron",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/nitrous-iron.png",
      pictures = 
      {
        {filename = "__periodic-madness__/graphics/icons/nitrous-iron.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/nitrous-iron-2.png", size = 64, scale = 0.5},
      },
      subgroup = "pm-nitrogen-rnm",
      order = "ga",
      stack_size = 50
    },

    {
        type = "fluid",
        name = "pm-nitrogen-gas",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/nitrogen-gas.png",
        subgroup = "pm-nitrogen-rnm",
        order = "a",
        protons = 7,
        neutrons = 7,
        default_temperature = 15,
        auto_barrel = false,
        base_color = {r = 0, g = 0, b = 1 },
        flow_color = {r = 0, g = 0, b = 1 }
    },

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
          PM.ingredient("pm-advanced-air-filter", 1),
          PM.ingredient("pm-manganese-plate", 3),
          PM.ingredient("pm-iodine", 2),
          PM.ingredient("pm-lightweight-framing", 3)
        },
        results =
        {
          PM.product("pm-advanced-nitrogen-air-filter", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-nitrogen-gas",
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
      name = "pm-haber-bosch-ammonia",
      crafting_machine_tint = 
      {
        primary = {0.9, 0.9, 1},
        secondary = {0.251, 0.596, 1},
        tertiary = tints.ammonia,
        quaternary = tints.ammonia,
      },
      energy_required = 3,
      enabled = false,
      category = "chemistry",
      subgroup = "pm-nitrogen-rnm",
      order = "g",
      main_product = "pm-ammonia-gas",
      ingredients =
      {
        PM.ingredient("pm-hydrogen-gas", 60, "fluid"),
        PM.ingredient("pm-nitrogen-gas", 20, "fluid"),
        PM.ingredient("iron-plate", 10) --should be catalyst for hard mode
      },
      results = 
      {
        PM.product_range("pm-hydrogen-gas", 0, 15, "fluid"),
        PM.product_range("pm-ammonia-gas", 15, 20, "fluid"),
        PM.catalyst_chance("pm-nitrous-iron", 1, 0.5, 1)
      }
    },
    {
      type = "recipe",
      name = "pm-nitrous-iron-seperation",
      energy_required = 6,
      enabled = false,
      category = "pm-electrolysis",
      subgroup = "pm-nitrogen-rnm",
      order = "ga",
      main_product = "iron-plate",
      ingredients =
      {
        PM.ingredient("pm-nitrous-iron", 1),
        PM.ingredient("pm-yttrium-catalyst", 1)
      },
      results =
      {
        PM.product_range("pm-nitrogen-gas", 0, 5, "fluid"),
        PM.product_range("iron-plate", 5, 10),
        PM.product_chance("pm-yttrium-catalyst", 1, 0.9),
        PM.product_chance("pm-catalyst-container", 1, 0.1)
      }
    },
    {
        type = "recipe",
        name = "pm-ammonia-atmospheric-voiding",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/ammonia-voiding.png",
        category = "pm-atmospheric-condensing",
        subgroup = "pm-nitrogen-rnm",
        order = "x",
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
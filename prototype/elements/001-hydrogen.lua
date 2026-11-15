data:extend({

  {
    type = "fluid",
    name = "pm-hydrogen-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-gas.png",
    subgroup = "pm-hydrogen-rnm",
    order = "a",
    protons = 1,
    neutrons = 0,
    gas_temperature = 15,
    default_temperature = 15,
    base_color = {r = 1, g = 1, b = 1 },
    flow_color = {r = 1, g = 1, b = 1 },
  },
  {
    type = "fluid",
    name = "pm-liquid-hydrogen",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/liquid-hydrogen.png",
    subgroup = "pm-hydrogen-rnm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 1, g = 1, b = 1 },
    flow_color = {r = 1, g = 1, b = 1 },
  },

  {
    type = "recipe",
    name = "pm-liquid-hydrogen",
    enabled = false,
    energy_required = 15,
    categories = {"pm-cryogenics"},
    allow_productivity = true,
    main_product = "pm-liquid-hydrogen",
    ingredients =
    {
        PM.ingredient("pm-hydrogen-gas", 10, "fluid"),
        PM.ingredient("pm-cerium-plate", 4),
        PM.ingredient("pm-rhenium-platinum-catalyst", 2),
        PM.ingredient("pm-liquid-nitrogen", 2.5, "fluid"),
        PM.ingredient("pm-light-coolant", 5, "fluid")
    },
    results =
    {
        PM.product("pm-liquid-hydrogen", "fluid"):amount(1):done(),
        PM.product("pm-nitrogen-gas", "fluid"):amount(20):catalyst(20):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(5):catalyst(5):done(),
        PM.product("pm-rhenium-platinum-catalyst"):amount(4):done()
    }
  },

})
data:extend({
    {
        type = "item",
        name = "pm-hassium-270",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-hassium-tm",
        order = "b",
        stack_size = 200
    },

    {
      type = "fluid",
      name = "pm-neon-22",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/neon-gas.png",
      subgroup = "pm-hassium-tm",
      order = "a",
      default_temperature = 15,
      base_color = {r = 0.7, g = 1, b = 0.7},
      flow_color = {r = 0.7, g = 1, b = 0.7},
    },
    
    {
        type = "recipe",
        name = "pm-neon-isotope-centrifuging",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        main_product = "pm-neon-22",
        ingredients = 
        {
            PM.ingredient("pm-neon-gas", 50, "fluid")
        },
        results =
        {
            PM.product("pm-neon-gas","fluid"):amount(50):chance(0, 0.905):done(),
            PM.product("pm-neon-22", "fluid"):amount(5):chance(0.905, 0.9975):done()
        }
    },

    {
        type = "recipe",
        name = "pm-hassium-270",
        enabled = false,
        energy_required = 7,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-hassium-270",
        ingredients =
        {
            PM.ingredient("pm-neon-22", 5, "fluid"),
            PM.ingredient("pm-bohrium-262", 5)
        },
        results =
        {
            PM.product("pm-neon-22", "fluid"):amount(4):chance(0, 0.1):done(),
            PM.product("pm-bohrium-262"):amount(4):chance(0, 0.1):done(),
            PM.product("pm-hassium-270"):amount(2):chance(0.1, 1):done()
        }
    },
})
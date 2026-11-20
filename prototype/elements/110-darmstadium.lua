data:extend({
    {
      type = "item",
      name = "pm-nickel-62",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-darmstadium-tm",
      order = "a",
      stack_size = 100
    },
    {
        type = "item",
        name = "pm-darmstadium-269",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-darmstadium-tm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-nickel-isotope-centrifuging",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        main_product = "pm-nickel-62",
        ingredients =
        {
            PM.ingredient("pm-nickel-plate", 50)
        },
        results =
        {
            PM.product("pm-nickel-plate"):amount(50):chance(0, 0.902):done(),
            PM.product("pm-nickel-62"):amount(5):chance(0.902, 0.938):done(),
            PM.product("pm-nickel-64"):amount(5):chance(0.902, 0.911):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-darmstadium-269",
        enabled = false,
        energy_required = 10,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-darmstadium-269",
        ingredients =
        {
            PM.ingredient("pm-nickel-62", 5),
            PM.ingredient("pm-meitnerium-266", 5)
        },
        results =
        {
            PM.product("pm-nickel-62"):amount(4):chance(0, 0.2):done(),
            PM.product("pm-meitnerium-266"):amount(4):chance(0, 0.2):done(),
            PM.product("pm-darmstadium-269"):amount(2):chance(0.2, 1):done()
        }
    },
})
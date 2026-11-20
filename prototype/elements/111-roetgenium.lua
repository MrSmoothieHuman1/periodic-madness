data:extend({
    {
      type = "item",
      name = "pm-copper-64",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-roetgenium-tm",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-zirconium-64",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/zirconium-sand.png",
      subgroup = "pm-roetgenium-tm",
      order = "b",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-nickel-64",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-roetgenium-tm",
      order = "c",
      stack_size = 100
    },
    {
        type = "item",
        name = "pm-roetgenium-272",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-roetgenium-tm",
        order = "d",
        stack_size = 200
    },

    {
      type = "recipe",
      name = "pm-copper-64",
      enabled = false,
      energy_required = 15,
      categories = {"pm-cyclotroning"},
      ingredients =
      {
        PM.ingredient("pm-zirconia", 20),
      },
      results =
      {
        PM.product("pm-copper-64"):amount(10):done()
      }
    },
    {
        type = "recipe",
        name = "pm-copper-64-beta-decay",
        enabled = false,
        energy_required = 15,
        categories = {"pm-beta-decay"},
        main_product = "pm-nickel-64",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-copper-64", 4)
        },
        results =
        {
            PM.product("pm-nickel-64"):amount(2):chance(0, 0.611):done(),
            PM.product("pm-zirconium-64"):amount(2):chance(0.611, 1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-nickel-64",
        enabled = false,
        energy_required = 15,
        categories = {"pm-beta-decay"},
        main_product = "pm-nickel-64",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-zirconium-64", 4)
        },
        results =
        {
            PM.product("pm-nickel-64"):amount(2):chance(0, 0.5):catalyst(2):done(),
            PM.product("pm-zirconium-64"):amount(2):chance(0.5, 1):done()
        }
    },

    {
        type = "recipe",
        name = "pm-roetgenium-272",
        enabled = false,
        energy_required = 15,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-roetgenium-272",
        ingredients =
        {
            PM.ingredient("pm-nickel-64", 5),
            PM.ingredient("pm-darmstadium-269", 5)
        },
        results =
        {
            PM.product("pm-nickel-64"):amount(4):chance(0, 0.25):done(),
            PM.product("pm-darmstadium-269"):amount(4):chance(0, 0.25):done(),
            PM.product("pm-roetgenium-272"):amount(2):chance(0.25, 1):done()
        }
    },
})
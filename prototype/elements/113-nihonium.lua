data:extend({
    {
      type = "item",
      name = "pm-calcium-48",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/calcium-ore.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-nihonium-ptm",
      order = "a",
      stack_size = 100
    },
    {
        type = "item",
        name = "pm-nihonium-288",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-nihonium-ptm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-calcium-isotope-centrifuging",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        main_product = "pm-calcium-48",
        ingredients =
        {
            PM.ingredient("pm-calcium", 50)
        },
        results =
        {
            PM.product("pm-calcium"):amount(50):chance(0, 0.902):done(),
            PM.product("pm-calcium-48"):amount(5):chance(0.902, 0.911):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-nihonium-288",
        enabled = false,
        energy_required = 25,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-nihonium-288",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 5),
            PM.ingredient("pm-conpernicium-277", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(4):chance(0, 0.35):done(),
            PM.product("pm-conpernicium-277"):amount(4):chance(0, 0.35):done(),
            PM.product("pm-nihonium-288"):amount(2):chance(0.35, 1):done()
        }
    },
})
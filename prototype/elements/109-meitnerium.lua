data:extend({
    {
      type = "item",
      name = "pm-iron-58",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-meitnerium-tm",
      order = "a",
      stack_size = 100
    },
    {
        type = "item",
        name = "pm-meitnerium-266",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/trace-dubnium-2.png", size = 64, scale = 0.5 },
            --{ filename = "__periodic-madness__/graphics/icons/ores/usable-dubnium-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-meitnerium-tm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-iron-isotope-centrifuging",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        main_product = "pm-iron-58",
        ingredients =
        {
            PM.ingredient("iron-plate", 50)
        },
        results =
        {
            PM.product("iron-plate"):amount(50):chance(0, 0.9175):done(),
            PM.product("pm-iron-58"):amount(5):chance(0.9175, 0.9175 + 0.028):done()
        }
    },
    {
        type = "recipe",
        name = "pm-meitnerium-266",
        enabled = false,
        energy_required = 10,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-meitnerium-266",
        ingredients =
        {
            PM.ingredient("pm-iron-58", 5),
            PM.ingredient("pm-hassium-270", 5)
        },
        results =
        {
            PM.product("pm-iron-58"):amount(4):chance(0, 0.15):done(),
            PM.product("pm-hassium-270"):amount(4):chance(0, 0.15):done(),
            PM.product("pm-meitnerium-266"):amount(2):chance(0.15, 1):done()
        }
    },
})
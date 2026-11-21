data:extend({
    {
      type = "item",
      name = "pm-zinc-70",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
      pictures =
      {
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
        { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
      },
      subgroup = "pm-copernicium-tm",
      order = "a",
      stack_size = 100
    },
    {
        type = "fluid",
        name = "pm-copernicium-277",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/copernicium-277.png",
        subgroup = "pm-copernicium-tm",
        order = "b",
        default_temperature = 15,
        base_color = {r = 0.7, g = 1, b = 0.7},
        flow_color = {r = 0.7, g = 1, b = 0.7},
    },

    {
        type = "recipe",
        name = "pm-zinc-isotope-centrifuging",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        main_product = "pm-zinc-70",
        ingredients =
        {
            PM.ingredient("pm-zinc-plate", 50)
        },
        results =
        {
            PM.product("pm-zinc-plate"):amount(50):chance(0, 0.9939):done(),
            PM.product("pm-zinc-70"):amount(5):chance(0.9939, 1):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-copernicium-277",
        enabled = false,
        energy_required = 20,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-copernicium-277",
        ingredients =
        {
            PM.ingredient("pm-zinc-70", 5),
            PM.ingredient("pm-roetgenium-272", 5)
        },
        results =
        {
            PM.product("pm-zinc-70"):amount(4):chance(0, 0.3):done(),
            PM.product("pm-roetgenium-272"):amount(4):chance(0, 0.3):done(),
            PM.product("pm-copernicium-277", "fluid"):amount(2):chance(0.3, 1):done()
        }
    },
})
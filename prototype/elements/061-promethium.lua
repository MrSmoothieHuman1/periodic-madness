data:extend({
    {
       type = "item",
       name = "pm-neodymium-146",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/neodymium-146.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-146.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-146-2.png", size = 64, scale = 0.43},
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-146-3.png", size = 64, scale = 0.5},
        },
       subgroup = "pm-promethium-la",
       order = "a",
        custom_tooltip_fields =
        {
            {
              name = {"pm-tooltips.beta-decay"},
              value = {"", "[img=item.pm-neodymium-147]", "item-name.neodymium-147"}
            },
        },
       stack_size = 200
    },
    {
       type = "item",
       name = "pm-neodymium-147",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/neodymium-147.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-147.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-147-2.png", size = 64, scale = 0.43},
          {filename = "__periodic-madness__/graphics/icons/ores/neodymium-147-3.png", size = 64, scale = 0.5},
        },
       subgroup = "pm-promethium-la",
       order = "b",
        custom_tooltip_fields =
        {
            {
              name = {"pm-tooltips.beta-decay"},
              value = {"", "[img=item.pm-promethium-147] ", {"item-name.pm-promethium-147"}}
            },
        },
       stack_size = 200
    },
    {
       type = "item",
       name = "pm-promethium-147",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/promethium-147.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/promethium-147.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/promethium-147-2.png", size = 64, scale = 0.43},
          {filename = "__periodic-madness__/graphics/icons/ores/promethium-147-3.png", size = 64, scale = 0.5},
        },
       subgroup = "pm-promethium-la",
       order = "c",
       protons = 61,
       neutrons = 86,
       stack_size = 200
    },
    {
        type = "recipe",
        name = "pm-neodymium-146",
        enabled = false,
        energy_required = 4,
        categories = {"centrifuging"},
        allow_productivity = true,
        main_product = "pm-neodymium-146",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 3),
            PM.ingredient("pm-ion-exchange-beads", 4)
        },
        results =
        {
            PM.product("pm-roasted-bastnasite"):amount(2):catalyst(2):done(),
            PM.product("pm-ion-exchange-beads"):amount(3):catalyst(3):done(),
            PM.product("pm-mixed-praseodymium-deposit"):amount(2):chance(0.1):catalyst(2):done(),
            PM.product("pm-neodymium-146"):amount(2):chance(0.032):done()
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-147",
        enabled = false,
        energy_required = 12,
        categories = {"pm-cyclotroning"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-neodymium-146", 2),
        },
        results =
        {
            PM.product("pm-neodymium-147"):amount(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-promethium-147",
        enabled = false,
        energy_required = 10,
        categories = {"pm-beta-decay"},
        main_product = "pm-promethium-147",
        ingredients =
        {
            PM.ingredient("pm-neodymium-147", 4)
        },
        results =
        {
            PM.product("pm-promethium-147"):amount(2):done(),
            PM.product("pm-neodymium-147"):amount(2):done()
        }
    },

    {
        type = "recipe",
        name = "pm-pennyjim-neodymium-146-enrichment-process",
        enabled = false,
        energy_required = 30,
        categories = {"centrifuging"},
        subgroup = "pm-promethium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-neodymium-146",
        ingredients =
        {
            PM.ingredient("pm-neodymium-146", 20),
            PM.ingredient("pm-roasted-bastnasite", 1),
            PM.ingredient("pm-trace-astatine-211", 2)
        },
        results =
        {
            PM.product("pm-neodymium-146"):amount(24):catalyst(20):done(),
            PM.product("pm-trace-astatine-211"):amount(1):catalyst(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-akip-neodymium-147-enrichment-process",
        enabled = false,
        energy_required = 30,
        categories = {"centrifuging"},
        subgroup = "pm-promethium-la",
        order = "e",
        allow_productivity = true,
        main_product = "pm-neodymium-147",
        ingredients =
        {
            PM.ingredient("pm-neodymium-147", 20),
            PM.ingredient("pm-neodymium-146", 5),
            PM.ingredient("pm-trace-astatine-211", 2)
        },
        results =
        {
            PM.product("pm-neodymium-147"):amount(24):catalyst(20):done(),
            PM.product("pm-neodymium-146"):amount(1):catalyst(1):done(),
            PM.product("pm-trace-astatine-211"):amount(1):catalyst(1):done()
        }
    },
})
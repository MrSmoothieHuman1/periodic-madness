data:extend({
    {
       type = "item",
       name = "pm-neodymium-146",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/thallium-sulfate.png",
       subgroup = "pm-promethium-la",
       order = "a",
       stack_size = 200
    },
    {
       type = "item",
       name = "pm-neodymium-147",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/thallium-sulfate.png",
       subgroup = "pm-promethium-la",
       order = "b",
       stack_size = 200
    },
    {
       type = "item",
       name = "pm-promethium-147",
       icon_size = 64,
       icon = "__periodic-madness__/graphics/icons/ores/thallium-sulfate.png",
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
        category = "centrifuging",
        allow_productivity = true,
        main_product = "pm-neodymium-146",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 3),
            PM.ingredient("pm-ion-exchange-beads", 4)
        },
        results =
        {
            PM.catalyst("pm-roasted-bastnasite", 2, 2),
            PM.catalyst("pm-ion-exchange-beads", 3, 3),
            PM.catalyst_chance("pm-mixed-praseodymium-deposit", 2, 0.1, 2),
            PM.product_chance("pm-neodymium-146", 2, 0.032)
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-147",
        enabled = false,
        energy_required = 12,
        category = "pm-cyclotroning",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-neodymium-146", 2),
        },
        results =
        {
            PM.product("pm-neodymium-147", 2)
        }
    },
    {
        type = "recipe",
        name = "pm-promethium-147",
        enabled = false,
        energy_required = 10,
        category = "pm-beta-decay",
        main_product = "pm-promethium-147",
        ingredients =
        {
            PM.ingredient("pm-neodymium-147", 4)
        },
        results =
        {
            PM.product("pm-promethium-147", 2),
            PM.product("pm-neodymium-147", 2)
        }
    },

    {
        type = "recipe",
        name = "pm-pennyjim-neodymium-146-enrichment-process",
        enabled = false,
        energy_required = 30,
        category = "centrifuging",
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
            PM.catalyst("pm-neodymium-146", 24, 20),
            PM.catalyst("pm-trace-astatine-211", 1, 1)
        }
    },
    {
        type = "recipe",
        name = "pm-akip-neodymium-147-enrichment-process",
        enabled = false,
        energy_required = 30,
        category = "centrifuging",
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
            PM.catalyst("pm-neodymium-147", 24, 20),
            PM.catalyst("pm-neodymium-146", 1),
            PM.catalyst("pm-trace-astatine-211", 1, 1)
        }
    },
})
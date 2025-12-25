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
       order = "a",
       stack_size = 200
    },
    {
        type = "recipe",
        name = "pm-neodymium-146",
        enabled = false,
        energy_required = 6,
        category = "centrifuging",
        allow_productivity = true,
        main_product = "pm-neodymium-146",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 14),
            PM.ingredient("pm-ion-exchange-beads", 4)
        },
        results =
        {
            PM.product_range("pm-roasted-bastnasite", 8, 12),
            PM.catalyst("pm-ion-exchange-beads", 3, 3),
            PM.catalyst_chance("pm-mixed-praseodymium-deposit", 2, 0.25, 1),
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
        category = "centrifuging", --should be in beta-inator
        ingredients =
        {
            PM.ingredient("pm-neodymium-147", 4)
        },
        results =
        {
            PM.product("pm-promethium-147", 2),
        }
    }
})
data:extend({

    {
        type = "recipe",
        name = "pm-mixed-samarium-deposit",
        enabled = false,
        energy_required = 10,
        category = "pm-leaching",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 8),
            PM.ingredient("pm-acidic-water", 10, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-mixed-samarium-deposit", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-samarium-deposit-seperation",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-praseodymium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-samarium-oxide",
        ingredients =
        {
            PM.ingredient("pm-mixed-samarium-deposit", 6)
        },
        results =
        {
            PM.product("pm-lightly-seperated-samarium-deposit", 3),
            PM.product("pm-medium-seperated-samarium-deposit", 2),
            PM.product("pm-highly-seperated-samarium-deposit", 1),
            PM.product_chance("pm-samarium-oxide", 1, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-medium-seperated-samarium-deposit",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-lightly-seperated-samarium-deposit", 4),
            PM.ingredient("pm-sodium-hydroxide", 30, "fluid"),
        },
        results = 
        {
            PM.product("pm-medium-seperated-samarium-deposit", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-high-seperated-samarium-deposit",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-medium-seperated-samarium-deposit", 4),
            PM.ingredient("pm-chromic-acid", 40, "fluid"),
        },
        results =
        {
            PM.product("pm-high-seperated-samarium-deposit", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-samarium-oxide",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-high-seperated-samarium-deposit", 4),
            PM.ingredient("pm-hydroflouric-acid", 50, "fluid"),
        },
        results =
        {
            PM.product("pm-samarium-oxide", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-samarium",
        enabled = false,
        energy_required = 16,
        category = "pm-moltening", --shoudl be in cool furnace
        allow_productivity = true,
        main_product = "pm-samarium",
        ingredients =
        {
            PM.ingredient("pm-samarium-oxide", 6),
            PM.ingredient("pm-barium-ore", 3),
        },
        results =
        {
            PM.product("pm-samarium", 4),
            PM.product("pm-oxygen-gas", 36, "fluid")
        }
    },
})
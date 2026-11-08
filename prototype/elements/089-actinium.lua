data:extend({

    {
        type = "item",
        name = "pm-unsorted-actinium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ac-ac",
        order = "b",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-light-actinium-deposit",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ac-ac",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-fissile-actinium-deposit",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ac-ac",
        order = "d",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-heavy-actinium-deposit",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ac-ac",
        order = "e",
        stack_size = 250
    },

    {
        type = "recipe",
        name = "pm-unsorted-actinium",
        enabled = false,
        energy_required = 10,
        categories = {"centrifuging"},
        allow_productivity = true,
        main_product = "pm-unsorted-actinium",
        ingredients =
        {
            PM.ingredient("pm-actinium-ore", 24),
            PM.ingredient("pm-trace-thorium", 3),
            PM.ingredient("pm-pure-monazite", 6),
            PM.ingredient("pm-neodymium-magnet", 3)
        },
        results =
        {
            PM.product("pm-unsorted-actinium"):amount(8, 15):done(),
            PM.product("pm-neodymium-magnet"):amount(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-light-actinium-deposit",
        enabled = false,
        energy_required = 8,
        categories = {"pm-acids"},
        main_product = "pm-light-actinium-deposit",
        ingredients =
        {
            PM.ingredient("pm-unsorted-actinium", 5),
            PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
            PM.ingredient("pm-nitric-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-light-actinium-deposit"):amount(3):done(),
            PM.product("pm-polonium-210"):amount(1):chance(0.12):done()
        }
    },
    {
        type = "recipe",
        name = "pm-fissile-actinium-deposit",
        enabled = false,
        energy_required = 8,
        categories = {"pm-acids"},
        main_product = "pm-fissile-actinium-deposit",
        ingredients =
        {
            PM.ingredient("pm-unsorted-actinium", 5),
            PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
            PM.ingredient("sulfuric-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-fissile-actinium-deposit"):amount(3):done(),
            PM.product("pm-thorium-233"):amount(1):chance(0.1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-heavy-actinium-deposit",
        enabled = false,
        energy_required = 8,
        categories = {"pm-acids"},
        main_product = "pm-heavy-actinium-deposit",
        ingredients =
        {
            PM.ingredient("pm-unsorted-actinium", 5),
            PM.ingredient("pm-pheonlic-resin", 50, "fluid"),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-heavy-actinium-deposit"):amount(3):done(),
            --PM.product("pm-strontium-"):amount(1):chance(0.12):done()
        }
    },
})
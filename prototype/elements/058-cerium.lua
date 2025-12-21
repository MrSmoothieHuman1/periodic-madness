data:extend({

    {
        type = "recipe",
        name = "pm-pure-bastnasite",
        energy_required = 6,
        category = "pm-acids",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-lanthanum-ore", 16),
            PM.ingredient("pm-chromic-acid", 50, "fluid")
        },
        results =
        {
            PM.product("pm-pure-bastnasite", 8)
        }
    },
    {
        type = "recipe",
        name = "pm-leached-bastnasite",
        energy_required = 12,
        category = "pm-mixing",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-bastnasite", 6),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid"),
            PM.ingredient("water", 30, "fluid"),
            PM.ingredient("sulfuric-acid", 12.5, "fluid")
        },
        results =
        {
            PM.product("pm-leached-bastnasite", 4),
            PM.product_range("pm-calcium-chloride", 1, 5),
        }
    },
    {
        type = "recipe",
        name = "pm-roasted-bastnasite",
        energy_required = 16,
        category = "smelting", --should be in one the new furnaces
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-leached-bastnasite", 4)
        },
        results = 
        {
            PM.product("pm-roasted-bastnasite", 3),
            PM.product_chance("pm-patina", 2, 4)
        }
    },
    {
        type = "recipe",
        name = "pm-cerium",
        energy_required = 12,
        category = "pm-mixing",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 6),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-cerium", 2),
            PM.product_chance("pm-samarium", 1, 0.2)
        }
    },
})
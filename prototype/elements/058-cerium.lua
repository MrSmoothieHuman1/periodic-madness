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
            PM.ingredient("")
        }
    }
})
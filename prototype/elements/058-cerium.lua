data:extend({
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
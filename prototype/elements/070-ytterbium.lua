data:extend({

    {
        type = "recipe",
        name = "pm-ytterbium-solution",
        enabled = false,
        energy_required = 4,
        category = "pm-washing",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ion-exchange-beads", 8),
            PM.ingredient("sulfuric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-ytterbium-solution", 25, "fluid"),
            PM.catalyst("pm-ion-exchange-beads", 8, 8),
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-solution-seperation",
        enabled = false,
    }
})
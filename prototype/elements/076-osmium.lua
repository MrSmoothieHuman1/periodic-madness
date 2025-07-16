data:extend({

    {
        type = "item",
        name = "pm-anode-mud",
        subgroup = "pm-osmium-tm",
        order = "a",
        stack_size = 600
    },

    {
        type = "recipe",
        name = "pm-anode-mud",
        enabled = false,
        energy_required = 5,
        category = "pm-electrolysis",
        subgroup = "pm-osmium-tm",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-patina", 8),
            PM.ingredient("pm-lead-froth", 5, "fluid"),
            PM.ingredient("sulfur", 6)
        },
        results = 
        {
            PM.product("pm-anode-mud", 6),
            PM.product("pm-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-anode-sludge-seperation",
        enabled = false,
        energy_required = 7.5,
        category = "pm-mixing",
        subgroup = "pm-osmium-tm",
        order = "b",
        ingredients = 
        {
            PM.ingredient("pm-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-sodium-sulfite", 4),
            PM.ingredient("water", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-anode-mud", 4),
            PM.product_range("pm-acidic-water", 5, 14, "fluid")
        }
    }
})
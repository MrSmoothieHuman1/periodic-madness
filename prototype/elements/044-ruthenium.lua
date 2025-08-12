data:extend({

    {
        type = "item",
        name = "pm-ammonium-ruthenium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ruthenium-tm",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-ruthenium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-ruthenium-tm",
        order = "c",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-ruthenium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-osmium-tm",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },

    {
        type = "recipe",
        name = "pm-ruthenium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-ruthenium-tm",
        order = "a",
        ingredients =
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-palladium-ore", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results = 
        {
            PM.product("pm-ruthenium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-ruthenium-chloride",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-ruthenium-tm",
        order = "b",
        ingredients =
        {
            PM.ingredient("pm-ruthenium-filtered-anode-sludge", 6, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 3),
            PM.ingredient("pm-acetone", 5, "fluid")
        },
        results =
        {
            PM.product("pm-ammonium-ruthenium-chloride", 4),
        }
    },
    {
        type = "recipe",
        name = "pm-ruthenium-ore",
        enabled = false,
        energy_required = 7.5,
        category = "chemistry",
        subgroup = "pm-ruthenium-tm",
        order = "c",
        main_product = "pm-ruthenium-ore",
        ingredients =
        {
            PM.ingredient("pm-ammonium-ruthenium-chloride", 4),
            PM.ingredient("pm-hydrogen-gas", 20, "fluid"),
            PM.ingredient("pm-cobalt-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-ruthenium-ore", 3),
            PM.product_range("pm-ammonia-gas", 1.5, 2, "fluid"),
            PM.product_chance("pm-cobalt-catalyst", 2, 0.85),
            PM.product_chance("pm-catalyst-container", 2, 0.15)
        }
    }
})
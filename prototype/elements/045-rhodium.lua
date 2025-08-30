data:extend({

    {
        type = "item",
        name = "pm-rhodium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhodium-tm",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-rhodium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhodium-tm",
        order = "c",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-rhodium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-rhodium-tm",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },

    {
        type = "recipe",
        name = "pm-rhodium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-rhodium-tm",
        order = "a",
        ingredients =
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-nickel-ore", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results =
        {
            PM.product("pm-rhodium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-chunks",
        enabled = false,
        energy_required = 7.5,
        category = "chemistry",
        subgroup = "pm-rhodium-tm",
        order = "b",
        allow_productivity = true,
        main_product = "pm-rhodium-chunks",
        ingredients =
        {
            PM.ingredient("pm-rhodium-filtered-anode-sludge", 6, "fluid"),
            PM.ingredient("pm-borax", 3),
            PM.ingredient("pm-platinum-plate", 2)
        },
        results = 
        {
            PM.product("pm-rhodium-chunks", 4),
            PM.product_range_chance("pm-platinum-plate", 1, 2, 0.45)
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-ore",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-rhodium-tm",
        order = "c",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-rhenium-chunks", 4),
        },
        results = 
        {
            PM.product("pm-rhodium-ore", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-rhodium-tm",
        order = "d",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-rhenium-ore", 1)
        },
        results = 
        {
            PM.product("pm-rhenium-plate", 1)
        }
    },
})
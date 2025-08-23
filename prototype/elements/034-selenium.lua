data:extend({

    {
        type = "item",
        name = "pm-selenium-dioxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-selenium-rnm",
        order = "b",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-selenium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-selenium-rnm",
        order = "d",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-selenium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-selenium-rnm",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },
    {
        type = "fluid",
        name = "pm-selenous-acid",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/selenous-acid.png",
        subgroup = "pm-selenium-rnm",
        order = "c",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },

    {
        type = "recipe",
        name = "pm-selenium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-selenium-rnm",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("copper-ore", 6),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results = 
        {
            PM.product("pm-selenium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-selenium-dioxide",
        enabled = false,
        energy_required = 15,
        category = "chemistry",
        subgroup = "pm-selenium-rnm",
        order = "b",
        main_product = "pm-selenium-dioxide",
        ingredients =
        {
            PM.ingredient("pm-selenium-filtered-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-sodium-carbonate", 5),
            PM.ingredient("pm-yttrium-catalyst", 1)
        },
        results =
        {
            PM.product_chance("pm-yttrium-catalyst", 1, 0.9),
            PM.product_chance("pm-catalyst-container", 1, 0.1),
            PM.product("pm-selenium-dioxide", 8)
        }
    },
    {
        type = "recipe",
        name = "pm-selenous-acid",
        enabled = false,
        energy_required = 12.5,
        category = "pm-mixing",
        subgroup = "pm-selenium-rnm",
        order = "c",
        main_product = "pm-selenous-acid",
        ingredients =
        {
            PM.ingredient("pm-selenium-dioxide", 4),
            PM.ingredient("water", 25, "fluid"),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-selenous-acid", 25, "fluid"),
            PM.product("pm-acidic-water", 12.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-selenium-ore",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-selenium-rnm",
        order = "d",
        main_product = "pm-selenium-ore",
        ingredients =
        {
            PM.ingredient("pm-selenous-acid", 12.5, "fluid"),
            PM.ingredient("pm-sulfur-dioxide", 20, "fluid")
        },
        results =
        {
            PM.product("pm-selenium-ore", 6),
            PM.product("pm-oxygen-gas", 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-selenium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-selenium-rnm",
        order = "e",
        ingredients = 
        {
            PM.ingredient("pm-selenium-ore", 1)
        },
        results = 
        {
            PM.product("pm-selenium-plate", 1)
        }
    }
})
local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-baryte-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/baryte-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/baryte-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/baryte-ore-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-barium-aem",
        order = "a",
        stack_size = 400,
    },
    {
        type = "item",
        name = "pm-mixed-baryte",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/mixed-baryte.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/mixed-baryte.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/mixed-baryte-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/mixed-baryte-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-barium-aem",
        order = "b",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-pure-baryte",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/pure-baryte.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/pure-baryte.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/pure-baryte-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/pure-baryte-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-barium-aem",
        order = "c",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-barium-nitrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/barium-nitrate.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/barium-nitrate.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/barium-nitrate-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-barium-aem",
        order = "f",
        stack_size = 150
    },

    {
        type = "fluid",
        name = "pm-barium-froth",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-barium-aem",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-barium-tailings",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-tailings.png",
        subgroup = "pm-barium-aem",
        order = "e",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-barium-vapour",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-barium-aem",
        order = "g",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-baryte-ore",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-barium-aem",
        order = "a",
        allow_productivity = true,
        main_product = "pm-baryte-ore",
        ingredients = 
        {
            PM.ingredient("pm-seawater", 75, "fluid"),
            PM.ingredient("pm-alkaline-earth-metals-ore", 20),
            PM.ingredient("pm-calcite", 8)
        },
        results = 
        {
            PM.product_range_chance("pm-baryte-ore", 3, 6, 0.75),
            PM.product_range_chance("pm-anhydrite", 1, 4, 0.66),
            PM.product_range_chance("pm-sodium", 0, 3, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-baryte-ore-crushing",
        enabled = false,
        energy_required = 4,
        category = "pm-crushing",
        subgroup = "pm-barium-aem",
        order = "b",
        allow_productivity = true,
        main_product = "pm-pure-baryte",
        ingredients =
        {
            PM.ingredient("pm-baryte-ore", 5)
        },
        results = 
        {
            PM.product_range_chance("pm-mixed-baryte", 2, 5, 0.75),
            PM.product_range_chance("pm-pure-baryte", 1, 4, 0.25)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-baryte-ore-frothing",
        enabled = false,
        energy_required = 4,
        category = "pm-washing",
        subgroup = "pm-barium-aem",
        order = "c",
        main_product = "pm-barium-froth",
        ingredients =
        {
            PM.ingredient("pm-mixed-baryte", 6),
            PM.ingredient("pm-hydrochloric-acid", 40, "fluid")
        },
        results = 
        {
            PM.product("pm-barium-froth", 5, "fluid"),
            PM.product("pm-barium-tailings", 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-barium-tailings-looping",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/nickel-tailings-looping.png",
        category = "pm-mixing",
        subgroup = "pm-barium-aem",
        order = "d",
        enabled = false,
        energy_required = 2,
        main_product = "pm-barium-froth",
        ingredients =
        {
            PM.ingredient("pm-barium-tailings", 10, "fluid"),
            PM.ingredient("sulfuric-acid", 4, "fluid")
        },
        results =
        {
            PM.product_range("pm-barium-tailings", 1, 8, "fluid"),
            PM.product_chance("pm-barium-froth", 5, 0.94, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-pure-baryte",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-barium-aem",
        order = "e",
        main_product = "pm-pure-baryte",
        ingredients = 
        {
            PM.ingredient("pm-barium-froth", 10, "fluid"),
            PM.ingredient("pm-filled-flux-container", 2)
        },
        results = 
        {
            PM.product_range("pm-pure-baryte", 3, 7),
            PM.product_range_chance("pm-iron-chunk", 0, 4, 0.33),
            PM.product_range_chance("pm-zinc-chunk", 0, 4, 0.33),
            PM.product_range_chance("pm-lead-chunks", 0, 4, 0.33),
            PM.product_range("pm-flux-container", 1, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-nitrate",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-barium-aem",
        order = "f",
        allow_productivity = true,
        main_product = "pm-barium-nitrate",
        ingredients = 
        {
            PM.ingredient("pm-pure-baryte", 6),
            PM.ingredient("pm-nitrogen-gas", 20, "fluid"), --if add nitric acid, this should be that
            PM.ingredient("pm-palladium-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-barium-nitrate", 5),
            PM.product_range_chance("pm-palladium-catalyst", 1, 2, 0.9),
            PM.product_range_chance("pm-catalyst-container", 0, 1, 0.1)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-vapour",
        enabled = false,
        energy_required = 2,
        category = "chemistry",
        subgroup = "pm-barium-aem",
        order = "g",
        allow_productivity = true,
        main_product = "pm-barium-vapour",
        ingredients = 
        {
            PM.ingredient("pm-barium-nitrate", 5),
            PM.ingredient("pm-molten-aluminium", 2.5, "fluid")
        },
        results = 
        {
            PM.product_range("pm-aluminium-plate", 1, 5),
            PM.product_range("pm-barium-vapour", 2.5, 7.5, "fluid"),
            PM.product_range_chance("pm-barium-nitrate", 0, 3, 0.4)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-ore",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-barium-aem",
        order = "h",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-barium-vapour", 5, "fluid"),
            PM.ingredient("pm-argon-gas", 10, "fluid")
        },
        results =
        {
            PM.product("pm-barium-ore", 4)
        }
    }

})
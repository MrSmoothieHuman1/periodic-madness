
data:extend({

    {
        type = "recipe",
        name = "pm-water-electroylsis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/water-electroylsis.png",
        subgroup = "pm-hydrogen-rnm",
        order = "a",
        category = "pm-electrolysis",
        energy_required = 0.5,
        crafting_machine_tint = 
        {{
            type = "recipe",
            name = "pm-cinnabar-processing",
            icon_size = 64,
            icon = "__periodic-madness__/graphics/icons/recipes/cinnabar-processing.png",
            subgroup = "pm-mercury-processing",
            category = "pm-acids",
            order = "a",
            energy_required = 4,
            ingredients =
            {
                {type = "item", name = "pm-transition-metals-ore", amount = 5},
                {type = "fluid", name = "pm-hydrochloric-acid", amount = 50}
            },
            enabled = false,
            results = 
            {
                {"pm-mercury-ore", 4}
            }
        },
        {
            type = "recipe",
            name = "pm-mercury-powdering",
            energy_required = 3,
            ingredients = {{"pm-mercury-ore", 2}},
            icon_size = 64,
            category = "pm-crushing",
            subgroup = "pm-mercury-processing",
            order = "c",
            enabled = false,
            icon = "__periodic-madness__/graphics/icons/ores/mercury-ore-icon.png",
            results =
            {
                {"pm-mercury-powder", 4},
                {"pm-red-mercury", 4},
                
            }
        },
        {
            type = "recipe",
            name = "pm-mercury-liquifying",
            icon_size = 64,
            icon = "__periodic-madness__/graphics/icons/recipes/mercury-liquifying.png",
            energy_required = 2,
            subgroup = "pm-mercury-processing",
            category = "crafting-with-fluid",
            order = "d",
            enabled = false,
            ingredients = 
            {
                {type = "item", name = "pm-mercury-powder", amount = 4},
                {type = "item", name = "pm-red-mercury", amount = 4},
                {type = "fluid", name = "water", amount = 100}
            },
            results =
            {
                {type = "fluid", name = "pm-liquid-mercury", amount = 50},
            }
        },
        {
            type = "recipe",
            name = "pm-mercury-powder-to-red-mercury",
            icon_size = 64,
            icon = "__periodic-madness__/graphics/icons/recipes/mercury-powder-to-red-mercury.png",
            energy_required = 4,
            subgroup = "pm-mercury-processing",
            order = "e",
            enabled = false,
            ingredients = 
            {
                {"pm-mercury-powder", 8},
            },
            result = "pm-red-mercury",
            result_count = 2,
        },
             primary = {r=0,g=0.2,b=0.6,a=1}, --main visible colour
             secondary = {r=1,g=0,b=0,a=1},--background visible colour
             tertiary = {r=0.4,g=0.4,b=0.4,a=0.5}, -- smoke afteraffects
             quaternary = {r=0.5,g=0.5,b=0.5,a=1} --smoke 
        },
        ingredients =
        {
            {type = "fluid", name = "pm-seawater", amount = 50},
        },
        results =
        {
            {type = "fluid", name = "pm-oxygen-gas", amount = 10},
            {type = "fluid", name = "pm-hydrogen-gas", amount = 20},
        }
    },
    -- a relic, from a kinder past

    {
        type = "recipe",
        name = "pm-salt-electroylsis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/salt-electroylsis.png",
        subgroup = "pm-chlorine-rnm",
        order = "b",
        category = "pm-electrolysis",
        energy_required = 1,
        enabled = false,
        ingredients = 
        {
            {"pm-sea-salt", 3} --when the fuck did you guys get here
        },
        results = 
        {
            {name = "pm-sodium", amount_min = 2, amount_max = 4},
            {type = "fluid", name = "pm-chlorine", amount = 10}
        }
    },
    {
        type = "recipe",
        name = "pm-gas-water-electroylsis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/gas-water-electroylsis.png",
        energy_required = 1,
        enabled = false,
        category = "pm-electrolysis",
        subgroup = "pm-hydrogen-rnm",
        order = "b",
        ingredients = 
        {
            {type = "fluid", name = "water", amount = 50}
        },
        results = 
        {
            {type = "fluid", name = "pm-oxygen-gas", amount = 20},
            {type = "fluid", name = "pm-hydrogen-gas", amount = 40},
        },
    },
    {
        type = "recipe",
        name = "pm-nimop-gas-water-electroylsis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/gas-water-electroylsis.png",
        energy_required = 0.5,
        enabled = false,
        category = "pm-electrolysis",
        subgroup = "pm-hydrogen-rnm",
        order = "ba",
        ingredients = 
        {
            {type = "fluid", name = "water", amount = 150},
            {"pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst", 1}
        },
        results = 
        {
            {type = "fluid", name = "pm-oxygen-gas", amount = 50},
            {type = "fluid", name = "pm-hydrogen-gas", amount = 100},
            {
                name = "pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst",
                amount = 1,
                probability = 0.999
            }
        },
    },
    {
        type = "recipe",
        name = "pm-zirconia-carbon-dioxide-electrolysis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/zirconia-CO2-electroylsis.png",
        energy_required = 4,
        enabled = false,
        category = "pm-electrolysis",
        main_product = "pm-carbon-monoxide",
        ingredients = 
        {
            {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 20},
            {"pm-zirconia", 12}
        },
        results = 
        {
            {type = "fluid", name = "pm-carbon-monoxide", amount = 20},
            {type = "fluid", name = "pm-oxygen-gas", amount = 10}
        }
    },
}--[[@as data.RecipePrototype[] ]])
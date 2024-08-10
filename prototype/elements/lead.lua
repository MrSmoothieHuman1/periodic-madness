
data:extend({

    {
        type = "item",
        name = "pm-lead-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/lead-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/lead-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/lead-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-lead-ptm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-lead-powder",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/lead-powder.png",
        subgroup = "pm-lead-ptm",
        order = "b",
        stack_size = 120
    },
    {
        type = "item",
        name = "pm-impure-lead",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-lead-ptm",
        order = "c",
        stack_size = 80
    },
    
    {
        type = "recipe",
        name = "pm-lead-leeching",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/lead-ore-icon.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
                icon_size = 64,
            }
        },
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-lead-ptm",
        order = "a",
        ingredients =
        {
            {"pm-post-transition-metals-ore", 12},
            {type = "fluid", name = "pm-chromic-acid", amount = 10}
        },
        results = 
        {
            {"pm-lead-chunks", 4}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lead-crushing",
        enabled = false,
        energy_required = 3,
        category = "pm-crushing",
        subgroup = "pm-lead-ptm",
        order = "b",
        main_product = "pm-lead-powder",
        ingredients = 
        {
            {"pm-lead-chunks", 4}
        },
        results = 
        {
            {name = "pm-lead-powder", amount_min = 6, amount_max = 8},
            {
                name = "pm-mixed-ore-slag",
                amount = 2,
                probability = 0.4 + 0.1
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lead-frothing",
        enabled = false,
        energy_required = 16,
        category = "pm-washing",
        subgroup = "pm-lead-ptm",
        order = "c",
        main_product = "pm-lead-froth",
        ingredients =
        {
            {"pm-lead-powder", 4},
            {type = "fluid", name = "water", amount = 100},
        },
        results =
        {
            {type = "fluid", name = "pm-lead-froth", amount = 20},
            {type = "fluid", name = "pm-acidic-water", amount_min = 10, amount_max = 20},
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lead-froth-skimming",
        enabled = false,
        energy_required = 8,
        category = "pm-washing",
        subgroup = "pm-lead-ptm",
        order = "d",
        main_product = "pm-impure-lead",
        ingredients =
        {
            {type = "fluid", name = "pm-lead-froth", amount = 10},
            {"pm-filled-flux-container", 2}
        },
        results = 
        {
            {
                name = "pm-thallium-ore",
                amount = 2,
                probability = 0.2
            },
            {name = "pm-flux-container", amount_min = 1, amount_max = 2},
            {"pm-impure-lead", 2}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lead-purifying",
        enabled = false,
        energy_required = 3,
        category = "pm-moltening",
        subgroup = "pm-lead-ptm",
        order = "e",
        main_product = "pm-lead-ore",
        ingredients =
        {
            {"pm-impure-lead", 2},
            {"pm-carbon", 4},
            {type = "fluid", name = "steam", amount = 10}
        },
        results = 
        {
            {"pm-lead-ore", 4}
        }
    }--[[@as data.RecipePrototype]]
})
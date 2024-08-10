
data:extend({

    {
        type = "item",
        name = "pm-bismuth-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/bismuth-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-bismuth-ptm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-bismite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 128, scale = 0.125},
        },
        subgroup = "pm-bismuth-ptm",
        order = "b",
        stack_size = 400
    },

    {
        type = "recipe",
        name = "pm-bismuth-leeching",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/bismuth-leeching.png",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-bismuth-ptm",
        order = "a",
        ingredients = 
        {
            {"pm-post-transition-metals-ore", 12},
            {type = "fluid", name = "pm-chromic-acid", amount = 10}
        },
        results =
        {
            {"pm-bismuth-chunks", 4}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-bismuth-mixing",
        enabled = false,
        energy_required = 16,
        category = "pm-acids",
        subgroup = "pm-bismuth-ptm",
        order = "b",
        main_product = "pm-bismite",
        ingredients = 
        {
            {"pm-molybdenum-ore", 4},
            {"pm-tin-ore", 4},
            {"pm-filled-flux-container", 1},
            {"pm-bismuth-chunks", 6},
            {type = "fluid", name = "pm-chlorine", amount = 12}
        },
        results = 
        {
            {"pm-bismite", 4},
            {"pm-flux-container", 1},
            {
                name = "pm-tin-ore",
                amount_min = 1,
                amount_max = 3
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-bismuth-crystallisation",
        enabled = false,
        energy_required = 16,
        category = "pm-crystallisation",
        subgroup = "pm-bismuth-ptm",
        order = "c",
        main_product = "pm-bismuth-ore",
        ingredients = 
        {
            {type = "fluid", name = "pm-liquid-mercury", amount = 40 + 10},
            {"pm-bismite", 4}
        },
        results = 
        {
            {"pm-bismuth-ore", 8},
            {
                name = "pm-mixed-ore-slag",
                amount_min = 2,
                amount_max = 4 + 1
            }
        }
    }--[[@as data.RecipePrototype]]
})
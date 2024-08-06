
data:extend({

    {
        type = "item",
        name = "pm-indium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/indium-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/indium-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/indium-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-indium-ptm",
        order = "a",
        stack_size = 100
    },
    {
        type = "recipe",
        name = "pm-indium-filtering",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/indium-filtering.png",
        category = "pm-washing",
        subgroup = "pm-indium-ptm",
        order = "a",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "pm-zinc-tailings", amount = 10},
            {type = "fluid", name = "pm-lead-froth", amount = 10}
        },
        results = 
        {
            {"pm-indium-chunks", 4},
            {
                name = "pm-zinc-tailings",
                type = "fluid",
                probability = 0.4 + 0.1,
                amount = 4 + 1
            },
            {
                name = "pm-lead-froth",
                type = "fluid",
                probability = 0.4 + 0.1,
                amount = 4 + 1
            },
        }
    },
    {
        type = "recipe",
        name = "pm-indium-electrolysis",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/indium-electrolysis.png",
        category = "pm-electrolysis",
        subgroup = "pm-indium-ptm",
        order = "b",
        energy_required = 20,
        enabled = false,
        ingredients =
        {
            {"pm-indium-chunks", 12},
            {"pm-stainless-steel-alloy", 4}
        },
        results = 
        {
            {"pm-indium-ore", 6},
            {
                name = "pm-lead-powder",
                probability = 0.4 + 0.1,
                amount = 2
            },
            {
                name = "pm-zinc-chunk",
                probability = 0.4 + 0.1,
                amount = 2
            },
        }
    }

})
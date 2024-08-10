
data:extend({

    {
        type = "item",
        name = "pm-calcite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/calcite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/calcite.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/calcite-1.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/calcite-2.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/calcite-3.png", size = 128, scale = 0.125}
        },
        subgroup = "pm-calcium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-calcium-dust",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/calcium-dust.png",
        subgroup = "pm-calcium-aem",
        order = "b",
        stack_size = 150
    },
    {
        type = "item",
        name = "pm-chalk",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/chalk.png",
        subgroup = "pm-calcium-aem",
        order = "c",
        stack_size = 500
    },

    {
        type = "recipe",
        name = "pm-calcite-filtering",
        subgroup = "pm-calcium-aem",
        order = "A",
        category = "pm-evaporation",
        enabled = true,
        energy_required = 1.3,
        main_product = "pm-calcite",
        ingredients = 
        {
            {type = "fluid", name = "pm-seawater", amount = 20},
        },
        results = 
        {
            {"pm-calcite", 4},
            {type = "fluid", name = "water", amount = 10}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-calcite-crushing",
        subgroup = "pm-calcium-aem",
        order = "a",
        category = "pm-crushing",
        enabled = true,
        energy_required = 2,
        ingredients = 
        {
            {"pm-calcite", 4}
        },
        results = 
        {
            {"pm-calcium-dust", 8}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-calcium-dust-washing",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/calcium-dust-washing.png",
        subgroup = "pm-calcium-aem",
        category =  "pm-washing",
        order = "b",
        energy_required = 2,
        ingredients = 
        {
            {"pm-calcium-dust", 4},
            {type = "fluid", name = "water", amount = 20}
        },
        results = 
        {
            {"pm-calcium-ore", 2},
            {
                name = "pm-carbon",
                amount = 1,
                probability = "0.5"
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-chalk-forming",
        subgroup = "pm-calcium-aem",
        category = "crafting",
        order = "c",
        energy_required = 2,
        enabled = true,
        ingredients = 
        {
            {"pm-calcium-dust", 4}
        },
        results = 
        {
            {"pm-chalk", 1}
        }
    }--[[@as data.RecipePrototype]],
})
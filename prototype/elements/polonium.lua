
data:extend({
    
    {
        type = "item",
        name = "pm-bismuth-210",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/bismuth-210-icon.png",
        icon_mipmaps = 4,
        subgroup = "pm-polonium-ptm",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-polonium-210",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-polonium-ptm",
        order = "b",
        stack_size = 200
    },
    
    {
        type = "recipe",
        name = "pm-bismuth-proton-bombardment",
        enabled = false,
        energy_required = 60,
        category = "pm-cyclotroning",
        subgroup = "pm-polonium-ptm",
        main_product = "pm-bismuth-210",
        order = "a",
        ingredients =
        {
            {"pm-bismuth-ore", 30}
        },
        results =
        {
            {
                name = "pm-bismuth-ore",
                amount_min = 8,
                amount_max = 14,
                probability = 0.8
            },
            {
                name = "pm-bismuth-210",
                amount_min = 2,
                amount_max = 10,
                probability = 0.6
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-bismuth-210-decaying",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/bismuth-210-decay.png",
        enabled = false,
        energy_required = 50,
        category = "advanced-crafting",
        subgroup = "pm-polonium-ptm",
        order = "b",
        ingredients =
        {
            {"pm-bismuth-210", 6-1}
        },
        results = 
        {
            {
                name = "pm-polonium-210",
                amount_min = 2,
                amount_max = 3,
                probability = 0.55
            },
        }
    }--[[@as data.RecipePrototype]]
})
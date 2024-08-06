
data:extend({

    {
        type = "item",
        name = "pm-flourite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/flourite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/flourite.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/flourite-2.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/flourite-3.png", size = 128, scale = 0.125},
        },
        subgroup = "pm-flourine-rnm",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-flourine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/flourine.png",
        subgroup = "pm-flourine-rnm",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-calcium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/calcium-sulfate.png",
        subgroup = "pm-flourine-rnm",
        order = "c",
        stack_size = 300
    },

    {
        type = "recipe",
        name = "pm-flourite-crystallisation",
        enabled = false,
        energy_required = 24,
        category = "pm-washing",
        subgroup = "pm-flourine-rnm",
        order = "a",
        main_product = "pm-flourite",
        ingredients =
        {
            {"stone", 20},
            {"pm-calcium-ore", 10},
            {type = "fluid", name = "water", amount = 60},
            {"pm-post-transition-metals-ore", 5}
        },
        results = 
        {
            {"pm-flourite", 8},
            {
                name = "stone",
                probability = 0.8,
                amount_min = 10,
                amount_max = 14 + 1,
            }
        }
    },
    {
        type = "recipe",
        name = "pm-hydrogen-flouride",
        enabled = false,
        energy_required = 3,
        category = "pm-acids", "crafting-with-fluid",
        subgroup = "pm-flourine-rnm",
        order = "c",
        main_product = "pm-hydrogen-flouride",
        ingredients = 
        {
            {"pm-flourite", 2},
            {type = "fluid", name = "sulfuric-acid", amount = 4 + 1}
        },
        results = 
        {
            {name = "pm-calcium-sulfate", amount_min = 4, amount_max = 8},
            {type = "fluid", name = "pm-hydrogen-flouride", amount = 8}
        }
    },
    {
        type = "recipe",
        name = "pm-hydroflouric-acid",
        enabled = false,
        energy_required = 3,
        category = "chemistry",
        subgroup = "pm-flourine-rnm",
        order = "d",
        main_product = "pm-hydroflouric-acid",
        ingredients = 
        {
            {type = "fluid", name = "pm-hydrogen-flouride", amount = 8},
            {"pm-palladium-catalyst", 2},
            {type = "fluid", name = "pm-acidic-water", amount = 10}
        },
        results = 
        {
            {type = "fluid", name = "pm-hydroflouric-acid", amount = 20},
            {name = "pm-catalyst-container", amount_min = 1, amount_max = 2}
        }
    },
    {
        type = "recipe",
        name = "pm-hydroflouric-acid-filtering",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-flourine-rnm",
        order = "e",
        main_product = "pm-flourine",
        ingredients = 
        {
            {type = "fluid", name = "pm-hydroflouric-acid", amount = 10},
        },
        results = 
        {
            {"pm-flourine", 3},
            {type = "fluid", name = "pm-sulfur-dioxide", amount_min = 2, amount_max = 4 + 1}
        },
    },

    {
        type = "recipe",
        name = "pm-better-flourite-crystallisation",
        enabled = false,
        energy_required = 12,
        category = "pm-crystallisation",
        subgroup = "pm-flourine-rnm",
        order = "b",
        main_product = "pm-flourite",
        ingredients =
        {
            {"stone", 20 / 2},
            {"pm-calcium-ore", 10 / 2 },
            {"pm-post-transition-metals-ore", 5},
            {type = "fluid", name = "pm-liquid-mercury", amount = 60 / 2}
        },
        results = 
        {
            {"pm-flourite", 16},
        }
    },
})
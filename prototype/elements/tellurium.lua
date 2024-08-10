data:extend({

    {
        type = "item",
        name = "pm-sodium-tellurite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-tellurium-mt",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-tellurium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/tellurium-oxide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-tellurium-mt",
        order = "b",
        stack_size = 600
    },
    {
        type = "recipe",
        name = "pm-copper-tailings-sludging",
        enabled = false,
        energy_required = 1,
        category = "pm-washing",
        subgroup = "pm-tellurium-mt",
        order = "a",
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-tailings", amount = 5},
            {"pm-lead-powder", 5},
        },
        results = 
        {
            {type = "fluid", name = "pm-copper-sludge", amount = 8}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-sodium-tellurite",
        enabled = false,
        energy_required = 4,
        category = "pm-moltening",
        subgroup = "pm-tellurium-mt",
        order = "b",
        main_product = "pm-sodium-tellurite",
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-sludge", amount = 4},
            {"pm-sodium", 12}
        },
        results = 
        {
            {"pm-sodium-tellurite", 4},
            {
                type = "fluid",
                name = "pm-carbon-trioxide",
                amount_min = 4,
                amount_max = 8,
            },
            {
                name = "copper-ore",
                probability = 0.3,
                amount_min = 2,
                amount_max = 5
            },
            {
                name = "pm-silver-ore",
                probability = 0.6,
                amount_min = 2,
                amount_max = 5
            },
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-sodium-bicarbonate-tellurite",
        enabled = false,
        energy_required = 2,
        category = "pm-moltening",
        subgroup = "pm-tellurium-mt",
        order = "ba",
        main_product = "pm-sodium-tellurite",
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-sludge", amount = 4},
            {"pm-sodium-bicarbonate", 6}
        },
        results = 
        {
            {"pm-sodium-tellurite", 6},
            {
                type = "fluid",
                name = "pm-carbon-dioxide-gas",
                amount = 6,
            },
            {
                name = "copper-ore",
                probability = 0.7,
                amount_min = 2,
                amount_max = 5
            },
            {
                name = "pm-gold-ore",
                probability = 0.2,
                amount_min = 2,
                amount_max = 5
            },
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-hydrotellurites",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-tellurium-mt",
        order = "c",
        main_product = "pm-tellurium-oxide",
        ingredients = 
        {
            {"pm-sodium-tellurite", 3},
            {type = "fluid", name = "sulfuric-acid", amount = 15},
        },
        results = 
        {
            {"pm-tellurium-oxide", 6},
            {type = "fluid", name = "pm-sulfur-dioxide", amount = 15}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-tellurium-oxide-seperation",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        subgroup = "pm-tellurium-mt",
        order = "d",
        main_product = "pm-tellurium-ore",
        ingredients = 
        {
            {"pm-tellurium-oxide", 3},
            {type = "fluid", name = "pm-sulfur-dioxide", amount = 7.5},
            {type = "fluid", name = "water", amount = 20}
        },
        results = 
        {
            {"pm-tellurium-ore", 6},
            {type = "fluid", name = "sulfuric-acid", amount = 7.5}
        }
    }--[[@as data.RecipePrototype]]
})
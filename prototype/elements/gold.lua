--I LOVE GOLLLLLLLD

data:extend({

    {
        type = "item",
        name = "pm-gold-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/gold-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/gold-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-gold-tm",
        order = "a",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-gold-leeching",
        icon_size = 64,
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-gold-tm",
        order = "a",
        category = "pm-acids",
        crafting_machine_tint = 
        {
        primary = {r=0,g=0.6,b=0.1,a=1}, --main visible colour
        secondary = {r=0.82,g=0.82,b=0.92,a=1},--background visible colour
        tertiary = {r=0.82,g=0.82,b=0.92,a=0.5}, -- smoke afteraffects
        quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke
        },
        energy_required = 4,
        ingredients = 
        {
            {type = "item", name = "pm-transition-metals-ore", amount = 12},
            {type = "fluid", name = "pm-acidic-water",  amount = 25},
        },
        enabled = false,
        results =
        {
            {"pm-gold-chunks", 5},
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-gold-chunk-refining",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/liquid-mercury.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-gold-tm",
        order = "c",
        category = "pm-acids",
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "pm-gold-chunks", amount = 5},
            {type = "fluid", name = "pm-liquid-mercury", amount = 10},
        },
        enabled = false,
        results =
        {
            {type = "item", name = "pm-gold-ore", amount = 10},
            {type = "fluid", name = "pm-mercury-vapour", amount = 5}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-gold-plating",
        energy_required = 1,
        enabled = false,
        ingredients = {{"pm-gold-plate", 2}},
        result = "pm-gold-plating"
    },

    {
        type = "recipe",
        name = "pm-chromic-gold-leeching",
        icon_size = 64,
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-gold-tm",
        order = "b",
        category = "pm-acids",
        crafting_machine_tint = 
        {
        primary = {r=0,g=0.6,b=0.1,a=1}, --main visible colour
        secondary = {r=0.82,g=0,b=0.92,a=1},--background visible colour
        tertiary = {r=0.82,g=0,b=0.92,a=0.5}, -- smoke afteraffects
        quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke
        },
        energy_required = 2,
        ingredients = 
        {
            {type = "item", name = "pm-transition-metals-ore", amount = 12},
            {type = "fluid", name = "pm-chromic-acid",  amount = 5},
        },
        enabled = false,
        results =
        {
            {"pm-gold-chunks", 5},
        }
    }--[[@as data.RecipePrototype]],
})
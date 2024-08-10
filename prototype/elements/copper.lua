
data:extend({

    {
        type = "item",
        name = "pm-copper-chunk",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/copper-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/copper-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-copper-tm",
        order = "a",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-transition-copper-decomposition",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__base__/graphics/icons/copper-ore.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-copper-tm",
        order = "a",
        category = "pm-acids",
        crafting_machine_tint = 
        {
        primary = {r=0,g=0.6,b=0.1,a=1}, --main visible colour
        secondary = {r=0.87,g=0.47,b=0,a=1},--background visible colour
        tertiary = {r=0.87,g=0.5,b=0,a=0.5}, -- smoke afteraffects
        quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke
        },
        energy_required = 4,
        ingredients = 
        {
            {type = "item", name = "pm-transition-metals-ore", amount = 12},
            {type = "fluid", name = "pm-hydrochloric-acid",  amount = 10},
        },
        allow_decomposition = false,
        enabled = false,
        results =
        {
            {"copper-ore", 8},
            {"pm-patina", 4},
        }
    }--[[@as data.RecipePrototype]],

    {
        type = "recipe",
        name = "pm-chromic-transition-copper-decomposition",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__base__/graphics/icons/copper-ore.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-copper-tm",
        order = "b",
        category = "pm-acids",
        crafting_machine_tint = 
        {
        primary = {r=0,g=0.6,b=0.1,a=1}, --main visible colour
        secondary = {r=0.87,g=0,b=0.8,a=1},--background visible colour
        tertiary = {r=0.87,g=0,b=0.8,a=0.5}, -- smoke afteraffects
        quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke
        },
        energy_required = 2,
        ingredients = 
        {
            {type = "item", name = "pm-transition-metals-ore", amount = 12},
            {type = "fluid", name = "pm-chromic-acid",  amount = 2},
        },
        allow_decomposition = false,
        enabled = false,
        results =
        {
            {"copper-ore", 8},
            {"pm-patina", 4},
        }
    }--[[@as data.RecipePrototype]],
})
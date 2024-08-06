--all recipes related to silver

data:extend({

    {
        type = "item",
        name = "pm-silver-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/silver-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/silver-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-silver-tm",
        order = "a",
        stack_size = 200
    },
    
    {
        type = "recipe",
        name = "pm-silver-leeching",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/silver-leeching.png",
        subgroup = "pm-silver-tm",
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
            {"pm-silver-chunks", 5},
        }
    },
    {
        type = "recipe", 
        name = "pm-silver-chunk-refining",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/liquid-mercury.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-silver-tm",
        order = "c",
        category = "pm-acids",
        crafting_machine_tint = 
        {
            primary = {r=0,g=0.6,b=0.1,a=1}, --main visible colour
            secondary = {r=0.92,g=0.92,b=0.92,a=1},--background visible colour
            tertiary = {r=0.92,g=0.92,b=0.92,a=0.5}, -- smoke afteraffects
            quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke
        },
        energy_required = 2,
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "pm-silver-chunks", amount = 5},
            {type = "fluid", name = "pm-liquid-mercury", amount = 10}
        },
        results = 
        {
            {type = "item", name = "pm-silver-ore", amount = 10},
            {type = "fluid", name = "pm-mercury-vapour", amount = 5}
        }
    },

    {
        type = "recipe",
        name = "pm-silver-plating",
        energy_required = 1,
        enabled = false,
        ingredients = {{"pm-silver-plate", 2}},
        result = "pm-silver-plating"
    },
    {
        type = "recipe",
        name = "pm-chromic-silver-leeching",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-silver-tm",
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
            {type = "fluid", name = "pm-chromic-acid",  amount = 4 + 1},
        },
        enabled = false,
        results =
        {
            {"pm-silver-chunks", 5},
        }
    },
})
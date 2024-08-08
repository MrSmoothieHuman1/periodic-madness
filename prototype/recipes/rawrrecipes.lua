--for any recipes related to raw ores

data:extend({

    {
        type = "recipe",
        name = "pm-iron-chunk-plate",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__base__/graphics/icons/iron-plate.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
                icon_size = 64,
                scale = 0.38,
                shift = {0, -4}
            },
        },
        subgroup = "pm-iron-tm",
        order = "d",
        category = "smelting",
        enabled = true,
        allow_decomposition = false,
        energy_required = 3.2,
        ingredients = 
        {
            {"pm-iron-chunk", 2}
        },
        result = "iron-plate"
    },
    {
        type = "recipe",
        name = "pm-copper-chunk-plate",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__base__/graphics/icons/copper-plate.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
                icon_size = 64,
                scale = 0.38,
                shift = {0, -4}
            },
        },
        subgroup = "pm-copper-tm",
        order = "d",
        category = "smelting",
        energy_required = 3.2,
        enabled = true,
        allow_decomposition = false,
        ingredients = 
        {
            {"pm-copper-chunk", 2}
        },
        result = "copper-plate"
    },
    {
        type = "recipe",
        name = "pm-nickel-chunk-plate",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
                icon_size = 64,
                scale = 0.38,
                shift = {0, -4}
            },
        },
        subgroup = "pm-nickel-tm",
        order = "d",
        category = "smelting",
        enabled = true,
        allow_decomposition = false,
        energy_required = 3.2,
        ingredients = 
        {
            {"pm-nickel-chunk", 2}
        },
        result = "pm-nickel-plate"
    },
    {
        type = "recipe",
        name = "pm-zinc-chunk-plate",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/plates/zinc-plate.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
                icon_size = 64,
                scale = 0.38,
                shift = {0, -4}
            },
        },
        subgroup = "pm-zinc-tm",
        order = "d",
        category = "smelting",
        enabled = true,
        allow_decomposition = false,
        energy_required = 3.2,
        ingredients = 
        {
            {"pm-zinc-chunk", 2}
        },
        result = "pm-zinc-plate"
    },


    {
        type = "recipe",
        name = "pm-ezekiel-iron-purifying",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-iron-tm",
        order = "a",
        category = "pm-acids",
        enabled = false,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = 
        {
            {"pm-iron-chunk", 1},
            {type = "fluid", name = "pm-hydrochloric-acid", amount = 5}
        },
        results = 
        {
            {"iron-ore", 2},
            
            {
                name = "pm-ore-slag",
                amount = 1,
                probability = "0.5"
            }
        }
    },
    {
        type = "recipe",
        name = "pm-ezekiel-copper-purifying",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
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
        enabled = false,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = 
        {
            {"pm-copper-chunk", 1},
            {type = "fluid", name = "pm-hydrochloric-acid", amount = 5}
        },
        results = 
        {
            {"copper-ore", 2},
            
            {
                name = "pm-ore-slag",
                amount = 1,
                probability = "0.5"
            }
        }
    },
    {
        type = "recipe",
        name = "pm-ezekiel-nickel-purifying",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-nickel-tm",
        order = "a",
        category = "pm-acids",
        enabled = false,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = 
        {
            {"pm-nickel-chunk", 1},
            {type = "fluid", name = "pm-hydrochloric-acid", amount = 5}
        },
        results = 
        {
            {"pm-nickel-ore", 2},
            
            {
                name = "pm-ore-slag",
                amount = 1,
                probability = "0.5"
            }
        }
    },
    {
        type = "recipe",
        name = "pm-ezekiel-zinc-purifying",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-zinc-tm",
        order = "a",
        category = "pm-acids",
        enabled = false,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = 
        {
            {"pm-zinc-chunk", 1},
            {type = "fluid", name = "pm-hydrochloric-acid", amount = 5}
        },
        results = 
        {
            {"pm-zinc-ore", 2},
            
            {
                name = "pm-ore-slag",
                amount = 1,
                probability = "0.5"
            }
        }
    },
})




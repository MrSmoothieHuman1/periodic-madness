
data:extend({

    {
        type = "item",
        name = "pm-sodium-bicarbonate",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/sodium-bicarbonate.png",
        subgroup = "pm-sodium-am",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-sodium-carbonate",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/sodium-carbonate.png",
        subgroup = "pm-sodium-am",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-calcium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/calcium-chloride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/calcium-chloride.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/calcium-chloride-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-sodium-am",
        order = "c",
        stack_size = 100
    },

    {
        type = "recipe",
        name = "pm-sodium-bicarbonate",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/sodium-bicarbonate-mixing.png",
        enabled = false,
        category = "pm-washing",
        subgroup = "pm-sodium-am",
        order = "a",
        energy_required = 10,
        ingredients = 
        {
            {"pm-sea-salt", 10},
            {type = "fluid", name = "pm-ammonia-gas", amount = 10},
            {type = "fluid", name = "water", amount = 10}
        },
        results = 
        {
            {"pm-sodium-bicarbonate", 10},
            {"pm-ammonium-chloride", 10}
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-chloride-seperation",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/ammonium-chloride-seperation.png",
        enabled = false,
        category = "pm-acids",
        subgroup = "pm-sodium-am",
        order = "b",
        energy_required = 5,
        ingredients =
        {
            {"pm-ammonium-chloride", 10},
            {"pm-calcium-ore", 6}
        },
        results = 
        {
            {type = "fluid", name = "pm-ammonia-gas", amount = 10},
            {type = "fluid", name = "pm-chlorine", amount = 20},
            {
                name = "pm-calcium-chloride",
                amount_min = 2,
                amount_max = 5
            }
        }
    },
    {
        type = "recipe",
        name = "pm-sodium-bicarbonate-heating",
        enabled = false,
        category = "pm-moltening",
        subgroup = "pm-sodium-am",
        order = "c",
        energy_required = 6,
        main_product = "pm-sodium-carbonate",
        ingredients = 
        {
            {"pm-sodium-bicarbonate", 10},
            {type = "fluid", name = "steam", amount = 10}
        },
        results = 
        {
            {"pm-sodium-carbonate", 5},
            {
                type = "fluid",
                name = "pm-carbon-dioxide-gas",
                amount_min = 4,
                amount_max = 10
            },
        }
    },
    {
        type = "recipe",
        name = "pm-sodium-carbonate-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sodium-carbonate-seperation.png",
        enabled = false,
        category = "pm-moltening",
        subgroup = "pm-sodium-am",
        order = "d",
        energy_required = 9,
        ingredients = 
        {
            {"pm-sodium-carbonate", 15},
            {"pm-carbon", 10}
        },
        results = 
        {
            {"pm-sodium", 30},
            {type = "fluid", name = "pm-carbon-monoxide", amount = 30}
        }
    }
})
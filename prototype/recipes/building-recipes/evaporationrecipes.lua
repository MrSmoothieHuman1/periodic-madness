
data:extend({

    
    {
        type = "recipe",
        name = "pm-seawater-sulfide-evaporation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/seawater-sulfide-evaporation.png",
        subgroup = "pm-acid-crafting",
        category = "pm-evaporation",
        hide_from_player_crafting = true,
        enabled = true,
        energy_required = 2,
        ingredients = 
        {
            {type = "fluid", name = "pm-seawater", amount = 150},
        },
        results = 
        {
            {name = "sulfur", amount_min = 1, amount_max = 2},
            {type = "fluid", name = "water", amount = 24 + 1},
            {name = "pm-sea-salt", amount = 2}
        }
    },
    {
        type = "recipe",
        name = "pm-water-voiding",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/water-voiding.png",
        subgroup = "pm-acid-crafting",
        category = "pm-evaporation",
        hide_from_player_crafting = true,
        energy_required = 1,
        ingredients = 
        {
            {type = "fluid", name = "water", amount = 10}
        },
        results = {}
    },
    {
        type = "recipe",
        name = "pm-oxygen-evaporation",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/fluids/oxygen-gas.png",
                icon_size = 128,
                scale = 0.4
            },
            {
                icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
                icon_size = 64,
            },
        },
        subgroup = "pm-acid-crafting",
        category = "pm-evaporation",
        hide_from_player_crafting = true,
        energy_required = 1,
        ingredients = 
        {
            {type = "fluid", name = "pm-oxygen-gas", amount = 10},
        },
        results = {}
    },
})

data:extend({

    {
        type = "recipe",
        name = "pm-basic-wood-growth",
        energy_required = 44 + 1,
        enabled = false,
        category = "pm-greenhousing",
        subgroup = "pm-greenhousing-rnm",
        order = "a",
        ingredients = 
        {
            {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 49 + 2 - 1},
            {type = "fluid", name = "pm-oxygen-gas", amount = 24 + 1},
            {type = "fluid", name = "water", amount = 49 + 2 - 1},
            {"wood", 20}
        },
        results = 
        {
            {"wood", 40 + 10}
        }
    },
   {
        type = "recipe",
        name = "pm-fertilised-wood-growth",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/fertilised-wood-growth.png",
        energy_required = 30,
        enabled = false,
        category = "pm-greenhousing",
        subgroup = "pm-greenhousing-rnm",
        order = "b",
        ingredients = 
        {
            {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 48 + 2},
            {type = "fluid", name = "pm-oxygen-gas", amount = 12},
            {type = "fluid", name = "water", amount = 24 + 1},
            {"wood", 10},
            {"pm-fertiliser", 1}
       },
        results = 
        {
            {"wood", 20*2 + 2*4+2}
        }

    },

--misc recipes

    {
        type = "recipe",
        name = "pm-fertiliser",
        energy_required = 4 + 1,
        category = "crafting-with-fluid",
        subgroup = "pm-greenhousing-rnm",
        order = "c",
        enabled = false,
        ingredients = 
        {
            {type = "fluid", name = "pm-ammonia-gas", amount = 20},
            {"pm-white-phosphorus", 6},
            {"pm-polyethylene-plastic", 4},
        },
        results = 
        {
            {"pm-fertiliser", 1}
        }
    },
    
    {
        type = "recipe",
        name = "pm-potassium-fertiliser",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/fertiliser.png", 
                icon_size = 128,
                scale = 0.35
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png",
                icon_size = 64
            }
        },
        energy_required = 4 + 1,
        category = "crafting-with-fluid",
        subgroup = "pm-greenhousing-rnm",
        order = "ca",
        enabled = false,
        ingredients = 
        {
            {type = "fluid", name = "pm-ammonia-gas", amount = 10},
            {"pm-white-phosphorus", 4},
            {"pm-polyethylene-plastic", 6},
            {"pm-potassium", 4}
        },
        results = 
        {
            {"pm-fertiliser", 2}
        }
    },
    {
        type = "recipe",
        name = "pm-wood-strip-washing",
        energy_required = 1,
        enabled = false,
        category = "pm-washing",
        main_product = "pm-cellouse-pulp",
        subgroup = "pm-greenhousing-rnm",
        order = "e",
        ingredients = 
        {
            {"pm-wood-strips", 4 + 1},
            {type = "fluid", name = "water", amount = 20}
        },
        results = 
        {
            {type = "fluid", name = "pm-cellouse-pulp", amount = 4 + 1},
            {name = "pm-wood-strips", amount_min = 2, amount_max = 4}
        }
    },
    {
        type = "recipe",
        name = "pm-biomass",
        energy_required = 3,
        category = "crafting-with-fluid",
        enabled = false,
        subgroup = "pm-greenhousing-rnm",
        order = "f",
        ingredients = 
        {
            {type = "fluid", name = "pm-cellouse-pulp", amount = 4 + 1},
            {"pm-wood-strips", 8}
        },
        results = 
        {
            {"pm-biomass", 2}
        }
    },
    {
        type = "recipe",
        name = "pm-agar-solution",
        energy_required = 2,
        enabled = false,
        category = "chemistry",
        subgroup = "pm-biostuff-rnm",
        order = "a",
        ingredients = 
        {
            {type = "fluid", name = "pm-chlorine", amount = 10},
            {"wood", 6},
            {"sulfur", 2},
            {type = "fluid", name = "water", amount = 10}
        },
        results = 
        {
            {type = "fluid", name = "pm-agar-solution", amount = 40 + 10}
        }
    },
    {
        type = "recipe",
        name = "pm-factorian-bacteria-filtering",
        energy_required = 3,
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "pm-biostuff-rnm",
        order = "b",
        ingredients = 
        {
            {type = "fluid", name = "pm-agar-solution", amount = 10},
            {"pm-biomass", 1}
        },
        results=
        {
            {type = "fluid", name = "pm-bacteriaed-agar-solution", amount = 10}
        }
    },
    {
        type = "recipe",
        name = "pm-factorian-cyanobacteria-filtering",
        energy_required = 3,
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "pm-biostuff-rnm",
        order = "ba",
        ingredients = 
        {
            {type = "fluid", name = "pm-agar-solution", amount = 10},
            {"pm-wood-strips", 5}
        },
        results=
        {
            {type = "fluid", name = "pm-cyanobacteriaed-agar-solution", amount = 10}
        }
    },

    {
        type = "recipe",
        name = "pm-empty-petri-dish",
        energy_required = 1,
        enabled = false,
        subgroup = "pm-biostuff-rnm",
        order = "c",
        ingredients =
        {
            {"pm-glass-pane", 4},
            {"pm-anti-bacterial-panelling", 1}
        },
        results = 
        {
            {"pm-empty-petri-dish", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-agar-petri-dish",
        energy_required = 1,
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "pm-biostuff-rnm",
        order = "d",
        ingredients = 
        {
            {"pm-empty-petri-dish", 1},
            {type = "fluid", name = "pm-agar-solution", amount = 20 + 10 / 2}
        },
        results = 
        {
            {"pm-agar-petri-dish", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-bacteriaed-petri-dish",
        energy_required = 1,
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "pm-biostuff-rnm",
        order = "e",
        ingredients = 
        {
            {"pm-empty-petri-dish", 1},
            {type = "fluid", name = "pm-bacteriaed-agar-solution", amount = 20 + 10 / 2}
        },
        results = 
        {
            {"pm-bacteriaed-petri-dish", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-agar-dish-emptying",
        energy_required = 1,
        enabled = false,
        category = "crafting-with-fluid",
        main_product = "pm-agar-solution",
        subgroup = "pm-biostuff-rnm",
        order = "f",
        ingredients = 
        {
            {"pm-agar-petri-dish", 1}
        },
        results = 
        {
            {type = "fluid", name = "pm-agar-solution", amount = 20 + 10 / 2},
            {"pm-empty-petri-dish", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-bacteriaed-dish-emptying",
        energy_required = 1,
        enabled = false,
        category = "crafting-with-fluid",
        main_product = "pm-bacteriaed-agar-solution",
        subgroup = "pm-biostuff-rnm",
        order = "g",
        ingredients = 
        {
            {"pm-bacteriaed-petri-dish", 1}
        },
        results = 
        {
            {type = "fluid", name = "pm-bacteriaed-agar-solution", amount = 20 + 10 / 2},
            {"pm-empty-petri-dish", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-gene-harvesting",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/gene-base-harvesting.png",
        energy_required = 2,
        enabled = false,
        hide_from_player_crafting = true,
        category = "pm-bacteria-incubating",
        subgroup = "pm-biostuff-rnm",
        order = "h",
        ingredients = 
        {
            {type = "fluid", name = "pm-bacteriaed-agar-solution", amount = 4 + 1},
        },
        results = 
        {
            {type = "fluid", name = "pm-gene-base", amount = 10},
            --{name = "pm-dead-bacteriaed-biomass", probability = 0.6, amount = 2}
        }
    },
    {
        type = "recipe",
        name = "pm-melatonin-harvesting",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        energy_required = 2,
        enabled = false,
        hide_from_player_crafting = true,
        category = "pm-bacteria-incubating",
        subgroup = "pm-biostuff-rnm",
        order = "i",
        ingredients = 
        {
            {type = "fluid", name = "pm-cyanobacteriaed-agar-solution", amount = 4 + 1},
        },
        results = 
        {
            {type = "fluid", name = "pm-melatonin", amount = 10},
            {type = "fluid", name = "pm-bacteriaed-agar-solution", amount = 2, probability = 0.2}
            
        }
    },
})
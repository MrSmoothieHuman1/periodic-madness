--for all alternative recipes for items

data:extend({
{
    type = "recipe",
    name = "pm-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/circuitboard-molding.png",
    energy_required = 3,
    category = "pm-molding",
    subgroup = "pm-molded-circuits",
    order = "a",
    enabled = false,
    always_show_made_in = true,
    ingredients = 
    {
        {type = "fluid", name = "pm-pheonlic-resin", amount = 25},
    },
    results = 
    {
        {"pm-circuit-mold", 2}
    }
},
{
    type = "recipe",
    name = "pm-green-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/green-circuitboard-molding.png",
    energy_required = 1,
    category = "pm-molding",
    subgroup = "pm-molded-circuits",
    order = "c",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-circuit-mold", 1},
        {"pm-basic-breadboard", 1}
    },
    results = 
    {
        {"pm-basic-breadboard-mold", 1},
        {"pm-basic-breadboard", 1}
    }
},
{
    type = "recipe",
    name = "pm-basic-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/green-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "d",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-basic-breadboard-mold", 1},
        {"pm-nickel-plate", 1}
    },
    results = 
    {
        {
            name = "pm-basic-breadboard-mold",
            probability = "0.7",
            amount = 1
        },
        {"pm-basic-breadboard", 2}
    },
},
{
    type = "recipe",
    name = "pm-orange-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuitboard-molding.png",
    energy_required = 1,
    category = "pm-molding",
    subgroup = "pm-molded-circuits",
    order = "g",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-circuit-mold", 1},
        {"pm-fluid-breadboard", 1}
    },
    results = 
    {
        {"pm-fluid-breadboard-mold", 1},
        {"pm-fluid-breadboard", 1}
    }
},
{
    type = "recipe",
    name = "pm-orange-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "h",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-fluid-breadboard-mold", 1},
        {"pm-vulcanised-rubber", 1}
    },
    results = 
    {
        {
            name = "pm-fluid-breadboard-mold",
            probability = "0.6",
            amount = 1
        },
        {"pm-fluid-breadboard", 2}
    },
},
{
    type = "recipe",
    name = "pm-advanced-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuitboard-molding.png",
    energy_required = 1,
    category = "pm-molding",
    subgroup = "pm-molded-circuits",
    order = "k",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-circuit-mold", 1},
        {"pm-advanced-circuit-breadboard", 1}
    },
    results = 
    {
        {"pm-advanced-breadboard-mold", 1},
        {"pm-advanced-circuit-breadboard", 1}
    }
},
{
    type = "recipe",
    name = "pm-advanced-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "l",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-advanced-breadboard-mold", 1},
        {"pm-palladium-plate", 2}
    },
    results = 
    {
        {
            name = "pm-advanced-breadboard-mold",
            probability = "0.5",
            amount = 1
        },
        {"pm-advanced-circuit-breadboard", 2}
    },
},
{
    type = "recipe",
    name = "pm-processing-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-circuitboard-molding.png",
    energy_required = 1,
    category = "pm-molding",
    subgroup = "pm-molded-circuits",
    order = "na",
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-circuit-mold", 1},
        {"pm-processing-breadboard", 1}
    },
    results = 
    {
        {"pm-processing-breadboard-mold", 1},
        {"pm-processing-breadboard", 1}
    }
},
{
    type = "recipe",
    name = "pm-processing-breadboard-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "n",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-processing-breadboard-mold", 1},
        {"pm-indium-plate", 2}
    },
    results = 
    {
        {
            name = "pm-processing-breadboard-mold",
            probability = "0.4",
            amount = 1
        },
        {"pm-processing-breadboard", 2}
    },
},
{
    type = "recipe",
    name = "pm-coke-iron-smelting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/coke-iron.png",
    category = "pm-alloying",
    energy_required = 4,
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-coke", 2},
        {"iron-ore", 2}
    },
    results = 
    {
        {"iron-plate", 4}
    }
},
{
    type = "recipe",
    name = "pm-coke-zinc-smelting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/coke-zinc.png",
    category = "pm-alloying",
    energy_required = 4,
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-coke", 2},
        {"pm-zinc-ore", 2}
    },
    results = 
    {
        {"pm-zinc-plate", 4}
    }
},

{
    type = "recipe",
    name = "pm-alloyed-steel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/alloyed-steel-plate.png",
    category = "pm-alloying",
    subgroup = "pm-alloys",
    energy_required = 6,
    enabled = false,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-manganese-plate", 2},
        {"pm-nickel-plate", 2},
        {"pm-zinc-plate", 1}
    },
    results = 
    {
        {
            name = "pm-alloyed-steel",
            amount_min = 2,
            amount_max = 6,
        },

        {
            name = "pm-ore-slag",
            probability = 0.5,
            amount = 2
        }
    }
},
{
    type = "recipe",
    name = "pm-alloyed-steel-to-steel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/alloyed-steel-to-steel.png",
    category = "pm-alloying",
    subgroup = "pm-alloys",
    energy_required = 3,
    enabled = false,
    ingredients = 
    {
        {"pm-alloyed-steel", 2},
        {"iron-plate", 2}
    },
    results = 
    {
        {
            name = "steel-plate",
            amount_min = 1,
            amount_max = 2,
        }
    }
},
{
    type = "recipe",
    name = "pm-copper-fiberoptic-cable",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-fiberoptic-cable.png",
    subgroup = "pm-alternative-recipes",
    category = "crafting-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients = 
    {
        {type = "fluid", name = "pm-pheonlic-resin", amount = 10},
        {"pm-glass-fibers", 20},
        {"copper-cable", 4}
    },
    results = 
    {
        {"pm-fiberoptic-cable", 2}
    }
},
{
    type = "recipe",
    name = "pm-sulfuric-acid-to-acidic-water",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfuric-acid-to-acidic-water.png",
    energy_required = 4,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "e",
    enabled = false,
    ingredients = 
    {
        {type = "fluid", name = "sulfuric-acid", amount = 10},
        {"pm-calcium-ore", 6}
    },
    results = 
    {
        {type = "fluid", name = "pm-acidic-water", amount = 50},
        {name = "sulfur", amount_min = 2, amount_max = 5}
    }
},
{
    type = "recipe",
    name = "pm-cadnium-zinc-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-melting.png",
    subgroup = "pm-metal-melting",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    ingredients = 
    {
        {"pm-zinc-plate", 10},
        {"pm-cadnium-plate", 4 + 1},
        {type = "fluid", name = "pm-molten-iron", amount = 2.4 + 0.1}
    },
    results = 
    {
        {type = "fluid", name = "pm-molten-solder", amount = 10}
    }
},
{
    type = "recipe",
    name = "pm-water-deacifying",
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "f",
    main_product = "water",
    enabled = false,
    crafting_machine_tint =
    {
        primary = {r=0.98,g=0.87,b=0.09,a=1}, --main visible colour
        secondary = {r=0,g=0.4,b=0,a=1},--background visible colour
        tertiary = {r=0.76,g=0.89,b=0.4,a=0.5}, -- smoke afteraffects
        quaternary = {r=0.5,g=0.8,b=0.5,a=1} --smoke 
    },
    energy_required = 4,
    ingredients = 
    {
        {"pm-calcium-ore", 6},
        {type = "fluid", name = "pm-acidic-water", amount = 50},
    },
    results =
    {
        {type = "fluid", name = "water", amount = 50},
        {
            name = "sulfur",
            amount_min = 2,
            amount_max = 4 + 1
        }
    }
},

{
    type = "recipe",
    name = "pm-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/integrated-circuit-mold.png",
    energy_required = 6,
    category = "pm-advanced-molding",
    subgroup = "pm-molded-circuits",
    order = "b",
    enabled = false,
    allow_decomposition = false,
    ingredients = 
    {
        {type = "fluid", name = "pm-pheonlic-resin", amount = 40 + 10},
    },
    results = 
    {
        {"pm-integrated-circuit-mold", 3}
    }
},
{
    type = "recipe",
    name = "pm-green-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/basic-integrated-circuit-molding.png",
    energy_required = 2,
    category = "pm-advanced-molding",
    subgroup = "pm-molded-circuits",
    order = "e",
    enabled = false,
    allow_decomposition = false,
    ingredients = 
    {
        {"pm-integrated-circuit-mold", 3},
        {"pm-basic-integrated-circuits", 3}
    },
    results = 
    {
        {"pm-basic-integrated-circuit-mold", 3},
        {name = "pm-basic-integrated-circuits", amount_min = 2, amount_max = 3}
    }
},
{
    type = "recipe",
    name = "pm-basic-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "f",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-basic-integrated-circuit-mold", 3},
        {"copper-cable", 1}
    },
    results = 
    {
        {
            name = "pm-basic-integrated-circuit-mold",
            probability = "0.6",
            amount = 3
        },
        {"pm-basic-integrated-circuits", 3}
    },
},
{
    type = "recipe",
    name = "pm-fluid-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fluid-integrated-circuit-molding.png",
    energy_required = 2,
    category = "pm-advanced-molding",
    subgroup = "pm-molded-circuits",
    order = "i",
    enabled = false,
    allow_decomposition = false,
    ingredients = 
    {
        {"pm-integrated-circuit-mold", 3},
        {"pm-fluid-integrated-circuits", 3}
    },
    results = 
    {
        {"pm-fluid-integrated-circuit-mold", 3},
        {name = "pm-fluid-integrated-circuits", amount_min = 2, amount_max = 3}
    }
},
{
    type = "recipe",
    name = "pm-fluid-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "j",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-fluid-integrated-circuit-mold", 3},
        {"pm-gold-wire", 2}
    },
    results = 
    {
        {
            name = "pm-fluid-integrated-circuit-mold",
            probability = "0.5",
            amount = 3
        },
        {"pm-fluid-integrated-circuits", 3}
    },
},
{
    type = "recipe",
    name = "pm-advanced-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-integrated-circuit-molding.png",
    energy_required = 2,
    category = "pm-advanced-molding",
    subgroup = "pm-molded-circuits",
    order = "m",
    enabled = false,
    allow_decomposition = false,
    ingredients = 
    {
        {"pm-integrated-circuit-mold", 3},
        {"pm-advanced-integrated-circuits", 3}
    },
    results = 
    {
        {"pm-advanced-integrated-circuit-mold", 3},
        {name = "pm-advanced-integrated-circuits", amount_min = 2, amount_max = 3}
    }
},
{
    type = "recipe",
    name = "pm-advanced-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "n",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-advanced-integrated-circuit-mold", 3},
        {"pm-gold-wire", 2}
    },
    results = 
    {
        {
            name = "pm-advanced-integrated-circuit-mold",
            probability = "0.4",
            amount = 3
        },
        {"pm-advanced-integrated-circuits", 3}
    },
},
{
    type = "recipe",
    name = "pm-processing-integrated-circuit-pressing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/processing-integrated-circuit-molding.png",
    energy_required = 2,
    category = "pm-advanced-molding",
    subgroup = "pm-molded-circuits",
    order = "o",
    enabled = false,
    allow_decomposition = false,
    ingredients = 
    {
        {"pm-integrated-circuit-mold", 3},
        {"pm-processing-integrated-circuits", 3}
    },
    results = 
    {
        {"pm-advanced-integrated-circuit-mold", 3},
        {name = "pm-advanced-integrated-circuits", amount_min = 2, amount_max = 3}
    }
},
{
    type = "recipe",
    name = "pm-processing-integrated-circuit-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "p",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    always_show_made_in = true,
    ingredients = 
    {
        {"pm-processing-integrated-circuit-mold", 3},
        {"pm-gold-wire", 2}
    },
    results = 
    {
        {
            name = "pm-processing-integrated-circuit-mold",
            probability = "0.3",
            amount = 3
        },
        {"pm-processing-integrated-circuits", 3}
    },
},
{
    type = "recipe",
    name = "pm-bismuth-carbon-dioxide-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-CO2-electroylsis.png",
    energy_required = 2,
    enabled = false,
    category = "pm-electrolysis",
    main_product = "pm-carbon-monoxide",
    ingredients = 
    {
        {type = "fluid", name = "pm-carbon-dioxide-gas", amount = 40},
        {"pm-zirconia", 4},
        {"pm-bismuth-ore", 4}
    },
    results = 
    {
        {type = "fluid", name = "pm-carbon-monoxide", amount = 40},
        {type = "fluid", name = "pm-oxygen-gas", amount = 20}
    }
},
})
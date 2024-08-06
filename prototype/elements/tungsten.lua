data:extend({

{
    type = "item",
    name = "pm-tungsten-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",
    subgroup = "pm-tungsten-tm",
    order = "e",
    stack_size = 200
},
{
    type = "item",
    name = "pm-wolframite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/wolframite.png",
    subgroup = "pm-tungsten-tm",
    order = "b",
    stack_size = 100
},
{
    type = "item",
    name = "pm-tungsten-crystals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/tungsten-krystals.png",
    subgroup = "pm-tungsten-tm",
    order = "c",
    stack_size = 100
},
{
    type = "item",
    name = "pm-scheelite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/scheelite.png",
    subgroup = "pm-tungsten-tm",
    order = "d",
    stack_size = 100
},
{
    type = "item",
    name = "pm-tungsten-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
    pictures = 
    {
        {filename = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png", size = 64, scale = 0.25},
        {filename = "__periodic-madness__/graphics/icons/ores/tungsten-chunks-2.png", size = 64, scale = 0.25}
    },
    subgroup = "pm-tungsten-tm",
    order = "a",
    stack_size = 150
},

{
    type = "recipe",
    name = "pm-tungsten-leeching",
    icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
                icon_size = 64,
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
                icon_size = 64,
            },
        },
    category = "pm-acids",
    subgroup = "pm-tungsten-tm",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients = 
    {
        {"pm-transition-metals-ore", 12},
        {type = "fluid", name = "pm-acidic-water", amount = 50}
    },
    results = 
    {
        {"pm-tungsten-chunks", 8}
    }
},
{
    type = "recipe",
    name = "pm-tungsten-crushing",
    category = "pm-crushing",
    subgroup = "pm-tungsten-tm",
    order = "c",
    energy_required = 12,
    enabled = false,
    ingredients = 
    {
        {"pm-tungsten-chunks", 4}
    },
    results = 
    {
        {"pm-wolframite", 6}
    }
},
{
    type = "recipe",
    name = "pm-wolframite-washing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/wolframite-washing.png",
    category = "pm-washing",
    subgroup = "pm-tungsten-tm",
    order = "d",
    energy_required = 2,
    enabled = false,
    ingredients = 
    {
        {"pm-wolframite", 2},
        {type = "fluid", name = "water", amount = 40}
    },
    results = 
    {
        {"pm-tungsten-crystals", 3},
        {"pm-scheelite", 2}
    }
},
{
    type = "recipe",
    name = "pm-tungsten-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tungsten-ore-icon.png",
    category = "pm-crushing",
    subgroup = "pm-tungsten-tm",
    order = "e",
    energy_required = 6,
    enabled = false,
    ingredients = 
    {
        {"pm-tungsten-crystals", 6},
        {"pm-scheelite", 4}
    },
    results = 
    {
        {"pm-tungsten-ore", 4},
    }
},

{
    type = "recipe",
    name = "pm-argon-tungsten-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-titanium-welding.png",
    subgroup = "pm-tungsten-tm",
    order = "h",
    category = "pm-moltening",
    energy_required = 4.4 + 0.1,
    enabled = false,
    ingredients = 
    {
        {type = "fluid", name = "pm-argon-gas", amount = 40},
        {"pm-wolframite", 14 + 1}
    },
    results = 
    {
        {type = "fluid", name = "pm-molten-tungsten", amount = 4 + 1}
    }
},
{
    type = "recipe",
    name = "pm-chromic-tungsten-leeching",
    icon_size = 64,
    icons = 
    {
        {
            icon = "__periodic-madness__/graphics/icons/ores/tungsten-chunks.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
            icon_size = 64,
        },
    },
    category = "pm-acids",
    subgroup = "pm-tungsten-tm",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients = 
    {
        {"pm-transition-metals-ore", 12},
        {type = "fluid", name = "pm-chromic-acid", amount = 10}
    },
    results = 
    {
        {"pm-tungsten-chunks", 8}
    }
},

{
    type = "recipe",
    name = "pm-wolframite-crystallisation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/wolframite-crystallisation.png",
    category = "pm-crystallisation",
    subgroup = "pm-tungsten-tm",
    order = "da",
    energy_required = 2,
    enabled = false,
    ingredients = 
    {
        {"pm-wolframite", 10},
        {type = "fluid", name = "pm-liquid-mercury", amount = 40}
    },
    results = 
    {
        {"pm-tungsten-crystals", 14 + 1},
        {"pm-scheelite", 10}
    }
},
})
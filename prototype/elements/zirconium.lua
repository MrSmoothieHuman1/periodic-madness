
data:extend({

    {
        type = "item",
        name = "pm-zirconium-sand",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/zirconium-sand.png",
        subgroup = "pm-zirconium-tm",
        order = "a",
        stack_size = 100 / 2
    },
    {
        type = "item",
        name = "pm-zircon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/zircon.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/zircon.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/zircon-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-zirconium-tm",
        order = "b",
        stack_size = 100,
    },
    {
        type = "item",
        name = "pm-zirconia",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/zirconia.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/zirconia.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/zirconia-2.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/zirconia-3.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-zirconium-tm",
        order = "c",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-zirconium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/zirconium-ore-icon.png",
        subgroup = "pm-zirconium-tm",
        order = "d",
        stack_size = 200
    },


    {
        type = "recipe",
        name = "pm-zirconium-leeching",
        enabled = false,
        energy_required = 9,
        category = "pm-acids",
        subgroup = "pm-zirconium-tm",
        order = "a",
        main_product = "pm-zirconium-sand",
        ingredients = 
        {
            {"pm-transition-metals-ore", 12},
            {type = "fluid", name = "pm-seawater", amount = 20},
            {type = "fluid", name = "pm-acidic-water", amount = 24 + 1}
        },
        results = 
        {
            {"pm-zirconium-sand", 8},
            {
                name = "water",
                type = "fluid",
                amount = 10,
                probaility = 0.7
            }
        }
    },
    {
        type = "recipe",
        name = "pm-zirconium-sand-filtering",
        enabled = false,
        energy_required = 6,
        category = "pm-evaporation",
        subgroup = "pm-zirconium-tm",
        order = "b",
        main_product = "pm-zircon",
        ingredients = 
        {
            {"pm-zirconium-sand", 4}
        },
        results = 
        {
            {"pm-zircon", 2},
            {
                name = "pm-sand",
                amount_min = 1,
                amount_max = 4 
            },
            {
                name = "pm-titanium-ore",
                amount = 2,
                probaility = 0.22
            }
        }
    },
    {
        type = "recipe",
        name = "pm-zirconia",
        enabled = false,
        energy_required = 9,
        subgroup = "pm-zirconium-tm",
        order = "c",
        ingredients = 
        {
            {"pm-zircon", 8},
            {"pm-coke", 4}
        },
        results =
        {
            {"pm-zirconia", 6}
        }
    },
    {
        type = "recipe",
        name = "pm-zirconium",
        enabled = false,
        energy_required = 3,
        category = "pm-acids",
        subgroup = "pm-zirconium-tm",
        order = "d",
        ingredients = 
        {
            {"pm-zircon", 2},
            {type = "fluid", name = "pm-chlorine", amount = 10}
        },
        results = 
        {
            {"pm-zirconium-ore", 4},
        }
    },


})
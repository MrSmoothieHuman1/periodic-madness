data:extend({

    {
        type = "item",
        name = "pm-francium-209",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/francium-209.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/francium-209.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/francium-209-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-francium-am",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-francium-210",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/francium-210.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/francium-210.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/francium-210-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-francium-am",
        order = "b",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-francium-211",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/francium-211.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/francium-211.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/francium-211-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-francium-am",
        order = "c",
        stack_size = 100
    },

    {
        type = "recipe",
        name = "pm-magneto-orbital-trap",
        enabled = false,
        energy_required = 12,
        category = "crafting-with-fluid",
        ingredients = 
        {
            {"pm-glass-pane", 24},
            {"pm-antimony-ore", 2},
            {"pm-basic-wiring", 24},
            {"pm-polyethylene-plastic", 6},
            {"pm-gallium-arsenide", 2},
            {type = "fluid", name = "pm-coolant", amount = 10}
        },
        results = 
        {
            {"pm-magneto-orbital-trap", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-borosilicate-magneto-orbital-trap",
        enabled = false,
        energy_required = 12,
        category = "crafting-with-fluid",
        ingredients = 
        {
            {"pm-borosilicate-glass", 6},
            {"pm-antimony-ore", 2},
            {"pm-basic-wiring", 24},
            {"pm-polyethylene-plastic", 6},
            {"pm-gallium-arsenide", 2},
            {type = "fluid", name = "pm-coolant", amount = 10}
        },
        results = 
        {
            {"pm-magneto-orbital-trap", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-francium-forming",
        enabled = false,
        energy_required = 18,
        category = "pm-cyclotroning",
        subgroup = "pm-francium-am",
        order = "a",
        ingredients =
        {
            {"pm-gold-plate", 25},
            {type = "fluid", name = "pm-oxygen-gas", amount = 50},
            {"pm-magneto-orbital-trap", 1}
        },
        results = 
        {
            {"pm-francium-magneto-orbital-trap", 1}
        }
    },
    {
        type = "recipe",
        name = "pm-magneto-orbital-trap-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/MOT-seperation.png",
        enabled = false,
        energy_required = 12,
        subgroup = "pm-francium-am",
        order = "b",
        ingredients = 
        {
            {"pm-francium-magneto-orbital-trap", 2}
        },
        results = 
        {
            {
                name = "pm-francium-209",
                amount = 2,
                probability = 0.5
            },
            {
                name = "pm-francium-210",
                amount = 2,
                probability = 0.5
            },
            {
                name = "pm-francium-211",
                amount = 2,
                probability = 0.5
            },
            {
                name = "pm-magneto-orbital-trap",
                amount = 2
            }
        }
    },
    {
        type = "recipe",
        name = "pm-francium-bombardment",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-francium-am",
        order = "c",
        ingredients = 
        {
            {"pm-francium-209", 1},
            {"pm-francium-210", 1},
            {"pm-francium-211", 1},
            {type = "fluid", name = "pm-helium-gas", amount = 20}
        },
        results = 
        {
            {type = "fluid", name = "pm-francium", amount_min = 2, amount_max = 5}
        }
    }
})
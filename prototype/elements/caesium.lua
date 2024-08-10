
data:extend({

    {
        type = "item",
        name = "pm-pollucite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/pollucite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/pollucite.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/pollucite-2.png", size = 118, scale = 0.125},
        },
        subgroup = "pm-caesium-am",
        order = "A",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-fine-pollucite-powder",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/pollucite-powder.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/pollucite-powder.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/pollucite-powder-2.png", size = 128, scale = 0.125},
        },
        subgroup = "pm-caesium-am",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-caesium-hexachlorocerate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate-2.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate-3.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-caesium-am",
        order = "b",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-caesium-iodine-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/caesium-iodine-chloride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/caesium-iodine-chloride.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/caesium-iodine-chloride-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-caesium-am",
        order = "c",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-caesium-antimony-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/caesium-antimony-chloride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/caesium-antimony-chloride.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/caesium-antimony-chloride-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-caesium-am",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-caesium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/caesium-chloride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/caesium-chloride.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/caesium-chloride-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-caesium-am",
        order = "e",
        stack_size = 50
    },

    {
        type = "recipe",
        name = "pm-pollucite-leeching",
        icon_size = 64,
        icons = 
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/pollucite.png",
                icon_size = 64,
                scale = 0.5
            },
            {
                icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
                icon_size = 64,
            },
        },
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-caesium-am",
        order = "a",
        ingredients = 
        {
            {"pm-alkali-metals-ore", 16},
            {type = "fluid", name = "pm-chromic-acid", amount = 20}
        },
        results = 
        {
            {"pm-pollucite", 8}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-pollucite-crushing",
        enabled = false,
        energy_required = 8,
        category = "pm-crushing",
        subgroup = "pm-caesium-am",
        order = "b",
        main_product = "pm-fine-pollucite-powder",
        ingredients = 
        {
            {"pm-pollucite", 12},
        },
        results = 
        {
            {
                name = "pm-fine-pollucite-powder",
                amount_min = 6,
                amount_max = 8
            },
            {
                name = "pm-alkali-metals-ore",
                amount_min = 0,
                amount_max = 2,
                probability = 0.6
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-pollucite-seperation",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        subgroup = "pm-caesium-am",
        order = "c",
        main_product = "pm-caesium-hexachlorocerate",
        ingredients = 
        {
            {"pm-fine-pollucite-powder", 12},
            {type = "fluid", name = "pm-hydrochloric-acid", amount = 50}
        },
        results = 
        {
            {"pm-caesium-hexachlorocerate", 2},
            {
                name = "pm-caesium-iodine-chloride",
                amount_min = 2,
                amount_max = 5,
                probability = 0.4
            },
            {
                name = "pm-caesium-antimony-chloride",
                amount_min = 2,
                amount_max = 5,
                probability = 0.6
            },
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-caesium-iodine-to-antimony",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/caesium-iodine-to-antimony.png",
        enabled = false,
        energy_required = 3,
        subgroup = "pm-caesium-am",
        order = "d",
        ingredients =
        {
            {"pm-caesium-iodine-chloride", 4},
            {"pm-caesium-hexachlorocerate", 4}
        },
        results = 
        {
            {"pm-caesium-antimony-chloride", 4},
            {
                name = "pm-iodine",
                amount_min = 0,
                amount_max = 4
            }
        }
    },    
    {
        type = "recipe",
        name = "pm-caesium-antimony-to-iodine",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/caesium-antimony-to-iodine.png",
        enabled = false,
        energy_required = 3,
        subgroup = "pm-caesium-am",
        order = "e",
        ingredients =
        {
            {"pm-caesium-antimony-chloride", 4},
            {"pm-caesium-hexachlorocerate", 2}
        },
        results = 
        {
            {"pm-caesium-iodine-chloride", 4},
            {
                name = "pm-antimony-ore",
                amount_min = 0,
                amount_max = 4
            }
        }
    },
    {
        type = "recipe",
        name = "pm-caesium-hexachlorocerate-seperation",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/caesium-hexachlorocerate-seperation.png",
        enabled = false,
        energy_required = 3,
        subgroup = "pm-caesium-am",
        order = "ea",
        ingredients =
        {
            {"pm-caesium-hexachlorocerate", 20}
        },
        results = 
        {
            {"pm-caesium-iodine-chloride", 4},
            {"pm-caesium-antimony-chloride", 4},
        }
    },
    {
        type = "recipe",
        name = "pm-caesium-chloride",
        enabled = false,
        energy_required = 6,
        subgroup = "pm-caesium-am",
        order = "f",
        main_product = "pm-caesium-chloride",
        ingredients = 
        {
            {"pm-caesium-iodine-chloride", 6},
            {"pm-caesium-antimony-chloride", 3},
            {"pm-calcium-ore", 6}
        },
        results = 
        {
            {"pm-caesium-chloride", 4}
        }
    },
    {
        type = "recipe",
        name = "pm-calcium-chloride-caesium-chloride",
       enabled = false,
        energy_required = 6,
        subgroup = "pm-caesium-am",
        order = "fa",
        main_product = "pm-caesium-chloride",
        ingredients = 
        {
            {"pm-caesium-iodine-chloride", 6},
            {"pm-caesium-antimony-chloride", 3},
            {"pm-calcium-chloride", 3}
        },
        results = 
        {
            {"pm-caesium-chloride", 6}
        }
    },
    {
        type = "recipe",
        name = "pm-caesium-chloride-leeching",
        enabled = false,
        energy_required = 8,
        category = "pm-washing",
        subgroup = "pm-caesium-am",
        main_product = "pm-caesium",
        order = "g",
        ingredients = 
        {
            {"pm-caesium-chloride", 6},
            {type = "fluid", name = "pm-ammonia-gas", amount = 10},
            {"pm-potassium", 5}
        },
        results = 
        {
            {type = "fluid", name = "pm-caesium", amount = 5},
            {type = "fluid", name = "pm-chlorine", amount = 10}
        }
    }--[[@as data.RecipePrototype]]
})
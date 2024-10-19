local PM = require("__periodic-madness__/library")
data:extend({
    {
        type = "item",
        name = "pm-low-quality-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-antimony-mt",
        order = "a",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-high-quality-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-antimony-mt",
        order = "b",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/crude-antimony-sulfide.png",
        subgroup = "pm-antimony-mt",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-stibnite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/stibnite.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-2.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-3.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-4.png", size = 128, scale = 0.125},
        },
        subgroup = "pm-antimony-mt",
        order = "d",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/antimony-sulfide.png",
        subgroup = "pm-antimony-mt",
        order = "e",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/crude-antimony-seperation.png",
        enabled = false,
        energy_required = 4,
        category = "pm-acids",
        subgroup = "pm-antimony-mt",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-arsenopyrite", 2),
            PM.ingredient("pm-ferrum", 8),
            PM.ingredient("pm-patina", 8),
            PM.ingredient("pm-metalloid-ore", 12),
            PM.ingredient("pm-chromic-acid", 15, "fluid")
        },
        results = 
        {
            PM.product_range("pm-low-quality-crude-antimony-sulfide", 3, 6),
            PM.product_range("pm-high-quality-crude-antimony-sulfide", 3, 6),
        }
    },
    {
        type = "recipe",
        name = "pm-low-quality-antimony-sulfide-filtering",
        enabled = false,
        energy_required = 8,
        category = "pm-washing",
        subgroup = "pm-antimony-mt",
        order = "b",    
        main_product = "pm-crude-antimony-sulfide",
        ingredients =
        {
            PM.ingredient("pm-low-quality-crude-antimony-sulfide", 6),
            PM.ingredient("pm-lead-froth", 12, "fluid")
        },
        results = 
        {
            PM.product_range("pm-crude-antimony-sulfide", 2, 5),
            PM.product_range_chance("pm-lead-powder", 0, 4, 0.56),
            PM.product_chance("pm-ferrum", 3, 0.7)
        }
    },
    {
        type = "recipe",
        name = "pm-high-quality-antimony-sulfide-filtering",
        enabled = false,
        energy_required = 8,
        category = "pm-moltening",
        subgroup = "pm-antimony-mt",
        order = "c",
        main_product = "pm-stibnite",
        ingredients =
        {
            PM.ingredient("pm-high-quality-crude-antimony-sulfide", 6),
            PM.ingredient("pm-molten-cobalt", 10, "fluid")
        },
        results = 
        {
            PM.product_range("pm-stibnite", 2, 5),
            PM.product_range("pm-cobalt-plate", 2, 6),
            PM.product_range_chance("pm-cobaltite", 0, 4, 0.77)
        }
    },
    {
        type = "recipe",
        name = "pm-crude-antimony-sulfide-mixing",
        enabled = false,
        energy_required = 6,
        category = "pm-crushing",
        subgroup = "pm-antimony-mt",
        order = "d",
        main_product = "pm-antimony-sulfide",
        ingredients = 
        {
            PM.ingredient("pm-stibnite", 4),
            PM.ingredient("pm-crude-antimony-sulfide", 4),
            PM.ingredient("pm-vanadium-oxide-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-antimony-sulfide", 8),
            PM.product_range("pm-catalyst-container", 1, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-antimony-sulfide-seperation",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-antimony-mt",
        order = "e",
        main_product = "pm-antimony-ore",
        ingredients = 
        {
            PM.ingredient("pm-antimony-sulfide", 4),
            PM.ingredient("iron-plate", 12)
        },
        results = 
        {
            PM.product("pm-antimony-ore", 6),
            PM.product_range("pm-ferrum", 2, 4)
        }
    }
})
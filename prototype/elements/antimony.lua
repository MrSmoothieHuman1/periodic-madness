local PM = require("__periodic-madness__/library")
data:extend({

    {
        type = "recipe",
        name = "pm-crude-antimony-sulfide",
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
            PM.product_range("pm-low-quality-crude-antimony-sulfide", 4, 8),
            PM.product_range("pm-high-quality-crude-antimony-sulfide", 2, 4),
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
        ingredients =
        {
            PM.ingredient("pm-low-quality-crude-antimony-sulfide", 6),
            PM.ingredient("pm-lead-froth", 12, "fluid")
        },
        results = 
        {
            PM.product_range("pm-crude-antimony-sulfide", 1, 5),
            PM.product_range("pm-lead-powder", 0, 4, 0.56),
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
        ingredients =
        {
            PM.ingredient("pm-low-quality-crude-antimony-sulfide", 6),
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
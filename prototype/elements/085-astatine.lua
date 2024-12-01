local PM = require("library")
data:extend({

    {
        type = "recipe",
        name = "pm-mixed-trace-astatine",
        category = "pm-cyclotroning",
        subgroup = "pm-astatine-ptm",
        order = "a",
        enabled = false,
        energy_required = 40,
        ingredients = 
        {
            PM.ingredient("pm-bismuth-ore", 20),
            PM.ingredient("copper-plate", 8),
            PM.ingredient("pm-aluminium-plate", 8),
            PM.ingredient("pm-gold-plate", 8), --all need to be catalysts for hard mode
        },
        results = 
        {
            PM.product_range_chance("pm-mixed-trace-astatine", 1, 2, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-astatine-MOT-trap",
        subgroup = "pm-astatine-ptm",
        order = "b",
        enabled = false,
        energy_required = 10,
        ingredients = 
        {
            PM.ingredient("pm-MOT-trap", 1),
            PM.ingredient("pm-mixed-astatine", 3)
        },
        results = 
        {
            PM.product("pm-mixed-astatine-MOT-trap", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-astatine-MOT-trap-emptying",
        category = "crafting-with-fluid",
        subgroup = "pm-astatine-ptm",
        order = "c",
        enabled = false,
        energy_required = 10,
        ingredients = 
        {
            PM.ingredient("pm-mixed-astatine-MOT-trap", 1),
            PM.ingredient("pm-sodium-hydroxide", 20, "fluid"),
            PM.ingredient("pm-methanol", 20, "fluid"),
        },
        results = 
        {
            PM.product_range_chance("pm-trace-astatine-209", 1, 2, 0.5),
            PM.product_range_chance("pm-trace-astatine-210", 1, 2, 0.5),
            PM.product_range_chance("pm-trace-astatine-211", 1, 2, 0.5),
        }
    },
    {
        type = "recipe",
        name = "pm-astatine-isotope-rearranging",
        category = "pm-cyclotroning",
        subgroup = "pm-astatine-ptm",
        order = "d",
        enabled = false,
        energy_required = 20,
        ingredients = 
        {
            PM.ingredient("pm-trace-astatine-209", 8),
            PM.ingredient("pm-trace-astatine-210", 8),
            PM.ingredient("pm-bismuth-210", 2),
            PM.ingredient("pm-hydrochloric-acid", 25, "fluid")
        },
        results = 
        {
            PM.product_range_chance("pm-trace-astatine-209", 2, 6, 0.5),
            PM.product_range_chance("pm-trace-astatine-210", 2, 6, 0.5),
            PM.product_range_chance("pm-trace-astatine-211", 3, 6, 0.8),
        }
    }
})

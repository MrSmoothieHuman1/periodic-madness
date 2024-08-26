local PM = require("__periodic-madness__/library")
data:extend({

    {
        type = "recipe",
        name = "pm-germanium-ore-concentrate",
        enabled = false,
        energy_required = 18,
        category = "pm-crushing",
        subgroup = "pm-germanium-mt",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-zinc-chunks", 8),
            PM.ingredient("pm-copper-chunks", 8),
            PM.ingredient("pm-silver-ore", 8),
            PM.ingredient("pm-impure-lead-ore", 4),
        },
        results = 
        {
            PM.product_range_chance("pm-germanium-ore-concentrate", 4, 8, 0.8),
            PM.product_range("pm-lead-powder", 0, 6),
            PM.product_range_chance("pm-copper-chunks", 0, 4, 0.45)
        }
    },
    {
        type = "recipe",
        name = "pm-concentrate-seperation",
        enabled = false,
        energy_required = 9,
        category = "pm-acids",
        subgroup = "pm-germanium-mt",
        order = "b",
        ingredients = 
        {
            PM.ingredient("pm-germanium-ore-concentrate", 6),
            PM.ingredient("sulfuric-acid", 20, "fluid"),
        },
        results = 
        {
            PM.product("pm-germanium-sulfide", 8),
            PM.product_range_chance("pm-zinc-chunks", 0, 4, 0.45)
        }
    },
    {
        type = "recipe",
        name = "pm-germanium-sulfide-to-oxide",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-germanium-mt",
        order = "c",
        ingredients = 
        {
            PM.ingredient("pm-germanium-sulfide", 8),
            PM.ingredient("pm-oxygen-gas", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-germanium-oxide", 6),
            PM.product_range_chance("sulfur", 2, 4, 0.66)
        }
    },
    {
        type = "recipe",
        name = "pm-germanium-oxide-to-tetrachloride",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-germanium-mt",
        order = "d",
        ingredients = 
        {
            PM.ingredient("pm-germanium-oxide", 6),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-germanium-tetrachloride", 4),
            PM.product_range("pm-oxygen-gas", 5, 8)
        }
    },
    {
        type = "recipe",
        name = "pm-germanium-tetrachloride-seperation",
        enabled = false,
        energy_required = 3,
        category = "chemistry",
        subgroup = "pm-germanium-mt",
        order = "e",
        ingredients = 
        {
            PM.ingredient("pm-germanium-tetrachloride", 4),
            PM.ingredient("pm-hydrogen-gas", 10, "fluid")
        },
        results = 
        {
            PM.product("pm-germanium-ore", 2),
            PM.product_range("pm-hydrochloric-acid", 5, 10, "fluid"),
            PM.product_range("pm-chlorine", 6, 8, "fluid")
        }
    }
})
local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-germanium-ore-concentrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/germanium-ore-concentrate.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-ore-concentrate.png",   size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-ore-concentrate-2.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-germanium-mt",
        order = "a",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-germanium-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/germanium-sulfide.png",
        subgroup = "pm-germanium-mt",
        order = "b",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-germanium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/germanium-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-oxide.png",   size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-oxide-2.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-germanium-mt",
        order = "c",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pm-germanium-tetrachloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/germanium-tetrachloride.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-tetrachloride.png",   size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/germanium-tetrachloride-2.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-germanium-mt",
        order = "d",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "pm-germanium-ore-concentrate",
        enabled = false,
        energy_required = 14,
        category = "pm-crushing",
        subgroup = "pm-germanium-mt",
        order = "a",
        main_product = "pm-germanium-ore-concentrate",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-zinc-chunk", 8),
            PM.ingredient("pm-copper-chunk", 8),
            PM.ingredient("pm-silver-ore", 8),
            PM.ingredient("pm-impure-lead", 4),
        },
        results = 
        {
            PM.product_range_chance("pm-germanium-ore-concentrate", 4, 8, 0.8),
            PM.product_range("pm-lead-powder", 0, 6),
            PM.product_range_chance("pm-copper-chunk", 0, 4, 0.45)
        }
    },
    {
        type = "recipe",
        name = "pm-concentrate-seperation",
       enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-germanium-mt",
        order = "b",
        main_product = "pm-germanium-sulfide",
        ingredients = 
        {
            PM.ingredient("pm-germanium-ore-concentrate", 6),
            PM.ingredient("sulfuric-acid", 20, "fluid"),
        },
        results = 
        {
            PM.product("pm-germanium-sulfide", 8),
            PM.product_range_chance("pm-zinc-chunk", 0, 4, 0.45)
        }
    },
    {
        type = "recipe",
        name = "pm-germanium-sulfide-to-oxide",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-germanium-mt",
        main_product = "pm-germanium-oxide",
        order = "c",
        allow_productivity = true,
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
        main_product = "pm-germanium-tetrachloride",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-germanium-oxide", 6),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-germanium-tetrachloride", 4),
            PM.product_range("pm-oxygen-gas", 5, 8, "fluid")
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
        main_product = "pm-germanium-ore",
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
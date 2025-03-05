local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-beryl",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/beryl.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/beryl.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-beryl-powder",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/beryl-powder.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/beryl-powder.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/beryl-powder-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/beryl-powder-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-beryllium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-beryllium-aem",
        order = "c",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-aluminium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/aluminium-sulfate.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "d",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-beryl",
        enabled = false,
        energy_required = 10,
        category = "pm-acids",
        subgroup = "pm-beryllium-aem",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 20),
            PM.ingredient("pm-chromic-acid", 20, "fluid"),
        },
        results = 
        {
            PM.product("pm-beryl", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-beryl-powder",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-beryllium-aem",
        order = "b",
        main_product = "pm-beryl-powder",
        ingredients = 
        {
            PM.ingredient("pm-beryl", 6)
        },
        results =
        {
            PM.product_range("pm-beryl-powder", 7, 12),
            PM.product_range("pm-bauxite-powder", 0, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-sulfate",
        enabled = false,
        energy_required = 12,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "c",
        main_product = "pm-beryllium-sulfate",
        ingredients = 
        {
            PM.ingredient("pm-beryl-powder", 8),
            PM.ingredient("sulfuric-acid", 8, "fluid"),
        },
        results = 
        {
            PM.product_range_chance("pm-beryllium-sulfate", 2, 4, 0.8),
            PM.product_range_chance("pm-aluminium-sulfate", 2, 4, 0.2)
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-hydroxide",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        subgroup = "pm-beryllium-aem",
        order = "d",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-sulfate", 3),
            PM.ingredient("pm-ammonia-gas", 5, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 5, "fluid")
        },
        results = 
        {
            PM.product("pm-beryllium-hydroxide", 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-cold-ammonium-tetrafluoroberyllate",
        enabled = false,
        energy_required = 18,
        category = "pm-acids",
        subgroup = "pm-beryllium-aem",
        order = "e",
        main_product = "pm-ammonium-tetrafluoroberyllate",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-hydrogen-flouride", 5, "fluid"),
            PM.ingredient("pm-palladium-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-ammonium-tetrafluoroberyllate", 7.5, "fluid"),
            PM.product_range_chance("pm-palladium-catalyst", 1, 2, 0.85),
            PM.product_range_chance("pm-catalyst-container", 0, 1, 0.15)
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-tetrafluoroberyllate",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "ea",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-hydrogen-flouride", 5, "fluid"),
        },
        results = 
        {
            PM.product("pm-ammonium-tetrafluoroberyllate", 10, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-ore",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "f",
        main_product = "pm-beryllium-ore",
        ingredients = 
        {
            PM.ingredient("pm-ammonium-tetrafluoroberyllate", 5, "fluid"),
            PM.ingredient("pm-magnesium-ore", 2)
        },
        results = 
        {
            PM.product_range("pm-beryllium-ore", 2, 5),
            PM.product_range_chance("pm-hydrogen-flouride", 0, 4, 0.75, "fluid")
        }
    }
})
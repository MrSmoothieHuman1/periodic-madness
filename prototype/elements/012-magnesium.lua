data:extend({

    {
        type = "item",
        name = "pm-dolomite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/dolomite.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "a",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-magnesium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-magnesium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "c",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-magnesium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-chloride.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-calcium-silicate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/calcium-silicate.png",
        subgroup = "pm-magnesium-aem",
        order = "e",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-magnesium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "c",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-dolomite",
        enabled = false,
        energy_required = 12,
        category = "pm-acids",
        subgroup = "pm-magnesium-aem",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 16),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product_range("pm-dolomite", 4, 10)
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-hydroxide",
        crafting_machine_tint = 
        {
            primary = {0.929, 0.831, 0.851}
        },
        enabled = false,
        energy_required = 20,
        category = "pm-mixing",
        subgroup = "pm-magnesium-aem",
        order = "b",
        main_product = "pm-magnesium-hydroxide",
        ingredients =
        {
            PM.ingredient("pm-seawater", 200, "fluid"),
            PM.ingredient("pm-lithium-hydroxide", 50, "fluid"),
            PM.ingredient("pm-dolomite", 8)
        },
        results =
        {
            PM.product_range("pm-magnesium-hydroxide", 20, 24, "fluid"),
            PM.product_range_chance("pm-calcium-hydroxide-slurry", 2, 10, 0.65, "fluid"),
            PM.product_range("pm-calcite", 0, 6)
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-oxide",
        enabled = false,
        energy_required = 5,
        category = "pm-electrolysis",
        subgroup = "pm-magnesium-aem",
        order = "c",
        allow_productivity = true,
        main_product = "pm-magnesium-oxide",
        ingredients =
        {
            PM.ingredient("pm-magnesium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-calcium-ore", 10),
            PM.ingredient("pm-carbon-dioxide-gas", 25, "fluid")
        },
        results =
        {
            PM.product("pm-magnesium-oxide", 4),
            PM.product_range("pm-carbon-trioxide", 16, 20, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-ore",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-magnesium-aem",
        order = "d",
        main_product = "pm-magnesium-ore",
        ingredients =
        {
            PM.ingredient("pm-magnesium-oxide", 4),
            PM.ingredient("pm-stainless-steel-alloy", 8),
        },
        results =
        {
            PM.product_range("pm-magnesium-ore", 4, 6),
            PM.product_chance("pm-ferrum", 5, 0.85),
            PM.product_range("pm-calcium-silicate", 4, 10),
        }
    },
    {
        type = "recipe",
        name = "pm-silicon-based-magnesium-ore",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        subgroup = "pm-magnesium-aem",
        order = "da",
        main_product = "pm-magnesium-ore",
        ingredients =
        {
            PM.ingredient("pm-magnesium-oxide", 4),
            PM.ingredient("pm-industrial-grade-silicon-ore", 4),
            PM.ingredient("iron-plate", 2)
        },
        results =
        {
            PM.product_range("pm-magnesium-ore", 4, 8),
            PM.product_range_chance("pm-calcium-silicate", 4, 6, 0.9),
        }
    },
    {
        type = "recipe",
        name = "pm-calcium-silicate-seperation",
        enabled = false,
        energy_required = 4,
        category = "pm-acids",
        subgroup = "pm-magnesium-aem",
        order = "e",
        main_product = "pm-ferrosilicon",
        ingredients =
        {
            PM.ingredient("pm-sodium-sulfite", 6),
            PM.ingredient("pm-calcium-silicate", 12)
        },
        results =
        {
            PM.product_range_chance("pm-ferrosilicon", 1, 4, 0.5),
            PM.product_range_chance("pm-calcite", 2, 5, 0.66)
        }
    },
    {
        type = "recipe",
        name = "pm-molten-magnesium",
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/fluids/molten-magnesium.png",
                icon_size = 64,
                shift = { 0, 1.5 }
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png",
                icon_size = 64,
                scale = 0.33,
                shift = {0, -7.5}
            },
        },
        enabled = false,
        energy_required = 9.6,
        category = "pm-moltening",
        subgroup = "pm-magnesium-aem",
        order = "f",
        ingredients = 
        {
            PM.ingredient("pm-magnesium-ore", 6),
            PM.ingredient("steam", 25, "fluid")
        },
        results =
        {
            PM.product("pm-molten-magnesium", 8, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-plate",
        enabled = false,
        energy_required = 9.6,
        category = "pm-coldening",
        subgroup = "pm-magnesium-aem",
        order = "g",
        main_product = "pm-magnesium-plate",
        ingredients = 
        {
            PM.ingredient("pm-molten-magnesium", 4, "fluid"),
            PM.ingredient("pm-crucible", 1),
        },
        results = 
        {
            PM.product("pm-magnesium-plate", 4),
            PM.product_chance("pm-crucible", 1, 0.8)
        }
    },

    {
        type = "recipe",
        name = "pm-magnesium-carbonate",
        crafting_machine_tint = 
        {
            primary = {0.89, 0.863, 0.867}
        },
        enabled = false,
        energy_required = 6,
        category = "pm-mixing",
        subgroup = "pm-magnesium-aem",
        order = "f",
        main_product = "pm-magnesium-carbonate",
        ingredients = 
        {
            PM.ingredient("pm-magnesium-plate", 2),
            PM.ingredient("pm-sodium-bicarbonate", 4)
        },
        results =
        {
            PM.product("pm-magnesium-carbonate", 2),
            PM.product_range("pm-carbon-dioxide-gas", 2, 6, "fluid"),
            PM.product_range("water", 0, 4, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-chloride",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-magnesium-aem",
        order = "g",
        ingredients =
        {
            PM.ingredient("pm-magnesium-carbonate", 2),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-magnesium-chloride", 2),
        }
    }
})
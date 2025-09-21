data:extend({

    {
        type = "item",
        name = "pm-barium-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-barium-radium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/radium-sulfate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 150
    },
    {
        type = "item",
        name = "pm-radium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/radium-chloride.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/radium-chloride.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-chloride-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-radium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/radium-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-radium-aem",
        order = "e",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-barium-radium-sulfate",
        enabled = false,
        energy_required = 10,
        category = "pm-acids",
        subgroup = "pm-radium-aem",
        order = "b",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 16),
            PM.ingredient("pm-chromic-acid", 20, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 10, "fluid")
        },
        results =
        {
            PM.product("pm-barium-radium-sulfate", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-radium-aem",
        order = "c",
        main_product = "pm-barium-radium-carbonate",
        ingredients =
        {
            PM.ingredient("pm-barium-radium-sulfate", 2),
            PM.ingredient("pm-sodium-bicarbonate", 4),
            PM.ingredient("pm-cobalt-catalyst", 2)
        },
        results =
        {
            PM.product("pm-barium-radium-carbonate", 1),
            PM.product_chance("pm-barium-radium-carbonate", 1, 0.66),
            PM.product("pm-cobalt-catalyst", 2),
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate-seperation",
        enabled = false,
        energy_required = 3.5,
        category = "pm-mixing",
        subgroup = "pm-radium-aem",
        order = "d",
        main_product = "pm-radium-sulfate",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-barium-radium-carbonate", 2),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results =
        {
            PM.product_chance("pm-barium-nitrate", 1, 0.33),
            PM.product_chance("pm-radium-sulfate", 1, 0.33),
            PM.product_chance("pm-barium-radium-sulfate", 1, 0.33),
        }
    },
    {
        type = "recipe",
        name = "pm-radium-chloride",
        enabled = false,
        energy_required = 7.5,
        category = "chemistry",
        subgroup = "pm-radium-aem",
        order = "e",
        main_product = "pm-radium-chloride",
        ingredients = 
        {
            PM.ingredient("pm-radium-sulfate", 1),
            PM.ingredient("pm-hydrochloric-acid", 5, "fluid")
        },
        results = 
        {
            PM.product("pm-radium-chloride", 2),
            PM.product_range("pm-sulfur-dichloride", 0, 4, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-radium-ore",
        enabled = false,
        energy_required = 5,
        category = "pm-washing",
        subgroup = "pm-radium-aem",
        order = "f",
        main_product = "pm-radium-ore",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-radium-chloride", 2),
            PM.ingredient("pm-coolant", 1, "fluid"),
        },
        results = 
        {
            PM.product_chance("pm-radium-ore", 2, 0.5),
            PM.product_chance("pm-radium-sulfate", 1, 0.5),
            PM.product("pm-hot-coolant", 1, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-sulfur-dichloride-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dichloride-seperation.png",
        enabled = false,
        energy_required = 2,
        category = "pm-mixing",
        subgroup = "pm-radium-aem",
        order = "g",
        ingredients =
        {
            PM.ingredient("pm-sulfur-dichloride", 10, "fluid"),
            PM.ingredient("pm-seawater", 40, "fluid")
        },
        results =
        {
            PM.product_range("pm-sulfur-dioxide", 0, 5, "fluid"),
            PM.product_range("pm-chlorine", 2, 8, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-sulfur-dichloride-to-hydrogen-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dichloride-to-hydrogen-sulfide.png",
        enabled = false,
        energy_required = 2,
        category = "pm-mixing",
        subgroup = "pm-radium-aem",
        order = "h",
        ingredients =
        {
            PM.ingredient("pm-sulfur-dichloride", 10, "fluid"),
            PM.ingredient("pm-hydrogen-gas", 30, "fluid"),
            PM.ingredient("steam", 25, "fluid"),
            PM.ingredient("pm-cobalt-catalyst", 1)
        },
        results =
        {
            PM.ingredient("pm-hydrogen-sulfide", 10, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
            PM.catalyst_chance("pm-cobalt-catalyst", 1, 0.8, 1),
            PM.catalyst_chance("pm-catalyst-container", 1, 0.2, 1)
        }
    }
})
local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-barium-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-barium-radium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
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
        type = "recipe",
        name = "pm-barium-radium-sulfate",
        enabled = false,
        energy_required = 20,
        category = "pm-acids",
        subgroup = "pm-radium-aem",
        order = "b",
        ingredients =
        {
            PM.ingredient("pm-alkaline-metals-ore", 20),
            PM.ingredient("pm-chromic-acid", 20, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 10, "fluid")
        },
        results =
        {
            PM.product("pm-barium-radium-sulfate", 4)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-radium-aem",
        order = "c",
        ingredients =
        {
            PM.ingredient("pm-barium-radium-sulfate", 2),
            PM.ingredient("pm-sodium-bicarbonate", 4),
            PM.ingredient("pm-cobalt-catalyst", 2)
        },
        results =
        {
            PM.product("pm-barium-radium-carbonate", 1),
            PM.product_chance("pm-barium-radium-carbonate", 1, 0.33),
            PM.product_range("pm-cobalt-catalyst", 1, 2),
            PM.product_range("pm-catalyst-container", 0, 1)
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate-seperation",
        enabled = false,
        energy_required = 5,
        category = "pm-mixing",
        subgroup = "pm-radium-aem",
        order = "d",
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
        ingredients = 
        {
            PM.ingredient("pm-radium-sulfate", 1),
            PM.ingredient("pm-hydrochloric-acid", 5, "fluid")
        },
        results = 
        {
            PM.product_range("pm-radium-chloride", 1, 2),
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
        ingredients = 
        {
            PM.ingredient("pm-radium-chloride", 2),
            PM.ingredient("pm-coolant", 1, "fluid")
        },
        results = 
        {
            PM.product_chance("pm-radium-ore", 1, 0.5),
            PM.product_chance("pm-radium-sulfate", 1, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-sulfur-dichloride-seperation",
        enabled = false,
        energy_required = 2,
        category = "pm-mixing",
        subgroup = "pm-radium-aem",
        order = "g",
        ingredients = 
        {
            PM.ingredient("pm-sulfur-dicloride", 10, "fluid"),
            PM.ingredient("pm-seawater", 40, "fluid")
        },
        results = 
        {
            PM.product_range("pm-sulfur-dioxide", 0, 5, "fluid"),
            PM.product_range("pm-chlorine", 2, 8, "fluid"),
        }
    }
})
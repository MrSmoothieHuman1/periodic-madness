local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-dolomite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-magnesium-aem",
        order = "a",
        stack_size = 250
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
            PM.ingredient("pm-alkali-metal-ore", 16),
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
        enabled = false,
        energy_required = 24,
        category = "pm-mixing",
        subgroup = "pm-magnesium-aem",
        order = "b",
        ingredients = 
        {
            PM.ingredient("pm-seawater", 200, "fluid"),
            PM.ingredient("pm-lithium-hydroxide", 50, "fluid"),
            PM.ingredient("pm-dolomite", 8)
        },
        results = 
        {
            PM.product("pm-magnesium-hydroxide", 20, "fluid"),
            PM.product_range_chance("pm-calcium-hydroxide", 2, 10, 0.75, "fluid"),
            PM.product_range("pm-calcite", 0, 6)
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-oxide",
        enabled = false,
        energy_required = 8,
        category = "pm-electrolysis",
        subgroup = "pm-magnesium-aem",
        order = "c",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-magnesium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-stainless-steel-alloy", 15),
            PM.ingredient("pm-calcium-ore", 10),
            PM.ingredient("pm-carbon-dioxide-gas", 25, "fluid")
        },
        results = 
        {
            PM.product_range("pm-magnesium-oxide", 4, 6),
            PM.product_range("pm-carbon-trioxide-gas", 8, 12, "fluid")
        }
    }
})
local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-celestine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/celestine.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/celestine.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/ores/celestine-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-strontium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-strontium-black-ash",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/strontium-black-ash.png",
        subgroup = "pm-strontium-aem",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-strontium-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-strontium-aem",
        order = "d",
        stack_size = 225
    },
    {
        type = "item",
        name = "pm-strontium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-strontium-aem",
        order = "e",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-celestine",
        enabled = false,
        energy_required = 10,
        category = "pm-acids",
        subgroup = "pm-strontium-aem",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 20),
            PM.ingredient("pm-chromic-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-celestine", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-black-ash",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
        subgroup = "pm-strontium-aem",
        order = "b",
        main_product = "pm-strontium-black-ash",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-celestine", 6),
            PM.ingredient("pm-sodium-hydroxide", 10, "fluid")
        },
        results =
        {
            PM.product_range("pm-strontium-black-ash", 4, 12),
            PM.product_range_chance("pm-celestine", 0, 4, 0.45),
            PM.catalyst_range_chance("pm-sodium-hydroxide", 0, 5, 0.45, 2.5, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-sulfide-solution",
        enabled = false,
        energy_required = 5,
        category = "chemistry",
        subgroup = "pm-strontium-aem",
        order = "c",
        main_product = "pm-strontium-sulfide-solution",
        ingredients =
        {
            PM.ingredient("pm-strontium-black-ash", 5),
            PM.ingredient("water", 40, "fluid"),
            PM.ingredient("pm-ion-exchange-beads", 8)
        },
        results =
        {
            PM.catalyst_range("pm-ion-exchange-beads", 2, 8, 2),
            PM.product_range("pm-strontium-sulfide-solution", 10, 12.5, "fluid"),
            PM.product_range_chance("pm-acidic-water", 0, 25, 0.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-sulfide",
        enabled = false,
        energy_required = 15,
        category = "chemistry",
        subgroup = "pm-strontium-aem",
        order = "d",
        main_product = "pm-strontium-sulfide",
        ingredients =
        {
            PM.ingredient("pm-strontium-sulfide-solution", 5, "fluid"),
            PM.ingredient("pm-carbon-dioxide-gas", 20, "fluid")
        },
        results =
        {
            PM.product_chance("pm-strontium-sulfide", 3, 0.75),
            PM.product_chance("pm-strontium-carbonate", 1, 0.25),
            PM.product_range("pm-carbon-monoxide", 10, 30, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-carbonate",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-strontium-aem",
        order = "f",
        main_product = "pm-strontium-carbonate",
        ingredients =
        {
            PM.ingredient("pm-strontium-sulfide", 3),
            PM.ingredient("pm-carbon", 10)
        },
        results =
        {
            PM.product("pm-strontium-carbonate", 2),
            PM.product_range("pm-carbon-dioxide-gas", 5, 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-ore",
        enabled = false,
        energy_required = 5,
        category = "chemistry",
        subgroup = "pm-strontium-aem",
        order = "e",
        main_product = "pm-strontium-ore",
        ingredients =
        {
            PM.ingredient("pm-strontium-carbonate", 2),
            PM.ingredient("pm-aluminium-plate", 5) --catalyst for hard mode
        },
        results =
        {
            PM.product_range("pm-strontium-ore", 1, 4),
            PM.product_range_chance("pm-bauxite", 0, 3, 0.55),
            PM.product_range_chance("pm-patina", 0, 2, 0.45),
        }
    }
})
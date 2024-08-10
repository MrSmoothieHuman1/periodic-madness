
data:extend({

    {
        type = "item",
        name = "pm-gallium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/gallium-chunks.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/gallium-chunks.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/gallium-chunks-2.png", size = 64, scale = 0.25}
        },
        subgroup = "pm-gallium-ptm",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-ion-exchange-beads",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ion-beads.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ion-beads.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ion-beads-2.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ion-beads-3.png", size = 128, scale = 0.125},
        },
        subgroup = "pm-gallium-ptm",
        order = "b",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-choralkali-sodium-hydroxide",
        enabled = false,
        energy_required = 4,
        category = "pm-electrolysis",
        subgroup = "pm-gallium-ptm",
        order = "a",
        main_product = "pm-sodium-hydroxide",
        ingredients = 
        {
            {"pm-sea-salt", 20},
        },
        results =
        {
            {type = "fluid", name = "pm-sodium-hydroxide", amount = 10},
            {type = "fluid", name = "pm-chlorine", probability = 0.8, amount = 10}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-bauxite-mixing",
        enabled = false,
        category = "pm-acids",
        subgroup = "pm-gallium-ptm",
        order = "b",
        energy_required = 8,
        main_product = "pm-gallium-chunks",
        ingredients = 
        {
            {"pm-aluminium-ore", 4},
            {"pm-post-transition-metals-ore", 12}
        },
        results = 
        {
            {name = "pm-gallium-chunks", amount_min = 6, amount_max = 8},
            {"pm-aluminium-ore", 2}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-gallium-liqouring",
        enabled = false,
        energy_required = 1,
        category = "pm-washing",
        subgroup = "pm-gallium-ptm",
        order = "c",
        main_product = "pm-gallium-liqour",
        ingredients = 
        {
            {type = "fluid", name = "pm-sodium-hydroxide", amount = 2},
            {"pm-gallium-chunks", 4}
        },
        results =
        {
            {type = "fluid", name = "pm-gallium-liqour", amount = 6},
            {"pm-sodium", 2}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-metal-sodium-hydroxide",
        enabled = false,
        energy_required = 4,
        category = "pm-electrolysis",
        subgroup = "pm-gallium-ptm",
        order = "d",
        main_product = "pm-sodium-hydroxide",
        ingredients = 
        {
            {"pm-sodium", 6},
            {type = "fluid", name = "water", amount = 10}
        },
        results =
        {
            {type = "fluid", name = "pm-sodium-hydroxide", amount = 10},
            {   
                type = "fluid",
                name = "pm-hydrogen-gas",
                amount = 4,
                probability = 0.8
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-resin-ion-exchange-beads",
        enabled = false,
        energy_required = 7.4 + 0.1,
        category = "chemistry",
        subgroup = "pm-gallium-ptm",
        order = "e",
        ingredients =
        {
            {type = "fluid", name = "pm-resin", amount = 80},
            {type = "fluid", name = "pm-butane-gas", amount = 20},
            {"sulfur", 2}
        },
        results = 
        {
            {"pm-ion-exchange-beads", 10}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-gallium-filtering",
        enabled = false,
        energy_required = 10 / 2,
        category = "pm-electrolysis",
        subgroup = "pm-gallium-ptm",
        order = "f",
        main_product = "pm-liquid-gallium",
        ingredients =
        {
            {type = "fluid", name = "pm-gallium-liqour", amount = 20},
            {"pm-ion-exchange-beads", 4 + 1}
        },
        results =
        {
            {type = "fluid", name = "pm-liquid-gallium", amount = 4 + 1},
            {
                name = "pm-ion-exchange-beads",
                catalyst_amount = 4 + 1,
                amount_min = 2,
                amount_max = 3 + 2
            }
        }
    }--[[@as data.RecipePrototype]]
})
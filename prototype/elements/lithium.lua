
data:extend({
    {
        type = "item",
        name = "pm-lithium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/lithium-chloride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/lithium-chloride.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/lithium-chloride-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-lithium-am",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-lithium-bromide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/lithium-bromide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/lithium-bromide.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/lithium-bromide-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-lithium-am",
        order = "x",
        stack_size = 100
    },

    {
        type = "recipe",
        name = "pm-calcium-brine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/calcium-brine.png",
        energy_required = 4,
        category = "pm-washing",
        subgroup = "pm-lithium-am",
        order = "A",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "pm-seawater", amount = 20},
            {"pm-calcium-chloride", 5},
            {"pm-sea-salt", 5}
        },
        results = 
        {
            {type = "fluid", name = "pm-brine", amount = 20}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-sodium-brine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sodium-brine.png",
        energy_required = 4,
        category = "pm-washing",
        subgroup = "pm-lithium-am",
        order = "a",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "pm-seawater", amount = 20},
            {"pm-sea-salt", 15}
        },
        results = 
        {
            {type = "fluid", name = "pm-brine", amount = 20}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-low-concentration-lithium-leeching",
        category = "pm-leaching",
        subgroup = "pm-lithium-am",
        order = "b",
        enabled = false,
        energy_required = 30,
        main_product = "pm-low-brine",
        ingredients = 
        {
            {type = "fluid", name = "pm-brine", amount = 150}
        },
        results = 
        {
            {type = "fluid", name = "pm-low-brine", amount = 150},
            {
                name = "pm-lithium-chloride",
                amount_min = 2,
                amount_max = 4,
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-medium-concentration-lithium-leeching",
        category = "pm-leaching",
        subgroup = "pm-lithium-am",
        order = "c",
        enabled = false,
        energy_required = 30,
        main_product = "pm-med-brine",
        ingredients = 
        {
            {type = "fluid", name = "pm-low-brine", amount = 150}
        },
        results = 
        {
            {type = "fluid", name = "pm-med-brine", amount = 150},
            {
                name = "pm-lithium-chloride",
                amount_min = 4,
                amount_max = 6,
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-high-concentration-lithium-leeching",
        category = "pm-leaching",
        subgroup = "pm-lithium-am",
        order = "d",
        enabled = false,
        energy_required = 30,
        main_product = "pm-high-brine",
        ingredients = 
        {
            {type = "fluid", name = "pm-med-brine", amount = 150}
        },
        results = 
        {
            {type = "fluid", name = "pm-high-brine", amount = 100},
            {
                name = "pm-lithium-chloride",
                amount_min = 8,
                amount_max = 12,
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-oversaturated-concentration-lithium-leeching",
        category = "pm-leaching",
        subgroup = "pm-lithium-am",
        order = "e",
        enabled = false,
        energy_required = 15,
        main_product = "pm-lithium-chloride",
        ingredients = 
        {
            {type = "fluid", name = "pm-high-brine", amount = 100}
        },
        results = 
        {
            --{
            --    type = "fluid", 
            --    name = "pm-low-brine", 
            --    amount_min = 10,
            --    amount_max = 30
            --},
            {"pm-lithium-chloride", 12}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lithium-chloride-electrolysis",
        category = "pm-electrolysis",
        subgroup = "pm-lithium-am",
        order = "f",
        enabled = false,
        energy_required = 5,
        main_product = "pm-lithium-ore",
        ingredients = 
        {
            {"pm-lithium-chloride", 5},
            {type = "fluid", name = "steam", amount = 10}
        },
        results = 
        {
            {"pm-lithium-ore", 5},
            {
                type = "fluid",
                name = "pm-chlorine",
                amount_min = 3,
                amount_max = 5
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lithium-hydroxide",
        category = "pm-electrolysis",
        subgroup = "pm-lithium-am",
        order = "g",
        enabled = false,
        energy_required = 1,
        main_product = "pm-lithium-hydroxide",
        ingredients =
        {
            {"pm-lithium-ore", 5},
            {"sulfur", 6},
            {"pm-calcite", 3}
        },
        results = 
        {
            {type = "fluid", name = "pm-lithium-hydroxide", amount = 10},
            {
                name = "pm-calcium-sulfate",
                amount_min = 1,
                amount_max = 3,
                probability = 0.5
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-lithium-bromide",
        category = "pm-moltening",
        subgroup = "pm-lithium-am",
        order = "h",
        enabled = false,
        energy_required = 2,
        ingredients = 
        {
            {type = "fluid", name = "pm-lithium-hydroxide", amount = 10},
            {type = "fluid", name = "pm-bromine", amount = 10}
        },
        results = 
        {
            {"pm-lithium-bromide", 5}
        }
    }--[[@as data.RecipePrototype]]
})
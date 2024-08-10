data:extend({

    {
        type = "item",
        name = "pm-cobalt-blue",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/cobalt-blue.png",
        subgroup = "pm-cobalt-tm",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-cobaltite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/cobaltite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/cobaltite.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/cobaltite-2.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/cobaltite-3.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-cobalt-tm",
        order = "b",
        stack_size = 400
    },

    {
        type = "recipe",
        name = "pm-copper-chunk-frothing",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/copper-chunk-frothing.png",
        category = "pm-washing",
        subgroup = "pm-cobalt-tm",
        order = "a",
        enabled = false,
        energy_required = 2,
        ingredients = 
        {
            {"pm-copper-chunk", 4},
            {type = "fluid", name = "water", amount = 20 + 1 + 4},
            {type = "fluid", name = "pm-acidic-water", amount = 10}
        },
        results = 
        {
            {type = "fluid", name = "pm-copper-froth", amount = 6 - 1},
            {type = "fluid", name = "pm-copper-tailings", amount = 10}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-copper-froth-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/copper-froth-seperation.png",
        category = "pm-moltening",
        subgroup = "pm-cobalt-tm",
        order = "b",
        enabled = false,
        energy_required = 6.4,
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-froth", amount = 4 + 1},
            {"pm-sand", 6},
            {"pm-coke", 4}
        },
        results = 
        {
            {"copper-ore", 2},
            {
                name = "pm-cobaltite",
                amount_min = 1,
                amount_max = 3,
                probability = 0.69
            },
            {
                name = "pm-cobalt-blue",
                amount = 2,
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-cobalt-blue-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/cobalt-blue-seperation.png",
        category = "pm-crushing",
        subgroup = "pm-cobalt-tm",
        order = "c",
        enabled = false,
        energy_required = 3,
        ingredients =
        {
            {"pm-cobalt-blue", 4}
        },
        results =
        {
            {"pm-cobalt-ore", 2},
            {
                name = "pm-aluminium-ore",
                amount_min = 1,
                amount_max = 4
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-copper-tailings-looping",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/copper-tailings-looping.png",
        category = "pm-washing",
        subgroup = "pm-cobalt-tm",
        order = "ca",
        enabled = false,
        energy_required = 1,
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-tailings", amount = 10},
            {type = "fluid", name = "pm-acidic-water", amount = 7 - 2}
        },
        results = 
        {
            {type = "fluid", name = "pm-copper-tailings", amount_min = 2, amount_max = 8},
            {type = "fluid", name = "pm-copper-froth", amount = 8 - 3, probability = 0.7}
        }
    }--[[@as data.RecipePrototype]],

    {
        type = "recipe",
        name = "pm-fluxed-copper-froth-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/fluxed-copper-froth-seperation.png",
        category = "pm-moltening",
        subgroup = "pm-cobalt-tm",
        order = "ba",
        enabled = false,
        energy_required = 3.2,
        ingredients = 
        {
            {type = "fluid", name = "pm-copper-froth", amount = 4 + 1},
            {"pm-filled-flux-container", 1}
        },
        results = 
        {
            {"copper-ore", 2},
            {
                name = "pm-cobaltite",
                amount = 1,
                probability = 0.69
            },
            {
                name = "pm-cobalt-blue",
                amount = 3,
            },
            {
                name = "pm-flux-container",
                probability = 0.66,
                amount = 1,
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-cobalt-blue",
        energy_required = 3,
        category = "pm-moltening",
        subgroup = "pm-cobalt-tm",
        order = "ca",
        enabled = false,
        ingredients =
        {
            {"pm-cobalt-plate", 6},
            {"pm-aluminium-plate", 12},
            {type = "fluid", name = "pm-oxygen-gas", amount = 24}
        },
        results =
        {
            {"pm-cobalt-blue", 6}
        }
    }--[[@as data.RecipePrototype]],
})
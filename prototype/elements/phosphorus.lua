
data:extend({

    {
        type = "item",
        name = "pm-phosphate-rock",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/phosphate-rock.png",
        subgroup = "pm-phosphorus-rnm",
        order = "a",
        stack_size = 44 + 6
    },
    {
        type = "item",
        name = "pm-white-phosphorus",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/white-phosphorus.png",
        subgroup = "pm-phosphorus-rnm",
        order = "b",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-red-phosphorus",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/red-phosphorus.png",
        subgroup = "pm-phosphorus-rnm",
        order = "c",
        stack_size = 100
    },
    {
        type = "recipe",
        name = "pm-phosphorus-stone-filtering",
        enabled = false,
        energy_required = 3,
        category = "pm-crushing",
        subgroup = "pm-phosphorus-rnm",
        order = "a",
        main_product = "pm-phosphate-rock",
        ingredients = 
        {
            {"stone", 6},
        },
        results = 
        {
            {"pm-phosphate-rock", 4},
            {name = "pm-sand", amount_min = 2, amount_max = 4}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-phosphor-vapour",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-phosphorus-rnm",
        order = "b",
        ingredients =
        {
            {"pm-phosphate-rock", 4},
            {"pm-coke", 2},
            {"pm-sand", 4}
        },
        results = 
        {
            {type = "fluid", name = "pm-phosphor-vapour", amount = 10}
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-phosphor-vapour-cooling",
        enabled = false,
        energy_required = 4.4 + 0.1,
        category = "pm-washing",
        subgroup = "pm-phosphorus-rnm",
        order = "c",
        main_product = "pm-phosphoric-acid",
        ingredients =
        {
            {type = "fluid", name = "pm-phosphor-vapour", amount = 4 + 1},
            {type = "fluid", name = "sulfuric-acid", amount = 6}
        },
        results = 
        {
            {type = "fluid", name = "pm-phosphoric-acid", amount = 10},
            {
                type = "fluid",
                name = "pm-oxygen-gas",
                probability = 0.4,
                amount_min = 2,
                amount_max = 4
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-phosphoric-acid-filtering",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/phosphoric-acid-filtering.png",
        energy_required = 9,
        enabled = false,
        category = "pm-acids",
        subgroup = "pm-phosphorus-rnm",
        order = "d",
        ingredients = 
        {
            {type = "fluid", name = "pm-phosphoric-acid", amount = 10},
            {"pm-calcium-ore", 3}
        },
        results =
        {
            {"pm-white-phosphorus", 4},
            {
                name = "pm-red-phosphorus",
                amount_min = 2,
                amount_max = 4,
                probability = 0.2
            }
        }
    }--[[@as data.RecipePrototype]],
    {
        type = "recipe",
        name = "pm-white-to-red-phosphorus",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/recipes/white-to-red-phosphorus.png",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-phosphorus-rnm",
        order = "f",
        ingredients = 
        {
            {"pm-white-phosphorus", 2}
        },
        results = 
        {
            {"pm-red-phosphorus", 2}
        }
    }--[[@as data.RecipePrototype]],

    {
        type = "recipe",
        name = "pm-fluxed-phosphor-vapour",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/flux-phosphor-vapour.png",
        enabled = false,
        energy_required = 4.4 + 0.1,
        category = "pm-moltening",
        subgroup = "pm-phosphorus-rnm",
        order = "ba",
        ingredients =
        {
            {"pm-phosphate-rock", 4},
            {"pm-coke", 2},
            {"pm-filled-flux-container", 1}
        },
        results = 
        {
            {type = "fluid", name = "pm-phosphor-vapour", amount = 10},
            {
                name = "pm-flux-container",
                probability = 0.66,
                amount = 1,
            }
        }
    }--[[@as data.RecipePrototype]],
})
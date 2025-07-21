local PM = require("library")

data:extend({

    {
        type = "item",
        name = "pm-coltan",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-tantalum-tm",
        order = "a",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-coltan-powder",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-tantalum-tm",
        order = "b",
        stack_size = 400,
    },

    {
        type = "recipe",
        name = "pm-coltan",
        enabled = false,
        energy_required = 6,
        category = "pm-acids",
        subgroup = "pm-tantalum-tm",
        order = "a",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-transition-metals-ore", 16),
            PM.ingredient("pm-chromic-acid", 25)
        },
        results = 
        {
            PM.product("pm-coltan", 4)
        }
    },
    {
        type = "recipe",
        name = "pm-coltan-powder",
        enabled = false,
        energy_required = 4,
        category = "pm-crushing",
        subgroup = "pm-tantalum-tm",
        order = "b",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-coltan", 4)
        },
        results =
        {
            PM.product("pm-coltan-powder", 10)
        }
    },
    {
        type = "recipe",
        name = "pm-tantalite-niobite-tailings",
        enabled = false,
        energy_required = 8,
        category = "pm-mixing",
        subgroup = "pm-tantalum-tm",
        order = "c",
        ingredients = 
        {
            PM.ingredient("pm-coltan-powder", 10),
            PM.ingredient("pm-sulfuric-acid", 5, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results = 
        {
            PM.product("pm-tantalite-niobite-tailings", 15, "fluid")
        }
    },

    --actual tantalum

})
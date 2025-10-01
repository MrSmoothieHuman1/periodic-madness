data:extend({

    {
        type = "recipe",
        name = "pm-hafnium-chunks",
        enabled = false,
        energy_required = 5,
        category = "pm-acids",
        subgroup = "pm-hafnium-tm",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-transition-metals-ore", 16),
            PM.ingredient("pm-titanium-oxide", 6),
            PM.ingredient("pm-zirconia", 6),
            PM.ingredient("pm-chromic-acid", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-hafnium-chunks", 8)
        }
    },
    {
        type = "recipe",
        name = "pm-hafnium-chloride",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
        subgroup = "pm-hafnium-tm",
        order = "b",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-hafnium-chunks", 4),
            PM.ingredient("pm-patina", 6),
            PM.ingredient("water", 50, "fluid"),
            PM.ingredient("pm-benzene", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-hafnium-chloride", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-impure-hafnium",
        enabled = false,
        energy_required = 10,
        category = "pm-moltening",
        subgroup = "pm-hafnium-tm",
        order = "c",
        allow_productivity = true,
        main_product = "pm-impure-hafnium",
        ingredient =
        {
            PM.ingredient("pm-hafnium-chloride", 3),
            PM.ingredient("pm-magnesium-plate", 3),
            PM.ingredient("steam", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-impure-hafnium", 2),
            PM.catalyst_range("pm-magnesium-oxide", 1, 3, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-hafnium-iodide",
        enabled = false,
        energy_required = 20,
        category = "chemistry",
        subgroup = "pm-hafnium-tm",
        order = "d",
        allow_productivity = true,
        main_product = "pm-hafnium-iodide",
        ingredients = 
        {
            PM.ingredient("pm-impure-hafnium", 4),
            PM.ingredient("pm-cobalt-catalyst", 3),
            PM.ingredient("pm-iodine-ore", 4),
            PM.ingredient("steam", 25, "fluid")
        },
        results = 
        {
            PM.product("pm-hafnium-iodide", 6),
            PM.catalyst_chance("pm-cobalt-catalyst", 3, 0.8, 2),
            PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 2),
        }
    },
    {
        type = "recipe",
        name = "pm-hafnium-ore",
        enabled = false,
        energy_required = 20,
        category = "pm-electrolysis",
        subgroup = "pm-hafnium-tm",
        order = "e",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-hafnium-iodide", 6),
            PM.ingredient("pm-tungsten-plate", 6),
            PM.ingredient("steam", 25, "fluid")
        },
        results = 
        {
            PM.product("pm-hafnium-ore", 4),
            PM.product_chance("pm-iodine-ore", 3, 0.5),
            PM.product_chance("pm-tungsten-plate", 4, 0.5)
        }
    }
})

data:extend({

    {
        type = "item",
        name = "pm-coltan",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/coltan.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/coltan.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/coltan-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/coltan-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/coltan-4.png", size = 64, scale = 0.5}
        },
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
        type = "item",
        name = "pm-tantalite-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/tantalite-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/tantalite-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/tantalite-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-tantalum-tm",
        order = "d",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-tantalum-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/tantalum-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/tantalum-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/tantalum-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/tantalum-ore-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/tantalum-ore-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-tantalum-tm",
        order = "e",
        stack_size = 200,
    },

    {
        type = "fluid",
        name = "pm-tantalite-niobite-tailings",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-tailings.png",
        subgroup = "pm-tantalum-tm",
        order = "c",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-niobite-waste-water",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/niobite-waste-water.png",
        subgroup = "pm-tantalum-tm",
        order = "g",
        default_temperature = 15,
        base_color = {r = 0.71, g = 0.859, b = 0.84},
        flow_color = {r = 0.71, g = 0.859, b = 0.84},
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
            PM.ingredient("pm-chromic-acid", 25, "fluid")
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
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-coltan-powder", 10),
            PM.ingredient("sulfuric-acid", 5, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results = 
        {
            PM.product("pm-tantalite-niobite-tailings", 15, "fluid")
        }
    },

    --actual tantalum

    {
        type = "recipe",
        name = "pm-tantalite-oxide",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-tantalum-tm",
        order = "d",
        main_product = "pm-tantalite-oxide",
        ingredients =
        {
            PM.ingredient("pm-tantalite-niobite-tailings", 7.5, "fluid"),
            PM.ingredient("pm-cobalt-catalyst", 2),
            PM.ingredient("pm-ammonia-gas", 15, "fluid")
        },
        results = 
        {
            PM.product("pm-tantalite-oxide", 5),
            PM.product_range_chance("pm-catalyst-container", 2, 0.2),
            PM.product_range_chance("pm-cobalt-catalyst", 2, 0.8)
        }
    },
    {
        type = "recipe",
        name = "pm-tantalum-ore",
        enabled = false,
        energy_required = 6,
        category = "pm-moltening",
        subgroup = "pm-tantalum-tm",
        order = "e",
        main_product = "pm-tantalum-ore",
        ingredients = 
        {
            PM.ingredient("pm-tantalite-oxide", 5),
            PM.ingredient("pm-calcium-ore", 3),
            PM.ingredient("pm-sodium", 3),
            PM.ingredient("steam", 25, "fluid")
        },
        results = 
        {
            PM.product("pm-tantalum-ore", 3),
            PM.product_chance("pm-niobium-ore", 3, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-tantalum-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-tantalum-tm",
        order = "f",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-tantalum-ore", 1)
        },
        results = 
        {
            PM.product("pm-tantalum-plate", 1)
        }
    },

    {
        type = "recipe",
        name = "pm-niobite-waste-water",
        enabled = false,
        energy_required = 5,
        category = "pm-mixing",
        subgroup = "pm-tantalum-tm",
        order = "g",
        ingredients =
        {
          PM.ingredient("pm-niobium-ore", 3),
          PM.ingredient("pm-sodium-hydroxide", 6, "fluid"),
          PM.ingredient("sulfuric-acid", 4, "fluid"),
          PM.ingredient("water", 20, "fluid"),
        },
        results =
        {
          PM.product("pm-niobite-waste-water", 7.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-niobite-waste-looping",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/ferrous-waste-water-looping.png",
        category = "pm-mixing",
        subgroup = "pm-tantalum-tm",
        order = "h",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
          PM.ingredient("pm-niobite-waste-water", 15, "fluid"),
          PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results =
        {
          PM.product_chance("pm-niobite-waste-water", 7.5, 0.75,"fluid"),
          PM.product_chance("water", 10, 0.25, "fluid")
        }
    },
})
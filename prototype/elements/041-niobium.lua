data:extend({

    {
        type = "item",
        name = "pm-niobite-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/niobite-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/niobite-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/niobite-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-niobium-tm",
        order = "a",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-niobium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/niobium-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/niobium-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/niobium-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/niobium-ore-3.png", size = 64, scale = 0.5},
            --{filename = "__periodic-madness__/graphics/icons/ores/niobium-ore-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-niobium-tm",
        order = "b",
        stack_size = 200,
    },

    {
        type = "fluid",
        name = "pm-tantalite-waste-water",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/tantalite-waste-water.png",
        subgroup = "pm-niobium-tm",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0.4, g = 0.46, b = 0.5},
        flow_color = {r = 0.4, g = 0.46, b = 0.5},
    },

    {
        type = "recipe",
        name = "pm-niobite-oxide",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-niobium-tm",
        order = "a",
        main_product = "pm-niobite-oxide",
        ingredients =
        {
            PM.ingredient("pm-tantalite-niobite-tailings", 7.5, "fluid"),
            PM.ingredient("pm-palladium-catalyst", 2),
            PM.ingredient("pm-ammonia-gas", 15, "fluid")
        },
        results = 
        {
            PM.product("pm-niobite-oxide", 5),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.2, 1),
            PM.catalyst_chance("pm-palladium-catalyst", 2, 0.8, 1)
        }
    },
    {
        type = "recipe",
        name = "pm-niobium-ore",
        enabled = false,
        energy_required = 6,
        category = "pm-moltening",
        subgroup = "pm-niobium-tm",
        order = "b",
        main_product = "pm-niobium-ore",
        ingredients = 
        {
            PM.ingredient("pm-niobite-oxide", 5),
            PM.ingredient("pm-aluminium-ore", 3),
            PM.ingredient("pm-ferrum", 6),
            PM.ingredient("steam", 25, "fluid")
        },
        results = 
        {
            PM.product("pm-niobium-ore", 3),
            PM.product_chance("pm-tantalum-ore", 3, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-niobium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-niobium-tm",
        order = "c",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-niobium-ore", 1)
        },
        results = 
        {
            PM.product("pm-niobium-plate", 1)
        }
    },

    {
        type = "recipe",
        name = "pm-tantalite-waste-water",
        enabled = false,
        energy_required = 5,
        category = "pm-mixing",
        subgroup = "pm-niobium-tm",
        order = "d",
        ingredients =
        {
          PM.ingredient("pm-tantalum-ore", 3),
          PM.ingredient("pm-sodium-hydroxide", 6, "fluid"),
          PM.ingredient("sulfuric-acid", 4, "fluid"),
          PM.ingredient("water", 20, "fluid"),
        },
        results =
        {
          PM.product("pm-tantalite-waste-water", 7.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-tantalite-waste-looping",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/ferrous-waste-water-looping.png",
        category = "pm-mixing",
        subgroup = "pm-niobium-tm",
        order = "e",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
          PM.ingredient("pm-tantalite-waste-water", 15, "fluid"),
          PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results =
        {
          PM.product_chance("pm-tantalite-waste-water", 7.5, 0.75,"fluid"),
          PM.product_chance("water", 10, 0.25, "fluid")
        }
    },
})
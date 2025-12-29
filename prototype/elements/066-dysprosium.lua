data:extend({

    {
        type = "item",
        name = "pm-tantalum-dysprosium-crucible",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "a",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-xenotime",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-dysprosium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-unprocessed-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-cooled-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "g",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-dysprosium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-dysprosium-la",
        order = "h",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-dysprosium-concentrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-dysprosium-la",
        order = "c",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-molten-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-dysprosium-la",
        order = "f",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-tantalum-dysprosium-crucible",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening", --should be in other furnaces? maybe?
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-crucible", 1),
            PM.ingredient("pm-tantalum-plate", 2),
            PM.ingredient("pm-molten-manganese", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-tantalum-dysprosium-crucible", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-xenotime",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ferrum", 6),
            PM.ingredient("pm-ion-exchange-beads", 6)
        },
        results =
        {
            PM.product("pm-xenotime", 5),
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-concentrate",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
        allow_productivity = true,
        main_product = "pm-dysprosium-concentrate",
        ingredients =
        {
            PM.ingredient("pm-xenotime", 4),
            PM.ingredient("pm-acidic-water", 25, "fluid"),
            PM.ingredient("sulfuric-acid", 5, "fluid")
        },
        results =
        {
            PM.product("pm-dysprosium-concentrate", 12.5, "fluid"),
            PM.product_chance("pm-holmium-fluoride", 1, 0.15),
            PM.product_chance("pm-holmium-fluoride", 1, 0.15),
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-fluoride",
        enabled = false,
        energy_required = 6,
        category = "pm-electrolysis",
        main_product = "pm-dysprosium-fluoride",
        ingredients = 
        {
            PM.ingredient("pm-dysprosium-concentrate", 12.5, "fluid"),
            PM.ingredient("pm-flourine", 4)
        },
        results =
        {
            PM.product("pm-dysprosium-fluoride", 4),
            PM.catalyst("pm-dysprosium-concentrate", 6, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-unprocessed-dysprosium",
        enabled = false,
        energy_required = 3,
        category = "chemistry",
        main_product = "pm-unprocessed-dysprosium",
        ingredients =
        {
            PM.ingredient("pm-dysprosium-fluoride", 8),
            PM.ingredient("pm-lithium-ore", 2),
            PM.ingredient("pm-calcium-ore", 2)
        },
        results =
        {
            PM.product("pm-unprocessed-dysprosium", 4),
            PM.product_chance("pm-lithium-ore", 1, 0.5),
            PM.product_chance("pm-calcium-ore", 1, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-molten-dysprosium",
        enabled = false,
        energy_required = 15,
        category = "pm-moltening",
        allow_productivity = true,
        main_product = "pm-molten-dysprosium",
        ingredients =
        {
            PM.ingredient("pm-unprocessed-dysprosium", 10),
            PM.ingredient("pm-industrial-noble-gas", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-molten-dysprosium", 5, "fluid"),
            PM.catalyst("pm-industrial-noble-gas", 25, 25, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-cooled-dysprosium",
        enabled = false,
        energy_required = 15,
        category = "pm-coldening",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-tantalum-dysprosium-crucible", 1),
            PM.ingredient("pm-molten-dysprosium", 5, "fluid")
        },
        results =
        {
            PM.product("pm-cooled-dysprosium", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-plate",
        enabled = false,
        energy_required = 5,
        main_product = "pm-dysprosium-plate",
        ingredients =
        {
            PM.ingredient("pm-cooled-dysprosium", 1)
        },
        results =
        {
            PM.product("pm-dysprosium-plate", 3),
            PM.product("pm-unprocessed-dysprosium", 2),
            PM.product_chance("pm-tantalum-dysprosium-crucible", 1, 0.5),
            PM.product_range("pm-combined-ore-slab", 0, 2)
        }
    }
})
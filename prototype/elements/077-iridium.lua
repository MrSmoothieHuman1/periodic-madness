data:extend({

    {
        type = "item",
        name = "pm-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-iridium-tm",
        order = "a",
        stack_size = 600
    },
    {
        type = "item",
        name = "pm-lightly-seperated-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-iridium-tm",
        order = "c",
        stack_size = 550
    },
    {
        type = "item",
        name = "pm-heavily-seperated-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-iridium-tm",
        order = "d",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-iridium-sponge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-iridium-tm",
        order = "g",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-iridium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-iridium-tm",
        order = "h",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/anode-sludge.png",
        subgroup = "pm-osmium-tm",
        order = "b",
        default_temperature = 15,
        base_color = {r = 0.25, g = 0.2, b = 0.1},
        flow_color = {r = 0.25, g = 0.2, b = 0.1}
    },
    {
        type = "fluid",
        name = "pm-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/filtered-anode-sludge.png",
        subgroup = "pm-osmium-tm",
        order = "e",
        default_temperature = 15,
        base_color = {r = 0.4, g = 0.35, b = 0.15},
        flow_color = {r = 0.4, g = 0.35, b = 0.15}
    },
    {
        type = "fluid",
        name = "pm-iridium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/iridium-filtered-anode-sludge.png",
        subgroup = "pm-iridium-tm",
        order = "f",
        default_temperature = 15,
        base_color = {r = 0.4, g = 0.3, b = 0.45},
        flow_color = {r = 0.4, g = 0.3, b = 0.45}
    },

    
    {
        type = "recipe",
        name = "pm-anode-mud",
        enabled = false,
        energy_required = 7,
        category = "pm-electrolysis",
        subgroup = "pm-osmium-tm",
        order = "a",
        main_product = "pm-anode-mud",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-patina", 8),
            PM.ingredient("pm-lead-froth", 5, "fluid"),
            PM.ingredient("sulfur", 6)
        },
        results =
        {
            PM.product("pm-anode-mud", 8),
            PM.product("pm-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-anode-sludge-seperation",
        enabled = false,
        energy_required = 7.5,
        category = "pm-mixing",
        subgroup = "pm-osmium-tm",
        order = "b",
        main_product = "pm-anode-mud",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-sodium-sulfite", 4),
            PM.ingredient("water", 20, "fluid")
        },
        results =
        {
            PM.product("pm-anode-mud", 4),
            PM.product_range("pm-acidic-water", 5, 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-lightly-seperated-anode-mud",
        enabled = false,
        energy_required = 4.5,
        category = "pm-mixing",
        order = "c",
        main_product = "pm-lightly-seperated-anode-mud",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-anode-mud", 8),
            PM.ingredient("pm-aqua-regia", 8, "fluid")
        },
        results = 
        {
            PM.product("pm-lightly-seperated-anode-mud", 6),
            PM.product_chance("pm-gold-chunks", 1, 0.12)
        }
    },
    {
        type = "recipe",
        name = "pm-heavily-seperated-anode-mud",
        enabled = false,
        energy_required = 6,
        category = "pm-acids",
        order = "d",
        main_product = "pm-heavily-seperated-anode-mud",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-lightly-seperated-anode-mud", 6),
            PM.ingredient("pm-chlorine", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-heavily-seperated-anode-mud", 4),
            PM.product_chance("pm-platinum-powder", 1, 0.15)
        }
    },
    {
        type = "recipe",
        name = "pm-filtered-anode-sludge",
        enabled = false,
        energy_required = 6,
        category = "pm-washing",
        order = "e",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-heavily-seperated-anode-mud", 4),
            PM.ingredient("sulfuric-acid", 2.5, "fluid"),
            PM.ingredient("water", 40, "fluid")
        },
        results = 
        {
            PM.product("pm-filtered-anode-sludge", 10, "fluid")
        }
    },

    --actual iridium chain
    {
        type = "recipe",
        name = "pm-iridium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-iridium-tm",
        order = "f",
        ingredients = 
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-sodium", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results = 
        {
            PM.product("pm-iridium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-iridium-sponge",
        enabled = false,
        energy_required = 10,
        category = "pm-mixing",
        subgroup = "pm-iridium-tm",
        order = "g",
        main_product = "pm-iridium-sponge",
        ingredients =
        {
            PM.ingredient("pm-iridium-filtered-anode-sludge", 6, "fluid"),
            PM.ingredient("water", 24, "fluid"),
            PM.ingredient("pm-benzene", 6, "fluid")
        },
        results =
        {
            PM.product("pm-iridium-sponge", 4),
            PM.product_range("pm-acidic-water", 6, 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-iridium-ore",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-iridium-tm",
        order = "h",
        ingredients =
        {
            PM.ingredient("pm-iridium-sponge", 4)
        },
        results =
        {
            PM.product("pm-iridium-ore", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-iridium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-iridium-tm",
        order = "i",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-iridium-ore", 1)
        },
        results = 
        {
            PM.product("pm-iridium-plate", 1)
        }
    }
})
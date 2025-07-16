local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-osmium-tm",
        order = "a",
        stack_size = 600
    },
    {
        type = "item",
        name = "pm-lightly-seperated-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-osmium-tm",
        order = "c",
        stack_size = 550
    },
    {
        type = "item",
        name = "pm-heavily-seperated-anode-mud",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-osmium-tm",
        order = "d",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-osmium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-osmium-tm",
        order = "g",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-osmium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-osmium-tm",
        order = "h",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-osmium-tm",
        order = "b",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },
    {
        type = "fluid",
        name = "pm-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-osmium-tm",
        order = "e",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },
    {
        type = "fluid",
        name = "pm-osmium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-osmium-tm",
        order = "f",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },

    {
        type = "recipe",
        name = "pm-anode-mud",
        enabled = false,
        energy_required = 5,
        category = "pm-electrolysis",
        subgroup = "pm-osmium-tm",
        order = "a",
        main_product = "pm-anode-mud",
        ingredients =
        {
            PM.ingredient("pm-patina", 8),
            PM.ingredient("pm-lead-froth", 5, "fluid"),
            PM.ingredient("sulfur", 6)
        },
        results =
        {
            PM.product("pm-anode-mud", 6),
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
        energy_required = 10,
        category = "pm-mixing",
        order = "c",
        main_product = "pm-lightly-seperated-anode-mud",
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
        energy_required = 10,
        category = "pm-acids",
        order = "d",
        main_product = "pm-heavily-seperated-anode-mud",
        ingredient = 
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
        energy_required = 7.5,
        category = "pm-acids",
        order = "e",
        ingredient =
        {
            PM.ingredient("pm-heavily-seperated-anode-mud", 4),
            PM.ingredient("pm-sulfuric-acid", 2.5, "fluid"),
            PM.ingredient("water", 40, "fluid")
        },
        results = 
        {
            PM.product("pm-filtered-anode-sludge", 10, "fluid")
        }
    },

    --actual osmium chain
    {
        type = "recipe",
        name = "pm-osmium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-osmium-tm",
        order = "f",
        ingredients = 
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-sodium", 5),
            PM.ingredient("pm-transition-metals-ore", 20)
        },
        results = 
        {
            PM.product("pm-osmium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-osmium-oxide",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-osmium-tm",
        order = "g",
        main_product = "pm-osmium-oxide",
        ingredients = 
        {
            PM.ingredient("pm-osmium-filtered-anode-sludge", 8, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 5)
        },
        results =
        {
            PM.product("pm-osmium-oxide", 4),
            PM.product_range("pm-ammonia-gas", 3, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-osmium-ore",
        enabled = false,
        energy_required = 5,
        category = "chemistry",
        subgroup = "pm-osmium-tm",
        order = "h",
        main_product = "pm-osmium-ore",
        ingredients = 
        {
            PM.ingredient("pm-osmium-oxide", 4),
            PM.ingredient("pm-benzene", 12, "fluid"),
            PM.ingredient("pm-acidic-water", 24, "fluid")
        },
        results = 
        {
            PM.product("pm-osmium-ore", 3),
            PM.product_range("pm-oxygen-gas", 6, 9, "fluid")
        }
    }
})
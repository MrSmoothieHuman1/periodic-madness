local PM = require("library")
data:extend({

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
            PM.ingredient("pm-transition-metals-ore", 16)
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
            PM.ingredient("pm-benzene", 10, "fluid"),
            PM.ingredient("pm-acidic-water", 24, "fluid")
        },
        results = 
        {
            PM.product("pm-osmium-ore", 3),
            PM.product_range("pm-oxygen-gas", 6, 9, "fluid")
        }
    }
})
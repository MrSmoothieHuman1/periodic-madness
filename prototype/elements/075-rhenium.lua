data:extend({

    {
        type = "item",
        name = "pm-molybdenum-porphyry-deposit",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhenium-tm",
        order = "a",
        stack_size = 450
    },
    {
        type = "item",
        name = "pm-rhenium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhenium-tm",
        order = "b",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-rhenium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhenium-tm",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-ammonium-perrhenate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhenium-tm",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-rhenium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-rhenium-tm",
        order = "f",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-perrhenic-acid",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
        subgroup = "pm-rhenium-tm",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },
    
    {
        type = "recipe",
        name = "pm-molybdenum-porphyry-deposit",
        enabled = false,
        energy_required = 12,
        category = "pm-acids",
        subgroup = "pm-rhenium-tm",
        order = "a",
        ingredients =
        {
            PM.ingredient("pm-transition-metals-ore", 14),
            PM.ingredient("pm-molybdenum-ore", 8),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-molybdenum-porphyry-deposit", 12)
        }
    },
    {
        type = "recipe",
        name = "pm-molybdenum-porphyry-seperation",
        enabled = false,
        energy_required = 6,
        category = "pm-crushing",
        subgroup = "pm-rhenium-tm",
        order = "b",
        main_product = "pm-rhenium-chunks",
        ingredients = 
        {
            PM.ingredient("pm-molybdenum-porphyry-deposit", 2)
        },
        results =
        {
            PM.product_chance("pm-rhenium-chunks", 1, 0.02),
            PM.product_chance("pm-molybdenite-powder", 3, 0.456),
            PM.product_chance("stone", 5, 0.524)
        }
    },
    {
        type = "recipe",
        name = "pm-rhenium-oxide",
        enabled = false,
        energy_required = 4.8,
        category = "smelting", --should be (also?) in reverbatory furnace
        subgroup = "pm-rhenium-tm",
        order = "c",
        main_product = "pm-rhenium-oxide",
        ingredients =
        {
            PM.ingredient("pm-rhenium-chunks", 3)
        },
        results =
        {
            PM.product("pm-rhenium-oxide", 2),
            PM.product_range("pm-ferrum", 1, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-perrhenic-acid",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
        subgroup = "pm-rhenium-tm",
        order = "d",
        main_product = "pm-perrhenic-acid",
        ingredients =
        {
            PM.ingredient("pm-rhenium-oxide", 2),
            PM.ingredient("pm-nitric-acid", 5, "fluid"),
            PM.ingredient("sulfuric-acid", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-perrhenic-acid", 20, "fluid"),
            PM.product("pm-ammonia-gas", 2, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-perrhenate",
        enabled = false,
        energy_required = 6,
        category = "pm-crystallisation",
        subgroup = "pm-rhenium-tm",
        order = "e",
        main_product = "pm-ammonium-perrhenate",
        ingredients =
        {
            PM.ingredient("pm-perrhenic-acid", 10, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 4),
            PM.ingredient("pm-coolant", 5, "fluid")
        },
        results =
        {
            PM.product("pm-ammonium-perrhenate", 5),
            PM.product("pm-hot-coolant", 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-rhenium-ore",
        enabled = false,
        energy_required = 6,
        category = "pm-moltening",
        subgroup = "pm-rhenium-tm",
        order = "f",
        ingredients =
        {
            PM.ingredient("pm-ammonium-perrhenate", 5),
            PM.ingredient("pm-hydrogen-gas", 17.5, "fluid")
        },
        results = 
        {
            PM.product("pm-rhenium-ore", 5),
        }
    }
})
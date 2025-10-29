data:extend({

    {
        type = "item",
        name = "pm-low-quality-quartzite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/low-quality-quartzite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-quartzite.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-quartzite-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-quartzite-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-quartzite-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-silicon-mt",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-high-quality-quartzite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/high-quality-quartzite.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-quartzite.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-quartzite-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-quartzite-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-silicon-mt",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-ferrosilicon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ferrosilicon.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ferrosilicon.png", size = 64, scale = 0.57},
            {filename = "__periodic-madness__/graphics/icons/ferrosilicon-2.png", size = 64, scale = 0.57},
        },
        subgroup = "pm-silicon-mt",
        order = "c",
        stack_size = 100
    },
    {
    type = "item",
    name = "pm-industrial-grade-silicon-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/silicon-ore-icon.png",
    pictures =
    {
        {filename = "__periodic-madness__/graphics/icons/ores/silicon-ore-icon.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/silicon-ore-icon-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/silicon-ore-icon-2.png", size = 64, scale = 0.5},
    },
    stack_size = 200,
    subgroup = "pm-silicon-mt",
    order = "ca",
    },
    {
        type = "item",
        name = "pm-low-quality-polysilicon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/low-polysilicon.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/low-polysilicon.png", size = 64, scale = 0.57},
            {filename = "__periodic-madness__/graphics/icons/low-polysilicon-2.png", size = 64, scale = 0.57},
        },
        subgroup = "pm-silicon-mt",
        order = "d",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-medium-quality-polysilicon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/med-polysilicon.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/med-polysilicon.png", size = 64, scale = 0.57},
            {filename = "__periodic-madness__/graphics/icons/med-polysilicon-2.png", size = 64, scale = 0.57},
        },
        subgroup = "pm-silicon-mt",
        order = "e",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-high-quality-polysilicon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/high-polysilicon.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/high-polysilicon.png", size = 64, scale = 0.57},
            {filename = "__periodic-madness__/graphics/icons/high-polysilicon-2.png", size = 64, scale = 0.57},
        },
        subgroup = "pm-silicon-mt",
        order = "f",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-polysilicon-rod",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/polysilicon-rod.png",
        subgroup = "pm-silicon-mt",
        order = "g",
        stack_size = 10
    },
    {
    type = "item",
    name = "pm-silicon-carbide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/silicon-carbide.png",
    subgroup = "pm-silcion-mt",
    order = "h",
    stack_size = 25
   },

    {
        type = "fluid",
        name = "pm-silane",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/silane.png",
        subgroup = "pm-silicon-mt",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0.968, g = 0.68, b = 1},
        flow_color = {r = 0.968, g = 0.68, b = 1}
    },
    {
        type = "fluid",
        name = "pm-silicon-tetrachloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/silicon-tetrachloride.png",
        subgroup = "pm-silicon-mt",
        order = "c",
        default_temperature = 15,
        auto_barrel = false,
        base_color = {r = 0.968, g = 0.68, b = 1},
        flow_color = {r = 0.968, g = 0.68, b = 1}
    },
    {
        type = "fluid",
        name = "pm-trichlorosilane",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/trichlorosilane.png",
        subgroup = "pm-silicon-mt",
        order = "a",
        default_temperature = 15,
        auto_barrel = false,
        base_color = {r = 0.968, g = 0.68, b = 1},
        flow_color = {r = 0.968, g = 0.68, b = 1}
    },
    {
        type = "fluid",
        name = "pm-dichlorosilane",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/dichlorosilane.png",
        subgroup = "pm-silicon-mt",
        order = "b",
        default_temperature = 15,
        auto_barrel = false,
        base_color = {r = 0.968, g = 0.68, b = 1},
        flow_color = {r = 0.968, g = 0.68, b = 1}
    },
    {
        type = "fluid",
        name = "pm-dimethyldichlorosilane",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/dimethyldichlorosilane.png",
        subgroup = "pm-silicon-mt",
        order = "ba",
        default_temperature = 15,
        auto_barrel = false,
        base_color = {r = 0.968, g = 0.68, b = 1},
        flow_color = {r = 0.968, g = 0.68, b = 1}
    },
    {
        type = "fluid",
        name = "pm-liquid-silicone",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/silicone.png",
        default_temperature = 15,
        subgroup = "pm-silicon-mt",
        order = "x",
        base_color = {r = 1, g = 0.7, b = 0.7},
        flow_color = {r = 1, g = 0.7, b = 0.7}
    },

    {
        type = "recipe",
        name = "pm-quartzite-leeching",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/quartzite-leeching.png",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        subgroup = "pm-silicon-mt",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-chromic-acid", 20, "fluid"),
            PM.ingredient("pm-metalloid-ore", 16)
        },
        results =
        {
            PM.product_range("pm-high-quality-quartzite", 2, 6),
            PM.product_range("pm-low-quality-quartzite", 2, 6),
        }
    },
    {
        type = "recipe",
        name = "pm-ferrosilicon",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/high-quartzite-seperation.png",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "b",
        main_product = "pm-ferrosilicon",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-high-quality-quartzite", 6),
            PM.ingredient("pm-filled-flux-container", 3),
            PM.ingredient("pm-carbon", 4),
            PM.ingredient("pm-ferrum", 9)
        },
        results =
        {
            PM.product("pm-ferrosilicon", 3),
            PM.product_range("pm-carbon-monoxide", 5, 8, "fluid"),
            PM.catalyst_range("pm-filled-flux-container", 0, 2, 2),
            PM.catalyst_range("pm-flux-container", 0, 1, 1)
        }
    },
    {
        type = "recipe",
        name = "pm-low-quality-quartzite-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/low-quartzite-seperation.png",
        enabled = false,
        energy_required = 6,
        category = "pm-crushing",
        subgroup = "pm-silicon-mt",
        order = "c",
        ingredients =
        {
            PM.ingredient("pm-low-quality-quartzite", 6),
        },
        results =
        {
            PM.product_range_chance("pm-industrial-grade-silicon-ore", 1, 4, 0.5),
            PM.product_range("pm-ferrum", 1, 3),
            PM.product_range("pm-patina", 2, 4),
        }
    },
    {
        type = "recipe",
        name = "pm-trichlorosilane",
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "d",
        main_product = "pm-trichlorosilane",
        ingredients =
        {
            PM.ingredient("pm-ferrosilicon", 3),
            PM.ingredient("pm-hydrochloric-acid", 60, "fluid")
        },
        results =
        {
            PM.product("pm-trichlorosilane", 10, "fluid"),
            PM.product_range("pm-silicon-tetrachloride", 5, 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-silicon-tetrachloride-handling",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/silicon-tetrachloride-handling.png",
        enabled = false,
        energy_required = 9,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "da",
        ingredients =
        {
            PM.ingredient("pm-silicon-tetrachloride", 10, "fluid"),
            PM.ingredient("pm-hydrogen-gas", 5, "fluid"),
            PM.ingredient("pm-vanadium-oxide-catalyst", 2)
        },
        results =
        {
            PM.product_range("pm-trichlorosilane", 4, 8, "fluid"),
            PM.product_range("pm-dichlorosilane", 2, 4, "fluid"),
            PM.catalyst_chance("pm-vanadium-oxide-catalyst", 2, 0.85, 1),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.15, 1)
        }
    },
    {
        type = "recipe",
        name = "pm-silane",
        enabled = false,
        energy_required = 3,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "e",
        main_product = "pm-silane",
        ingredients =
        {
            PM.ingredient("pm-trichlorosilane", 10, "fluid"),
            PM.ingredient("pm-aluminium-plate", 10) --catalyst for hard mode
        },
        results =
        {
            PM.product("pm-silane", 10, "fluid"),
            PM.product_range("pm-silicon-tetrachloride", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-industrial-grade-silicon-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/industrial-grade-silicon.png",
        enabled = false,
        energy_required = 3,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "f",
        main_product = "pm-industrial-grade-silicon-ore",
        ingredients =
        {
            PM.ingredient("pm-silane", 5, "fluid"),
            PM.ingredient("pm-argon-gas", 15, "fluid")
        },
        results =
        {
            PM.product_range("pm-industrial-grade-silicon-ore", 3, 5),
            PM.product_range_chance("pm-argon-gas", 2, 8, 0.65, "fluid"),
            PM.product_range("pm-hydrogen-gas", 4, 8, "fluid")
        }
    },

    {
        type = "recipe",
        name = "pm-low-quality-polysilicon",
        enabled = false,
        energy_required = 5,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "g",
        allow_productivity = true,
        main_product = "pm-low-quality-polysilicon",
        ingredients =
        {
            PM.ingredient("pm-silane", 15, "fluid"),
            PM.ingredient("pm-nitrogen-gas", 60, "fluid"),
            PM.ingredient("pm-industrial-grade-silicon-ore", 10)
        },
        results =
        {
            PM.product_chance("pm-low-quality-polysilicon", 2, 0.95),
            PM.product_range("pm-industrial-grade-silicon-ore", 0, 5)
        }
    },
    {
        type = "recipe",
        name = "pm-medium-quality-polysilicon",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "h",
        allow_productivity = true,
        main_product = "pm-medium-quality-polysilicon",
        ingredients =
        {
            PM.ingredient("pm-silane", 10, "fluid"),
            PM.ingredient("pm-nitrogen-gas", 60, "fluid"),
            PM.ingredient("pm-low-quality-polysilicon", 5)
        },
        results =
        {
            PM.product_chance("pm-medium-quality-polysilicon", 2, 0.85),
            PM.product_range("pm-low-quality-polysilicon", 0, 5)
        }
    },
    {
        type = "recipe",
        name = "pm-high-quality-polysilicon",
        enabled = false,
        energy_required = 15,
        category = "chemistry",
        subgroup = "pm-silicon-mt",
        order = "i",
        allow_productivity = true,
        main_product = "pm-high-quality-polysilicon",
        ingredients =
        {
            PM.ingredient("pm-silane", 5, "fluid"),
            PM.ingredient("pm-nitrogen-gas", 60, "fluid"),
            PM.ingredient("pm-medium-quality-polysilicon", 5)
        },
        results =
        {
            PM.product_chance("pm-high-quality-polysilicon", 2, 0.75),
            PM.product_range("pm-medium-quality-polysilicon", 0, 5)
        }
    },
    {
        type = "recipe",
        name = "pm-polysilicon-rod",
        enabled = false,
        energy_required = 15,
        category = "pm-moltening",
        subgroup = "pm-silicon-mt",
        order = "j",
        ingredients =
        {
            PM.ingredient("pm-high-quality-polysilicon", 4),
            PM.ingredient("steam", 75, "fluid"),
        },
        results =
        {
            PM.product("pm-polysilicon-rod", 1)
        }
    }
})
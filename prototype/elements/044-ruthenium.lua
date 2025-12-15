data:extend({

    {
        type = "item",
        name = "pm-ammonium-ruthenium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ammonium-ruthenium-chloride.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ammonium-ruthenium-chloride.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ammonium-ruthenium-chloride-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-ruthenium-tm",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-ruthenium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/ruthenium-ore.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/ruthenium-ore.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/ruthenium-ore-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/ruthenium-ore-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-ruthenium-tm",
        order = "c",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-ruthenium-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ruthenium-sulfide.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ruthenium-sulfide.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ruthenium-sulfide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-ruthenium-tm",
        order = "e",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-ruthenium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/ruthenium-filtered-anode-sludge.png",
        subgroup = "pm-osmium-tm",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.36, g = 0.3, b = 0.55},
        flow_color = {r = 0.36, g = 0.3, b = 0.55}
    },

    {
        type = "recipe",
        name = "pm-ruthenium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        category = "pm-washing",
        subgroup = "pm-ruthenium-tm",
        order = "a",
        ingredients =
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-palladium-ore", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results = 
        {
            PM.product("pm-ruthenium-filtered-anode-sludge", 12, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-ruthenium-chloride",
        --[[icons = 
        {
          {
            icon = "__periodic-madness__/graphics/icons/ammonium-ruthenium-chloride.png",
            icon_size = 64,
          },
          {
            icon = "__periodic-madness__/graphics/icons/fluids/benzene.png",
            icon_size = 64,
            shift = {8, -8},
            scale = 0.33
          },
        },--]]
        enabled = false,
        energy_required = 15,
        category = "chemistry",
        subgroup = "pm-ruthenium-tm",
        order = "b",
        ingredients =
        {
            PM.ingredient("pm-ruthenium-filtered-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 3),
            PM.ingredient("pm-benzene", 10, "fluid")
        },
        results =
        {
            PM.product("pm-ammonium-ruthenium-chloride", 4),
        }
    },
    {
        type = "recipe",
        name = "pm-acetone-ammonium-ruthenium-chloride",
        icons =
        {
          {
            icon = "__periodic-madness__/graphics/icons/ammonium-ruthenium-chloride.png",
            icon_size = 64,
          },
          {
            icon = "__periodic-madness__/graphics/icons/fluids/acetone.png",
            icon_size = 64,
            shift = {8, -8},
            scale = 0.33
          },
        },
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-ruthenium-tm",
        order = "ba",
        ingredients =
        {
            PM.ingredient("pm-ruthenium-filtered-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 3),
            PM.ingredient("pm-acetone", 5, "fluid")
        },
        results =
        {
            PM.product("pm-ammonium-ruthenium-chloride", 4),
        }
    },
    {
        type = "recipe",
        name = "pm-ruthenium-ore",
        enabled = false,
        energy_required = 7.5,
        category = "chemistry",
        subgroup = "pm-ruthenium-tm",
        order = "c",
        main_product = "pm-ruthenium-ore",
        ingredients =
        {
            PM.ingredient("pm-ammonium-ruthenium-chloride", 4),
            PM.ingredient("pm-hydrogen-gas", 20, "fluid"),
            PM.ingredient("pm-cobalt-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-ruthenium-ore", 3),
            PM.product_range("pm-ammonia-gas", 1.5, 2, "fluid"),
            PM.product_chance("pm-cobalt-catalyst", 2, 0.85),
            PM.product_chance("pm-catalyst-container", 2, 0.15)
        }
    },
    {
        type = "recipe",
        name = "pm-ruthenium-plate",
        enabled = false,
        energy_required = 6.4,
        category = "smelting",
        subgroup = "pm-ruthenium-tm",
        order = "d",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-ruthenium-ore", 1)
        },
        results = 
        {
            PM.product("pm-ruthenium-plate", 1)
        }
    },

    {
        type = "recipe",
        name = "pm-ruthenium-sulfide",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        ingredients = 
        {
            PM.ingredient("pm-ruthenium-plate", 4),
            PM.ingredient("sulfur", 8)
        },
        results = 
        {
            PM.product("pm-ruthenium-sulfide", 3)
        }
    }
})
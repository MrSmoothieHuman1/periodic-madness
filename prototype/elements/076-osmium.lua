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
        icon = "__periodic-madness__/graphics/icons/fluids/osmium-filtered-anode-sludge.png",
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
        order = "a",
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
        order = "b",
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
        order = "c",
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
    },
    {
        type = "recipe",
        name = "pm-molten-osmiridium",
        icons =
        {
          {
            icon = "__periodic-madness__/graphics/icons/fluids/molten-osmiridium.png",
            shift = { 0, 1.5 }
          },
          {
            icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
            icon_size = 64,
            scale = 0.33,
            shift = {0, -7.5}
          },
        },
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-osmium-tm",
        order = "d",
        ingredients =
        {
            PM.ingredient("pm-osmium-ore", 2),
            PM.ingredient("pm-iridium-plate", 2),
            PM.ingredient("pm-ruthenium-ore", 2),
            PM.ingredient("steam", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-molten-osmiridium", 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-osmiridium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/glass-cooling.png",
        category = "pm-coldening",
        subgroup = "pm-osmium-tm",
        order = "e",
        energy_required = 9,
        enabled = false,
        allow_decomposition = false,
        ingredients =
        {
          PM.ingredient("pm-molten-osmiridium", 5, "fluid"),
          PM.ingredient("pm-crucible", 1),
        },
        results =
        {
          PM.product("pm-osmiridium-plate", 5),
          PM.product_chance("pm-crucible", 1, 0.75)
        }
    },

})
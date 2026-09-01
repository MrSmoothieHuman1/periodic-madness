data:extend({

    {
        type = "item",
        name = "pm-rhodium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rhodium-chunks.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/rhodium-chunks.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhodium-chunks-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhodium-tm",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-rhodium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rhodium-ore.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/rhodium-ore.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhodium-ore-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhodium-ore-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhodium-tm",
        order = "c",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-rhodium-filtered-anode-sludge",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/rhodium-filtered-anode-sludge.png",
        subgroup = "pm-rhodium-tm",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.353, b = 0.478, g = 0.522},
        flow_color = {r = 0.251, g = 0.378, b = 0.421}
    },

    {
        type = "recipe",
        name = "pm-rhodium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        categories = {"pm-washing"},
        subgroup = "pm-rhodium-tm",
        order = "a",
        crafting_machine_tint =
        {
            primary = {r = 0.353, b = 0.478, g = 0.522}
        },
        ingredients =
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-nickel-ore", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results =
        {
            PM.product("pm-rhodium-filtered-anode-sludge", "fluid"):amount(12):done()
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-chunks",
        enabled = false,
        energy_required = 7.5,
        categories = {"chemistry"},
        subgroup = "pm-rhodium-tm",
        order = "b",
        allow_productivity = true,
        main_product = "pm-rhodium-chunks",
        ingredients =
        {
            PM.ingredient("pm-rhodium-filtered-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-borax", 3),
            PM.ingredient("pm-platinum-plate", 2)
        },
        results = 
        {
            PM.product("pm-rhodium-chunks"):amount(4):done(),
            PM.product("pm-platinum-plate"):amount(1, 2):chance(0.45):done()
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-ore",
        enabled = false,
        energy_required = 10,
        categories = {"pm-crushing"},
        subgroup = "pm-rhodium-tm",
        order = "c",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-rhodium-chunks", 4),
        },
        results = 
        {
            PM.product("pm-rhodium-ore"):amount(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-rhodium-plate",
        enabled = false,
        energy_required = 6.4,
        categories = {"smelting"},
        subgroup = "pm-rhodium-tm",
        order = "d",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-rhodium-ore", 1)
        },
        results = 
        {
            PM.product("pm-rhodium-plate"):amount(1):done()
        }
    },
})
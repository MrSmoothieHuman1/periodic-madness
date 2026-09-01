data:extend({

    {
        type = "item",
        name = "pm-osmium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/osmium-oxide.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/osmium-oxide.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/osmium-oxide-2.png", size = 64, scale = 0.5},
          --{filename = "__periodic-madness__/graphics/icons/ores/osmium-ore-3.png", size = 64, scale = 0.5},
          --{filename = "__periodic-madness__/graphics/icons/ores/osmium-ore-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-osmium-tm",
        order = "g",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-osmium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/osmium-ore.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/osmium-ore.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/osmium-ore-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/osmium-ore-3.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/osmium-ore-4.png", size = 64, scale = 0.5}
        },
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
        base_color = {r = 0.4, g = 0.4, b = 0.4},
        flow_color = {r = 0.25, g = 0.25, b = 0.25}
    },

    {
        type = "recipe",
        name = "pm-osmium-filtered-anode-sludge",
        enabled = false,
        energy_required = 15,
        categories = {"pm-washing"},
        subgroup = "pm-osmium-tm",
        order = "a",
       crafting_machine_tint =
        {
            primary = {r = 0.4, g = 0.4, b = 0.4}
        },
        ingredients = 
        {
            PM.ingredient("pm-filtered-anode-sludge", 10, "fluid"),
            PM.ingredient("pm-sodium", 5),
            PM.ingredient("pm-transition-metals-ore", 16)
        },
        results = 
        {
            PM.product("pm-osmium-filtered-anode-sludge", "fluid"):amount(12):done()
        }
    },
    {
        type = "recipe",
        name = "pm-osmium-oxide",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-osmium-tm",
        order = "b",
        main_product = "pm-osmium-oxide",
        ingredients = 
        {
            PM.ingredient("pm-osmium-filtered-anode-sludge", 12, "fluid"),
            PM.ingredient("pm-ammonium-chloride", 5)
        },
        results =
        {
            PM.product("pm-osmium-oxide"):amount(4):done(),
            PM.product("pm-ammonia-gas", "fluid"):amount(3, 5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-osmium-ore",
        enabled = false,
        energy_required = 5,
        categories = {"chemistry"},
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
            PM.product("pm-osmium-ore"):amount(3):done(),
            PM.product("pm-oxygen-gas", "fluid"):amount(6, 9):done()
        }
    },
    {
        type = "recipe",
        name = "pm-acetone-osmium-ore",
        icons =
        {
          {
            icon = "__periodic-madness__/graphics/icons/ores/osmium-ore.png",
            icon_size = 64,
          },
          {
            icon = "__periodic-madness__/graphics/icons/fluids/acetone.png",
            icon_size = 64,
            shift = {8, -8},
            draw_background = true,
            scale = 0.4
          },
        },
        enabled = false,
        energy_required = 2.5,
        categories = {"chemistry"},
        subgroup = "pm-osmium-tm",
        order = "ca",
        main_product = "pm-osmium-ore",
        ingredients = 
        {
            PM.ingredient("pm-osmium-oxide", 4),
            PM.ingredient("pm-acetone", 5, "fluid"),
            PM.ingredient("pm-acidic-water", 24, "fluid")
        },
        results = 
        {
            PM.product("pm-osmium-ore"):amount(3):done(),
            PM.product("pm-oxygen-gas", "fluid"):amount(6, 9):done()
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
            icon = "__periodic-madness__/graphics/icons/ores/osmium-ore.png",
            icon_size = 64,
            scale = 0.33,
            shift = {0, -7.5}
          },
        },
        enabled = false,
        energy_required = 9,
        categories = {"pm-moltening"},
        subgroup = "pm-osmium-tm",
        order = "d",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-osmium-ore", 2),
            PM.ingredient("pm-iridium-plate", 2),
            PM.ingredient("pm-ruthenium-plate", 2),
            PM.ingredient("steam", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-molten-osmiridium", "fluid"):amount(5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-osmiridium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/glass-cooling.png",
        categories = {"pm-coldening"},
        subgroup = "pm-osmium-tm",
        order = "e",
        energy_required = 9,
        enabled = false,
        allow_productivity = true,        
        main_product = "pm-osmiridium-plate",
        ingredients =
        {
          PM.ingredient("pm-molten-osmiridium", 5, "fluid"),
          PM.ingredient("pm-crucible", 1),
        },
        results =
        {
          PM.product("pm-osmiridium-plate"):amount(5):done(),
          PM.product("pm-crucible"):amount(1):chance(0.75):done()
        }
    },

})
data:extend({

    {
        type = "item",
        name = "pm-dolomite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/dolomite.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/dolomite-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "a",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-magnesium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-magnesium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-oxide.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-oxide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "c",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-magnesium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/magnesium-chloride.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/magnesium-chloride-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-calcium-silicate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/calcium-silicate.png",
        subgroup = "pm-magnesium-aem",
        order = "e",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-magnesium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/magnesium-ore-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-magnesium-aem",
        order = "c",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-dolomite",
        enabled = false,
        energy_required = 12,
        categories = {"pm-acids"},
        subgroup = "pm-magnesium-aem",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 16),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-dolomite"):amount(4, 10):done()
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-hydroxide",
        crafting_machine_tint = 
        {
            primary = {0.929, 0.831, 0.851}
        },
        enabled = false,
        energy_required = 20,
        categories = {"pm-mixing"},
        subgroup = "pm-magnesium-aem",
        order = "b",
        main_product = "pm-magnesium-hydroxide",
        ingredients =
        {
            PM.ingredient("pm-seawater", 200, "fluid"),
            PM.ingredient("pm-lithium-hydroxide", 50, "fluid"),
            PM.ingredient("pm-dolomite", 8)
        },
        results =
        {
            PM.product("pm-magnesium-hydroxide", "fluid"):amount(20, 24):done(),
            PM.product("pm-calcium-hydroxide-slurry", "fluid"):amount(2, 10):chance(0.65):done(),
            PM.product("pm-calcite"):amount(0, 6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-oxide",
        enabled = false,
        energy_required = 5,
        categories = {"pm-electrolysis"},
        subgroup = "pm-magnesium-aem",
        order = "c",
        allow_productivity = true,
        main_product = "pm-magnesium-oxide",
        ingredients =
        {
            PM.ingredient("pm-magnesium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-calcium-ore", 10),
            PM.ingredient("pm-carbon-dioxide-gas", 25, "fluid")
        },
        results =
        {
            PM.product("pm-magnesium-oxide"):amount(4):done(),
            PM.product("pm-carbon-trioxide", "fluid"):amount(16, 20):done()
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-ore",
        crafting_machine_tint = 
        {
            primary = {0.89, 0.796, 0.886},
            secondary = {0.612, 0.369, 0.204},
            tertiary = {0.89, 0.796, 0.886, 0.5},
            quaternary = {0.89, 0.86, 0.886}
        },
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-magnesium-aem",
        order = "d",
        main_product = "pm-magnesium-ore",
        ingredients =
        {
            PM.ingredient("pm-magnesium-oxide", 4),
            PM.ingredient("pm-stainless-steel-alloy", 8),
        },
        results =
        {
            PM.product("pm-magnesium-ore"):amount(4, 6):done(),
            PM.product("pm-ferrum"):amount(5):chance(0.85):done(),
            PM.product("pm-calcium-silicate"):amount(4, 10):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-silicon-based-magnesium-ore",
        crafting_machine_tint = 
        {
            primary = {0.89, 0.796, 0.886},
            secondary = {0.839, 0.839, 0.722},
            tertiary = {0.89, 0.796, 0.886, 0.5},
            quaternary = {0.89, 0.86, 0.886}
        },
        enabled = false,
        energy_required = 8,
        categories = {"chemistry"},
        subgroup = "pm-magnesium-aem",
        order = "da",
        main_product = "pm-magnesium-ore",
        ingredients =
        {
            PM.ingredient("pm-magnesium-oxide", 4),
            PM.ingredient("pm-industrial-grade-silicon-ore", 4),
            PM.ingredient("iron-plate", 2)
        },
        results =
        {
            PM.product("pm-magnesium-ore"):amount(4, 8):done(),
            PM.product("pm-calcium-silicate"):amount(4, 6):chance(0.9):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-calcium-silicate-seperation",
        crafting_machine_tint = 
        {
            primary = {0.839, 0.839, 0.722},
            secondary = {0.314, 0.282, 0.322},
            quaternary = {0.839, 0.839, 0.722}
        },
        enabled = false,
        energy_required = 4,
        categories = {"pm-acids"},
        subgroup = "pm-magnesium-aem",
        order = "e",
        main_product = "pm-ferrosilicon",
        ingredients =
        {
            PM.ingredient("pm-sodium-sulfite", 6),
            PM.ingredient("pm-calcium-silicate", 12)
        },
        results =
        {
            PM.product("pm-ferrosilicon"):amount(1, 4):chance(0.5):done(),
            PM.product("pm-calcite"):amount(2, 5):chance(0.66):done()
        }
    },
    {
        type = "recipe",
        name = "pm-molten-magnesium",
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/fluids/molten-magnesium.png",
                icon_size = 64,
                shift = { 0, 1.5 }
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/magnesium-ore.png",
                icon_size = 64,
                scale = 0.33,
                shift = {0, -7.5}
            },
        },
        enabled = false,
        energy_required = 9.6,
        categories = {"pm-moltening"},
        subgroup = "pm-magnesium-aem",
        order = "f",
        ingredients = 
        {
            PM.ingredient("pm-magnesium-ore", 6),
            PM.ingredient("steam", 25, "fluid")
        },
        results =
        {
            PM.product("pm-molten-magnesium", "fluid"):amount(8):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-plate",
        enabled = false,
        energy_required = 9.6,
        categories = {"pm-coldening"},
        subgroup = "pm-magnesium-aem",
        order = "g",
        main_product = "pm-magnesium-plate",
        ingredients = 
        {
            PM.ingredient("pm-molten-magnesium", 4, "fluid"),
            PM.ingredient("pm-crucible", 1),
        },
        results = 
        {
            PM.product("pm-magnesium-plate"):amount(4):done(),
            PM.product("pm-crucible"):amount(1):chance(0.8):done()
        }
    },

    {
        type = "recipe",
        name = "pm-magnesium-carbonate",
        crafting_machine_tint = 
        {
            primary = {0.89, 0.863, 0.867}
        },
        enabled = false,
        energy_required = 6,
        categories = {"pm-mixing"},
        subgroup = "pm-magnesium-aem",
        order = "f",
        main_product = "pm-magnesium-carbonate",
        ingredients = 
        {
            PM.ingredient("pm-magnesium-plate", 2),
            PM.ingredient("pm-sodium-bicarbonate", 4)
        },
        results =
        {
            PM.product("pm-magnesium-carbonate"):amount(2):done(),
            PM.product("pm-carbon-dioxide-gas", "fluid"):amount(2, 6):done(),
            PM.product("water", "fluid"):amount(0, 4):done()
        }
    },
    {
        type = "recipe",
        name = "pm-magnesium-chloride",
        crafting_machine_tint = 
        {
            primary = {0.929, 0.82, 0.902},
            secondary = {0.565, 0.929, 0.545},
            tertiary = {0.929, 0.82, 0.902, 0.5},
            quaternary = {0.565, 0.929, 0.545}
        },
        enabled = false,
        energy_required = 6,
        categories = {"chemistry"},
        subgroup = "pm-magnesium-aem",
        order = "g",
        ingredients =
        {
            PM.ingredient("pm-magnesium-carbonate", 2),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-magnesium-chloride"):amount(2):done(),
        }
    }
})
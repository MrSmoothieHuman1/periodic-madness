data:extend({

    {
        type = "item",
        name = "pm-barium-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-sulfate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-barium-radium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/ores/barium-radium-carbonate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-radium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/radium-sulfate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-2.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-3.png", size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-sulfate-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 150
    },
    {
        type = "item",
        name = "pm-radium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/radium-chloride.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/radium-chloride.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/radium-chloride-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-radium-aem",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-radium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/radium-ore.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/radium-ore-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-radium-aem",
        order = "e",
        protons = 88,
        neutrons = 138,
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-barium-radium-sulfate",
        enabled = false,
        energy_required = 8,
        categories = {"pm-acids"},
        subgroup = "pm-radium-aem",
        order = "b",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 16),
            PM.ingredient("pm-chromic-acid", 20, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 10, "fluid")
        },
        results =
        {
            PM.product("pm-barium-radium-sulfate"):amount(8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate",
        enabled = false,
        energy_required = 6,
        categories = {"chemistry"},
        subgroup = "pm-radium-aem",
        order = "c",
        main_product = "pm-barium-radium-carbonate",
        ingredients =
        {
            PM.ingredient("pm-barium-radium-sulfate", 4),
            PM.ingredient("pm-sodium-bicarbonate", 4),
            PM.ingredient("pm-cobalt-catalyst", 2)
        },
        results =
        {
            PM.product("pm-barium-radium-carbonate"):amount(2):done(),
            PM.product("pm-barium-radium-carbonate"):amount(1):chance(0.75):done(),
            PM.product("pm-cobalt-catalyst"):amount(2):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-barium-radium-carbonate-seperation",
        crafting_machine_tint =
        {
            primary = {0.671, 0.82, 0.58}
        },
        enabled = false,
        energy_required = 3,
        categories = {"pm-mixing"},
        subgroup = "pm-radium-aem",
        order = "d",
        main_product = "pm-radium-sulfate",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-barium-radium-carbonate", 2),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid")
        },
        results =
        {
            PM.product("pm-barium-nitrate"):amount(1):chance(0.33):done(),
            PM.product("pm-radium-sulfate"):amount(1):chance(0.34):done(),
            PM.product("pm-barium-radium-sulfate"):amount(1):chance(0.33):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-radium-chloride",
        enabled = false,
        energy_required = 7.5,
        categories = {"chemistry"},
        subgroup = "pm-radium-aem",
        order = "e",
        main_product = "pm-radium-chloride",
        ingredients = 
        {
            PM.ingredient("pm-radium-sulfate", 1),
            PM.ingredient("pm-hydrochloric-acid", 5, "fluid")
        },
        results = 
        {
            PM.product("pm-radium-chloride"):amount(2):done(),
            PM.product("pm-sulfur-dichloride", "fluid"):amount(0, 4):done()
        }
    },
    {
        type = "recipe",
        name = "pm-radium-ore",
        enabled = false,
        energy_required = 5,
        categories = {"pm-washing"},
        subgroup = "pm-radium-aem",
        order = "f",
        main_product = "pm-radium-ore",
        allow_productivity = true,
        crafting_machine_tint = 
        {
            primary = {0.325, 0.8, 0.737}
        },
        ingredients = 
        {
            PM.ingredient("pm-radium-chloride", 2),
            PM.ingredient("pm-coolant", 1, "fluid"),
        },
        results = 
        {
            PM.product("pm-radium-ore"):amount(2):done(),
            PM.product("pm-radium-sulfate"):amount(1):chance(0.5):done(),
            PM.product("pm-hot-coolant", "fluid"):amount(1):catalyst(1):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-sulfur-dichloride-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dichloride-seperation.png",
        crafting_machine_tint = 
        {
            primary = {0.82, 0.851, 0.635}
        },
        enabled = false,
        energy_required = 2,
        categories = {"pm-mixing"},
        subgroup = "pm-radium-aem",
        order = "g",
        ingredients =
        {
            PM.ingredient("pm-sulfur-dichloride", 10, "fluid"),
            PM.ingredient("pm-seawater", 40, "fluid")
        },
        results =
        {
            PM.product("pm-sulfur-dioxide", "fluid"):amount(0, 5):done(),
            PM.product("pm-chlorine", "fluid"):amount(2, 8):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-sulfur-dichloride-to-hydrogen-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dichloride-to-hydrogen-sulfide.png",
        crafting_machine_tint = 
        {
            primary = {0.851, 0.788, 0.635}
        },
        enabled = false,
        energy_required = 2,
        categories = {"pm-mixing"},
        subgroup = "pm-radium-aem",
        order = "h",
        ingredients =
        {
            PM.ingredient("pm-sulfur-dichloride", 10, "fluid"),
            PM.ingredient("pm-hydrogen-gas", 30, "fluid"),
            PM.ingredient("steam", 25, "fluid"),
            PM.ingredient("pm-cobalt-catalyst", 1)
        },
        results =
        {
            PM.ingredient("pm-hydrogen-sulfide", 10, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
            PM.product("pm-cobalt-catalyst"):amount(1):chance(0.8):catalyst(1):done(),
            PM.product("pm-catalyst-container"):amount(1):chance(0.2):catalyst(1):done()
        }
    }
})
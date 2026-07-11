data:extend({
    {
        type = "item",
        name = "pm-low-quality-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/low-quality-crude-antimony-sulfide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-antimony-mt",
        order = "a",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-high-quality-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/high-quality-crude-antimony-sulfide-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-antimony-mt",
        order = "b",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-crude-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/crude-antimony-sulfide.png",
        subgroup = "pm-antimony-mt",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-stibnite",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/stibnite.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite.png", size = 128, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-2.png", size = 128, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-3.png", size = 128, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/ores/stibnite-4.png", size = 128, scale = 0.25},
        },
        subgroup = "pm-antimony-mt",
        order = "d",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-antimony-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/antimony-sulfide.png",
        subgroup = "pm-antimony-mt",
        order = "da",
        stack_size = 200
    },
    {
    type = "item",
    name = "pm-antimony-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/antimony-ore-icon.png",
    pictures =
    {
        {filename = "__periodic-madness__/graphics/icons/ores/antimony-ore-icon.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/antimony-ore-icon-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/antimony-ore-icon-3.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/antimony-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-antimony-mt",
    order = "e",
    protons = 51,
    neutrons = 71,
    stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-arsenopyrite-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/crude-antimony-seperation.png",
        enabled = false,
        energy_required = 4,
        categories = {"pm-acids"},
        subgroup = "pm-antimony-mt",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-arsenopyrite", 2),
            PM.ingredient("pm-ferrum", 8),
            PM.ingredient("pm-patina", 8),
            PM.ingredient("pm-metalloid-ore", 12),
            PM.ingredient("pm-chromic-acid", 15, "fluid")
        },
        results = 
        {
            PM.product("pm-low-quality-crude-antimony-sulfide"):amount(3, 6):done(),
            PM.product("pm-high-quality-crude-antimony-sulfide"):amount(3, 6):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-crude-antimony-sulfide",
        enabled = false,
        energy_required = 8,
        categories = {"pm-washing"},
        subgroup = "pm-antimony-mt",
        order = "b",    
        main_product = "pm-crude-antimony-sulfide",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-low-quality-crude-antimony-sulfide", 6),
            PM.ingredient("pm-lead-froth", 12, "fluid")
        },
        results = 
        {
            PM.product("pm-crude-antimony-sulfide"):amount(2, 5):done(),
            PM.product("pm-lead-powder"):amount(0, 4):chance(0.56):done(),
            PM.product("pm-patina"):amount(3):chance(0.66):done()
        }
    },
    {
        type = "recipe",
        name = "pm-stibnite",
        enabled = false,
        energy_required = 8,
        categories = {"pm-moltening"},
        subgroup = "pm-antimony-mt",
        order = "c",
        main_product = "pm-stibnite",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-high-quality-crude-antimony-sulfide", 6),
            PM.ingredient("pm-molten-cobalt", 10, "fluid")
        },
        results = 
        {
            PM.product("pm-stibnite"):amount(2, 5):done(),
            PM.product("pm-cobalt-plate"):amount(2, 6):done(),
            PM.product("pm-cobaltite"):amount(0, 4):chance(0.77):done()
        }
    },
    {
        type = "recipe",
        name = "pm-antimony-sulfide",
        enabled = false,
        energy_required = 10,
        categories = {"pm-crushing"},
        subgroup = "pm-antimony-mt",
        order = "d",
        main_product = "pm-antimony-sulfide",
        ingredients = 
        {
            PM.ingredient("pm-stibnite", 4),
            PM.ingredient("pm-crude-antimony-sulfide", 4),
            PM.ingredient("pm-vanadium-oxide-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-antimony-sulfide"):amount(8):done(),
            PM.product("pm-vanadium-oxide-catalyst"):amount(2):chance(0.75):catalyst(1):done(),
            PM.product("pm-catalyst-container"):amount(2):chance(0.25):catalyst(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-antimony-ore",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-antimony-mt",
        order = "e",
        main_product = "pm-antimony-ore",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-antimony-sulfide", 4),
            PM.ingredient("iron-plate", 12)
        },
        results = 
        {
            PM.product("pm-antimony-ore"):amount(6):done(),
            PM.product("pm-ferrum"):amount(1, 4):done()
        }
    }
})
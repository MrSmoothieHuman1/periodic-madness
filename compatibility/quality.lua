if mods["quality"] then
local PM = require("library")
--#MARK: Vanilla changes
    data.raw["technology"]["modules"].icon_size = "__periodic-madness__/graphics/technology/modules-quality.png"
    data.raw["module"]["quality-module"].icon_size = 64
    data.raw["module"]["quality-module"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-1.png"
    data.raw["module"]["quality-module-2"].icon_size = 64
    data.raw["module"]["quality-module-2"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-2.png"
    data.raw["module"]["quality-module-3"].icon_size = 64
    data.raw["module"]["quality-module-3"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-3.png"
    data.raw["technology"]["quality-module"].icon_size = 256
    data.raw["technology"]["quality-module"].icon = "__periodic-madness__/graphics/icons/technology/quality-module-1-tech.png"
    data.raw["technology"]["quality-module-2"].icon_size = 256
    data.raw["technology"]["quality-module-2"].icon = "__periodic-madness__/graphics/technology/quality-module-2-tech.png"
    data.raw["technology"]["quality-module-3"].icon_size = 256
    data.raw["technology"]["quality-module-3"].icon = "__periodic-madness__/graphics/technology/quality-module-3-tech.png"

    table.insert(data.raw["module"]["pm-speed-module-4"].effect, {quality = -0.2})
    table.insert(data.raw["module"]["pm-speed-module-5"].effect, {quality = -0.2})
    table.insert(data.raw["module"]["pm-speed-module-6"].effect, {quality = -0.25})

    table.insert(data.raw["technology"]["modules"].effects, {type = "unlock_recipe", recipe = "pm-aluminium-gallium-arsenide"})
    table.insert(data.raw["technology"]["modules"].effects, {type = "unlock_recipe", recipe = "pm-module-quality-light"})


    data.raw["recipe"]["quality-module"].ingredients =
    {
        PM.ingredient("pm-module-case", 1),
        PM.ingredient("pm-module-quality-light", 1),
        PM.ingredient("electronic-circuit", 5),
    }
    data.raw["recipe"]["quality-module-2"].ingredients =
    {
        PM.ingredient("pm-module-case", 1),
        PM.ingredient("pm-module-quality-light", 1),
        PM.ingredient("electronic-circuit", 5),
        PM.ingredient("pm-fluid-circuit", 5)
    }
    data.raw["recipe"]["quality-module-3"].ingredients =
    {
        PM.ingredient("pm-module-case", 1),
        PM.ingredient("pm-module-quality-light", 1),
        PM.ingredient("pm-fluid-circuit", 5),
        PM.ingredient("advanced-circuit", 5),
    }


--#MARK: New stuff
data:extend({

    {
        type = "item-subgroup",
        name = "pm-quality",
        group = "production",
        order = "g"
    },

    {
        type = "item",
        name = "pm-aluminium-gallium-arsenide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/gallium-arsenide.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/gallium-arsenide.png",   size = 64, scale = 0.5 },
            { filename = "__periodic-madness__/graphics/icons/gallium-arsenide-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-intermediates",
        stack_size = 20
    },
    {
        type = "item",
        name = "pm-module-quality-light",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/productivity-module-light.png",
        subgroup = "pm-intermediates",
        stack_size = 150
    },
    
    {
        type = "module",
        name = "pm-quality-module-4",
        zlocalised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-4.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.3, speed = -0.1},
        beacon_tint =
        {
            primary = { 0, 1, 0 },
            secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}, -- #5eff5eff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
    },
    
    {
        type = "technology",
        name = "pm-speed-module-4",
        icon_size = 256,
        icon = "__periodic-madness__/graphics/technology/speed-module-4-tech.png",
        effects =
        {
            PM.unlock_recipe("pm-speed-module-4")
        },
        prerequisites = {"speed-module-3"},
        unit =
        {
            count = 600,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"pm-advanced-advanced-transition-metal-science-pack", 1},
                {"chemical-science-pack", 1},
                {"pm-post-transition-metal-science-pack", 1},
                {"pm-alkali-metal-science-pack", 1},
                {"pm-metalloid-science-pack", 1}
            },
            time = 60
        }
    },

    {
        type = "recipe",
        name = "pm-aluminium-gallium-arsenide",
        energy_required = (5 / 0.75) / 2,
        category = "pm-crystallisation",
        subgroup = "pm-modules",
        order = "m",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-gallium-arsenide", 3),
            PM.ingredient("pm-aluminium-plate", 6)
        },
        results = 
        {
            PM.product("pm-aluminium-gallium-arsenide", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-module-quality-light",
        energy_required = 5,
        enabled = false,
        subgroup = "pm-modules",
        order = "n",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-glass-pane", 6),
            PM.ingredient("pm-basic-wiring", 20),
            PM.ingredient("pm-aluminium-gallium-arsenide", 3),
        },
        results =
        {
            PM.product("pm-module-quality-light", 1)
        }
    },

    {
        type = "recipe",
        name = "pm-quality-module-4",
        energy_required = 30,
        enabled = false,
        subgroup = "pm-quality",
        order = "d",
        ingredients =
        {
            PM.ingredient("quality-module", 1),
            PM.ingredient("pm-module-quality-light", 1),
            PM.ingredient("pm-fluid-circuit", 10),
            PM.ingredient("processing-unit", 10)
        },
        results = 
        {
            PM.product("pm-quality-module-4", 1)
        }
    }
})
end
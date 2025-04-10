if mods["quality"] then

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


--#MARK: New stuff
data:extend({

    {
        type = "item-subgroup",
        name = "pm-quality",
        group = "production",
        order = "g"
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
        type = "module",
        name = "pm-quality-module-5",
        zlocalised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-5.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 5,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.4, speed = -0.1},
        beacon_tint =
        {
            primary = { 0, 1, 0 },
            secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}, -- #5eff5eff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
    },
    {
        type = "module",
        name = "pm-quality-module-6",
        zlocalised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-6.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 6,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.5, speed = -0.15},
        beacon_tint =
        {
            primary = { 0, 1, 0 },
            secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}, -- #5eff5eff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
    },
    
})
end
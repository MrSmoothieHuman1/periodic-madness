if mods["bzzirconium"] then
    
    -- Autoplace
for _, name in pairs{"zircon"} do
    data.raw["autoplace-control"][name] = nil
    data.raw["resource"][name].autoplace = nil
    -- Autoplace removal fucks presets
    for _, preset in pairs(data.raw["map-gen-presets"]["default"] --[[@as {[string]:data.MapGenPreset}]]) do
        if preset.basic_settings and preset.basic_settings.autoplace_controls then preset.basic_settings.autoplace_controls[name] = nil end
    end
end
 data.raw["recipe"]["zirconium-plate"].normal.ingredients = {{"pm-zirconia", 3}}
 data.raw["recipe"]["zirconium-plate"].expensive.ingredients = {{"pm-zirconia", 5}}
    
    data.raw["autoplace-control"]["zircon"] = nil
    data.raw["resource"]["zircon"] = nil
    lib.set_flag(data.raw["item"]["zircon"], "hidden")
    lib.set_flag(data.raw["item"]["zirconia"], "hidden")
    data.raw["item"]["zirconium-plate"].subgroup = "pm-zirconium-tm"
    data.raw["item"]["zirconium-plate"].order = "g"

    data.raw["technology"]["pm-zirconium-processing"] = nil
    data.raw["technology"]["cermet"].unit.ingredients = 
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
    }
    data.raw["technology"]["zirconia-processing"].icon_size = 256
    data.raw["technology"]["zirconia-processing"].icon = "__periodic-madness__/graphics/technology/zirconium-processing.png"
    data.raw["technology"]["zirconia-processing"].effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium-sand-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconia"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium"
        },
        {
            type = "unlock-recipe",
            recipe = "zirconium-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sand-creosote"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-crucible"
        },
    }
    data.raw["technology"]["zirconia-processing"].prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"}
    data.raw["technology"]["pm-tempature-inators"].prerequisites = {"zirconia-processing"}
    data.raw["technology"]["military-3"].effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "poison-capsule"
        },
        {
            type = "unlock-recipe",
            recipe = "slowdown-capsule"
        },
        {
            type = "unlock-recipe",
            recipe = "combat-shotgun"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-high-density-magazine"
        },
        {
            type = "unlock-recipe",
            recipe = "explosive-rounds-magazine"
        }
    }

    data.raw["recipe"]["explosive-rounds-magazine"].ingredients = 
    {
        {"zirconium-plate", 1},
        {"piercing-rounds-magazine", 1},
        {type = "fluid", name = "pm-naptha", amount = 2}
    }
    data.raw["recipe"]["zirconium-plate"].subgroup = "pm-zirconium-tm"
    data.raw["recipe"]["zirconium-plate"].order = "g"
    data.raw["recipe"]["electric-furnace"].ingredients = 
    {
        {"advanced-circuit", 4 + 1}, --basic, i know
        {"pm-heating-plating", 6},
        {"pm-heavyweight-panelling", 12},
        {"pm-heavyweight-framing", 4},
        {"pm-zirconia", 4 + 1}
    }
    data.raw["recipe"]["cermet"].ingredients = 
    {
        {"copper-plate", 2},
        {"pm-zirconia", 1}
    }
    data.raw["recipe"]["low-density-structure"].ingredients = 
    {
        {"copper-plate", 10},
        {"cermet", 5},
        {"steel-plate", 2},
        {"pm-polyethylene-plastic", 4 + 1}
    }

    data.raw["recipe"]["stone-furnace"].ingredients = 
    {
        {"stone", 4 + 1}
    }
    data.raw["recipe"]["steel-furnace"].ingredients = 
    {
        {"steel-plate", 6},
        {"stone-brick", 10}
    }
    data.raw["recipe"]["pm-electrolysis-plant-2"].ingredients = 
    {
        {"pm-electrolysis-plant", 1},
        {"processing-unit", 3},
        {"zirconium-plate", 6},
        {"pm-heavyweight-panelling", 5},
        {"pm-corrosion-resistant-tubing", 12}
    }

    data.raw["simple-entity"]["rock-huge"].minable.results = 
    {
        {name = "stone", amount_min = 24, amount_max = 50}, 
        {name = "coal", amount_min = 24, amount_max = 50}
    }
    data.raw["simple-entity"]["rock-big"].minable.results = {{name = "stone", amount = 20}}
    data.raw["simple-entity"]["rock-big"].loot = {{item = "stone", probability = 1, count_min = 9, count_max = 25}}
    data.raw["simple-entity"]["sand-rock-big"].minable.results = {{name = "stone", amount_min = 19, amount_max = 25}}
    data.raw["simple-entity"]["sand-rock-big"].loot = {{item = "stone", probability = 1, count_min = 10, count_max = 15}}

    --for _, entity in pairs(data.raw["simple-entity"]) do
    --    entity.minable.results = 
    --    {
    --        {name = "stone", amount_min = 24, amount_max = 50},
    --        {name = "coal", amount_min = 24, amount_max = 50}
    --    }
    --end
end

if mods["bzzirconium"] and mods["SantasNixieTubeDisplay"] then

    data.raw["technology"]["SNTD-nixie-tubes-1"].prerequisites = {"circuit-network"}
end

if mods["bzzirconium"] and mods["bzaluminum"] then

    data.raw["technology"]["aerospace-alloys"].unit.ingredients = 
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
    }
end


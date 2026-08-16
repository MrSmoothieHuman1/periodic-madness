if mods["quality"] then
--MARK: Vanilla changes
    data.raw["technology"]["modules"].icon_= "__periodic-madness__/graphics/technology/modules-quality.png"
    data.raw["module"]["quality-module"].icon_size = 64
    data.raw["module"]["quality-module"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-1.png"
    data.raw["module"]["quality-module-2"].icon_size = 64
    data.raw["module"]["quality-module-2"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-2.png"
    data.raw["module"]["quality-module-3"].icon_size = 64
    data.raw["module"]["quality-module-3"].icon = "__periodic-madness__/graphics/icons/modules/quality-module-3.png"
    data.raw["module"]["quality-module"].effect =
    {
        speed = -0.05,
        quality = 0.03
    }
    data.raw["technology"]["quality-module"].icon_size = 256
    data.raw["technology"]["quality-module"].icon = "__periodic-madness__/graphics/technology/quality-module-1-tech.png"
    data.raw["technology"]["quality-module"].unit.count = 100
    data.raw["technology"]["quality-module"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
    }
    data.raw["technology"]["quality-module-2"].icon_size = 256
    data.raw["technology"]["quality-module-2"].icon = "__periodic-madness__/graphics/technology/quality-module-2-tech.png"
    data.raw["technology"]["quality-module-2"].unit.count = 150
    data.raw["technology"]["quality-module-2"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
    }
    data.raw["technology"]["quality-module-3"].icon_size = 256
    data.raw["technology"]["quality-module-3"].icon = "__periodic-madness__/graphics/technology/quality-module-3-tech.png"
    data.raw["technology"]["quality-module-3"].unit.count = 300
    data.raw["technology"]["quality-module-3"].unit.ingredients = 
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
    }

    table.insert(data.raw["technology"]["pm-advanced-modules"].prerequisites, "quality-module-3")

    table.insert(data.raw["module"]["pm-speed-module-4"].effect, {quality = -0.025})
    table.insert(data.raw["module"]["pm-speed-module-5"].effect, {quality = -0.025})
    table.insert(data.raw["module"]["pm-speed-module-6"].effect, {quality = -0.03})
    table.insert(data.raw["module"]["pm-speed-beamcon-reciever"].effect, {quality = -0.25})

    table.insert(data.raw["technology"]["modules"].effects, {type = "unlock-recipe", recipe = "pm-aluminium-gallium-arsenide"})
    table.insert(data.raw["technology"]["modules"].effects, {type = "unlock-recipe", recipe = "pm-module-quality-light"})

    table.insert(data.raw["technology"]["pm-advanced-modules"].effects, {type = "unlock-recipe", recipe = "pm-o-phenylenediamine"})


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

--#MARK: Entity Changes
data.raw["furnace"]["electric-furnace"].quality_affects_module_slots = true
data.raw["furnace"]["electric-furnace"].module_slots_quality_bonus =  {["uncommon"] = 1, ["rare"] = 2, ["epic"] = 3, ["legendary"] = 4}
data.raw["furnace"]["pm-electric-furnace-2"].quality_affects_module_slots = true
data.raw["furnace"]["electric-furnace"].module_slots_quality_bonus =  {["uncommon"] = 1, ["rare"] = 2, ["epic"] = 3, ["legendary"] = 5}
data.raw["furnace"]["pm-heat-furnace"].quality_affects_module_slots = true
data.raw["furnace"]["pm-heat-furnace"].module_slots_quality_bonus =  {["uncommon"] = 1, ["rare"] = 2, ["epic"] = 3, ["legendary"] = 4}

data.raw["assembling-machine"]["pm-reverberatory-furnace"].quality_affects_module_slots = true
data.raw["assembling-machine"]["pm-reverberatory-furnace"].module_slots_quality_bonus =  {["uncommon"] = 1, ["rare"] = 2, ["epic"] = 3, ["legendary"] = 4}
data.raw["assembling-machine"]["pm-blast-furnace"].quality_affects_module_slots = true
data.raw["assembling-machine"]["pm-blast-furnace"].module_slots_quality_bonus =  {["uncommon"] = 1, ["rare"] = 2, ["epic"] = 3, ["legendary"] = 4}

--MARK: Science changes
data.raw["quality"]["uncommon"].tool_durability_multiplier = 3 --300%
data.raw["quality"]["rare"].tool_durability_multiplier = 5 --500%
data.raw["quality"]["epic"].tool_durability_multiplier = 7 --700%
data.raw["quality"]["legendary"].tool_durability_multiplier = 12 --1200%


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
        localised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-4.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.045, speed = -0.1},
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
        localised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-5.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 5,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.06, speed = -0.1},
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
        localised_description = {"item-description.quality-module"},
        icon = "__periodic-madness__/graphics/icons/modules/quality-module-6.png",
        icon_size = 64,
        subgroup = "pm-quality",
        category = "quality",
        tier = 6,
        order = "d",
        stack_size = 50,
        effect = {quality = 0.075, speed = -0.15},
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
        name = "pm-quality-module-4",
        icon_size = 256,
        icon = "__periodic-madness__/graphics/technology/quality-module-4-tech.png",
        effects =
        {
            PM.unlock_recipe("pm-quality-module-4")
        },
        prerequisites = {"pm-advanced-modules"},
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
        type = "technology",
        name = "pm-quality-module-5",
        icon_size = 256,
        icon = "__periodic-madness__/graphics/technology/quality-module-5-tech.png",
        effects =
        {
            PM.unlock_recipe("pm-quality-module-5")
        },
        prerequisites = {"pm-quality-module-4"},
        unit =
        {
          count = 800,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1}
          },
          time = 120
        }
    },
    {
        type = "technology",
        name = "pm-quality-module-6",
        icon_size = 256,
        icon = "__periodic-madness__/graphics/technology/quality-module-6-tech.png",
        effects =
        {
            PM.unlock_recipe("pm-quality-module-6")
        },
        prerequisites = {"pm-quality-module-5"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"pm-advanced-advanced-transition-metal-science-pack", 2},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1},
            {"pm-lanthanide-science-pack", 1}
          },
          time = 240
        }
    },

    {
        type = "recipe",
        name = "pm-aluminium-gallium-arsenide",
        energy_required = (5 / 0.75) / 2,
        categories = {"pm-crystallisation"},
        subgroup = "pm-quality-module-parts",
        order = "m",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-gallium-arsenide", 3),
            PM.ingredient("pm-aluminium-plate", 6)
        },
        results = 
        {
            PM.product("pm-aluminium-gallium-arsenide"):amount(6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-module-quality-light",
        energy_required = 5,
        enabled = false,
        subgroup = "pm-quality-module-parts",
        order = "n",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-glass-pane", 6),
            PM.ingredient("pm-gold-wire", 15),
            PM.ingredient("pm-aluminium-gallium-arsenide", 3),
        },
        results =
        {
            PM.product("pm-module-quality-light"):amount(1):done()
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
            PM.ingredient("pm-fluid-circuit", 8),
            PM.ingredient("processing-unit", 8)
        },
        results = 
        {
            PM.product("pm-quality-module-4"):amount(1):done()
        }
    },
    {
      type = "recipe",
      name = "pm-quality-module-5",
      enabled = false,
      energy_required = 30,
      subgroup = "pm-quality",
      order = "e",
      ingredients =
      {
        PM.ingredient("quality-module-2", 1),
        PM.ingredient("pm-module-quality-light", 1),
        PM.ingredient("pm-advanced-processing-unit", 9),
        PM.ingredient("processing-unit", 9)
      },
      results =
      {
        PM.product("pm-quality-module-5"):amount(1):done()
      }
    },
    {
      type = "recipe",
      name = "pm-quality-module-6",
      enabled = false,
      energy_required = 60,
      subgroup = "pm-quality",
      order = "f",
      ingredients =
      {
        PM.ingredient("quality-module-3", 1),
        PM.ingredient("pm-module-quality-light", 1),
        PM.ingredient("pm-space-processing-unit", 10),
      },
      results =
      {
        PM.product("pm-quality-module-6"):amount(1):done()
      }
    },

    {
        type = "fluid",
        name = "pm-benzonitrile",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/nitrobenzene.png",
        default_temperature = 15,
        base_color = {r = 0.7, g = 0.7, b = 0.85},
        flow_color = {r = 0.7, g = 0.7, b = 0.85},
        auto_void = true,
    },
    {
        type = "fluid",
        name = "pm-1-2-3-triazole",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/nitrobenzene.png",
        default_temperature = 15,
        base_color = {r = 0.7, g = 0.7, b = 0.85},
        flow_color = {r = 0.7, g = 0.7, b = 0.85},
        auto_void = true,
    },
    {
        type = "fluid",
        name = "pm-undiffereniated-carbazole",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/nitrobenzene.png",
        default_temperature = 15,
        base_color = {r = 0.7, g = 0.7, b = 0.85},
        flow_color = {r = 0.7, g = 0.7, b = 0.85},
        auto_void = true,
    },
    {
        type = "fluid",
        name = "pm-N-propyl-carbazole",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/nitrobenzene.png",
        default_temperature = 15,
        base_color = {r = 0.7, g = 0.7, b = 0.85},
        flow_color = {r = 0.7, g = 0.7, b = 0.85},
        auto_void = true,
    },
    {
      type = "recipe",
      name = "pm-benzonitrile",
      enabled = false,
      energy_required = 12,
      categories = {"chemistry"},
      ingredients =
      {
        PM.ingredient("pm-benzene", 30, "fluid"),
        PM.ingredient("pm-ammonia-gas", 30, "fluid")
      },
      results =
      {
        PM.product("pm-benzonitrile", "fluid"):amount(40):done()
      }
    },
    {
        type = "recipe",
        name = "pm-1-2-3-triazole",
        enabled = false,
        energy_required = 24,
        categories = {"pm-acids"},
        ingredients =
        {
            PM.ingredient("pm-o-phenylenediamine", 20, "fluid"),
            PM.ingredient("pm-nitric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-1-2-3-triazole", "fluid"):amount(20):done()
        }
    },
    {
        type = "recipe",
        name = "pm-undiffereniated-carbazole",
        enabled = false,
        energy_required = 4,
        categories = {"oil-processing"},
        main_product = "pm-undiffereniated-carbazole",
        ingredients =
        {
            PM.ingredient("pm-1-2-3-triazole", 10, "fluid"),
            PM.ingredient("steam", 20, "fluid"),
            PM.ingredient("pm-palladium-catalyst", 4),
            PM.ingredient("copper-plate", 6)
        },
        results =
        {
            PM.product("pm-undiffereniated-carbazole", "fluid"):amount(7.5):done(),
            PM.product("pm-palladium-catalyst"):amount(4):chance(0.8):catalyst(4):done(),
            PM.product("pm-catalyst-container"):amount(4):chance(0.2):catalyst(4):done(),
            PM.product("copper-plate"):amount(3):catalyst(3):done(), --should be its own catalyst in hard mode
            PM.product("water", "fluid"):amount(1, 2):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-N-propyl-carbazole",
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        main_product = "pm-N-propyl-carbazole",
        ingredients =
        {
            PM.ingredient("pm-undiffereniated-carbazole", 15, "fluid"),
            PM.ingredient("pm-bromine", 30, "fluid"),
            PM.ingredient("pm-nickel-plate", 6)
        },
        results =
        {
            PM.product("pm-N-propyl-carbazole", "fluid"):amount(15):chance(0, 0.45):done(),
            PM.product("pm-undiffereniated-carbazole", "fluid"):amount(15):chance(0.45, 1):done(),
            PM.product("pm-nickel-plate"):amount(3):catalyst(3):done(), --this too should be its own catalyst in hard mode
        }
    }
})
end
local PM = require("library")

data.raw["technology"]["automation"].effects =
{
  PM.unlock_recipe("assembling-machine-1"),
  PM.unlock_recipe("storage-tank"),
  PM.unlock_recipe("long-handed-inserter"),
}

data.raw["technology"]["automation-2"].effects =
{
  PM.unlock_recipe("assembling-machine-2"),
  PM.unlock_recipe("pm-crusher-1")
}
data.raw["technology"]["automation-2"].prerequisites = {"steel-processing", "pm-advanced-basic-tubing", "logistic-science-pack"}

data.raw["technology"]["automation-3"].effects =
{
  PM.unlock_recipe("assembling-machine-3"),
  PM.unlock_recipe("pm-crusher-2"),
  PM.unlock_recipe("pm-chemical-plant-2")
}
data.raw["technology"]["automation-3"].prerequisites = {"laser", "electric-engine"}
data.raw["technology"]["automation-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["logistic-science-pack"].icon_size = 256
data.raw["technology"]["logistic-science-pack"].icon = "__periodic-madness__/graphics/technology/advanced-transition-metal-unlock.png"
data.raw["technology"]["logistic-science-pack"].prerequisites = {"pm-mercury-processing", "steel-processing", "pm-advanced-transition-metal-refining"}
data.raw["tool"]["logistic-science-pack"].icon = "__periodic-madness__/graphics/icons/science/advanced-transition-metal-pack.png"
data.raw["tool"]["logistic-science-pack"].icon_size = 64
data.raw["technology"]["sulfur-processing"].effects =
{
  PM.unlock_recipe("pm-vanadium-oxide"),
  PM.unlock_recipe("pm-vanadium-oxide-catalyst"),
  PM.unlock_recipe("pm-sulfur-dioxide-cracking"),
}

data.raw["technology"]["sulfur-processing"].prerequisites = {"pm-fuel-oils-recipes", "pm-kerosene-recipes", "pm-oil-residual-recipes"}
data.raw["technology"]["sulfur-processing"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["advanced-circuit"].effects =
{
  PM.unlock_recipe("pm-advanced-circuit-breadboard"),
  PM.unlock_recipe("pm-advanced-integrated-circuits"),
  PM.unlock_recipe("advanced-circuit")
}
data.raw["technology"]["advanced-circuit"].prerequisites = {"pm-fluid-circuit", "pm-basic-polyethylene-plastic", "pm-copper-tin-solder"}
data.raw["technology"]["advanced-circuit"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["logistics-3"].icon = "__base__/graphics/technology/logistics-2.png"
data.raw["technology"]["logistics-3"].prerequisites = {"logistics-2", "pm-lubricating-oils-recipes"}
data.raw["technology"]["logistics-3"].effects = 
{
  PM.unlock_recipe("pm-advanced-transport-belt"),
  PM.unlock_recipe("pm-advanced-underground-belt"),
  PM.unlock_recipe("pm-advanced-splitter"),
}
data.raw["technology"]["logistics-3"].unit =
{
  count = 150,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1}
  },
  time = 30
}

data.raw["technology"]["electric-energy-distribution-1"].prerequisites = {"pm-fiberoptics"}
data.raw["technology"]["electric-energy-distribution-2"].prerequisites = {"chemical-science-pack", "electric-energy-distribution-1", "pm-gold-processing"}
data.raw["technology"]["fluid-handling"].effects =
{
  PM.unlock_recipe("barrel"),
  PM.unlock_recipe("pm-stainless-steel-tank"),
  PM.unlock_recipe("pm-stainless-steel-pipe"),
  PM.unlock_recipe("pm-stainless-steel-pipe-to-ground"),
  PM.unlock_recipe("pm-stainless-steel-pump"),
}
data.raw["technology"]["fluid-handling"].prerequisites = {"pm-multimetal-multiproperty", "pm-stainless-steel-processing"}
data.raw["technology"]["fluid-handling"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["oil-processing"].effects =
{
  PM.unlock_recipe("pumpjack"),
  PM.unlock_recipe("oil-refinery"),
  PM.unlock_recipe("chemical-plant"),
  PM.unlock_recipe("pm-basic-oil-cracking"),
  PM.unlock_recipe("pm-molybdenum-disulfide")
}
data.raw["technology"]["oil-processing"].prerequisites = {"fluid-handling", "pm-multimetal-multiproperty"}
data.raw["technology"]["oil-processing"].research_trigger = nil
data.raw["technology"]["oil-processing"].unit = 
{
  count = 125,
  ingredients = 
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1}
  },
  time = 30
}

data.raw["technology"]["steel-processing"].prerequisites = {"pm-brass-processing"}
data.raw["technology"]["steel-processing"].icon_size = 64
data.raw["technology"]["steel-processing"].icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png"

data.raw["technology"]["concrete"].prerequisites = {"pm-oil-residual-recipes", "advanced-material-processing", "pm-mixing-material-processing-1"}
data.raw["technology"]["concrete"].effects = 
{
  PM.unlock_recipe("pm-concrete-slurry"),
  PM.unlock_recipe("concrete"),
  PM.unlock_recipe("hazard-concrete"),
  PM.unlock_recipe("refined-concrete"),
  PM.unlock_recipe("refined-hazard-concrete")
}

table.insert(data.raw["technology"]["fast-inserter"].effects, {type = "unlock-recipe", recipe = "pm-mini-motor"})

data.raw["technology"]["advanced-oil-processing"].icon = "__periodic-madness__/graphics/technology/fractional-distillation.png"
data.raw["technology"]["advanced-oil-processing"].effects =
{
  PM.unlock_recipe("pm-fractional-distillator"),
  PM.unlock_recipe("pm-crude-oil-fractional-distillation")
}
data.raw["technology"]["advanced-oil-processing"].prerequisites = {"oil-processing", "pm-basic-polyethylene-plastic"}
data.raw["technology"]["advanced-oil-processing"].unit = nil
data.raw["technology"]["advanced-oil-processing"].research_trigger = 
{
  type = "craft-item",
  item = "pm-polyethylene-plastic",
  count = 4
}

data.raw["technology"]["engine"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["engine"].prerequisites = {"pm-vanadium-chromium-alloying"}

data.raw["technology"]["railway"].unit =
{
  count = 75,
  ingredients = 
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1}
    },
    time = 30
}

data.raw["technology"]["automated-rail-transportation"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["fluid-wagon"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["automobilism"].unit.count = 125
data.raw["technology"]["automobilism"].prerequisites = {"pm-rubber-processing"}
data.raw["technology"]["automobilism"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
}

data.raw["technology"]["concrete"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["chemical-science-pack"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["chemical-science-pack"].icon =
"__periodic-madness__/graphics/technology/reactive-non-metal-unlock.png"
data.raw["technology"]["chemical-science-pack"].unit.time = 80
data.raw["technology"]["chemical-science-pack"].prerequisites = {"pm-atmospheric-condensation", "pm-science-center"}
data.raw["technology"]["chemical-science-pack"].unit.count = 200

data.raw["technology"]["steel-processing"].icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png"
data.raw["technology"]["steel-processing"].icon_size = 64
data.raw["technology"]["steel-processing"].effects =
{
  PM.unlock_recipe("steel-plate"),
  PM.unlock_recipe("steel-chest"),
  PM.unlock_recipe("pm-manganese-plate"),
  PM.unlock_recipe("pm-transition-manganese-leeching")
}

data.raw["technology"]["lubricant"].prerequisites = {"pm-lubricating-oils-recipes", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["lubricant"].effects =
{
  PM.unlock_recipe("pm-heavy-lubricant"),
  PM.unlock_recipe("pm-heavy-lube-electric-engine-unit"),
  PM.unlock_recipe("pm-heavy-lube-solar-cell")
}
data.raw["technology"]["lubricant"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["solar-energy"].prerequisites = {"pm-cadnium-processing", "advanced-circuit"}
data.raw["technology"]["solar-energy"].effects =
{
  PM.unlock_recipe("solar-panel"),
  PM.unlock_recipe("pm-solar-cell")
}
data.raw["technology"]["solar-energy"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["flammables"].prerequisites = {"pm-fuel-oils-recipes", "pm-petrol-recipes", "pm-kerosene-recipes", "pm-diesel-recipes"}
data.raw["technology"]["flammables"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["plastics"].effects = {}
data.raw["technology"]["plastics"].unit.count = 100
data.raw["technology"]["plastics"].hidden = true
data.raw["technology"]["plastics"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["advanced-material-processing-2"].prerequisites = {"pm-multimetal-multiproperty"}
data.raw["technology"]["advanced-material-processing-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "pm-copper-heating-coil"})

data.raw["technology"]["modular-armor"].prerequisites = {"pm-cadnium-processing", "advanced-circuit"}
data.raw["technology"]["modular-armor"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["modules"].effects =
{
  PM.unlock_recipe("pm-module-case"),
  PM.unlock_recipe("pm-gallium-nitride"),
  PM.unlock_recipe("pm-module-speed-light"),
  PM.unlock_recipe("pm-aluminium-gallium-indium-phosphide"),
  PM.unlock_recipe("pm-module-productivity-light"),
  PM.unlock_recipe("pm-gallium-arsenide"),
  PM.unlock_recipe("pm-module-efficiency-light"),

}
data.raw["technology"]["modules"].prerequisites = {"pm-trace-gas-refining", "pm-indium-processing"}
data.raw["technology"]["modules"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["modules"].unit.time = 60
data.raw["technology"]["modules"].unit.count = 150

data.raw["technology"]["robotics"].unit.count = 200
data.raw["technology"]["robotics"].prerequisites = {"pm-vanadium-oxide-redox-batteries", "electric-engine"}
data.raw["technology"]["robotics"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["solar-panel-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["belt-immunity-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["battery-equipment"].prerequisites = {"pm-vanadium-oxide-redox-batteries", "modular-armor"}
data.raw["technology"]["battery-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["battery-equipment"].icons = 
{
  {
    icon = "__periodic-madness__/graphics/technology/vanadium-battery-equipment.png",
    icon_size = 256
  },
  {
    icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
    icon_size = 128,
    shift = {
      100,
      100
    }
  }
}
data.raw["technology"]["battery-mk2-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["battery-mk2-equipment"].prerequisites = {"battery-equipment", "processing-unit"}
data.raw["technology"]["battery-mk2-equipment"].icons = 
{
  {
    icon = "__periodic-madness__/graphics/technology/vanadium-battery-mk2-equipment.png",
    icon_size = 256
  },
  {
    icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
    icon_size = 128,
    shift = {
      100,
      100
    }
  }
}
data.raw["technology"]["night-vision-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["electric-engine"].prerequisites = {"pm-lubricating-oils-recipes"}
data.raw["technology"]["electric-engine"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["construction-robotics"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["logistic-robotics"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["low-density-structure"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["low-density-structure"].prerequisites = {"pm-polytetrafluoroethylene-plastic", "pm-metalloid-pack-unlock"}
data.raw["technology"]["low-density-structure"].unit.time = 80
table.insert(data.raw["technology"]["low-density-structure"].effects, {type = "unlock-recipe", recipe = "pm-aluminium-low-density-structure"})
table.insert(data.raw["technology"]["low-density-structure"].effects, {type = "unlock-recipe", recipe = "pm-tin-low-density-structure"})

data.raw["technology"]["laser"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}

data.raw["technology"]["nuclear-power"].effects =
{
  PM.unlock_recipe("nuclear-reactor"),
  PM.unlock_recipe("steam-turbine")
}
data.raw["technology"]["nuclear-power"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}

data.raw["technology"]["processing-unit"].effects =
{
  PM.unlock_recipe("pm-cobalt-blue"),
  PM.unlock_recipe("pm-indium-wire"),
  PM.unlock_recipe("pm-ferrum-ferric-chloride"),
  PM.unlock_recipe("pm-metal-ferric-chloride"),
  PM.unlock_recipe("pm-processing-breadboard"),
  PM.unlock_recipe("pm-processing-integrated-circuits"),
  PM.unlock_recipe("pm-semiconductor"),
  PM.unlock_recipe("pm-better-transistors"),
  PM.unlock_recipe("processing-unit"),
}
data.raw["technology"]["processing-unit"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["processing-unit"].prerequisites = {"pm-indium-processing"}

data.raw["technology"]["power-armor"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}

data.raw["technology"]["exoskeleton-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}

data.raw["technology"]["military-3"].prerequisites = {"pm-post-transition-metal-pack-unlock", "military-2"}
data.raw["technology"]["military-3"].effects =
{
  PM.unlock_recipe("poison-capsule"),
  PM.unlock_recipe("slowdown-capsule"),
  PM.unlock_recipe("combat-shotgun"),
  PM.unlock_recipe("pm-high-density-magazine"),
  PM.unlock_recipe("pm-high-density-shotgun-shell"),
  PM.unlock_recipe("pm-high-density-shotgun-slug"),
}
data.raw["technology"]["military-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}

data.raw["technology"]["laser-turret"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"military-science-pack", 1}
}

data.raw["technology"]["electric-energy-distribution-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["electric-energy-distribution-2"].prerequisites = {"pm-post-transition-metal-pack-unlock"}

data.raw["technology"]["electric-energy-accumulators"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["electric-energy-accumulators"].prerequisites = {"pm-vanadium-oxide-redox-batteries"}

data.raw["technology"]["battery"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["explosives"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["explosives"].unit.time = 30
data.raw["technology"]["explosives"].unit.count = 125

data.raw["technology"]["cliff-explosives"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["land-mine"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["land-mine"].prerequisites = {"explosives"}
data.raw["technology"]["power-armor"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["exoskeleton-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["tank"].prerequisites = {"automobilism", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["tank"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["nuclear-power"].effects =
{
  PM.unlock_recipe("nuclear-reactor"),
  PM.unlock_recipe("steam-turbine"),
  PM.unlock_recipe("heat-pipe")
}
data.raw["technology"]["nuclear-power"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["uranium-processing"].prerequisites = {"concrete", "pm-polonium-processing"}

data.raw["technology"]["lubricant"].unit.count = 125

data.raw["technology"]["defender"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
data.raw["technology"]["defender"].effects =
{
  PM.unlock_recipe("defender-capsule"),
  PM.modify("maximum-following-robots-count", 9)
}
data.raw["technology"]["defender"].prerequisites = {"military-2"}

data.raw["technology"]["distractor"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["distractor"].prerequisites = {"defender", "pm-advanced-advanced-transition-metal-pack-unlock"}

data.raw["technology"]["destroyer"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["destroyer"].prerequisites = {"distractor", "pm-post-transition-metal-pack-unlock"}

data.raw["technology"]["follower-robot-count-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}

data.raw["technology"]["effect-transmission"].unit.count = 375
data.raw["technology"]["effect-transmission"].unit.time = 80
data.raw["technology"]["effect-transmission"].prerequisites = {"pm-vacuum-tubes", "pm-polytetrafluoroethylene-plastic"}
data.raw["technology"]["effect-transmission"].effects =
{
  PM.unlock_recipe("pm-travelling-wave-amplifier-tube"),
  PM.unlock_recipe("pm-borosilicate-travelling-wave-amplifier-tube"),
  PM.unlock_recipe("beacon")
}

data.raw["technology"]["effect-transmission"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["logistic-system"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["logistic-system"].prerequisites = {"pm-lithium-ion-logistic-robotics"}
data.raw["technology"]["utility-science-pack"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["military"].effects =
{
  PM.unlock_recipe("submachine-gun"),
  PM.unlock_recipe("shotgun"),
  PM.unlock_recipe("shotgun-shell"),
  PM.unlock_recipe("pm-sodium-grenade"),
}
data.raw["technology"]["military-2"].prerequisites = {"pm-rubber-processing", "military"}
data.raw["technology"]["military-2"].effects =
{
  PM.unlock_recipe("piercing-rounds-magazine"),
  PM.unlock_recipe("piercing-shotgun-shell"),
  PM.unlock_recipe("grenade"),
  PM.unlock_recipe("pm-shotgun-slug"),
  PM.unlock_recipe("pm-heavy-piercing-shotgun-slug")
}
data.raw["technology"]["military-2"].unit.count = 50
data.raw["technology"]["power-armor-mk2"].prerequisites = {"pm-metalloid-pack-unlock"}
data.raw["technology"]["power-armor-mk2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["power-armor-mk2"].unit.time = 80
data.raw["technology"]["energy-shield-equipment"].prerequisites = {"pm-trace-gas-refining"}
data.raw["technology"]["energy-shield-equipment"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["energy-shield-equipment"].unit.count = 250

data.raw["technology"]["fission-reactor-equipment"].effects = 
{
  PM.unlock_recipe("pm-empty-fuel-rod"),
  PM.unlock_recipe("pm-polonium-fuel-rod"),
  PM.unlock_recipe("pm-spent-fuel-rod-reprocessing"),
  PM.unlock_recipe("fission-reactor-equipment"), 
}
data.raw["technology"]["fission-reactor-equipment"].research_trigger =
{
  type = "craft-item",
  item = "pm-polonium-fuel-cell",
  count = 10
}
data.raw["technology"]["fission-reactor-equipment"].unit = nil
data.raw["technology"]["fission-reactor-equipment"].prerequisites = {"pm-metalloid-pack-unlock"}

data.raw["technology"]["logistics-2"].icon = "__periodic-madness__/graphics/technology/logistics-2.png"

data.raw["technology"]["inserter-capacity-bonus-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["inserter-capacity-bonus-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["inserter-capacity-bonus-4"].prerequisites = {"inserter-capacity-bonus-3"}
data.raw["technology"]["inserter-capacity-bonus-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["inserter-capacity-bonus-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["inserter-capacity-bonus-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["inserter-capacity-bonus-7"].prerequisites = {"inserter-capacity-bonus-6"}
data.raw["technology"]["inserter-capacity-bonus-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["flammables"].effects =
{
  PM.unlock_recipe("pm-gunpowder"),
  PM.unlock_recipe("pm-water-hydrogen-peroxide"),
}
data.raw["technology"]["rocketry"].unit.time = 45
data.raw["technology"]["rocketry"].unit.count = 175
data.raw["technology"]["rocketry"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["explosive-rocketry"].unit.time = 60
data.raw["technology"]["explosive-rocketry"].unit.count = 250
data.raw["technology"]["explosive-rocketry"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["modules"].icon_size = 256
data.raw["technology"]["modules"].icon = "__periodic-madness__/graphics/technology/modules.png"

local SpeedMod1Fix = data.raw["module"]["speed-module"]

SpeedMod1Fix.icon_size = 64
SpeedMod1Fix.icon = "__periodic-madness__/graphics/icons/modules/speed-module-1.png"

local SpeedMod2Fix = data.raw["module"]["speed-module-2"]

SpeedMod2Fix.icon_size = 64
SpeedMod2Fix.icon = "__periodic-madness__/graphics/icons/modules/speed-module-2.png"

local SpeedMod3Fix = data.raw["module"]["speed-module-3"]

SpeedMod3Fix.icon_size = 64
SpeedMod3Fix.icon = "__periodic-madness__/graphics/icons/modules/speed-module-3.png"

data.raw["technology"]["speed-module"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["speed-module-2"].unit.count = 100
data.raw["technology"]["speed-module-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["speed-module-3"].unit.count = 150
data.raw["technology"]["speed-module-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["oil-gathering"] = nil

data.raw["technology"]["laser"].unit = nil
data.raw["technology"]["laser"].research_trigger = 
{
  type = "craft-item",
  item = "pm-ruby",
  count = 15
}
data.raw["technology"]["laser"].effects = 
{
  PM.unlock_recipe("pm-garnet-saw"),
  PM.unlock_recipe("pm-cut-ruby"),
  PM.unlock_recipe("pm-sapphire-cutting"),
  PM.unlock_recipe("pm-ruby-laser-head"),
}
data.raw["technology"]["laser"].prerequisites = {"pm-gemstone-processing", "processing-unit"}

data.raw["technology"]["laser-turret"].prerequisites = {"laser", "pm-vanadium-oxide-redox-batteries"}
data.raw["technology"]["laser-turret"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}

data.raw["technology"]["personal-laser-defense-equipment"].prerequisites = {"laser", "pm-vanadium-oxide-redox-batteries"}
data.raw["technology"]["personal-laser-defense-equipment"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["electronics"].effects =
{
  PM.unlock_recipe("copper-cable"),
  PM.unlock_recipe("pm-electronic-integrated-circuits"),
  PM.unlock_recipe("pm-electronic-breadboard"),
  PM.unlock_recipe("electronic-circuit"),
  PM.unlock_recipe("small-electric-pole"),
  PM.unlock_recipe("inserter"),
  PM.unlock_recipe("iron-stick")
}

data.raw["technology"]["personal-roboport-equipment"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["personal-roboport-equipment"].unit.count = 150
data.raw["technology"]["personal-roboport-equipment"].prerequisites = {"construction-robotics", "advanced-circuit"}
data.raw["technology"]["personal-roboport-mk2-equipment"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
}
data.raw["technology"]["personal-roboport-mk2-equipment"].unit.count = 300
data.raw["technology"]["personal-roboport-mk2-equipment"].prerequisites = {"pm-lithium-ion-construction-robotics"}

table.insert(data.raw["technology"]["automation-science-pack"].prerequisites, "pm-laboratory")

data.raw["technology"]["bulk-inserter"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["flamethrower"].prerequisites = {"flammables", "pm-oil-fractions-burning"}
data.raw["technology"]["flamethrower"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-1"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-2"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["refined-flammables-3"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["refined-flammables-4"].prerequisites = {"refined-flammables-3"}
data.raw["technology"]["refined-flammables-4"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["refined-flammables-5"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-6"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
}


data.raw["technology"]["speed-module"].icon_size = 256
data.raw["technology"]["speed-module"].icon = "__periodic-madness__/graphics/technology/speed-module-1-tech.png"
data.raw["technology"]["speed-module"].effects =
{
  PM.unlock_recipe("speed-module"),
  PM.unlock_recipe("pm-cobalt-blue")
}
data.raw["technology"]["speed-module-2"].icon_size = 256
data.raw["technology"]["speed-module-2"].icon = "__periodic-madness__/graphics/technology/speed-module-2-tech.png"
data.raw["technology"]["speed-module-2"].effects =
{
  PM.unlock_recipe("speed-module-2"),
  PM.unlock_recipe("pm-speed-module-1-crushing"),
}
data.raw["technology"]["speed-module-3"].icon_size = 256
data.raw["technology"]["speed-module-3"].icon = "__periodic-madness__/graphics/technology/speed-module-3-tech.png"
data.raw["technology"]["speed-module-3"].effects =
{
  PM.unlock_recipe("speed-module-3"),
  PM.unlock_recipe("pm-speed-module-2-crushing"),
}
data.raw["technology"]["speed-module-3"].prerequisites = {"speed-module-2", "pm-alkali-metal-pack-unlock", "pm-metalloid-pack-unlock"}
data.raw["module"]["productivity-module"].icon_size = 64
data.raw["module"]["productivity-module"].icon = "__periodic-madness__/graphics/icons/modules/productivity-module-1.png"
data.raw["module"]["productivity-module-2"].icon_size = 64
data.raw["module"]["productivity-module-2"].icon = "__periodic-madness__/graphics/icons/modules/productivity-module-2.png"
data.raw["module"]["productivity-module-3"].icon_size = 64
data.raw["module"]["productivity-module-3"].icon = "__periodic-madness__/graphics/icons/modules/productivity-module-3.png"

data.raw["technology"]["productivity-module"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["productivity-module"].unit.count = 100
data.raw["technology"]["productivity-module-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["productivity-module-2"].unit.count = 150
data.raw["technology"]["productivity-module-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["steam-power"].effects = 
{
  PM.unlock_recipe("pm-dirty-boiler"),
  PM.unlock_recipe("steam-engine")
}

data.raw["technology"]["productivity-module"].icon_size = 256
data.raw["technology"]["productivity-module"].icon = "__periodic-madness__/graphics/technology/productivity-module-1-tech.png"
data.raw["technology"]["productivity-module"].effects =
{
  PM.unlock_recipe("productivity-module"),
  PM.unlock_recipe("pm-cadnium-red")
}
data.raw["technology"]["productivity-module-2"].icon_size = 256
data.raw["technology"]["productivity-module-2"].icon = "__periodic-madness__/graphics/technology/productivity-module-2-tech.png"
data.raw["technology"]["productivity-module-2"].effects =
{
  PM.unlock_recipe("productivity-module-2"),
  PM.unlock_recipe("pm-productivity-module-1-crushing"),
}
data.raw["technology"]["productivity-module-3"].icon_size = 256
data.raw["technology"]["productivity-module-3"].icon = "__periodic-madness__/graphics/technology/productivity-module-3-tech.png"
data.raw["technology"]["productivity-module-3"].effects =
{
  PM.unlock_recipe("productivity-module-3"),
  PM.unlock_recipe("pm-productivity-module-2-crushing"),
}
data.raw["technology"]["productivity-module-3"].prerequisites = {"productivity-module-2", "pm-alkali-metal-pack-unlock", "pm-metalloid-pack-unlock"}
data.raw["module"]["efficiency-module"].icon_size = 64
data.raw["module"]["efficiency-module"].icon = "__periodic-madness__/graphics/icons/modules/efficiency-module-1.png"
data.raw["module"]["efficiency-module-2"].icon_size = 64
data.raw["module"]["efficiency-module-2"].icon = "__periodic-madness__/graphics/icons/modules/efficiency-module-2.png"
data.raw["module"]["efficiency-module-3"].icon_size = 64
data.raw["module"]["efficiency-module-3"].icon = "__periodic-madness__/graphics/icons/modules/efficiency-module-3.png"
data.raw["technology"]["efficiency-module"].icon_size = 256
data.raw["technology"]["efficiency-module"].icon =
"__periodic-madness__/graphics/technology/efficiency-module-1-tech.png"
data.raw["technology"]["efficiency-module"].effects =
{
  PM.unlock_recipe("efficiency-module"),
  PM.unlock_recipe("pm-chrome-green")
}
data.raw["technology"]["efficiency-module-2"].icon_size = 256
data.raw["technology"]["efficiency-module-2"].icon =
"__periodic-madness__/graphics/technology/efficiency-module-2-tech.png"
data.raw["technology"]["efficiency-module-2"].effects =
{
  PM.unlock_recipe("efficiency-module-2"),
  PM.unlock_recipe("pm-efficiency-module-1-crushing"),
}
data.raw["technology"]["efficiency-module-3"].icon_size = 256
data.raw["technology"]["efficiency-module-3"].icon =
"__periodic-madness__/graphics/technology/efficiency-module-3-tech.png"
data.raw["technology"]["efficiency-module-3"].effects =
{
  PM.unlock_recipe("efficiency-module-3"),
  PM.unlock_recipe("pm-efficiency-module-2-crushing"),
}
data.raw["technology"]["efficiency-module-3"].prerequisites = {"efficiency-module-2", "pm-alkali-metal-pack-unlock", "pm-metalloid-pack-unlock"}
data.raw["technology"]["efficiency-module"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["efficiency-module"].unit.count = 100
data.raw["technology"]["efficiency-module-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["efficiency-module-2"].unit.count = 150
data.raw["technology"]["efficiency-module-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}

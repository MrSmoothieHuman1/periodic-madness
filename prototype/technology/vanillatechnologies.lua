local PM = require("__periodic-madness__/library")
data.raw["technology"]["automation"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "assembling-machine-1"
  },
  {
    type = "unlock-recipe",
    recipe = "storage-tank"
  },
  {
    type = "unlock-recipe",
    recipe = "long-handed-inserter"
  },
}

data.raw["technology"]["automation-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "assembling-machine-2"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-crusher-1"
  }
}
data.raw["technology"]["automation-2"].prerequisites = { "steel-processing", "pm-advanced-basic-tubing",
  "logistic-science-pack" }

data.raw["technology"]["automation-3"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "assembling-machine-3"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-crusher-2"
  }
}
data.raw["technology"]["automation-3"].prerequisites = { "advanced-electronics-2", "electric-engine" }
data.raw["technology"]["automation-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

local ATMSTech = data.raw["technology"]["logistic-science-pack"]

ATMSTech.icon_size = 256
ATMSTech.icon = "__periodic-madness__/graphics/technology/advanced-transition-metal-unlock.png"
ATMSTech.prerequisites = { "pm-advanced-transition-metal-refining", "pm-mercury-processing" }


local AdvancedTMScience = data.raw["tool"]["logistic-science-pack"]

AdvancedTMScience.icon = "__periodic-madness__/graphics/icons/science/advanced-transition-metal-pack.png"
AdvancedTMScience.icon_size = 64


local SulfurFix = data.raw["technology"]["sulfur-processing"]

SulfurFix.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-vanadium-oxide-catalyst"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-sulfur-dioxide-cracking"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-acidic-water-to-sulfuric-acid"
  }
}
SulfurFix.prerequisites = { "pm-fuel-oils-recipes", "pm-kerosene-recipes", "pm-oil-residual-recipes" }

data.raw["technology"]["sulfur-processing"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

local RedCircuitFix = data.raw["technology"]["advanced-electronics"]

RedCircuitFix.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-advanced-circuit-breadboard"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-advanced-integrated-circuits"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-circuit"
  }
}
RedCircuitFix.prerequisites = { "pm-fluid-circuit", "pm-basic-polyethylene-plastic", "pm-copper-tin-solder" }
data.raw["technology"]["advanced-electronics"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

local BlueBeltEarly = data.raw["technology"]["logistics-3"]

BlueBeltEarly.prerequisites = { "logistics-2", "pm-lubricating-oils-recipes" }
BlueBeltEarly.unit =
{
  count = 150,
  ingredients =
  {
    { "automation-science-pack",                            1},
    { "logistic-science-pack",                              1},
    { "pm-advanced-advanced-transition-metal-science-pack", 1}
  },
  time = 15
}


local PowerPoleChange = data.raw["technology"]["electric-energy-distribution-1"]

PowerPoleChange.prerequisites = { "pm-fiberoptics" }


local PowerPoleChange2 = data.raw["technology"]["electric-energy-distribution-2"]

PowerPoleChange2.prerequisites = { "chemical-science-pack", "electric-energy-distribution-1", "pm-gold-processing" }


data.raw["technology"]["fluid-handling"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-stainless-steel-tank"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-stainless-steel-pipe"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-stainless-steel-pipe-to-ground"
  }
}
data.raw["technology"]["fluid-handling"].prerequisites = { "pm-multimetal-multiproperty" }
data.raw["technology"]["fluid-handling"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

local OilOverhaul = data.raw["technology"]["oil-processing"]

OilOverhaul.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pumpjack"
  },
  {
    type = "unlock-recipe",
    recipe = "oil-refinery"
  },
  {
    type = "unlock-recipe",
    recipe = "chemical-plant"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-basic-oil-cracking"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-molybdenum-vulcanisation"
  }
}
OilOverhaul.prerequisites = { "fluid-handling", "pm-multimetal-multiproperty" }

data.raw["technology"]["oil-processing"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}


local SteelAlloyPreReq = data.raw["technology"]["steel-processing"]

SteelAlloyPreReq.prerequisites = { "pm-alloying" }


local ConcretePreReq = data.raw["technology"]["concrete"]

ConcretePreReq.prerequisites = { "pm-oil-residual-recipes", "advanced-material-processing", "automation-2" }


local Electronics1Fix = data.raw["technology"]["electronics"]

Electronics1Fix.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-mini-motor"
  }
}

local AdvancedOilOverhaul = data.raw["technology"]["advanced-oil-processing"]

AdvancedOilOverhaul.icon_size = 256
AdvancedOilOverhaul.icon = "__periodic-madness__/graphics/technology/fractional-distillation.png"
AdvancedOilOverhaul.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-fractional-distillator"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-crude-oil-fractional-distillation"
  }
}
AdvancedOilOverhaul.prerequisites = { "oil-processing", "pm-basic-polyethylene-plastic" }
AdvancedOilOverhaul.unit =
{
  count = 200,
  ingredients =
  {
    { "automation-science-pack",                            1},
    { "logistic-science-pack",                              1},
    { "pm-advanced-advanced-transition-metal-science-pack", 1}
  },
  time = 30
}
data.raw["technology"]["advanced-oil-processing"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["engine"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["engine"].prerequisites = { "pm-vanadium-chromium-alloying" }

data.raw["technology"]["railway"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["automated-rail-transportation"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["rail-signals"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["fluid-wagon"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["automobilism"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["concrete"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["stack-inserter"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["chemical-science-pack"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["chemical-science-pack"].icon =
"__periodic-madness__/graphics/technology/reactive-non-metal-unlock.png"
data.raw["technology"]["chemical-science-pack"].unit.time = 80
data.raw["technology"]["chemical-science-pack"].prerequisites = { "pm-atmospheric-condensation", "pm-science-center" }
data.raw["technology"]["chemical-science-pack"].unit.count = 150

data.raw["technology"]["steel-processing"].icon = "__periodic-madness__/graphics/technology/steel-tech.png"
data.raw["technology"]["steel-processing"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "steel-plate"
  },
  {
    type = "unlock-recipe",
    recipe = "steel-chest"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-manganese-plate"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-transition-manganese-leeching"
  }
}

local LubeFix = data.raw["technology"]["lubricant"]

LubeFix.prerequisites = { "pm-lubricating-oils-recipes", "pm-post-transition-metal-pack-unlock" }
LubeFix.effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-heavy-lubricant"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-heavy-lube-electric-engine-unit"
  }
}
LubeFix.unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["solar-energy"].prerequisites = { "pm-cadnium-processing", "advanced-electronics" }
data.raw["technology"]["solar-energy"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "solar-panel"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-solar-cell"
  }
}
data.raw["technology"]["solar-energy"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}


data.raw["technology"]["stack-inserter"].prerequisites = { "pm-filter-long-handed-inserter" }


data.raw["technology"]["flammables"].prerequisites = { "pm-fuel-oils-recipes", "pm-petrol-recipes", "pm-kerosene-recipes",
  "pm-diesel-recipes" }
data.raw["technology"]["flammables"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["plastics"].effects = {}
data.raw["technology"]["plastics"].unit.count = 100
data.raw["technology"]["plastics"].hidden = true
data.raw["technology"]["plastics"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["advanced-material-processing-2"].prerequisites = { "pm-vanadium-chromium-alloying" }
data.raw["technology"]["advanced-material-processing-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["modular-armor"].prerequisites = { "pm-cadnium-processing", "advanced-electronics" }
data.raw["technology"]["modular-armor"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["mining-productivity-1"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["modules"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-module-case"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-gallium-nitride"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-module-speed-lights"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-aluminium-gallium-indium-phosphide"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-module-productivity-lights"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-gallium-arsenide"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-module-efficiency-lights"
  },

}
data.raw["technology"]["modules"].prerequisites = { "pm-trace-gas-refining", "pm-indium-processing" }
data.raw["technology"]["modules"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["robotics"].prerequisites = { "pm-vanadium-oxide-redox-batteries", "electric-engine" }
data.raw["technology"]["robotics"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["solar-panel-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["belt-immunity-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["battery-equipment"].prerequisites = { "pm-vanadium-oxide-redox-batteries", "modular-armor" }
data.raw["technology"]["battery-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["battery-mk2-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["night-vision-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["electric-engine"].prerequisites = { "pm-lubricating-oils-recipes" }
data.raw["technology"]["electric-engine"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["construction-robotics"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["logistic-robotics"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["low-density-structure"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}
data.raw["technology"]["low-density-structure"].prerequisites = { "pm-polytetrafluoroethylene-plastic" }

data.raw["technology"]["laser"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["uranium-processing"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["nuclear-power"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "nuclear-reactor"
  },
  {
    type = "unlock-recipe",
    recipe = "steam-turbine"
  }
}
data.raw["technology"]["nuclear-power"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["advanced-electronics-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-cobalt-blue"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-indium-wire"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-ferrum-ferric-chloride"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-metal-ferric-chloride"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-processing-breadboard"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-processing-integrated-circuits"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-semiconductor"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-better-transistors"
  },
  {
    type = "unlock-recipe",
    recipe = "processing-unit"
  },
}
data.raw["technology"]["advanced-electronics-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["advanced-electronics-2"].prerequisites = { "pm-indium-processing" }

data.raw["technology"]["power-armor"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["exoskeleton-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["military-3"].prerequisites = { "pm-post-transition-metal-pack-unlock", "military-2" }
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
}
data.raw["technology"]["military-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1},
}

data.raw["technology"]["laser-turret"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "military-science-pack",                              1}
}

data.raw["technology"]["electric-energy-distribution-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["electric-energy-distribution-2"].prerequisites = { "pm-post-transition-metal-pack-unlock" }

data.raw["technology"]["electric-energy-accumulators"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["electric-energy-accumulators"].prerequisites = { "pm-vanadium-oxide-redox-batteries" }

data.raw["technology"]["battery"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["explosives"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["cliff-explosives"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}

data.raw["technology"]["land-mine"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "military-science-pack",                              1}
}

data.raw["technology"]["braking-force-1"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}

data.raw["technology"]["braking-force-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1}
}

data.raw["technology"]["power-armor"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["exoskeleton-equipment"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["tank"].prerequisites = { "automobilism", "pm-post-transition-metal-pack-unlock" }
data.raw["technology"]["tank"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["nuclear-power"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "nuclear-reactor"
  },
  {
    type = "unlock-recipe",
    recipe = "steam-turbine",
  },
  {
    type = "unlock-recipe",
    recipe = "heat-pipe"
  }
}
data.raw["technology"]["nuclear-power"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["uranium-processing"].prerequisites = { "concrete", "pm-polonium-processing" }
data.raw["technology"]["uranium-processing"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["lubricant"].unit.count = 125

data.raw["technology"]["defender"].unit.ingredients =
{
  { "automation-science-pack", 1},
  { "logistic-science-pack",   1}
}
data.raw["technology"]["defender"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "defender-capsule"
  },
  {
    type = "maximum-following-robots-count",
    modifier = 9
  }
}
data.raw["technology"]["defender"].prerequisites = { "military-2" }

data.raw["technology"]["distractor"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["distractor"].prerequisites = { "defender", "pm-advanced-advanced-transition-metal-pack-unlock" }

data.raw["technology"]["destroyer"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["destroyer"].prerequisites = { "distractor", "pm-post-transition-metal-pack-unlock" }

data.raw["technology"]["follower-robot-count-1"].unit.ingredients =
{
  { "automation-science-pack", 1},
  { "logistic-science-pack",   1}
}
data.raw["technology"]["follower-robot-count-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["follower-robot-count-4"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}

data.raw["technology"]["effect-transmission"].unit.count = 275
data.raw["technology"]["effect-transmission"].prerequisites = { "pm-vacuum-tubes", "pm-polytetrafluoroethylene-plastic" }
data.raw["technology"]["effect-transmission"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-travelling-wave-amplifier-tube"
  },
  {
    type = "unlock-recipe",
    recipe = "beacon"
  }
}

data.raw["technology"]["effect-transmission"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}

data.raw["technology"]["rocket-control-unit"].prerequisites = { "pm-vacuum-tubes" }
data.raw["technology"]["rocket-control-unit"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}
data.raw["technology"]["rocket-control-unit"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-CRT"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-oscilloscope"
  },
  {
    type = "unlock-recipe",
    recipe = "rocket-control-unit"
  }
}

data.raw["technology"]["logistic-system"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}
data.raw["technology"]["logistic-system"].prerequisites = { "pm-lithium-ion-logistic-robotics" }

data.raw["technology"]["worker-robots-speed-1"].effects =
{
  {
    type = "worker-robot-speed",
    modifier = 0.15
  }
}
data.raw["technology"]["worker-robots-speed-1"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-2"].effects =
{
  {
    type = "worker-robot-speed",
    modifier = 0.20
  }
}
data.raw["technology"]["worker-robots-speed-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
}
data.raw["technology"]["worker-robots-speed-3"].effects =
{
  {
    type = "worker-robot-speed",
    modifier = 0.25
  }
}
data.raw["technology"]["worker-robots-speed-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
}
data.raw["technology"]["worker-robots-speed-4"].effects =
{
  {
    type = "worker-robot-speed",
    modifier = 0.30
  }
}
data.raw["technology"]["worker-robots-speed-4"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}
data.raw["technology"]["worker-robots-speed-5"].effects =
{
  {
    type = "worker-robot-speed",
    modifier = 0.35
  }
}
data.raw["technology"]["worker-robots-speed-5"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-alkali-metal-science-pack",                       1}
}

data.raw["technology"]["worker-robots-storage-1"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-storage-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["worker-robots-storage-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1},
}
data.raw["technology"]["utility-science-pack"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "pm-post-transition-metal-science-pack",              1}
}


data.raw["technology"]["military-2"].prerequisites = { "pm-rubber-processing" }

data.raw["technology"]["modules"].icon_size = 256
data.raw["technology"]["modules"].icon = "__periodic-madness__/graphics/technology/modules.png"

local SpeedMod1Fix = data.raw["module"]["speed-module"]

SpeedMod1Fix.icon_size = 128
SpeedMod1Fix.icon = "__periodic-madness__/graphics/icons/speed-module-1.png"

local SpeedMod2Fix = data.raw["module"]["speed-module-2"]

SpeedMod2Fix.icon_size = 128
SpeedMod2Fix.icon = "__periodic-madness__/graphics/icons/speed-module-2.png"

local SpeedMod3Fix = data.raw["module"]["speed-module-3"]

SpeedMod3Fix.icon_size = 128
SpeedMod3Fix.icon = "__periodic-madness__/graphics/icons/speed-module-3.png"

data.raw["technology"]["speed-module"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1},
}
data.raw["technology"]["speed-module-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["speed-module-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1},
  { "pm-alkali-metal-science-pack",                       1},
  { "pm-metalloid-science-pack",                          1}
}

data.raw["technology"]["speed-module"].icon_size = 256
data.raw["technology"]["speed-module"].icon = "__periodic-madness__/graphics/technology/speed-module-1-tech.png"
data.raw["technology"]["speed-module"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "speed-module"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-cobalt-blue"
  }
}
data.raw["technology"]["speed-module-2"].icon_size = 256
data.raw["technology"]["speed-module-2"].icon = "__periodic-madness__/graphics/technology/speed-module-2-tech.png"
data.raw["technology"]["speed-module-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "speed-module-2"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-speed-module-1-crushing"
  },
}
data.raw["technology"]["speed-module-3"].icon_size = 256
data.raw["technology"]["speed-module-3"].icon = "__periodic-madness__/graphics/technology/speed-module-3-tech.png"
data.raw["technology"]["speed-module-3"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "speed-module-3"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-speed-module-2-crushing"
  },
}
data.raw["technology"]["speed-module-3"].prerequisites = { "speed-module-2", "pm-alkali-metal-pack-unlock",
  "pm-boron-processing" }
local ProdMod1Fix = data.raw["module"]["productivity-module"]

ProdMod1Fix.icon_size = 128
ProdMod1Fix.icon = "__periodic-madness__/graphics/icons/productivity-module-1.png"

local ProdMod2Fix = data.raw["module"]["productivity-module-2"]

ProdMod2Fix.icon_size = 128
ProdMod2Fix.icon = "__periodic-madness__/graphics/icons/productivity-module-2.png"

local ProdMod3Fix = data.raw["module"]["productivity-module-3"]

ProdMod3Fix.icon_size = 128
ProdMod3Fix.icon = "__periodic-madness__/graphics/icons/productivity-module-3.png"

data.raw["technology"]["productivity-module"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["productivity-module-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["productivity-module-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1},
  { "pm-alkali-metal-science-pack",                       1},
  { "pm-metalloid-science-pack",                          1}
}

data.raw["technology"]["productivity-module"].icon_size = 256
data.raw["technology"]["productivity-module"].icon =
"__periodic-madness__/graphics/technology/productivity-module-1-tech.png"
data.raw["technology"]["productivity-module"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "productivity-module"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-cadnium-red"
  }
}
data.raw["technology"]["productivity-module-2"].icon_size = 256
data.raw["technology"]["productivity-module-2"].icon =
"__periodic-madness__/graphics/technology/productivity-module-2-tech.png"
data.raw["technology"]["productivity-module-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "productivity-module-2"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-productivity-module-1-crushing"
  },
}
data.raw["technology"]["productivity-module-3"].icon_size = 256
data.raw["technology"]["productivity-module-3"].icon =
"__periodic-madness__/graphics/technology/productivity-module-3-tech.png"
data.raw["technology"]["productivity-module-3"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "productivity-module-3"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-productivity-module-2-crushing"
  },
}
data.raw["technology"]["productivity-module-3"].prerequisites = { "productivity-module-2", "pm-alkali-metal-pack-unlock",
  "pm-boron-processing" }
data.raw["module"]["effectivity-module"].icon_size = 128
data.raw["module"]["effectivity-module"].icon = "__periodic-madness__/graphics/icons/effectivity-module-1.png"
data.raw["module"]["effectivity-module-2"].icon_size = 128
data.raw["module"]["effectivity-module-2"].icon = "__periodic-madness__/graphics/icons/effectivity-module-2.png"
data.raw["module"]["effectivity-module-3"].icon_size = 128
data.raw["module"]["effectivity-module-3"].icon = "__periodic-madness__/graphics/icons/effectivity-module-3.png"
data.raw["technology"]["effectivity-module"].icon_size = 256
data.raw["technology"]["effectivity-module"].icon =
"__periodic-madness__/graphics/technology/effectivity-module-1-tech.png"
data.raw["technology"]["effectivity-module"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "effectivity-module"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-chrome-green"
  }
}
data.raw["technology"]["effectivity-module-2"].icon_size = 256
data.raw["technology"]["effectivity-module-2"].icon =
"__periodic-madness__/graphics/technology/effectivity-module-2-tech.png"
data.raw["technology"]["effectivity-module-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "effectivity-module-2"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-efficiency-module-1-crushing"
  },
}
data.raw["technology"]["effectivity-module-3"].icon_size = 256
data.raw["technology"]["effectivity-module-3"].icon =
"__periodic-madness__/graphics/technology/effectivity-module-3-tech.png"
data.raw["technology"]["effectivity-module-3"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "effectivity-module-3"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-efficiency-module-2-crushing"
  },
}
data.raw["technology"]["effectivity-module-3"].prerequisites = { "effectivity-module-2", "pm-alkali-metal-pack-unlock",
  "pm-boron-processing" }
data.raw["technology"]["effectivity-module"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["effectivity-module-2"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1}
}
data.raw["technology"]["effectivity-module-3"].unit.ingredients =
{
  { "automation-science-pack",                            1},
  { "logistic-science-pack",                              1},
  { "pm-advanced-advanced-transition-metal-science-pack", 1},
  { "chemical-science-pack",                              1},
  { "pm-post-transition-metal-science-pack",              1},
  { "pm-alkali-metal-science-pack",                       1},
  { "pm-metalloid-science-pack",                          1}
}

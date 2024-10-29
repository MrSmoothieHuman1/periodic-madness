local PM = require("__periodic-madness__/library")

data.raw["recipe"]["electronic-circuit"].ingredients =
{
  PM.ingredient("copper-cable", 2),
  PM.ingredient("pm-basic-breadboard", 1),
  PM.ingredient("pm-basic-integrated-circuits", 3),
}
data.raw["recipe"]["automation-science-pack"].ingredients =
{
  PM.ingredient("iron-plate", 1),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-nickel-plate", 1),
}
data.raw["recipe"]["assembling-machine-1"].ingredients =
{
  PM.ingredient("pm-assembling-machine-0", 1),
  PM.ingredient("pm-basic-framing", 5),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("iron-gear-wheel", 3)
}
data.raw["recipe"]["assembling-machine-2"].ingredients =
{
  PM.ingredient("pm-basic-framing", 5),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-brass-cog", 4),
  PM.ingredient("assembling-machine-1", 1)
}
data.raw["recipe"]["logistic-science-pack"].ingredients =
{
  PM.ingredient("pm-gold-plate", 5),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-manganese-plate", 5),
  PM.ingredient("pm-liquid-mercury", 25, "fluid")
}
data.raw["recipe"]["military-science-pack"].ingredients =
{
  PM.ingredient("piercing-rounds-magazine", 1),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("stone-wall", 2),
  PM.ingredient("grenade", 1)
}
data.raw["recipe"]["production-science-pack"].ingredients =
{
  PM.ingredient("rail", 30),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("productivity-module", 1),
  PM.ingredient("electric-furnace", 1)
}
data.raw["recipe"]["utility-science-pack"].ingredients =
{
  PM.ingredient("processing-unit", 2),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("low-density-structure", 3)
}
data.raw["recipe"]["lab"].ingredients =
{
  PM.ingredient("pm-glass-pane", 8),
  PM.ingredient("iron-gear-wheel", 5),
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("electronic-circuit", 5)
}
data.raw["recipe"]["solar-panel"].ingredients =
{
  PM.ingredient("advanced-circuit", 3),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("pm-heavyweight-framing", 4),
  PM.ingredient("pm-solar-cell", 4),
  PM.ingredient("pm-silver-plate", 5)
}
data.raw["recipe"]["advanced-circuit"].ingredients =
{
  PM.ingredient("pm-gold-wire", 3),
  PM.ingredient("pm-advanced-circuit-breadboard", 1),
  PM.ingredient("pm-transistors", 5),
  PM.ingredient("pm-solder", 1),
  PM.ingredient("pm-advanced-integrated-circuits", 3)
}
data.raw["recipe"]["small-lamp"].ingredients =
{
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("pm-glass-pane", 2),
}
data.raw["recipe"]["fast-transport-belt"].ingredients =
{
  PM.ingredient("transport-belt", 1),
  PM.ingredient("pm-brass-cog", 2)
}
data.raw["recipe"]["fast-underground-belt"].ingredients =
{
  PM.ingredient("underground-belt", 2),
  PM.ingredient("pm-brass-cog", 8),
}
data.raw["recipe"]["fast-splitter"].ingredients =
{
  PM.ingredient("splitter", 1),
  PM.ingredient("electronic-circuit", 3),
  PM.ingredient("pm-silver-plate", 2),
  PM.ingredient("pm-brass-cog", 2)
}
data.raw["recipe"]["express-transport-belt"].ingredients =
{
  PM.ingredient("pm-advanced-transport-belt", 1),
  PM.ingredient("low-density-structure", 2),
  PM.ingredient("processing-unit", 3),
  PM.ingredient("pm-heavy-lubricant", 5, "fluid")
}
data.raw["recipe"]["express-underground-belt"].ingredients =
{
  PM.ingredient("pm-advanced-underground-belt", 2),
  PM.ingredient("low-density-structure", 4),
  PM.ingredient("pm-heavy-lubricant", 10, "fluid")
}
data.raw["recipe"]["express-splitter"].ingredients =
{
  PM.ingredient("pm-advanced-splitter", 1),
  PM.ingredient("low-density-structure", 2),
  PM.ingredient("processing-unit", 6),
  PM.ingredient("pm-heavy-lubricant", 15, "fluid")
}
data.raw["recipe"]["splitter"].ingredients =
{
  PM.ingredient("pm-basic-motor", 2),
  PM.ingredient("transport-belt", 4),
  PM.ingredient("electronic-circuit", 2)
}
data.raw["recipe"]["inserter"].ingredients =
{
  PM.ingredient("pm-basic-motor", 1),
  PM.ingredient("pm-basic-wiring", 2),
  PM.ingredient("iron-plate", 1)
}
data.raw["recipe"]["fast-inserter"].ingredients =
{
  PM.ingredient("pm-mini-motor", 1),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("iron-plate", 2)
}
data.raw["recipe"]["long-handed-inserter"].ingredients =
{
  PM.ingredient("pm-basic-motor", 1),
  PM.ingredient("iron-stick", 2),
  PM.ingredient("pm-basic-wiring", 2),
  PM.ingredient("iron-plate", 1)
}
data.raw["recipe"]["big-electric-pole"].ingredients =
{
  PM.ingredient("pm-basic-framing", 8),
  PM.ingredient("pm-fiberoptic-cable", 1),
  PM.ingredient("pm-stainless-steel-alloy", 2)
}
data.raw["recipe"]["substation"].ingredients =
{
  PM.ingredient("pm-fiberoptic-cable", 8),
  PM.ingredient("pm-heavyweight-framing", 12),
  PM.ingredient("pm-aluminium-plate", 6),
  PM.ingredient("concrete", 10)
}
data.raw["recipe"]["concrete"].ingredients =
{
  PM.ingredient("pm-bitumen", 3),
  PM.ingredient("stone-brick", 5),
  PM.ingredient("water", 100, "fluid")
}
data.raw["recipe"]["assembling-machine-3"].ingredients =
{
  PM.ingredient("assembling-machine-2", 1),
  PM.ingredient("electric-engine-unit", 5),
  PM.ingredient("processing-unit", 1),
  PM.ingredient("pm-cooling-plating", 10),
  PM.ingredient("pm-sapphire-laser-head", 1),
  PM.ingredient("pm-radiation-resistant-panelling", 10)
}
data.raw["recipe"]["oil-refinery"].ingredients =
{
  PM.ingredient("pm-heating-plating", 2),
  PM.ingredient("pm-brass-cog", 4),
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("stone-brick", 15)
}
data.raw["recipe"]["chemical-plant"].ingredients =
{
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-brass-plate", 3),
  PM.ingredient("iron-gear-wheel", 5),
  PM.ingredient("pm-fluid-circuit", 3)
}
data.raw["recipe"]["pumpjack"].ingredients =
{
  PM.ingredient("pm-brass-plate", 3),
  PM.ingredient("pm-corrosion-resistant-tubing", 4),
  PM.ingredient("pm-fluid-circuit", 4),
  PM.ingredient("pm-basic-framing", 8)
}
data.raw["recipe"]["boiler"].ingredients =
{
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("stone-furnace", 1),
  PM.ingredient("pm-basic-panelling", 3)
}
data.raw["recipe"]["steam-engine"].ingredients =
{
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("iron-gear-wheel", 6),
  PM.ingredient("pm-basic-panelling", 12)
}
data.raw["recipe"]["offshore-pump"].ingredients =
{
  PM.ingredient("pm-brass-cog", 1),
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("electronic-circuit", 1)
}
data.raw["recipe"]["chemical-science-pack"].ingredients =
{
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-chlorine", 14 * 3, "fluid"),
  PM.ingredient("pm-carbon", 28),
  PM.ingredient("sulfur", 14)
}
data.raw["recipe"]["storage-tank"].ingredients =
{
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("pm-basic-tubing", 2)
}
data.raw["recipe"]["locomotive"].ingredients =
{
  PM.ingredient("engine-unit", 20),
  PM.ingredient("pm-lightweight-panelling", 10),
  PM.ingredient("pm-stainless-steel-alloy", 12),
  PM.ingredient("pm-heavyweight-framing", 20)
}
data.raw["recipe"]["car"].ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 8),
  PM.ingredient("pm-mini-motor", 4),
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("pm-basic-framing", 16)
}
data.raw["recipe"]["tank"].ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 12),
  PM.ingredient("engine-unit", 10),
  PM.ingredient("pm-heavyweight-panelling", 20),
  PM.ingredient("pm-heavyweight-framing", 40)
}
data.raw["recipe"]["low-density-structure"].ingredients =
{
  PM.ingredient("pm-polytetrafluoroethylene", 5),
  PM.ingredient("pm-antimony-ore", 5),
  PM.ingredient("pm-lightweight-framing", 20),
  PM.ingredient("pm-titanium-plate", 15)
}
data.raw["recipe"]["rocket-fuel"].ingredients =
{
  PM.ingredient("solid-fuel", 10),
  PM.ingredient("pm-stainless-steel-alloy", 4),
  PM.ingredient("pm-fuel-oils", 50, "fluid")
}
data.raw["recipe"]["rocket-fuel"].category = "crafting-with-fluid"

data.raw["recipe"]["burner-mining-drill"].ingredients =
{
  PM.ingredient("pm-basic-framing", 2),
  PM.ingredient("iron-gear-wheel", 2),
  PM.ingredient("stone-furnace", 1)
}
data.raw["recipe"]["electric-mining-drill"].ingredients =
{
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("pm-basic-wiring", 4),
  PM.ingredient("electronic-circuit", 3)
}
data.raw["recipe"]["steel-plate"].ingredients =
{
  PM.ingredient("iron-plate", 3),
  PM.ingredient("pm-manganese-plate", 3)
}
data.raw["recipe"]["flying-robot-frame"].ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 2),
  PM.ingredient("pm-lightweight-framing", 8),
  PM.ingredient("electric-engine-unit", 1),
  PM.ingredient("advanced-circuit", 2),
}
data.raw["recipe"]["electric-engine-unit"].ingredients =
{
  PM.ingredient("pm-basic-wiring", 10),
  PM.ingredient("advanced-circuit", 2),
  PM.ingredient("pm-solid-lubricant", 12),
  PM.ingredient("engine-unit", 1),
  PM.ingredient("pm-kasethal-plate", 4)
}
data.raw["recipe"]["construction-robot"].ingredients =
{
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-polyethylene-plastic", 4)
}
data.raw["recipe"]["logistic-robot"].ingredients =
{
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-polyethylene-plastic", 4)
}
data.raw["recipe"]["electric-furnace"].ingredients =
{
  PM.ingredient("advanced-circuit", 5), --basic, i know
  PM.ingredient("pm-heating-plating", 6),
  PM.ingredient("pm-heavyweight-panelling", 8),
  PM.ingredient("pm-heavyweight-framing", 6),
  PM.ingredient("pm-kasethal-plate", 5)
}
data.raw["recipe"]["exoskeleton-equipment"].ingredients =
{
  PM.ingredient("pm-lightweight-framing", 30),
  PM.ingredient("pm-heavyweight-panelling", 2),
  PM.ingredient("processing-unit", 8),
  PM.ingredient("electric-engine-unit", 20)
}
data.raw["recipe"]["solar-panel-equipment"].ingredients =
{
  PM.ingredient("pm-solar-cell", 2),
  PM.ingredient("pm-lightweight-framing", 5),
  PM.ingredient("advanced-circuit", 2),
}
data.raw["recipe"]["solar-panel-equipment"].subgroup = "pm-modular-power"
data.raw["recipe"]["solar-panel-equipment"].order = "a"
data.raw["recipe"]["personal-roboport-equipment"].ingredients =
{
  PM.ingredient("pm-lightweight-framing", 12),
  PM.ingredient("pm-heavyweight-panelling", 4),
  PM.ingredient("pm-basic-wiring", 8),
  PM.ingredient("advanced-circuit", 12),
  PM.ingredient("pm-vanadium-redox-battery", 15)
}
data.raw["recipe"]["roboport"].ingredients =
{
  PM.ingredient("pm-basic-wiring", 20),
  PM.ingredient("advanced-circuit", 25),
  PM.ingredient("pm-heavyweight-framing", 10),
  PM.ingredient("pm-heavyweight-panelling", 16),
  PM.ingredient("pm-polyethylene-plastic", 8)
}
data.raw["recipe"]["accumulator"].ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 4),
  PM.ingredient("pm-basic-wiring", 5),
  PM.ingredient("pm-heavyweight-framing", 8)
}
data.raw["recipe"]["engine-unit"].ingredients =
{
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-platinum-plate", 3),
  PM.ingredient("pm-kasethal-plate", 3)
}
data.raw["recipe"]["pipe"].ingredients =
{
  PM.ingredient("pm-basic-tubing", 1),
  PM.ingredient("pm-zinc-plate", 1)
}
data.raw["recipe"]["pipe-to-ground"].ingredients =
{
  PM.ingredient("pm-basic-tubing", 10),
  PM.ingredient("pm-zinc-plate", 2)
}
data.raw["recipe"]["train-stop"].ingredients =
{
  PM.ingredient("pm-lightweight-framing", 6),
  PM.ingredient("advanced-circuit", 3),
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("pm-glass-pane", 4)
}
data.raw["recipe"]["rail-signal"].ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("pm-lightweight-panelling", 4)
}
data.raw["recipe"]["rail-chain-signal"].ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("advanced-circuit", 1),
  PM.ingredient("pm-lightweight-panelling", 4)
}
data.raw["recipe"]["flamethrower-turret"].ingredients =
{
  PM.ingredient("pm-stainless-steel-alloy", 20),
  PM.ingredient("pm-fluid-circuit", 15),
  PM.ingredient("engine-unit", 5),
  PM.ingredient("pm-brass-cog", 10),
  PM.ingredient("pm-heating-plating", 20)
}
data.raw["recipe"]["modular-armor"].ingredients =
{
  PM.ingredient("pm-lightweight-framing", 25),
  PM.ingredient("pm-tungsten-plate", 10),
  PM.ingredient("advanced-circuit", 20),
  PM.ingredient("pm-cadnium-plate", 12),
  PM.ingredient("pm-polyethylene-plastic", 12)
}
data.raw["recipe"]["power-armor"].ingredients =
{
  PM.ingredient("processing-unit", 30),
  PM.ingredient("electric-engine-unit", 20),
  PM.ingredient("pm-lightweight-framing", 50),
  PM.ingredient("pm-stainless-steel-alloy", 20),
  PM.ingredient("pm-cadnium-plate", 24),
  PM.ingredient("pm-lead-plate", 12)
}
data.raw["recipe"]["medium-electric-pole"].ingredients =
{
  PM.ingredient("pm-basic-framing", 6),
  PM.ingredient("steel-plate", 2),
  PM.ingredient("copper-cable", 4)
}
data.raw["recipe"]["speed-module"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
data.raw["recipe"]["productivity-module"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
data.raw["recipe"]["efficiency-module"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
data.raw["recipe"]["speed-module-2"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
data.raw["recipe"]["productivity-module-2"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
data.raw["recipe"]["efficiency-module-2"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
data.raw["recipe"]["speed-module-3"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
data.raw["recipe"]["productivity-module-3"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
data.raw["recipe"]["efficiency-module-3"].ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
data.raw["recipe"]["processing-unit"].ingredients =
{
  PM.ingredient("pm-processing-breadboard", 1),
  PM.ingredient("pm-processing-integrated-circuits", 3),
  PM.ingredient("pm-solder", 2),
  PM.ingredient("pm-semiconductor", 3),
  PM.ingredient("pm-transistors", 10),
  PM.ingredient("pm-indium-wire", 3)
}
data.raw["recipe"]["cannon-shell"].ingredients =
{
  PM.ingredient("pm-polyethylene-plastic", 2),
  PM.ingredient("explosives", 1),
  PM.ingredient("pm-stainless-steel-alloy", 2)
}
data.raw["recipe"]["explosive-cannon-shell"].ingredients =
{
  PM.ingredient("pm-polyethylene-plastic", 2),
  PM.ingredient("explosives", 2),
  PM.ingredient("pm-stainless-steel-alloy", 4)
}
data.raw["recipe"]["slowdown-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["slowdown-capsule"].results = { PM.product("slowdown-capsule", 2) }
data.raw["recipe"]["slowdown-capsule"].ingredients =
{
  PM.ingredient("pm-melatonin", 4, "fluid"),
  PM.ingredient("pm-lightweight-panelling", 4),
  PM.ingredient("pm-lightweight-framing", 4),
  PM.ingredient("pm-fluid-circuit", 3)
}
data.raw["recipe"]["poison-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["poison-capsule"].results = { PM.product("poison-capsule", 2) }
data.raw["recipe"]["poison-capsule"].ingredients =
{
  PM.ingredient("pm-phosgene", 4, "fluid"),
  PM.ingredient("pm-lightweight-panelling", 4),
  PM.ingredient("pm-lightweight-framing", 4),
  PM.ingredient("pm-fluid-circuit", 3)
}
data.raw["recipe"]["heat-pipe"].subgroup = "pm-heat-machines"
data.raw["recipe"]["heat-pipe"].order = "b"
data.raw["recipe"]["heat-pipe"].results = { PM.product("heat-pipe", 2) }
data.raw["recipe"]["heat-pipe"].ingredients =
{
  PM.ingredient("pm-heat-pipe-1", 1),
  PM.ingredient("pm-molten-framing", 20),
  PM.ingredient("pm-stainless-steel-alloy", 5),
  PM.ingredient("pm-silver-plate", 5)
}
data.raw["recipe"]["uranium-fuel-cell"].ingredients =
{
  PM.ingredient("pm-empty-reactor-cell", 10),
  PM.ingredient("uranium-235", 1),
  PM.ingredient("uranium-238", 19)
}
data.raw["recipe"]["firearm-magazine"].ingredients =
{
  PM.ingredient("pm-zinc-plate", 3),
  PM.ingredient("coal", 1)
}
data.raw["recipe"]["piercing-rounds-magazine"].ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 2),
  PM.ingredient("firearm-magazine", 1),
  PM.ingredient("steel-plate", 2),
  PM.ingredient("copper-plate", 2)
}

data.raw["recipe"]["cluster-grenade"].ingredients =
{
  PM.ingredient("explosives", 4),
  PM.ingredient("pm-cadnium-plate", 2),
  PM.ingredient("pm-silver-plate", 2),
  PM.ingredient("pm-glass-shards", 3),
  PM.ingredient("grenade", 1)
}
data.raw["recipe"]["defender-capsule"].ingredients =
{
  PM.ingredient("electronic-circuit", 3),
  PM.ingredient("pm-brass-cog", 2),
  PM.ingredient("pm-basic-panelling", 6),
  PM.ingredient("piercing-rounds-magazine", 2)
}
data.raw["recipe"]["battery-equipment"].ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 5),
  PM.ingredient("pm-vulcanised-rubber", 10),
  PM.ingredient("pm-glass-pane", 5),
  PM.ingredient("pm-tungsten-plate", 3),
  PM.ingredient("advanced-circuit", 5)
}
data.raw["recipe"]["battery-equipment"].subgroup = "pm-modular-storage"
data.raw["recipe"]["battery-equipment"].order = "a"
data.raw["recipe"]["battery-mk2-equipment"].ingredients =
{
  PM.ingredient("battery-equipment", 5),
  PM.ingredient("processing-unit", 5),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("pm-module-efficiency-light", 1)
}
data.raw["recipe"]["battery-equipment"].subgroup = "pm-modular-storage"
data.raw["recipe"]["battery-equipment"].order = "b"

data.raw["recipe"]["beacon"].ingredients =
{
  PM.ingredient("pm-travelling-wave-amplifier-tube", 1),
  PM.ingredient("pm-polytetrafluoroethylene", 5),
  PM.ingredient("pm-heavyweight-framing", 24),
  PM.ingredient("advanced-circuit", 8),
  PM.ingredient("pm-chrominum-ore", 12)
}
data.raw["recipe"]["piercing-shotgun-shell"].ingredients = 
{
  PM.ingredient("pm-brass-plate", 3),
  PM.ingredient("shotgun-shell", 1),
  PM.ingredient("pm-vulcanised-rubber", 3)
}
data.raw["recipe"]["distractor-capsule"].ingredients = 
{
  PM.ingredient("pm-titanium-plate", 2),
  PM.ingredient("piercing-rounds-magazine", 2),
  PM.ingredient("electronic-circuit", 4),
  PM.ingredient("pm-basic-panelling", 8)
}
data.raw["recipe"]["destroyer-capsule"].ingredients =
{
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("advanced-circuit", 2),
  PM.ingredient("pm-lightweight-framing", 4),
  PM.ingredient("pm-heavyweight-panelling", 6)
}
data.raw["recipe"]["energy-shield-equipment"].ingredients = 
{
  PM.ingredient("pm-argon-gas", 15, "fluid"),
  PM.ingredient("pm-gold-wire", 10),
  PM.ingredient("advanced-circuit", 8),
  PM.ingredient("pm-heavyweight-panelling", 8)
}
data.raw["recipe"]["fission-reactor-equipment"].ingredients = 
{
  PM.ingredient("processing-unit", 30),
  PM.ingredient("low-density-structure", 15),
  PM.ingredient("pm-molybdenum-ore", 80),
  PM.ingredient("pm-radiation-resistant-panelling", 20),
  PM.ingredient("pm-radiation-resistant-tubing", 20),
  PM.ingredient("pm-heavyweight-framing", 15)
}
data.raw["recipe"]["energy-shield-equipment"].category = "crafting-with-fluid"
data.raw["recipe"]["nuclear-fuel-reprocessing"].results =
{
  PM.product_range("pm-empty-reactor-cell", 3, 5),
  PM.product("uranium-238", 3)
}
data.raw["recipe"]["pump"].ingredients = 
{
  PM.ingredient("pm-corrosion-resistant-tubing", 10),
  PM.ingredient("steel-plate", 4),
  PM.ingredient("pm-mini-motor", 4),
  PM.ingredient("pm-heavyweight-panelling", 8),
}
data.raw["recipe"]["laser-turret"].category = "crafting-with-fluid"
data.raw["recipe"]["laser-turret"].ingredients = 
{
  PM.ingredient("pm-ruby-laser-head", 1),
  PM.ingredient("pm-heavy-lubricant", 8, "fluid"),
  PM.ingredient("electric-engine-unit", 2),
  PM.ingredient("pm-vanadium-redox-battery", 4),
  PM.ingredient("pm-heavyweight-framing", 12),
}
data.raw["recipe"]["personal-laser-defense-equipment"].ingredients = 
{
  PM.ingredient("pm-ruby-laser-head", 1),
  PM.ingredient("pm-lightweight-framing", 20),
  PM.ingredient("pm-polyethylene-plastic", 12),
  PM.ingredient("electric-engine-unit", 2),
  PM.ingredient("processing-unit", 6)
}

data.raw["recipe"]["speed-module-2"].energy_required = 15
data.raw["recipe"]["efficiency-module-2"].energy_required = 15
data.raw["recipe"]["productivity-module-2"].energy_required = 15
data.raw["recipe"]["speed-module-3"].energy_required = 30
data.raw["recipe"]["efficiency-module-3"].energy_required = 30
data.raw["recipe"]["productivity-module-3"].energy_required = 30

data.raw["recipe"]["processing-unit"].energy_required = 6
data.raw["recipe"]["processing-unit"].category = "pm-circuitry",
data.raw["recipe"]["advanced-circuit"].category = "pm-circuitry"
data.raw["recipe"]["advanced-circuit"].energy_required = 3
data.raw["recipe"]["electronic-circuit"].category = "pm-circuitry",

data.raw["recipe"]["express-transport-belt"].energy_required = 2
data.raw["recipe"]["express-splitter"].energy_required = 3
 data.raw["recipe"]["express-underground-belt"].energy_required = 2

data.raw["recipe"]["chemical-science-pack"].category = "crafting-with-fluid"
data.raw["recipe"]["logistic-science-pack"].category = "crafting-with-fluid"

data.raw["recipe"]["coal-liquefaction"].ingredients =
{
  PM.ingredient("coal", 10),
  PM.ingredient("pm-oil-residuals", 25, "fluid"),
  PM.ingredient("steam", 50, "fluid")
}
data.raw["recipe"]["coal-liquefaction"].results =
{
  PM.product("pm-oil-residuals", 90, "fluid"),
  PM.product("pm-refinery-gases", 20, "fluid"),
  PM.product("crude-oil", 10, "fluid")
}

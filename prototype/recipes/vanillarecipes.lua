local PM = require("__periodic-madness__/library")
--for all vanilla changed recipes
local recipes = data.raw.recipe
---@param recipe data.RecipePrototype
---@return data.RecipePrototype
local function sanitize_recipe(recipe)
  local difficulty = recipe.normal or recipe.expensive
  if difficulty then
    for k, v in pairs(difficulty --[[@as {[string]:any}]]) do
---@diagnostic disable-next-line: no-unknown
      recipe[k] = v
    end
    recipe.normal, recipe.expensive = nil, nil
  end
  return recipe
end
sanitize_recipe(recipes["electronic-circuit"]).ingredients =
{
  { "copper-cable",                 2 },
  { "pm-basic-breadboard",          1 },
  { "pm-basic-integrated-circuits", 3 },
}
sanitize_recipe(recipes["automation-science-pack"]).ingredients =
{
  { "iron-plate",        1 },
  { "pm-science-bottle", 1 },
  { "pm-nickel-plate",   1 },
}
sanitize_recipe(recipes["assembling-machine-1"]).ingredients =
{
  { "pm-assembling-machine-0", 1 },
  { "pm-basic-framing",        5 },
  { "electronic-circuit",      1 },
  { "iron-gear-wheel",         3 }
}
sanitize_recipe(recipes["assembling-machine-2"]).ingredients =
{
  { "pm-basic-framing",     5 },
  { "electronic-circuit",   2 },
  { "pm-brass-cog",         4 },
  { "assembling-machine-1", 1 }
}
sanitize_recipe(recipes["logistic-science-pack"]).ingredients =
{
  { "pm-gold-plate",      5 },
  { "pm-science-bottle",  1 },
  { "pm-manganese-plate", 5 },
  { type = "fluid",       name = "pm-liquid-mercury", amount = 25 }
}
sanitize_recipe(recipes["military-science-pack"]).ingredients =
{
  { "piercing-rounds-magazine", 1 },
  { "pm-science-bottle",        1 },
  { "stone-wall",               2 },
  { "grenade",                  1 }
}
sanitize_recipe(recipes["production-science-pack"]).ingredients =
{
  { "rail",                30 },
  { "pm-science-bottle",   1 },
  { "productivity-module", 1 },
  { "electric-furnace",    1 }
}
sanitize_recipe(recipes["utility-science-pack"]).ingredients =
{
  { "processing-unit",       2 },
  { "pm-science-bottle",     1 },
  { "flying-robot-frame",    1 },
  { "low-density-structure", 3 }
}
sanitize_recipe(recipes["lab"]).ingredients =
{
  { "pm-glass-pane",      8 },
  { "iron-gear-wheel",    5 },
  { "pm-basic-framing",   4 },
  { "electronic-circuit", 5 }
}
sanitize_recipe(recipes["solar-panel"]).ingredients =
{
  { "advanced-circuit",         3 },
  { "pm-lightweight-panelling", 8 },
  { "pm-heavyweight-framing",   4 },
  { "pm-solar-cell",            4 },
  { "pm-silver-plate",          5 }
}
sanitize_recipe(recipes["advanced-circuit"]).ingredients =
{
  { "pm-gold-wire",                    3 },
  { "pm-advanced-circuit-breadboard",  1 },
  { "pm-transistors",                  5 },
  { "pm-solder",                       1 },
  { "pm-advanced-integrated-circuits", 3 }
}
sanitize_recipe(recipes["small-lamp"]).ingredients =
{
  { "electronic-circuit", 1 },
  { "pm-glass-pane",      2 },
}
sanitize_recipe(recipes["fast-transport-belt"]).ingredients =
{
  { "transport-belt", 1 },
  { "pm-brass-cog",   2 }
}
sanitize_recipe(recipes["fast-underground-belt"]).ingredients =
{
  { "underground-belt", 2 },
  { "pm-brass-cog",     10 }
}
sanitize_recipe(recipes["fast-splitter"]).ingredients =
{
  { "splitter",           1 },
  { "pm-brass-cog",       2 },
  { "electronic-circuit", 5 }
}
sanitize_recipe(recipes["express-transport-belt"]).ingredients =
{
  { "pm-polyethylene-plastic",  2 },
  { "pm-solid-lubricant",       2 },
  { "pm-stainless-steel-alloy", 2 },
  { "fast-transport-belt",      1 },
}
sanitize_recipe(recipes["express-underground-belt"]).ingredients =
{
  { "express-transport-belt", 1 },
  { "fast-underground-belt",  2 },
  { "pm-solid-lubricant",     4 }
}
sanitize_recipe(recipes["express-splitter"]).ingredients =
{
  { "express-transport-belt",   2 },
  { "pm-stainless-steel-alloy", 2 },
  { "pm-polyethylene-plastic",  4 },
  { "pm-solid-lubricant",       6 },
  { "pm-mini-motor",            2 }
}
sanitize_recipe(recipes["splitter"]).ingredients =
{
  { "pm-basic-motor",     2 },
  { "transport-belt",     4 },
  { "electronic-circuit", 2 }
}
sanitize_recipe(recipes["inserter"]).ingredients =
{
  { "pm-basic-motor",  1 },
  { "pm-basic-wiring", 2 },
  { "iron-plate",      1 }
}
sanitize_recipe(recipes["fast-inserter"]).ingredients =
{
  { "pm-mini-motor",      1 },
  { "electronic-circuit", 1 },
  { "iron-plate",         2 }
}
sanitize_recipe(recipes["long-handed-inserter"]).ingredients =
{
  { "pm-basic-motor",  1 },
  { "iron-stick",      2 },
  { "pm-basic-wiring", 2 },
  { "iron-plate",      1 }
}
sanitize_recipe(recipes["filter-inserter"]).ingredients =
{
  { "electronic-circuit", 2 },
  { "fast-inserter",      1 },
}
sanitize_recipe(recipes["stack-inserter"]).ingredients =
{
  { "pm-vulcanised-rubber", 2 },
  { "pm-solid-lubricant",   1 },
  { "fast-inserter",        1 },
  { "advanced-circuit",     2 }
}
sanitize_recipe(recipes["stack-filter-inserter"]).ingredients =
{
  { "pm-vulcanised-rubber", 2 },
  { "pm-solid-lubricant",   1 },
  { "filter-inserter",      1 },
  { "advanced-circuit",     4 }
}
sanitize_recipe(recipes["big-electric-pole"]).ingredients =
{
  { "pm-basic-framing",         8 },
  { "pm-fiberoptic-cable",      1 },
  { "pm-stainless-steel-alloy", 2 }
}
sanitize_recipe(recipes["substation"]).ingredients =
{
  { "pm-fiberoptic-cable",    8 },
  { "pm-heavyweight-framing", 12 },
  { "pm-aluminium-plate",     6 },
  { "concrete",               10 }
}
sanitize_recipe(recipes["concrete"]).ingredients =
{
  { "pm-bitumen",   3 },
  { "stone-brick",  5 },
  { type = "fluid", name = "water", amount = 100 }
}
sanitize_recipe(recipes["assembling-machine-3"]).ingredients =
{
  { "assembling-machine-2",             1 },
  { "electric-engine-unit",             6 },
  { "processing-unit",                  4 },
  { "pm-cooling-plating",               20 },
  { "pm-radiation-resistant-panelling", 10 }
}
sanitize_recipe(recipes["oil-refinery"]).ingredients =
{
  { "pm-heating-plating",            2 },
  { "pm-brass-cog",                  4 },
  { "pm-corrosion-resistant-tubing", 6 },
  { "pm-fluid-circuit",              5 },
  { "stone-brick",                   15 }
}
sanitize_recipe(recipes["chemical-plant"]).ingredients =
{
  { "pm-corrosion-resistant-tubing", 6 },
  { "pm-brass-plate",                3 },
  { "iron-gear-wheel",               5 },
  { "pm-fluid-circuit",              3 }
}
sanitize_recipe(recipes["pumpjack"]).ingredients =
{
  { "pm-brass-plate",                3 },
  { "pm-corrosion-resistant-tubing", 4 },
  { "pm-fluid-circuit",              4 },
  { "pm-basic-framing",              8 }
}
sanitize_recipe(recipes["boiler"]).ingredients =
{
  { "pm-basic-tubing",    4 },
  { "stone-furnace",      1 },
  { "pm-basic-panelling", 3 }
}
sanitize_recipe(recipes["steam-engine"]).ingredients =
{
  { "pm-basic-tubing",    4 },
  { "iron-gear-wheel",    6 },
  { "pm-basic-panelling", 12 }
}
sanitize_recipe(recipes["offshore-pump"]).ingredients =
{
  { "pm-brass-cog",       1 },
  { "pm-basic-tubing",    4 },
  { "electronic-circuit", 1 }
}
sanitize_recipe(recipes["chemical-science-pack"]).ingredients =
{
  { "pm-science-bottle", 1 },
  { type = "fluid",      name = "pm-chlorine", amount = 25 },
  { "pm-carbon",         15 },
  { "sulfur",            8 }
}
sanitize_recipe(recipes["storage-tank"]).ingredients =
{
  { "pm-basic-panelling", 8 },
  { "pm-basic-framing",   4 },
  { "pm-basic-tubing",    2 }
}
sanitize_recipe(recipes["locomotive"]).ingredients =
{
  { "engine-unit",              20 },
  { "pm-lightweight-panelling", 10 },
  { "pm-stainless-steel-alloy", 12 },
  { "pm-heavyweight-framing",   20 }
}
sanitize_recipe(recipes["car"]).ingredients =
{
  { "pm-vulcanised-rubber",     8 },
  { "engine-unit",              4 },
  { "pm-lightweight-panelling", 4 },
  { "pm-lightweight-framing",   12 }
}
sanitize_recipe(recipes["tank"]).ingredients =
{
  { "pm-vulcanised-rubber",     12 },
  { "engine-unit",              10 },
  { "pm-heavyweight-panelling", 20 },
  { "pm-heavyweight-framing",   40 }
}
sanitize_recipe(recipes["low-density-structure"]).ingredients =
{
  { "pm-polytetrafluoroethylene", 5 },
  { "copper-plate",               20 },
  { "steel-plate",                2 }
}
sanitize_recipe(recipes["rocket-fuel"]).ingredients =
{
  { "solid-fuel",               10 },
  { "pm-stainless-steel-alloy", 4 },
  { type = "fluid",             name = "pm-fuel-oils", amount = 50 }
}
data.raw["recipe"]["rocket-fuel"].category = "crafting-with-fluid"

sanitize_recipe(recipes["burner-mining-drill"]).ingredients =
{
  { "pm-basic-framing", 2 },
  { "iron-gear-wheel",  2 },
  { "stone-furnace",    1 }
}
sanitize_recipe(recipes["electric-mining-drill"]).ingredients =
{
  { "pm-basic-framing",   4 },
  { "pm-basic-panelling", 8 },
  { "pm-basic-wiring",    4 },
  { "electronic-circuit", 3 }
}
sanitize_recipe(recipes["steel-plate"]).ingredients =
{
  { "iron-plate",         3 },
  { "pm-manganese-plate", 3 }
}
sanitize_recipe(recipes["flying-robot-frame"]).ingredients =
{
  { "pm-vanadium-redox-battery", 2 },
  { "pm-lightweight-framing",    8 },
  { "electric-engine-unit",      1 },
  { "advanced-circuit",          2 },
}
sanitize_recipe(recipes["electric-engine-unit"]).ingredients =
{
  { "pm-basic-wiring",    10 },
  { "advanced-circuit",   2 },
  { "pm-solid-lubricant", 12 },
  { "engine-unit",        1 },
  { "pm-kasethal-plate",  4 }
}
sanitize_recipe(recipes["construction-robot"]).ingredients =
{
  { "flying-robot-frame",       1 },
  { "pm-lightweight-panelling", 8 },
  { "electronic-circuit",       2 },
  { "pm-polyethylene-plastic",  4 }
}
sanitize_recipe(recipes["logistic-robot"]).ingredients =
{
  { "flying-robot-frame",       1 },
  { "pm-lightweight-panelling", 8 },
  { "electronic-circuit",       2 },
  { "pm-polyethylene-plastic",  4 }
}
sanitize_recipe(recipes["electric-furnace"]).ingredients =
{
  { "advanced-circuit",         5 }, --basic, i know
  { "pm-heating-plating",       6 },
  { "pm-heavyweight-panelling", 8 },
  { "pm-heavyweight-framing",   6 },
  { "pm-kasethal-plate",        5 }
}
sanitize_recipe(recipes["exoskeleton-equipment"]).ingredients =
{
  { "pm-lightweight-framing",   30 },
  { "pm-heavyweight-panelling", 2 },
  { "processing-unit",          8 },
  { "electric-engine-unit",     20 }
}
sanitize_recipe(recipes["solar-panel-equipment"]).ingredients =
{
  { "pm-solar-cell",          2 },
  { "pm-lightweight-framing", 5 },
  { "advanced-circuit",       2 },
}
sanitize_recipe(recipes["personal-roboport-equipment"]).ingredients =
{
  { "pm-lightweight-framing",    12 },
  { "pm-heavyweight-panelling",  4 },
  { "pm-basic-wiring",           8 },
  { "advanced-circuit",          12 },
  { "pm-vanadium-redox-battery", 15 }
}
sanitize_recipe(recipes["roboport"]).ingredients =
{
  { "pm-basic-wiring",          20 },
  { "advanced-circuit",         25 },
  { "pm-heavyweight-framing",   10 },
  { "pm-heavyweight-panelling", 16 },
  { "pm-polyethylene-plastic",  8 }
}
sanitize_recipe(recipes["accumulator"]).ingredients =
{
  { "pm-vanadium-redox-battery", 4 },
  { "pm-basic-wiring",           5 },
  { "pm-heavyweight-framing",    8 }
}
sanitize_recipe(recipes["engine-unit"]).ingredients =
{
  { "pm-stainless-steel-alloy",      2 },
  { "pm-corrosion-resistant-tubing", 6 },
  { "pm-platinum-plate",             3 },
  { "pm-kasethal-plate",             3 }
}
sanitize_recipe(recipes["pipe"]).ingredients =
{
  { "pm-basic-tubing", 1 },
  { "pm-zinc-plate",   1 }
}
sanitize_recipe(recipes["pipe-to-ground"]).ingredients =
{
  { "pm-basic-tubing", 10 },
  { "pm-zinc-plate",   2 }
}
sanitize_recipe(recipes["train-stop"]).ingredients =
{
  { "pm-lightweight-framing",   6 },
  { "advanced-circuit",         3 },
  { "pm-stainless-steel-alloy", 2 },
  { "pm-glass-pane",            4 }
}
sanitize_recipe(recipes["rail-signal"]).ingredients =
{
  { "pm-glass-pane",            3 },
  { "electronic-circuit",       1 },
  { "pm-lightweight-panelling", 4 }
}
sanitize_recipe(recipes["rail-chain-signal"]).ingredients =
{
  { "pm-glass-pane",            3 },
  { "advanced-circuit",         1 },
  { "pm-lightweight-panelling", 4 }
}
sanitize_recipe(recipes["flamethrower-turret"]).ingredients =
{
  { "pm-stainless-steel-alloy", 20 },
  { "pm-fluid-circuit",         15 },
  { "engine-unit",              5 },
  { "pm-brass-cog",             10 },
  { "pm-heating-plating",       20 }
}
sanitize_recipe(recipes["modular-armor"]).ingredients =
{
  { "pm-lightweight-framing",  25 },
  { "pm-tungsten-plate",       10 },
  { "advanced-circuit",        20 },
  { "pm-cadnium-plate",        12 },
  { "pm-polyethylene-plastic", 12 }
}
sanitize_recipe(recipes["power-armor"]).ingredients =
{
  { "processing-unit",          30 },
  { "electric-engine-unit",     20 },
  { "pm-lightweight-framing",   50 },
  { "pm-stainless-steel-alloy", 20 },
  { "pm-cadnium-plate",         24 },
  { "pm-lead-plate",            12 }
}
sanitize_recipe(recipes["medium-electric-pole"]).ingredients =
{
  { "pm-basic-framing", 6 },
  { "steel-plate",      2 },
  { "copper-cable",     4 }
}

sanitize_recipe(recipes["speed-module"]).ingredients =
{
  { "pm-module-case",        1 },
  { "pm-module-speed-light", 1 },
  { "electronic-circuit",    5 },
  { "pm-cobalt-blue",        5 }
}
sanitize_recipe(recipes["productivity-module"]).ingredients =
{
  { "pm-module-case",               1 },
  { "pm-module-productivity-light", 1 },
  { "electronic-circuit",           5 },
  { "pm-cadnium-red",               5 }
}
sanitize_recipe(recipes["effectivity-module"]).ingredients =
{
  { "pm-module-case",             1 },
  { "pm-module-efficiency-light", 1 },
  { "electronic-circuit",         5 },
  { "pm-chrome-green",            5 }
}
sanitize_recipe(recipes["speed-module-2"]).ingredients =
{
  { "pm-module-case",        1 },
  { "pm-module-speed-light", 1 },
  { "electronic-circuit",    5 },
  { "pm-fluid-circuit",      5 },
  { "pm-cobalt-blue",        5 }
}
sanitize_recipe(recipes["productivity-module-2"]).ingredients =
{
  { "pm-module-case",               1 },
  { "pm-module-productivity-light", 1 },
  { "electronic-circuit",           5 },
  { "pm-fluid-circuit",             5 },
  { "pm-cadnium-red",               5 }
}
sanitize_recipe(recipes["effectivity-module-2"]).ingredients =
{
  { "pm-module-case",             1 },
  { "pm-module-efficiency-light", 1 },
  { "electronic-circuit",         5 },
  { "pm-fluid-circuit",           5 },
  { "pm-chrome-green",            5 }
}
sanitize_recipe(recipes["speed-module-3"]).ingredients =
{
  { "pm-module-case",        1 },
  { "pm-module-speed-light", 1 },
  { "pm-fluid-circuit",      5 },
  { "advanced-circuit",      5 },
  { "pm-cobalt-blue",        5 }
}
sanitize_recipe(recipes["productivity-module-3"]).ingredients =
{
  { "pm-module-case",               1 },
  { "pm-module-productivity-light", 1 },
  { "pm-fluid-circuit",             5 },
  { "advanced-circuit",             5 },
  { "pm-cadnium-red",               5 }
}
sanitize_recipe(recipes["effectivity-module-3"]).ingredients =
{
  { "pm-module-case",             1 },
  { "pm-module-efficiency-light", 1 },
  { "pm-fluid-circuit",           5 },
  { "advanced-circuit",           5 },
  { "pm-chrome-green",            5 }
}
sanitize_recipe(recipes["processing-unit"]).ingredients =
{
  { "pm-processing-breadboard",          1 },
  { "pm-processing-integrated-circuits", 3 },
  { "pm-solder",                         2 },
  { "pm-semiconductor",                  3 },
  { "pm-transistors",                    10 },
  { "pm-indium-wire",                    3 }
}
sanitize_recipe(recipes["cannon-shell"]).ingredients =
{
  { "pm-polyethylene-plastic",  2 },
  { "explosives",               1 },
  { "pm-stainless-steel-alloy", 2 }
}
sanitize_recipe(recipes["explosive-cannon-shell"]).ingredients =
{
  { "pm-polyethylene-plastic",  2 },
  { "explosives",               2 },
  { "pm-stainless-steel-alloy", 4 }
}
data.raw["recipe"]["slowdown-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["slowdown-capsule"].results = { { "slowdown-capsule", 2 } }
sanitize_recipe(recipes["slowdown-capsule"]).ingredients =
{
  { type = "fluid",             name = "pm-melatonin", amount = 4 },
  { "pm-lightweight-panelling", 4 },
  { "pm-lightweight-framing",   4 },
  { "pm-fluid-circuit",         3 }
}
data.raw["recipe"]["poison-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["poison-capsule"].results = { { "poison-capsule", 2 } }
sanitize_recipe(recipes["poison-capsule"]).ingredients =
{
  { type = "fluid",             name = "pm-phosgene", amount = 4 },
  { "pm-lightweight-panelling", 4 },
  { "pm-lightweight-framing",   4 },
  { "pm-fluid-circuit",         3 }
}
data.raw["recipe"]["heat-pipe"].subgroup = "pm-heat-machines"
data.raw["recipe"]["heat-pipe"].order = "b"
data.raw["recipe"]["heat-pipe"].results = { { "heat-pipe", 2 } }
sanitize_recipe(recipes["heat-pipe"]).ingredients =
{
  { "pm-heat-pipe-1",           1 },
  { "pm-molten-framing",        20 },
  { "pm-stainless-steel-alloy", 5 },
  { "pm-silver-plate",          5 }
}
sanitize_recipe(recipes["uranium-fuel-cell"]).ingredients =
{
  { "pm-empty-reactor-cell", 10 },
  { "uranium-235",           1 },
  { "uranium-238",           19 }
}
sanitize_recipe(recipes["firearm-magazine"]).ingredients =
{
  { "pm-zinc-plate", 3 },
  { "coal",          1 }
}
sanitize_recipe(recipes["piercing-rounds-magazine"]).ingredients =
{
  { "pm-vulcanised-rubber", 2 },
  { "firearm-magazine",     1 },
  { "steel-plate",          2 },
  { "copper-plate",         2 }
}
sanitize_recipe(recipes["rocket-control-unit"]).ingredients =
{
  { "pm-oscilloscope",         1 },
  { "pm-polyethylene-plastic", 8 },
  { "pm-basic-wiring",         10 }
}
sanitize_recipe(recipes["cluster-grenade"]).ingredients =
{
  { "explosives",       4 },
  { "pm-cadnium-plate", 2 },
  { "pm-silver-plate",  2 },
  { "pm-glass-shards",  3 },
  { "grenade",          1 }
}
sanitize_recipe(recipes["defender-capsule"]).ingredients =
{
  { "electronic-circuit",       3 },
  { "pm-brass-cog",             2 },
  { "pm-basic-panelling",       6 },
  { "piercing-rounds-magazine", 2 }
}
sanitize_recipe(recipes["battery-equipment"]).ingredients =
{
  { "pm-vanadium-redox-battery", 5 },
  { "pm-vulcanised-rubber",      10 },
  { "pm-glass-pane",             5 }
}
sanitize_recipe(recipes["beacon"]).ingredients =
{
  { "pm-travelling-wave-amplifier-tube", 1 },
  { "pm-polytetrafluoroethylene",        5 },
  { "pm-heavyweight-framing",            24 },
  { "advanced-circuit",                  8 },
  { "pm-chrominum-ore",                  12 }
}


data.raw["recipe"]["nuclear-fuel-reprocessing"].results =
{
  {
    name = "pm-empty-reactor-cell",
    amount_min = 3,
    amount_max = 5,
  },
  { "uranium-238", 3 }
}
data.raw["recipe"]["speed-module-2"].energy_required = 15
data.raw["recipe"]["effectivity-module-2"].energy_required = 15
data.raw["recipe"]["productivity-module-2"].energy_required = 15
data.raw["recipe"]["speed-module-3"].energy_required = 30
data.raw["recipe"]["effectivity-module-3"].energy_required = 30
data.raw["recipe"]["productivity-module-3"].energy_required = 30

data.raw["recipe"]["processing-unit"].energy_required = 6
local RCCraftingFix = data.raw["recipe"]["advanced-circuit"]

RCCraftingFix.energy_required = 3

local BlueBeltTime = data.raw["recipe"]["express-transport-belt"]

BlueBeltTime.energy_required = 2

local BlueSplitterTime = data.raw["recipe"]["express-splitter"]

BlueSplitterTime.energy_required = 3

local BlueUBeltTime = data.raw["recipe"]["express-underground-belt"]

BlueUBeltTime.energy_required = 2

data.raw["recipe"]["chemical-science-pack"].category = "crafting-with-fluid"

data.raw["recipe"]["logistic-science-pack"].category = "crafting-with-fluid"

local CoalLiquefactionDirtyFix = data.raw["recipe"]["coal-liquefaction"]

CoalLiquefactionDirtyFix.ingredients =
{
  { "coal",         10 },
  { type = "fluid", name = "pm-oil-residuals", amount = 25 },
  { type = "fluid", name = "steam",            amount = 50 }
}
CoalLiquefactionDirtyFix.results =
{
  { type = "fluid", name = "pm-oil-residuals",  amount = 90 },
  { type = "fluid", name = "pm-refinery-gases", amount = 20 },
  { type = "fluid", name = "crude-oil",         amount = 10 }
}

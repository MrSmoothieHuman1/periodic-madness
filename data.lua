--THIS IS HOW YOU SPELL PERIODIC = periodic
--since i have to write rules for myself, since im a bit of an idiot, some rules:
--2 chunks of an ore = 1 "pure" ore

require("prototype.item")
require("prototype.fluids")
require("prototype.items.circuits")
require("prototype.items.buildings")
require("prototype.items.plates")
require("prototype.items.ores")
require("prototype.items.batteries")
require("prototype.items.plastic")
require("prototype.items.multimetalitems")
require("prototype.items.fuel")
require("prototype.items.science")

require("prototype.technology.technologies")
require("prototype.technology.alttechnologies")
require("prototype.technology.vanillatechnologies")
require("prototype.technology.biomodule-technologies")

require("prototype.recipe")
require("prototype.recipes.machinerecipes")
require("prototype.recipes.altrecipes")
require("prototype.recipes.vanillarecipes")
require("prototype.recipes.platerecipes")
require("prototype.recipes.byproductrecipes")
require("prototype.recipes.rawrrecipes")
require("prototype.recipes.oilrecipes")
require("prototype.recipes.batteriesrecipes")
require("prototype.recipes.multimetalrrecipes")

require("prototype.recipes.building-recipes.electrolysisrecipes")
require("prototype.recipes.building-recipes.atmo-condenserrecipes")
require("prototype.recipes.building-recipes.inatorrecipes")
require("prototype.recipes.building-recipes.evaporationrecipes")
require("prototype.recipes.building-recipes.megassemblerrecipes")
require("prototype.recipes.biologicalrecipes")
require("prototype.recipes.building-recipes.crystallisationrecipes")

require("prototype.elements.molybdenum")
require("prototype.elements.silver")
require("prototype.elements.gold")
require("prototype.elements.titanium")
require("prototype.elements.tungsten")
require("prototype.elements.tin")
require("prototype.elements.mercury")
require("prototype.elements.calcium")
require("prototype.elements.iron")
require("prototype.elements.copper")
require("prototype.elements.zinc")
require("prototype.elements.nickel")
require("prototype.elements.manganese")
require("prototype.elements.vanadium")
require("prototype.elements.cadnium")
require("prototype.elements.palladium")
require("prototype.elements.chrominum")
require("prototype.elements.aluminium")
require("prototype.elements.phosphorus")
require("prototype.elements.flourine")
require("prototype.elements.lead")
require("prototype.elements.gallium")
require("prototype.elements.thallium")
require("prototype.elements.bismuth")
require("prototype.elements.indium")
require("prototype.elements.zirconium")
require("prototype.elements.polonium")
require("prototype.elements.platinum")
require("prototype.elements.cobalt")
require("prototype.elements.sodium")
require("prototype.elements.lithium")
require("prototype.elements.potassium")
require("prototype.elements.caesium")
require("prototype.elements.bromine")
require("prototype.elements.chlorine")
require("prototype.elements.sulfur")
require("prototype.elements.rubidium")
require("prototype.elements.iodine")
require("prototype.elements.francium")
require("prototype.elements.boron")
require("prototype.elements.yttrium")
require("prototype.elements.tellurium")
--require("prototype.elements.antimony")
require("prototype.elements.arsenic")

require("prototype.entity")
require("prototype.remnants")
require("prototype.achievements")
require("prototype.robots")

require("prototype.itemgroups")
require("prototype.equipment")

require("compatibility.testcompat")

local resource_autoplace = require('resource-autoplace');
local noise = require('noise');

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "pm-transition-metals",
    localised_name = {"","[entity=pm-transition-metals] ", {"entity-name.pm-transition-metals"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-transition-metals"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-transition-metals",
    icon = "__periodic-madness__/graphics/icons/ores/transition-metals-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.87, g=0.667, b=0.137},
    minable =
    {
      hardness = 1,
      mining_particle = "copper-ore-particle",
      mining_time = 1,
      result = "pm-transition-metals-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-transition-metals",
      order = "b-z",
      base_density = 7,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
      additional_richness = 1500
    },

    stage_counts = {1000000, 40000, 24000, 20000, 12000, 10000, 7000, 3000},
        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/transition-metals-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-transition-metals-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  }--[[@as data.ResourceEntityPrototype]],
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-post-transition-metals",
    localised_name = {"","[entity=pm-post-transition-metals] ", {"entity-name.pm-post-transition-metals"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-post-transition-metals"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-post-transition-metals",
    icon = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.5, g=0.84, b=1},
    minable =
    {
      hardness = 1,
      mining_particle = "copper-ore-particle",
      mining_time = 1,
      result = "pm-post-transition-metals-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-post-transition-metals",
      order = "b-z",
      base_density = 7,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
      additional_richness = 1500
    },

    stage_counts = {1000000, 40000, 24000, 20000, 12000, 10000, 7000, 3000},

        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/post-transition-metals-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-post-transition-metals-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  }--[[@as data.ResourceEntityPrototype]],
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-alkali-metals",
    localised_name = {"","[entity=pm-alkali-metals] ", {"entity-name.pm-alkali-metals"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-alkali-metals"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-alkali-metals",
    icon = "__periodic-madness__/graphics/icons/ores/alkali-metals-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.098, g=0.35, b=0.82},
    minable =
    {
      hardness = 1,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      result = "pm-alkali-metals-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-alkali-metals",
      order = "b-z",
      base_density = 7,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
      additional_richness = 1500
    },

    stage_counts = {80000, 40000, 26000, 17000, 15200, 12000, 6500, 1000},
        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/alkali-metals-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-alkali-metals-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  }--[[@as data.ResourceEntityPrototype]],
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-metalloid-ore",
    localised_name = {"","[entity=pm-metalloid-ore] ", {"entity-name.pm-metalloid-ore"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-metalloid-ore"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-metalloid-ore",
    icon = "__periodic-madness__/graphics/icons/ores/metalloid-ore-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.29, g=0, b=0.671},
    minable =
    {
      hardness = 1,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      result = "pm-metalloid-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-metalloid-ore",
      order = "b-z",
      base_density = 7,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
      additional_richness = 1500
    },

    stage_counts = {80000, 40000, 26000, 17000, 15200, 12000, 6500, 1000},
        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/metalloid-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-metalloid-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  }--[[@as data.ResourceEntityPrototype]],

--nickel ore

  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-nickel-ore",
    localised_name = {"", "[entity=pm-nickel-ore] ", {"entity-name.pm-nickel-ore"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-nickel-ore"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-nickel-ore",
    icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.70, g=0.70, b=0.80},
  
    minable =
    {
      hardness = 1,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      result = "pm-nickel-chunk"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-nickel-ore",
      order = "b-z",
      base_density = 3,
      base_spots_per_km2 = 3,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.3,
      starting_rq_factor_multiplier = 1.1,
    },

    stage_counts = {15000, 10000, 5500, 3000, 1300, 400, 200, 100},
        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/nickel-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-nickel-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  }--[[@as data.ResourceEntityPrototype]],

  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-zinc-ore",
    localised_name = {"", "[entity=pm-zinc-ore] ", {"entity-name.pm-zinc-ore"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "noise-layer",
    name = "pm-zinc-ore"
	}--[[@as data.NoiseLayer]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-zinc-ore",
    icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
    flags = {"placeable-neutral"},
    order= "a-b-a",
    map_color = {r=0.90, g=0.7, b=0.59},
    minable =
    {
      hardness = 1,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      result = "pm-zinc-chunk"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-zinc-ore",
      order = "b-z",
      base_density = 4,
      base_spots_per_km2 = 2,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.5,
      starting_rq_factor_multiplier = 1.9,
    },

    stage_counts = {20000, 10000, 6500, 3000, 1500, 500, 220, 50},
        stages =
        {
          sheet =
          {
      filename = "__periodic-madness__/graphics/entities/ores/zinc-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__periodic-madness__/graphics/entities/ores/hr-zinc-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    }
  }--[[@as data.ResourceEntityPrototype]]
})
local ChunkChangeIron = data.raw["resource"]["iron-ore"]

ChunkChangeIron.minable = 
{
    hardness = 1,
    mining_particle = "iron-ore-particle",
    mining_time = 1,
    result = "pm-iron-chunk"
}

local ChunkChangeCopper = data.raw["resource"]["copper-ore"]

ChunkChangeCopper.minable =
    {
        hardness = 1,
        mining_particle = "copper-ore-particle",
        mining_time = 1,
        result = "pm-copper-chunk"
    }


local pm_productivity_list = {
  "pm-fluid-circuit",
  "pm-manganese-plate",
  "pm-nickel-plate",
  "pm-zinc-plate",
  "pm-gold-plate",
  "pm-silver-plate",
  "pm-titanium-plate",
  "pm-tungsten-plate",
  "pm-tin-plate",
  "pm-brass-plate",
  "pm-cobalt-plate",
  "pm-platinum-plate",
  "pm-palladium-plate",
  "pm-indium-plate",
  "pm-thallium-plate",
  "pm-lead-plate",
  "pm-cadnium-plate",
  "pm-oxygen-air-filter",
  "pm-nitrogen-air-filter",
  "pm-chlorine-air-filter",
  "pm-carbon-dioxide-air-filter",
  "pm-trace-gas-air-filter",
  "pm-air-filter",
  "pm-megassembler-electronic-circuit",
  "pm-megassembler-fluid-resistant-circuit",
  "pm-megassembler-advanced-circuit",
  "pm-module-case",
  "pm-module-speed-lights",
  "pm-module-productivity-lights",
  "pm-module-efficiency-lights",
  "pm-solar-cell",
  "pm-circuit-breadboard",
  "pm-fluid-circuit-breadboard",
  "pm-advanced-circuit-breadboard",
  "pm-agar-solution",
  "pm-science-bottle",
  "pm-plastic-science-bottle",
  "pm-coal-crushing",
  "pm-stone-crushing",
  "pm-gallium-filtering",
  "pm-polymethyl-methacrylate-plastic",
  "pm-plastic-science-mold",
  "pm-crude-oil-fractional-distillation",
  "pm-cobalt-catalyst",
  "pm-palladium-catalyst",
  "pm-vanadium-oxide-catalyst",
  "pm-copper-zinc-aluminium-catalyst",
  "pm-cobalt-blue",
  "pm-cadnium-red",
  "pm-chrome-green",
  "pm-empty-reactor-cell",
  "pm-crucible",
  "pm-gold-wire",
  "pm-indium-wire",
  "pm-processing-breadboard",
  "pm-semiconductor",
  "pm-empty-reactor-cell",
  "pm-brass-cog",
  "pm-better-air-filter",
  "pm-heavy-lube-electric-engine-unit",
  "pm-flux-container",
  "pm-indium-electrolysis",
  "pm-hydrogen-gas-ionizing",
  "pm-hydrochloric-acid",
  "pm-mercury-liquifying",
  "pm-molybdenum-floating",
  "pm-titanium-chloride-seperation",
  "pm-tungsten-seperation",
  "pm-zirconium-sand-filtering",
  "pm-zirconia",
  "pm-tin-leeching",
  "pm-platinum-nickel-froth-seperation",
  "pm-palladium-nickel-froth-seperation",
  "pm-fluxed-platinum-nickel-froth-seperation",
  "pm-fluxed-palladium-nickel-froth-seperation",
  "pm-chromite-seperation",
  "pm-alternative-science-pack",
  "pm-advanced-advanced-transition-metal-science-pack",
  "pm-post-transition-metal-science-pack",
  "pm-alkali-metal-science-pack",
  "pm-fluxed-phosphor-vapour",
  "pm-fluxed-copper-froth-seperation",
  "pm-phosphor-vapour",
  "pm-copper-froth-seperation",
  "pm-plastic-transition-metal-science-pack",
  "pm-plastic-advanced-transition-metal-science-pack",
  "pm-plastic-advanced-advanced-transition-metal-science-pack",
  "pm-plastic-reactive-non-metals-science-pack",
  "pm-plastic-post-transition-metal-science-pack",
  "pm-transition-iron-leeching",
  "pm-chromic-transition-iron-leeching",
  "pm-transition-copper-leeching",
  "pm-chromic-transition-copper-leeching",
  "pm-transition-zinc-leeching",
  "pm-chromic-transition-zinc-leeching",
  "pm-transition-nickel-leeching",
  "pm-chromic-transition-nickel-leeching",
  "pm-transition-manganese-leeching",
  "pm-chromic-transition-manganese-leeching",
  "pm-transition-aluminium-leeching",
  "pm-chromic-transition-aluminium-leeching",
  "pm-bismuth-leeching",
  "pm-chrominum-leeching",
  "pm-chromic-chrominum-leeching",
  "pm-silver-leeching",
  "pm-gold-leeching",
  "pm-chromic-silver-leeching",
  "pm-chromic-gold-leeching",
  "pm-lead-leeching", 
  "pm-molybdenum-leeching",
  "pm-chromic-molybdenum-leeching",
  "pm-thallium-leeching",
  "pm-tin-leeching",
  "pm-chromic-tin-leeching",
  "pm-titanium-leeching",
  "pm-chromic-titanium-leeching",
  "pm-tungsten-leeching",
  "pm-chromic-tungsten-leeching",
  "pm-zirconium-leeching",
  "pm-CRT",
  "pm-vacuum-tube",
  "pm-vanadate-solution-seperation",
  "pm-vanadate-solution",
  "pm-iodine-vanadate-solution-seperation",
  "pm-ammonium-vanadate-solution",
}

for _, module in pairs(data.raw.module) do
  local limitations = module.limitation
  if limitations then
      --assumes only productivity has limitations
      for _, recipe_name in pairs(pm_productivity_list) do
          table.insert(limitations, recipe_name)
      end
  end
end

local AcidPlant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])

AcidPlant.name = "pm-acid-plant"
AcidPlant.max_health = 300
AcidPlant.crafting_speed = 1
AcidPlant.energy_usage = "100kW"
AcidPlant.crafting_categories = {"pm-acids"}
AcidPlant.minable = {mining_time = 0.1, result = "pm-acid-plant"}
AcidPlant.module_specification.module_slots = 3
data:extend{(AcidPlant)}

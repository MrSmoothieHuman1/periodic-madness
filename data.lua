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
require("prototype.items.ammo")

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
require("prototype.recipes.biologicalrecipes")
require("prototype.recipes.building-recipes.crystallisationrecipes")

require("prototype.elements.042-molybdenum")
require("prototype.elements.047-silver")
require("prototype.elements.079-gold")
require("prototype.elements.022-titanium")
require("prototype.elements.074-tungsten")
require("prototype.elements.050-tin")
require("prototype.elements.080-mercury")
require("prototype.elements.020-calcium")
require("prototype.elements.026-iron")
require("prototype.elements.029-copper")
require("prototype.elements.030-zinc")
require("prototype.elements.028-nickel")
require("prototype.elements.025-manganese")
require("prototype.elements.023-vanadium")
require("prototype.elements.048-cadnium")
require("prototype.elements.046-palladium")
require("prototype.elements.024-chrominum")
require("prototype.elements.013-aluminium")
require("prototype.elements.015-phosphorus")
require("prototype.elements.009-flourine")
require("prototype.elements.082-lead")
require("prototype.elements.031-gallium")
require("prototype.elements.081-thallium")
require("prototype.elements.083-bismuth")
require("prototype.elements.049-indium")
require("prototype.elements.040-zirconium")
require("prototype.elements.084-polonium")
require("prototype.elements.078-platinum")
require("prototype.elements.027-cobalt")
require("prototype.elements.011-sodium")
require("prototype.elements.003-lithium")
require("prototype.elements.019-potassium")
require("prototype.elements.055-caesium")
require("prototype.elements.035-bromine")
require("prototype.elements.017-chlorine")
require("prototype.elements.016-sulfur")
require("prototype.elements.037-rubidium")
require("prototype.elements.009-iodine")
require("prototype.elements.087-francium")
require("prototype.elements.005-boron")
require("prototype.elements.039-yttrium")
require("prototype.elements.052-tellurium")
require("prototype.elements.051-antimony")
require("prototype.elements.033-arsenic")
require("prototype.elements.032-germanium")
require("prototype.elements.006-carbon")
require("prototype.elements.007-nitrogen")
require("prototype.elements.008-oxygen")
require("prototype.elements.002-helium")
require("prototype.elements.018-argon")
require("prototype.elements.092-uranium")
require("prototype.elements.014-silicon")
require("prototype.elements.085-astatine")

require("prototype.entity")
require("prototype.remnants")
require("prototype.achievements")
require("prototype.robots")
require("prototype.itemgroups")
require("prototype.equipment")
require("prototype.equipment-grid")
require("prototype.heat-pipes")

require("compatibility.testcompat")
require("compatibility.icon-badges")


local resource_autoplace = require('resource-autoplace');

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "pm-transition-metals",
    localised_name = {"","[entity=pm-transition-metals] ", {"entity-name.pm-transition-metals"}},
    richness = true,
    order = "b-e"
	},
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
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
  },
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-post-transition-metals",
    localised_name = {"","[entity=pm-post-transition-metals] ", {"entity-name.pm-post-transition-metals"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
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
      has_starting_area_placement = false,
      additional_richness = 1500
    },

    stage_counts = {1000000, 40000, 24000, 20000, 12000, 10000, 7000, 3000},

    stages =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/ores/post-transition-metals-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
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
      has_starting_area_placement = false,
      additional_richness = 1500
    },

    stage_counts = {80000, 40000, 26000, 17000, 15200, 12000, 6500, 1000},
    stages =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/ores/alkali-metals-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
  }--[[@as data.ResourceEntityPrototype]],
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-metalloids",
    localised_name = {"","[entity=pm-metalloids] ", {"entity-name.pm-metalloids"}},
    richness = true,
    order = "b-e"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-metalloids",
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
      name = "pm-metalloids",
      order = "b-z",
      base_density = 7,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
      has_starting_area_placement = false,
      additional_richness = 1500
    },

    stage_counts = {80000, 40000, 26000, 17000, 15200, 12000, 6500, 1000},
    stages =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/ores/metalloid-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
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
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
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
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    }
  }--[[@as data.ResourceEntityPrototype]]
})
data.raw["resource"]["iron-ore"].minable = 
{
    hardness = 1,
    mining_particle = "iron-ore-particle",
    mining_time = 1,
    result = "pm-iron-chunk"
}

data.raw["resource"]["copper-ore"].minable =
{
    hardness = 1,
    mining_particle = "copper-ore-particle",
    mining_time = 1,
    result = "pm-copper-chunk"
}

local AcidPlant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])

AcidPlant.name = "pm-acid-plant"
AcidPlant.max_health = 300
AcidPlant.crafting_speed = 1
AcidPlant.energy_usage = "100kW"
AcidPlant.crafting_categories = {"pm-acids"}
AcidPlant.minable = {mining_time = 0.1, result = "pm-acid-plant"}
AcidPlant.module_slots = 3
AcidPlant.icon = "__periodic-madness__/graphics/icons/buildings/acid-plant.png"
AcidPlant.animation = make_4way_animation_from_spritesheet({ layers =
{
  {
    filename = "__periodic-madness__/graphics/entities/buildings/acid-plant/acid-plant.png",
    width = 220,
    height = 292,
    frame_count = 24,
    line_length = 12,
    shift = util.by_pixel(0.5, -9),
    scale = 0.5
  },
  {
    filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
    width = 312,
    height = 222,
    repeat_count = 24,
    frame_count = 1,
    shift = util.by_pixel(27, 6),
    draw_as_shadow = true,
    scale = 0.5
  }
}})

data:extend{(AcidPlant)}

if data.raw["utility-constants"].default.select_slot_row_count == 10 then
  data.raw["utility-constants"].default.select_slot_row_count = 12
end

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-nickel-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-nickel-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-zinc-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-zinc-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-post-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-post-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-metalloids"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-metalloids"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-alkali-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-alkali-metals"] = {}
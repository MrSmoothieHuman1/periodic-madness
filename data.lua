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
require("prototype.items.modules")

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
require("prototype.elements.012-magnesium")
require("prototype.elements.056-barium")
require("prototype.elements.004-beryllium")

require("prototype.entity")
require("prototype.entity.reactors") -- I hope someday that the entity file will be organized into different files
require("prototype.entity.heat-pipes")
require("prototype.entity.beacons")
require("prototype.entity.logistics")
require("prototype.entity.inserters")

require("prototype.remnants")
require("prototype.achievements")
require("prototype.robots")
require("prototype.itemgroups")
require("prototype.equipment")
require("prototype.equipment-grid")
require("prototype.virtual-signals")

require("compatibility.icon-badges")


local resource_autoplace = require('resource-autoplace');

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "pm-transition-metals",
    localised_name = {"","[entity=pm-transition-metals] ", {"entity-name.pm-transition-metals"}},
    richness = true,
    order = "g"
	},
	{
    type = "resource",
    icon_size = 64,
    name = "pm-transition-metals",
    icon = "__periodic-madness__/graphics/icons/ores/transition-metals-icon.png",
    flags = {"placeable-neutral"},
    order = "c",
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
    order = "h"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-post-transition-metals",
    icon = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon.png",
    flags = {"placeable-neutral"},
    order= "c",
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
      order = "c",
      base_density = 12,
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
    order = "i"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-alkali-metals",
    icon = "__periodic-madness__/graphics/icons/ores/alkali-metals-icon.png",
    flags = {"placeable-neutral"},
    order = "c",
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
      order = "c",
      base_density = 12,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.6,
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
    order = "j"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-metalloids",
    icon = "__periodic-madness__/graphics/icons/ores/metalloid-ore-icon.png",
    flags = {"placeable-neutral"},
    order = "c",
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
      order = "c",
      base_density = 12,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.2,
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
  {
    type = "autoplace-control",
    category = "resource",
    name = "pm-alkaline-earth-metals",
    localised_name = {"","[entity=pm-alkaline-earth-metals] ", {"entity-name.pm-alkaline-earth-metals"}},
    richness = true,
    order = "k"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-alkaline-earth-metals",
    icon = "__periodic-madness__/graphics/icons/ores/alkaline-earth-metal-icon.png",
    flags = {"placeable-neutral"},
    order = "c",
    map_color = {r=0.753, g=0.18, b=0.1},
    minable =
    {
      hardness = 1,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      result = "pm-alkaline-earth-metals-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "pm-alkaline-earth-metals",
      order = "c",
      base_density = 12,
      base_spots_per_km2 = 1,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.2,
      has_starting_area_placement = false,
      additional_richness = 1500
    },
    stage_counts = {60000, 40000, 26000, 17000, 15200, 12000, 3500, 1000},
    stages =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/ores/alkaline-earth-metal-ore.png",
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
    name = "pm-nickel-chunks",
    localised_name = {"", "[entity=pm-nickel-chunks] ", {"entity-name.pm-nickel-chunks"}},
    richness = true,
    order = "a-b-a"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-nickel-chunks",
    icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
    flags = {"placeable-neutral"},
    order = "b",
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
      name = "pm-nickel-chunks",
      order = "b",
      base_density = 8,
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
    name = "pm-zinc-chunks",
    localised_name = {"", "[entity=pm-zinc-chunks] ", {"entity-name.pm-zinc-chunks"}},
    richness = true,
    order = "a-b-b"
	}--[[@as data.AutoplaceControl]],
	{
    type = "resource",
    icon_size = 64,
    name = "pm-zinc-chunks",
    icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
    flags = {"placeable-neutral"},
    order = "",
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
      name = "pm-zinc-chunks",
      order = "b",
      base_density = 8,
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
AcidPlant.graphics_set.animation = make_4way_animation_from_spritesheet({ layers =
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
    filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
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
  data.raw["utility-constants"].default.select_group_row_count = 7
end

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-nickel-chunks"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-nickel-chunks"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-zinc-chunks"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-zinc-chunks"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-post-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-post-transition-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-metalloids"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-metalloids"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-alkali-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-alkali-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["pm-alkaline-earth-metals"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["pm-alkaline-earth-metals"] = {}

data.raw["resource"]["iron-ore"].icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png"
data.raw["resource"]["copper-ore"].icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png"

local vanadium_speed_setting = ({
  ["0.25x"] = 0.045 * 0.25,
  ["0.5x"] = 0.045 * 0.5,
  ["0.75x"] = 0.045 * 0.75,
  ["1x"] = 0.045,
  ["1.25x"] = 0.045 * 1.25,
  ["1.5x"] = 0.045 * 1.5,
  ["1.75x"] = 0.045 * 1.75,
  ["2x"] = 0.09,

})[settings.startup["pm-vanadium-robot-speed-multiplier"].value]
data.raw["construction-robot"]["construction-robot"].speed = vanadium_speed_setting
data.raw["logistic-robot"]["logistic-robot"].speed = vanadium_speed_setting

local lithium_speed_setting = ({
  ["0.25x"] = 0.08 * 0.25,
  ["0.5x"] = 0.08 * 0.5,
  ["0.75x"] = 0.08 * 0.75,
  ["1x"] = 0.08 ,
  ["1.25x"] = 0.08 * 1.25,
  ["1.5x"] = 0.08 * 1.5,
  ["1.75x"] = 0.08 * 1.75,
  ["2x"] = 0.08 * 2,

})[settings.startup["pm-lithium-robot-speed-multiplier"].value]
data.raw["construction-robot"]["pm-lithium-construction-robot"].speed = lithium_speed_setting
data.raw["logistic-robot"]["pm-lithium-logistic-robot"].speed = lithium_speed_setting

table.insert(data.raw["character"]["character"].crafting_categories, "pm-circuitry")
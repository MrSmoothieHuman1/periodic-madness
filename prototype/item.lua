local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
data:extend({
  {
    type = "item",
    name = "pm-brass-cog",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/brass-gear.png",
    subgroup = "pm-gears",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-gold-wire",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/gold-wire.png",
    subgroup = "pm-wires",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-fiberoptic-cable",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fiberoptic-cable.png",
    subgroup = "pm-wires",
    order = "c",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-basic-motor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-motor.png",
    subgroup = "pm-intermediates",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sand",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sand.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/sand.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sand-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sand-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sand-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-glassing",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-glass-pane",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/glass-pane.png",
    subgroup = "pm-glassing",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-borosilicate-glass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/borosilicate-glass-pane.png",
    subgroup = "pm-borosilicate-glassing",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-glass-shards",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/glass-shards.png",
    subgroup = "pm-glassing",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-glass-fibers",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/glass-fibers.png",
    subgroup = "pm-glassing",
    order = "d",
    stack_size = 200
  },

  {
    type = "item",
    name = "pm-solid-lubricant",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/solid-lubricant.png",
    subgroup = "pm-lubricant",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-vanadium-oxide-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vanadium-oxide-catalyst.png",
    subgroup = "pm-catalysts",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-palladium-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/palladium-catalyst.png",
    subgroup = "pm-catalysts",
    order = "c",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cobalt-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cobalt-catalyst.png",
    subgroup = "pm-catalysts",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-nickel-tungsten-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/nickel-tungsten-catalyst.png",
    subgroup = "pm-catalysts",
    order = "da",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-copper-zinc-aluminium-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/CuZnAl-catalyst.png",
    subgroup = "pm-catalysts",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-yttrium-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/yttrium-catalyst.png",
    subgroup = "pm-catalysts",
    order = "f",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-rhenium-platinum-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/rhenium-platinum-catalyst.png",
    subgroup = "pm-catalysts",
    order = "g",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-sea-salt",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/sea-salt.png",
    subgroup = "pm-intermediates",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-catalyst-container",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/catalyst-container.png",
    subgroup = "pm-catalysts",
    order = "a",
    stack_size = 25
  },
  {
    type = "item",
    name = "pm-palladium-hydride",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride-1.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride-2.png", size = 128, scale = 0.25 }
    },
    subgroup = "pm-palladium-tm",
    order = "x",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-solder-wire",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/tin-wire.png",
    subgroup = "pm-intermediates",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-solder-case",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/solder-case.png",
    subgroup = "pm-intermediates",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-science-bottle",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science-bottle.png",
    subgroup = "science-pack",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-carbon",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/carbon.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/carbon.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/carbon-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/carbon-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-carbon-rnm",
    category = "pm-nonassembling-gases",
    order = "a",
    stack_size = 100
  } --[[@as data.ItemPrototype]],
  {
    type = "item",
    name = "pm-sodium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sodium-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-1.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-2.png", size = 64, scale = 0.48 },
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-sodium-am",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/air-filter.png",
    subgroup = "pm-air-filters-rnm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-patina",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/patina.png",
    subgroup = "pm-copper-tm",
    order = "h",
    stack_size = 500
  },
  {
    type = "item",
    name = "pm-ferrum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ferrum.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ferrum.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ferrum-2.png", size = 64, scale = 0.48 },
      { filename = "__periodic-madness__/graphics/icons/ferrum-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-iron-tm",
    order = "h",
    stack_size = 500
  },
  {
    type = "item",
    name = "pm-mixed-ore-slag",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/mixed-ore-slag.png",
    subgroup = "pm-ptm-ptm",
    order = "b",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-wood-strips",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/wood-strips.png",
    subgroup = "pm-biostuff-rnm",
    order = "a",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-coke",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/coke.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/coke.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/coke-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/coke-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/coke-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "raw-resource",
    order = "d",
    fuel_category = "chemical",
    fuel_value = "6MJ",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-rubber",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/rubber.png",
    subgroup = "pm-resin",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-vulcanised-rubber",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vulcanised-rubber.png",
    subgroup = "pm-resin",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-oxygen-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/oxygen-air-filter.png",
    subgroup = "pm-oxygen-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-nitrogen-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/nitrogen-air-filter.png",
    subgroup = "pm-nitrogen-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-chlorine-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/chlorine-air-filter.png",
    subgroup = "pm-chlorine-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-carbon-dioxide-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/carbon-dioxide-air-filter.png",
    subgroup = "pm-carbon-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-trace-gas-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/trace-gas-air-filter.png",
    subgroup = "pm-trace-gas-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-dirty-carbon-dioxide-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/dirty-carbon-dioxide-air-filter.png",
    subgroup = "pm-air-filters-rnm",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-solar-cell",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/solar-cell.png",
    subgroup = "pm-intermediates",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-module-case",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/module-case.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-speed-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/speed-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-productivity-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/productivity-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-efficiency-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/efficiency-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-iron-sulfur-cluster",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/iron-sulfur-cluster.png",
    subgroup = "pm-CISD2-rnm",
    order = "A",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-blank-bio-module",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/blank-bio-module.png",
    subgroup = "pm-bio-modules-rnm",
    order = "a",
    stack_size = 20,
  },
  {
    type = "tool",
    name = "pm-health-bio-module",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/health-bio-module.png",
    subgroup = "pm-bio-modules-rnm",
    order = "b",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/health-bio-module.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__periodic-madness__/graphics/light/health-bio-module-light.png",
          scale = 0.5,
        }
      }
    },
  },
  {
    type = "tool",
    name = "pm-strength-bio-module",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/strength-bio-module.png",
    subgroup = "pm-bio-modules-rnm",
    order = "c",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/strength-bio-module.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__periodic-madness__/graphics/light/strength-bio-module-light.png",
          scale = 0.5,
        }
      }
    },
  },
  {
    type = "tool",
    name = "pm-agility-bio-module",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/agility-bio-module.png",
    subgroup = "pm-bio-modules-rnm",
    order = "d",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/agility-bio-module.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__periodic-madness__/graphics/light/agility-bio-module-light.png",
          scale = 0.5,
        }
      }
    },
  },
  {
    type = "item",
    name = "pm-biomass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/biomass.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/biomass.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/biomass-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/biomass-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/biomass-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-biostuff-rnm",
    order = "A",
    fuel_category = "chemical",
    fuel_value = "18MJ",
    fuel_acceleration_multiplier = 0.8,
    fuel_top_speed_multiplier = 0.4,
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-fertiliser",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fertiliser.png",
    subgroup = "pm-biostuff-rnm",
    order = "a",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-empty-petri-dish",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-petri-dish.png",
    subgroup = "pm-biostuff-rnm",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-agar-petri-dish",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/agar-petri-dish.png",
    subgroup = "pm-biostuff-rnm",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bacteriaed-petri-dish",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/bacteria'ed-petri-dish.png",
    subgroup = "pm-biostuff-rnm",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-cyanobacteriaed-petri-dish",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cyanobacteria'ed-petri-dish.png",
    subgroup = "pm-biostuff-rnm",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-flux-container",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/flux-container.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/flux-container.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/flux-container-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/flux-container-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-catalysts",
    order = "g",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-filled-flux-container",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/filled-flux-container.png",
    subgroup = "pm-catalysts",
    order = "ga",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-gallium-arsenide",
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
    name = "pm-gallium-nitride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/gallium-nitride.png",
    subgroup = "pm-intermediates",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-aluminium-gallium-indium-phosphide",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/AlGaIn.png",
    subgroup = "pm-intermediates",
    stack_size = 40
  },
  {
    type = "item",
    name = "pm-zirconium-pants",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/zirconium-pants.png",
    hidden = true,
    hidden_from_factoriopedia = true,
    subgroup = "pm-zirconium-tm",
    order = "x",
    stack_size = 344
  },
  {
    type = "item",
    name = "pm-plastic-science-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-science-mold.png",
    subgroup = "pm-plastic-science-process",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-filled-plastic-science-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/filled-science-mold.png",
    subgroup = "pm-plastic-science-process",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-crucible",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/crucible.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/crucible.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/crucible-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-alloys",
    order = "A",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-seed-crystal",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/crystal-seed.png",
    subgroup = "pm-intermediates",
    stack_size = 30
  },
  {
    type = "item",
    name = "pm-empty-reactor-cell",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-fuel-cell.png",
    subgroup = "pm-intermediates",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-polonium-fuel-cell",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/polonium-fuel-cell.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/polonium-fuel-cell.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.5,
          mipmap_count = 4
        }
      }
    },
    subgroup = "pm-polonium-ptm",
    burnt_result = "pm-used-up-polonium-fuel-cell",
    fuel_category = "pm-polonium",
    fuel_value = "10GJ",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-used-up-polonium-fuel-cell",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/used-up-polonium-fuel-cell.png",
    subgroup = "pm-polonium-ptm",
    order = "f",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-indium-wire",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/indium-wire.png",
    subgroup = "pm-wires",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-ruby",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ruby.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ruby.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ruby-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-ruby-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-citrine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/citrine.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/citrine.png",   size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/citrine-2.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/citrine-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-citrine-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-emerald",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/emerald.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/emerald.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/emerald-2.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/emerald-3.png",   size = 64, scale = 0.5},
    },
    subgroup = "pm-emerald-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sapphire",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sapphire.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/sapphire.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/sapphire-2.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/sapphire-3.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/sapphire-4.png",   size = 64, scale = 0.5},
    },
    subgroup = "pm-sapphire-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lapis-lazuli",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lapis-lazuli.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/lapis-lazuli.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/lapis-lazuli-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-lapis-lazuli-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-garnet",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/garnet.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/garnet.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/garnet-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/garnet-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-garnet-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-ruby-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ruby-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ruby-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ruby-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-ruby-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-citrine-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/citrine-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/citrine-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/citrine-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-citrine-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-emerald-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/emerald-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/emerald-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/emerald-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-emerald-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sapphire-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sapphire-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/sapphire-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/sapphire-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-sapphire-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lapis-lazuli-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lapis-lazuli-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/lapis-lazuli-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/lapis-lazuli-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-lapis-lazuli-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-garnet-dust",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/garnet-dust.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/garnet-dust.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/garnet-dust-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-garnet-ptm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cut-ruby",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cut-ruby-rod.png",
    subgroup = "pm-ruby-ptm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-cut-sapphire",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cut-sapphire-rod.png",
    subgroup = "pm-sapphire-ptm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-titanium-sapphire",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/titanium-sapphire.png",
    subgroup = "pm-sapphire-ptm",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-ruby-laser-head",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ruby-laser-head.png",
    subgroup = "pm-ruby-ptm",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-sapphire-laser-head",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/sapphire-laser-head.png",
    subgroup = "pm-sapphire-ptm",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-saw",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/saw.png",
    subgroup = "pm-intermediates",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-gunpowder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/gunpowder.png",
    subgroup = "ammo",
    order = "A",
    stack_size = 150
  },

  {
    type = "module",
    name = "pm-speed-module-4",
    localised_description = {"item-description.speed-module"},
    icon = "__periodic-madness__/graphics/icons/speed-module-4.png",
    icon_size = 128,
    subgroup = "pm-speed",
    category = "speed",
    tier = 4,
    order = "d",
    stack_size = 50,
    effect = { speed = 0.7, consumption = 0.9 },
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    beacon_tint =
    {
      primary = { r = 0.441, g = 0.514, b = 1.000, a = 1.000 },     -- #70b6ffff
      secondary = { r = 0.388, g = 0.766, b = 1.000, a = 1.000 },   -- #63f8ffff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
    pictures =
    {
      layers =
      {
        {
          size = 128,
          filename = "__periodic-madness__/graphics/icons/speed-module-4.png",
          scale = 0.25,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 128,
          filename = "__periodic-madness__/graphics/light/speed-module-4-glow.png",
          scale = 0.25,
        }
      }
    },
  } --[[@as data.ModulePrototype]],
  {
    type = "module",
    name = "pm-efficiency-module-4",
    localised_description = { "item-description.effectivity-module" },
    icon = "__periodic-madness__/graphics/icons/effectivity-module-4.png",
    icon_size = 128,
    subgroup = "pm-efficiency",
    category = "efficiency",
    tier = 4,
    order = "d",
    stack_size = 50,
    effect = { consumption = -0.6, speed = 0.25},
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    beacon_tint =
    {
      primary = { 0, 1, 0 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 },   -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
    pictures =
    {
      layers =
      {
        {
          size = 128,
          filename = "__periodic-madness__/graphics/icons/effectivity-module-4.png",
          scale = 0.25,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 128,
          filename = "__periodic-madness__/graphics/light/effectivity-module-4-glow.png",
          scale = 0.25,
        }
      }
    },
  } --[[@as data.ModulePrototype]],
  {
    type = "module",
    name = "pm-productivity-module-4",
    localised_description = { "item-description.productivity-module" },
    icon = "__periodic-madness__/graphics/icons/productivity-module-4.png",
    icon_size = 128,
    subgroup = "pm-productivity",
    category = "productivity",
    tier = 4,
    order = "d",
    stack_size = 50,
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    effect =
    {
      productivity = 0.14,
      consumption = 0.75,
      pollution = 0.20,
      speed = -0.25
    },
    pictures =
    {
      layers =
      {
        {
          size = 128,
          filename = "__periodic-madness__/graphics/icons/productivity-module-4.png",
          scale = 0.25,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 128,
          filename = "__periodic-madness__/graphics/light/productivity-module-4-glow.png",
          scale = 0.25,
        }
      }
    },
  } --[[@as data.ModulePrototype]],
  {
    type = "item",
    name = "pm-CRT",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/CRT.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/CRT.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/CRT-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/CRT-3.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-intermediates",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-CRT-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/CRT-framing.png",
    subgroup = "pm-intermediates",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-CRT-screen",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/CRT-screen.png",
    subgroup = "pm-intermediates",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-vacuum-tube",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vacuum-tube.png",
    subgroup = "pm-intermediates",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-vacuum-tube-getter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vacuum-tube-getter.png",
    subgroup = "pm-intermediates",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-lithium-logistic-robot",
    icon = "__periodic-madness__/graphics/icons/lithium-logistic-robot.png",
    icon_size = 64,
    subgroup = "logistic-network",
    order = "a[robot]-a[logistic-robot]",
    place_result = "pm-lithium-logistic-robot",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-lithium-construction-robot",
    icon = "__periodic-madness__/graphics/icons/lithium-construction-robot.png",
    icon_size = 64,
    subgroup = "logistic-network",
    order = "a[robot]-b[construction-robot]",
    place_result = "pm-lithium-construction-robot",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-advanced-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/air-filter-2.png",
    subgroup = "pm-air-filters-rnm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-dirty-advanced-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/dirty-air-filter-2.png",
    subgroup = "pm-air-filters-rnm",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-advanced-oxygen-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/oxygen-air-filter-2.png",
    subgroup = "pm-oxygen-rnm",
    order = "b",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-advanced-nitrogen-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/nitrogen-air-filter-2.png",
    subgroup = "pm-nitrogen-rnm",
    order = "b",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-advanced-chlorine-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/chlorine-air-filter-2.png",
    subgroup = "pm-chlorine-rnm",
    order = "b",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-advanced-carbon-dioxide-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/carbon-dioxide-air-filter-2.png",
    subgroup = "pm-carbon-rnm",
    order = "b",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-advanced-trace-gas-air-filter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/trace-gas-air-filter-2.png",
    subgroup = "pm-trace-gas-rnm",
    order = "b",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-magneto-orbital-trap",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/MOT.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/MOT.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/MOT-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-francium-am",
    order = "A",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-francium-magneto-orbital-trap",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/filled-MOT.png",
    pictures =
    {
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/icons/filled-MOT.png",
            size = 64,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/light/filled-MOT-light.png",
            flags = { "light" },
            draw_as_light = true,
            size = 64,
            scale = 0.5,
          },
        }
      },
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/icons/filled-MOT-2.png",
            size = 64,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/light/filled-MOT-2-light.png",
            flags = { "light" },
            draw_as_light = true,
            size = 64,
            scale = 0.5,
          },
        }
      },
    },
    subgroup = "pm-francium-am",
    order = "Aa",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-mixed-astatine-magneto-orbital-trap",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/mixed-astatine-MOT.png",
    pictures =
    {
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/icons/mixed-astatine-MOT.png",
            size = 64,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/light/filled-MOT-light.png",
            flags = { "light" },
            draw_as_light = true,
            size = 64,
            scale = 0.5,
          },
        }
      },
      {
        layers =
        {
          {
            filename = "__periodic-madness__/graphics/icons/mixed-astatine-MOT-2.png",
            size = 64,
            scale = 0.5,
          },
          {
            filename = "__periodic-madness__/graphics/light/filled-MOT-2-light.png",
            flags = { "light" },
            draw_as_light = true,
            size = 64,
            scale = 0.5,
          },
        }
      },
    },
    subgroup = "pm-astatine-ptm",
    order = "b",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-travelling-wave-amplifier-tube",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/TWAT.png",
    subgroup = "pm-intermediates",
    stack_size = 50,
  },
  {
    type = "capsule",
    name = "pm-sodium-grenade",
    icon = "__periodic-madness__/graphics/icons/bath-bomb.png",
    icon_size = 64,
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "grenade",
        cooldown = 25,
        projectile_creation_distance = 0.6,
        range = 15,
        ammo_type =
        {
          category = "grenade",
          target_type = "position",
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "projectile",
                projectile = "pm-sodium-grenade",
                starting_speed = 0.5
              }
            },
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "play-sound",
                    sound = sounds.throw_projectile
                  },
                  {
                    type = "create-fire",
                    entity_name = "fire-flame",
                    show_in_tooltip = true
                  }
                }
              }
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "A",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/NiMoP.png",
    subgroup = "pm-catalysts",
    order = "h",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-rocket-control-unit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/rocket-control-unit.png",
    subgroup = "pm-intermediates",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-silicon-wafer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/silicon-wafer.png",
    subgroup = "pm-silicon-mt",
    order = "h",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-barely-etched-silicon-wafer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/barely-etched-silicon-wafer.png",
    subgroup = "pm-silicon-mt",
    order = "i",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-etched-silicon-wafer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/etched-silicon-wafer.png",
    subgroup = "pm-silicon-mt",
    order = "ia",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-strontium-glass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/strontium-glass-pane.png",
    subgroup = "pm-intermediates",
    stack_size = 75
  },
  {
    type = "item-with-entity-data",
    name = "pm-spiderling-issy",
    icon = "__base__/graphics/icons/spidertron.png",
    icon_tintable = "__base__/graphics/icons/spidertron-tintable.png",
    icon_tintable_mask = "__base__/graphics/icons/spidertron-tintable-mask.png",
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    inventory_move_sound = item_sounds.spidertron_inventory_move,
    pick_sound = item_sounds.spidertron_inventory_pickup,
    drop_sound = item_sounds.spidertron_inventory_move,
    place_result = "pm-spiderling-issy",
    stack_size = 2
  },
  {
    type = "item",
    name = "pm-empty-glass-ampule",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-glass-ampule.png",
    subgroup = "pm-intermediates",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-gravel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/gravel.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/gravel.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/gravel-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/gravel-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/gravel-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-glassing",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-uhrlumin-precursor-billet",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/uhrlumin-precursor-billet.png",
    subgroup = "pm-uhrlumin",
    order = "b",
    stack_size = 500
  },
  {
    type = "item",
    name = "pm-inconel-625-precursor-billet",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/inconel-625-precursor-billet.png",
    subgroup = "pm-inconel-625",
    order = "b",
    stack_size = 500
  },
  {
    type = "item",
    name = "pm-lead-fluoride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lead-fluoride.png",
    subgroup = "pm-batteries",
    order = "p",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-advanced-electric-engine-unit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-electric-engine-unit.png",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-coal-tar",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/coal-tar.png",
    stack_size = 300,
  },
  {
    type = "item",
    name = "pm-tantalum-contacts",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/tantalum-contacts.png",
    stack_size = 400,
  },
  {
    type = "item",
    name = "pm-niobium-contacts",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/niobium-contacts.png",
    stack_size = 400,
  },
  {
    type = "item",
    name = "pm-advanced-speed-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-speed-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-advanced-productivity-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-productivity-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-advanced-efficiency-module-light",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-efficiency-module-light.png",
    subgroup = "pm-intermediates",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-phenylhydrazine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/phenylhydrazine.png",
    random_tint_color = {0.98, 0.976, 0.816, 0.5},
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/phenylhydrazine.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/phenylhydrazine-2.png", size = 64, scale = 0.5 },
      --{ filename = "__periodic-madness__/graphics/icons/phenylhydrazine-3.png", size = 64, scale = 0.5 },
      --{ filename = "__periodic-madness__/graphics/icons/phenylhydrazine-4.png", size = 64, scale = 0.5 },
    },
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-1-3-5-oxadiazine-NON-host",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/1,3,5-oxadiazine-NON-host.png",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-phenyllithium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/phenyllithium.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/phenyllithium.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/phenyllithium-2.png", size = 64, scale = 0.5 },
    },
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-iridium-trichloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/iridium-trichloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/iridium-trichloride.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/iridium-trichloride-2.png", size = 64, scale = 0.5 },
    },
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-tris-2-phenylpyridine-iridium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/tris(2-phenylpyridine)iridium.png",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-ir-piq-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ir(piq)3.png",
    stack_size = 50
  },

  {
    type = "item",
    name = "pm-solar-panel-equipment-2",
    icon = "__periodic-madness__/graphics/equipment/solar-panel-equipment-2-icon.png",
    icon_size = 64,
    place_as_equipment_result = "pm-solar-panel-equipment-2",
    subgroup = "pm-modular-power",
    order = "b",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-solar-panel-equipment-3",
    icon = "__periodic-madness__/graphics/equipment/solar-panel-equipment-3-icon.png",
    icon_size = 64,
    place_as_equipment_result = "pm-solar-panel-equipment-3",
    subgroup = "pm-modular-power",
    order = "c",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-personal-robostasher-equipment",
    icon = "__periodic-madness__/graphics/equipment/personal-robostasher-equipment.png",
    icon_size = 128,
    place_as_equipment_result = "pm-personal-robostasher-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment]",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-personal-robostasher-mk2-equipment",
    icon = "__periodic-madness__/graphics/equipment/personal-robostasher-mk2-equipment.png",
    icon_size = 128,
    place_as_equipment_result = "pm-personal-robostasher-mk2-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment]",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-personal-robocharger-equipment",
    icon = "__periodic-madness__/graphics/equipment/personal-robocharger-equipment-icon.png",
    icon_size = 64,
    place_as_equipment_result = "pm-personal-robocharger-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment]",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-personal-robocharger-mk2-equipment",
    icon = "__periodic-madness__/graphics/equipment/personal-robocharger-mk2-equipment-icon.png",
    icon_size = 64,
    place_as_equipment_result = "pm-personal-robocharger-mk2-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment]",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-lithium-sulfur-battery-equipment",
    icon = "__periodic-madness__/graphics/equipment/lithium-battery-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "pm-lithium-sulfur-battery-equipment",
    subgroup = "pm-modular-storage",
    order = "c",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-lithium-sulfur-battery-mk2-equipment",
    localised_description = {"item-description.battery-equipment"},
    icon = "__periodic-madness__/graphics/equipment/lithium-battery-mk2-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "pm-lithium-sulfur-battery-mk2-equipment",
    subgroup = "pm-modular-storage",
    order = "c",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-lunar-panel-equipment",
    icon = "__periodic-madness__/graphics/equipment/solar-panel-equipment-2-icon.png",
    icon_size = 64,
    place_as_equipment_result = "pm-lunar-panel-equipment",
    hidden = true,
    hidden_from_factoriopedia = true,
    custom_tooltip_fields = 
    {
      {
        name = {"pm-tooltips.panel-equipment-day"},
        value = {"pm-tooltips.0%"}
      },
      {
        name = {"pm-tooltips.lunar-equipment-night"},
        value = {"pm-tooltips.75%"}
      },
    },
    subgroup = "pm-modular-power",
    order = "b",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-selenium-sulfur-battery-equipment",
    icon = "__periodic-madness__/graphics/equipment/selenium-battery-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "pm-selenium-sulfur-battery-equipment",
    subgroup = "pm-modular-storage",
    order = "c",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-RTG-equipment",
    icon = "__periodic-madness__/graphics/equipment/lithium-battery-mk2-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "pm-RTG-equipment",
    subgroup = "pm-modular-storage",
    order = "c",
    stack_size = 20
  },

  {
    type = "item",
    name = "pm-iron-fish",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/iron-fish.png",
    subgroup = "military-equipment",
    order = "x",
    hidden = true,
    stack_size = 999
  },

  --fuel categories
  {
    type = "fuel-category",
    name = "pm-oxidiser",
  },
  {
    type = "fuel-category",
    name = "pm-voltatic-piles",
  },
  {
    type = "fuel-category",
    name = "pm-polonium"
  },
  {
    type = "fuel-category",
    name = "pm-charged-batteries"
  },
  {
    type = "fuel-category",
    name = "pm-fuel-rods"
  },
  {
    type = "fuel-category",
    name = "pm-fuel-canisters"
  },
    {
    type = "fuel-category",
    name = "pm-vehicle-fuel-canisters"
  },
  {
    type = "fuel-category",
    name = "pm-strontium" 
  },
  {
    type = "fuel-category",
    name = "pm-strontium-fuel-rods"
  }
})
data.raw["item"]["iron-gear-wheel"].subgroup = "pm-gears"
data.raw["item"]["iron-gear-wheel"].order = "a"
data.raw["recipe"]["iron-gear-wheel"].subgroup = "pm-gears"
data.raw["recipe"]["iron-gear-wheel"].order = "aa"

data.raw["projectile"]["defender-capsule"].action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "create-entity",
        show_in_tooltip = true,
        entity_name = "defender",
        offsets = { { 0.5, -0.5 }, { 0.5, 0.5 } }
      }
    }
  }
}
data.raw["projectile"]["distractor-capsule"].action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "create-entity",
        show_in_tooltip = true,
        entity_name = "distractor",
        offsets = { { 0.5, -0.5 }, { -0.5, -0.5 }, { 0, 0.5 }, { 0.5, 0.5 } }
      }
    }
  }
}
data.raw["projectile"]["destroyer-capsule"].action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "create-entity",
        show_in_tooltip = true,
        entity_name = "destroyer",
        offsets = { { 0.5, -0.5 }, { 0.5, 0.5 }, { 0, 0.5 }, { 0.5, 0 }, { -0.5, 0.5 }, { -0.5, -0.5 } }
      }
    }
  }
}
data.raw["item"]["solid-fuel"].fuel_emissions_multiplier = 1.5
data.raw["item"]["solid-fuel"].fuel_acceleration_multiplier = 1
data.raw["item"]["solid-fuel"].fuel_top_speed_multiplier = 1.1
data.raw["item"]["solid-fuel"].icon = "__periodic-madness__/graphics/icons/solid-fuel.png"

data.raw["item"]["copper-cable"].subgroup = "pm-wires"
data.raw["item"]["copper-cable"].order = "a"
data.raw["recipe"]["copper-cable"].subgroup = "pm-wires"
data.raw["recipe"]["copper-cable"].order = "aa"
data.raw["item"]["iron-stick"].subgroup = "pm-intermediates"
data.raw["item"]["iron-stick"].order = "a"
data.raw["recipe"]["iron-stick"].subgroup = "pm-intermediates"
data.raw["recipe"]["iron-stick"].order = "aa"
data.raw["item"]["electric-engine-unit"].subgroup = "pm-intermediates"
data.raw["recipe"]["electric-engine-unit"].subgroup = "pm-intermediates"
data.raw["item"]["engine-unit"].subgroup = "pm-intermediates"
data.raw["recipe"]["engine-unit"].subgroup = "pm-intermediates"
data.raw["item"]["low-density-structure"].subgroup = "pm-intermediates"
data.raw["recipe"]["low-density-structure"].subgroup = "pm-intermediates"
data.raw["item"]["flying-robot-frame"].subgroup = "pm-intermediates"
data.raw["recipe"]["flying-robot-frame"].subgroup = "pm-intermediates"
data.raw["item"]["sulfur"].subgroup = "pm-sulfur-rnm"
data.raw["item"]["explosives"].subgroup = "capsule"
data.raw["item"]["explosives"].order = "c"
data.raw["recipe"]["explosives"].subgroup = "capsule"
data.raw["recipe"]["explosives"].order = "c"

--im so happy i deleted tiktok but at the same time some of the shitposts were aamziong
--same (COUGH) rice
--it'll be some of the most mind-rotting thing ever and i love it
--while your here code green, how do i edit a vanilla items reicpe? is it deepcopy?
--i forgot all of that :sob:
--thank you
--oh my god huh QHAR
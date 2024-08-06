data:extend({


--alloys
    {
        type = "item",
        name = "pm-brass-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        subgroup = "pm-alloys",
        order = "b",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-stainless-steel-alloy",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
        subgroup = "pm-alloys",
        order = "c",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-alloyed-steel",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/plates/alloyed-steel-plate.png",
        subgroup = "pm-alloys",
        order = "x",
        stack_size = 150
    },
    {
        type = "item",
        name = "pm-solder-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/solder-plate.png",
        subgroup = "pm-alloys",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-kasethal-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/kasethal-plate.png",
        subgroup = "pm-alloys",
        order = "d",
        stack_size = 100
    },

    {
        type = "item",
        name = "pm-brass-cog",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/brass-cogs.png",
        subgroup = "pm-refined-items",
        order = "c[iron-gear-wheel]",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-gold-wire",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/gold-wire.png",
        subgroup = "pm-refined-items",
        order = "b[copper-cable]",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-fiberoptic-cable",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fiberoptic-cable.png",
        subgroup = "pm-refined-items",
        order = "c[copper-cable]",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-basic-motor",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/basic-motor.png",
        subgroup = "intermediate-product",
        order = "j[pm-basic-motor]",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-mini-motor",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/mini-motor.png",
        subgroup = "intermediate-product",
        order = "k[pm-mini-motor]",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-sand",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/sand.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/sand.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/sand-2.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/sand-3.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/sand-4.png", size = 128, scale = 0.125}
        },
        subgroup = "pm-glassing",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-glass-pane",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/glass-pane.png",
        subgroup = "pm-glassing",
        order = "b", 
        stack_size = 50
    },
    {
      type = "item",
      name = "pm-borosillicate-glass",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/borosillicate-glass-pane.png",
      subgroup = "pm-glassing",
      order = "e", 
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
        subgroup = "pm-refined-items",
        order = "e",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-vanadium-oxide-catalyst",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/vanadium-catalyst.png",
        subgroup = "pm-refined-items",
        stack_size = 25
    },
    {
        type = "item",
        name = "pm-palladium-catalyst",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/palladium-catalyst.png",
        subgroup = "pm-refined-items",
        stack_size = 25
    },
    {
        type = "item",
        name = "pm-sea-salt",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/sea-salt.png",
        subgroup = "pm-refined-items",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-catalyst-container",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/catalyst-container.png",
        subgroup = "pm-refined-items",
        stack_size = 10
    },
    {
        type = "item",
        name = "pm-palladium-hydride",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride-1.png", size = 128, scale = 0.125},
            {filename = "__periodic-madness__/graphics/icons/ores/palladium-hydride-2.png", size = 128, scale = 0.125}
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
        subgroup = "pm-refined-items",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-solder",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/solder.png",
        subgroup = "pm-refined-items",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-solder-case",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/solder-case.png",
        subgroup = "pm-refined-items",
        stack_size = 100
    },
--gold items
{
    type = "item",
    name = "pm-gold-plating",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/gold-plating.png",
    subgroup = "pm-refined-items",
    order = "e",
    stack_size = 100,
},
--silver items
{
    type = "item",
    name = "pm-silver-plating",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/silver-plating.png",
    subgroup = "pm-refined-items",
    order = "e",
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
        subgroup = "pm-reactive-nonmetals",
        category = "pm-nonassembling-gases",
        order = "b",
        stack_size = 100
    },
   {
        type = "item",
        name = "pm-sodium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/sodium-1.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/ores/sodium-1.png", size = 64, scale = 0.23},
            {filename = "__periodic-madness__/graphics/icons/ores/sodium-2.png", size = 64, scale = 0.24},
            {filename = "__periodic-madness__/graphics/icons/ores/sodium-3.png", size = 64, scale = 0.23},
        },
        subgroup = "pm-sodium-am",
        order = "a",
        stack_size = 100
    }, 
    {
        type = "item",
        name = "pm-air-filter",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/air-filter.png",
        subgroup = "intermediate-product",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-silica",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/silica.png",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-patina",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/patina.png",
        subgroup = "pm-copper-tm",
        order = "x",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-ferrum",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ferrum.png",
        subgroup = "pm-iron-tm",
        order = "x",
        stack_size = 500
    },
    {
        type = "item",
        name = "pm-ore-slag",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/ore-slag.png",
        subgroup = "pm-tm-tm",
        order = "x",
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
        subgroup = "pm-resin-processing",
        order = "a[pm-wood-strips]",
        fuel_value = "2MJ",
        fuel_category = "chemical",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-coke",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/coke.png",
        subgroup = "raw-resource",
        order = "d",
        fuel_category = "chemical",
        fuel_value = "8MJ",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-rubber",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/rubber.png",
        subgroup = "pm-resin-processing",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-vulcanised-rubber",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/vulcanised-rubber.png",
        subgroup = "pm-resin-processing",
        order = "e",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-oxygen-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/oxygen-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-nitrogen-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/nitrogen-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "b",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-chlorine-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/chlorine-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "c",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-carbon-dioxide-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/carbon-dioxide-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "d",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-trace-gas-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/trace-gas-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "e",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-dirty-carbon-dioxide-air-filter",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/dirty-carbon-dioxide-air-filter.png",
        subgroup = "pm-air-filters-rnm",
        order = "f",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-solar-cell",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/solar-cell.png",
        subgroup = "pm-refined-items",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-module-case",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/module-case.png",
        subgroup = "pm-refined-items",
        stack_size = 140 + 10
    },
    {
        type = "item",
        name = "pm-module-speed-light",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/speed-module-light.png",
        subgroup = "pm-refined-items",
        stack_size = 160 - 10
    },
    {
        type = "item",
        name = "pm-module-productivity-light",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/productivity-module-light.png",
        subgroup = "pm-refined-items",
        stack_size = 160 - 10
    },
    {
        type = "item",
        name = "pm-module-efficiency-light",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/efficiency-module-light.png",
        subgroup = "pm-refined-items",
        stack_size = 160 - 10
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
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/blank-bio-module.png",
        subgroup = "science-pack",
        order = "a",
        stack_size = 20,
    },
    {
        type = "tool",
        name = "pm-health-bio-module",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/health-bio-module.png",
        subgroup = "pm-CISD2-rnm",
        order = "x",
        stack_size = 10,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        pictures =
        {
          layers =
            {
              {
                size = 128,
                filename = "__periodic-madness__/graphics/icons/health-bio-module.png",
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/health-bio-module-light.png",
                scale = 0.125,
              }
            }
          },
    },
    {
        type = "tool",
        name = "pm-strength-bio-module",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/strength-bio-module.png",
        subgroup = "pm-myostatin-rnm",
        order = "x",
        stack_size = 10,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        pictures =
        {
          layers =
            {
              {
                size = 128,
                filename = "__periodic-madness__/graphics/icons/strength-bio-module.png",
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/strength-bio-module-light.png",
                scale = 0.125,
              }
            }
          },
    },
    {
        type = "tool",
        name = "pm-agility-bio-module",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/agility-bio-module.png",
        subgroup = "pm-acetonitrile-rnm",
        order = "x",
        stack_size = 10,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        pictures =
        {
          layers =
            {
              {
                size = 128,
                filename = "__periodic-madness__/graphics/icons/agility-bio-module.png",
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/agility-bio-module-light.png",
                scale = 0.125,
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
          {filename = "__periodic-madness__/graphics/icons/biomass.png", size = 64, scale = 0.25},
          {filename = "__periodic-madness__/graphics/icons/biomass-2.png", size = 64, scale = 0.25},
          {filename = "__periodic-madness__/graphics/icons/biomass-3.png", size = 64, scale = 0.25},
          {filename = "__periodic-madness__/graphics/icons/biomass-4.png", size = 64, scale = 0.25}
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
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/fertiliser.png",
        subgroup = "pm-biostuff-rnm",
        order = "a",
        stack_size = 200 - 40 - 10
    },
    {
        type = "item",
        name = "pm-empty-petri-dish",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/empty-petri-dish.png",
        subgroup = "pm-biostuff-rnm",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-agar-petri-dish",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/agar-petri-dish.png",
        subgroup = "pm-biostuff-rnm",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-bacteriaed-petri-dish",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/bacteria'ed-petri-dish.png",
        subgroup = "pm-biostuff-rnm",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-flux-container",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/flux-container.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/flux-container.png", size = 128, scale = 0.124 + 0.001},
            {filename = "__periodic-madness__/graphics/icons/flux-container-2.png", size = 128, scale = 0.124 + 0.001},
            {filename = "__periodic-madness__/graphics/icons/flux-container-3.png", size = 128, scale = 0.124 + 0.001},
            {filename = "__periodic-madness__/graphics/icons/flux-container-4.png", size = 128, scale = 0.124 + 0.001},
        },
        subgroup = "pm-refined-items",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-filled-flux-container",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/filled-flux-container.png",
        subgroup = "pm-refined-items",
        stack_size = 100 / 2
    },
    {
        type = "item",
        name = "pm-gallium-arsenide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/gallium-arsenide.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/gallium-arsenide.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/gallium-arsenide-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-refined-items",
        stack_size = 20
    },
    {
        type = "item",
        name = "pm-gallium-nitride",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/gallium-nitride.png",
        subgroup = "pm-refined-items",
        stack_size = 20
    },
    {
        type = "item",
        name = "pm-aluminium-gallium-indium-phosphide",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/AlGaIn.png",
        subgroup = "pm-refined-items",
        stack_size = 40
    },
    {
        type = "item",
        name = "pm-solar-panel-equipment-2",
        icon = "__periodic-madness__/graphics/icons/solar-panel-equipment-2-icon.png",
        icon_size = 64,
        placed_as_equipment_result = "pm-solar-panel-equipment-2",
        subgroup = "equipment",
        order = "a",
        stack_size = 20
    },
    {
        type = "item",
        name = "pm-zirconium-pants",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/zirconium-pants.png",
        subgroup = "pm-zirconium-tm",
        order = "x",
        stack_size = 344
    },
    {
        type = "item",
        name = "pm-plastic-science-mold",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/empty-science-mold.png",
        subgroup = "pm-plastic-science-process",
        order = "a",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-filled-plastic-science-mold",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/filled-science-mold.png",
        subgroup = "pm-plastic-science-process",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-copper-zinc-aluminium-catalyst",
        icon_size = 128,
        icon = "__periodic-madness__/graphics/icons/CuZnAl-catalyst.png",
        subgroup = "pm-plastics",
        stack_size = 25
    },
    {
        type = "item",
        name = "pm-crucible",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/crucible.png",
        pictures = 
        {
            {filename = "__periodic-madness__/graphics/icons/crucible.png", size = 64, scale = 0.25},
            {filename = "__periodic-madness__/graphics/icons/crucible-2.png", size = 64, scale = 0.25},
        },
        subgroup = "pm-alloys",
        order = "A",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-cobalt-catalyst",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/cobalt-catalyst.png",
        subgroup = "pm-plastics",
        stack_size = 25
    },
    {
      type = "item",
      name = "pm-yttrium-catalyst",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/yttrium-catalyst.png",
      subgroup = "pm-plastics",
      stack_size = 25
  },
    {
        type = "item",
        name = "pm-seed-crystal",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/crystal-seed.png",
        subgroup = "pm-refined-items",
        stack_size = 30
    },
    {
        type = "item",
        name = "pm-empty-reactor-cell",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/empty-fuel-cell.png",
        subgroup = "pm-refined-items",
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
                    scale = 0.25,
                },
                {
                    draw_as_light = true,
                    flags = {"light"},
                    size = 64,
                    filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
                    scale = 0.25,
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
        subgroup = "pm-refined-items",
        order = "b[copper-cable]",
        stack_size = 100
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
        effect = { speed = {bonus = 0.7}, consumption = {bonus = 0.9}},
        beacon_tint =
        {
          primary = {r = 0.441, g = 0.514, b = 1.000, a = 1.000}, -- #70b6ffff
          secondary = {r = 0.388, g = 0.766, b = 1.000, a = 1.000}, -- #63f8ffff
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
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/speed-module-4-glow.png",
                scale = 0.125,
              }
            }
          },
      },
      {
        type = "module",
        name = "pm-effectivity-module-4",
        localised_description = {"item-description.effectivity-module"},
        icon = "__periodic-madness__/graphics/icons/effectivity-module-4.png",
        icon_size = 128,
        subgroup = "pm-effectivity",
        category = "effectivity",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = { consumption = {bonus = -0.6}, speed = {bonus = 0.25}},
        beacon_tint =
        {
          primary = { 0, 1, 0 },
          secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}, -- #5eff5eff
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
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/effectivity-module-4-glow.png",
                scale = 0.125,
              }
            }
          },
      },
      {
        type = "module",
        name = "pm-productivity-module-4",
        localised_description = {"item-description.productivity-module"},
        icon = "__periodic-madness__/graphics/icons/productivity-module-4.png",
        icon_size = 128,
        subgroup = "pm-productivity",
        category = "productivity",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = 
        {
          productivity = {bonus = 0.12},
          consumption = {bonus = 0.75},
          pollution = {bonus = 0.20},
          speed = {bonus = -0.25}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates",
        pictures =
        {
          layers =
            {
              {
                size = 128,
                filename = "__periodic-madness__/graphics/icons/productivity-module-4.png",
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/productivity-module-4-glow.png",
                scale = 0.125,
              }
            }
          },
      },
      {
        type = "ammo",
        name = "pm-high-density-magazine",
        icon = "__periodic-madness__/graphics/icons/high-density-magazine.png",
        icon_size = 64,
        ammo_type =
        {
          category = "bullet",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = { amount = 14, type = "physical"}
                }
              }
            }
          }
        },
        magazine_size = 15,
        subgroup = "ammo",
        order = "a[basic-clips]-ca",
        stack_size = 200
      },
      {
        type = "ammo",
        name = "pm-geneva's-neglection-magazine",
        icon = "__periodic-madness__/graphics/icons/geneva's-neglection-magazine.png",
        icon_size = 64,
        ammo_type =
        {
          category = "bullet",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = {amount = 10, type = "physical"}
                },
                {
                  type = "create-sticker",
                  sticker = "pm-bio-poison-sticker",
                  duration_in_ticks = 10 * 60,
                  damage_interval = 60,
                  damage_per_tick = 4
                }
              }
            }
          }
        },
        magazine_size = 12,
        subgroup = "ammo",
        order = "a[basic-clips]-c",
        stack_size = 200
      },
    {
      type = "item",
      name = "pm-CRT",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/CRT.png",
      pictures = 
      {
          {filename = "__periodic-madness__/graphics/icons/CRT.png", size = 128, scale = 0.125},
          {filename = "__periodic-madness__/graphics/icons/CRT-2.png", size = 128, scale = 0.125},
          {filename = "__periodic-madness__/graphics/icons/CRT-3.png", size = 128, scale = 0.125},
          {filename = "__periodic-madness__/graphics/icons/CRT-4.png", size = 128, scale = 0.125},
      },
      subgroup = "pm-refined-items",
      stack_size = 10
    },
    {
      type = "item",
      name = "pm-vacuum-tube",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/vacuum-tube.png",
      subgroup = "pm-refined-items",
      stack_size = 50
    },
    {
      type = "item",
      name = "pm-oscilloscope",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/oscilloscope.png",
      pictures =
        {
          layers =
            {
              {
                size = 128,
                filename = "__periodic-madness__/graphics/icons/oscilloscope.png",
                scale = 0.125,
              },
              {
                draw_as_light = true,
                flags = {"light"},
                size = 128,
                filename = "__periodic-madness__/graphics/light/oscilloscope-light.png",
                scale = 0.125,
              }
            }
          },
      subgroup = "pm-refined-items",
      stack_size = 50
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
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/air-filter-2.png",
      subgroup = "pm-advanced-air-filters-rnm",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-dirty-advanced-air-filter",
      icon_size = 128,
      icon = "__periodic-madness__/graphics/icons/dirty-air-filter-2.png",
      subgroup = "intermediate-product",
      order = "aa",
      stack_size = 100
  },
  {
    type = "item",
    name = "pm-advanced-oxygen-air-filter",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/oxygen-air-filter-2.png",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "b",
    stack_size = 75
},
{
    type = "item",
    name = "pm-advanced-nitrogen-air-filter",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/nitrogen-air-filter-2.png",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "c",
    stack_size = 75
},
{
    type = "item",
    name = "pm-advanced-chlorine-air-filter",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/chlorine-air-filter-2.png",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "d",
    stack_size = 75
},
{
    type = "item",
    name = "pm-advanced-carbon-dioxide-air-filter",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/carbon-dioxide-air-filter-2.png",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "e",
    stack_size = 75
},
{
    type = "item",
    name = "pm-advanced-trace-gas-air-filter",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/trace-gas-air-filter-2.png",
    subgroup = "pm-air-filters-rnm",
    order = "f",
    stack_size = 75
},
{
  type = "item",
  name = "pm-magneto-orbital-trap",
  icon_size = 128,
  icon = "__periodic-madness__/graphics/icons/MOT.png",
  pictures = 
  {
    {filename = "__periodic-madness__/graphics/icons/MOT.png", size = 128, scale = 0.125},
    {filename = "__periodic-madness__/graphics/icons/MOT-2.png", size = 128, scale = 0.125},
  },
  subgroup = "pm-francium-am",
  order = "A",
  stack_size = 20
},
{
  type = "item",
  name = "pm-francium-magneto-orbital-trap",
  icon_size = 128,
  icon = "__periodic-madness__/graphics/icons/filled-MOT.png",
  pictures =
  {
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/icons/filled-MOT.png",
          size = 128,
          scale = 0.125,
          mipmap_count = 4
        },
        {
          filename = "__periodic-madness__/graphics/light/filled-MOT-light.png",
          flags = {"light"},
          draw_as_light = true,
          size = 128,
          scale = 0.125,
        },
      }
    },
    {
      layers =
      {
        {
          filename = "__periodic-madness__/graphics/icons/filled-MOT-2.png",
          size = 128,
          scale = 0.125,
          mipmap_count = 4
        },
        {
          filename = "__periodic-madness__/graphics/light/filled-MOT-2-light.png",
          flags = {"light"},
          draw_as_light = true,
          size = 128,
          scale = 0.125,
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
  name = "pm-travelling-wave-amplifier-tube",
  icon_size = 128,
  icon = "__periodic-madness__/graphics/icons/TWAT.png",
  stack_size = 20,
},
{
  type = "item",
  name = "pm-personal-robostasher-equipment",
  icon = "__periodic-madness__/graphics/icons/personal-robostasher-equipment.png",
  icon_size = 64, icon_mipmaps = 4,
  placed_as_equipment_result = "pm-personal-robostasher-equipment",
  subgroup = "equipment",
  order = "e[robotics]-a[personal-roboport-equipment]",
  default_request_amount = 1,
  stack_size = 20
},
{
  type = "item",
  name = "pm-personal-robostasher-mk2-equipment",
  icon = "__periodic-madness__/graphics/icons/personal-robostasher-mk2-equipment.png",
  icon_size = 64, icon_mipmaps = 4,
  placed_as_equipment_result = "pm-personal-robostasher-mk2-equipment",
  subgroup = "equipment",
  order = "e[robotics]-a[personal-roboport-equipment]",
  default_request_amount = 1,
  stack_size = 20
},
{
  type = "item",
  name = "pm-personal-robocharger-equipment",
  icon = "__periodic-madness__/graphics/icons/personal-robocharger-equipment.png",
  icon_size = 64, icon_mipmaps = 4,
  placed_as_equipment_result = "pm-personal-robostasher-equipment",
  subgroup = "equipment",
  order = "e[robotics]-a[personal-roboport-equipment]",
  default_request_amount = 1,
  stack_size = 20
},
{
  type = "item",
  name = "pm-personal-robocharger-mk2-equipment",
  icon = "__periodic-madness__/graphics/icons/personal-robocharger-mk2-equipment.png",
  icon_size = 64, icon_mipmaps = 4,
  placed_as_equipment_result = "pm-personal-robostasher-mk2-equipment",
  subgroup = "equipment",
  order = "e[robotics]-a[personal-roboport-equipment]",
  default_request_amount = 1,
  stack_size = 20
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
}
})

local PMRefItems = data.raw["item"]["copper-cable"]

PMRefItems.subgroup = "pm-refined-items"

local PMRefIronBar = data.raw["item"]["iron-stick"]

PMRefIronBar.subgroup = "pm-refined-items"

local PMRefItemsGear = data.raw["item"]["iron-gear-wheel"]

PMRefItemsGear.subgroup = "pm-refined-items"

local SolidFuelFuel = data.raw["item"]["solid-fuel"]

SolidFuelFuel.subgroup = "pm-fuels"
SolidFuelFuel.order = "e"
data.raw["module"]["productivity-module"].effect = 
{
    productivity = {bonus = 0.04},
    consumption = {bonus = 0.4},
    pollution = {bonus = 0.10},
    speed = {bonus = -0.1}
}
data.raw["module"]["productivity-module-2"].effect = 
{
  productivity = {bonus = 0.06},
  consumption = {bonus = 0.5},
  pollution = {bonus = 0.12},
  speed = {bonus = -0.15}
}
data.raw["module"]["productivity-module-3"].effect = 
{
  productivity = {bonus = 0.1},
  consumption = {bonus = 0.6},
  pollution = {bonus = 0.16},
  speed = {bonus = -0.20}
}
data.raw["module"]["effectivity-module"].effect = 
{ 
    consumption = {bonus = -0.3},
    speed = {bonus = 0.05}
}
data.raw["module"]["effectivity-module-2"].effect = 
{
    consumption = {bonus = -0.4},
    speed = {bonus = 0.1}
}
data.raw["module"]["effectivity-module-3"].effect = 
{
    consumption = {bonus = -0.5},
    speed = {bonus = 0.15}
}
data.raw["module"]["speed-module"].subgroup = "pm-speed"
data.raw["module"]["speed-module"].order = "a"
data.raw["module"]["speed-module-2"].subgroup = "pm-speed"
data.raw["module"]["speed-module-2"].order = "b"
data.raw["module"]["speed-module-3"].subgroup = "pm-speed"
data.raw["module"]["speed-module-3"].order = "c"

data.raw["module"]["effectivity-module"].subgroup = "pm-effectivity"
data.raw["module"]["effectivity-module"].order = "a"
data.raw["module"]["effectivity-module-2"].subgroup = "pm-effectivity"
data.raw["module"]["effectivity-module-2"].order = "b"
data.raw["module"]["effectivity-module-3"].subgroup = "pm-effectivity"
data.raw["module"]["effectivity-module-3"].order = "c"

data.raw["module"]["productivity-module"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module"].order = "a"
data.raw["module"]["productivity-module-2"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module-2"].order = "b"
data.raw["module"]["productivity-module-3"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module-3"].order = "c"
local smodule1 = data.raw["module"]["speed-module"]
smodule1.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/speed-module-1.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/speed-module-1-glow.png",
  scale = 0.125,
}
}}
local smodule2 = data.raw["module"]["speed-module-2"]
smodule2.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/speed-module-2.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/speed-module-2-glow.png",
  scale = 0.125,
}
}}
local smodule3 = data.raw["module"]["speed-module-3"]
smodule3.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/speed-module-3.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/speed-module-3-glow.png",
  scale = 0.125,
}
}}

local emodule1 = data.raw["module"]["effectivity-module"]
emodule1.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/effectivity-module-1.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/effectivity-module-1-glow.png",
  scale = 0.125,
}
}}
local emodule2 = data.raw["module"]["effectivity-module-2"]
emodule2.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/effectivity-module-2.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/effectivity-module-2-glow.png",
  scale = 0.125,
}
}}
local emodule3 = data.raw["module"]["effectivity-module-3"]
emodule3.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/effectivity-module-3.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/effectivity-module-3-glow.png",
  scale = 0.125,
}
}}

local pmodule1 = data.raw["module"]["productivity-module"]
pmodule1.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/productivity-module-1.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/productivity-module-1-glow.png",
  scale = 0.125,
}
}}
local pmodule2 = data.raw["module"]["productivity-module-2"]
pmodule2.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/productivity-module-2.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/productivity-module-2-glow.png",
  scale = 0.125,
}
}}
local pmodule3 = data.raw["module"]["productivity-module-3"]
pmodule3.pictures = {layers = 
{
{
  size = 128,
  filename = "__periodic-madness__/graphics/icons/productivity-module-3.png",
  scale = 0.125,
},
{
  draw_as_light = true,
  flags = {"light"},
  size = 128,
  filename = "__periodic-madness__/graphics/light/productivity-module-3-glow.png",
  scale = 0.125,
}
}}
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
        offsets = {{0.5, -0.5},{0.5, 0.5}}
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
        offsets = {{0.5, -0.5},{-0.5, -0.5},{0, 0.5},{0.5, 0.5}}
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
        offsets = {{0.5, -0.5},{0.5, 0.5},{0, 0.5},{0.5, 0},{-0.5, 0.5},{-0.5, -0.5}}
      }
    }
  }
}

--im so happy i deleted tiktok but at the same time some of the shitposts were aamziong
--same (COUGH) rice
--it'll be some of the most mind-rotting thing ever and i love it
--while your here code green, how do i edit a vanilla items reicpe? is it deepcopy? 
--i forgot all of that :sob:
--thank you 
--oh my god huh QHAR

--for all items of builidngs

data:extend({

  {
    type = "item",
    name = "pm-stainless-steel-storage-tank",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-tank.png",
    subgroup = "storage",
    order = "b[fluid]-b[stainless-steel-storage-tank]",
    place_result = "pm-stainless-steel-storage-tank",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-acid-plant",
    icon = "__periodic-madness__/graphics/icons/buildings/acid-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "a",
    place_result = "pm-acid-plant",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-assembling-machine-0",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/assmachine-0.png",
    subgroup = "production-machine",
    order = "a",
    place_result = "pm-assembling-machine-0",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-welder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/welder.png",
    subgroup = "smelting-machine",
    order = "d",
    place_result = "pm-welder",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-water-extractor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/water-extractor.png",
    subgroup = "pm-water-machine",
    order = "a",
    place_result = "pm-water-extractor",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-dirty-boiler",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/dirty-boiler.png",
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]",
    place_result = "pm-dirty-boiler",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-high-density-transport-belt",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-transport-belt.png",
    subgroup = "pm-belts",
    order = "e",
    place_result = "pm-high-density-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-high-density-underground-belt",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-underground-belt.png",
    subgroup = "pm-undergrounds",
    order = "e",
    place_result = "pm-high-density-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-high-density-splitter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/high-density-splitter.png",
    subgroup = "pm-splitters",
    order = "e",
    place_result = "pm-high-density-splitter",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-vacuum-former-1",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/vacuum-former-1.png",
    subgroup = "production-machine",
    order = "d",
    place_result = "pm-vacuum-former-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-washing-plant-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-1.png",
    subgroup = "pm-water-machine",
    order = "d",
    place_result = "pm-washing-plant-1",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-burner-crusher",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/burner-crusher.png",
    subgroup = "pm-crushing-machine",
    order = "a",
    place_result = "pm-burner-crusher",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-fractional-distillator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/fractional-distillator.png",
    subgroup = "pm-oil-machine",
    order = "a",
    place_result = "pm-fractional-distillator",
    stack_size = 20,
  },
  {
    type = "item",
    name = "pm-crusher-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/crusher-1.png",
    subgroup = "pm-crushing-machine",
    order = "b",
    place_result = "pm-crusher-1",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-crusher-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/crusher-2.png",
    subgroup = "pm-crushing-machine",
    order = "c",
    place_result = "pm-crusher-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-atmospheric-condenser",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/atmospheric-condenser.png",
    subgroup = "pm-atmospheric-machine",
    order = "a",
    place_result = "pm-atmospheric-condenser",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-fluid-catalyst-cracker",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/fluid-cracker.png",
    subgroup = "pm-oil-machine",
    order = "d",
    place_result = "pm-fluid-catalyst-cracker",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-evaporator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/evaporator.png",
    subgroup = "pm-water-machine",
    order = "c",
    place_result = "pm-evaporator",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-molten-inator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator.png",
    subgroup = "production-machine",
    order = "f",
    place_result = "pm-molten-inator",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cold-inator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/cold-inator.png",
    subgroup = "production-machine",
    order = "g",
    place_result = "pm-cold-inator",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-molten-inator-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator-2.png",
    subgroup = "production-machine",
    order = "f",
    place_result = "pm-molten-inator-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cold-inator-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/cold-inator-2.png",
    subgroup = "production-machine",
    order = "g",
    place_result = "pm-cold-inator-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-molten-inator-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator-3.png",
    subgroup = "production-machine",
    order = "h",
    place_result = "pm-molten-inator-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cold-inator-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/cold-inator-3.png",
    subgroup = "production-machine",
    order = "i",
    place_result = "pm-cold-inator-3",
    stack_size = 100
  },
  {
    type = "module",
    name = "pm-circuit-megassembler",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/circuit-megassembler.png",
    category = "pm-circuit-megassembler-module",
    tier = 1,
    effect = {speed = 1, consumption = 1, pollution = 0.5},
    subgroup = "production-machine",
    order = "h",
    place_result = "pm-circuit-megassembler",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-stainless-steel-pipe",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pipe.png",
    subgroup = "energy-pipe-distribution",
    order = "g",
    place_result = "pm-stainless-steel-pipe",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-stainless-steel-pipe-to-ground",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pipe-to-ground.png",
    subgroup = "energy-pipe-distribution",
    order = "h",
    place_result = "pm-stainless-steel-pipe-to-ground",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-science-center",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/science-center.png",
    subgroup = "pm-science-machine",
    order = "b",
    place_result = "pm-science-center",
    stack_size = 20,
  },
  {
    type = "item",
    name = "pm-voltatic-charger",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/voltatic-charger.png",
    subgroup = "pm-battery-machine",
    order = "a",
    place_result = "pm-voltatic-charger",
    stack_size = 10,
  },
  {
    type = "item",
    name = "pm-voltatic-discharger",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/voltatic-discharger.png",
    subgroup = "pm-battery-machine",
    order = "b",
    place_result = "pm-voltatic-discharger",
    stack_size = 10,
  },
  {
    type = "item",
    name = "pm-CO2-nullifer",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/CO2-nullifer.png",
    subgroup = "pm-atmospheric-machine",
    order = "b",
    place_result = "pm-CO2-nullifer",
    stack_size = 25,
  },
  {
    type = "item",
    name = "pm-vacuum-former-2",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/vacuum-former-2.png",
    subgroup = "production-machine",
    order = "e",
    place_result = "pm-vacuum-former-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-air-filterer",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/air-filterer.png",
    subgroup = "pm-atmospheric-machine",
    order = "c",
    place_result = "pm-air-filterer",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-washing-plant-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-2.png",
    subgroup = "pm-water-machine",
    order = "e",
    place_result = "pm-washing-plant-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-greenhouse",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/greenhouse.png",
    subgroup = "pm-atmospheric-machine",
    order = "d",
    place_result = "pm-greenhouse",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-factorian-bacteria-greenhouse",
    icon_size = 160,
    icon = "__periodic-madness__/graphics/icons/buildings/factorian-bacteria-greenhouse.png",
    subgroup = "pm-atmospheric-machine",
    order = "e",
    place_result = "pm-factorian-bacteria-greenhouse",
    stack_size = 40
  },
  {
    type = "item",
    name = "pm-bio-lab",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/bio-lab.png",
    subgroup = "pm-science-machine",
    order = "d",
    place_result = "pm-bio-lab",
    stack_size = 10,
  },
  {
    type = "item",
    name = "pm-stainless-steel-chest",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-chest.png",
    subgroup = "storage",
    order = "ca",
    place_result = "pm-stainless-steel-chest",
    stack_size = 40 + 10
  },
  {
    type = "item",
    name = "pm-electric-mining-drill-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electric-mining-drill-2.png",
    subgroup = "extraction-machine",
    order = "b",
    place_result = "pm-electric-mining-drill-2",
    stack_size = 40 + 10
  },
  {
    type = "item",
    name = "pm-electrolysis-plant",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electrolysis-plant.png",
    subgroup = "pm-water-machine",
    order = "f",
    place_result = "pm-electrolysis-plant",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-crystallizer",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/crystallizer.png",
    subgroup = "production-machine",
    place_result = "pm-crystallizer",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-solar-panel-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-2.png",
    subgroup = "energy",
    order = "e",
    place_result = "pm-solar-panel-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-solar-panel-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/solar-panel-3.png",
    subgroup = "energy",
    order = "f",
    place_result = "pm-solar-panel-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-cyclotron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/cyclotron.png",
    subgroup = "production-machine",
    place_result = "pm-cyclotron",
    stack_size = 121,
  },
  {
    type = "item",
    name = "pm-heat-exchanger-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/heat-exchanger-2.png",
    subgroup = "pm-heat-machines",
    order = "Ab",
    place_result = "pm-heat-exchanger-2",
    stack_size = 100 / 2,
  },
  {
    type = "item",
    name = "pm-burn-inator",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/burninator.png",
    subgroup = "pm-oil-machine",
    place_result = "pm-burn-inator",
    stack_size = 100,
  },
  {
    type = "item",
    name = "pm-heat-pipe-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/heat-pipe-1.png",
    subgroup = "pm-heat-machines",
    order = "a",
    place_result = "pm-heat-pipe-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-polonium-reactor",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/buildings/polonium-reactor.png",
    subgroup = "energy",
    order = "f",
    place_result = "pm-polonium-reactor",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-francium-ultracool-centrifugal-kabbalism",
    icon = "__periodic-madness__/graphics/icons/buildings/FUCK.png",
    icon_size = 128,
    subgroup = "production-machine",
    order = "y",
    place_result = "pm-francium-ultracool-centrifugal-kabbalism",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-evaporator-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/evaporator-2.png",
    subgroup = "pm-water-machine",
    order = "c",
    place_result = "pm-evaporator-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-electrolysis-plant-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electrolysis-plant-2.png",
    subgroup = "pm-water-machine",
    order = "fa",
    place_result = "pm-electrolysis-plant-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-leaching-field",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/leaching-field.png",
    subgroup = "pm-water-machine",
    order = "g",
    place_result = "pm-leaching-field",
    stack_size = 100,
  },
  {
    type = "item",
    name = "pm-battery-charger",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/battery-charger.png",
    subgroup = "pm-battery-machine",
    order = "c",
    place_result = "pm-battery-charger",
    stack_size = 20,
  },
  {
    type = "item",
    name = "pm-battery-discharger",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/battery-discharger.png",
    subgroup = "pm-battery-machine",
    order = "d",
    place_result = "pm-battery-discharger",
    stack_size = 20,
  },
  {
    type = "item",
    name = "pm-stainless-steel-pump",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/stainless-steel-pump.png",
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[pump]",
    place_result = "pm-stainless-steel-pump",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-chemical-plant-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/chemical-plant-2.png",
    subgroup = "pm-oil-machine",
    order = "ca",
    place_result = "pm-chemical-plant-2",
    stack_size = 75
  },
  {
    type = "item",
    name = "pm-advanced-transport-belt",
    icon_size = 64,
    icon = "__base__/graphics/icons/fast-transport-belt.png",
    subgroup = "pm-belts",
    order = "c",
    place_result = "pm-advanced-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-advanced-underground-belt",
    icon_size = 64,
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    subgroup = "pm-undergrounds",
    order = "c",
    place_result = "pm-advanced-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-advanced-splitter",
    icon_size = 64,
    icon = "__base__/graphics/icons/fast-splitter.png",
    subgroup = "pm-splitters",
    order = "c",
    place_result = "pm-advanced-splitter",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-heat-furnace",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/heat-furnace.png",
    subgroup = "smelting-machine",
    order = "f",
    place_result = "pm-heat-furnace",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-electric-furnace-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electric-furnace-2.png",
    subgroup = "smelting-machine",
    order = "e",
    place_result = "pm-electric-furnace-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-heat-pipe-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/heat-pipe-3.png",
    subgroup = "pm-heat-machines",
    order = "c",
    place_result = "pm-heat-pipe-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-fluid-burner",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/molten-inator.png",
    subgroup = "pm-heat-machines",
    order = "A",
    place_result = "pm-fluid-burner",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-concrete-wall",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/concrete-wall.png",
    subgroup = "defensive-structure",
    order = "aa",
    place_result = "pm-concrete-wall",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-bio-wall",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/bio-wall.png",
    subgroup = "defensive-structure",
    order = "ab",
    place_result = "pm-bio-wall",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-mixing-tank-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/mixing-tank-1.png",
    subgroup = "pm-water-machine",
    order = "d",
    place_result = "pm-mixing-tank-1",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-mixing-tank-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/mixing-tank-2.png",
    subgroup = "pm-water-machine",
    order = "d",
    place_result = "pm-mixing-tank-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-express-inserter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/express-inserter.png",
    place_result = "pm-express-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-express-long-handed-inserter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/express-long-handed-inserter.png",
    place_result = "pm-express-long-handed-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-express-bulk-inserter",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/express-bulk-inserter.png",
    place_result = "pm-express-bulk-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-beacon-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/beacon-2.png",
    place_result = "pm-beacon-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-hub-beacon",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/express-bulk-inserter.png",
    place_result = "pm-hub-beacon",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-proximity-beacon",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/express-bulk-inserter.png",
    place_result = "pm-proximity-beacon",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-electric-boiler-1",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electric-boiler.png",
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]",
    place_result = "pm-electric-boiler-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-electric-boiler-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/electric-boiler.png",
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]",
    place_result = "pm-electric-boiler-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "pm-cooling-plant",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-1.png",
    subgroup = "production-machine",
    place_result = "pm-cooling-plant",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-RTG",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-1.png",
    subgroup = "production-machine",
    place_result = "pm-RTG",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-washing-plant-3",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/washing-plant-3.png",
    subgroup = "pm-water-machine",
    order = "e",
    place_result = "pm-washing-plant-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-roboport-2",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/roboport-2.png",
    place_result = "pm-roboport-2",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-construction-repeater",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/construction-repeater.png",
    place_result = "pm-construction-repeater",
    stack_size = 25
  },
  {
    type = "item",
    name = "pm-logistic-repeater",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/logistic-repeater.png",
    place_result = "pm-logistic-repeater",
    stack_size = 25
  },

})

data.raw["item"]["oil-refinery"].subgroup = "pm-oil-machine"
data.raw["item"]["oil-refinery"].order = "b"

data.raw["item"]["chemical-plant"].subgroup = "pm-oil-machine"
data.raw["item"]["chemical-plant"].order = "c"
data.raw["item"]["chemical-plant"].stack_size = 75

data.raw["item"]["lab"].subgroup = "pm-science-machine"
data.raw["item"]["lab"].order = "a"

data.raw["item"]["offshore-pump"].subgroup = "pm-water-machine"
data.raw["item"]["offshore-pump"].order = "b"

data.raw["item"]["beacon"].stack_size = 25

data.raw["item"]["fast-transport-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"
data.raw["item"]["fast-underground-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-underground-belt.png"
data.raw["item"]["fast-splitter"].icon = "__periodic-madness__/graphics/icons/buildings/fast-splitter.png"

data.raw["item"]["transport-belt"].subgroup = "pm-belts"
data.raw["item"]["transport-belt"].order = "a"
data.raw["item"]["underground-belt"].subgroup = "pm-undergrounds"
data.raw["item"]["underground-belt"].order = "a"
data.raw["item"]["splitter"].subgroup = "pm-splitters"
data.raw["item"]["splitter"].order = "a"
data.raw["item"]["fast-transport-belt"].subgroup = "pm-belts"
data.raw["item"]["fast-transport-belt"].order = "b"
data.raw["item"]["fast-underground-belt"].subgroup = "pm-undergrounds"
data.raw["item"]["fast-underground-belt"].order = "b"
data.raw["item"]["fast-splitter"].subgroup = "pm-splitters"
data.raw["item"]["fast-splitter"].order = "b"
data.raw["item"]["express-transport-belt"].subgroup = "pm-belts"
data.raw["item"]["express-transport-belt"].order = "d"
data.raw["item"]["express-underground-belt"].subgroup = "pm-undergrounds"
data.raw["item"]["express-underground-belt"].order = "d"
data.raw["item"]["express-splitter"].subgroup = "pm-splitters"
data.raw["item"]["express-splitter"].order = "d"

data.raw["item"]["heat-pipe"].subgroup = "pm-heat-machines"
data.raw["item"]["heat-pipe"].order = "b"
data.raw["recipe"]["heat-pipe"].subgroup = "pm-heat-machines"
data.raw["recipe"]["heat-pipe"].order = "b"

data.raw["item"]["heat-exchanger"].subgroup = "pm-heat-machines"
data.raw["item"]["heat-exchanger"].order = "Aa"
data.raw["recipe"]["heat-exchanger"].subgroup = "pm-heat-machines"
data.raw["recipe"]["heat-exchanger"].order = "Aa"

data.raw["item"]["pipe-to-ground"].stack_size = 100
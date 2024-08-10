--for all recipes to make buildings

data:extend({
  {
    type = "recipe",
    name = "pm-acid-plant",
    energy_required = 1,
    subgroup = "production-machine",
    order = "a",
    ingredients =
    {
      { "pm-air-filter",      1 },
      { "pm-basic-panelling", 8 },
      { "pm-basic-tubing",    4 },
    },
    result = "pm-acid-plant"
  },
  {
    type = "recipe",
    name = "pm-assembling-machine-0",
    enabled = true,
    subgroup = "production-machine",
    order = "a",
    ingredients =
    {
      { "pm-basic-framing",   4 },
      { "pm-basic-panelling", 4 },
      { "stone-furnace",      1 }
    },
    result = "pm-assembling-machine-0"
  },
  {
    type = "recipe",
    name = "pm-welder",
    enabled = false,
    energy_required = 1.5,
    ingredients =
    {
      { "pm-basic-panelling", 5 },
      { "stone-furnace",      1 },
      { "pm-basic-framing",   4 }
    },
    result = "pm-welder",
  },
  {
    type = "recipe",
    name = "pm-water-extractor",
    subgroup = "pm-water-machine",
    order = "a",
    enabled = true,
    ingredients =
    {
      { "pm-basic-panelling", 4 },
      { "pm-basic-tubing",    2 },
      { "iron-gear-wheel",    2 }
    },
    result = "pm-water-extractor",
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-tank",
    enabled = false,
    ingredients =
    {
      { "pm-heavyweight-panelling",      8 },
      { "pm-basic-framing",              16 },
      { "pm-corrosion-resistant-tubing", 2 }
    },
    result = "pm-stainless-steel-storage-tank"
  },
  {
    type = "recipe",
    name = "pm-dirty-boiler",
    enabled = true,
    ingredients =
    {
      { "pm-nickel-plate", 5 },
      { "pm-basic-tubing", 4 }
    },
    result = "pm-dirty-boiler",
  },
  {
    type = "recipe",
    name = "pm-high-density-transport-belt",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    ingredients =
    {
      { "express-transport-belt", 1 },
      { "low-density-structure",  2 },
      { "processing-unit",        3 },
      { type = "fluid",           name = "pm-heavy-lubricant", amount = 5 }
    },
    result = "pm-high-density-transport-belt"
  },
  {
    type = "recipe",
    name = "pm-high-density-underground-belt",
    enabled = false,
    energy_required = 2,
    show_amount_in_title = true,
    category = "crafting-with-fluid",
    ingredients =
    {
      { "express-underground-belt", 2 },
      { "low-density-structure",    4 },
      { type = "fluid",             name = "pm-heavy-lubricant", amount = 10 }
    },
    result = "pm-high-density-underground-belt",
    result_count = 2
  },
  {
    type = "recipe",
    name = "pm-high-density-splitter",
    enabled = false,
    energy_required = 3,
    category = "crafting-with-fluid",
    ingredients =
    {
      { "express-splitter",      1 },
      { "low-density-structure", 2 },
      { "processing-unit",       6 },
      { type = "fluid",          name = "pm-heavy-lubricant", amount = 15 }
    },
    result = "pm-high-density-splitter"
  },
  {
    type = "recipe",
    name = "pm-vacuum-former-1",
    enabled = false,
    energy_required = 2,
    subgroup = "production-machine",
    order = "f",
    ingredients =
    {
      { "pm-heating-plating", 4 },
      { "pm-basic-tubing",    4 },
      { "pm-fluid-circuit",   6 },
      { "pm-brass-cog",       2 }
    },
    result = "pm-vacuum-former-1"
  },
  {
    type = "recipe",
    name = "pm-washing-plant-1",
    subgroup = "pm-water-machine",
    order = "c",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-basic-tubing",  10 },
      { "steel-plate",      4 },
      { "pm-fluid-circuit", 3 }
    },
    result = "pm-washing-plant-1"
  },
  {
    type = "recipe",
    name = "pm-burner-crusher",
    subgroup = "pm-crushing-machine",
    order = "a",
    energy_required = 1,
    ingredients =
    {
      { "iron-gear-wheel",  2 },
      { "pm-basic-framing", 8 },
      { "pm-nickel-plate",  1 }
    },
    result = "pm-burner-crusher"
  },
  {
    type = "recipe",
    name = "pm-fractional-distillator",
    subgroup = "pm-oil-machine",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      { "pm-heating-plating",            8 },
      { "pm-corrosion-resistant-tubing", 8 },
      { "pm-heavyweight-framing",        10 },
      { "pm-fluid-circuit",              2 },
      { "pm-polyethylene-plastic",       4 }
    },
    result = "pm-fractional-distillator"
  },
  {
    type = "recipe",
    name = "pm-crusher-1",
    subgroup = "pm-crushing-machine",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "steel-plate",        6 },
      { "pm-basic-framing",   4 },
      { "pm-basic-panelling", 8 },
      { "electronic-circuit", 3 }
    },
    result = "pm-crusher-1"
  },
  {
    type = "recipe",
    name = "pm-crusher-2",
    subgroup = "pm-crushing-machine",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-stainless-steel-alloy", 6 },
      { "pm-heavyweight-framing",   4 },
      { "pm-heavyweight-panelling", 8 },
      { "electric-engine-unit",     2 },
      { "processing-unit",          3 }
    },
    result = "pm-crusher-2"
  },
  {
    type = "recipe",
    name = "pm-fluid-catalyst-cracker",
    subgroup = "pm-oil-machine",
    order = "d",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-brass-cog",                  2 },
      { "pm-heavyweight-panelling",      16 },
      { "pm-heavyweight-framing",        8 },
      { "pm-corrosion-resistant-tubing", 6 },
      { "pm-fluid-circuit",              2 }
    },
    result = "pm-fluid-catalyst-cracker"
  },
  {
    type = "recipe",
    name = "pm-evaporator",
    subgroup = "pm-water-machine",
    order = "c",
    energy_required = 1.5,
    ingredients =
    {
      { "pm-basic-framing", 2 },
      { "pm-glass-pane",    1 },
      { "pm-basic-tubing",  4 },
    },
    result = "pm-evaporator"
  },
  {
    type = "recipe",
    name = "pm-molten-inator",
    subgroup = "pm-molten-machine",
    order = "a",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-heating-plating",      10 },
      { "pm-stainless-steel-pipe", 2 },
      { "pm-gold-plate",           6 }
    },
    result = "pm-molten-inator"
  },
  {
    type = "recipe",
    name = "pm-cold-inator",
    subgroup = "pm-molten-machine",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-cooling-plating",      10 },
      { "pm-stainless-steel-pipe", 2 },
      { "pm-silver-plate",         6 }
    },
    result = "pm-cold-inator"
  },
  {
    type = "recipe",
    name = "pm-cold-inator-2",
    subgroup = "pm-molten-machine",
    order = "d",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-cooling-framing", 4 },
      { "pm-cold-inator",     1 },
      { "pm-silver-plating",  4 },
      { "pm-fluid-circuit",   3 }
    },
    result = "pm-cold-inator-2"
  },
  {
    type = "recipe",
    name = "pm-molten-inator-2",
    subgroup = "pm-molten-machine",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-molten-framing", 4 },
      { "pm-molten-inator",  1 },
      { "pm-gold-plating",   4 },
      { "pm-fluid-circuit",  3 }
    },
    result = "pm-molten-inator-2"
  },
  {
    type = "recipe",
    name = "pm-circuit-megassembler",
    subgroup = "production-machine",
    order = "y",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      { "pm-heavyweight-framing",        12 },
      { "pm-lightweight-panelling",      30 },
      { "pm-corrosion-resistant-tubing", 20 },
      { "advanced-circuit",              15 },
      { "assembling-machine-2",          2 },
      { "concrete",                      10 },
      { "electric-engine-unit",          9 }
    },
    result = "pm-circuit-megassembler"
  },
  {
    type = "recipe",
    name = "pm-atmospheric-condenser",
    subgroup = "pm-atmospheric-machine",
    order = "a",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      { "pm-corrosion-resistant-tubing", 8 },
      { "pm-heavyweight-framing",        12 },
      { "pm-air-filter",                 8 },
      { "advanced-circuit",              5 },
    },
    result = "pm-atmospheric-condenser"
  },
  {
    type = "recipe",
    name = "pm-filter-long-handed-inserter",
    subgroup = "inserter",
    order = "f",
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      { "electronic-circuit",   4 },
      { "pm-vulcanised-rubber", 1 },
      { "long-handed-inserter", 1 }
    },
    result = "pm-filter-long-handed-inserter"
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pipe",
    subgroup = "energy-pipe-distribution",
    order = "g",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-corrosion-resistant-tubing", 1 },
      { "pm-stainless-steel-alloy",      2 }
    },
    results =
    {
      { "pm-stainless-steel-pipe", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pipe-to-ground",
    subgroup = "energy-pipe-distribution",
    order = "h",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-corrosion-resistant-tubing", 10 },
      { "pm-stainless-steel-alloy",      5 }
    },
    results =
    {
      { "pm-stainless-steel-pipe-to-ground", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-science-center",
    subgroup = "pm-science-machine",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-glass-pane",                 10 },
      { "lab",                           1 },
      { "advanced-circuit",              5 },
      { "pm-corrosion-resistant-tubing", 8 },
      { "pm-heavyweight-panelling",      12 },
      { "pm-heavyweight-framing",        6 }
    },
    results =
    {
      { "pm-science-center", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-voltatic-charger",
    subgroup = "pm-battery-machine",
    order = "a",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-basic-panelling", 4 },
      { "pm-basic-framing",   2 },
      { "copper-cable",       4 },
      { "electronic-circuit", 1 }
    },
    results =
    {
      { "pm-voltatic-charger", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-voltatic-discharger",
    subgroup = "pm-battery-machine",
    order = "b",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-basic-panelling", 4 },
      { "pm-basic-framing",   2 },
      { "copper-cable",       4 },
      { "electronic-circuit", 1 }
    },
    results =
    {
      { "pm-voltatic-discharger", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-CO2-nullifer",
    subgroup = "pm-atmospheric-machine",
    order = "b",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { "pm-glass-pane",                 8 },
      { "wood",                          12 },
      { "pm-silver-plate",               6 },
      { "pm-lightweight-panelling",      8 },
      { "pm-heavyweight-framing",        12 },
      { "pm-corrosion-resistant-tubing", 4 }
    },
    results =
    {
      { "pm-CO2-nullifer", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-vacuum-former-2",
    enabled = false,
    energy_required = 6,
    subgroup = "production-machine",
    order = "g",
    ingredients =
    {
      { "pm-heating-plating",            8 },
      { "pm-corrosion-resistant-tubing", 12 },
      { "advanced-circuit",              6 },
      { "pm-brass-cog",                  4 },
      { "pm-heavyweight-panelling",      4 }
    },
    result = "pm-vacuum-former-2"
  },
  {
    type = "recipe",
    name = "pm-air-filterer",
    subgroup = "pm-atmospheric-machine",
    order = "c",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      { "pm-air-filter",            4 },
      { "pm-lightweight-panelling", 12 },
      { "advanced-circuit",         4 },
      { "pm-platinum-plate",        6 },
    },
    result = "pm-air-filterer"
  },
  {
    type = "recipe",
    name = "pm-washing-plant-2",
    subgroup = "pm-water-machine",
    order = "d",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-corrosion-resistant-tubing", 10 },
      { "pm-stainless-steel-alloy",      2 },
      { "advanced-circuit",              6 },
      { "pm-heavyweight-panelling",      12 }
    },
    result = "pm-washing-plant-2"
  },
  {
    type = "recipe",
    name = "pm-greenhouse",
    subgroup = "pm-atmospheric-machine",
    order = "d",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { "pm-silver-plate",             6 },
      { "pm-glass-pane",               12 },
      { "pm-anti-bacterial-tubing",    4 },
      { "pm-anti-bacterial-panelling", 8 },
      { "landfill",                    4 }
    },
    result = "pm-greenhouse"
  },
  {
    type = "recipe",
    name = "pm-factorian-bacteria-greenhouse",
    subgroup = "pm-atmospheric-machine",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-anti-bacterial-tubing",    8 },
      { "pm-anti-bacterial-panelling", 6 },
      { "pm-heavyweight-framing",      12 },
      { "pm-glass-pane",               16 },
      { "advanced-circuit",            4 }
    },
    result = "pm-factorian-bacteria-greenhouse"
  },
  {
    type = "recipe",
    name = "pm-bio-lab",
    subgroup = "pm-science-machine",
    order = "d",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      { "pm-lightweight-framing",      16 },
      { "pm-anti-bacterial-panelling", 12 },
      { "advanced-circuit",            6 },
      { "pm-tungsten-plate",           4 },
      { "electric-engine-unit",        2 }
    },
    results =
    {
      { "pm-bio-lab", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-chest",
    subgroup = "storage",
    order = "ca",
    enabled = false,
    ingredients =
    {
      { "pm-stainless-steel-alloy", 8 }
    },
    results =
    {
      { "pm-stainless-steel-chest", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-electric-mining-drill-2",
    subgroup = "extraction-machine",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "advanced-circuit",         4 + 1 },
      { "pm-lead-plate",            6 },
      { "pm-basic-wiring",          10 },
      { "pm-heavyweight-framing",   12 },
      { "pm-heavyweight-panelling", 6 }
    },
    results =
    {
      { "pm-electric-mining-drill-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-electrolysis-plant",
    subgroup = "pm-water-machine",
    order = "f",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      { "copper-plate",       2 },
      { "pm-zinc-plate",      2 },
      { "pm-basic-tubing",    6 },
      { "pm-basic-panelling", 8 }
    },
    results =
    {
      { "pm-electrolysis-plant", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-crystallizer",
    subgroup = "production-machine",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      { "pm-heavyweight-framing",        8 },
      { "pm-heating-plating",            6 },
      { "pm-cooling-plating",            6 },
      { "advanced-circuit",              3 },
      { "pm-corrosion-resistant-tubing", 14 }
    },
    results =
    {
      { "pm-crystallizer", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-2",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "solar-panel",     1 },
      { "pm-solar-cell",   4 },
      { "pm-indium-plate", 4 },
      { "processing-unit", 2 },
      { type = "fluid",    name = "pm-liquid-gallium", amount = 8 }
    },
    results =
    {
      { "pm-solar-panel-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-walkable-solar-panel-1",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "da",
    --enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "processing-unit",          3 },
      { "pm-solar-cell",            4 },
      { "pm-lightweight-panelling", 20 },
      { type = "fluid",             name = "pm-liquid-gallium", amount = 6 }
    },
    results =
    {
      { "pm-walkable-solar-panel-1", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-walkable-solar-panel-2",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "ea",
    --enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-walkable-solar-panel-1", 1 },
      { "processing-unit",           6 },
      { "pm-solar-cell",             6 },
      { "pm-lightweight-panelling",  20 },
      { type = "fluid",              name = "pm-liquid-gallium", amount = 10 }
    },
    results =
    {
      { "pm-walkable-solar-panel-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-cyclotron",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "electric-engine-unit",             4 },
      { "advanced-circuit",                 4 + 1 },
      { "pm-heavyweight-framing",           16 },
      { "pm-vanadium-redox-battery",        3 },
      { "pm-radiation-resistant-tubing",    4 },
      { "pm-radiation-resistant-panelling", 8 }
    },
    results =
    {
      { "pm-cyclotron", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-heat-exchanger-2",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-heating-plating", 40 },
      { "pm-gold-plate",      50 },
      { "heat-exchanger",     1 }
    },
    results =
    {
      { "pm-heat-exchanger-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-burn-inator",
    subgroup = "pm-oil-machine",
    order = "x",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      { "pm-platinum-plate",             4 },
      { "pm-air-filter",                 6 },
      { "pm-corrosion-resistant-tubing", 12 },
      { "pm-heavyweight-framing",        16 },
      { "pm-fluid-circuit",              8 }
    },
    results =
    {
      { "pm-burn-inator", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-heat-pipe-1",
    subgroup = "pm-heat-machines",
    order = "a",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      { "pm-heating-plating", 20 },
      { "pm-aluminium-plate", 8 },
      { "copper-plate",       10 }
    },
    results =
    {
      { "pm-heat-pipe-1", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-reactor",
    subgroup = "energy",
    order = "f",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      { "pm-radiation-resistant-panelling", 20 },
      { "concrete",                         100 },
      { "advanced-circuit",                 40 },
      { "pm-radiation-resistant-tubing",    30 },
      { "electric-engine-unit",             10 },
      { "pm-cadnium-plate",                 20 }
    },
    results =
    {
      { "pm-polonium-reactor", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-francium-ultracool-centrifugal-kabbalism",
    subgroup = "production-machine",
    order = "y",
    energy_required = 10,
    enabled = false,         --this means NO CRAFTING!!
    ingredients =
    {
      { "pm-radiation-resistant-panelling", 10 },
      { "pm-radiation-resistant-tubing",    20 },
      { "electric-engine-unit",             4 },
      { "processing-unit",                  20 },
      { "pm-thallium-plate",                16 }
    },
    results =         --hi smelloy
    {
      { "pm-francium-ultracool-centrifugal-kabbalism", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-evaporator-2",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "c",
    energy_required = 4,
    ingredients =
    {
      { "pm-evaporator",                 1 },
      { "pm-corrosion-resistant-tubing", 12 },
      { "pm-glass-pane",                 8 },
      { "pm-thallium-plate",             3 },
      { "pm-heavyweight-panelling",      8 },
      { "pm-heating-plating",            10 }
    },
    results =
    {
      { "pm-evaporator-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-electrolysis-plant-2",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "fa",
    energy_required = 3,
    ingredients =
    {
      { "pm-electrolysis-plant",         1 },
      { "processing-unit",               3 },
      { "pm-zirconia",                   6 },
      { "pm-heavyweight-panelling",      5 },
      { "pm-corrosion-resistant-tubing", 12 }
    },
    results =
    {
      { "pm-electrolysis-plant-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-leaching-field",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "g",
    ingredients =
    {
      { "pm-corrosion-resistant-tubing", 24 },
      { "pm-fluid-circuit",              8 },
      { "pm-heavyweight-framing",        12 },
      { "pm-heavyweight-panelling",      16 },
    },
    results =
    {
      { "pm-leaching-field", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-battery-charger",
    subgroup = "pm-battery-machine",
    order = "c",
    enabled = false,
    ingredients =
    {
      { "pm-basic-wiring",         10 },
      { "pm-polyethylene-plastic", 4 },
      { "pm-fluid-circuit",        2 },
      { "pm-heavyweight-framing",  8 }
    },
    results =
    {
      { "pm-battery-charger", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-battery-discharger",
    subgroup = "pm-battery-machine",
    order = "d",
    enabled = false,
    ingredients =
    {
      { "pm-basic-wiring",         10 },
      { "pm-polyethylene-plastic", 4 },
      { "pm-fluid-circuit",        2 },
      { "pm-heavyweight-framing",  8 }
    },
    results =
    {
      { "pm-battery-discharger", 1 }
    }
  },
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["boiler"].enabled = false

data.raw["recipe"]["centrifuge"].order = "x"

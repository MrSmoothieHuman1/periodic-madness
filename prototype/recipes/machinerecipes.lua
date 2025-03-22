local PM = require("library")
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
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-basic-panelling", 8),
      PM.ingredient("pm-basic-tubing", 4),
    },
    results = {
      PM.product("pm-acid-plant", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-assembling-machine-0",
    enabled = true,
    subgroup = "production-machine",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-basic-framing", 4),
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("stone-furnace", 1)
    },
    results = {
      PM.product("pm-assembling-machine-0", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-welder",
    enabled = false,
    energy_required = 1.5,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 5),
      PM.ingredient("stone-furnace", 1),
      PM.ingredient("pm-basic-framing", 4)
    },
    results = {
      PM.product("pm-welder", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-water-extractor",
    subgroup = "pm-water-machine",
    order = "a",
    enabled = true,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-tubing", 2),
      PM.ingredient("iron-gear-wheel", 2)
    },
    results = {
      PM.product("pm-water-extractor", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-tank",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-heavyweight-panelling", 8),
      PM.ingredient("pm-basic-framing", 11),
      PM.ingredient("pm-corrosion-resistant-tubing", 2),
      PM.ingredient("pm-stainless-steel-alloy", 6)
    },
    results = {
      PM.product("pm-stainless-steel-storage-tank", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-dirty-boiler",
    enabled = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 5),
      PM.ingredient("pm-basic-tubing", 4)
    },
    results = {
      PM.product("pm-dirty-boiler", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-high-density-transport-belt",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-transport-belt", 1),
      PM.ingredient("low-density-structure", 1),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-heavy-lubricant", 5, "fluid")
    },
    results = {
      PM.product("pm-high-density-transport-belt", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-high-density-underground-belt",
    enabled = false,
    energy_required = 3,
    show_amount_in_title = true,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-underground-belt", 2),
      PM.ingredient("low-density-structure", 2),
      PM.ingredient("pm-heavy-lubricant", 10, "fluid")
    },
    results = {
      PM.product("pm-high-density-underground-belt", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-high-density-splitter",
    enabled = false,
    energy_required = 5,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-splitter", 1),
      PM.ingredient("low-density-structure", 2),
      PM.ingredient("processing-unit", 6),
      PM.ingredient("pm-heavy-lubricant", 15, "fluid")
    },
    results = {
      PM.product("pm-high-density-splitter", 1)
    }
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
      PM.ingredient("pm-heating-plating", 4),
      PM.ingredient("pm-basic-tubing", 4),
      PM.ingredient("pm-fluid-circuit", 6),
      PM.ingredient("pm-brass-cog", 2)
    },
    results = {
      PM.product("pm-vacuum-former-1", 1)
    }
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
      PM.ingredient("pm-basic-tubing", 10),
      PM.ingredient("steel-plate", 4),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    results = {
      PM.product("pm-washing-plant-1", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-burner-crusher",
    subgroup = "pm-crushing-machine",
    order = "a",
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("iron-gear-wheel", 2),
      PM.ingredient("pm-basic-framing", 8),
      PM.ingredient("pm-nickel-plate", 1)
    },
    results = {
      PM.product("pm-burner-crusher", 1)
    }
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
      PM.ingredient("pm-heating-plating", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-framing", 10),
      PM.ingredient("pm-fluid-circuit", 2),
      PM.ingredient("pm-polyethylene-plastic", 4)
    },
    results = {
      PM.product("pm-fractional-distillator", 1)
    }
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
      PM.ingredient("steel-plate", 6),
      PM.ingredient("pm-basic-framing", 4),
      PM.ingredient("pm-basic-panelling", 8),
      PM.ingredient("electronic-circuit", 3)
    },
    results = {
      PM.product("pm-crusher-1", 1)
    }
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
      PM.ingredient("pm-stainless-steel-alloy", 6),
      PM.ingredient("pm-heavyweight-framing", 4),
      PM.ingredient("pm-heavyweight-panelling", 8),
      PM.ingredient("electric-engine-unit", 2),
      PM.ingredient("processing-unit", 3)
    },
    results = {
      PM.product("pm-crusher-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-catalyst-cracker",
    subgroup = "pm-oil-machine",
    order = "ca",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-brass-cog", 2),
      PM.ingredient("pm-heavyweight-panelling", 16),
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 6),
      PM.ingredient("pm-fluid-circuit", 2)
    },
    results = {
      PM.product("pm-fluid-catalyst-cracker", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-evaporator",
    subgroup = "pm-water-machine",
    order = "c",
    energy_required = 1.5,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("pm-glass-pane", 1),
      PM.ingredient("pm-basic-tubing", 4),
    },
    results = {
      PM.product("pm-evaporator", 1)
    }
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
      PM.ingredient("pm-heating-plating", 10),
      PM.ingredient("pipe", 3),
      PM.ingredient("pm-gold-plate", 6)
    },
    results = {
      PM.product("pm-molten-inator", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cold-inator",
    subgroup = "pm-molten-machine",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-cooling-plating", 10),
      PM.ingredient("pipe", 3),
      PM.ingredient("pm-silver-plate", 6)
    },
    results = {
      PM.product("pm-cold-inator", 1)
    }
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
      PM.ingredient("pm-cooling-framing", 4),
      PM.ingredient("pm-cold-inator", 1),
      PM.ingredient("pm-silver-plate", 8),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    results = {
      PM.product("pm-cold-inator-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-inator-2",
    subgroup = "pm-molten-machine",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-molten-framing", 4),
      PM.ingredient("pm-molten-inator", 1),
      PM.ingredient("pm-gold-plate", 8),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    results = {
      PM.product("pm-molten-inator-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cold-inator-3",
    category = "crafting-with-fluid",
    subgroup = "pm-molten-machine",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-cooling-framing", 10),
      PM.ingredient("pm-cold-inator-2", 1),
      PM.ingredient("pm-stainless-steel-alloy", 4),
      PM.ingredient("pm-liquid-silicone", 3, "fluid"),
      PM.ingredient("processing-unit", 3)
    },
    results = {
      PM.product("pm-cold-inator-3", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-inator-3",
    category = "crafting-with-fluid",
    subgroup = "pm-molten-machine",
    order = "f",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-molten-framing", 10),
      PM.ingredient("pm-molten-inator-2", 1),
      PM.ingredient("pm-stainless-steel-alloy", 4),
      PM.ingredient("pm-liquid-silicone", 3, "fluid"),
      PM.ingredient("processing-unit", 3)
    },
    results = {
      PM.product("pm-molten-inator-3", 1)
    }
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
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-lightweight-panelling", 30),
      PM.ingredient("pm-corrosion-resistant-tubing", 20),
      PM.ingredient("advanced-circuit", 10),
      PM.ingredient("assembling-machine-2", 2),
      PM.ingredient("concrete", 10),
      PM.ingredient("electric-engine-unit", 9)
    },
    results = {
      PM.product("pm-circuit-megassembler", 1)
    }
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
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-air-filter", 8),
      PM.ingredient("advanced-circuit", 5),
    },
    results = {
      PM.product("pm-atmospheric-condenser", 1)
    }
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
      PM.ingredient("pm-corrosion-resistant-tubing", 1),
      PM.ingredient("pm-stainless-steel-alloy", 2)
    },
    results =
    {
      PM.product("pm-stainless-steel-pipe", 1)
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
      PM.ingredient("pm-corrosion-resistant-tubing", 10),
      PM.ingredient("pm-stainless-steel-alloy", 5)
    },
    results =
    {
      PM.product("pm-stainless-steel-pipe-to-ground", 2)
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
      PM.ingredient("pm-glass-pane", 10),
      PM.ingredient("lab", 1),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-panelling", 12),
      PM.ingredient("pm-heavyweight-framing", 6)
    },
    results =
    {
      PM.product("pm-science-center", 1)
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
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("copper-cable", 4),
      PM.ingredient("electronic-circuit", 1)
    },
    results =
    {
      PM.product("pm-voltatic-charger", 1)
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
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("copper-cable", 4),
      PM.ingredient("electronic-circuit", 1)
    },
    results =
    {
      PM.product("pm-voltatic-discharger", 1)
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
      PM.ingredient("pm-glass-pane", 8),
      PM.ingredient("wood", 12),
      PM.ingredient("pm-silver-plate", 6),
      PM.ingredient("pm-lightweight-panelling", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-corrosion-resistant-tubing", 4)
    },
    results =
    {
      PM.product("pm-CO2-nullifer", 1)
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
      PM.ingredient("pm-heating-plating", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-brass-cog", 4),
      PM.ingredient("pm-heavyweight-panelling", 4)
    },
    results = {
      PM.product("pm-vacuum-former-2", 1)
    }
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
      PM.ingredient("pm-air-filter", 4),
      PM.ingredient("pm-lightweight-panelling", 12),
      PM.ingredient("advanced-circuit", 4),
      PM.ingredient("pm-platinum-plate", 6),
    },
    results = {
      PM.product("pm-air-filterer", 1)
    }
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
      PM.ingredient("pm-corrosion-resistant-tubing", 10),
      PM.ingredient("pm-stainless-steel-alloy", 2),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-heavyweight-panelling", 12)
    },
    results = {
      PM.product("pm-washing-plant-2", 1)
    }
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
      PM.ingredient("pm-silver-plate", 6),
      PM.ingredient("pm-glass-pane", 12),
      PM.ingredient("pm-anti-bacterial-tubing", 4),
      PM.ingredient("pm-anti-bacterial-panelling", 8),
      PM.ingredient("landfill", 4)
    },
    results = {
      PM.product("pm-greenhouse", 1)
    }
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
      PM.ingredient("pm-anti-bacterial-tubing", 8),
      PM.ingredient("pm-anti-bacterial-panelling", 6),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-glass-pane", 16),
      PM.ingredient("advanced-circuit", 4)
    },
    results = {
      PM.product("pm-factorian-bacteria-greenhouse", 1)
    }
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
      PM.ingredient("pm-lightweight-framing", 16),
      PM.ingredient("pm-anti-bacterial-panelling", 12),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-tungsten-plate", 4),
      PM.ingredient("electric-engine-unit", 2)
    },
    results =
    {
      PM.product("pm-bio-lab", 1)
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
      PM.ingredient("pm-stainless-steel-alloy", 8)
    },
    results =
    {
      PM.product("pm-stainless-steel-chest", 1)
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
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-lead-plate", 6),
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-heavyweight-panelling", 6)
    },
    results =
    {
      PM.product("pm-electric-mining-drill-2", 1)
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
      PM.ingredient("copper-plate", 2),
      PM.ingredient("pm-zinc-plate", 2),
      PM.ingredient("pm-basic-tubing", 6),
      PM.ingredient("pm-basic-panelling", 8)
    },
    results =
    {
      PM.product("pm-electrolysis-plant", 1)
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
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-heating-plating", 6),
      PM.ingredient("pm-cooling-plating", 6),
      PM.ingredient("advanced-circuit", 3),
      PM.ingredient("pm-corrosion-resistant-tubing", 14)
    },
    results =
    {
      PM.product("pm-crystallizer", 1)
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
      PM.ingredient("solar-panel", 1),
      PM.ingredient("pm-solar-cell", 4),
      PM.ingredient("pm-indium-plate", 4),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-liquid-gallium", 8, "fluid")
    },
    results =
    {
      PM.product("pm-solar-panel-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cyclotron",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      PM.ingredient("electric-engine-unit", 4),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-heavyweight-framing", 16),
      PM.ingredient("pm-vanadium-redox-battery", 3),
      PM.ingredient("pm-radiation-resistant-tubing", 4),
      PM.ingredient("pm-radiation-resistant-panelling", 8)
    },
    results =
    {
      PM.product("pm-cyclotron", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-heat-exchanger-2",
    subgroup = "pm-heat-machines",
    order = "Ab",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 40),
      PM.ingredient("pm-gold-plate", 50),
      PM.ingredient("heat-exchanger", 1)
    },
    results =
    {
      PM.product("pm-heat-exchanger-2", 1)
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
      PM.ingredient("pm-platinum-plate", 4),
      PM.ingredient("pm-air-filter", 6),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("pm-heavyweight-framing", 16),
      PM.ingredient("pm-fluid-circuit", 8)
    },
    results =
    {
      PM.product("pm-burn-inator", 1)
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
      PM.ingredient("pm-heating-plating", 10),
      PM.ingredient("pm-aluminium-plate", 8),
      PM.ingredient("copper-plate", 5)
    },
    results =
    {
      PM.product("pm-heat-pipe-1", 1)
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
      PM.ingredient("pm-radiation-resistant-panelling", 20),
      PM.ingredient("concrete", 100),
      PM.ingredient("advanced-circuit", 40),
      PM.ingredient("pm-radiation-resistant-tubing", 30),
      PM.ingredient("electric-engine-unit", 10),
      PM.ingredient("pm-cadnium-plate", 20)
    },
    results =
    {
      PM.product("pm-polonium-reactor", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-francium-ultracool-centrifugal-kabbalism",
    subgroup = "production-machine",
    order = "y",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-radiation-resistant-panelling", 10),
      PM.ingredient("pm-radiation-resistant-tubing", 20),
      PM.ingredient("electric-engine-unit", 4),
      PM.ingredient("processing-unit", 20),
      PM.ingredient("pm-thallium-plate", 16)
    },
    results =         --hi smelloy
    {
      PM.product("pm-francium-ultracool-centrifugal-kabbalism", 1)
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
      PM.ingredient("pm-evaporator", 1),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("pm-thallium-plate", 3),
      PM.ingredient("pm-heating-plating", 10)
    },
    results =
    {
      PM.product("pm-evaporator-2", 1)
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
      PM.ingredient("pm-electrolysis-plant", 1),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-zirconia", 6),
      PM.ingredient("pm-heavyweight-panelling", 5),
      PM.ingredient("pm-corrosion-resistant-tubing", 12)
    },
    results =
    {
      PM.product("pm-electrolysis-plant-2", 1)
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
      PM.ingredient("pm-corrosion-resistant-tubing", 24),
      PM.ingredient("pm-fluid-circuit", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-heavyweight-panelling", 16),
    },
    results =
    {
      PM.product("pm-leaching-field", 1)
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
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-fluid-circuit", 2),
      PM.ingredient("advanced-circuit", 4),
      PM.ingredient("pm-heavyweight-framing", 8)
    },
    results =
    {
      PM.product("pm-battery-charger", 1)
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
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-fluid-circuit", 4),
      PM.ingredient("advanced-circuit", 2),
      PM.ingredient("pm-heavyweight-framing", 8)
    },
    results =
    {
      PM.product("pm-battery-discharger", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pump",
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-d[pump]",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 4),
      PM.ingredient("engine-unit", 2),
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-heavyweight-panelling", 8),
    },
    results =
    {
      PM.product("pm-stainless-steel-pump", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-chemical-plant-2",
    subgroup = "pm-oil-machine",
    order = "e",
    enabled = false,
    energy_required = 2.5,
    ingredients = 
    {
      PM.ingredient("chemical-plant", 1),
      PM.ingredient("pm-stainless-steel-alloy", 6),
      PM.ingredient("pm-fluid-circuit", 6),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("electric-engine-unit", 2)
    },
    results = 
    {
      PM.product("pm-chemical-plant-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-transport-belt",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-polyethylene-plastic", 2),
      PM.ingredient("pm-solid-lubricant", 2),
      PM.ingredient("pm-stainless-steel-alloy", 2),
      PM.ingredient("fast-transport-belt", 1),
    },
    results = {
      PM.product("pm-advanced-transport-belt", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-underground-belt",
    enabled = false,
    energy_required = 2,
    show_amount_in_title = true,
    ingredients =
    {
      PM.ingredient("fast-underground-belt", 2),
      PM.ingredient("pm-solid-lubricant", 4),
      PM.ingredient("pm-stainless-steel-alloy", 2),
    },
    results = {
      PM.product("pm-advanced-underground-belt", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-splitter",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("fast-splitter", 1),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-solid-lubricant", 6),
      PM.ingredient("pm-mini-motor", 2)
    },
    results = {
      PM.product("pm-advanced-splitter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-heat-pipe-3",
    subgroup = "pm-heat-machines",
    order = "c",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      PM.ingredient("heat-pipe", 1),
      PM.ingredient("pm-industrial-grade-silicon-ore", 5),
      PM.ingredient("pm-stainless-steel-alloy", 10)
    },
    results =
    {
      PM.product("pm-heat-pipe-3", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-heat-furnace",
    category = "crafting-with-fluid",
    subgroup = "smelting-machine",
    order = "e",
    energy_required = 5,
    enabled = false,
    ingredients = 
    {
      PM.ingredient("processing-unit", 3),
      PM.ingredient("electric-furnace", 1),
      PM.ingredient("pm-molten-framing", 12),
      PM.ingredient("pm-tungsten-plate", 3),
      PM.ingredient("pm-liquid-silicone", 4, "fluid")
    },
    results = 
    {
      PM.product("pm-heat-furnace", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electric-furnace-2",
    category = "crafting-with-fluid",
    subgroup = "smelting-machine",
    order = "e",
    energy_required = 5,
    enabled = false,
    ingredients = 
    {
      PM.ingredient("processing-unit", 3),
      PM.ingredient("electric-furnace", 1),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-titanium-plate", 3),
      PM.ingredient("pm-liquid-silicone", 4, "fluid")
    },
    results = 
    {
      PM.product("pm-electric-furnace-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-burner",
    subgroup = "pm-heat-machines",
    order = "A",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 5),
      PM.ingredient("pm-stainless-steel-pipe", 2),
      PM.ingredient("pm-heavyweight-framing", 6)
    },
    results = {
      PM.product("pm-fluid-burner", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-concrete-wall",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    subgroup = "defensive-structure",
    order = "aa",
    ingredients =
    {
      PM.ingredient("concrete", 6),
      PM.ingredient("pm-molten-lead", 1, "fluid"),
      PM.ingredient("pm-thallium-plate", 3)
    },
    results =
    {
      PM.product("pm-concrete-wall", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-bio-wall",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    subgroup = "defensive-structure",
    order = "ab",
    ingredients =
    {
      PM.ingredient("stone-wall", 1),
      PM.ingredient("pm-bacteriaed-agar-solution", 10, "fluid"),
      PM.ingredient("pm-cellouse-pulp", 15, "fluid"),
      PM.ingredient("pm-heavyweight-framing", 4)
    },
    results =
    {
      PM.product("pm-bio-wall", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-3",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-solar-panel-2", 1),
      PM.ingredient("pm-solar-cell", 4),
      PM.ingredient("pm-indium-plate", 4),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-liquid-gallium", 8, "fluid")
    },
    results =
    {
      PM.product("pm-solar-panel-3", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-mixing-tank-1",
    subgroup = "pm-water-machine",
    enabled = false,
    energy_required = 6,
    ingredients = 
    {
      PM.ingredient("stone-brick", 8),
      PM.ingredient("pm-fluid-circuit", 3),
      PM.ingredient("pm-basic-framing", 16),
      PM.ingredient("steel-plate", 6),
      PM.ingredient("pm-brass-cog", 4)
    },
    results = 
    {
      PM.product("pm-mixing-tank-1", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-mixing-tank-2",
    subgroup = "pm-water-machine",
    enabled = false,
    energy_required = 6,
    ingredients = 
    {
      PM.ingredient("concrete", 8),
      PM.ingredient("pm-mixing-tank-1", 1),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("processing-unit", 3)
    },
    results = 
    {
      PM.product("pm-mixing-tank-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-express-inserter",
    enabled = false,
    energy_required = 1,
    category = "crafting-with-fluid",
    order = "e[long-handed-inserter]",
    ingredients = 
    {
      PM.ingredient("fast-inserter", 1),
      PM.ingredient("processing-unit", 1),
      PM.ingredient("electric-engine-unit", 2),
      PM.ingredient("pm-coolant", 2.5, "fluid")
    },
    results = 
    {
      PM.product("pm-express-inserter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-express-long-handed-inserter",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients = 
    {
      PM.ingredient("long-handed-inserter", 1),
      PM.ingredient("processing-unit", 1),
      PM.ingredient("electric-engine-unit", 2),
      PM.ingredient("pm-brass-cog", 10),
      PM.ingredient("pm-coolant", 2.5, "fluid")
    },
    results = 
    {
      PM.product("pm-express-long-handed-inserter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-express-bulk-inserter",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients = 
    {
      PM.ingredient("bulk-inserter", 1),
      PM.ingredient("processing-unit", 5),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("electric-engine-unit", 2),
      PM.ingredient("pm-coolant", 2.5, "fluid")
    },
    results = 
    {
      PM.product("pm-express-bulk-inserter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-beacon-2",
    enabled = false,
    energy_required = 15,
    category = "crafting-with-fluid",
    subgroup = "module",
    order = "b",
    ingredients = 
    {
      PM.ingredient("pm-travelling-wave-amplifier-tube", 1),
      PM.ingredient("beacon", 1),
      PM.ingredient("pm-polytetrafluoroethylene", 5),
      PM.ingredient("pm-coolant", 2, "fluid"),
      PM.ingredient("pm-heavy-lubricant", 2, "fluid")
    },
    results = 
    {
      PM.product("pm-beacon-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-hub-beacon",
    enabled = false,
    energy_required = 20,
    category = "crafting-with-fluid",
    subgroup = "module",
    order = "c",
    ingredients = 
    {
      PM.ingredient("pm-travelling-wave-amplifier-tube", 2),
      PM.ingredient("advanced-circuit", 10),
      PM.ingredient("pm-chrominum-ore", 14),
      PM.ingredient("pm-polytetrafluoroethylene", 6),
      PM.ingredient("pm-heavyweight-framing", 16),
      PM.ingredient("pm-heavy-lubricant", 2, "fluid")
    },
    results = 
    {
      PM.product("pm-hub-beacon", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-proximity-beacon",
    enabled = false,
    energy_required = 10,
    category = "crafting-with-fluid",
    subgroup = "module",
    order = "d",
    ingredients = 
    {
      PM.ingredient("pm-travelling-wave-amplifier-tube", 2),
      PM.ingredient("advanced-circuit", 14),
      PM.ingredient("pm-chrominum-ore", 10),
      PM.ingredient("pm-polytetrafluoroethylene", 6),
      PM.ingredient("pm-lightweight-framing", 12),
      PM.ingredient("pm-coolant", 2, "fluid")
    },
    results = 
    {
      PM.product("pm-proximity-beacon", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electric-boiler-1",
    enabled = false,
    energy_required = 6,
    ingredients = 
    {
      PM.ingredient("pm-fluid-circuit", 4),
      PM.ingredient("electric-engine-unit", 1),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heating-plating", 8)
    },
    results = 
    {
      PM.product("pm-electric-boiler-1", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electric-boiler-2",
    enabled = false,
    energy_required = 6,
    category = "crafting-with-fluid",
    ingredients = 
    {
      PM.ingredient("pm-electric-boiler-1", 1),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-liquid-silicone", 2, "fluid"),
      PM.ingredient("pm-molten-framing", 8)
    },
    results = 
    {
      PM.product("pm-electric-boiler-2", 1)
    }
  },
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["pipe-to-ground"].enabled = true
data.raw["recipe"]["pipe"].enabled = true

data.raw["recipe"]["centrifuge"].order = "x"

data.raw["recipe"]["transport-belt"].subgroup = "pm-belts"
data.raw["recipe"]["transport-belt"].order = "a"
data.raw["recipe"]["underground-belt"].subgroup = "pm-undergrounds"
data.raw["recipe"]["underground-belt"].order = "a"
data.raw["recipe"]["splitter"].subgroup = "pm-splitters"
data.raw["recipe"]["splitter"].order = "a"
data.raw["recipe"]["fast-transport-belt"].subgroup = "pm-belts"
data.raw["recipe"]["fast-transport-belt"].order = "b"
data.raw["recipe"]["fast-underground-belt"].subgroup = "pm-undergrounds"
data.raw["recipe"]["fast-underground-belt"].order = "b"
data.raw["recipe"]["fast-splitter"].subgroup = "pm-splitters"
data.raw["recipe"]["fast-splitter"].order = "b"
data.raw["recipe"]["express-transport-belt"].subgroup = "pm-belts"
data.raw["recipe"]["express-transport-belt"].order = "d"
data.raw["recipe"]["express-underground-belt"].subgroup = "pm-undergrounds"
data.raw["recipe"]["express-underground-belt"].order = "d"
data.raw["recipe"]["express-splitter"].subgroup = "pm-splitters"
data.raw["recipe"]["express-splitter"].order = "d"



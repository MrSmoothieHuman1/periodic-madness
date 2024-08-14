data:extend({

  {
    type = "recipe",
    name = "pm-hydrogen-fuel",
    energy_required = 1,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-oxygen-gas", amount = 5 },
      { "iron-plate",   2 }
    },
    result = "pm-hydrogen-fuel",
  },
  {
    type = "recipe",
    name = "pm-coal-crushing",
    subgroup = "pm-processing",
    category = "pm-crushing",
    ingredients = {{"coal", 2}},
    energy_required = 2,
    result = "pm-carbon",
    result_count = 10
  },
  {
    type = "recipe",
    name = "pm-stone-crushing",
    energy_required = 2,
    ingredients = { { "stone", 4 } },
    icon_size = 64,
    category = "pm-crushing",
    subgroup = "pm-glassing",
    order = "a",
    icon = "__periodic-madness__/graphics/icons/recipes/stone-crushing.png",
    results =
    {
      { "pm-sand", 8 },
    }
  },

  {
    type = "recipe",
    name = "pm-circuit-breadboard",
    energy_required = 1,
    subgroup = "pm-circuits",
    order = "a",
    ingredients =
    {
      { "pm-nickel-plate", 2 },
    },
    result = "pm-basic-breadboard",
    result_count = 2
  },
  {
    type = "recipe",
    name = "pm-basic-integrated-circuits",
    energy_required = 0.25,
    subgroup = "pm-circuits",
    order = "b",
    show_amount_in_title = true,
    ingredients =
    {
      { "iron-plate",   1 },
      { "copper-cable", 1 },
    },
    result = "pm-basic-integrated-circuits",
    result_count = 3
  },

  -- green circuits are order "c" for pm-circuits

  {
    type = "recipe",
    name = "pm-fluid-circuit-breadboard",
    energy_required = 1.5,
    subgroup = "pm-circuits",
    order = "d",
    enabled = false,
    ingredients =
    {
      { "pm-basic-breadboard",  1 },
      { "pm-vulcanised-rubber", 2 }
    },
    results =
    {
      { "pm-fluid-breadboard", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-transistors",
    energy_required = 0.3,
    subgroup = "pm-circuits",
    order = "e",
    enabled = false,
    ingredients =
    {
      { "pm-basic-wiring", 2 },
      { "pm-carbon",       8 },
    },
    result = "pm-transistors",
    result_count = 2
  },
  {
    type = "recipe",
    name = "pm-fluid-integrated-circuits",
    energy_required = 0.5,
    subgroup = "pm-circuits",
    order = "f",
    show_amount_in_title = true,
    enabled = false,
    ingredients =
    {
      { "pm-silver-plate", 1 },
      { "pm-gold-wire",    2 }
    },
    results =
    {
      { "pm-fluid-integrated-circuits", 3 }
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-circuit",
    energy_required = 1.5,
    enabled = false,
    subgroup = "pm-circuits",
    order = "g",
    ingredients =
    {
      { "pm-fluid-breadboard",          1 },
      { "pm-fluid-integrated-circuits", 3 },
      { "pm-transistors",               5 },
      { "pm-gold-wire",                 3 }
    },
    results =
    {
      { "pm-fluid-circuit", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-circuit-breadboard",
    energy_required = 3,
    subgroup = "pm-circuits",
    order = "h",
    enabled = false,
    ingredients =
    {
      { "pm-platinum-plate",   2 },
      { "pm-palladium-plate",  2 },
      { "pm-fluid-breadboard", 1 },
    },
    result = "pm-advanced-circuit-breadboard",
  },
  {
    type = "recipe",
    name = "pm-advanced-integrated-circuits",
    energy_required = 0.5,
    subgroup = "pm-circuits",
    order = "i",
    show_amount_in_title = true,
    enabled = false,
    ingredients =
    {
      { "pm-polyethylene-plastic", 1 },
      { "pm-gold-wire",            2 },
    },
    result = "pm-advanced-integrated-circuits",
    result_count = 3
  },

  --red circuits are order "j" in pm-circuits

  {
    type = "recipe",
    name = "pm-processing-breadboard",
    energy_required = 6,
    category = "crafting-with-fluid",
    subgroup = "pm-circuits",
    order = "k",
    enabled = false,
    ingredients =
    {
      { "pm-indium-plate",                3 },
      { type = "fluid",                   name = "pm-ferric-chloride", amount = 10 },
      { "pm-advanced-circuit-breadboard", 1 },
      { "pm-cobalt-blue",                 6 }
    },
    result = "pm-processing-breadboard",
  },
  {
    type = "recipe",
    name = "pm-processing-integrated-circuits",
    energy_required = 1,
    subgroup = "pm-circuits",
    order = "l",
    enabled = false,
    ingredients =
    {
      { "pm-titanium-plate",   4 },
      { "pm-gallium-arsenide", 1 },
      { "pm-indium-wire",      3 },
    },
    results =
    {
      { "pm-processing-integrated-circuits", 3 }
    }
  },
  {
    type = "recipe",
    name = "pm-semiconductor",
    enabled = false,
    energy_required = 3,
    category = "crafting-with-fluid",
    subgroup = "pm-circuits",
    order = "n",
    ingredients =
    {
      { "pm-advanced-integrated-circuits", 3 },
      { "pm-gold-plating",                 2 },
      { "pm-thallium-plate",               3 },
      { type = "fluid",                    name = "pm-phosphoric-acid", amount = 4 }
    },
    results =
    {
      { "pm-semiconductor", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-indium-wire",
    enabled = false,
    subgroup = "pm-refined-items",
    ingredients =
    {
      { "pm-indium-plate", 2 }
    },
    results =
    {
      { "pm-indium-wire", 2 }
    }
  },

  --processing units are order "o"

  {
    type = "recipe",
    name = "pm-science-bottle",
    energy_required = 3,
    subgroup = "pm-glassing",
    order = "c",
    ingredients = { { "pm-glass-pane", 2 } },
    result = "pm-science-bottle"
  },
  {
    type = "recipe",
    name = "pm-air-filter",
    show_amount_in_title = true,
    ingredients =
    {
      { "pm-carbon",  50 },
      { "iron-plate", 2 },
    },
    result = "pm-air-filter",
    result_count = 2,
  },
  {
    type = "recipe",
    name = "pm-transition-metal-clearing",
    icon_size = 64,
    energy_required = 6.4,
    icon = "__periodic-madness__/graphics/icons/recipes/transition-metals-cleared.png",
    subgroup = "pm-tm-tm",
    order = "a",
    ingredients = { { "pm-transition-metals-ore", 5 } },
    results =
    {
      {
        name = "iron-ore",
        probability = 0.2,
        amount = 5,
      },
      {
        name = "pm-nickel-ore",
        probability = 0.2,
        amount = 5,
      },
      {
        name = "pm-zinc-ore",
        probability = 0.2,
        amount = 5,
      },
      {
        name = "copper-ore",
        probability = 0.2,
        amount = 5,
      }
    }
  },
  {
    type = "recipe",
    name = "pm-transition-metal-sea-washing",
    energy_required = 3.2,
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/transition-metals-seawashed.png",
    category = "crafting-with-fluid",
    subgroup = "pm-tm-tm",
    order = "b",
    ingredients =
    {
      { "pm-transition-metals-ore", 10 },
      { type = "fluid",             name = "pm-seawater", amount = 100 },
    },
    results =
    {
      {
        name = "iron-ore",
        probability = 0.4,
        amount = 5,
      },
      {
        name = "pm-nickel-ore",
        probability = 0.4,
        amount = 5,
      },
      {
        name = "pm-zinc-ore",
        probability = 0.4,
        amount = 5,
      },
      {
        name = "copper-ore",
        probability = 0.4,
        amount = 5,
      },
    }
  },
  {
    type = "recipe",
    name = "pm-transition-metal-washing",
    energy_required = 3.2,
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/transition-metals-washed.png",
    category = "crafting-with-fluid",
    subgroup = "pm-tm-tm",
    order = "c",
    enabled = false,
    ingredients =
    {
      { "pm-transition-metals-ore", 15 },
      { type = "fluid",             name = "water", amount = 100 },
    },
    results =
    {
      {
        name = "iron-ore",
        probability = 0.5,
        amount = 5,
      },
      {
        name = "pm-nickel-ore",
        probability = 0.5,
        amount = 5,
      },
      {
        name = "pm-zinc-ore",
        probability = 0.5,
        amount = 5,
      },
      {
        name = "copper-ore",
        probability = 0.5,
        amount = 5,
      },
      {
        name = "pm-manganese-ore",
        probability = 0.5,
        amount = 5,
      },
    }
  },
  {
    type = "recipe",
    name = "pm-solder",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      { "pm-solder-wire", 4 },
      { "pm-solder-case", 1 }
    },
    results =
    {
      { "pm-solder", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-solder-case",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-polyethylene-plastic", 2 },
      { "pm-silver-plate",         1 }
    },
    results =
    {
      { "pm-solder-case", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-water-acifying",
    subgroup = "pm-acid-crafting",
    category = "pm-acids",
    enabled = false,
    crafting_machine_tint =
    {
      primary = { r = 0.98, g = 0.87, b = 0.09, a = 1 }, --main visible colour
      secondary = { r = 0, g = 0.4, b = 0, a = 1 }, --background visible colour
      tertiary = { r = 0.76, g = 0.89, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "sulfur", amount = 5 },
      { type = "fluid", name = "water",  amount = 50 },
    },
    hide_from_player_crafting = true,
    results =
    {
      { type = "fluid", name = "pm-acidic-water", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-alternative-science-pack",
    subgroup = "science-pack",
    order = "b",
    energy_required = 6,
    ingredients =
    {
      { "automation-science-pack", 1 },
      { "steel-plate",             2 }
    },
    enabled = false,
    results =
    {
      { "pm-alternative-science-pack", 1 },
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-advanced-transition-metal-science-pack",
    subgroup = "science-pack",
    order = "c",
    energy_required = 6,
    ingredients =
    {
      { "pm-titanium-ore",   8 },
      { "pm-tungsten-ore",   8 },
      { "pm-silver-plate",   15 },
      { "copper-plate",      14 + 1 },
      { "pm-science-bottle", 1 }
    },
    enabled = false,
    results =
    {
      { "pm-advanced-advanced-transition-metal-science-pack", 1 },
    }
  },
  {
    type = "recipe",
    name = "pm-post-transition-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "e",
    energy_required = 6,
    ingredients =
    {
      { "pm-aluminium-plate", 10 },
      { "pm-tin-plate",       4 + 1 },
      { "pm-lead-plate",      10 },
      { "pm-thallium-ore",    3 },
      { "pm-bismuth-ore",     8 },
      { type = "fluid",       name = "pm-liquid-gallium", amount = 40 },
      { "pm-science-bottle",  1 }
    },
    enabled = false,
    results =
    {
      { "pm-post-transition-metal-science-pack", 1 },
    }
  },
  {
    type = "recipe",
    name = "pm-alkali-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "fa",
    energy_required = 6,
    ingredients =
    {
      { type = "fluid",      name = "pm-caesium", amount = 5 },
      { "pm-potassium",      12 },
      { "pm-sodium",         20 },
      { "pm-lithium-ore",    10 },
      { "pm-rubidium",       2 },
      { "pm-science-bottle", 1 }
    },
    enabled = false,
    results =
    {
      { "pm-alkali-metal-science-pack", 1 },
    }
  },
  {
    type = "recipe",
    name = "pm-metalloid-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "g",
    energy_required = 6,
    ingredients =
    {
      { "pm-antimony-ore",    6 },
      { "pm-arsenic-ore",     6 },
      { type = "fluid", name = "pm-boron", amount = 16 },
      { "pm-tellurium-plate", 10 },
      { "pm-science-bottle",  1 }
    },
    enabled = false,
    results =
    {
      { "pm-metalloid-science-pack", 1 },
    }
  },

  {
    type = "recipe",
    name = "pm-wood-stripping",
    energy_required = 1,
    enabled = false,
    subgroup = "pm-greenhousing-rnm",
    order = "d",
    ingredients =
    {
      { "wood", 1 }
    },
    results =
    {
      { "pm-wood-strips", 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-wood-strip-burning",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/wood-strip-burning.png",
    enabled = false,
    energy_required = 3,
    category = "smelting",
    subgroup = "pm-processing",
    order = "A",
    ingredients =
    {
      { "pm-wood-strips", 10 }
    },
    results =
    {
      { "pm-coke", 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-coal-burning",
    enabled = false,
    energy_required = 3,
    category = "pm-alloying",
    subgroup = "pm-processing",
    order = "Aa",
    ingredients =
    {
      { "coal", 8 },
    },
    results =
    {
      { "pm-coke", 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-resin-forming",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-forming.png",
    energy_required = 2,
    subgroup = "pm-resin-processing",
    category = "crafting-with-fluid",
    order = "b",
    enabled = false,
    ingredients =
    {
      { type = "fluid",   name = "water", amount = 100 },
      { "pm-wood-strips", 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-resin", amount = 50 }
    }
  },
  {
    type = "recipe",
    name = "pm-resin-to-rubber-resin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-to-rubber-resin.png",
    energy_required = 1,
    subgroup = "pm-resin-processing",
    category = "pm-acids",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-resin", amount = 50 },
      { "pm-carbon",    10 }
    },
    results =
    {
      { type = "fluid", name = "pm-rubber-resin", amount = 50 }
    }

  },
  {
    type = "recipe",
    name = "pm-resin-to-pheonlic-resin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-to-pheonlic-resin.png",
    energy_required = 1,
    subgroup = "pm-resin-processing",
    category = "pm-acids",
    enabled = false,
    ingredients =
    {
      { type = "fluid",    name = "pm-resin", amount = 50 },
      { "pm-glass-fibers", 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-pheonlic-resin", amount = 50 }
    }

  },
  {
    type = "recipe",
    name = "pm-rubber-resin-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-cooling.png",
    energy_required = 2,
    subgroup = "pm-resin-processing",
    category = "pm-molding",
    order = "e",
    enabled = false,
    always_show_products = true,
    ingredients =
    {
      { type = "fluid", name = "pm-rubber-resin", amount = 50 }
    },
    results =
    {
      { "pm-rubber", 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-rubber-vulcanisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vulcanised-rubber.png",
    energy_required = 3,
    enabled = false,
    subgroup = "pm-resin-processing",
    category = "pm-acids",
    order = "f",
    ingredients =
    {
      { "pm-rubber", 5 },
      { "sulfur",    2 }
    },
    results =
    {
      { "pm-vulcanised-rubber", 5 },
      { type = "fluid",         name = "pm-acidic-water", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "basic-motor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-motor.png",
    energy_required = 1,
    ingredients =
    {
      { "iron-stick",      1 },
      { "pm-nickel-plate", 2 }
    },
    result = "pm-basic-motor"
  },
  {
    type = "recipe",
    name = "pm-mini-motor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/mini-motor.png",
    energy_required = 2,
    enabled = false,
    show_amount_in_title = true,
    ingredients =
    {
      { "copper-cable",    1 },
      { "iron-stick",      1 },
      { "pm-nickel-plate", 2 }
    },
    results =
    {
      { "pm-mini-motor", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-cog",
    energy_required = 1,
    enabled = false,
    ingredients = { { "pm-brass-plate", 2 } },
    result = "pm-brass-cog"
  },
  {
    type = "recipe",
    name = "pm-gold-wire",
    energy_required = 0.4 + 0.1,
    show_amount_in_title = true,
    enabled = false,
    ingredients = { { "pm-gold-plate", 1 } },
    results =
    {
      { "pm-gold-wire", 2 }
    }
  },

  {
    type = "recipe",
    name = "pm-glass-fibers",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-fiberisation.png",
    subgroup = "pm-glassing",
    order = "d",
    enabled = false,
    energy_required = 1,
    show_amount_in_title = true,
    ingredients =
    {
      { "pm-glass-pane", 1 }
    },
    results =
    {
      { "pm-glass-fibers", 5 },

      {
        name = "pm-glass-shards",
        probability = 0.5,
        amount = 2,
      },
    }
  },
  {
    type = "recipe",
    name = "pm-fiberoptic-cable",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    ingredients =
    {
      { "pm-gold-wire",    2 },
      { "pm-glass-fibers", 20 },
      { type = "fluid",    name = "pm-pheonlic-resin", amount = 10 }
    },
    results =
    {
      { "pm-fiberoptic-cable", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-solder-wire",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      { "pm-solder-plate", 1 }
    },
    results =
    {
      { "pm-solder-wire", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-solar-cell",
    energy_required = 4.9 + 0.1,
    show_amount_in_title = true,
    enabled = false,
    ingredients =
    {
      { "pm-cadnium-plate", 2 },
      { "pm-glass-pane",    6 - 1 },
      { "pm-gold-wire",     3 }
    },
    results =
    {
      { "pm-solar-cell", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-gallium-nitride",
    energy_required = (5 / 0.75) / 2,
    category = "chemistry",
    subgroup = "pm-modules",
    order = "b",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-ammonia-gas",    amount = 4 + 1 },
      { type = "fluid", name = "pm-liquid-gallium", amount = 10 }
    },
    results =
    {
      { "pm-gallium-nitride", 6 }
    }
  },
  {
    type = "recipe",
    name = "pm-gallium-arsenide",
    energy_required = (5 / 0.75) / 2,
    category = "pm-coldening",
    subgroup = "pm-modules",
    order = "fa",
    enabled = false,
    ingredients =
    {
      {"pm-arsenic-ore", 4},
      {type = "fluid", name = "pm-liquid-gallium", amount = 10}
    },
    results =
    {
      {"pm-gallium-arsenide", 6}
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-gallium-indium-phosphide",
    energy_required = (5 / 0.75) / 2,
    category = "pm-crystallisation",
    subgroup = "pm-modules",
    order = "ka",
    enabled = false,
    main_product = "pm-aluminium-gallium-indium-phosphide",
    ingredients =
    {
      { "pm-gallium-arsenide", 1 },
      { type = "fluid",        name = "pm-phosphoric-acid", amount = 10 },
      { "pm-indium-plate",     5 },
      { "pm-aluminium-plate",  5 }
    },
    results =
    {
      { "pm-aluminium-gallium-indium-phosphide", 6 },
      {
        name = "pm-gallium-arsenide",
        amount = 1,
        probability = 0.6
      }
    }
  },
  {
    type = "recipe",
    name = "pm-module-speed-lights",
    energy_required = 4 + 1,
    subgroup = "pm-modules",
    order = "c",
    enabled = false,
    ingredients =
    {
      { "pm-glass-pane",      6 },
      { "pm-basic-wiring",    20 },
      { "pm-gallium-nitride", 3 },
    },
    results =
    {
      { "pm-module-speed-light", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-module-efficiency-lights",
    energy_required = 4 + 1,
    enabled = false,
    subgroup = "pm-modules",
    order = "g",
    ingredients =
    {
      { "pm-glass-pane",       6 },
      { "pm-basic-wiring",     20 },
      { "pm-gallium-arsenide", 3 },
    },
    results =
    {
      { "pm-module-efficiency-light", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-module-productivity-lights",
    energy_required = 4 + 1,
    enabled = false,
    subgroup = "pm-modules",
    order = "l",
    ingredients =
    {
      { "pm-glass-pane",                         6 },
      { "pm-basic-wiring",                       20 },
      { "pm-aluminium-gallium-indium-phosphide", 3 },
    },
    results =
    {
      { "pm-module-productivity-light", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-module-case",
    energy_required = 4 + 1,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-modules",
    order = "a",
    ingredients =
    {
      { type = "fluid",             name = "pm-helium-gas", amount = 40 },
      { "pm-platinum-plate",        4 },
      { "pm-vulcanised-rubber",     2 },
      { "pm-lightweight-panelling", 6 },
    },
    results =
    {
      { "pm-module-case", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-water-vapour-condensing",
    subgroup = "pm-acid-crafting",
    category = "pm-acids",
    allow_decomposition = false,
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { type = "fluid", name = "pm-water-vapour", amount = 5 }
    },
    results =
    {
      { type = "fluid", name = "water", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-blank-bio-module",
    subgroup = "science-pack",
    order = "a",
    energy_required = 7.4 + 0.1,
    enabled = false,
    ingredients =
    {
      { "pm-anti-bacterial-panelling", 8 },
      { "advanced-circuit",            6 },
      { "pm-basic-wiring",             14 + 1 },
    },
    results =
    {
      { "pm-blank-bio-module", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-agility-bio-module",
    energy_required = 7.4 + 0.1,
    category = "chemistry",
    subgroup = "pm-acetonitrile-rnm",
    order = "x",
    enabled = false,
    ingredients =
    {
      { "pm-blank-bio-module", 1 },
      { type = "fluid",        name = "pm-phosphoramidite", amount = 4 + 1 },
      { type = "fluid",        name = "pm-gene-base",       amount = 20 }
    },
    results =
    {
      { "pm-agility-bio-module", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-health-bio-module",
    energy_required = 7.4 + 0.1,
    category = "chemistry",
    subgroup = "pm-CISD2-rnm",
    order = "x",
    enabled = false,
    ingredients =
    {
      { "pm-blank-bio-module", 1 },
      { type = "fluid",        name = "pm-CISD2",     amount = 4 + 1 },
      { type = "fluid",        name = "pm-gene-base", amount = 20 }
    },
    results =
    {
      { "pm-health-bio-module", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-strength-bio-module",
    energy_required = 7.4 + 0.1,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "x",
    enabled = false,
    ingredients =
    {
      { "pm-blank-bio-module", 1 },
      { type = "fluid",        name = "pm-legendary-myostatin", amount = 4 + 1 },
      { type = "fluid",        name = "pm-gene-base",           amount = 20 }
    },
    results =
    {
      { "pm-strength-bio-module", 1 }
    }
  },

  {
    type = "recipe",
    name = "pm-trace-acetonitrile",
    energy_required = 8,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-acetonitrile-rnm",
    main_product = "pm-trace-acetonitrile",
    order = "a",
    ingredients =
    {
      { type = "fluid",          name = "pm-ammonia-gas", amount = 20 },
      { "pm-palladium-catalyst", 1 },
    },
    results =
    {
      { "pm-catalyst-container", 1 },
      { type = "fluid",          name = "pm-trace-acetonitrile", amount = 10 },
    }
  },
  {
    type = "recipe",
    name = "pm-trace-acetonitrile-looping",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/trace-acetonitrile-looping.png",
    energy_required = 24,
    category = "pm-washing",
    subgroup = "pm-acetonitrile-rnm",
    order = "b",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-trace-acetonitrile", amount = 40 },
    },
    results =
    {
      { type = "fluid", name = "pm-acetonitrile",       amount = 10 },
      { type = "fluid", name = "pm-trace-acetonitrile", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "pm-acetonitrile-to-phosphoramidite",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-acetonitrile-rnm",
    order = "c",
    main_product = "pm-phosphoramidite",
    ingredients =
    {
      { type = "fluid",      name = "pm-acetonitrile", amount = 10 },
      { type = "fluid",      name = "pm-oxygen-gas",   amount = 20 },
      { "pm-red-phosphorus", 6 },
      { "pm-carbon",         6 }
    },
    results =
    {
      { type = "fluid", name = "pm-phosphoramidite",    amount = 2.4 + 0.1 },
      { type = "fluid", name = "pm-trace-acetonitrile", amount_min = 2,    amount_max = 8 }
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-structuring",
    energy_required = 12,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "a",
    main_product = "pm-common-myostatin",
    ingredients =
    {
      { type = "fluid",               name = "pm-benzene", amount = 40 + 10 },
      { "pm-vanadium-oxide-catalyst", 1 }
    },
    results =
    {
      { type = "fluid",          name = "pm-common-myostatin", amount = 10 },
      { "pm-catalyst-container", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-fixing",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "b",
    ingredients =
    {
      { type = "fluid", name = "pm-broken-myostatin", amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-benzene", amount = 40 }
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-oxygenation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/myostatin-oxygenation.png",
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "c",
    ingredients =
    {
      { type = "fluid", name = "pm-common-myostatin", amount = 4 + 1 },
      { type = "fluid", name = "pm-oxygen-gas",       amount = 24 + 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-rare-myostatin", amount = 4 + 1, probability = 0.4 + 0.1 },
      {
        type = "fluid",
        name = "pm-broken-myostatin",
        amount = 4 + 1,
        probability = 0.4 + 0.1
      }
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-nitrogenation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/myostatin-nitrogenation.png",
    energy_required = 6,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "d",
    ingredients =
    {
      { type = "fluid", name = "pm-rare-myostatin", amount = 4 + 1 },
      { type = "fluid", name = "pm-nitrogen-gas",   amount = 24 + 1 },
    },
    results =
    {
      { type = "fluid", name = "pm-legendary-myostatin", amount = 4 + 1, probability = 0.4 + 0.1 },
      {
        type = "fluid",
        name = "pm-broken-myostatin",
        amount = 4 + 1,
        probability = 0.4 + 0.1
      }
    }
  },
  {
    type = "recipe",
    name = "pm-iron-sulfur-clustering",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    subgroup = "pm-CISD2-rnm",
    order = "a",
    main_product = "pm-iron-sulfur-cluster",
    ingredients =
    {
      { "iron-plate",   4 + 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 }
    },
    results =
    {
      { "pm-iron-sulfur-cluster", 1 },
      {
        name = "sulfur",
        amount_min = 1,
        amount_max = 3,
        probability = 0.24 + 0.01
      }
    }
  },
  {
    type = "recipe",
    name = "pm-CISD2",
    enabled = false,
    category = "chemistry",
    energy_required = 4,
    subgroup = "pm-CISD2-rnm",
    order = "b",
    main_product = "pm-CISD2",
    ingredients =
    {
      { "pm-iron-sulfur-cluster", 2 },
      { "pm-zinc-plate",          8 },
      { type = "fluid",           name = "pm-benzene", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-CISD2", amount = 4 + 1 },
      {
        name = "pm-zinc-plate",
        amount_min = 2,
        amount_max = 4,
        probability = 0.2,
      },
      {
        name = "pm-ferrum",
        amount = 3,
        probability = 0.4
      }
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-lube-electric-engine-unit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/heavy-lube-electric-engine.png",
    energy_required = 8,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      { type = "fluid",      name = "pm-heavy-lubricant", amount = 10 },
      { "pm-basic-wiring",   10 },
      { "engine-unit",       1 },
      { "advanced-circuit",  2 },
      { "pm-kasethal-plate", 4 }
    },
    results =
    {
      { "electric-engine-unit", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-basic-fluid-circuit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/green-circuit-dipping.png",
    enabled = false,
    energy_required = 2.24 + 0.01,
    category = "crafting-with-fluid",
    subgroup = "pm-circuits",
    order = "fa",
    ingredients =
    {
      { "pm-gold-wire",       3 },
      { "electronic-circuit", 4 + 1 },
      { type = "fluid",       name = "pm-resin", amount = 20 + 20 + 10 }
    },
    results =
    {
      {
        name = "pm-fluid-circuit",
        probability = 0.4,
        amount_min = 1,
        amount_max = 3
      },
      {
        name = "electronic-circuit",
        probability = 0.7,
        amount_min = 1,
        amount_max = 3,
      },
      {
        name = "copper-cable",
        probability = 0.2,
        amount = 2
      }
    }

  },
  {
    type = "recipe",
    name = "pm-flux-container",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-refined-items",
    ingredients =
    {
      { "pm-polyethylene-plastic", 4 },
    },
    result = "pm-flux-container"
  },
  {
    type = "recipe",
    name = "pm-filled-flux-container",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-refined-items",
    ingredients =
    {
      { "pm-flux-container", 1 },
      { "pm-sand",           8 },
      { "pm-coke",           2 },
      { "pm-flourine",       4 }
    },
    result = "pm-filled-flux-container"
  },
  {
    type = "recipe",
    name = "pm-ethylene-glycol",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    main_product = "pm-ethylene-glycol",
    ingredients =
    {
      { type = "fluid",          name = "pm-ethylene-gas", amount = 12 },
      { type = "fluid",          name = "water",           amount = 24 },
      { "pm-palladium-catalyst", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-ethylene-glycol", amount = 10 },
    }
  },
  {
    type = "recipe",
    name = "pm-coolant",
    category = "chemistry",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-ethylene-glycol", amount = 10 },
      { type = "fluid", name = "pm-nitrogen-gas",    amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-coolant", amount = 10 + 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-equipment-2",
    energy_required = 20,
    enabled = false,
    subgroup = "equipment",
    order = "b",
    ingredients =
    {
      { "pm-gallium-arsenide",      2 },
      { "solar-panel-equipment",    1 },
      { "pm-lightweight-panelling", 10 },
      { "processing-unit",          8 }
    },
    results =
    {
      { "pm-solar-panel-equipment-2", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-speed-module-1-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/speed-module-1-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "d",
    ingredients =
    {
      { "speed-module", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.9
      },
      {
        name = "pm-module-speed-light",
        amount = 1,
        probability = 0.9
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.8
      }
    }
  },
  {
    type = "recipe",
    name = "pm-speed-module-2-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/speed-module-2-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "e",
    ingredients =
    {
      { "speed-module", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.8
      },
      {
        name = "pm-module-speed-light",
        amount = 1,
        probability = 0.8
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.7
      },
      {
        name = "pm-fluid-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.7
      },
    }
  },
  {
    type = "recipe",
    name = "pm-efficiency-module-1-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/efficiency-module-1-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "h",
    ingredients =
    {
      { "effectivity-module", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.8
      },
      {
        name = "pm-module-efficiency-light",
        amount = 1,
        probability = 0.8
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.7
      }
    }
  },
  {
    type = "recipe",
    name = "pm-efficiency-module-2-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/efficiency-module-2-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "i",
    ingredients =
    {
      { "effectivity-module-2", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.7
      },
      {
        name = "pm-module-efficiency-light",
        amount = 1,
        probability = 0.7
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.6
      },
      {
        name = "pm-fluid-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.6
      },
    }
  },
  {
    type = "recipe",
    name = "pm-productivity-module-1-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/productivity-module-1-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "m",
    ingredients =
    {
      { "productivity-module", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.8
      },
      {
        name = "pm-module-speed-light",
        amount = 1,
        probability = 0.8
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.7
      }
    }
  },
  {
    type = "recipe",
    name = "pm-productivity-module-2-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/productivity-module-2-crushing.png",
    enabled = false,
    energy_required = 15 / 2,
    category = "pm-crushing",
    subgroup = "pm-modules",
    order = "n",
    ingredients =
    {
      { "productivity-module-2", 1 }
    },
    results =
    {
      {
        name = "pm-module-case",
        amount = 1,
        probability = 0.7
      },
      {
        name = "pm-module-speed-light",
        amount = 1,
        probability = 0.7
      },
      {
        name = "electronic-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.6
      },
      {
        name = "pm-fluid-circuit",
        amount_min = 2,
        amount_max = 4,
        probability = 0.6
      },
    }
  },
  {
    type = "recipe",
    name = "pm-sand-creosote",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    subgroup = "pm-zirconium-tm",
    order = "e",
    ingredients =
    {
      { type = "fluid", name = "pm-seawater", amount = 100 },
      { "pm-sand",      10 },
      { "wood",         4 }
    },
    results =
    {
      { type = "fluid", name = "pm-creosote", amount = 40 + 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-bitumen-creosote",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-zirconium-tm",
    order = "f",
    energy_required = 1,
    ingredients =
    {
      { type = "fluid", name = "pm-seawater", amount = 100 },
      { "pm-bitumen",   5 },
      { "wood",         2 }
    },
    results =
    {
      { type = "fluid", name = "pm-creosote", amount = 40 + 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-crucible",
    enabled = false,
    energy_required = 2.25,
    category = "crafting-with-fluid",
    subgroup = "pm-refined-items",
    order = "b",
    ingredients =
    {
      { "pm-aluminium-plate", 2 },
      { "pm-zirconia",        2 },
      { type = "fluid",       name = "pm-creosote", amount = 10 }
    },
    results =
    {
      { "pm-crucible", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-hydrogen-gas-ionizing",
    energy_required = 10,
    enabled = false,
    category = "pm-electrolysis",
    subgroup = "pm-polonium-ptm",
    order = "a",
    ingredients =
    {
      { type = "fluid", name = "pm-hydrogen-gas", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-proton-beam", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "pm-zirconium-pants",
    energy_required = 30,
    enabled = false,
    hidden = true,
    subgroup = "pm-zirconium-tm",
    order = "x",
    ingredients =
    {
      { "pm-zirconium-ore",        10 },
      { "pm-zirconia",             10 },
      { "pm-polyethylene-plastic", 2 }
    },
    results =
    {
      { "pm-zirconium-pants", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-zinc-aluminium-catalyst",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-plastics",
    order = "f",
    ingredients =
    {
      { "copper-plate",          2 },
      { "pm-zinc-plate",         2 },
      { "pm-aluminium-plate",    2 },
      { "pm-catalyst-container", 2 }
    },
    results =
    {
      { "pm-copper-zinc-aluminium-catalyst", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-methanol",
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "g",
    main_product = "pm-methanol",
    ingredients =
    {
      { type = "fluid",                      name = "pm-carbon-monoxide", amount = 10 },
      { type = "fluid",                      name = "pm-hydrogen-gas",    amount = 30 },
      { "pm-copper-zinc-aluminium-catalyst", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-methanol", amount = 10 },
      { type = "fluid", name = "water",       amount = 10 },
      {
        name = "pm-catalyst-container",
        amount = 1,
        probability = 0.98
      }
    }
  },
  {
    type = "recipe",
    name = "pm-methyl-methacrylate",
    energy_required = 6,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "h",
    main_product = "pm-methyl-methacrylate",
    ingredients =
    {
      { type = "fluid",          name = "pm-methanol",   amount = 20 },
      { type = "fluid",          name = "sulfuric-acid", amount = 4 + 1 },
      { "pm-palladium-catalyst", 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-methyl-methacrylate", amount = 15 },
      {
        name = "pm-catalyst-container",
        amount = 1,
        probability = 0.98
      }
    }
  },
  {
    type = "recipe",
    name = "pm-polymethyl-methacrylate-plastic",
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "i",
    ingredients =
    {
      { "pm-plastic-pellets", 5 },
      { type = "fluid",       name = "pm-methyl-methacrylate", amount = 20 },
    },
    results =
    {
      { "pm-polymethyl-methacrylate", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-bromide-polymethyl-methacrylate-plastic",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/polymethyl-methacrylate.png",
        icon_size = 128,
        scale = 0.5
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/vinyl-bromide.png",
        icon_size = 64,
        scale = 1.25
      },
    },
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "ia",
    main_product = "pm-polymethyl-methacrylate",
    ingredients =
    {
      { "pm-plastic-pellets", 8 },
      { type = "fluid",       name = "pm-methyl-methacrylate", amount = 25 },
      { type = "fluid",       name = "pm-vinyl-bromide",       amount = 10 }
    },
    results =
    {
      { "pm-polymethyl-methacrylate", 4 },
      { type = "fluid",               name = "pm-hydrogen-gas", amount = 5, probability = 0.5 }
    }
  },

  {
    type = "recipe",
    name = "pm-chloronated-solution",
    enabled = false,
    energy_reqiured = 1,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "j",
    main_product = "pm-chloronated-solution",
    ingredients =
    {
      { type = "fluid", name = "pm-methyl-chloride", amount = 10 },
      { type = "fluid", name = "pm-chlorine",        amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-hydrochloric-acid",    amount_min = 2, amount_max = 5 },
      { type = "fluid", name = "pm-chloronated-solution", amount = 12 }
    }
  },
  {
    type = "recipe",
    name = "pm-chloronated-solution-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chloronated-solution-seperation.png",
    enabled = false,
    energy_required = 2,
    category = "pm-electrolysis",
    subgroup = "pm-plastics",
    order = "k",
    ingredients =
    {
      { type = "fluid",               name = "pm-chloronated-solution", amount = 6 },
      { "pm-vanadium-oxide-catalyst", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-chloroform",           amount_min = 6, amount_max = 8 },
      { type = "fluid", name = "pm-carbon-tetrachloride", amount_min = 2, amount_max = 6 },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount_max = 2
      }
    }
  },
  {
    type = "recipe",
    name = "pm-tetrafluoroethylene",
    energy_required = 6,
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-plastics",
    order = "k",
    main_product = "pm-tetrafluoroethylene",
    ingredients =
    {
      { type = "fluid", name = "pm-chloroform",        amount = 24 },
      { type = "fluid", name = "pm-hydroflouric-acid", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-tetrafluoroethylene", amount = 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-polytetrafluoroethylene-plastic",
    energy_required = 9,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "l",
    ingredients =
    {
      { type = "fluid", name = "pm-tetrafluoroethylene", amount = 5 },
      { type = "fluid", name = "pm-vinyl-bromide",       amount = 10 }
    },
    results =
    {
      { "pm-polytetrafluoroethylene", 2 }
    }
  },

  {
    type = "recipe",
    name = "pm-plaster-of-nauvis",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-plastic-science-process",
    order = "a",
    ingredients =
    {
      { "pm-calcium-sulfate", 8 },
      { type = "fluid",       name = "pm-resin", amount = 20 },
      { type = "fluid",       name = "water",    amount = 40 },
    },
    results =
    {
      { type = "fluid", name = "pm-plaster-of-nauvis", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-science-mold",
    energy_required = 2,
    category = "pm-molding",
    subgroup = "pm-plastic-science-process",
    order = "b",
    enabled = false,
    ingredients =
    {
      { type = "fluid", name = "pm-plaster-of-nauvis", amount = 10 }
    },
    results =
    {
      { "pm-plastic-science-mold", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-science-mold-filling",
    energy_required = 1,
    enabled = false,
    category = "pm-advanced-molding",
    subgroup = "pm-plastic-science-process",
    order = "c",
    ingredients =
    {
      { "pm-plastic-science-mold",    1 },
      { "pm-polymethyl-methacrylate", 4 }
    },
    results =
    {
      { "pm-filled-plastic-science-mold", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-science-bottle",
    subgroup = "pm-plastic-science-pack",
    order = "a",
    enabled = false,
    energy_required = 3,
    main_product = "pm-plastic-science-bottle",
    ingredients =
    {
      { "pm-science-bottle",              1 },
      { "pm-filled-plastic-science-mold", 1 }
    },
    results =
    {
      { "pm-plastic-science-bottle", 1 },
      {
        name = "pm-plastic-science-mold",
        amount = 1,
        probability = 0.75
      }
    }
  },
  {
    type = "recipe",
    name = "pm-ferrum-ferric-chloride",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-circuits",
    ingredients =
    {
      { "pm-ferrum",    4 },
      { type = "fluid", name = "pm-chlorine", amount = 20 }
    },
    results =
    {
      { type = "fluid", name = "pm-ferric-chloride", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "pm-metal-ferric-chloride",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-circuits",
    ingredients =
    {
      { "iron-plate",   4 },
      { type = "fluid", name = "pm-chlorine", amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-ferric-chloride", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-better-transistors",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/better-transistors.png",
    enabled = false,
    subgroup = "pm-circuits",
    order = "m",
    energy_required = 0.3,
    ingredients =
    {
      { "pm-gallium-arsenide",     2 },
      { "pm-polyethylene-plastic", 3 },
      { "pm-basic-wiring",         4 }
    },
    results =
    {
      { "pm-transistors", 6 }
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-chloride",
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "pm-platinum-tm",
    order = "ca",
    ingredients =
    {
      { type = "fluid", name = "pm-ammonia-gas",       amount = 10 },
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 20 }
    },
    results =
    {
      { "pm-ammonium-chloride", 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-better-air-filter",
    show_amount_in_title = true,
    enabled = false,
    ingredients =
    {
      { "pm-platinum-plate",        3 },
      { "pm-gold-plate",            3 },
      { "pm-polyethylene-plastic",  4 },
      { "pm-stainless-steel-alloy", 2 },
    },
    results =
    {
      { "pm-air-filter", 8 }
    }
  },
  {
    type = "recipe",
    name = "pm-seed-crystal",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      { "pm-ammonium-chloride",   20 },
      { type = "fluid",           name = "pm-argon-gas", amount = 40 },
      { "pm-heavyweight-framing", 12 },
    },
    results =
    {
      { "pm-seed-crystal", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-empty-reactor-cell",
    enabled = false,
    energy_reqiured = 10,
    ingredients =
    {
      { "pm-glass-pane", 16 },
      { "pm-lead-plate", 8 },
      { "pm-zirconia",   12 }
    },
    results =
    {
      { "pm-empty-reactor-cell", 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-fuel-cell",
    enabled = false,
    energy_required = 10,
    subgroup = "pm-polonium-ptm",
    order = "c",
    ingredients =
    {
      { "pm-polonium-210",       20 },
      { "pm-empty-reactor-cell", 2 }
    },
    results =
    {
      { "pm-polonium-fuel-cell", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-cell-reprocessing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/polonium-fuel-reprocessing.png",
    enabled = false,
    energy_required = 30,
    category = "crafting-with-fluid",
    subgroup = "pm-polonium-ptm",
    order = "d",
    ingredients =
    {
      { "pm-used-up-polonium-fuel-cell", 10 },
    },
    results =
    {
      {
        name = "pm-empty-reactor-cell",
        amount_min = 3,
        amount_max = 5,
      },
      {
        name = "pm-lead-ore",
        amount_min = 1,
        amount_max = 5
      },
      {
        type = "fluid",
        name = "pm-helium-gas",
        amount_min = 2,
        amount_max = 5
      },
      {
        name = "pm-bismuth-210",
        amount = 4,
        probability = 0.7
      }
    }
  },
  {
    type = "recipe",
    name = "pm-speed-module-4",
    enabled = false,
    energy_required = 30,
    subgroup = "pm-speed",
    order = "d",
    ingredients =
    {
      { "pm-cobalt-blue",        5 },
      { "speed-module",          1 },
      { "pm-module-speed-light", 1 },
      { "pm-fluid-circuit",      10 },
      { "processing-unit",       10 }
    },
    results =
    {
      { "pm-speed-module-4", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-effectivity-module-4",
    enabled = false,
    energy_required = 30,
    subgroup = "pm-effectivity",
    order = "d",
    ingredients =
    {
      { "pm-chrome-green",            5 },
      { "effectivity-module",         1 },
      { "pm-module-efficiency-light", 1 },
      { "pm-fluid-circuit",           10 },
      { "processing-unit",            10 }
    },
    results =
    {
      { "pm-effectivity-module-4", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-productivity-module-4",
    enabled = false,
    energy_required = 30,
    subgroup = "pm-productivity",
    order = "d",
    ingredients =
    {
      { "pm-cadnium-red",               5 },
      { "productivity-module",          1 },
      { "pm-module-productivity-light", 1 },
      { "pm-fluid-circuit",             10 },
      { "processing-unit",              10 }
    },
    results =
    {
      { "pm-productivity-module-4", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-high-density-magazine",
    enabled = false,
    subgroup = "ammo",
    order = "a[basic-clips]-c",
    energy_required = 4,
    ingredients =
    {
      { "piercing-rounds-magazine", 1 },
      { "pm-lead-plate",            3 },
      { "sulfur",                   2 },
      { "pm-polyethylene-plastic",  2 }
    },
    results =
    {
      { "pm-high-density-magazine", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-vacuum-tube",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-refined-items",
    energy_required = 7,
    ingredients =
    {
      { "pm-platinum-plate", 6 },
      { "pm-nickel-plate",   6 },
      { "pm-glass-pane",     10 },
      { "pm-zinc-disc",      12 },
      { type = "fluid",      name = "pm-caesium", amount = 4 }
    },
    results =
    {
      { "pm-vacuum-tube", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-CRT",
    enabled = false,
    subgroup = "pm-refined-items",
    energy_required = 28,
    ingredients =
    {
      { "pm-vacuum-tube",     4 },
      { "pm-glass-pane",      10 },
      { "processing-unit",    3 },
      { "pm-cadnium-plate",   8 },
      { "pm-aluminium-plate", 12 }
    },
    results =
    {
      { "pm-CRT", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-oscilloscope",
    enabled = false,
    subgroup = "pm-refined-items",
    energy_required = 10,
    ingredients =
    {
      { "pm-CRT",                   1 },
      { "pm-polyethylene-plastic",  8 },
      { "pm-stainless-steel-alloy", 5 },
      { "pm-gold-plate",            6 },
      { "pm-fluid-circuit",         3 }
    },
    results =
    {
      { "pm-oscilloscope", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-geneva's-neglection-magazine",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "ammo",
    order = "a[basic-clips]-ca",
    energy_required = 4,
    ingredients =
    {
      { type = "fluid",             name = "pm-phosgene", amount = 10 },
      { "piercing-rounds-magazine", 1 },
      { "pm-thallium-plate",        4 },
      { "pm-flourine",              6 },
      { "pm-polyethylene-plastic",  2 }
    },
    results =
    {
      { "pm-geneva's-neglection-magazine", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-phosgene",
    enabled = false,
    energy_required = 1,
    category = "pm-moltening",
    subgroup = "pm-chlorine-rnm",
    order = "x",
    ingredients =
    {
      { type = "fluid", name = "pm-carbon-monoxide", amount = 10 },
      { type = "fluid", name = "pm-chlorine",        amount = 20 },
      { "pm-carbon",    5 }
    },
    results =
    {
      { type = "fluid", name = "pm-phosgene", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-logistic-robot",
    enabled = false,
    main_product = "pm-lithium-logistic-robot",
    ingredients =
    {
      { "logistic-robot",         1 },
      { "processing-unit",        2 },
      { "pm-lithium-ion-battery", 2 }
    },
    results =
    {
      { "pm-lithium-logistic-robot", 1 },
      {
        name = "pm-vanadium-redox-battery",
        amount_min = 1,
        amount_max = 2,
        probability = 0.66
      }
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-construction-robot",
    enabled = false,
    main_product = "pm-lithium-construction-robot",
    ingredients =
    {
      { "construction-robot",     1 },
      { "processing-unit",        2 },
      { "pm-lithium-ion-battery", 2 }
    },
    results =
    {
      { "pm-lithium-construction-robot", 1 },
      {
        name = "pm-vanadium-redox-battery",
        amount_min = 1,
        amount_max = 2,
        probability = 0.66
      }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "a",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-air-filter",      4 },
      { "pm-lithium-bromide", 8 },
      { "pm-gold-plate",      4 },
      { "pm-silver-plate",    4 }
    },
    results =
    {
      { "pm-advanced-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-oxygen-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "b",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-oxygen-air-filter",   1 },
      { "pm-gold-plate",          3 },
      { "pm-iodine",              2 },
      { "pm-lightweight-framing", 6 }
    },
    results =
    {
      { "pm-advanced-oxygen-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-nitrogen-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "c",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-nitrogen-air-filter", 1 },
      { "pm-gold-plate",          3 },
      { "pm-iodine",              2 },
      { "pm-lightweight-framing", 6 }
    },
    results =
    {
      { "pm-advanced-nitrogen-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-chlorine-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "d",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-chlorine-air-filter", 1 },
      { "pm-gold-plate",          3 },
      { "pm-iodine",              2 },
      { "pm-lightweight-framing", 6 }
    },
    results =
    {
      { "pm-advanced-chlorine-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-carbon-dioxide-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "e",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-carbon-dioxide-air-filter", 1 },
      { "pm-gold-plate",                3 },
      { "pm-iodine",                    2 },
      { "pm-lightweight-framing",       6 }
    },
    results =
    {
      { "pm-advanced-carbon-dioxide-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-trace-gas-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-advanced-air-filters-rnm",
    order = "e",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-trace-gas-air-filter", 1 },
      { "pm-gold-plate",           3 },
      { "pm-iodine",               2 },
      { "pm-lightweight-framing",  6 }
    },
    results =
    {
      { "pm-advanced-trace-gas-air-filter", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-travelling-wave-amplifier-tube",
    energy_required = 10,
    subgroup = "pm-refined-items",
    enabled = false,
    ingredients =
    {
      { "pm-vacuum-tube",        1 },
      { "pm-borosilicate-glass", 4 },
      { "copper-cable",          10 }
    },
    results =
    {
      { "pm-travelling-wave-amplifier-tube", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-borosilicate-science-bottle",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science-bottle.png",
        icon_size = 64
      },
      {
        icon = "__periodic-madness__/graphics/icons/borosilicate-glass-pane.png",
        icon_size = 64
      },
    },
    energy_required = 1.5,
    enabled = false,
    ingredients =
    {
      { "pm-borosilicate-glass", 4 }
    },
    results =
    {
      { "pm-science-bottle", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-ethylbenzene",
    enabled = false,
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      { type = "fluid", name = "pm-ethylene-gas", amount = 20 },
      { type = "fluid", name = "pm-benzene",      amount = 20 },
    },
    results =
    {
      { type = "fluid", name = "pm-ethylbenzene", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-styrene",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    ingredients =
    {
      { type = "fluid", name = "pm-ethylbenzene", amount = 5 },
      { "iron-plate",   5 }
    },
    results =
    {
      { type = "fluid", name = "pm-styrene", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst",
    --enabled = false,
    energy_required = 60,
    category = "crafting-with-fluid",
    ingredients =
    {
      { "pm-molybdenum-ore", 20 },
      { type = "fluid", name = "pm-nitrogen-gas", amount = 15 },
      { "pm-nickel-plate", 12 },
      { "pm-red-phosphorus", 6 },
      { "pm-lightweight-panelling", 16 }
    },
    results =
    {
      { 
        name = "pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst",
        amount = 1,
        probability = 0.7
      }
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-grenade",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    ingredients = 
    {
      {"pm-sodium", 6},
      {type = "fluid", name = "water", amount = 10},
      {"pm-basic-panelling", 4}
    },
    results = 
    {
      {"pm-sodium-grenade", 1}
    }
  },

  {
    type = "recipe",
    name = "pm-plastic-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-transition-metal-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "b",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { "iron-plate",                1 },
      { "pm-plastic-science-bottle", 1 },
      { "pm-nickel-plate",           1 },
    },
    results =
    {
      { "automation-science-pack", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-transition-metal-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "c",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      { "pm-gold-plate",             5 },
      { "pm-plastic-science-bottle", 1 },
      { type = "fluid",              name = "pm-liquid-mercury", amount = 25 },
      { "pm-manganese-plate",        5 },
    },
    results =
    {
      { "logistic-science-pack", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-advanced-transition-metal-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "d",
    energy_required = 6,
    ingredients =
    {
      { "pm-titanium-ore",           8 },
      { "pm-tungsten-ore",           8 },
      { "pm-silver-plate",           15 },
      { "copper-plate",              15 },
      { "pm-plastic-science-bottle", 1 }
    },
    enabled = false,
    results =
    {
      { "pm-advanced-advanced-transition-metal-science-pack", 2 },
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-reactive-non-metals-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-reactive-non-metals-pack.png",
    subgroup = "pm-plastic-science-pack",
    category = "crafting-with-fluid",
    order = "e",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-plastic-science-bottle", 1 },
      { type = "fluid",              name = "pm-nitrogen-gas", amount = 25 },
      { "pm-carbon",                 15 },
      { "sulfur",                    8 }
    },
    results =
    {
      { "chemical-science-pack", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-post-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-post-transition-metal-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "e",
    energy_required = 6,
    ingredients =
    {
      { "pm-aluminium-plate",        10 },
      { "pm-tin-plate",              4 + 1 },
      { "pm-lead-plate",             10 },
      { "pm-thallium-ore",           3 },
      { "pm-bismuth-ore",            8 },
      { type = "fluid",              name = "pm-liquid-gallium", amount = 40 },
      { "pm-plastic-science-bottle", 1 }
    },
    enabled = false,
    results =
    {
      { "pm-post-transition-metal-science-pack", 2 },
    }
  },

  {
    type = "recipe",
    name = "pm-FUCK-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/automation-science-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/francium.png",
        icon_size = 64,
        scale = 0.32
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "a",
    ingredients =
    {
      { type = "fluid",             name = "pm-francium", amount = 3 },
      { "pm-science-bottle",        5 },
      { "pm-transition-metals-ore", 10 }
    },
    results =
    {
      { "automation-science-pack", 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-FUCK-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/francium.png",
        icon_size = 64,
        scale = 0.32
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "b",
    ingredients =
    {
      { type = "fluid",             name = "pm-francium", amount = 3 },
      { "pm-science-bottle",        5 },
      { "pm-transition-metals-ore", 20 }
    },
    results =
    {
      { "logistic-science-pack", 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-FUCK-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/francium.png",
        icon_size = 64,
        scale = 0.32
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "c",
    ingredients =
    {
      { type = "fluid",             name = "pm-francium", amount = 3 },
      { "pm-science-bottle",        5 },
      { "pm-transition-metals-ore", 40 }
    },
    results =
    {
      { "pm-advanced-advanced-transition-metal-science-pack", 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-FUCK-reactive-non-metals-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/reactive-non-metals-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/francium.png",
        icon_size = 64,
        scale = 0.32
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "e",
    ingredients =
    {
      { type = "fluid",      name = "pm-francium", amount = 3 },
      { "pm-science-bottle", 5 },
      { type = "fluid",      name = "pm-chlorine", amount = 50 }
    },
    results =
    {
      { "chemical-science-pack", 5 }
    }
  },
  {
    type = "recipe",
    name = "pm-FUCK-post-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/post-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/francium.png",
        icon_size = 64,
        scale = 0.32
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "d",
    ingredients =
    {
      { type = "fluid",                  name = "pm-francium", amount = 3 },
      { "pm-science-bottle",             5 },
      { "pm-post-transition-metals-ore", 20 }
    },
    results =
    {
      { "pm-post-transition-metal-science-pack", 5 }
    }
  },

} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["chemical-science-pack"].order = "e"
data.raw["recipe"]["production-science-pack"].order = "x"
data.raw["recipe"]["utility-science-pack"].order = "xa"

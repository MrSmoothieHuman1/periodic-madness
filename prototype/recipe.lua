local PM = require("library")
data:extend({

  {
    type = "recipe",
    name = "pm-hydrogen-fuel",
    energy_required = 1,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-oxygen-gas", 15, "fluid"),
      PM.ingredient("iron-plate", 2)
    },
    results = 
    {
      PM.product("pm-hydrogen-fuel", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-carbon",
    category = "pm-crushing",
    enabled = false,
    allow_productivity = true,
    ingredients = {PM.ingredient("coal", 2)},
    energy_required = 2,
    results = 
    {
      PM.product("pm-carbon", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-sand",
    energy_required = 2,
    allow_productivity = true,
    enabled = false,
    ingredients = { PM.ingredient("stone", 4) },
    icon_size = 64,
    category = "pm-crushing",
    subgroup = "pm-glassing",
    order = "a",
    results =
    {
      PM.product("pm-sand", 8),
    }
  },
  {
    type = "recipe",
    name = "pm-electronic-breadboard",
    energy_required = 2,
    subgroup = "pm-circuits",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 4),
    },
    results =
    {
      PM.product("pm-electronic-breadboard", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-electronic-integrated-circuits",
    energy_required = 0.25,
    subgroup = "pm-circuits",
    order = "b",
    show_amount_in_title = true,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("iron-plate", 1),
      PM.ingredient("copper-cable", 1),
    },
    results = 
    {
      PM.product("pm-electronic-integrated-circuits", 3)
    }
  },

  -- green circuits are order "c" for pm-circuits

  {
    type = "recipe",
    name = "pm-fluid-circuit-breadboard",
    energy_required = 3,
    subgroup = "pm-circuits",
    order = "d",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-electronic-breadboard", 1),
      PM.ingredient("pm-vulcanised-rubber", 2)
    },
    results =
    {
      PM.product("pm-fluid-breadboard", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-transistors",
    energy_required = 0.6,
    subgroup = "pm-circuits",
    order = "e",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-basic-wiring", 3),
      PM.ingredient("pm-carbon", 8),
    },
    results = 
    {
      PM.product("pm-transistors", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-integrated-circuits",
    energy_required = 0.5,
    subgroup = "pm-circuits",
    order = "f",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-silver-plate", 1),
      PM.ingredient("pm-gold-wire", 2)
    },
    results =
    {
      PM.product("pm-fluid-integrated-circuits", 3)
    }
  },
  {
    type = "recipe",
    name = "pm-fluid-circuit",
    energy_required = 1.5,
    enabled = false,
    category = "pm-circuitry",
    subgroup = "pm-circuits",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-fluid-breadboard", 1),
      PM.ingredient("pm-fluid-integrated-circuits", 3),
      PM.ingredient("pm-transistors", 5),
      PM.ingredient("pm-gold-wire", 3)
    },
    results =
    {
      PM.product("pm-fluid-circuit", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-circuit-breadboard",
    energy_required = 6,
    subgroup = "pm-circuits",
    order = "h",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 2),
      PM.ingredient("pm-palladium-plate", 2),
      PM.ingredient("pm-fluid-breadboard", 1),
    },
    results = {
      PM.product("pm-advanced-circuit-breadboard", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-advanced-integrated-circuits",
    energy_required = 0.5,
    subgroup = "pm-circuits",
    order = "i",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polyethylene-plastic", 1),
      PM.ingredient("pm-gold-wire", 2),
    },
    results = {
      PM.product("pm-advanced-integrated-circuits", 3)
    }
  },

  --red circuits are order "j" in pm-circuits

  {
    type = "recipe",
    name = "pm-processing-breadboard",
    energy_required = 9,
    category = "crafting-with-fluid",
    subgroup = "pm-circuits",
    order = "k",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-indium-plate", 3),
      PM.ingredient("pm-ferric-chloride", 10, "fluid"),
      PM.ingredient("pm-advanced-circuit-breadboard", 1),
      PM.ingredient("pm-cobalt-blue", 6)
    },
    results = {
      PM.product("pm-processing-breadboard", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-processing-integrated-circuits",
    energy_required = 1,
    subgroup = "pm-circuits",
    order = "l",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-titanium-plate", 4),
      PM.ingredient("pm-gallium-arsenide", 1),
      PM.ingredient("pm-indium-wire", 3),
    },
    results =
    {
      PM.product("pm-processing-integrated-circuits", 3)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-advanced-integrated-circuits", 3),
      PM.ingredient("pm-gold-plate", 6),
      PM.ingredient("pm-thallium-plate", 3),
      PM.ingredient("pm-phosphoric-acid", 8, "fluid")
    },
    results =
    {
      PM.product("pm-semiconductor", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-indium-wire",
    enabled = false,
    subgroup = "pm-wires",
    order = "da",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-indium-plate", 2)
    },
    results =
    {
      PM.product("pm-indium-wire", 2)
    }
  },

  --processing units are order "o"

  {
    type = "recipe",
    name = "pm-science-bottle",
    energy_required = 3,
    subgroup = "pm-glassing",
    order = "c",
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-glass-pane", 2) },
    results = {
      PM.product("pm-science-bottle", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-air-filter",
    energy_required = 1.5,
    subgroup = "pm-air-filters-rnm",
    order = "a",
    show_amount_in_title = true,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-carbon", 50),
      PM.ingredient("pm-nickel-plate", 4),
    },
    results = 
    {
      PM.product("pm-air-filter", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-rubber-air-filter",
    energy_required = 1,
    subgroup = "pm-air-filters-rnm",
    order = "ab",
    show_amount_in_title = true,
    allow_productivity = true,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-glass-fibers", 5),
      PM.ingredient("pm-vulcanised-rubber", 4),
      PM.ingredient("steel-plate", 2)
    },
    results = 
    {
      PM.product("pm-air-filter", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-transition-metal-clearing",
    icon_size = 64,
    energy_required = 6.4,
    icon = "__periodic-madness__/graphics/icons/recipes/transition-metals-cleared.png",
    subgroup = "pm-tm-tm",
    order = "a",
    ingredients = { PM.ingredient("pm-transition-metals-ore", 5) },
    results =
    {
      PM.product_chance("iron-ore", 5, 0.2),
      PM.product_chance("pm-nickel-ore", 5, 0.2),
      PM.product_chance("pm-zinc-ore", 5, 0.2),
      PM.product_chance("copper-ore", 5, 0.2)
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
      PM.ingredient("pm-transition-metals-ore", 10),
      PM.ingredient("pm-seawater", 50, "fluid"),
    },
    results =
    {
      PM.product_chance("iron-ore", 5, 0.4),
      PM.product_chance("pm-nickel-ore", 5, 0.4),
      PM.product_chance("pm-zinc-ore", 5, 0.4),
      PM.product_chance("copper-ore", 5, 0.4),
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
      PM.ingredient("pm-transition-metals-ore", 15),
      PM.ingredient("water", 50, "fluid"),
    },
    results =
    {
      PM.product_chance("iron-ore", 5, 0.5),
      PM.product_chance("pm-nickel-ore", 5, 0.5),
      PM.product_chance("pm-zinc-ore", 5, 0.5),
      PM.product_chance("copper-ore", 5, 0.5),
      PM.product_chance("pm-manganese-ore", 5, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-solder",
    energy_required = 3,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-solder-wire", 4),
      PM.ingredient("pm-solder-case", 1)
    },
    results =
    {
      PM.product("pm-solder", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-solder-case",
    energy_required = 6,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polyethylene-plastic", 2),
      PM.ingredient("pm-silver-plate", 1)
    },
    results =
    {
      PM.product("pm-solder-case", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-acidic-water",
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
      PM.ingredient("sulfur", 5),
      PM.ingredient("water", 50, "fluid"),
    },
    hide_from_player_crafting = true,
    results =
    {
      PM.product("pm-acidic-water", 50, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-advanced-transition-metal-science-pack",
    subgroup = "science-pack",
    order = "c",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-titanium-ore", 8),
      PM.ingredient("pm-tungsten-ore", 8),
      PM.ingredient("pm-silver-plate", 15),
      PM.ingredient("copper-plate", 15),
      PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-advanced-advanced-transition-metal-science-pack", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-post-transition-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "e",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 10),
      PM.ingredient("pm-tin-plate", 5),
      PM.ingredient("pm-lead-plate", 8),
      PM.ingredient("pm-thallium-ore", 3),
      PM.ingredient("pm-bismuth-ore", 8),
      PM.ingredient("pm-liquid-gallium", 10, "fluid"),
      PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-post-transition-metal-science-pack", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-alkali-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "fa",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium", 5, "fluid"),
      PM.ingredient("pm-potassium", 12),
      PM.ingredient("pm-sodium", 20),
      PM.ingredient("pm-lithium-ore", 10),
      PM.ingredient("pm-rubidium", 2),
      PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-alkali-metal-science-pack", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-metalloid-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "g",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-antimony-ore", 6),
      PM.ingredient("pm-arsenic-ore", 6),
      PM.ingredient("pm-boron", 24, "fluid"),
      PM.ingredient("pm-tellurium-plate", 10),
      PM.ingredient("pm-germanium-ore", 4),
      PM.ingredient("pm-industrial-grade-silicon-ore", 3),
      PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-metalloid-science-pack", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-alkaline-earth-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "h",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-calcium-ore", 25),
      PM.ingredient("pm-beryllium-ore", 8),
      PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-alkaline-earth-metal-science-pack", 1),
    }
  },

  {
    type = "recipe",
    name = "pm-wood-strips",
    energy_required = 1,
    enabled = false,
    subgroup = "pm-greenhousing-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("wood", 1)
    },
    results =
    {
      PM.product("pm-wood-strips", 5)
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
    subgroup = "pm-greenhousing-rnm",
    order = "da",
    ingredients =
    {
      PM.ingredient("pm-wood-strips", 10)
    },
    results =
    {
      PM.product("pm-coke", 5),
    }
  },
  {
    type = "recipe",
    name = "pm-coal-burning",
    enabled = false,
    energy_required = 3,
    category = "pm-alloying",
    subgroup = "pm-greenhousing-rnm",
    order = "db",
    ingredients =
    {
      PM.ingredient("coal", 8),
    },
    results =
    {
      PM.product("pm-coke", 5)
    }
  },
  {
    type = "recipe",
    name = "pm-resin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-forming.png",
    energy_required = 2,
    subgroup = "pm-resin",
    category = "crafting-with-fluid",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("water", 75, "fluid"),
      PM.ingredient("pm-wood-strips", 10)
    },
    results =
    {
      PM.product("pm-resin", 25, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-rubber-resin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-to-rubber-resin.png",
    energy_required = 1,
    subgroup = "pm-resin",
    category = "pm-acids",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-resin", 50, "fluid"),
      PM.ingredient("pm-carbon", 10)
    },
    results =
    {
      PM.product("pm-rubber-resin", 50, "fluid")
    }

  },
  {
    type = "recipe",
    name = "pm-pheonlic-resin",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-to-pheonlic-resin.png",
    energy_required = 1,
    subgroup = "pm-resin",
    category = "pm-acids",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-resin", 50, "fluid"),
      PM.ingredient("pm-glass-fibers", 10)
    },
    results =
    {
      PM.product("pm-pheonlic-resin", 50, "fluid")
    }

  },
  {
    type = "recipe",
    name = "pm-rubber",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/rubber/resin-cooling.png",
    energy_required = 2,
    subgroup = "pm-resin",
    category = "pm-molding",
    order = "e",
    enabled = false,
    always_show_products = true,
    ingredients =
    {
      PM.ingredient("pm-rubber-resin", 50, "fluid")
    },
    results =
    {
      PM.product("pm-rubber", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-vulcanised-rubber",
    energy_required = 3,
    enabled = false,
    subgroup = "pm-resin",
    category = "pm-acids",
    order = "f",
    main_product = "pm-vulcanised-rubber",
    ingredients =
    {
      PM.ingredient("pm-rubber", 5),
      PM.ingredient("sulfur", 2)
    },
    results =
    {
      PM.product("pm-vulcanised-rubber", 5),
      PM.product_range("pm-acidic-water", 5, 8, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-basic-motor",
    subgroup = "pm-intermediates",
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("iron-stick", 1),
      PM.ingredient("pm-nickel-plate", 2)
    },
    results = {
      PM.product("pm-basic-motor", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-mini-motor",
    subgroup = "pm-intermediates",
    energy_required = 2,
    enabled = false,
    show_amount_in_title = true,
    ingredients =
    {
      PM.ingredient("copper-cable", 1),
      PM.ingredient("iron-stick", 1),
      PM.ingredient("pm-nickel-plate", 2)
    },
    results =
    {
      PM.product("pm-mini-motor", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-cog",
    energy_required = 1,
    subgroup = "pm-gears",
    order = "ba",
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-brass-plate", 2) },
    results = {
      PM.product("pm-brass-cog", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-gold-wire",
    energy_required = 0.5,
    subgroup = "pm-wires",
    order = "ba",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-gold-plate", 1) },
    results =
    {
      PM.product("pm-gold-wire", 2)
    }
  },

  {
    type = "recipe",
    name = "pm-glass-fibers",
    subgroup = "pm-glassing",
    order = "d",
    enabled = false,
    energy_required = 1,
    show_amount_in_title = true,
    main_product = "pm-glass-fibers",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 1)
    },
    results =
    {
      PM.product("pm-glass-fibers", 5),
      PM.product_chance("pm-glass-shards", 2, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-fiberoptic-cable",
    enabled = false,
    energy_required = 4,
    category = "crafting-with-fluid",
    subgroup = "pm-wires",
    order = "ca",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-wire", 2),
      PM.ingredient("pm-glass-fibers", 20),
      PM.ingredient("pm-pheonlic-resin", 10, "fluid")
    },
    results =
    {
      PM.product("pm-fiberoptic-cable", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-solder-wire",
    energy_required = 1,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-solder-plate", 1)
    },
    results =
    {
      PM.product("pm-solder-wire", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-solar-cell",
    energy_required = 5,
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cadnium-plate", 2),
      PM.ingredient("pm-glass-pane", 4),
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("pm-solid-lubricant", 4)
    },
    results =
    {
      PM.product("pm-solar-cell", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-lube-solar-cell",
    energy_required = 4,
    category = "crafting-with-fluid",
    subgroup = "pm-intermediates",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cadnium-plate", 2),
      PM.ingredient("pm-glass-pane", 4),
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("pm-heavy-lubricant", 8, "fluid"),
    },
    results =
    {
      PM.product("pm-solar-cell", 3)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ammonia-gas", 4, "fluid"),
      PM.ingredient("pm-liquid-gallium", 10, "fluid")
    },
    results =
    {
      PM.product("pm-gallium-nitride", 6)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-arsenic-ore", 4),
      PM.ingredient("pm-liquid-gallium", 10, "fluid")
    },
    results =
    {
      PM.product("pm-gallium-arsenide", 6)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gallium-arsenide", 1),
      PM.ingredient("pm-phosphoric-acid", 10, "fluid"),
      PM.ingredient("pm-indium-plate", 5),
      PM.ingredient("pm-aluminium-plate", 5)
    },
    results =
    {
      PM.product("pm-aluminium-gallium-indium-phosphide", 6),
      PM.product_chance("pm-gallium-arsenide", 1, 0.6)
    }
  },
  {
    type = "recipe",
    name = "pm-module-speed-light",
    energy_required = 5,
    subgroup = "pm-modules",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 6),
      PM.ingredient("pm-basic-wiring", 20),
      PM.ingredient("pm-gallium-nitride", 3),
    },
    results =
    {
      PM.product("pm-module-speed-light", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-module-efficiency-light",
    energy_required = 5,
    enabled = false,
    subgroup = "pm-modules",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 6),
      PM.ingredient("pm-basic-wiring", 20),
      PM.ingredient("pm-gallium-arsenide", 3),
    },
    results =
    {
      PM.product("pm-module-efficiency-light", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-module-productivity-light",
    energy_required = 5,
    enabled = false,
    subgroup = "pm-modules",
    order = "l",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 6),
      PM.ingredient("pm-basic-wiring", 20),
      PM.ingredient("pm-aluminium-gallium-indium-phosphide", 3),
    },
    results =
    {
      PM.product("pm-module-productivity-light", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-module-case",
    energy_required = 5,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-modules",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-helium-gas", 40, "fluid"),
      PM.ingredient("pm-platinum-plate", 4),
      PM.ingredient("pm-vulcanised-rubber", 4),
      PM.ingredient("pm-lightweight-panelling", 6),
    },
    results =
    {
      PM.product("pm-module-case", 1)
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
      PM.ingredient("pm-water-vapour", 5, "fluid")
    },
    results =
    {
      PM.product("water", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-blank-bio-module",
    subgroup = "pm-bio-modules-rnm",
    order = "a",
    energy_required = 7.5,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-anti-bacterial-panelling", 8),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-basic-wiring", 15),
    },
    results =
    {
      PM.product("pm-blank-bio-module", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-agility-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-phosphoramidite", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-agility-bio-module", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-health-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-CISD2", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-health-bio-module", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-strength-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "c",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-legendary-myostatin", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-strength-bio-module", 1)
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
      PM.ingredient("pm-ammonia-gas", 20, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 1),
    },
    results =
    {
      PM.catalyst_chance("pm-palladium-catalyst", 1, 0.9, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.1, 1),
      PM.product("pm-trace-acetonitrile", 10, "fluid"),
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
      PM.ingredient("pm-trace-acetonitrile", 40, "fluid"),
    },
    results =
    {
      PM.product("pm-acetonitrile", 10, "fluid"),
      PM.product("pm-trace-acetonitrile", 20, "fluid")
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
      PM.ingredient("pm-acetonitrile", 10, "fluid"),
      PM.ingredient("pm-oxygen-gas", 20, "fluid"),
      PM.ingredient("pm-red-phosphorus", 6),
      PM.ingredient("pm-carbon", 6)
    },
    results =
    {
      PM.product("pm-phosphoramidite", 2.4, "fluid"),
      PM.product_range("pm-trace-acetonitrile", 2, 8, "fluid")
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
      PM.ingredient("pm-benzene", 25, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 5)
    },
    results =
    {
      PM.product("pm-common-myostatin", 10, "fluid"),
      PM.product_range_chance("pm-vanadium-oxide-catalyst", 3, 5, 0.66),
      PM.product_range_chance("pm-catalyst-container", 0, 2, 0.33)
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
      PM.ingredient("pm-broken-myostatin", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-benzene", 40, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-oxygenation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/myostatin-oxygenation.png",
    energy_required = 6,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-common-myostatin", 10, "fluid"),
      PM.ingredient("pm-oxygen-gas", 24, "fluid")
    },
    results =
    {
      PM.product_chance("pm-rare-myostatin", 10, 0.4, "fluid"),
      PM.product_chance("pm-broken-myostatin", 4, 0.4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-myostatin-nitrogenation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/myostatin-nitrogenation.png",
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-myostatin-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-rare-myostatin", 10, "fluid"),
      PM.ingredient("pm-nitrogen-gas", 24, "fluid"),
    },
    results =
    {
      PM.product_chance("pm-legendary-myostatin", 10, 0.4, "fluid"),
      PM.product_chance("pm-broken-myostatin", 4, 0.4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-iron-sulfur-cluster",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    subgroup = "pm-CISD2-rnm",
    order = "a",
    main_product = "pm-iron-sulfur-cluster",
    ingredients =
    {
      PM.ingredient("iron-plate", 5),
      PM.ingredient("sulfuric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-iron-sulfur-cluster", 1),
      PM.product_range_chance("sulfur", 1, 3, 0.24)
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
      PM.ingredient("pm-iron-sulfur-cluster", 2),
      PM.ingredient("pm-zinc-plate", 8),
      PM.ingredient("pm-benzene", 20, "fluid")
    },
    results =
    {
      PM.product("pm-CISD2", 4, "fluid"),
      PM.product_range_chance("pm-zinc-plate", 2, 4, 0.2),
      PM.product_chance("pm-ferrum", 3, 0.4)
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
    subgroup = "pm-intermediates",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-heavy-lubricant", 8, "fluid"),
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("engine-unit", 1),
      PM.ingredient("advanced-circuit", 2),
      PM.ingredient("pm-kasethal-plate", 4)
    },
    results =
    {
      PM.product("electric-engine-unit", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-basic-fluid-circuit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/green-circuit-dipping.png",
    enabled = false,
    energy_required = 2.25,
    category = "crafting-with-fluid",
    subgroup = "pm-circuits",
    order = "fa",
    ingredients =
    {
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("electronic-circuit", 5),
      PM.ingredient("pm-resin", 20, "fluid")
    },
    results =
    {
      PM.product_range_chance("pm-fluid-circuit", 1, 3, 0.4),
      PM.product_range_chance("electronic-circuit", 1, 3, 0.7),
      PM.product_chance("copper-cable", 2, 0.2)
    }
  },
  {
    type = "recipe",
    name = "pm-flux-container",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-catalysts",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polyethylene-plastic", 4),
    },
    results = {
      PM.product("pm-flux-container", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-filled-flux-container",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-catalysts",
    order = "ga",
    ingredients =
    {
      PM.ingredient("pm-flux-container", 1),
      PM.ingredient("pm-sand", 8),
      PM.ingredient("pm-coke", 2),
      PM.ingredient("pm-flourine", 4)
    },
    results = {
      PM.product("pm-filled-flux-container", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-ethylene-glycol",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    main_product = "pm-ethylene-glycol",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 12, "fluid"),
      PM.ingredient("water", 24, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 1)
    },
    results =
    {
      PM.product_chance("pm-palladium-catalyst", 1, 0.85),
      PM.product_chance("pm-catalyst-container", 1, 0.15),
      PM.product("pm-ethylene-glycol", 10, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-coolant",
    category = "chemistry",
    subgroup = "pm-bismuth-ptm",
    order = "ab",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-glycol", 10, "fluid"),
      PM.ingredient("pm-nitrogen-gas", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-coolant", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-equipment-2",
    energy_required = 20,
    enabled = false,
    subgroup = "pm-modular-power",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-gallium-arsenide", 2),
      PM.ingredient("solar-panel-equipment", 1),
      PM.ingredient("pm-lightweight-panelling", 10),
      PM.ingredient("processing-unit", 8)
    },
    results =
    {
      PM.product("pm-solar-panel-equipment-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-equipment-3",
    energy_required = 30,
    enabled = false,
    subgroup = "pm-modular-power",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-gallium-arsenide", 4),
      PM.ingredient("pm-solar-panel-equipment-2", 1),
      PM.ingredient("low-density-structure", 5),
      PM.ingredient("processing-unit", 8)
    },
    results =
    {
      PM.product("pm-solar-panel-equipment-2", 1)
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
      PM.ingredient("speed-module", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.9),
      PM.product_chance("pm-module-speed-light", 1, 0.9),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.8)
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
      PM.ingredient("speed-module", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.8),
      PM.product_chance("pm-module-speed-light", 1, 0.8),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.7),
      PM.product_range_chance("pm-fluid-circuit", 2, 4, 0.7),
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
      PM.ingredient("efficiency-module", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.8),
      PM.product_chance("pm-module-efficiency-light", 1, 0.8),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.7)
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
      PM.ingredient("efficiency-module-2", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.7),
      PM.product_chance("pm-module-efficiency-light", 1, 0.7),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.6),
      PM.product_range_chance("pm-fluid-circuit", 2, 4, 0.6),
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
      PM.ingredient("productivity-module", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.8),
      PM.product_chance("pm-module-speed-light", 1, 0.8),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.7)
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
      PM.ingredient("productivity-module-2", 1)
    },
    results =
    {
      PM.product_chance("pm-module-case", 1, 0.7),
      PM.product_chance("pm-module-speed-light", 1, 0.7),
      PM.product_range_chance("electronic-circuit", 2, 4, 0.6),
      PM.product_range_chance("pm-fluid-circuit", 2, 4, 0.6),
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-seawater", 100, "fluid"),
      PM.ingredient("pm-sand", 10),
      PM.ingredient("wood", 4)
    },
    results =
    {
      PM.product("pm-creosote", 40, "fluid")
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-seawater", 100, "fluid"),
      PM.ingredient("pm-bitumen", 5),
      PM.ingredient("wood", 2)
    },
    results =
    {
      PM.product("pm-creosote", 40, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-crucible",
    enabled = false,
    energy_required = 2.25,
    category = "crafting-with-fluid",
    subgroup = "pm-intermediates",
    order = "b",

    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 4),
      PM.ingredient("pm-zirconia", 3),
      PM.ingredient("pm-creosote", 10, "fluid")
    },
    results =
    {
      PM.product("pm-crucible", 2)
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
      PM.ingredient("pm-zirconia", 10),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results =
    {
      PM.product("pm-zirconium-pants", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-zinc-aluminium-catalyst",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-catalysts",
    order = "ea",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("copper-plate", 2),
      PM.ingredient("pm-zinc-plate", 2),
      PM.ingredient("pm-aluminium-plate", 2),
      PM.ingredient("pm-catalyst-container", 2)
    },
    results =
    {
      PM.product("pm-copper-zinc-aluminium-catalyst", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-carbon-monoxide", 10, "fluid"),
      PM.ingredient("pm-hydrogen-gas", 30, "fluid"),
      PM.ingredient("pm-copper-zinc-aluminium-catalyst", 1)
    },
    results =
    {
      PM.product("pm-methanol", 10, "fluid"),
      PM.product("water", 10, "fluid"),
      PM.catalyst_chance("pm-copper-zinc-aluminium-catalyst", 1, 0.95, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.05, 1)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-methanol", 20, "fluid"),
      PM.ingredient("sulfuric-acid", 4, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 1)
    },
    results =
    {
      PM.product("pm-methyl-methacrylate", 15, "fluid"),
      PM.catalyst_chance("pm-palladium-catalyst", 1, 0.8, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.2, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-polymethyl-methacrylate",
    energy_required = 3,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "i",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-plastic-pellets", 5),
      PM.ingredient("pm-methyl-methacrylate", 20, "fluid"),
    },
    results =
    {
      PM.product("pm-polymethyl-methacrylate", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-plastic-pellets", 8),
      PM.ingredient("pm-methyl-methacrylate", 20, "fluid"),
      PM.ingredient("pm-vinyl-bromide", 10, "fluid")
    },
    results =
    {
      PM.product("pm-polymethyl-methacrylate", 4),
      PM.product_chance("pm-hydrogen-gas", 5, 0.5, "fluid")
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
      PM.ingredient("pm-methyl-chloride", 10, "fluid"),
      PM.ingredient("pm-chlorine", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-hydrochloric-acid", 2, 5, "fluid"),
      PM.product("pm-chloronated-solution", 12, "fluid")
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
      PM.ingredient("pm-chloronated-solution", 6, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results =
    {
      PM.product_range("pm-chloroform", 6, 8, "fluid"),
      PM.product_range("pm-carbon-tetrachloride", 2, 6, "fluid"),
      PM.catalyst_range_chance("pm-vanadium-oxide-catalyst", 1, 2, 0.75, 1),
      PM.catalyst_range_chance("pm-catalyst-container", 0, 1, 0.25, 1)
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
      PM.ingredient("pm-chloroform", 24, "fluid"),
      PM.ingredient("pm-hydroflouric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-tetrafluoroethylene", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-polytetrafluoroethylene",
    energy_required = 9,
    enabled = false,
    category = "chemistry",
    subgroup = "pm-plastics",
    order = "l",
    ingredients =
    {
      PM.ingredient("pm-tetrafluoroethylene", 5, "fluid"),
      PM.ingredient("pm-vinyl-bromide", 10, "fluid")
    },
    results =
    {
      PM.product("pm-polytetrafluoroethylene", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-calcium-sulfate", 8),
      PM.ingredient("pm-resin", 20, "fluid"),
      PM.ingredient("water", 40, "fluid"),
    },
    results =
    {
      PM.product("pm-plaster-of-nauvis", 20, "fluid")
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-plaster-of-nauvis", 10, "fluid")
    },
    results =
    {
      PM.product("pm-plastic-science-mold", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-filled-plastic-science-mold",
    energy_required = 1,
    enabled = false,
    category = "pm-advanced-molding",
    subgroup = "pm-plastic-science-process",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-plastic-science-mold", 1),
      PM.ingredient("pm-polymethyl-methacrylate", 4)
    },
    results =
    {
      PM.product("pm-filled-plastic-science-mold", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-science-bottle",
    subgroup = "pm-plastic-science-process",
    order = "c",
    enabled = false,
    energy_required = 3,
    main_product = "pm-plastic-science-bottle",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-science-bottle", 1),
      PM.ingredient("pm-filled-plastic-science-mold", 1)
    },
    results =
    {
      PM.product("pm-plastic-science-bottle", 1),
      PM.product_chance("pm-plastic-science-mold", 1, 0.66)
    }
  },
  {
    type = "recipe",
    name = "pm-ferrum-ferric-chloride",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/ferric-chloride.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ferrum.png",
        icon_size = 64,
      },
      
    },
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-circuits",
    ingredients =
    {
      PM.ingredient("pm-ferrum", 4),
      PM.ingredient("pm-chlorine", 20, "fluid")
    },
    results =
    {
      PM.product("pm-ferric-chloride", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-metal-ferric-chloride",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/ferric-chloride.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
      },
      
    },
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-circuits",
    ingredients =
    {
      PM.ingredient("iron-plate", 4),
      PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-ferric-chloride", 10, "fluid")
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
    energy_required = 0.6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gallium-arsenide", 2),
      PM.ingredient("pm-polyethylene-plastic", 3),
      PM.ingredient("pm-basic-wiring", 4)
    },
    results =
    {
      PM.product("pm-transistors", 8)
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
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-ammonium-chloride", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-better-air-filter",
    subgroup = "pm-air-filters-rnm",
    order = "b",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 3),
      PM.ingredient("pm-gold-plate", 3),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-stainless-steel-alloy", 2),
    },
    results =
    {
      PM.product("pm-air-filter", 8)
    }
  },
  {
    type = "recipe",
    name = "pm-seed-crystal",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ammonium-chloride", 20),
      PM.ingredient("pm-argon-gas", 40, "fluid"),
      PM.ingredient("pm-heavyweight-framing", 12),
    },
    results =
    {
      PM.product("pm-seed-crystal", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-empty-reactor-cell",
    enabled = false,
    energy_required = 20,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 16),
      PM.ingredient("pm-lead-plate", 8),
      PM.ingredient("pm-zirconia", 12)
    },
    results =
    {
      PM.product("pm-empty-reactor-cell", 10)
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
      PM.ingredient("pm-cobalt-blue", 5),
      PM.ingredient("speed-module", 1),
      PM.ingredient("pm-module-speed-light", 1),
      PM.ingredient("pm-fluid-circuit", 10),
      PM.ingredient("processing-unit", 10)
    },
    results =
    {
      PM.product("pm-speed-module-4", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-efficiency-module-4",
    enabled = false,
    energy_required = 30,
    subgroup = "pm-efficiency",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-chrome-green", 5),
      PM.ingredient("efficiency-module", 1),
      PM.ingredient("pm-module-efficiency-light", 1),
      PM.ingredient("pm-fluid-circuit", 10),
      PM.ingredient("processing-unit", 10)
    },
    results =
    {
      PM.product("pm-efficiency-module-4", 1)
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
      PM.ingredient("pm-cadnium-red", 5),
      PM.ingredient("productivity-module", 1),
      PM.ingredient("pm-module-productivity-light", 1),
      PM.ingredient("pm-fluid-circuit", 10),
      PM.ingredient("processing-unit", 10)
    },
    results =
    {
      PM.product("pm-productivity-module-4", 1)
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
      PM.ingredient("piercing-rounds-magazine", 1),
      PM.ingredient("pm-lead-plate", 3),
      PM.ingredient("pm-gunpowder", 2),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results =
    {
      PM.product("pm-high-density-magazine", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-vacuum-tube",
    enabled = false,
    subgroup = "pm-intermediates",
    energy_required = 7,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 6),
      PM.ingredient("pm-nickel-plate", 6),
      PM.ingredient("pm-glass-pane", 8),
      PM.ingredient("pm-vacuum-tube-getter", 1)
    },
    results =
    {
      PM.product("pm-vacuum-tube", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-vacuum-tube-getter",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-intermediates",
    energy_required = 7,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-caesium", 2, "fluid"),
      PM.ingredient("pm-rubidium", 1),
      PM.ingredient("pm-tungsten-plate", 6),
      PM.ingredient("pm-zirconia", 4)
    },
    results = 
    {
      PM.product("pm-vacuum-tube-getter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-CRT",
    enabled = false,
    subgroup = "pm-intermediates",
    energy_required = 28,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-CRT-screen", 1),
      PM.ingredient("pm-CRT-framing", 1),
      PM.ingredient("pm-aluminium-plate", 8)
    },
    results =
    {
      PM.product("pm-CRT", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-CRT-framing",
    enabled = false,
    energy_required = 14,
    allow_producitvity = true,
    ingredients = 
    {
      PM.ingredient("pm-vacuum-tube", 4),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-cadnium-plate", 6),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-indium-wire", 6)
    },
    results = 
    {
      PM.product("pm-CRT-framing", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-CRT-screen",
    enabled = false,
    energy_required = 14,
    allow_producitvity = true,
    ingredients = 
    {
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-glass-pane", 4)
    },
    results = 
    {
      PM.product("pm-CRT-screen", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-genevas-neglection-magazine",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "ammo",
    order = "a[basic-clips]-ca",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-phosgene", 10, "fluid"),
      PM.ingredient("piercing-rounds-magazine", 1),
      PM.ingredient("pm-thallium-plate", 4),
      PM.ingredient("pm-flourine", 6),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results =
    {
      PM.product("pm-genevas-neglection-magazine", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-carbon-monoxide", 10, "fluid"),
      PM.ingredient("pm-chlorine", 20, "fluid"),
      PM.ingredient("pm-carbon", 5)
    },
    results =
    {
      PM.product("pm-phosgene", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-logistic-robot",
    enabled = false,
    main_product = "pm-lithium-logistic-robot",
    ingredients =
    {
      PM.ingredient("logistic-robot", 1),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-lithium-ion-battery", 2)
    },
    results =
    {
      PM.product("pm-lithium-logistic-robot", 1),
      PM.product_range_chance("pm-vanadium-redox-battery", 1, 2, 0.66)
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-construction-robot",
    enabled = false,
    main_product = "pm-lithium-construction-robot",
    ingredients =
    {
      PM.ingredient("construction-robot", 1),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-lithium-ion-battery", 2)
    },
    results =
    {
      PM.product("pm-lithium-construction-robot", 1),
      PM.product_range_chance("pm-vanadium-redox-battery", 1, 2, 0.66)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-air-filters-rnm",
    order = "c",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-air-filter", 4),
      PM.ingredient("pm-lithium-bromide", 8),
      PM.ingredient("pm-gold-plate", 4),
      PM.ingredient("pm-silver-plate", 4)
    },
    results =
    {
      PM.product("pm-advanced-air-filter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-trace-gas-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-trace-gas-rnm",
    order = "b",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-trace-gas-air-filter", 1),
      PM.ingredient("pm-gold-plate", 3),
      PM.ingredient("pm-iodine", 2),
      PM.ingredient("pm-lightweight-framing", 6)
    },
    results =
    {
      PM.product("pm-advanced-trace-gas-air-filter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-travelling-wave-amplifier-tube",
    energy_required = 10,
    subgroup = "pm-intermediates",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-vacuum-tube", 1),
      PM.ingredient("pm-borosilicate-glass", 4),
      PM.ingredient("copper-cable", 10)
    },
    results =
    {
      PM.product("pm-travelling-wave-amplifier-tube", 1)
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
    allow_productivity = true,
    subgroup = "pm-borosilicate-glassing",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-borosilicate-glass", 4)
    },
    results =
    {
      PM.product("pm-science-bottle", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst",
    enabled = false,
    energy_required = 60,
    category = "crafting-with-fluid",
    subgroup = "pm-catalysts",
    order = "ha",
    ingredients =
    {
      PM.ingredient("pm-molybdenum-ore", 20),
      PM.ingredient("pm-nitrogen-gas", 15, "fluid"),
      PM.ingredient("pm-nickel-plate", 12),
      PM.ingredient("pm-red-phosphorus", 6),
      PM.ingredient("pm-lightweight-panelling", 16)
    },
    results =
    {
      PM.product_chance("pm-nitrogen-doped-nickel-molybdenum-phosphide-catalyst", 1, 0.7)
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
      PM.ingredient("pm-sodium", 6),
      PM.ingredient("water", 10, "fluid"),
      PM.ingredient("pm-basic-panelling", 4)
    },
    results = 
    {
      PM.product("pm-sodium-grenade", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-high-density-shotgun-shell",
    enabled = false,
    subgroup = "pm-shotgun-ammo",
    order = "c",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("piercing-shotgun-shell", 1),
      PM.ingredient("pm-bismuth-ore", 4),
      PM.ingredient("pm-tungsten-plate", 2),
      PM.ingredient("pm-gunpowder", 3),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results =
    {
      PM.product("pm-high-density-shotgun-shell", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-genevas-neglection-shotgun-shell",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-shotgun-ammo",
    order = "d",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-phosgene", 10, "fluid"),
      PM.ingredient("piercing-shotgun-shell", 1),
      PM.ingredient("pm-thallium-plate", 6),
      PM.ingredient("pm-gunpowder", 3),
      PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results =
    {
      PM.product("pm-genevas-neglection-shotgun-shell", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-shotgun-slug",
    enabled = false,
    subgroup = "pm-shotgun-ammo",
    order = "aa",
    energy_required = 2.5,
    ingredients = 
    {
      PM.ingredient("copper-plate", 4),
      PM.ingredient("pm-nickel-plate", 2)
    },
    results = 
    {
      PM.product("pm-shotgun-slug", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-heavy-piercing-shotgun-slug",
    enabled = false,
    subgroup = "pm-shotgun-ammo",
    order = "ba",
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-shotgun-slug", 4),
      PM.ingredient("pm-nickel-plate", 2)
    },
    results = 
    {
      PM.product("pm-heavy-piercing-shotgun-slug", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-high-density-shotgun-slug",
    enabled = false,
    subgroup = "pm-shotgun-ammo",
    order = "ca",
    energy_required = 7,
    ingredients =
    {
      PM.ingredient("pm-heavy-piercing-shotgun-slug", 1),
      PM.ingredient("pm-lead-plate", 4),
      PM.ingredient("pm-tungsten-plate", 8),
      PM.ingredient("pm-gunpowder", 4),
      PM.ingredient("pm-polyethylene-plastic", 4)
    },
    results =
    {
      PM.product("pm-high-density-shotgun-slug", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-genevas-neglection-shotgun-slug",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-shotgun-ammo",
    order = "da",
    energy_required = 7,
    ingredients =
    {
      PM.ingredient("pm-phosgene", 20, "fluid"),
      PM.ingredient("pm-heavy-piercing-shotgun-slug", 1),
      PM.ingredient("pm-thallium-plate", 6),
      PM.ingredient("pm-gunpowder", 4),
      PM.ingredient("pm-polyethylene-plastic", 4)
    },
    results =
    {
      PM.product("pm-genevas-neglection-shotgun-slug", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-empty-fuel-rod",
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "pm-fuel-rods",
    order = "a",
    energy_required = 10,
    ingredients = 
    {
      PM.ingredient("pm-boron", 25, "fluid"),
      PM.ingredient("pm-zircon", 10),
      PM.ingredient("pm-indium-wire", 5),
      PM.ingredient("processing-unit", 5),
      PM.ingredient("pm-radiation-resistant-panelling", 12)
    },
    results = 
    {
      PM.product("pm-empty-fuel-rod", 5)
    }
  },
  {
    type = "recipe",
    name = "pm-spent-fuel-rod-reprocessing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/spent-fuel-rod-reprocessing.png",
    enabled = false,
    energy_required = 10,
    category = "pm-advanced-crafting-with-fluid",
    subgroup = "pm-fuel-rods",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-spent-fuel-rod", 2),
      PM.ingredient("pm-boron", 7.5, "fluid")
    },
    results =
    {
      PM.product_range("pm-empty-fuel-rod", 1, 2),
      PM.product_range("pm-helium-gas", 3, 6, "fluid"),
      PM.product_range_chance("pm-carbon-dioxide-gas", 5, 9, 0.67, "fluid")

    }
  },
  {
    type = "recipe",
    name = "pm-lithium-sulfur-battery-equipment",
    subgroup = "pm-modular-storage",
    order = "c",
    enabled = false,
    energy_required = 12.5,
    ingredients = 
    {
      PM.ingredient("pm-lithium-sulfur-battery", 4),
      PM.ingredient("pm-fluid-circuit", 5),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-vulcanised-rubber", 10),
      PM.ingredient("pm-glass-pane", 10)
    },
    results = 
    {
      PM.product("pm-lithium-sulfur-battery-equipment", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-sulfur-battery-mk2-equipment",
    subgroup = "pm-modular-storage",
    order = "d",
    enabled = false,
    energy_required = 12.5,
    ingredients = 
    {
      PM.ingredient("pm-lithium-sulfur-battery-equipment", 4),
      PM.ingredient("pm-module-speed-light", 1),
      PM.ingredient("low-density-structure", 2),
      PM.ingredient("processing-unit", 5)
    },
    results = 
    {
      PM.product("pm-lithium-sulfur-battery-mk2-equipment", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-rocket-control-unit",
    enabled = false,
    energy_required = 35,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
      {
        PM.ingredient("pm-CRT", 1),
        PM.ingredient("pm-fluid-circuit", 3),
        PM.ingredient("processing-unit", 3),
        PM.ingredient("pm-heavy-lubricant", 8, "fluid"),
        PM.ingredient("pm-polyethylene-plastic", 6),
      },
    results = 
    {
      PM.product("pm-rocket-control-unit", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-ruby-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-ruby-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-ruby", 5),
    },
    results = 
    {
      PM.product("pm-ruby-dust", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-citrine-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-citrine-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-citrine", 5),
    },
    results = 
    {
      PM.product("pm-citrine-dust", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-emerald-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-emerald-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-emerald", 5),
    },
    results = 
    {
      PM.product("pm-emerald-dust", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-sapphire-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-sapphire", 5),
    },
    results = 
    {
      PM.product("pm-sapphire-dust", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-lapis-lazuli-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-lapis-lazuli", 5),
    },
    results = 
    {
      PM.product("pm-lapis-lazuli-dust", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-dust",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-garnet-ptm",
    order = "a",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-garnet", 5),
    },
    results = 
    {
      PM.product("pm-garnet-dust", 10)
    }
  },

  {
    type = "recipe",
    name = "pm-ruby-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ruby-leeching.png",
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-ruby-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-ruby-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-aluminium-ore", 6, 14),
      PM.product_range("pm-oxygen-gas", 10, 22, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-citrine-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/citrine-leeching.png",
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-citrine-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-citrine-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range_chance("pm-industrial-grade-silicon-ore", 1, 5, 0.75),
      PM.product_range("pm-oxygen-gas", 5, 11, "fluid"),
      PM.product_range_chance("iron-ore", 0, 3, 0.65)
    }
  },
  {
    type = "recipe",
    name = "pm-emerald-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/emerald-leeching.png",
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-emerald-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-emerald-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range_chance("pm-chrominum-ore", 2, 8, 0.7),
      PM.product_range("pm-beryllium-ore", 0, 6),
      PM.product_range("pm-oxygen-gas", 10, 22, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sapphire-leeching.png",
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-sapphire-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-sapphire-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-aluminium-ore", 5, 12),
      PM.product_range("pm-oxygen-gas", 12, 18, "fluid"),
      PM.product_range_chance("pm-boron", 0, 2, 0.12, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lapis-lazuli-leeching.png",
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-lapis-lazuli-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-lapis-lazuli-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-sodium", 4, 8),
      PM.product_range("sulfur", 2, 7),
      PM.product_range_chance("pm-calcite", 0, 3, 0.6),
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/garnet-leeching.png",
    energy_required = 5,
    category = "pm-crushing",
    subgroup = "pm-garnet-ptm",
    order = "b",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-garnet-dust", 5),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results = 
    {
      PM.product_range("pm-manganese-ore", 6, 14),
      PM.product_range_chance("pm-industrial-grade-silicon-ore", 1, 5, 0.55),
      PM.product_range("pm-calcium-ore", 4, 8),
    }
  },
  {
    type = "recipe",
    name = "pm-ruby-voiding",
    category = "pm-mixing",
    subgroup = "pm-ruby-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-ruby-dust",
    ingredients = 
    {
      PM.ingredient("pm-ruby-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-ruby-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-citrine-voiding",
    category = "pm-mixing",
    subgroup = "pm-citrine-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-citrine-dust",
    ingredients = 
    {
      PM.ingredient("pm-citrine-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-citrine-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-emerald-voiding",
    category = "pm-mixing",
    subgroup = "pm-emerald-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-emerald-dust",
    ingredients = 
    {
      PM.ingredient("pm-emerald-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-emerald-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli-voiding",
    category = "pm-mixing",
    subgroup = "pm-lapis-lazuli-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-lapis-lazuli-dust",
    ingredients = 
    {
      PM.ingredient("pm-lapis-lazuli-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-lapis-lazuli-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-voiding",
    category = "pm-mixing",
    subgroup = "pm-sapphire-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-sapphire-dust",
    ingredients = 
    {
      PM.ingredient("pm-sapphire-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-sapphire-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-voiding",
    category = "pm-mixing",
    subgroup = "pm-garnet-ptm",
    order = "ba",
    enabled = false,
    energy_required = 10,
    main_product = "pm-garnet-dust",
    ingredients = 
    {
      PM.ingredient("pm-garnet-dust", 5),
      PM.ingredient("pm-acidic-water", 20, "fluid"),
      PM.ingredient("water", 60, "fluid")
    },
    results = 
    {
      PM.ignored_range("pm-garnet-dust", 0, 4, 4),
      PM.product_range("water", 10, 45, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-saw",
    energy_required = 5,
    category = "advanced-crafting",
    subgroup = "pm-garnet-ptm",
    order = "d",
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-garnet-dust", 5),
      PM.ingredient("pm-lightweight-panelling", 5),
      PM.ingredient("pm-stainless-steel-alloy", 3)
    },
    results = 
    {
      PM.product("pm-saw", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cut-ruby",
    energy_required = 10,
    main_product = "pm-cut-ruby",
    subgroup = "pm-ruby-ptm",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-saw", 1),
      PM.ingredient("pm-ruby", 8)
    },
    results = 
    {
      PM.product_range("pm-cut-ruby", 0, 4),
      PM.catalyst_range_chance("pm-ruby", 2, 6, 0.9, 6),
      PM.catalyst_chance("pm-saw", 1, 0.98, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-cutting",
    energy_required = 10,
    main_product = "pm-cut-sapphire",
    subgroup = "pm-sapphire-ptm",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-saw", 1),
      PM.ingredient("pm-sapphire", 8)
    },
    results = 
    {
      PM.product_range("pm-cut-sapphire", 0, 4),
      PM.catalyst_range_chance("pm-sapphire", 2, 6, 0.9, 6),
      PM.catalyst_chance("pm-saw", 1, 0.98, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-ruby-laser-head",
    energy_required = 5,
    subgroup = "pm-ruby-ptm",
    order = "d",
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-cut-ruby", 2),
      PM.ingredient("pm-glass-pane", 8),
      PM.ingredient("pm-indium-wire", 8),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-heavyweight-panelling", 12)
    },
    results = 
    {
      PM.product("pm-ruby-laser-head", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-laser-head",
    energy_required = 5,
    subgroup = "pm-sapphire-ptm",
    order = "e",
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-titanium-sapphire", 1),
      PM.ingredient("pm-glass-pane", 6),
      PM.ingredient("pm-indium-wire", 6),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-heavyweight-panelling", 8)
    },
    results = 
    {
      PM.product("pm-sapphire-laser-head", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli-dye",
    energy_required = 12,
    category = "pm-washing",
    subgroup = "pm-lapis-lazuli-ptm",
    order = "c",
    enabled = false,
    main_product = "pm-cobalt-blue",
    ingredients = 
    {
      PM.ingredient("pm-lapis-lazuli-dust", 6),
      PM.ingredient("pm-oxygen-gas", 12, "fluid")
    },
    results = 
    {
      PM.product_range("pm-cobalt-blue", 4, 10),
      PM.product_range_chance("pm-sulfur-dioxide", 4, 8, 0.25, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-seawater-desaltination",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-desaltination.png",
    subgroup = "pm-garnet-ptm",
    order = "c",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 1.25,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-seawater", 150, "fluid"),
      PM.ingredient("pm-garnet-dust", 5)
    },
    results =
    {
      PM.product_range("water", 100, 120, "fluid"),
      PM.product_range("pm-sea-salt", 50, 95),
      PM.catalyst_range("pm-garnet-dust", 1, 5, 5)
    }
  },
  {
    type = "recipe",
    name = "pm-ruby-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-ruby-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-ruby-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-citrine-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-citrine-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-citrine-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-emerald-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-emerald-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-emerald-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-sapphire-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-sapphire-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-lapis-lazuli-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-lapis-lazuli-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-garnet-crystal-slurry",
    enabled = false,
    energy_required = 6,
    category = "pm-mixing",
    subgroup = "pm-garnet-ptm",
    order = "x",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-garnet-dust", 5),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium-sulfite", 2)
    },
    results = 
    {
      PM.product("pm-crystal-slurry", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-gunpowder",
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "ammo",
    order = "A",
    allow_producitvity = true,
    main_product = "pm-gunpowder",
    ingredients = 
    {
      PM.ingredient("pm-carbon", 20),
      PM.ingredient("sulfur", 6),
      PM.ingredient("pm-seawater", 50, "fluid")
    },
    results = 
    {
      PM.product("pm-gunpowder", 2),
      PM.product_range_chance("pm-acidic-water", 10, 15, 0.8, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-water-hydrogen-peroxide",
    enabled = false,
    energy_required = 10,
    category = "pm-electrolysis",
    subgroup = "pm-rockets",
    order = "a",
    allow_productivity = true,
    main_product = "pm-hydrogen-peroxide",
    ingredients = 
    {
      PM.ingredient("pm-oxygen-gas", 50, "fluid"),
      PM.ingredient("pm-hydrogen-gas", 50, "fluid")
    },
    results = 
    {
      PM.product_range_chance("pm-hydrogen-peroxide", 12, 25, 0.5, "fluid"),
      PM.product_range_chance("water", 12, 25, 0.5, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-silicon-wafer",
    enabled = false,
    energy_required = 2.5,
    subgroup = "pm-silicon-mt",
    order = "k",
    allow_productivity = true,
    main_product = "pm-silicon-wafer",
    ingredients = 
    {
      PM.ingredient("pm-polysilicon-rod", 1),
      PM.ingredient("pm-saw", 1)
    },
    results = 
    {
      PM.product("pm-silicon-wafer", 10),
      PM.catalyst_chance("pm-saw", 1, 0.98, 1)
    }
  },
  {
    type = "recipe",
    name = "pm-barely-etched-silicon-wafer",
    enabled = false,
    energy_required = 7.5,
    category = "pm-advanced-crafting-with-fluid",
    subgroup = "pm-silicon-mt",
    order = "l",
    ingredients = 
    {
      PM.ingredient("pm-silicon-wafer", 1),
      PM.ingredient("pm-ferric-chloride", 10, "fluid")
    },
    results = 
    {
      PM.product("pm-barely-etched-silicon-wafer", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-etched-silicon-wafer",
    enabled = false,
    energy_required = 7.5,
    category = "pm-advanced-crafting-with-fluid",
    subgroup = "pm-silicon-mt",
    order = "la",
    ingredients = 
    {
      PM.ingredient("pm-barely-etched-silicon-wafer", 1),
      PM.ingredient("pm-phosphoric-acid", 10, "fluid"),
    },
    results = 
    {
      PM.product("pm-etched-silicon-wafer", 1),
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-electronic-circuit-breadboard",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/circuit-breadboard.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/germanium-ore-icon.png",
        icon_size = 64,
        scale = 0.4
      },
    },
    enabled = false,
    energy_required = 1,
    subgroup = "pm-advanced-circuits",
    order = "a",
    allow_productivity = true,
    show_amount_in_title = true,
    ingredients = 
    {
      PM.ingredient("pm-germanium-ore", 2),
      PM.ingredient("pm-glass-fibers", 3),
      PM.ingredient("pm-nickel-plate", 4)
    },
    results = 
    {
      PM.product("pm-electronic-breadboard", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-electronic-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-basic-integrated-circuits.png",
    enabled = false,
    subgroup = "pm-advanced-circuits",
    order = "b",
    allow_productivity = true,
    show_amount_in_title = true,
    ingredients = 
    {
      PM.ingredient("pm-etched-silicon-wafer", 1),
      PM.ingredient("pm-tin-plate", 4),
      PM.ingredient("pm-gold-wire", 2)
    },
    results = 
    {
      PM.product("pm-electronic-integrated-circuits", 9)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-fluid-circuit-breadboard",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluid-circuit-breadboard.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/germanium-ore-icon.png",
        icon_size = 64,
        scale = 0.4
      },
    },
    energy_required = 1.5,
    subgroup = "pm-advanced-circuits",
    order = "c",
    enabled = false,
    allow_productivity = true,
    show_amount_in_title = true,
    ingredients =
    {
      PM.ingredient("pm-electronic-breadboard", 1),
      PM.ingredient("pm-germanium-ore", 2),
      PM.ingredient("pm-glass-fibers", 3),
      PM.ingredient("pm-vulcanised-rubber", 4)
    },
    results =
    {
      PM.product("pm-fluid-breadboard", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-fluid-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-fluid-integrated-circuits.png",
    energy_required = 1,
    subgroup = "pm-advanced-circuits",
    order = "d",
    show_amount_in_title = true,
    enabled = false, 
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-etched-silicon-wafer", 1),
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("pm-titanium-plate", 2),
      PM.ingredient("pm-tin-plate", 2),
    },
    results =
    {
      PM.product("pm-fluid-integrated-circuits", 9)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-advanced-circuit-breadboard",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/advanced-circuit-breadboard.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/germanium-ore-icon.png",
        icon_size = 64,
        scale = 0.4
      },
    },
    energy_required = 3,
    subgroup = "pm-advanced-circuits",
    order = "e",
    enabled = false,
    allow_productivity = true,
    show_amount_in_title = true,
    ingredients =
    {
      PM.ingredient("pm-germanium-ore", 3),
      PM.ingredient("pm-palladium-plate", 6),
      PM.ingredient("pm-glass-fibers", 4),
      PM.ingredient("pm-fluid-breadboard", 1),
    },
    results = 
    {
      PM.product("pm-advanced-circuit-breadboard", 6)
    },
  },
  {
    type = "recipe",
    name = "pm-advanced-advanced-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-advanced-integrated-circuits.png",
    energy_required = 1,
    subgroup = "pm-advanced-circuits",
    order = "f",
    show_amount_in_title = true,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polytetrafluoroethylene", 2),
      PM.ingredient("pm-tin-plate", 2),
      PM.ingredient("pm-etched-silicon-wafer", 2),
      PM.ingredient("pm-indium-wire", 3),
    },
    results = 
    {
      PM.product("pm-advanced-integrated-circuits", 9)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-processing-circuit-breadboard",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/processing-breadboard.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/germanium-ore-icon.png",
        icon_size = 64,
        scale = 0.4
      },
    },
    energy_required = 4.5,
    category = "pm-advanced-crafting-with-fluid",
    subgroup = "pm-advanced-circuits",
    order = "g",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-germanium-ore", 3),
      PM.ingredient("pm-ferric-chloride", 5, "fluid"),
      PM.ingredient("pm-boron", 5, "fluid"),
      PM.ingredient("pm-glass-fibers", 6),
      PM.ingredient("pm-advanced-circuit-breadboard", 1),
      PM.ingredient("pm-cobalt-blue", 4)
    },
    results = 
    {
      PM.product("pm-processing-breadboard", 6)
    },
  },
  {
    type = "recipe",
    name = "pm-advanced-processing-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-processing-integrated-circuits.png",
    energy_required = 1,
    subgroup = "pm-advanced-circuits",
    order = "h",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-etched-silicon-wafer", 2),
      PM.ingredient("pm-tin-plate", 4),
      PM.ingredient("pm-gallium-arsenide", 2),
      PM.ingredient("pm-indium-wire", 3),
    },
    results =
    {
      PM.product("pm-processing-integrated-circuits", 9)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-semiconductor",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/advanced-semiconfuctor.png",
    enabled = false,
    energy_required = 3,
    category = "crafting-with-fluid",
    subgroup = "pm-advanced-circuits",
    order = "i",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-advanced-integrated-circuits", 3),
      PM.ingredient("pm-etched-silicon-wafer", 2),
      PM.ingredient("pm-germanium-ore", 3),
      PM.ingredient("pm-thallium-plate", 5),
      PM.ingredient("pm-phosphoric-acid", 6, "fluid")
    },
    results =
    {
      PM.product("pm-semiconductor", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-dimethyldichlorosilane",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-silicon-mt",
    order = "db",
    main_product = "pm-dimethyldichlorosilane",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-dichlorosilane", 8, "fluid"),
      PM.ingredient("copper-plate", 4),
      PM.ingredient("pm-industrial-grade-silicon-ore", 2),
      PM.ingredient("pm-methyl-chloride", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-dimethyldichlorosilane", 4, "fluid"),
      PM.product_range("pm-hydrochloric-acid", 2, 4, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-silicone",
    enabled = false,
    energy_required = 3,
    category = "pm-washing",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-dimethyldichlorosilane", 4, "fluid"),
      PM.ingredient("water", 10, "fluid")
    },
    results = 
    {
      PM.product("pm-liquid-silicone", 2, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-tri-to-dichlorosilane",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tri-to-dichlorosilane.png",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    main_product = "pm-dichlorosilane",
    ingredients = 
    {
      PM.ingredient("pm-trichlorosilane", 8, "fluid"),
      PM.ingredient("pm-hydrogen-gas", 16, "fluid")
    },
    results =
    {
      PM.product_range("pm-dichlorosilane", 2, 8, "fluid"),
      PM.product_range("pm-hydrochloric-acid", 4, 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-di-to-trichlorosilane",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/di-to-trichlorosilane.png",
    energy_required = 2,
    enabled = false,
    category = "pm-moltening",
    main_product = "pm-trichlorosilane",
    ingredients = 
    {
      PM.ingredient("pm-dichlorosilane", 8, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 4)
    },
    results =
    {
      PM.product_range("pm-trichlorosilane", 2, 8, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-concrete-slurry",
    enabled = false,
    energy_required = 10,
    category = "pm-mixing",
    subgroup = "terrain",
    order = "A",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-calcium-dust", 8),
      PM.ingredient("pm-bitumen", 6),
      PM.ingredient("water", 75, "fluid"),
      PM.ingredient("stone-brick", 10)
    },
    results = 
    {
      PM.product("pm-concrete-slurry", 50, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-polydimethylsiloxane",
    energy_required = 8,
    enabled = false,
    category = "chemistry",
    allow_productivity = true,
    main_product = "pm-polydimethylsiloxane",
    ingredients = 
    {
      PM.ingredient("pm-liquid-silicone", 4, "fluid"),
      PM.ingredient("water", 40, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 3)
    },
    results = 
    {
      PM.product("pm-polydimethylsiloxane", 8, "fluid"),
      PM.catalyst_range_chance("pm-cobalt-catalyst", 2, 3, 0.8, 2),
      PM.product_range_chance("pm-catalyst-container", 0, 1, 0.2),
      PM.product_range("pm-hydrochloric-acid", 8, 12, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-light-coolant",
    category = "chemistry",
    energy_required = 8,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polydimethylsiloxane", 8, "fluid"),
      PM.ingredient("pm-helium-gas", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-light-coolant", 10, "fluid")
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("iron-plate", 2),
      PM.ingredient("pm-plastic-science-bottle", 1),
      PM.ingredient("pm-nickel-plate", 2),
    },
    results =
    {
      PM.product("automation-science-pack", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-plate", 5),
      PM.ingredient("pm-plastic-science-bottle", 1),
      PM.ingredient("pm-liquid-mercury", 25, "fluid"),
      PM.ingredient("pm-manganese-plate", 5),
    },
    results =
    {
      PM.product("logistic-science-pack", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-titanium-ore", 8),
      PM.ingredient("pm-tungsten-ore", 8),
      PM.ingredient("pm-silver-plate", 15),
      PM.ingredient("copper-plate", 15),
      PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-advanced-advanced-transition-metal-science-pack", 2),
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-plastic-science-bottle", 1),
      PM.ingredient("pm-chlorine", 14 * 2, "fluid"),
      PM.ingredient("pm-nitrogen-gas", 14 * 2, "fluid"),
      PM.ingredient("pm-carbon", 14 * 2),
      PM.ingredient("sulfur", 14)
    },
    results =
    {
      PM.product("chemical-science-pack", 2)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 10),
      PM.ingredient("pm-tin-plate", 5),
      PM.ingredient("pm-lead-plate", 8),
      PM.ingredient("pm-thallium-ore", 3),
      PM.ingredient("pm-bismuth-ore", 8),
      PM.ingredient("pm-liquid-gallium", 10, "fluid"),
      PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-post-transition-metal-science-pack", 2),
    }
  },{
    type = "recipe",
    name = "pm-plastic-alkali-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-alkali-metals-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "f",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium", 5, "fluid"),
      PM.ingredient("pm-potassium", 12),
      PM.ingredient("pm-sodium", 20),
      PM.ingredient("pm-lithium-ore", 10),
      PM.ingredient("pm-rubidium", 2),
      PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-alkali-metal-science-pack", 2),
    }
  },
  {
    type = "recipe",
    name = "pm-plastic-metalloid-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-metalloid-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "g",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-antimony-ore", 6),
      PM.ingredient("pm-arsenic-ore", 6),
      PM.ingredient("pm-boron", 16, "fluid"),
      PM.ingredient("pm-tellurium-plate", 10),
      PM.ingredient("pm-germanium-ore", 4),
      PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
      PM.product("pm-metalloid-science-pack", 2),
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium", 3, "fluid"),
      PM.ingredient("pm-science-bottle", 5),
      PM.ingredient("pm-transition-metals-ore", 10)
    },
    results =
    {
      PM.product("automation-science-pack", 5)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium", 3, "fluid"),
      PM.ingredient("pm-science-bottle", 5),
      PM.ingredient("pm-transition-metals-ore", 20)
    },
    results =
    {
      PM.product("logistic-science-pack", 5)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium", 3, "fluid"),
      PM.ingredient("pm-science-bottle", 5),
      PM.ingredient("pm-transition-metals-ore", 40)
    },
    results =
    {
      PM.product("pm-advanced-advanced-transition-metal-science-pack", 5)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium", 3, "fluid"),
      PM.ingredient("pm-science-bottle", 5),
      PM.ingredient("pm-transition-metals-ore", 15),
      PM.ingredient("pm-post-transition-metals-ore", 15)
    },
    results =
    {
      PM.product("chemical-science-pack", 5)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium", 3, "fluid"),
      PM.ingredient("pm-science-bottle", 5),
      PM.ingredient("pm-post-transition-metals-ore", 20)
    },
    results =
    {
      PM.product("pm-post-transition-metal-science-pack", 5)
    }
  },

} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["chemical-science-pack"].order = "e"
data.raw["recipe"]["production-science-pack"].order = "x"
data.raw["recipe"]["utility-science-pack"].order = "xa"

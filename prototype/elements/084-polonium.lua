data:extend({

  {
    type = "item",
    name = "pm-bismuth-210",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-210-icon.png",
    subgroup = "pm-polonium-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-polonium-210",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-polonium-ptm",
    order = "b",
    protons = 84,
    neutrons = 126,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-proton-beam",
    energy_required = 10,
    enabled = false,
    category = "pm-electrolysis",
    subgroup = "pm-polonium-ptm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-gas", 20, "fluid")
    },
    results =
    {
      PM.product("pm-proton-beam", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-210",
    enabled = false,
    energy_required = 10,
    category = "pm-cyclotroning",
    subgroup = "pm-polonium-ptm",
    main_product = "pm-bismuth-210",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-bismuth-ore", 30)
    },
    results =
    {
      PM.product_range_chance("pm-bismuth-ore", 4, 15, 0.25),
      PM.product_range_chance("pm-bismuth-210", 6, 15, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-210",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-210-decay.png",
    enabled = false,
    energy_required = 15,
    category = "pm-beta-decay",
    subgroup = "pm-polonium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-bismuth-210", 5)
    },
    results =
    {
      PM.catalyst_range("pm-polonium-210", 2, 3, 2),
      PM.catalyst_range("pm-bismuth-210", 2, 3, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-fuel-cell",
    enabled = false,
    energy_required = 15,
    subgroup = "pm-polonium-ptm",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polonium-210", 12),
      PM.ingredient("pm-empty-reactor-cell", 2)
    },
    results =
    {
      PM.product("pm-polonium-fuel-cell", 2)
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
      PM.ingredient("pm-used-up-polonium-fuel-cell", 10),
    },
    results =
    {
      PM.product_range("pm-empty-reactor-cell", 3, 5),
      PM.product_range("pm-lead-ore", 1, 5),
      PM.product_range("pm-helium-gas", 2, 5, "fluid"),
      PM.product_chance("pm-bismuth-210", 4, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-sassxolotl-enrichment",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/polonium-sassxolotl-enrichment.png",
    category = "centrifuging",
    subgroup = "pm-polonium-ptm",
    order = "e",
    enabled = false,
    energy_required = 15,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polonium-210", 20),
      PM.ingredient("pm-bismuth-210", 2),
      PM.ingredient("pm-trace-astatine-211", 2)
    },
    results =
    {
      PM.catalyst("pm-polonium-210", 24, 20),
      PM.catalyst("pm-bismuth-210", 1, 1),
      PM.catalyst("pm-trace-astatine-211", 1, 1)
    }
  },

  {
    type = "recipe",
    name = "pm-polonium-fuel-rod",
    enabled = false,
    subgroup = "pm-fuel-rods",
    order = "c",
    energy_required = 15,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-polonium-fuel-cell", 1),
      PM.ingredient("pm-empty-fuel-rod", 5)
    },
    results = 
    {
      PM.product("pm-polonium-fuel-rod", 5)
    }
  },
})

local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-bismuth-210",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-210-icon.png",
    icon_mipmaps = 4,
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
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon-2.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-polonium-ptm",
    order = "b",
    stack_size = 200
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
      PM.ingredient("pm-hydrogen-gas", 20, "fluid")
    },
    results =
    {
      PM.product("pm-proton-beam", 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-proton-bombardment",
    enabled = false,
    energy_required = 60,
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
      PM.product_range_chance("pm-bismuth-ore", 8, 14, 0.8),
      PM.product_range_chance("pm-bismuth-210", 2, 10, 0.6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bismuth-210-decaying",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-210-decay.png",
    enabled = false,
    energy_required = 50,
    category = "advanced-crafting",
    subgroup = "pm-polonium-ptm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-bismuth-210", 5)
    },
    results =
    {
      PM.product_range_chance("pm-polonium-210", 2, 3, 0.55),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-polonium-fuel-cell",
    enabled = false,
    energy_required = 10,
    subgroup = "pm-polonium-ptm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-polonium-210", 20),
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
      PM.product_chance("pm-bismuth-210", 4, 0.7)
    }
  },

  {
    type = "recipe",
    name = "pm-polonium-fuel-rod",
    --enabled = false,
    subgroup = "pm-polonium-ptm",
    order = "ca",
    energy_required = 10,
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

local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-lead-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lead-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lead-chunks.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/lead-chunks-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-lead-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lead-powder",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/lead-powder.png",
    subgroup = "pm-lead-ptm",
    order = "b",
    stack_size = 120
  },
  {
    type = "item",
    name = "pm-impure-lead",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore-2.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-lead-ptm",
    order = "c",
    stack_size = 80
  },

  {
    type = "recipe",
    name = "pm-lead-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/lead-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      }
    },
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
    subgroup = "pm-lead-ptm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lead-chunks", 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lead-crushing",
    enabled = false,
    energy_required = 3,
    category = "pm-crushing",
    subgroup = "pm-lead-ptm",
    order = "b",
    main_product = "pm-lead-powder",
    ingredients =
    {
      PM.ingredient("pm-lead-chunks", 4)
    },
    results =
    {
      PM.product_range("pm-lead-powder", 6, 8),
      PM.product_chance("pm-mixed-ore-slag", 2, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lead-frothing",
    enabled = false,
    energy_required = 8,
    category = "pm-washing",
    subgroup = "pm-lead-ptm",
    order = "c",
    main_product = "pm-lead-froth",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-lead-powder", 4),
      PM.ingredient("water", 100, "fluid"),
    },
    results =
    {
      PM.product("pm-lead-froth", 30, "fluid"),
      PM.product_range("pm-acidic-water", 10, 20, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lead-froth-skimming",
    enabled = false,
    energy_required = 8,
    category = "pm-washing",
    subgroup = "pm-lead-ptm",
    order = "d",
    main_product = "pm-impure-lead",
    allow_productivty = true,
    ingredients =
    {
      PM.ingredient("pm-lead-froth", 10, "fluid"),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results =
    {
      PM.product_chance("pm-thallium-ore", 2, 0.2),
      PM.catalyst_range("pm-flux-container", 1, 2, 2),
      PM.product("pm-impure-lead", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lead-purifying",
    enabled = false,
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-lead-ptm",
    order = "e",
    main_product = "pm-lead-ore",
    ingredients =
    {
      PM.ingredient("pm-impure-lead", 2),
      PM.ingredient("pm-carbon", 4),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lead-ore", 4)
    }
  } --[[@as data.RecipePrototype]]
})

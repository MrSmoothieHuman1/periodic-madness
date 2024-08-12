local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-flourite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/flourite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/flourite.png",   size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/flourite-2.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/flourite-3.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-flourine-rnm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-flourine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/flourine.png",
    subgroup = "pm-flourine-rnm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-calcium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/calcium-sulfate.png",
    subgroup = "pm-flourine-rnm",
    order = "c",
    stack_size = 300
  },

  {
    type = "recipe",
    name = "pm-flourite-crystallisation",
    enabled = false,
    energy_required = 24,
    category = "pm-washing",
    subgroup = "pm-flourine-rnm",
    order = "a",
    main_product = "pm-flourite",
    ingredients =
    {
      PM.ingredient("stone", 20),
      PM.ingredient("pm-calcium-ore", 10),
      PM.ingredient("water", 60, "fluid"),
      PM.ingredient("pm-post-transition-metals-ore", 5)
    },
    results =
    {
      PM.product("pm-flourite", 8),
      PM.product_range_chance("stone", 10, 15, 0.8),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-flouride",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    "crafting-with-fluid",
    subgroup = "pm-flourine-rnm",
    order = "c",
    main_product = "pm-hydrogen-flouride",
    ingredients =
    {
      PM.ingredient("pm-flourite", 2),
      PM.ingredient("sulfuric-acid", 5, "fluid")
    },
    results =
    {
      PM.product_range("pm-calcium-sulfate", 4, 8),
      PM.product("pm-hydrogen-flouride", 8, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydroflouric-acid",
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "pm-flourine-rnm",
    order = "d",
    main_product = "pm-hydroflouric-acid",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-flouride", 8, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 2),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-hydroflouric-acid", 20, "fluid"),
      PM.product_range("pm-catalyst-container", 1, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydroflouric-acid-filtering",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-flourine-rnm",
    order = "e",
    main_product = "pm-flourine",
    ingredients =
    {
      PM.ingredient("pm-hydroflouric-acid", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-flourine", 3),
      PM.product_range("pm-sulfur-dioxide", 2, 5, "fluid")
    },
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-better-flourite-crystallisation",
    enabled = false,
    energy_required = 12,
    category = "pm-crystallisation",
    subgroup = "pm-flourine-rnm",
    order = "b",
    main_product = "pm-flourite",
    ingredients =
    {
      PM.ingredient("stone", 10),
      PM.ingredient("pm-calcium-ore", 5),
      PM.ingredient("pm-post-transition-metals-ore", 5),
      PM.ingredient("pm-liquid-mercury", 30, "fluid")
    },
    results =
    {
      PM.product("pm-flourite", 16),
    }
  } --[[@as data.RecipePrototype]],
})

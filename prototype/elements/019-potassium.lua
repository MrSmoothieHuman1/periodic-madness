data:extend({

  {
    type = "item",
    name = "pm-anhydrite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/androgynite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/androgynite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/androgynite-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-potassium-am",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sylvite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sylvite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/sylvite.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-potassium-am",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-potash",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/potash.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/potash.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/potash-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-potassium-am",
    order = "c",
    stack_size = 350
  },
  {
    type = "item",
    name = "pm-potassium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-potassium-am",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-seawater-evaporite",
    enabled = false,
    energy_required = 3,
    category = "pm-evaporation",
    subgroup = "pm-potassium-am",
    order = "a",
    main_product = "pm-sylvite",
    ingredients =
    {
      PM.ingredient("pm-seawater", 50, "fluid"),
      PM.ingredient("pm-alkali-metals-ore", 8)
    },
    results =
    {
      PM.product_range("pm-calcite", 0, 4),
      PM.product_range("pm-anhydrite", 3, 6),
      PM.product_range("pm-sylvite", 4, 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sylvite-seperation",
    enabled = false,
    energy_required = 3,
    category = "pm-crushing",
    subgroup = "pm-potassium-am",
    order = "b",
    main_product = "pm-potash",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sylvite", 5)
    },
    results =
    {
      PM.product_range("pm-potash", 2, 4),
      PM.product_chance("stone", 5, 0.85)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-anhydrite-seperation",
    enabled = false,
    energy_required = 3,
    category = "pm-crushing",
    subgroup = "pm-potassium-am",
    order = "c",
    main_product = "pm-calcium-sulfate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-anhydrite", 10)
    },
    results =
    {
      PM.product_range_chance("pm-calcium-sulfate", 1, 5, 0.75),
      PM.product("pm-potash", 3),
      PM.product_range_chance("pm-sodium", 0, 3, 0.15)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-potash-potassium",
    enabled = false,
    energy_required = 2.5,
    category = "chemistry",
    subgroup = "pm-potassium-am",
    order = "d",
    main_product = "pm-potassium",
    ingredients =
    {
      PM.ingredient("pm-potash", 6),
      PM.ingredient("pm-sodium", 6)
    },
    results =
    {
      PM.product("pm-sea-salt", 6),
      PM.product("pm-potassium", 6)
    }
  } --[[@as data.RecipePrototype]]
})

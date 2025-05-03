local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-zirconium-sand",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/zirconium-sand.png",
    subgroup = "pm-zirconium-tm",
    order = "a",
    stack_size = 100 / 2
  },
  {
    type = "item",
    name = "pm-zircon",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zircon.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zircon.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zircon-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-zirconium-tm",
    order = "b",
    stack_size = 100,
  },
  {
    type = "item",
    name = "pm-zirconia",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zirconia.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-zirconium-tm",
    order = "c",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-zirconium-sand",
    enabled = false,
    energy_required = 9,
    category = "pm-acids",
    subgroup = "pm-zirconium-tm",
    order = "a",
    main_product = "pm-zirconium-sand",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-seawater", 20, "fluid"),
      PM.ingredient("pm-acidic-water", 25, "fluid")
    },
    results =
    {
      PM.product("pm-zirconium-sand", 8),
      PM.product_chance("water", 10, 0.7, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-zircon",
    enabled = false,
    energy_required = 6,
    category = "pm-evaporation",
    subgroup = "pm-zirconium-tm",
    order = "b",
    main_product = "pm-zircon",
    ingredients =
    {
      PM.ingredient("pm-zirconium-sand", 4)
    },
    results =
    {
      PM.product("pm-zircon", 2),
      PM.product_range("pm-sand", 1, 4),
      PM.product_chance("pm-titanium-ore", 2, 0.22)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-zirconia",
    enabled = false,
    energy_required = 9,
    subgroup = "pm-zirconium-tm",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zircon", 8),
      PM.ingredient("pm-coke", 4)
    },
    results =
    {
      PM.product("pm-zirconia", 6)
    }
  },

})

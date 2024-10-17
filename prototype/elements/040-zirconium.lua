local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-zirconium-sand",
    icon_size = 128,
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
      { filename = "__periodic-madness__/graphics/icons/ores/zircon.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/zircon-2.png", size = 64, scale = 0.25 },
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
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia-2.png", size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/zirconia-3.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-zirconium-tm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-zirconium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zirconium-ore-icon.png",
    subgroup = "pm-zirconium-tm",
    order = "d",
    stack_size = 200
  },


  {
    type = "recipe",
    name = "pm-zirconium-leeching",
    enabled = false,
    energy_required = 9,
    category = "pm-acids",
    subgroup = "pm-zirconium-tm",
    order = "a",
    main_product = "pm-zirconium-sand",
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
    name = "pm-zirconium-sand-filtering",
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
  {
    type = "recipe",
    name = "pm-zirconium",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-zirconium-tm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-zircon", 2),
      PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-zirconium-ore", 4),
    }
  } --[[@as data.RecipePrototype]],


})

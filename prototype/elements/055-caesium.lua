data:extend({

  {
    type = "item",
    name = "pm-pollucite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/pollucite.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/pollucite.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/pollucite-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-caesium-am",
    order = "A",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-fine-pollucite-powder",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/pollucite-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/pollucite-powder.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/pollucite-powder-2.png", size = 128, scale = 0.25 },
    },
    subgroup = "pm-caesium-am",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-caesium-hexachlorocerate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/caesium-hexachlorocerate-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-caesium-am",
    order = "b",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-caesium-iodine-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/caesium-iodine-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/caesium-iodine-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/caesium-iodine-chloride-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-caesium-am",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-caesium-antimony-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/caesium-antimony-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/caesium-antimony-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/caesium-antimony-chloride-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-caesium-am",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-caesium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/caesium-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/caesium-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/caesium-chloride-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-caesium-am",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-caesium-glass-ampule",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/caesium-glass-ampule.png",
    subgroup = "pm-caesium-am",
    order = "f",
    protons = 55,
    neutrons = 78,
    stack_size = 25
  },

  {
    type = "recipe",
    name = "pm-pollucite-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/pollucite.png",
        icon_size = 64,
        scale = 0.5
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    enabled = false,
    energy_required = 15,
    categories = {"pm-acids"},
    subgroup = "pm-caesium-am",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-alkali-metals-ore", 16),
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-pollucite"):amount(6, 12):done()
    }
  },
  {
    type = "recipe",
    name = "pm-pollucite-crushing",
    enabled = false,
    energy_required = 10,
    categories = {"pm-crushing"},
    subgroup = "pm-caesium-am",
    order = "b",
    main_product = "pm-fine-pollucite-powder",
    ingredients =
    {
      PM.ingredient("pm-pollucite", 12),
    },
    results =
    {
      PM.product("pm-fine-pollucite-powder"):amount(14):done(),
      PM.product("pm-alkali-metals-ore"):amount(0, 4):chance(0.5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-pollucite-seperation",
    enabled = false,
    energy_required = 8,
    categories = {"chemistry"},
    subgroup = "pm-caesium-am",
    order = "c",
    main_product = "pm-caesium-iodine-chloride",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-fine-pollucite-powder", 12),
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-caesium-hexachlorocerate"):amount(2, 6):done(),
      PM.product("pm-caesium-iodine-chloride"):amount(2, 6):done(),
      PM.product("pm-caesium-antimony-chloride"):amount(2, 6):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-iodine-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-iodine-to-chloride.png",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-caesium-am",
    order = "d",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium-iodine-chloride", 4),
      PM.ingredient("pm-hydrochloric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-caesium-chloride"):amount(2, 5):chance(0.75):done(),
      PM.product("pm-chlorine", "fluid"):amount(2.5, 5):done(),
      PM.product("pm-iodine"):amount(0, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-antimony-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-antimony-to-chloride.png",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-caesium-am",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium-antimony-chloride", 4),
      PM.ingredient("pm-hydrochloric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-caesium-chloride"):amount(2, 5):chance(0.75):done(),
      PM.product("pm-hydrogen-gas", "fluid"):amount(2.5, 5):done(),
      PM.product("pm-antimony-ore"):amount(0, 2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-hexachlorocerate-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-hexachlorocerate-to-chloride.png",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
    subgroup = "pm-caesium-am",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium-hexachlorocerate", 4),
      PM.ingredient("pm-hydrochloric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-caesium-chloride"):amount(2, 5):chance(0.75):done(),
      PM.product("pm-hydrochloric-acid", "fluid"):amount(7.5, 10):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-glass-ampule",
    enabled = false,
    energy_required = 8,
    categories = {"pm-washing"},
    subgroup = "pm-caesium-am",
    main_product = "pm-caesium-glass-ampule",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-caesium-chloride", 6),
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("pm-empty-glass-ampule", 2)
    },
    results =
    {
      PM.product("pm-caesium-glass-ampule"):amount(2):done(),
    }
  },
})

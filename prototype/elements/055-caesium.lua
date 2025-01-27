local PM = require("library")
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
    energy_required = 8,
    category = "pm-acids",
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
      PM.product("pm-pollucite", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-pollucite-crushing",
    enabled = false,
    energy_required = 8,
    category = "pm-crushing",
    subgroup = "pm-caesium-am",
    order = "b",
    main_product = "pm-fine-pollucite-powder",
    ingredients =
    {
      PM.ingredient("pm-pollucite", 12),
    },
    results =
    {
      PM.product_range("pm-fine-pollucite-powder", 6, 8),
      PM.product_range_chance("pm-alkali-metals-ore", 0, 2, 0.6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-pollucite-seperation",
    enabled = false,
    energy_required = 12,
    category = "chemistry",
    subgroup = "pm-caesium-am",
    order = "c",
    main_product = "pm-caesium-hexachlorocerate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-fine-pollucite-powder", 12),
      PM.ingredient("pm-hydrochloric-acid", 50, "fluid")
    },
    results =
    {
      PM.product("pm-caesium-hexachlorocerate", 2),
      PM.product_range_chance("pm-caesium-iodine-chloride", 2, 5, 0.6),
      PM.product_range_chance("pm-caesium-antimony-chloride", 2, 5, 0.6),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-caesium-iodine-to-antimony",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-iodine-to-antimony.png",
    enabled = false,
    energy_required = 4,
    subgroup = "pm-caesium-am",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-caesium-iodine-chloride", 4),
      PM.ingredient("pm-caesium-hexachlorocerate", 3)
    },
    results =
    {
      PM.product("pm-caesium-antimony-chloride", 4),
      PM.product_range("pm-iodine", 0, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-antimony-to-iodine",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-antimony-to-iodine.png",
    enabled = false,
    energy_required = 4,
    subgroup = "pm-caesium-am",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-caesium-antimony-chloride", 4),
      PM.ingredient("pm-caesium-hexachlorocerate", 3)
    },
    results =
    {
      PM.product("pm-caesium-iodine-chloride", 4),
      PM.product_range("pm-antimony-ore", 0, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-hexachlorocerate-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/caesium-hexachlorocerate-seperation.png",
    enabled = false,
    energy_required = 4,
    subgroup = "pm-caesium-am",
    order = "ea",
    ingredients =
    {
      PM.ingredient("pm-caesium-hexachlorocerate", 20)
    },
    results =
    {
      PM.product("pm-caesium-iodine-chloride", 4),
      PM.product("pm-caesium-antimony-chloride", 4),
    }
  },
  {
    type = "recipe",
    name = "pm-caesium-chloride",
    enabled = false,
    energy_required = 6,
    subgroup = "pm-caesium-am",
    order = "f",
    main_product = "pm-caesium-chloride",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium-iodine-chloride", 4),
      PM.ingredient("pm-caesium-antimony-chloride", 4),
      PM.ingredient("pm-calcium-ore", 6)
    },
    results =
    {
      PM.product("pm-caesium-chloride", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-calcium-chloride-caesium-chloride",
    enabled = false,
    energy_required = 6,
    subgroup = "pm-caesium-am",
    order = "fa",
    main_product = "pm-caesium-chloride",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-caesium-iodine-chloride", 4),
      PM.ingredient("pm-caesium-antimony-chloride", 4),
      PM.ingredient("pm-calcium-chloride", 3)
    },
    results =
    {
      PM.product("pm-caesium-chloride", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-caesium",
    enabled = false,
    energy_required = 8,
    category = "pm-washing",
    subgroup = "pm-caesium-am",
    main_product = "pm-caesium",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-caesium-chloride", 6),
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-caesium", 5, "fluid"),
      PM.product("pm-chlorine", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]]
})

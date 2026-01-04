data:extend({

  {
    type = "item",
    name = "pm-caesium-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/caesium-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-30-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/31-rubidium-alum.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 350
  }, --sounds like a skill issue ngl
  {
    type = "item",
    name = "pm-50-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/51-rubidium-alum.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-rubidium-am",
    order = "c",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-70-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-rubidium-am",
    order = "d",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-rubidium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/rubidium.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/rubidium.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/rubidium-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-rubidium-am",
    order = "e",
    protons = 37,
    neutrons = 46,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-caesium-rubidium-alum",
    enabled = false,
    category = "pm-moltening",
    subgroup = "pm-rubidium-am",
    order = "a",
    energy_required = 6,
    main_product = "pm-caesium-rubidium-alum",
    ingredients =
    {
      PM.ingredient("pm-pollucite", 3),
      PM.ingredient("pm-caesium-glass-ampule", 1),
      PM.ingredient("pm-aluminium-plate", 6)
    },
    results =
    {
      PM.product_range("pm-caesium-rubidium-alum", 3, 6),
      PM.product_range_chance("pm-pollucite", 2, 3, 0.6),
      PM.product_chance("pm-empty-glass-ampule", 1, 0.85)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-caesium-rubidium-alum-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ceasium-rubidium-alum-seperation.png",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-rubidium-am",
    order = "b",
    energy_required = 9,
    ingredients =
    {
      PM.ingredient("pm-caesium-rubidium-alum", 6)
    },
    results =
    {
      PM.product_range("pm-30-rubidium-alum", 0, 4),
      PM.product_range("pm-50-rubidium-alum", 0, 3),
      PM.product_range("pm-70-rubidium-alum", 0, 2),
      PM.product_chance("pm-rubidium-alum", 1, 0.5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-70-to-100-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "c",
    energy_required = 3,
    main_product = "pm-rubidium-alum",
    ingredients =
    {
      PM.ingredient("pm-70-rubidium-alum", 2),
      PM.ingredient("pm-coolant", 2.5, "fluid")
      --PM.ingredient("pm-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-rubidium-alum", 2),
      PM.product("pm-hot-coolant", 2.5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-50-to-70-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "d",
    energy_required = 3,
    main_product = "pm-70-rubidium-alum",
    ingredients =
    {
      PM.ingredient("pm-50-rubidium-alum", 2),
      PM.ingredient("pm-coolant", 5, "fluid")
      --PM.ingredient("pm-70-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-70-rubidium-alum", 2),
      PM.product("pm-hot-coolant", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-30-to-50-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "e",
    energy_required = 3,
    main_product = "pm-50-rubidium-alum",
    ingredients =
    {
      PM.ingredient("pm-30-rubidium-alum", 2),
      PM.ingredient("pm-coolant", 7.5, "fluid")
      --PM.ingredient("pm-50-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-50-rubidium-alum", 2),
      PM.product("pm-hot-coolant", 7.5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-rubidium",
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-rubidium-am",
    order = "f",
    energy_required = 9,
    main_product = "pm-rubidium",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-rubidium-alum", 2),
      PM.ingredient("sulfuric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-rubidium", 1),
      PM.product_chance("pm-rubidium", 1, 0.5),
      PM.product_range("pm-sulfur-dioxide", 2, 6, "fluid"),
      PM.product_range("pm-aluminium-plate", 0, 5),
    }
  } --[[@as data.RecipePrototype]]
})

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
    categories = {"pm-moltening"},
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
      PM.product("pm-caesium-rubidium-alum"):amount(3, 6):done(),
      PM.product("pm-pollucite"):amount(2, 3):chance(0.6):done(),
      PM.product("pm-empty-glass-ampule"):amount(1):chance(0.85):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-caesium-rubidium-alum-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ceasium-rubidium-alum-seperation.png",
    enabled = false,
    categories = {"pm-crushing"},
    subgroup = "pm-rubidium-am",
    order = "b",
    energy_required = 9,
    ingredients =
    {
      PM.ingredient("pm-caesium-rubidium-alum", 6)
    },
    results =
    {
      PM.product("pm-30-rubidium-alum"):amount(0, 4):done(),
      PM.product("pm-50-rubidium-alum"):amount(0, 3):done(),
      PM.product("pm-70-rubidium-alum"):amount(0, 2):done(),
      PM.product("pm-rubidium-alum"):amount(1):chance(0.5):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-70-to-100-rubidium-alum",
    enabled = false,
    categories = {"chemistry"},
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
      PM.product("pm-rubidium-alum"):amount(2):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(2.5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-50-to-70-rubidium-alum",
    enabled = false,
    categories = {"chemistry"},
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
      PM.product("pm-70-rubidium-alum"):amount(2):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-30-to-50-rubidium-alum",
    enabled = false,
    categories = {"chemistry"},
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
      PM.product("pm-50-rubidium-alum"):amount(2):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(7.5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-rubidium",
    enabled = false,
    categories = {"pm-acids"},
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
      PM.product("pm-rubidium"):amount(1):done(),
      PM.product("pm-rubidium"):amount(1):chance(0.5):done(),
      PM.product("pm-sulfur-dioxide", "fluid"):amount(2, 6):done(),
      PM.product("pm-aluminium-plate"):amount(0, 5):done(),
    }
  } --[[@as data.RecipePrototype]]
})

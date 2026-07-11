data:extend({
  {
    type = "item",
    name = "pm-sodium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sodium-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-1.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-2.png", size = 64, scale = 0.48 },
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-sodium-am",
    order = "a",
    protons = 11,
    neutrons = 12,
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sodium-bicarbonate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sodium-bicarbonate.png",
    pictures =
    {
        {filename = "__periodic-madness__/graphics/icons/sodium-bicarbonate.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/sodium-bicarbonate-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-sodium-am",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-sodium-carbonate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sodium-carbonate.png",
    pictures =
    {
        {filename = "__periodic-madness__/graphics/icons/sodium-carbonate.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/sodium-carbonate-2.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/sodium-carbonate.png", size = 64, scale = 0.42},
        {filename = "__periodic-madness__/graphics/icons/sodium-carbonate-2.png", size = 64, scale = 0.45},
    },
    subgroup = "pm-sodium-am",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-sodium-sulfite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sodium-sulfite.png",
    pictures =
    {
        {filename = "__periodic-madness__/graphics/icons/sodium-sulfite.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/sodium-sulfite-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-sodium-am",
    order = "c",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-sodium-bicarbonate",
    enabled = false,
    categories = {"pm-washing"},
    subgroup = "pm-sodium-am",
    order = "a",
    energy_required = 8,
    main_product = "pm-sodium-bicarbonate",
    ingredients =
    {
      PM.ingredient("pm-sea-salt", 10),
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-sodium-bicarbonate"):amount(10, 15):done(),
      PM.product("pm-ammonium-chloride"):amount(10):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ammonium-chloride-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ammonium-chloride-seperation.png",
    enabled = false,
    categories = {"pm-acids"},
    subgroup = "pm-sodium-am",
    order = "b",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-ammonium-chloride", 10),
      PM.ingredient("pm-calcium-ore", 6)
    },
    results =
    {
      PM.product("pm-ammonia-gas", "fluid"):amount(10):done(),
      PM.product("pm-chlorine", "fluid"):amount(20 ):done(),
      PM.product("pm-calcium-chloride"):amount(2, 5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-carbonate",
    enabled = false,
    categories = {"pm-moltening"},
    subgroup = "pm-sodium-am",
    order = "c",
    energy_required = 6,
    main_product = "pm-sodium-carbonate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sodium-bicarbonate", 10),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-sodium-carbonate"):amount(20):done(),
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(4, 10):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-carbonate-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-carbonate-seperation.png",
    enabled = false,
    categories = {"pm-moltening"},
    subgroup = "pm-sodium-am",
    order = "d",
    energy_required = 9,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sodium-carbonate", 10),
      PM.ingredient("pm-carbon", 10)
    },
    results =
    {
      PM.product("pm-sodium"):amount(30):done(),
      PM.product("pm-carbon-monoxide", "fluid"):amount(30):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-sulfite",
    enabled = false,
    categories = {"pm-acids"},
    subgroup = "pm-sodium-am",
    order = "e",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-sodium", 5),
      PM.ingredient("pm-oxygen-gas", 10, "fluid"),
      PM.ingredient("pm-hydrogen-sulfide", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-sodium-sulfite"):amount(5):done()
    }
  }
})

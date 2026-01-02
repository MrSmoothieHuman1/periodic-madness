data:extend({

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
    category = "pm-washing",
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
      PM.product_range("pm-sodium-bicarbonate", 10, 15),
      PM.product("pm-ammonium-chloride", 10)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ammonium-chloride-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ammonium-chloride-seperation.png",
    enabled = false,
    category = "pm-acids",
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
      PM.product("pm-ammonia-gas", 10, "fluid"),
      PM.product("pm-chlorine", 20 , "fluid"),
      PM.product_range("pm-calcium-chloride", 2, 5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-carbonate",
    enabled = false,
    category = "pm-moltening",
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
      PM.product("pm-sodium-carbonate", 20),
      PM.product_range("pm-carbon-dioxide-gas", 4, 10, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-carbonate-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-carbonate-seperation.png",
    enabled = false,
    category = "pm-moltening",
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
      PM.product("pm-sodium", 30),
      PM.product("pm-carbon-monoxide", 30, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-sulfite",
    enabled = false,
    category = "pm-acids",
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
      PM.product("pm-sodium-sulfite", 5)
    }
  }
})

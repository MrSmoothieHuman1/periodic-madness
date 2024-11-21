local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-sodium-bicarbonate",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/sodium-bicarbonate.png",
    subgroup = "pm-sodium-am",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-sodium-carbonate",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/sodium-carbonate.png",
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
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-bicarbonate-mixing.png",
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sodium-am",
    order = "a",
    energy_required = 10,
    ingredients =
    {
      PM.ingredient("pm-sea-salt", 10),
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-sodium-bicarbonate", 10),
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
    energy_required = 5,
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
    name = "pm-sodium-bicarbonate-heating",
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
      PM.product("pm-sodium-carbonate", 5),
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
      PM.ingredient("pm-sodium-carbonate", 15),
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
      PM.ingredient("pm-sulfur-dioxide", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-sodium-sulfite", 5)
    }
  }
})

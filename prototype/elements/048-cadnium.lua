local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-cadnium-red",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadmium-red.png",
    subgroup = "pm-cadnium-tm",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cadnium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadnium-sulfate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate-3.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-cadnium-tm",
    order = "A",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "pm-zinc-chunk-seperation",
    icon_size = 64,
    category = "pm-moltening",
    main_product = "pm-zinc-tailings",
    subgroup = "pm-cadnium-tm",
    order = "a",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-chunk", 6),
      PM.ingredient("steam", 25, "fluid"),
      PM.ingredient("sulfur", 3)
    },
    results =
    {
      PM.product("pm-zinc-tailings", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-zinc-tailings-condensing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zinc-tailings-seperation.png",
    category = "pm-coldening",
    subgroup = "pm-cadnium-tm",
    order = "b",
    enabled = false,
    energy_required = 2,
    allow_productivty = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-tailings", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-cadnium-sulfate", 2),
      PM.product("pm-zinc-chunk", 2),
      PM.product_range_chance("pm-ferrum", 1, 3, 0.5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cadnium-ore",
    enabled = false,
    energy_required = 2,
    category = "pm-electrolysis",
    subgroup = "pm-cadnium-tm",
    order = "c",
    main_product = "pm-cadnium-ore",
    ingredients = 
    {
      PM.ingredient("pm-cadnium-sulfate", 4),
      PM.ingredient("pm-zinc-plate", 4),
      PM.ingredient("pm-carbon", 4)
    },
    results = 
    {
      PM.product_range("pm-cadnium-ore", 3, 4),
      PM.product_range("sulfur", 1, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-red",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cadnium-tm",
    order = "ba",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cadnium-ore", 6),
      PM.ingredient("sulfur", 6),
    },
    results =
    {
      PM.product("pm-cadnium-red", 6)
    }
  } --[[@as data.RecipePrototype]],
})

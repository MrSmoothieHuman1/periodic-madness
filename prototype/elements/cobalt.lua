local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-cobalt-blue",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cobalt-blue.png",
    subgroup = "pm-cobalt-tm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cobaltite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/cobaltite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite-2.png", size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite-3.png", size = 64, scale = 0.25 },
    },
    subgroup = "pm-cobalt-tm",
    order = "b",
    stack_size = 400
  },

  {
    type = "recipe",
    name = "pm-copper-chunk-frothing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-chunk-frothing.png",
    category = "pm-washing",
    subgroup = "pm-cobalt-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 4),
      PM.ingredient("water", 25, "fluid"),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-copper-froth", 5, "fluid"),
      PM.product("pm-copper-tailings", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-copper-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "b",
    enabled = false,
    energy_required = 6.4,
    ingredients =
    {
      PM.ingredient("pm-copper-froth", 5, "fluid"),
      PM.ingredient("pm-sand", 6),
      PM.ingredient("pm-coke", 4)
    },
    results =
    {
      PM.product("copper-ore", 2),
      PM.product_range_chance("pm-cobaltite", 1, 3, 0.69),
      PM.product("pm-cobalt-blue", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cobalt-blue-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobalt-blue-seperation.png",
    category = "pm-crushing",
    subgroup = "pm-cobalt-tm",
    order = "c",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("pm-cobalt-blue", 4)
    },
    results =
    {
      PM.product("pm-cobalt-ore", 2),
      PM.product_range("pm-aluminium-ore", 1, 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-copper-tailings-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-tailings-looping.png",
    category = "pm-washing",
    subgroup = "pm-cobalt-tm",
    order = "ca",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-copper-tailings", 10, "fluid"),
      PM.ingredient("pm-acidic-water", 5, "fluid")
    },
    results =
    {
      PM.product_range("pm-copper-tailings", 2, 8, "fluid"),
      PM.product_chance("pm-copper-froth", 5, 0.7, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-fluxed-copper-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fluxed-copper-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "ba",
    enabled = false,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-copper-froth", 5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product("copper-ore", 2),
      PM.product_chance("pm-cobaltite", 1, 0.69),
      PM.product("pm-cobalt-blue", 3),
      PM.product_chance("pm-flux-container", 1, 0.66),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cobalt-blue",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "ca",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 6),
      PM.ingredient("pm-aluminium-plate", 12),
      PM.ingredient("pm-oxygen-gas", 24, "fluid")
    },
    results =
    {
      PM.product("pm-cobalt-blue", 6)
    }
  } --[[@as data.RecipePrototype]],
})

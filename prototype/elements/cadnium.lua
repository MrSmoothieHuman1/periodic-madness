local PM = require("__periodic-madness__/library")
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
    type = "recipe",
    name = "pm-zinc-chunk-seperation",
    icon_size = 64,
    category = "pm-moltening",
    main_product = "pm-zinc-tailings",
    subgroup = "pm-cadnium-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-zinc-chunk", 4),
      PM.ingredient("steam", 25, "fluid")
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
    main_product = "pm-cadnium-ore",
    subgroup = "pm-cadnium-tm",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-zinc-tailings", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-cadnium-ore", 2),
      PM.product("pm-zinc-ore", 2),
      PM.product_range_chance("pm-ferrum", 1, 3, 0.5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cadnium-red",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cadnium-tm",
    order = "ba",
    enabled = false,
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

local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "recipe",
    name = "pm-palladium-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-palladium-tm",
    order = "b",
    enabled = false,
    energy_required = 3.2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 5, "fluid"),
      PM.ingredient("pm-sand", 6),
      PM.ingredient("pm-coke", 4)
    },
    results =
    {
      PM.product("pm-nickel-ore", 2),
      PM.product("pm-palladium-ore", 2),
      PM.product_range_chance("pm-ferrum", 1, 3, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-fluxed-palladium-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flux-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-palladium-tm",
    order = "ba",
    enabled = false,
    energy_required = 1.6,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product("pm-nickel-ore", 2),
      PM.product("pm-palladium-ore", 2),
      PM.product_chance("pm-ferrum", 1, 0.5),
      PM.product_chance("pm-flux-container", 1, 0.66)
    }
  } --[[@as data.RecipePrototype]],
})

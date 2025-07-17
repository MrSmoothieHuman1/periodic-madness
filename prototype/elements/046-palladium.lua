local PM = require("library")
data:extend({
  {
    type = "item",
    name = "pm-palladium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/palladium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/palladium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/palladium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/palladium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/palladium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-palladium-tm",
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-palladium-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-palladium-tm",
    order = "b",
    enabled = false,
    energy_required = 6.4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 10, "fluid"),
      PM.ingredient("pm-sand", 5),
      PM.ingredient("pm-coke", 3)
    },
    results =
    {
      PM.catalyst_range("pm-nickel-chunk", 2, 4, 3),
      PM.product("pm-palladium-ore", 4),
      PM.product_range_chance("pm-patina", 2, 5, 0.5)
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
    energy_required = 6.4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.catalyst_range("pm-nickel-chunk", 0, 2, 1),
      PM.product("pm-palladium-ore", 4),
      PM.product_chance("pm-flux-container", 1, 0.66)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-palladium-plate",
    subgroup = "pm-palladium-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-palladium-ore", 1) },
    results = {
      PM.product("pm-palladium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-palladium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-palladium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/palladium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-palladium-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-palladium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-palladium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/palladium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-palladium-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-palladium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-palladium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

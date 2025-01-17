local PM = require("library")
data:extend({

  {
    type = "recipe",
    name = "pm-fuel-oil-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fuel-oil-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 10, "fluid"),
      PM.product_range("water", 1.2, 2, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 2, 0.75, 2),
      PM.product_chance("pm-catalyst-container", 2, 0.15)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-kerosene-hydrosulfurisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kerosene-hydrosulfurisation.png",
    energy_required = 4,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-kerosene", 20, "fluid"),
      PM.ingredient("steam", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 10, "fluid"),
      PM.product_range("water", 1.2, 2, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 2, 0.75, 2),
      PM.product_chance("pm-catalyst-container", 2, 0.15)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sulfur-dioxide-cracking",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-dioxide-cracking.png",
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-sulfur-rnm",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 1)
    },
    results =
    {
      PM.product("sulfuric-acid", 15, "fluid"),
      PM.product("sulfur", 2),
      PM.catalyst_chance("pm-vanadium-oxide-catalyst", 1, 0.66, 1),
      PM.catalyst_chance("pm-catalyst-container", 1, 0.33, 1)
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-sulfur-burning",
    enabled = false,
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-sulfur-rnm",
    order = "d",
    main_product = "pm-sulfur-dioxide",
    ingredients =
    {
      PM.ingredient("sulfur", 10),
      PM.ingredient("pm-oxygen-gas", 10, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 3)
    },
    results =
    {
      PM.product("pm-sulfur-dioxide", 20, "fluid"),
      PM.catalyst_chance("pm-cobalt-catalyst", 3, 0.85, 3),
      PM.catalyst_range("pm-catalyst-container", 3, 0.15, 3)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sulfur-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sulfur-trioxide.png",
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-sulfur-dioxide", 10, "fluid"),
      PM.ingredient("pm-oxygen-gas", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 3),
      PM.ingredient("pm-potassium", 2)
    },
    results =
    {
      PM.product("pm-sulfur-trioxide", 10, "fluid"),
      PM.product_range_chance("pm-oxygen-gas", 5, 10, 0.5, "fluid"),
      PM.catalyst_range_chance("pm-vanadium-oxide-catalyst", 2, 3, 0.8, 3),
      PM.catalyst_range_chance("pm-catalyst-container", 0, 1, 0.2, 1)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-oleum",
    enabled = false,
    energy_required = 6,
    category = "pm-acids",
    subgroup = "pm-sulfur-rnm",
    order = "f",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sulfur-trioxide", 5, "fluid"),
      PM.ingredient("sulfuric-acid", 10, "fluid")
    },
    results =
    {
      PM.product_range("pm-oleum", 10, 15, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-better-sulfuric-acid",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-sulfur-rnm",
    order = "g",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-oleum", 5, "fluid"),
      PM.ingredient("pm-caesium", 2, "fluid")
    },
    results =
    {
      PM.product("sulfuric-acid", 30, "fluid")
    }
  } --[[@as data.RecipePrototype]]

})

data:extend({

  {
    type = "item",
    name = "pm-phosphate-rock",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/phosphate-rock.png",
    subgroup = "pm-phosphorus-rnm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-white-phosphorus",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/white-phosphorous.png",
    subgroup = "pm-phosphorus-rnm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-red-phosphorus",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/red-phosphorous.png",
    subgroup = "pm-phosphorus-rnm",
    order = "c",
    protons = 15,
    neutrons = 15,
    stack_size = 100
  },
  {
    type = "recipe",
    name = "pm-phosphate-rock",
    enabled = false,
    energy_required = 3,
    categories = {"pm-crushing"},
    subgroup = "pm-phosphorus-rnm",
    order = "a",
    main_product = "pm-phosphate-rock",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("stone", 6),
    },
    results =
    {
      PM.product("pm-phosphate-rock"):amount(4):done(),
      PM.product("pm-sand"):amount(2, 4):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-phosphor-vapour",
    enabled = false,
    energy_required = 9,
    categories = {"pm-moltening"},
    subgroup = "pm-phosphorus-rnm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-phosphate-rock", 4),
      PM.ingredient("pm-coke", 3),
      PM.ingredient("pm-sand", 4)
    },
    results =
    {
      PM.product("pm-phosphor-vapour", "fluid"):amount(10):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-phosphor-vapour-cooling",
    enabled = false,
    energy_required = 4.5,
    categories = {"pm-washing"},
    subgroup = "pm-phosphorus-rnm",
    order = "c",
    main_product = "pm-phosphoric-acid",
    crafting_machine_tint =
    {
        primary = {r = 1, g = 0.6, b = 0.6}
    },
    ingredients =
    {
      PM.ingredient("pm-phosphor-vapour", 5, "fluid"),
      PM.ingredient("sulfuric-acid", 5, "fluid")
    },
    results =
    {
      PM.product("pm-phosphoric-acid", "fluid"):amount(10):done(),
      PM.product("pm-oxygen-gas", "fluid"):amount(2, 4):chance(0.4):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-phosphoric-acid-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/phosphoric-acid-filtering.png",
    energy_required = 6,
    enabled = false,
    categories = {"pm-acids"},
    subgroup = "pm-phosphorus-rnm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-phosphoric-acid", 10, "fluid"),
      PM.ingredient("pm-calcium-ore", 3)
    },
    results =
    {
      PM.product("pm-white-phosphorus"):amount(4):done(),
      PM.product("pm-red-phosphorus"):amount(2, 4):chance(0.25):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-white-to-red-phosphorus",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/white-to-red-phosphorus.png",
    enabled = false,
    energy_required = 4.8,
    categories = {"smelting"},
    subgroup = "pm-phosphorus-rnm",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-white-phosphorus", 2)
    },
    results =
    {
      PM.product("pm-red-phosphorus"):amount(2):done()
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-fluxed-phosphor-vapour",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flux-phosphor-vapour.png",
    enabled = false,
    energy_required = 4.5,
    categories = {"pm-moltening"},
    subgroup = "pm-phosphorus-rnm",
    order = "ba",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-phosphate-rock", 4),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product("pm-phosphor-vapour", "fluid"):amount(20):done(),
      PM.product("pm-flux-container"):amount(1):chance(0.66):done()
    }
  } --[[@as data.RecipePrototype]],
})

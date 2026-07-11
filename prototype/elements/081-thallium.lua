data:extend({

  {
    type = "item",
    name = "pm-lorandite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lorandite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lorandite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/lorandite-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-thallium-ptm",
    order = "a",
    stack_size = 100 / 2
  },
  {
    type = "item",
    name = "pm-thallium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/thallium-sulfate.png",
    subgroup = "pm-thallium-ptm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-thallium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/thallium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/thallium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/thallium-ore-icon-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-thallium-ptm",
    order = "c",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-lorandite",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/lorandite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      },
    },
    enabled = false,
    energy_required = 4,
    categories = {"pm-acids"},
    subgroup = "pm-thallium-ptm",
    allow_productivity = true,
    order = "a",
    main_product = "pm-lorandite",
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lorandite"):amount(6):done(),
      PM.product("sulfur"):amount(2):chance(0.75):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-mixing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-mixing.png",
    crafting_machine_tint = 
    {
        primary = {0.576, 0.761, 0.718}
    },
    enabled = false,
    energy_required = 6,
    categories = {"pm-mixing"},
    subgroup = "pm-thallium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-ore", 5),
      PM.ingredient("copper-ore", 6),
      PM.ingredient("pm-zinc-ore", 6),
      PM.ingredient("pm-lorandite", 2),
      PM.ingredient("sulfuric-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-thallium-sulfate"):amount(8):done(),
      PM.product("pm-arsenic-ore"):amount(0, 3):chance(0.66):done(),
      PM.product("copper-ore"):amount(4, 6):catalyst(3):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-sulfate-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-electrolysis.png",
    enabled = false,
    energy_required = 3,
    categories = {"pm-electrolysis"},
    subgroup = "pm-thallium-ptm",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-thallium-sulfate", 4),
      PM.ingredient("pm-stainless-steel-alloy", 6)
    },
    results =
    {
      PM.product("pm-thallium-ore"):amount(2):done(),
      PM.product("sulfur"):amount(1, 2):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-thallium-plate",
    subgroup = "pm-thallium-ptm",
    order = "d",
    categories = {"smelting"},
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-thallium-ore", 1) },
    results = {
      PM.product("pm-thallium-plate"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-thallium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-thallium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/thallium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-thallium-ptm",
    order = "f",
    categories = {"pm-moltening"},
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-thallium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-thallium", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-thallium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-cooling.png",
    categories = {"pm-coldening"},
    subgroup = "pm-thallium-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-thallium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-thallium-plate"):amount(10):done(),
      PM.product("pm-crucible"):amount(1):chance(0.8):done()
    }
  },
})

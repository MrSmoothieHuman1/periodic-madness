data:extend({

  {
    type = "item",
    name = "pm-indium-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/indium-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/indium-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/indium-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-indium-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-indium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/indium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/indium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/indium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/indium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/indium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-indium-ptm",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-indium-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-filtering.png",
    categories = {"pm-washing"},
    subgroup = "pm-indium-ptm",
    order = "a",
    energy_required = 2,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-tailings", 10, "fluid"),
      PM.ingredient("pm-lead-froth", 10, "fluid")
    },
    results =
    {
      PM.product("pm-indium-chunks"):amount(4):done(),
      PM.product("pm-zinc-tailings", "fluid"):amount(5):chance(0.5):done(),
      PM.product("pm-lead-froth", "fluid"):amount(5):chance(0.5):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-indium-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-electrolysis.png",
    categories = {"pm-electrolysis"},
    subgroup = "pm-indium-ptm",
    order = "b",
    energy_required = 20,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-indium-chunks", 12),
      PM.ingredient("pm-stainless-steel-alloy", 4)
    },
    results =
    {
      PM.product("pm-indium-ore"):amount(6):done(),
      PM.product("pm-lead-powder"):amount(2):chance(0.5):done(),
      PM.product("pm-zinc-chunk"):amount(2):chance(0.5):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-indium-plate",
    subgroup = "pm-indium-ptm",
    order = "c",
    categories = {"smelting"},
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-indium-ore", 1) },
    results = {
      PM.product("pm-indium-plate"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-indium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-indium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/indium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-indium-ptm",
    order = "f",
    categories = {"pm-moltening"},
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-indium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-indium", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-indium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-cooling.png",
    categories = {"pm-coldening"},
    subgroup = "pm-indium-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-indium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-indium-plate"):amount(10):done(),
      PM.product("pm-crucible"):amount(1):chance(0.8):done()
    }
  },

})

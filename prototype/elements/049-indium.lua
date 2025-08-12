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
    category = "pm-washing",
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
      PM.product("pm-indium-chunks", 4),
      PM.product_chance("pm-zinc-tailings", 5, 0.5, "fluid"),
      PM.product_chance("pm-lead-froth", 5, 0.5, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-indium-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-electrolysis.png",
    category = "pm-electrolysis",
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
      PM.product("pm-indium-ore", 6),
      PM.product_chance("pm-lead-powder", 2, 0.5),
      PM.product_chance("pm-zinc-chunk", 2, 0.5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-indium-plate",
    subgroup = "pm-indium-ptm",
    order = "c",
    category = "smelting",
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-indium-ore", 1) },
    results = {
      PM.product("pm-indium-plate", 1)
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
    category = "pm-moltening",
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
      PM.product("pm-molten-indium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-indium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-cooling.png",
    category = "pm-coldening",
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
      PM.product("pm-indium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },

})

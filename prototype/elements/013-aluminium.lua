data:extend({

  {
    type = "item",
    name = "pm-bauxite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bauxite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bauxite.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/bauxite-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/bauxite-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-aluminium-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bauxite-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/bauxite-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/bauxite-powder.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/bauxite-powder-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/bauxite-powder-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/bauxite-powder-4.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-aluminium-ptm",
    order = "b",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-aluminium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/aluminium-ore.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/aluminium-ore.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/aluminium-ore-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/aluminium-ore-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/aluminium-ore-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-aluminium-ptm",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-transition-aluminium-leeching",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/bauxite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-aluminium-ptm",
    order = "aa",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 1 },    --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-acidic-water", 25, "fluid")
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-bauxite", 6),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bauxite-powder",
    enabled = false,
    energy_required = 2.5,
    category = "pm-crushing",
    subgroup = "pm-aluminium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-bauxite", 6)
    },
    results = 
    {
      PM.product_range("pm-bauxite-powder", 10, 14)
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-hydroxide-slurry",
    enabled = false,
    energy_required = 4,
    category = "pm-mixing",
    subgroup = "pm-aluminium-ptm",
    order = "c",
    allow_productivity = true,
    main_product = "pm-aluminium-hydroxide-slurry",
    ingredients = 
    {
      PM.ingredient("pm-bauxite-powder", 8),
      PM.ingredient("pm-sodium-hydroxide", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-aluminium-hydroxide-slurry", 12, "fluid"),
      PM.product_range("steam", 10, 20, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-ore",
    enabled = false,
    energy_required = 8,
    category = "pm-electrolysis",
    subgroup = "pm-aluminium-ptm",
    order = "d",
    ingredients = 
    {
      PM.ingredient("pm-aluminium-hydroxide-slurry", 10, "fluid"),
      PM.ingredient("pm-calcium-ore", 3),
    },
    results = 
    {
      PM.product_range("pm-aluminium-ore", 4, 6)
    }
  },

  {
    type = "recipe",
    name = "pm-chromic-transition-aluminium-leeching",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/bauxite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      },
    },
    subgroup = "pm-aluminium-ptm",
    order = "ab",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 1 },    --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 2, "fluid")
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-bauxite", 8),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-aluminium-plate",
    subgroup = "pm-aluminium-ptm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-aluminium-ore", 1) },
    results = {
      PM.product("pm-aluminium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-aluminium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-aluminium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/aluminium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-aluminium-ptm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-aluminium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/aluminium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-aluminium-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-aluminium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-aluminium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

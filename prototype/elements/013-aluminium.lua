local PM = require("library")
data:extend({

  {
    type = "name",
    name = "pm-bauxite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bauxite.png",
    subgroup = "pm-aluminium-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "name",
    name = "pm-bauxite-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bauxite.png",
    subgroup = "pm-aluminium-ptm",
    order = "b",
    stack_size = 300
  },

  {
    type = "recipe",
    name = "pm-transition-aluminium-leeching",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/aluminium-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/sodium-hydroxide.png",
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
      PM.ingredient("pm-sodium-hydroxide", 6, "fluid")
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
    name = "pm-bauxite-powder",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-aluminium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-bauxite", 8)
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
      PM.ingredient("pm-aluminium-hydroxide-slurry", 10),
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
        icon = "__periodic-madness__/graphics/icons/ores/aluminium-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
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
      PM.ingredient("pm-sodium-hydroxide", 4, "fluid"),
      PM.ingredient("pm-chromic-acid", 2, "fluid")
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-aluminium-ore", 8),
    }
  } --[[@as data.RecipePrototype]],
})

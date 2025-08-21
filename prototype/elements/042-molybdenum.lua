data:extend({

  {
    type = "item",
    name = "pm-molybdenite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/molybdenite.png",
    subgroup = "pm-molybdenum-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-molybdenite-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molybdenite-powder.png",
    subgroup = "pm-molybdenum-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-molybdenum-disulfide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molybdenum-disulfate.png",
    subgroup = "pm-molybdenum-tm",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-molybdenum-ore",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/molybdenum-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/molybdenum-ore-icon.png", size = 128, scale = 0.25},
      {filename = "__periodic-madness__/graphics/icons/ores/molybdenum-ore-icon-1.png", size = 128, scale = 0.25}
    },
    subgroup = "pm-molybdenum-tm",
    order = "c",
    stack_size = 200,
  },

  {
    type = "recipe",
    name = "pm-molybdenum-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/molybdenite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-molybdenum-tm",
    category = "pm-acids",
    order = "a",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-acidic-water", 25, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-molybdenite", 8),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenite-crushing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/molybdenite.png",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-molybdenum-tm",
    order = "c",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-molybdenite", 4)
    },
    results =
    {
      PM.product("pm-molybdenite-powder", 4),
      PM.product_chance("stone", 2, 0.75)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenum-floating",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/molybdenum-floating.png",
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-molybdenum-tm",
    order = "d",
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molybdenite-powder", 2),
      PM.ingredient("water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-molybdenum-ore", 2),
      PM.product_chance("pm-molybdenum-disulfide", 1, 0.1)
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-molybdenum-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/molybdenite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      },
    },
    subgroup = "pm-molybdenum-tm",
    category = "pm-acids",
    order = "b",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid"),
    },
    hide_from_player_crafting = true,
    enabled = false,
    results =
    {
      PM.product("pm-molybdenite", 8),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenite-oxide",
    enabled = false,
    energy_required = 12,
    category = "pm-moltening",
    subgroup = "pm-molybdenum-tm",
    order = "d",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molybdenite", 8),
      PM.ingredient("pm-oxygen-gas", 28, "fluid")
    },
    results = 
    {
      PM.product("pm-molybdenite-oxide", 8),
      PM.product("pm-sulfur-dioxide", 16, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-molybdate",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-molybdenum-tm",
    order = "e",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molybdenite-oxide", 4),
      PM.ingredient("pm-ammonia", 6, "fluid"),
      PM.ingredient("water", 20, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 3)
    },
    results = 
    {
      PM.product_chance("pm-palladium-catalyst", 3, 0.75),
      PM.product_chance("pm-catalyst-container", 3, 0.25),
      PM.product("pm-ammonium-molybdate", )
    }
  }
})

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
    stack_size = 400
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
    type = "item",
    name = "pm-molybdenite-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molybdenum-disulfate.png",
    subgroup = "pm-molybdenum-tm",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-ammonium-molybdate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molybdenum-disulfate.png",
    subgroup = "pm-molybdenum-tm",
    order = "f",
    stack_size = 150
  },

  {
    type = "fluid",
    name = "pm-ammonium-dimolybdate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
    subgroup = "pm-molybdenum-tm",
    order = "g",
    default_temperature = 15,
    base_color = {r = 0, g = 0, b = 0},
    flow_color = {r = 0, g = 0, b = 0}
  },
  {
    type = "fluid",
    name = "pm-molybdenum-trioxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
    subgroup = "pm-molybdenum-tm",
    order = "h",
    default_temperature = 15,
    base_color = {r = 0, g = 0, b = 0},
    flow_color = {r = 0, g = 0, b = 0}
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
    main_product = "pm-molybdenite-oxide",
    ingredients =
    {
      PM.ingredient("pm-molybdenite-powder", 8),
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
    main_product = "pm-ammonium-molybdate",
    ingredients = 
    {
      PM.ingredient("pm-molybdenite-oxide", 4),
      PM.ingredient("pm-ammonia-gas", 6, "fluid"),
      PM.ingredient("water", 20, "fluid"),
      PM.ingredient("pm-rhenium-platinum-catalyst", 2)
    },
    results = 
    {
      PM.product_chance("pm-rhenium-platinum-catalyst", 2, 0.8),
      PM.product_chance("pm-catalyst-container", 2, 0.2),
      PM.product("pm-ammonium-molybdate", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-dimolybdate",
    enabled = false,
    energy_required = 4,
    category = "pm-mixing",
    subgroup = "pm-molybdenum-tm",
    order = "f",
    main_product = "pm-ammonium-dimolybdate",
    ingredients =
    {
      PM.ingredient("pm-ammonium-molybdate", 4),
      PM.ingredient("pm-hydrogen-sulfide", 15, "fluid"),
    },
    results =
    {
      PM.product_range("pm-patina", 2, 5),
      PM.product("pm-ammonium-dimolybdate", 16, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-molybdenum-trioxide",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-molybdenum-tm",
    order = "g",
    main_product = "pm-molybdenum-trioxide",
    ingredients =
    {
      PM.ingredient("pm-ammonium-dimolybdate", 16, "fluid"),
      PM.ingredient("steam", 25, "fluid")
    },
    results = 
    {
      PM.product("pm-molybdenum-trioxide", 32, "fluid"),
      PM.product_chance("pm-ammonia-gas", 6, 0.5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-molybdenum-ore",
    enabled = false,
    energy_required = 5,
    category = "pm-acids",
    subgroup = "pm-molybdenum-tm",
    order = "h",
    allow_productivity = true,
    main_product = "pm-molybdenum-ore",
    ingredients =
    {
      PM.ingredient("pm-molybdenum-trioxide", 32, "fluid"),
      PM.ingredient("pm-hydrogen-gas", 32, "fluid")
    },
    results =
    {
      PM.product("pm-molybdenum-ore", 8),
      PM.product_range("water", 5, 12, "fluid")
    }
  }
})

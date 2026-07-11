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
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/molybdenum-ore.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/molybdenum-ore.png", size = 64, scale = 0.5},
      --{filename = "__periodic-madness__/graphics/icons/ores/molybdenum-ore-icon-1.png", size = 128, scale = 0.25}
    },
    subgroup = "pm-molybdenum-tm",
    order = "c",
    protons = 42,
    neutrons = 54,
    stack_size = 200,
  },
  {
    type = "item",
    name = "pm-molybdenite-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molybdenite-oxide.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/molybdenite-oxide.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/molybdenite-oxide-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-molybdenum-tm",
    order = "e",
    stack_size = 175
  },
  {
    type = "item",
    name = "pm-ammonium-molybdate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ammonium-molybdate.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ammonium-molybdate.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ammonium-molybdate-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-molybdenum-tm",
    order = "f",
    stack_size = 100
  },

  {
    type = "fluid",
    name = "pm-ammonium-dimolybdate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/ammonium-dimolybdate.png",
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
    icon = "__periodic-madness__/graphics/icons/fluids/molybdenum-trioxide.png",
    subgroup = "pm-molybdenum-tm",
    order = "h",
    default_temperature = 15,
    base_color = {r = 0.5, g = 0.33, b = 0.33},
    flow_color = {r = 0.5, g = 0.33, b = 0.33}
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
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-molybdenum-tm",
    categories = {"pm-acids"},
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
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-molybdenite"):amount(8):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenite-crushing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/molybdenite.png",
    enabled = false,
    categories = {"pm-crushing"},
    subgroup = "pm-molybdenum-tm",
    order = "c",
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-molybdenite", 4)
    },
    results =
    {
      PM.product("pm-molybdenite-powder"):amount(4):done(),
      PM.product("stone"):amount(2):chance(0.75):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenum-floating",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/molybdenum-floating.png",
    enabled = false,
    categories = {"pm-washing"},
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
      PM.product("pm-molybdenum-ore"):amount(2):done(),
      PM.product("pm-molybdenum-disulfide"):amount(1):chance(0.1):done()
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
    categories = {"pm-acids"},
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
      PM.product("pm-molybdenite"):amount(8):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-molybdenite-oxide",
    enabled = false,
    energy_required = 12,
    categories = {"pm-moltening"},
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
      PM.product("pm-molybdenite-oxide"):amount(8):done(),
      PM.product("pm-sulfur-dioxide", "fluid"):amount(16):done()
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-molybdate",
    enabled = false,
    energy_required = 8,
    categories = {"chemistry"},
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
      PM.product("pm-rhenium-platinum-catalyst"):amount(2):chance(0.8):catalyst(2):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.2):catalyst(2):done(),
      PM.product("pm-ammonium-molybdate"):amount(4):done()
    }
  },
  {
    type = "recipe",
    name = "pm-ammonium-dimolybdate",
    crafting_machine_tint = 
    {
        primary = {0.463, 0.471, 0.424}
    },
    enabled = false,
    energy_required = 4,
    categories = {"pm-mixing"},
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
      PM.product("pm-patina"):amount(2, 5):done(),
      PM.product("pm-ammonium-dimolybdate", "fluid"):amount(16):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-molybdenum-trioxide",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
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
      PM.product("pm-molybdenum-trioxide", "fluid"):amount(32):done(),
      PM.product("pm-ammonia-gas", "fluid"):amount(6):chance(0.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-molybdenum-ore",
    enabled = false,
    energy_required = 5,
    categories = {"pm-acids"},
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
      PM.product("pm-molybdenum-ore"):amount(8):done(),
      PM.product("water", "fluid"):amount(5, 12):done()
    }
  }
})

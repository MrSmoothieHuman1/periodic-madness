data:extend({

  {
    type = "recipe",
    name = "pm-flourite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flourite-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-flourine-rnm",
    order = "f",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-seed-crystal", 1 },
      { "pm-crucible",     4 },
      { "pm-flourite",     20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-flourite",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-crystal-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-tungsten-tm",
    order = "ea",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-seed-crystal",      1 },
      { "pm-crucible",          4 },
      { "pm-tungsten-crystals", 20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-tungsten-crystals",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
  {
    type = "recipe",
    name = "pm-scheelite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/scheelite-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-tungsten-tm",
    order = "eb",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-seed-crystal", 1 },
      { "pm-crucible",     4 },
      { "pm-scheelite",    20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-scheelite",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
  {
    type = "recipe",
    name = "pm-calcite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/calcite-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-calcium-aem",
    order = "d",
    allow_decomposition = false,
    enabled = false,
    ingredients =
    {
      { "pm-seed-crystal", 1 },
      { "pm-crucible",     4 },
      { "pm-calcite",      20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-calcite",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-bismuth-ptm",
    order = "d",
    allow_decomposition = false,
    enabled = false,
    ingredients =
    {
      { "pm-seed-crystal", 1 },
      { "pm-crucible",     4 },
      { "pm-bismuth-ore",  20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-bismuth-ore",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
  {
    type = "recipe",
    name = "pm-molybdenite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/molybdenite-growing.png",
    energy_required = 80,
    category = "pm-crystallisation",
    subgroup = "pm-molybdenum-tm",
    order = "e",
    allow_decomposition = false,
    ingredients =
    {
      { "pm-seed-crystal", 1 },
      { "pm-crucible",     4 },
      { "pm-molybdenite",  20 }
    },
    results =
    {
      { "pm-seed-crystal", 1 },
      {
        name = "pm-molybdenite",
        amount_min = 40,
        amount_max = 80
      }
    }
  },
} --[[@as data.RecipePrototype[] ]])

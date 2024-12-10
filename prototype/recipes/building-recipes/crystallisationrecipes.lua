local PM = require("library")
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-flourite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-flourite", 40, 80)
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-tungsten-crystals", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-tungsten-crystals", 40, 80)
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-scheelite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-scheelite", 40, 80)
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-calcite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-calcite", 40, 80)
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-bismuth-ore", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-bismuth-ore", 40, 80)
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
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-molybdenite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid")
    },
    results =
    {
      PM.product("pm-seed-crystal", 1),
      PM.product_range("pm-molybdenite", 40, 80)
    }
  },


  {
    type = "recipe",
    name = "pm-gem-sorting",
    energy_required = 20,
    enabled = true,
    category = "pm-crystallisation",
    main_product = "pm-ruby",
    ingredients = 
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-metalloid-ore", 12),
      PM.ingredient("pm-alkali-metals-ore", 12)
    },
    results = 
    {
      PM.product_range("pm-ruby", 6, 10),
      PM.product_range("pm-citrine", 6, 10),
      PM.product_range("pm-emerald", 6, 10),
      PM.product_range("pm-sapphire", 6, 10),
      PM.product_range("pm-lapis-lazuli", 6, 10),
      PM.product_range("pm-garnet", 6, 10),
    }
  }
} --[[@as data.RecipePrototype[] ]])



data:extend({

  {
    type = "recipe",
    name = "pm-flourite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flourite-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-flourine-rnm",
    order = "f",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-flourite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-flourite"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-crystal-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-tungsten-tm",
    order = "ea",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-tungsten-crystals", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-tungsten-crystals"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-scheelite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/scheelite-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-tungsten-tm",
    order = "eb",
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-scheelite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-scheelite"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-calcite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/calcite-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-calcium-aem",
    order = "d",
    allow_decomposition = false,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-calcite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-calcite"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-bismuth-ptm",
    order = "d",
    allow_decomposition = false,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-bismuth-ore", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-bismuth-ore"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molybdenite-crystal-growing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/molybdenite-growing.png",
    energy_required = 80,
    categories = {"pm-crystallisation"},
    subgroup = "pm-molybdenum-tm",
    order = "e",
    allow_decomposition = false,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seed-crystal", 1),
      PM.ingredient("pm-crucible", 4),
      PM.ingredient("pm-molybdenite", 20),
      PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
      PM.ingredient("pm-coolant", 20, "fluid", 1)
    },
    results =
    {
      PM.product("pm-seed-crystal"):amount(1):done(),
      PM.product("pm-molybdenite"):amount(40, 80):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(20):catalyst(20):index(1):done()
    }
  },

  {
    type = "recipe",
    name = "pm-gem-sorting",
    energy_required = 20,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-ruby",
    ingredients = 
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-metalloid-ore", 12),
      PM.ingredient("pm-alkali-metals-ore", 12),
      PM.ingredient("pm-coolant", 10, "fluid", 1)
    },
    results = 
    {
      PM.product("pm-ruby"):amount(6, 10):done(),
      PM.product("pm-citrine"):amount(6, 10):done(),
      PM.product("pm-emerald"):amount(6, 10):done(),
      PM.product("pm-sapphire"):amount(6, 10):done(),
      PM.product("pm-lapis-lazuli"):amount(6, 10):done(),
      PM.product("pm-garnet"):amount(6, 10):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(10):catalyst(10):index(1):done()
    }
  },

  {
    type = "recipe",
    name = "pm-ruby",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-ruby",
    ingredients =
    {
        PM.ingredient("pm-ruby", 25),
        PM.ingredient("pm-chromium-ore", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-ruby"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-citrine",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-citrine",
    ingredients =
    {
        PM.ingredient("pm-citrine", 25),
        PM.ingredient("pm-industrial-grade-silicon-ore", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-citrine"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-emerald",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-emerald",
    ingredients =
    {
        PM.ingredient("pm-emerald", 25),
        PM.ingredient("pm-beryllium-ore", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-emerald"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-sapphire",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-sapphire",
    ingredients =
    {
        PM.ingredient("pm-sapphire", 25),
        PM.ingredient("pm-aluminium-ore", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-sapphire"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lapis-lazuli",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-lapis-lazuli",
    ingredients =
    {
        PM.ingredient("pm-lapis-lazuli", 25),
        PM.ingredient("sulfur", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-lapis-lazuli"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
  {
    type = "recipe",
    name = "pm-garnet",
    energy_required = 120,
    enabled = false,
    categories = {"pm-crystallisation"},
    main_product = "pm-garnet",
    ingredients =
    {
        PM.ingredient("pm-garnet", 25),
        PM.ingredient("pm-manganese-ore", 12),
        PM.ingredient("pm-crucible", 6),
        PM.ingredient("pm-seed-crystal", 3),
        PM.ingredient("pm-crystal-slurry", 40, "fluid", 2),
        PM.ingredient("pm-light-coolant", 20, "fluid", 1)
    },
    results =
    {
        PM.product("pm-garnet"):amount(50, 100):done(),
        PM.product("pm-hot-light-coolant", "fluid"):amount(20):index(1):done(),
        PM.product("pm-crucible"):amount(0, 6):done()
    }
  },
} --[[@as data.RecipePrototype[] ]])



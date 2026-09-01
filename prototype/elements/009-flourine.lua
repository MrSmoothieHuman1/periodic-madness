data:extend({

  {
    type = "item",
    name = "pm-flourite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/fluorite.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/fluorite.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/fluorite-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/fluorite-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/fluorite-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-flourine-rnm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-flourine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/flourine.png",
    subgroup = "pm-flourine-rnm",
    order = "b",
    protons = 9,
    neutrons = 10,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-flourite-crystallisation",
    enabled = false,
    energy_required = 24,
    categories = {"pm-washing"},
    subgroup = "pm-flourine-rnm",
    order = "a",
    main_product = "pm-flourite",
    allow_productivity = true,
    crafting_machine_tint = 
    {
        primary = {r = 0.267, g = 0.624, b = 0.839}
    },
    ingredients =
    {
      PM.ingredient("stone", 20),
      PM.ingredient("pm-calcium-ore", 10),
      PM.ingredient("water", 60, "fluid"),
      PM.ingredient("pm-post-transition-metals-ore", 5)
    },
    results =
    {
      PM.product("pm-flourite"):amount(8):done(),
      PM.product("stone"):amount(10, 15):chance(0.8):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrogen-flouride",
    crafting_machine_tint =
    {
        primary = {0.098, 0.922, 0.835},
        secondary = {0.949, 0.918, 0.176},
        tertiary = {0.098, 0.922, 0.835, 0.5},
        quaternary = {0.949, 0.918, 0.176}
    },
    enabled = false,
    energy_required = 3,
    categories = {"pm-acids"},
    subgroup = "pm-flourine-rnm",
    order = "c",
    main_product = "pm-hydrogen-flouride",
    ingredients =
    {
      PM.ingredient("pm-flourite", 2),
      PM.ingredient("sulfuric-acid", 5, "fluid")
    },
    results =
    {
      PM.product("pm-calcium-sulfate"):amount(2, 5):done(),
      PM.product("pm-hydrogen-flouride", "fluid"):amount(8):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydroflouric-acid",
    crafting_machine_tint =
    {
        primary = {0.098, 0.922, 0.835},
        secondary = {0.740, 0.918, 0.376},
        tertiary = {0.098, 0.922, 0.835, 0.5},
        quaternary = {0.740, 0.918, 0.376}
    },
    enabled = false,
    energy_required = 3,
    categories = {"chemistry"},
    subgroup = "pm-flourine-rnm",
    order = "d",
    main_product = "pm-hydroflouric-acid",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-flouride", 8, "fluid"),
      PM.ingredient("pm-palladium-catalyst", 2),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-hydroflouric-acid", "fluid"):amount(20):done(),
      PM.product("pm-palladium-catalyst"):amount(2):chance(0.8):catalyst(2):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.2):catalyst(2):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydroflouric-acid-filtering",
    crafting_machine_tint =
    {
        primary = {0.098, 0.922, 0.835},
        secondary = {0.247, 0.463, 0.671},
        tertiary = {0.933, 0.949, 0.765, 0.5},
        quaternary = {0.247, 0.463, 0.671}
    },
    enabled = false,
    energy_required = 6,
    categories = {"chemistry"},
    subgroup = "pm-flourine-rnm",
    order = "e",
    main_product = "pm-flourine",
    ingredients =
    {
      PM.ingredient("pm-hydroflouric-acid", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-flourine"):amount(3):done(),
      PM.product("pm-sulfur-dioxide", "fluid"):amount(2, 5):done()
    },
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-better-flourite-crystallisation",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/fluorite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/coolant.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 12,
    categories = {"pm-crystallisation"},
    subgroup = "pm-flourine-rnm",
    order = "b",
    main_product = "pm-flourite",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("stone", 10),
      PM.ingredient("pm-calcium-ore", 5),
      PM.ingredient("pm-post-transition-metals-ore", 5),
      PM.ingredient("pm-liquid-mercury", 30, "fluid", 3),
      PM.ingredient("pm-coolant", 7.5, "fluid", 1),
    },
    results =
    {
      PM.product("pm-flourite"):amount(16):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(7.5):index(1):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-light-coolant-flourite-crystallisation",
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/fluorite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/light-coolant.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.33
      },
    },
    enabled = false,
    energy_required = 8,
    categories = {"pm-crystallisation"},
    subgroup = "pm-flourine-rnm",
    order = "ba",
    main_product = "pm-flourite",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("stone", 10),
      PM.ingredient("pm-calcium-ore", 5),
      PM.ingredient("pm-post-transition-metals-ore", 5),
      PM.ingredient("pm-liquid-mercury", 25, "fluid", 3),
      PM.ingredient("pm-light-coolant", 5, "fluid", 1),
    },
    results =
    {
      PM.product("pm-flourite"):amount(16):done(),
      PM.product("pm-hot-coolant", "fluid"):amount(5):catalyst(5):index(1):done()
    }
  } --[[@as data.RecipePrototype]],
})

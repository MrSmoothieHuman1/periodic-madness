local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-magnetite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/magnetite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite.png",   size = 128, scale = 0.124 + 0.01 },
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite-2.png", size = 128, scale = 0.126 },
      { filename = "__periodic-madness__/graphics/icons/ores/magnetite-3.png", size = 128, scale = 0.124 },
    },
    subgroup = "pm-vanadium-tm",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-ferrovanadium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/ferrovanadium.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/ferrovanadium.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/ferrovanadium-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-vanadium-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-vanadium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/vanadium-ore-icon.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/ores/vanadium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/vanadium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/vanadium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/vanadium-ore-icon-4.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-vanadium-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-sodium-metavanadate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sodium-metavanadate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/sodium-metavanadate.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sodium-metavanadate-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sodium-metavanadate-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-vanadium-tm",
    order = "a",
    stack_size = 300
  },

  {
    type = "fluid",
    name = "pm-vanadate-solution",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/vanadate-solution.png",
    subgroup = "pm-vanadium-tm",
    order = "c",
    default_temperature = 15,
    base_color = {r = 0.529, g = 0.43, b = 0.35},
    flow_color = {r = 0.529, g = 0.43, b = 0.35},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-red-cake-precipitate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/red-cake-precipitate.png",
    subgroup = "pm-vanadium-tm",
    order = "f",
    default_temperature = 15,
    base_color = {r = 0.729, g = 0.43, b = 0.35},
    flow_color = {r = 0.729, g = 0.43, b = 0.35},
  },

  {
    type = "recipe",
    name = "pm-magnetite-forming",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-vanadium-tm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-bitumen", 3),
      PM.ingredient("pm-ferrum", 6),
      PM.ingredient("pm-vanadium-oxide", 2)
    },
    results =
    {
      PM.product("pm-magnetite", 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ferrovanadium",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-vanadium-tm",
    order = "b",
    main_product = "pm-ferrovanadium",
    ingredients =
    {
      PM.ingredient("pm-magnetite", 2),
      PM.ingredient("pm-oxygen-gas", 6, "fluid")
    },
    results =
    {
      PM.product("pm-ferrovanadium", 4),
      PM.product_range("iron-ore", 0, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vanadate-solution",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-vanadium-tm",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ferrovanadium", 2),
      PM.ingredient("sulfuric-acid", 5, "fluid"),
      PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-vanadate-solution", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-vanadate-solution-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/vanadate-solution-seperation.png",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-vanadium-tm",
    order = "d",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-vanadate-solution", 5, "fluid"),
    },
    results =
    {
      PM.product_range("pm-vanadium-ore", 6, 10)
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-ammonium-vanadate-solution",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
    subgroup = "pm-vanadium-tm",
    order = "ca",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ferrovanadium", 2),
      PM.ingredient("sulfuric-acid", 2.5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 4)
    },
    results =
    {
      PM.product("pm-vanadate-solution", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-iodine-vanadate-solution-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/iodine-vanadate-solution-seperation.png",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-vanadium-tm",
    order = "da",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-vanadate-solution", 5, "fluid"),
      PM.ingredient("pm-iodine", 4)
    },
    results =
    {
      PM.product("pm-vanadium-ore", 10),
      PM.product_range("pm-vanadium-ore", 0, 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-metavanadate",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-vanadium-tm",
    order = "e",
    main_product = "pm-sodium-metavanadate",
    ingredients = 
    {
      PM.ingredient("pm-vanadium-ore", 4),
      PM.ingredient("pm-low-sulfur-residuals", 5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 4),
      PM.ingredient("pm-sodium-hydroxide", 2.5, "fluid")
    },
    results = 
    {
      PM.product("pm-sodium-metavanadate", 4),
      PM.product_range("pm-high-sulfur-residuals", 1, 3, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-red-cake-precipitate",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    category = "pm-acids",
    subgroup = "pm-vanadium-tm",
    order = "f",
    ingredients = 
    {
      PM.ingredient("sulfuric-acid", 1, "fluid"),
      PM.ingredient("pm-sodium-metavanadate", 2)
    },
    results = 
    {
      PM.product("pm-red-cake-precipitate", 8, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-better-vanadium-oxide",
    allow_productivity = true,
    enabled = false,
    energy_required = 6,
    category = "pm-moltening",
    subgroup = "pm-vanadium-tm",
    order = "g",
    ingredients = 
    {
      PM.ingredient("pm-red-cake-precipitate", 8, "fluid"),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results = 
    {
      PM.product("pm-vanadium-oxide", 3)
    }
  }
})

local PM = require("library")
--the recipe chain for Titanium

data:extend({
  {
    type = "item",
    name = "pm-titanium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/titanium-oxide.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-oxide.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-oxide-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-oxide-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-oxide-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-titanium-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-titanium-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/titanium-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-titanium-tm",
    order = "a",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-titanium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-titanium-tm",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-titanium-chunks",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "a",
    enabled = false,
    energy_required = 8,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-acidic-water", 25, "fluid")
    },
    results =
    {
      PM.product("pm-titanium-chunks", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-oxide",
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "c",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      PM.ingredient("pm-titanium-chunks", 4),
      PM.ingredient("pm-coke", 3)
    },
    results =
    {
      PM.product("pm-titanium-oxide", 6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-chloride",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/titanium-tetrachloride.png",
        icon_size = 64,
        scale = 0.4
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/titanium-ore-icon.png",
        icon_size = 64,
      },
  },
    subgroup = "pm-titanium-tm",
    order = "d",
    category = "pm-acids",
    enabled = false,
    energy_required = 2,
    main_product = "pm-titanium-chloride",
    ingredients =
    {
      PM.ingredient("pm-titanium-oxide", 3),
      PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-titanium-chloride", 2, "fluid"),
      PM.product_range("pm-coke", 0, 1)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-ore",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-chloride-seperation.png",
    subgroup = "pm-titanium-tm",
    order = "e",
    category = "pm-acids",
    energy_required = 4,
    enabled = false,
    main_product = "pm-titanium-ore",
    ingredients =
    {
      PM.ingredient("pm-titanium-chloride", 2, "fluid")
    },
    results =
    {
      PM.product("pm-titanium-ore", 4),
      PM.product("pm-chlorine", 5, "fluid"),
      PM.product_range("pm-ferrum", 0, 3)
    }
  } --[[@as data.RecipePrototype]],
  --titanium plate is order f
  {
    type = "recipe",
    name = "pm-argon-titanium-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-titanium-welding.png",
    subgroup = "pm-titanium-tm",
    order = "i",
    category = "pm-moltening",
    energy_required = 4.5,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-argon-gas", 40, "fluid"),
      PM.ingredient("pm-titanium-oxide", 15)
    },
    results =
    {
      PM.product("pm-molten-titanium", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-titanium-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "b",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-titanium-chunks", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-plate",
    subgroup = "pm-titanium-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-titanium-ore", 1) },
    results = {
      PM.product("pm-titanium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-titanium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-titanium.png",
        icon_size = 64,
        scale = 0.4,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/titanium-plate.png",
        icon_size = 64,
        scale = 0.22,
        shift = { 0, -6 }
      },
    },
    subgroup = "pm-titanium-tm",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-titanium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-titanium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-titanium-tm",
    order = "h",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-titanium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-titanium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

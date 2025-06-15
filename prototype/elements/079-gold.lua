local PM = require("library")
--I LOVE GOLLLLLLLD

data:extend({

  {
    type = "item",
    name = "pm-gold-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/gold-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-gold-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-gold-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/gold-ore-icon.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/ores/gold-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/gold-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/gold-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/gold-ore-icon-4.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-gold-tm",
    order = "b",
    stack_size = 200,
  },

  {
    type = "recipe",
    name = "pm-gold-chunks",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-gold-tm",
    order = "a",
    category = "pm-acids",
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
      PM.ingredient("pm-acidic-water", 10, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-gold-chunks", 5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-gold-ore",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-mercury.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-gold-tm",
    order = "c",
    category = "pm-acids",
    energy_required = 2,
    main_product = "pm-gold-ore",
    ingredients =
    {
      PM.ingredient("pm-gold-chunks", 5),
      PM.ingredient("pm-liquid-mercury", 10, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-gold-ore", 10),
      PM.product("pm-mercury-vapour", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-gold-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/gold-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-gold-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.82, g = 0, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 5, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-gold-chunks", 5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-gold-plate",
    subgroup = "pm-gold-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-gold-ore", 1) },
    results = {
      PM.product("pm-gold-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-gold",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-gold.png",
        icon_size = 64,
        scale = 0.4,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/gold-plate.png",
        icon_size = 64,
        scale = 0.22,
        shift = { 0, -6 }
      },
    },
    subgroup = "pm-gold-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-gold-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-gold", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-gold-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gold-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-gold-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-gold", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-gold-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

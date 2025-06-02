local PM = require("library")
data:extend({
  {
    type = "item",
    name = "pm-manganese-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-manganese-tm",
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-transition-manganese-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.07, g = 0.08, b = 0.38, a = 1 }, --background visible colour
      tertiary = { r = 0.07, g = 0.08, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-hydrochloric-acid", 10, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-manganese-ore", 8),
      PM.product_range("pm-ferrum", 2, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-transition-manganese-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/manganese-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "c",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.37, g = 0.08, b = 0.38, a = 1 }, --background visible colour
      tertiary = { r = 0.37, g = 0.08, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-manganese-ore", 8),
      PM.product_range_chance("pm-ferrum", 1, 2, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate",
    subgroup = "pm-manganese-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-manganese-ore", 1) 
    },
    results = 
    {
      PM.product("pm-manganese-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-manganese",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-manganese.png",
        icon_size = 64,
        scale = 0.4,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/manganese-plate.png",
        icon_size = 64,
        scale = 0.22,
        shift = { 0, -6 }
      },
    },
    subgroup = "pm-manganese-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-manganese-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-manganese", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/manganese-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-manganese-tm",
    order = "e",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-manganese", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-manganese-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

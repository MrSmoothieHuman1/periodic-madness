local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-zinc-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-zinc-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    stack_size = 300
  },

  {
    type = "recipe",
    name = "pm-zinc-powder",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-zinc-tm",
    order = "a",
    main_product = "pm-zinc-powder",
    ingredients = 
    {
      PM.ingredient("pm-zinc-chunk", 2),
    },
    results = 
    {
      PM.product("pm-zinc-powder", 8),
      PM.product_range_chance("stone", 1, 2, 0.5)
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-zinc-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.63, g = 0.64, b = 0.78, a = 1 }, --background visible colour
      tertiary = { r = 0.73, g = 0.7, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-powder", 8),
      PM.ingredient("pm-hydrochloric-acid", 4, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-zinc-ore", 2),
      PM.product_range_chance("sulfur", 1, 2, 0.75),
    }
  },

  {
    type = "recipe",
    name = "pm-chromic-zinc-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      }
    },
    subgroup = "pm-zinc-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.63, g = 0, b = 0.78, a = 1 },  --background visible colour
      tertiary = { r = 0.73, g = 0, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-powder", 8),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-zinc-ore", 2),
    }
  },
})

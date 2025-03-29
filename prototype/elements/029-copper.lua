local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-copper-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-copper-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-crude-matte-copper",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-copper-tm",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-crude-matte-copper",
    enabled = false,
    energy_required = 3.2 / 2,
    category = "smelting",
    subgroup = "pm-copper-tm",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 1)
    },
    results = 
    {
      PM.product("pm-crude-matte-copper", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-ezekiel-matte-copper-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
        scale = 0.8
      },
    },
    subgroup = "pm-copper-tm",
    order = "b",
    category = "pm-acids",
    enabled = false,
    energy_required = 2,
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },     --main visible colour
      secondary = { r = 0.87, g = 0.47, b = 0, a = 1 }, --background visible colour
      tertiary = { r = 0.87, g = 0.5, b = 0, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    ingredients =
    {
      PM.ingredient("pm-crude-matte-copper", 2),
      PM.ingredient("pm-hydrochloric-acid", 4, "fluid")
    },
    results =
    {
      PM.product("copper-ore", 2),
      PM.product_range_chance("pm-patina", 1, 2, 0.75)
    }
  },

  {
    type = "recipe",
    name = "pm-chromic-matte-copper-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.8,
      },
    },
    subgroup = "pm-copper-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },     --main visible colour
      secondary = { r = 0.87, g = 0, b = 0.8, a = 1 },  --background visible colour
      tertiary = { r = 0.87, g = 0, b = 0.8, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-crude-matte-copper", 4),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("copper-ore", 4),
      PM.product_range_chance("pm-patina", 0, 2, 0.5),
    }
  },

--MARK: Adv. Copper
-- better version of copper, normal chunk to ore is 1:2 - this is 1:6, so 4 chunks turns into 24 ore
})

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
    icon = "__periodic-madness__/graphics/icons/ores/crude-matte-copper.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/crude-matte-copper.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/crude-matte-copper-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-copper-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-copper-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/copper-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-copper-tm",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-blister-copper",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/blister-copper.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/blister-copper.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/blister-copper-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/blister-copper-3.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/blister-copper-4.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-advanced-copper-tm",
    order = "c",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-fire-refined-copper",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/fire-refined-copper.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/fire-refined-copper.png", size = 64, scale = 0.5 },
      --{ filename = "__periodic-madness__/graphics/icons/ores/copper-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-copper-tm",
    order = "d",
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
        icon = "__periodic-madness__/graphics/icons/ores/crude-matte-copper.png",
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
        icon = "__periodic-madness__/graphics/icons/ores/crude-matte-copper.png",
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
    }
  },

--MARK: Adv. Copper
-- better version of copper, normal chunk to ore is 1:2 - this is 1:6, so 4 chunks turns into 24 ore

{
  type = "recipe",
  name = "pm-copper-powder",
  enabled = false,
  energy_required = 4,
  category = "pm-crushing",
  subgroup = "pm-advanced-copper-tm",
  order = "a",
  ingredients =
  {
    PM.ingredient("pm-copper-chunk", 4),
    PM.ingredient("pm-patina", 3)
  },
  results =
  {
    PM.product("pm-copper-powder", 12)
  }
},
{
  type = "recipe",
  name = "pm-powdered-copper-frothing",
  enabled = false,
  energy_required = 2,
  category = "pm-mixing",
  subgroup = "pm-advanced-copper-tm",
  order = "b",
  main_product = "pm-copper-froth",
  ingredients =
  {
    PM.ingredient("pm-copper-powder", 12),
    PM.ingredient("water", 30, "fluid"),
    PM.ingredient("pm-sodium-hydroxide", 5, "fluid")
  },
  results =
  {
    PM.product("pm-copper-froth", 10, "fluid"),
    PM.product("pm-copper-tailings", 15, "fluid")
  }
},
{
  type = "recipe",
  name = "pm-matte-copper",
  enabled = false,
  energy_required = 8,
  category = "pm-moltening", --should be in reverbatory furnace
  subgroup = "pm-advanced-copper-tm",
  order = "c",
  main_product = "pm-matte-copper",
  ingredients =
  {
    PM.ingredient("pm-copper-froth", 10, "fluid"),
  },
  results =
  {
    PM.product("pm-matte-copper", 15, "fluid"),
    PM.product_range("sulfur", 0, 4),
    PM.product_range_chance("pm-gold-chunks", 0, 2, 0.66)
  }
},
{
  type = "recipe",
  name = "pm-blister-copper",
  enabled = false,
  energy_required = 6,
  category = "pm-moltening",
  subgroup = "pm-advanced-copper-tm",
  order = "d",
  main_product = "pm-blister-copper",
  ingredients =
  {
    PM.ingredient("pm-matte-copper", 15, "fluid"),
    PM.ingredient("pm-cobalt-catalyst", 3)
  },
  results = 
  {
    PM.catalyst_range_chance("pm-cobalt-catalyst", 1, 3, 1, 0.8),
    PM.catalyst_range_chance("pm-catalyst-container", 0, 2, 0, 0.2),
    PM.product("pm-blister-copper", 14),
    PM.product_range("pm-combined-ore-slab", 0, 3)
  }
},
{
  type = "recipe",
  name = "pm-fire-refined-copper",
  enabled = false,
  energy_required = 4,
  category = "pm-coldening",
  subgroup = "pm-advanced-copper-tm",
  order = "e",
  ingredients =
  {
    PM.ingredient("pm-blister-copper", 14),
    PM.ingredient("pm-syngas", 40, "fluid")
  },
  results =
  {
    PM.product("pm-fire-refined-copper", 10)
  }
},
{
  type = "recipe",
  name = "pm-fire-refined-copper-seperation",
  enabled = false,
  energy_required = 4,
  category = "pm-electrolysis",
  subgroup = "pm-advanced-copper-tm",
  order = "f",
  main_product = "copper-ore",
  ingredients =
  {
    PM.ingredient("pm-fire-refined-copper", 5),
    PM.ingredient("pm-oxygen-gas", 20, "fluid")
  },
  results =
  {
    PM.product("copper-ore", 12),
    PM.product_range_chance("pm-platinum-powder", 0, 2, 0.33)
  }
}
})

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
    icon = "__periodic-madness__/graphics/icons/copper-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/copper-powder.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/copper-powder-2.png", size = 64, scale = 0.5 }
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
      { filename = "__periodic-madness__/graphics/icons/ores/fire-refined-copper-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/fire-refined-copper-3.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/fire-refined-copper-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-copper-tm",
    order = "d",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-cupric-waste-water",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/cupric-waste-water.png",
    subgroup = "pm-copper-tm",
    order = "i",
    default_temperature = 15,
    base_color = {r = 0.6, g = 0.432, b = 0.24},
    flow_color = {r = 0.6, g = 0.432, b = 0.24}
  },
  {
    type = "fluid",
    name = "pm-matte-copper",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/matte-copper.png",
    subgroup = "pm-advanced-copper-tm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    auto_barrel = false,
  },

  {
    type = "recipe",
    name = "pm-crude-matte-copper",
    enabled = false,
    energy_required = 2,
    categories = {"pm-crushing"},
    subgroup = "pm-copper-tm",
    order = "a",
    main_product = "pm-crude-matte-copper",
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 1)
    },
    results = 
    {
      PM.product("pm-crude-matte-copper"):amount(1):done(),
      PM.product("stone"):amount(1, 2):chance(0.25):done()
    }
  },
  {
    type = "recipe",
    name = "pm-ezekiel-matte-copper-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-copper-tm",
    order = "b",
    categories = {"pm-acids"},
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
      PM.ingredient("pm-acidic-water", 4, "fluid")
    },
    results =
    {
      PM.product("copper-ore"):amount(2):done(),
      PM.product("pm-patina"):amount(1, 2):chance(0.75):done()
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
      },
    },
    subgroup = "pm-copper-tm",
    order = "c",
    categories = {"pm-acids"},
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
      PM.product("copper-ore"):amount(4):done(),
    }
  },
    {
    type = "recipe",
    name = "pm-copper-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-copper-tm",
    order = "d",
    categories = {"smelting"},
    energy_required = 3.2,
    enabled = true,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 2)
    },
    results = {
      PM.product("copper-plate"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-copper",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-copper.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-copper-tm",
    order = "f",
    categories = {"pm-moltening"},
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-copper", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-copper-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-cooling.png",
    categories = {"pm-coldening"},
    subgroup = "pm-copper-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-copper", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("copper-plate"):amount(10):done(),
      PM.product("pm-crucible"):amount(1):chance(0.8):done()
    }
  },
  {
    type = "recipe",
    name = "pm-patina",
    enabled = false,
    energy_required = 18,
    subgroup = "pm-copper-tm",
    order = "h",
    categories = {"pm-moltening"},
    ingredients =
    {
      PM.ingredient("sulfuric-acid", 20, "fluid"),
      PM.ingredient("copper-plate", 10),
    },
    results =
    {
      PM.product("pm-patina"):amount(10):done()
    }
  },

--MARK: Adv. Copper
-- better version of copper, normal chunk to ore is 1:2 - this is 1:6, so 4 chunks turns into 24 ore

{
  type = "recipe",
  name = "pm-copper-powder",
  enabled = false,
  energy_required = 4,
  categories = {"pm-crushing"},
  subgroup = "pm-advanced-copper-tm",
  order = "a",
  ingredients =
  {
    PM.ingredient("pm-copper-chunk", 4),
    PM.ingredient("pm-patina", 3)
  },
  results =
  {
    PM.product("pm-copper-powder"):amount(12):done()
  }
},
{
  type = "recipe",
  name = "pm-powdered-copper-frothing",
  crafting_machine_tint = 
  {
    primary = {0.761, 0.624, 0.506}
  },
  enabled = false,
  energy_required = 2,
  categories = {"pm-mixing"},
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
    PM.product("pm-copper-froth", "fluid"):amount(10):done(),
    PM.product("pm-copper-tailings", "fluid"):amount(15):done()
  }
},
{
  type = "recipe",
  name = "pm-matte-copper",
  enabled = false,
  energy_required = 8,
  categories = {"pm-reverberatory-smelting"},
  subgroup = "pm-advanced-copper-tm",
  order = "c",
  main_product = "pm-matte-copper",
  ingredients =
  {
    PM.ingredient("pm-copper-froth", 10, "fluid"),
  },
  results =
  {
    PM.product("pm-matte-copper", "fluid"):amount(15):done(),
    PM.product("sulfur"):amount(0, 4):done(),
    PM.product("pm-gold-chunks"):amount(0, 2):chance(0.66):done()
  }
},
{
  type = "recipe",
  name = "pm-blister-copper",
  enabled = false,
  energy_required = 6,
  categories = {"pm-moltening"},
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
    PM.product("pm-cobalt-catalyst"):amount(3):chance(0.85):catalyst(2):done(),
    PM.product("pm-catalyst-container"):amount(3):chance(0.15):catalyst(2):done(),
    PM.product("pm-blister-copper"):amount(14):done(),
    PM.product("pm-combined-ore-slab"):amount(0, 3):done()
  }
},
{
  type = "recipe",
  name = "pm-fire-refined-copper",
  enabled = false,
  energy_required = 4,
  categories = {"pm-coldening"},
  subgroup = "pm-advanced-copper-tm",
  order = "e",
  ingredients =
  {
    PM.ingredient("pm-blister-copper", 14),
    PM.ingredient("pm-syngas", 40, "fluid")
  },
  results =
  {
    PM.product("pm-fire-refined-copper"):amount(10):done()
  }
},
{
  type = "recipe",
  name = "pm-fire-refined-copper-seperation",
  enabled = false,
  energy_required = 4,
  categories = {"pm-electrolysis"},
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
    PM.product("copper-ore"):amount(12):done(),
    PM.product("pm-platinum-powder"):amount(0, 2):chance(0.33):done()
  }
}
})

data.raw["recipe"]["copper-plate"].subgroup = "pm-copper-tm"
data.raw["recipe"]["copper-plate"].order = "e"
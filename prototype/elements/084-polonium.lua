data:extend({

  {
    type = "item",
    name = "pm-bismuth-210",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismuth-210-icon.png",
    subgroup = "pm-polonium-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-polonium-210",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/polonium-ore-icon-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-polonium-ptm",
    order = "b",
    protons = 84,
    neutrons = 126,
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-polonium-fuel-cell",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/polonium-fuel-cell.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/polonium-fuel-cell.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.5,
          mipmap_count = 4
        }
      }
    },
    subgroup = "pm-polonium-ptm",
    burnt_result = "pm-used-up-polonium-fuel-cell",
    fuel_category = "pm-polonium",
    fuel_value = "10GJ",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-used-up-polonium-fuel-cell",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/used-up-polonium-fuel-cell.png",
    subgroup = "pm-polonium-ptm",
    order = "f",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "pm-proton-beam",
    energy_required = 10,
    enabled = false,
    categories = {"pm-electrolysis"},
    subgroup = "pm-polonium-ptm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-gas", 20, "fluid")
    },
    results =
    {
      PM.product("pm-proton-beam", "fluid"):amount(20):done()
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-210",
    enabled = false,
    energy_required = 10,
    categories = {"pm-cyclotroning"},
    subgroup = "pm-polonium-ptm",
    main_product = "pm-bismuth-210",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-bismuth-ore", 30)
    },
    results =
    {
      PM.product("pm-bismuth-ore"):amount(4, 15):chance(0.25):done(),
      PM.product("pm-bismuth-210"):amount(6, 15):chance(0.75):done()
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-210",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-210-decay.png",
    enabled = false,
    energy_required = 15,
    categories = {"pm-beta-decay"},
    subgroup = "pm-polonium-ptm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-bismuth-210", 5)
    },
    results =
    {
      PM.product("pm-polonium-210"):amount(2, 3):catalyst(2):done(),
      PM.product("pm-bismuth-210"):amount(2, 3):catalyst(3):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-fuel-cell",
    enabled = false,
    energy_required = 15,
    subgroup = "pm-polonium-ptm",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polonium-210", 12),
      PM.ingredient("pm-empty-reactor-cell", 2)
    },
    results =
    {
      PM.product("pm-polonium-fuel-cell"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-cell-reprocessing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/polonium-fuel-reprocessing.png",
    enabled = false,
    energy_required = 30,
    categories = {"crafting-with-fluid"},
    subgroup = "pm-polonium-ptm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-used-up-polonium-fuel-cell", 10),
    },
    results =
    {
      PM.product("pm-empty-reactor-cell"):amount(3, 5):done(),
      PM.product("pm-lead-ore"):amount(1, 5):done(),
      PM.product("pm-helium-gas", "fluid"):amount(2, 5):done(),
      PM.product("pm-bismuth-210"):amount(4):chance(0.75):done()
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-sassxolotl-enrichment",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/polonium-sassxolotl-enrichment.png",
    categories = {"centrifuging"},
    subgroup = "pm-polonium-ptm",
    order = "e",
    enabled = false,
    energy_required = 15,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-polonium-210", 20),
      PM.ingredient("pm-bismuth-210", 2),
      PM.ingredient("pm-trace-astatine-211", 2)
    },
    results =
    {
      PM.product("pm-polonium-210"):amount(24):catalyst(20):done(),
      PM.product("pm-bismuth-210"):amount(1):catalyst(1):done(),
      PM.product("pm-trace-astatine-211"):amount(1):catalyst(1):done()
    }
  },

  {
    type = "recipe",
    name = "pm-polonium-fuel-rod",
    enabled = false,
    subgroup = "pm-fuel-rods",
    order = "c",
    energy_required = 15,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-polonium-fuel-cell", 1),
      PM.ingredient("pm-empty-fuel-rod", 5)
    },
    results = 
    {
      PM.product("pm-polonium-fuel-rod"):amount(5):done()
    }
  },
})

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
    type = "item",
    name = "pm-manganese-54",
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
    order = "x",
    custom_tooltip_fields =
    {
        {
          name = {"pm-tooltips.beta-decay"},
          value = {"", "[img=item.pm-polonium-210]", {"item-name.pm-chromium-54"}}
        },
    },
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-molten-manganese",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/molten-manganese.png",
    subgroup = "pm-manganese-tm",
    order = "c",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.8},
    flow_color = {r = 0.3, g = 0.3, b = 0.8},
    auto_barrel = false,
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
        Scale = 0.45,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "b",
    categories = {"pm-acids"},
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
      PM.product("pm-manganese-ore"):amount(8):done(),
      PM.product("pm-ferrum"):amount(2, 4):done()
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
        Scale = 0.45,
      },
    },
    subgroup = "pm-manganese-tm",
    order = "c",
    categories = {"pm-acids"},
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
      PM.product("pm-manganese-ore"):amount(8):done(),
      PM.product("pm-ferrum"):amount(1, 2):chance(0.75):done()
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate",
    subgroup = "pm-manganese-tm",
    order = "d",
    categories = {"smelting"},
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-manganese-ore", 1) 
    },
    results = 
    {
      PM.product("pm-manganese-plate"):amount(1):done()
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
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/manganese-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-manganese-tm",
    order = "e",
    categories = {"pm-moltening"},
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
      PM.product("pm-molten-manganese", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-chromium-manganese",
    enabled = false,
    energy_required = 9,
    categories = {"pm-moltening"},
    subgroup = "pm-manganese-tm",
    order = "ca",
    main_product = "pm-molten-manganese",
    emission_multiplier = 1.5,
    ingredients =
    {
      PM.ingredient("pm-manganese-ore", 5),
      PM.ingredient("pm-chromium-ore", 2),
      PM.ingredient("pm-borax", 2),
      PM.ingredient("steam", 50, "fluid")
    },
    results = 
    {
      PM.product("pm-molten-manganese", "fluid"):amount(7.5):done(),
      PM.product("pm-mixed-ore-slag"):amount(0, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/manganese-cooling.png",
    categories = {"pm-coldening"},
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
      PM.product("pm-manganese-plate"):amount(10):done(),
      PM.product("pm-crucible"):amount(1):chance(0.8):done()
    }
  },

  {
    type = "recipe",
    name = "pm-manganese-54",
    enabled = false,
    categories = {"pm-cyclotroning"},
    ingredients =
    {
        PM.ingredient("pm-manganese-plate", 5),
    },
    results = 
    {
        PM.product("pm-manganese-54"):amount(5):done()
    }
  }
})

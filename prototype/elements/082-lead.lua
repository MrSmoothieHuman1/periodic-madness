data:extend({

  {
    type = "item",
    name = "pm-lead-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lead-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lead-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/lead-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-lead-ptm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lead-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lead-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/lead-powder.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/lead-powder-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-lead-ptm",
    order = "b",
    stack_size = 120
  },
  {
    type = "item",
    name = "pm-impure-lead",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/impure-lead-ore-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-lead-ptm",
    order = "d",
    stack_size = 80
  },
  {
    type = "item",
    name = "pm-lead-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lead-ore-icon.png",
    subgroup = "pm-lead-ptm",
    order = "e",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-molten-lead",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/molten-lead.png",
    subgroup = "pm-lead-ptm",
    order = "f",
    default_temperature = 15,
    base_color = {r = 0.278, g = 0.143, b = 0},
    flow_color = {r = 0.278, g = 0.143, b = 0},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-lead-froth",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/lead-froth.png",
    subgroup = "pm-lead-ptm",
    order = "c",
    default_temperature = 15,
    gas_temperature = 15,
    base_color = {r = 0.478, g = 0.343, b = 0},
    flow_color = {r = 0.378, g = 0.143, b = 0},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-lead-waste-water",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/lead-waste-water.png",
    subgroup = "pm-lead-ptm",
    order = "h",
    default_temperature = 15,
    base_color = {r = 0.6, g = 0.59, b = 0.24},
    flow_color = {r = 0.5, g = 0.49, b = 0.04}
  },

  {
    type = "recipe",
    name = "pm-lead-chunks",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/lead-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.45,
      }
    },
    enabled = false,
    energy_required = 8,
    categories = {"pm-acids"},
    subgroup = "pm-lead-ptm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-post-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lead-chunks"):amount(4):done()
    }
  },  
  {
    type = "recipe",
    name = "pm-lead-powder",
    enabled = false,
    energy_required = 3,
    categories = {"pm-crushing"},
    main_product = "pm-lead-powder",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-lead-chunks", 4)
    },
    results =
    {
      PM.product("pm-lead-powder"):amount(6, 8):done(),
      PM.product("pm-mixed-ore-slag"):amount(2):chance(0.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lead-froth",
    enabled = false,
    energy_required = 6,
    categories = {"pm-washing"},
    main_product = "pm-lead-froth",
    allow_productivity = true,
    crafting_machine_tint =
    {
        primary = {r = 0.478, g = 0.343, b = 0, a = 0.75}
    },
    ingredients =
    {
      PM.ingredient("pm-lead-powder", 4),
      PM.ingredient("water", 100, "fluid"),
    },
    results =
    {
      PM.product("pm-lead-froth", "fluid"):amount(30):done(),
      PM.product("pm-acidic-water", "fluid"):amount(10, 20):done(),
    }
  },
  {
    type = "recipe",
    name = "pm-impure-lead",
    enabled = false,
    energy_required = 6,
    categories = {"pm-washing"},
    subgroup = "pm-lead-ptm",
    order = "d",
    main_product = "pm-impure-lead",
    allow_productivty = true,
    crafting_machine_tint = 
    {
        primary = {r = 0.678, g = 0.543, b = 0.1}
    },
    ingredients =
    {
      PM.ingredient("pm-lead-froth", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-thallium-ore"):amount(2):chance(0.2):done(),
      PM.product("pm-impure-lead"):amount(2):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lead-ore",
    enabled = false,
    energy_required = 3,
    categories = {"pm-moltening"},
    subgroup = "pm-lead-ptm",
    order = "e",
    main_product = "pm-lead-ore",
    ingredients =
    {
      PM.ingredient("pm-impure-lead", 2),
      PM.ingredient("pm-carbon", 4),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lead-ore"):amount(4):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lead-plate",
    categories = {"smelting"},
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-lead-ore", 1) },
    results = {
      PM.product("pm-lead-plate"):amount(1):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-lead",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-lead.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/lead-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    categories = {"pm-moltening"},
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-lead-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-lead", "fluid"):amount(5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-molten-arsenic-lead",
    enabled = false,
    energy_required = 9,
    categories = {"pm-moltening"},
    subgroup = "pm-lead-ptm",
    order = "ea",
    main_product = "pm-molten-lead",
    emission_multiplier = 1.5,
    ingredients =
    {
      PM.ingredient("pm-lead-ore", 5),
      PM.ingredient("pm-arsenic-ore", 2),
      PM.ingredient("pm-borax", 2),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-lead", "fluid"):amount(7.5):done(),
      PM.product("pm-mixed-ore-slag"):amount(0, 3):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lead-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-cooling.png",
    categories = {"pm-coldening"},
    subgroup = "pm-lead-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-lead", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-lead-plate"):amount(10):done(),
      PM.product("pm-crucible"):amount(1):chance(0.8):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lead-waste-water",
    crafting_machine_tint =
    {
        primary = {0.89, 0.725, 0.518}
    },
    categories = {"pm-mixing"},
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-lead-froth", 12, "fluid"),
      PM.ingredient("pm-sodium-hydroxide", 4, "fluid"),
      PM.ingredient("water", 20, "fluid"),
    },
    results = 
    {
      PM.product("pm-lead-waste-water", "fluid"):amount(15):done()
    }
  },
  {
    type = "recipe",
    name = "pm-lead-waste-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-waste-water-looping.png",
    crafting_machine_tint =
    {
        primary = {0.761, 0.596, 0.392}
    },
    categories = {"pm-mixing"},
    subgroup = "pm-lead-ptm",
    order = "i",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      PM.ingredient("pm-lead-waste-water", 15, "fluid"),
      PM.ingredient("water", 15, "fluid")
    },
    results = 
    {
      PM.product("water", "fluid"):amount(15, 20):done(),
      PM.product("pm-lead-powder"):amount(0, 4):chance(0.25):done()
    }
  },
})

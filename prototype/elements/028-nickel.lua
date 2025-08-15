data:extend({
  {
    type = "item",
    name = "pm-nickel-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-nickel-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-nickel-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/nickel-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-powder.png",   size = 64, scale = 0.5 },
      --{ filename = "__periodic-madness__/graphics/icons/ores/nickel-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-nickel-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-high-purity-nickel-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/high-purity-nickel-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/high-purity-nickel-powder.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/high-purity-nickel-powder-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-advanced-nickel-tm",
    order = "c",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-nickel-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/nickel-sulfate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-sulfate.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-sulfate-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/nickel-sulfate-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-advanced-nickel-tm",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-nickel-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-nickel-tm",
    order = "b",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-matte-nickel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/matte-nickel.png",
    subgroup = "pm-advanced-nickel-tm",
    order = "a",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-mixed-nickel-concentrate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/mixed-nickel-concentrate.png",
    subgroup = "pm-advanced-nickel-tm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    auto_barrel = false,
  },

  {
    type = "recipe",
    name = "pm-nickel-powder",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-nickel-tm",
    order = "a",
    ingredients = 
    {
      PM.ingredient("pm-nickel-chunk", 2),
    },
    results = 
    {
      PM.product("pm-nickel-powder", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-nickel-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-powder", 4),
      PM.ingredient("pm-hydrochloric-acid", 4, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-nickel-ore", 2),
      PM.product_range_chance("sulfur", 1, 2, 0.33),
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-nickel-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-nickel-tm",
    order = "c",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },         --main visible colour
      secondary = { r = 0.82, g = 0.82, b = 0.92, a = 1 },  --background visible colour
      tertiary = { r = 0.82, g = 0.82, b = 0.92, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }     --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-powder", 4),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    allow_decomposition = false,
    enabled = false,
    results =
    {
      PM.product("pm-nickel-ore", 2),
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-nickel-tm",
    order = "d",
    category = "smelting",
    enabled = true,
    allow_decomposition = false,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-nickel-chunk", 2)
    },
    results = {
      PM.product("pm-nickel-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-plate",
    subgroup = "pm-nickel-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-nickel-ore", 1) },
    results = {
      PM.product("pm-nickel-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-nickel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-nickel.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
        icon_size = 64,
        scale = 0.22,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-nickel-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-nickel", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-nickel-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-nickel", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-nickel-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },

--MARK: Adv. Nickel

{
  type = "recipe",
  name = "pm-powdered-nickel-frothing",
  enabled = false,
  energy_required = 2,
  category = "pm-mixing",
  subgroup = "pm-advanced-nickel-tm",
  order = "a",
  main_product = "pm-nickel-froth",
  ingredients =
  {
    PM.ingredient("pm-nickel-powder", 16),
    PM.ingredient("water", 30, "fluid"),
    PM.ingredient("pm-sodium-hydroxide", 5, "fluid")
  },
  results =
  {
    PM.product("pm-nickel-froth", 10, "fluid"),
    PM.product("pm-nickel-tailings", 15, "fluid")
  }
},
{
  type = "recipe",
  name = "pm-matte-nickel",
  enabled = false,
  energy_required = 8,
  category = "pm-moltening", --should be in reverbatory furnace
  subgroup = "pm-advanced-nickel-tm",
  order = "b",
  main_product = "pm-matte-nickel",
  allow_productivity = true,
  ingredients =
  {
    PM.ingredient("pm-nickel-froth", 10, "fluid"),
  },
  results =
  {
    PM.product("pm-matte-nickel", 15, "fluid"),
    PM.product_range("sulfur", 0, 4),
    PM.product_range_chance("pm-patina", 0, 2, 0.33)
  }
},
{
  type = "recipe",
  name = "pm-mixed-nickel-concentrate",
  enabled = false,
  energy_required = 8,
  category = "chemistry",
  subgroup = "pm-advanced-nickel-tm",
  order = "c",
  main_product = "pm-mixed-nickel-concentrate",
  ingredients =
  {
    PM.ingredient("pm-matte-nickel", 15, "fluid"),
    PM.ingredient("pm-ammonia-gas", 20, "fluid")
  },
  results =
  {
    PM.product("pm-mixed-nickel-concentrate", 10, "fluid"),
    PM.product_range("pm-ammonium-chloride", 5, 7)
  }
},
{
  type = "recipe",
  name = "pm-high-purity-nickel-powder",
  enabled = false,
  energy_required = 16,
  category = "chemistry",
  subgroup = "pm-advanced-nickel-tm",
  order = "d",
  main_product = "pm-high-purity-nickel-powder",
  allow_productivity = true,
  ingredients =
  {
    PM.ingredient("pm-mixed-nickel-concentrate", 10, "fluid"),
    PM.ingredient("pm-hydrogen-gas", 30, "fluid")
  },
  results =
  {
    PM.product("pm-high-purity-nickel-powder", 6),
    PM.catalyst_range("pm-combined-ore-slab", 0, 2, 1)
  }
},
{
  type = "recipe",
  name = "pm-nickel-sulfate",
  enabled = false,
  energy_required = 12,
  category = "pm-mixing",
  subgroup = "pm-advanced-nickel-tm",
  order = "e",
  main_product = "pm-nickel-sulfate",
  ingredients =
  {
    PM.ingredient("pm-high-purity-nickel-powder", 6),
    PM.ingredient("pm-cobalt-blue", 6),
    PM.ingredient("sulfuric-acid", 10, "fluid")
  },
  results =
  {
    PM.product("pm-nickel-sulfate", 8),
    PM.product("pm-cobalt-blue", 6),
  }
},
{
  type = "recipe",
  name = "pm-nickel-sulfate-seperation",
  enabled = false,
  energy_required = 6,
  category = "chemistry",
  subgroup = "pm-advanced-nickel-tm",
  order = "f",
  main_product = "pm-nickel-ore",
  allow_productivity = true,
  ingredients =
  {
    PM.ingredient("pm-nickel-sulfate", 4),
    PM.ingredient("pm-cobalt-catalyst", 2)
  },
  results = 
  {
    PM.catalyst_chance("pm-cobalt-catalyst", 2, 0.8, 1),
    PM.catalyst_chance("pm-catalyst-container", 2, 0.2, 1),
    PM.product("pm-nickel-ore", 12),
    PM.product_range("pm-sulfur-dioxide", 2, 12, "fluid")
  }
}
})

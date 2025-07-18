local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-iron-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/iron-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-iron-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-pig-iron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/pig-iron.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-3.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-iron-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-wrought-iron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/pig-iron.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-3.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/pig-iron-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-iron-tm",
    order = "c",
    stack_size = 120
  },
  {
    type = "item",
    name = "pm-combined-ore-slab",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/combined-ore-slab.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/combined-ore-slab.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/combined-ore-slab-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/combined-ore-slab-3.png",   size = 64, scale = 0.5 },
      --{ filename = "__periodic-madness__/graphics/icons/ores/pig-iron-4.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-advanced-iron-tm",
    order = "d",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-ferrous-waste-water",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/ferrous-waste-water.png",
    subgroup = "pm-iron-tm",
    order = "i",
    default_temperature = 15,
    base_color = {r = 0.24, g = 0.572, b = 0.6},
    flow_color = {r = 0.24, g = 0.572, b = 0.6}
  },
  {
    type = "fluid",
    name = "pm-mixed-molten-iron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/mixed-molten-iron.png",
    subgroup = "pm-advanced-iron-tm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    auto_barrel = false,
  },

  {
    type = "recipe",
    name = "pm-basic-pig-iron",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-iron-tm",
    order = "a",
    main_product = "pm-pig-iron",
    ingredients =
    {
      PM.ingredient("pm-iron-chunk", 1)
    },
    results = 
    {
      PM.product("pm-pig-iron", 1),
      PM.product_range_chance("stone", 1, 2, 0.25)
    }
  },
  {
    type = "recipe",
    name = "pm-pig-iron-seperation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-iron-tm",
    order = "b",
    category = "pm-acids",
    enabled = false,
    energy_required = 2,
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.56, g = 0.87, b = 1, a = 1 },  --background visible colour
      tertiary = { r = 0.66, g = 0.91, b = 1, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    ingredients =
    {
      PM.ingredient("pm-pig-iron", 2),
      PM.ingredient("pm-hydrochloric-acid", 4, "fluid")
    },
    results =
    {
      PM.product("iron-ore", 2),
      PM.product_range_chance("pm-ferrum", 1, 2, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-pig-iron-seperation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
        scale = 0.8
      },
    },
    subgroup = "pm-iron-tm",
    order = "c",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },     --main visible colour
      secondary = { r = 0.56, g = 0, b = 1, a = 1 },    --background visible colour
      tertiary = { r = 0.66, g = 0, b = 1, a = 0.5 },   -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 } --smoke
    },
    energy_required = 2,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-pig-iron", 4),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    results =
    {
      PM.product("iron-ore", 4),
    }
  },
  {
    type = "recipe",
    name = "pm-iron-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-iron-tm",
    order = "d",
    category = "smelting",
    enabled = true,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-iron-chunk", 2)
    },
    results = 
    {
      PM.product("iron-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-iron",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-iron.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = { 0, -7.5 }
      },
    },
    subgroup = "pm-iron-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-iron", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-iron-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-iron-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-iron", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("iron-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-ferrum",
    enabled = false,
    energy_required = 18,
    subgroup = "pm-iron-tm",
    order = "h",
    category = "pm-moltening",
    ingredients =
    {
      PM.ingredient("pm-oxygen-gas", 30, "fluid"),
      PM.ingredient("iron-plate", 10),
      PM.ingredient("pm-sodium-bicarbonate", 5)
    },
    results =
    {
      PM.product("pm-ferrum", 10)
    }
  },

  --MARK: Adv. Iron
  -- better version of iron, normal chunk to ore is 1:2 - this is 1:6, so 4 chunks (pig iron) turns into 24 ore
  {
    type = "recipe",
    name = "pm-pig-iron",
    enabled = false,
    category = "pm-moltening",
    subgroup = "pm-advanced-iron-tm",
    order = "a",
    energy_required = 3,
    allow_productivity = true,
    main_product = "pm-pig-iron",
    ingredients =
    {
      PM.ingredient("pm-iron-chunk", 4),
      PM.ingredient("pm-coke", 2)
    },
    results =
    {
      PM.product("pm-pig-iron", 6),
      PM.product_range("pm-calcite", 0, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-mixed-molten-iron",
    enabled = false,
    category = "pm-moltening", --should be in blast/reverbatory furnace
    subgroup = "pm-advanced-iron-tm",
    order = "b",
    energy_required = 3,
    allow_productivity = true,
    main_product = "pm-mixed-molten-iron",
    ingredients =
    {
      PM.ingredient("pm-magnetite", 3),
      PM.ingredient("pm-pig-iron", 6),
      PM.ingredient("pm-filled-flux-container", 3),
      PM.ingredient("pm-oxygen-gas", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-flux-container", 1, 3),
      PM.product("pm-mixed-molten-iron", 20, "fluid"),
      PM.product_range_chance("pm-carbon-monoxide", 2, 8, 0.75, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-wrought-iron",
    enabled = false,
    category = "pm-coldening",
    subgroup = "pm-advanced-iron-tm",
    order = "c",
    energy_required = 6,
    main_product = "pm-wrought-iron",
    ingredients =
    {
      PM.ingredient("pm-mixed-molten-iron", 10, "fluid"),
      PM.ingredient("pm-crucible", 3)
    },
    results =
    {
      PM.product_range("pm-molten-ore-slag", 0.5, 3, "fluid"),
      PM.product_range("pm-crucible", 1, 3),
      PM.product("pm-wrought-iron", 12)
    }
  },
  {
    type = "recipe",
    name = "pm-wrought-iron-seperation",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-advanced-iron-tm",
    order = "d",
    energy_required = 12,
    main_product = "iron-ore",
    ingredients = 
    {
      PM.ingredient("pm-wrought-iron", 6)
    },
    results = 
    {
      PM.product("iron-ore", 6),
      PM.product_range_chance("pm-low-quality-quartzite", 0, 2, 0.55)
    }
  },
})

data.raw["recipe"]["iron-plate"].subgroup = "pm-iron-tm"
data.raw["recipe"]["iron-plate"].order = "e"
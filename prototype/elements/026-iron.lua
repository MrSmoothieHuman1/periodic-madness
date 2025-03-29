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
    name = "pm-combined-ore-slab",
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
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-basic-pig-iron",
    enabled = false,
    energy_required = 3.2 / 2,
    category = "smelting",
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
      PM.product_range_chance("stone", 1, 2, 0.75)
    }
  },
  {
    type = "recipe",
    name = "pm-pig-iron-seperation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/pig-iron.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
        scale = 0.8,
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
      PM.ingredient("pm-hydrochloric-acid", 5, "fluid")
    },
    results =
    {
      PM.product("iron-ore", 2),
      PM.product_range("pm-ferrum", 1, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-pig-iron-seperation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/pig-iron.png",
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
      PM.product_range("pm-ferrum", 0, 4),
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
      PM.ingredient("pm-coke", 4)
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
    category = "pm-moltening",
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
    name = "pm-mixed-molten-iron-seperation",
    enabled = false,
    category = "pm-coldening",
    subgroup = "pm-advanced-iron-tm",
    order = "c",
    energy_required = 6,
    main_product = "iron-ore",
    ingredients = 
    {
      PM.ingredient("pm-mixed-molten-iron", 10, "fluid"),
    },
    results = 
    {
      PM.product_range("pm-molten-ore-slag", 2.5, 5, "fluid"),
      PM.product("iron-ore", 12)
    }
  },
  {
    type = "recipe",
    name = "pm-combined-ore-slag",
    enabled = false,
    category = "pm-coldening",
    subgroup = "pm-advanced-iron-tm",
    order = "c",
    energy_required = 5,
    main_product = "pm-combined-ore-slab",
    ingredients = 
    {
      PM.ingredient("pm-molten-ore-slag", 5, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 2)
    },
    results = 
    {
      PM.product_range("pm-combined-ore-slab", 2, 4),
      PM.product_range_chance("pm-cobalt-catalyst", 0, 2, 0.7),
      PM.product_range_chance("pm-catalyst-container", 0, 2, 0.25)
    }
  },
  {
    type = "recipe",
    name = "pm-combined-ore-slab-crushing",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-advanced-iron-tm",
    order = "d",
    energy_required = 5,
    main_product = "pm-low-quality-quartzite",
    ingredients = 
    {
      PM.ingredient("pm-combined-ore-slab", 4)
    },
    results = 
    {
      --PM.product_range("pm-rutile-slag", 0, 3),
      PM.product_range("pm-ferrum", 0, 4),
      PM.product_range("pm-patina", 0, 4),
      PM.product_range_chance("pm-low-quality-quartzite", 0, 2, 0.55)
    }
  }
})

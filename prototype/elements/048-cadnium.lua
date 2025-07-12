local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-cadnium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/cadnium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/cadnium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/cadnium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/cadnium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/cadnium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-cadmium-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-cadnium-red",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadmium-red.png",
    subgroup = "pm-cadmium-tm",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cadnium-sulfate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadnium-sulfate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/cadnium-sulfate-3.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-cadmium-tm",
    order = "A",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cadmium-telluride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cadmium-telluride.png",
    subgroup = "pm-cadmium-tm",
    order = "e",
    stack_size = 75
  },

  {
    type = "recipe",
    name = "pm-zinc-chunk-seperation",
    icon_size = 64,
    category = "pm-moltening",
    main_product = "pm-zinc-tailings",
    subgroup = "pm-cadmium-tm",
    order = "a",
    enabled = false,
    energy_required = 4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-powder", 12),
      PM.ingredient("steam", 25, "fluid"),
      PM.ingredient("sulfur", 3)
    },
    results =
    {
      PM.product("pm-zinc-tailings", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-tailings-condensing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zinc-tailings-seperation.png",
    category = "pm-coldening",
    subgroup = "pm-cadmium-tm",
    order = "b",
    enabled = false,
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-tailings", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-cadnium-sulfate", 2),
      PM.product_range("pm-zinc-chunk", 0, 2),
      PM.product_range_chance("pm-patina", 1, 3, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-ore",
    enabled = false,
    energy_required = 2,
    category = "pm-electrolysis",
    subgroup = "pm-cadmium-tm",
    order = "c",
    main_product = "pm-cadnium-ore",
    ingredients = 
    {
      PM.ingredient("pm-cadnium-sulfate", 4),
      PM.ingredient("pm-zinc-plate", 4),
      PM.ingredient("pm-carbon", 4)
    },
    results = 
    {
      PM.product_range("pm-cadnium-ore", 3, 4),
      PM.product_range("sulfur", 1, 4)
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-red",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cadmium-tm",
    order = "ba",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cadnium-ore", 6),
      PM.ingredient("sulfur", 6),
    },
    results =
    {
      PM.product("pm-cadnium-red", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-plate",
    subgroup = "pm-cadmium-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-cadnium-ore", 1) },
    results = {
      PM.product("pm-cadnium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-cadnium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-cadmium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/cadnium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-cadmium-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-cadnium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-cadnium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cadmium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-cadmium-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-cadnium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-cadnium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

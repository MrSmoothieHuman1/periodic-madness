local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-platinum-powder",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/platinum-powder.png",
    subgroup = "pm-platinum-tm",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-ammonium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ammonium-chloride.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/ammonium-chloride.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/ammonium-chloride-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-platinum-tm",
    order = "x",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-platinum-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/platinum-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/platinum-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/platinum-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/platinum-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/platinum-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-platinum-tm",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-nickel-chunk-frothing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-chunk-frothing.png",
    category = "pm-washing",
    subgroup = "pm-platinum-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-nickel-powder", 12),
      PM.ingredient("water", 25, "fluid"),
      PM.ingredient("sulfuric-acid", 4, "fluid")
    },
    results =
    {
      PM.product("pm-nickel-froth", 5, "fluid"),
      PM.product("pm-nickel-tailings", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-platinum-tm",
    order = "b",
    enabled = false,
    energy_required = 6.4,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 5, "fluid"),
      PM.ingredient("pm-sand", 6),
      PM.ingredient("pm-coke", 4)
    },
    results =
    {
      PM.product_range("pm-nickel-chunk", 1, 3),
      PM.product("pm-platinum-powder", 4),
      PM.product_range_chance("pm-ferrum", 1, 3, 0.5)
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-powder-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-powder-seperation.png",
    category = "pm-acids",
    subgroup = "pm-platinum-tm",
    order = "d",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      PM.ingredient("pm-platinum-powder", 4),
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-platinum-ore", 1, 3),
      PM.product_range_chance("pm-ammonium-chloride", 1, 2, 0.6)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-tailings-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-tailings-looping.png",
    category = "pm-mixing",
    subgroup = "pm-platinum-tm",
    order = "c",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-nickel-tailings", 10, "fluid"),
      PM.ingredient("sulfuric-acid", 2, "fluid")
    },
    results =
    {
      PM.product_range("pm-nickel-tailings", 2, 8, "fluid"),
      PM.product_chance("pm-nickel-froth", 5, 0.9, "fluid")
    }
  },

  {
    type = "recipe",
    name = "pm-fluxed-platinum-nickel-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/flux-platinum-nickel-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-platinum-tm",
    order = "ba",
    enabled = false,
    energy_required = 3.2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-froth", 2.5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product_range("pm-nickel-chunk", 0, 2),
      PM.product("pm-platinum-powder", 4),
      PM.product_chance("pm-flux-container", 1, 0.66)
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-plate",
    subgroup = "pm-platinum-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-platinum-ore", 1) },
    results = {
      PM.product("pm-platinum-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-platinum",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-platinum.png",
        icon_size = 64,
        scale = 0.4,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/platinum-plate.png",
        icon_size = 64,
        scale = 0.22,
        shift = { 0, -6 }
      },
    },
    subgroup = "pm-platinum-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-platinum", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-platinum-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-platinum", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-platinum-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})

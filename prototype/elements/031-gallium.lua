data:extend({

  {
    type = "item",
    name = "pm-gallium-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/gallium-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/gallium-chunks.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/gallium-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-gallium-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-ion-exchange-beads",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ion-beads.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ion-beads.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ion-beads-2.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ion-beads-3.png", size = 128, scale = 0.25 },
    },
    subgroup = "pm-gallium-ptm",
    order = "b",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-gallium-liqour",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/fluids/gallium-liqour.png",
    subgroup = "pm-gallium-ptm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 1, g = 0.842, b = 0.862},
    flow_color = {r = 1, g = 0.842, b = 0.862},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-liquid-gallium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/liquid-gallium.png",
    subgroup = "pm-gallium-ptm",
    order = "c",
    protons = 31,
    neutrons = 39,
    default_temperature = 15,
    base_color = {r = 0.6, g = 0.6, b = 0.7},
    flow_color = {r = 0.6, g = 0.6, b = 0.7}
  },

  {
    type = "recipe",
    name = "pm-sodium-hydroxide",
    enabled = false,
    energy_required = 4,
    category = "pm-electrolysis",
    subgroup = "pm-gallium-ptm",
    order = "a",
    main_product = "pm-sodium-hydroxide",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sea-salt", 20),
    },
    results =
    {
      PM.product("pm-sodium-hydroxide", 10, "fluid"),
      PM.product_chance("pm-chlorine", 10, 0.8, "fluid")
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-sodium-hydroxide",
    icon_size = 64,
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/sodium-1.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/sodium-hydroxide.png",
        icon_size = 64,
      },
    },
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-gallium-ptm",
    order = "aa",
    main_product = "pm-sodium-hydroxide",
    ingredients =
    {
      PM.ingredient("pm-sodium", 6),
      PM.ingredient("water", 12, "fluid")
    },
    results =
    {
      PM.product("pm-sodium-hydroxide", 6, "fluid"),
      PM.product_range("pm-hydrogen-gas", 14, 20, "fluid")
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bauxite-mixing",
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-gallium-ptm",
    order = "b",
    energy_required = 2,
    main_product = "pm-gallium-chunks",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-aluminium-ore", 4),
      PM.ingredient("pm-post-transition-metals-ore", 8)
    },
    results =
    {
      PM.product_range("pm-gallium-chunks", 6, 12),
      PM.product("pm-aluminium-ore", 3)
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-gallium-liqouring",
    enabled = false,
    energy_required = 1,
    category = "pm-washing",
    subgroup = "pm-gallium-ptm",
    order = "c",
    main_product = "pm-gallium-liqour",
    ingredients =
    {
      PM.ingredient("pm-sodium-hydroxide", 2, "fluid"),
      PM.ingredient("pm-gallium-chunks", 4)
    },
    results =
    {
      PM.product("pm-gallium-liqour", 6, "fluid"),
      PM.product("pm-sodium", 2)
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ion-exchange-beads",
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-gallium-ptm",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-resin", 80, "fluid"),
      PM.ingredient("pm-butane-gas", 20, "fluid"),
      PM.ingredient("sulfur", 3)
    },
    results =
    {
      PM.product("pm-ion-exchange-beads", 15)
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-gallium-filtering",
    enabled = false,
    energy_required = 5,
    category = "pm-electrolysis",
    subgroup = "pm-gallium-ptm",
    order = "f",
    main_product = "pm-liquid-gallium",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gallium-liqour", 20, "fluid"),
      PM.ingredient("pm-ion-exchange-beads", 5),
    },
    results =
    {
      PM.product("pm-liquid-gallium", 5, "fluid"),
      PM.catalyst_range("pm-ion-exchange-beads", 2, 5, 2)
    }
  }--[[@as data.RecipePrototype]]
})

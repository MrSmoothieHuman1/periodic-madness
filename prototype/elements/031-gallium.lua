local PM = require("library")
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
    type = "recipe",
    name = "pm-choralkali-sodium-hydroxide",
    enabled = false,
    energy_required = 4,
    category = "pm-electrolysis",
    subgroup = "pm-gallium-ptm",
    order = "a",
    main_product = "pm-sodium-hydroxide",
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
    energy_required = 6,
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
    energy_required = 4,
    main_product = "pm-gallium-chunks",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-aluminium-ore", 4),
      PM.ingredient("pm-post-transition-metals-ore", 12)
    },
    results =
    {
      PM.product_range("pm-gallium-chunks", 6, 12),
      PM.product("pm-aluminium-ore", 2)
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
    name = "pm-metal-sodium-hydroxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/metal-sodium-hydroxide.png",
    enabled = false,
    energy_required = 4,
    category = "pm-electrolysis",
    subgroup = "pm-gallium-ptm",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-sodium", 6),
      PM.ingredient("water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-sodium-hydroxide", 10, "fluid"),
      PM.product_chance("pm-hydrogen-gas", 4, 0.8, "fluid")
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ion-exchange-beads",
    enabled = false,
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-gallium-ptm",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-resin", 80, "fluid"),
      PM.ingredient("pm-butane-gas", 20, "fluid"),
      PM.ingredient("sulfur", 2)
    },
    results =
    {
      PM.product("pm-ion-exchange-beads", 10)
    }
  }--[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-gallium-filtering",
    enabled = false,
    energy_required = 10 / 2,
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

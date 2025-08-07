local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-francium-209",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/francium-209.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/francium-209.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-209-1.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-209-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-francium-am",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-francium-210",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/francium-210.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/francium-210.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-210-1.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-210-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-francium-am",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-francium-211",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/francium-211.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/francium-211.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-211-1.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/francium-211-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-francium-am",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-francium-glass-ampule",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
    subgroup = "pm-francium-am",
    order = "d",
    stack_size = 25
  },

  {
    type = "recipe",
    name = "pm-magneto-orbital-trap",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 24),
      PM.ingredient("pm-antimony-ore", 2),
      PM.ingredient("copper-cable", 16),
      PM.ingredient("pm-polyethylene-plastic", 6),
      PM.ingredient("pm-gallium-arsenide", 2),
      PM.ingredient("pm-coolant", 10, "fluid")
    },
    results =
    {
      PM.product("pm-magneto-orbital-trap", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-borosilicate-magneto-orbital-trap",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-borosilicate-glass", 6),
      PM.ingredient("pm-antimony-ore", 2),
      PM.ingredient("copper-cable", 14),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-gallium-arsenide", 2),
      PM.ingredient("pm-coolant", 6, "fluid")
    },
    results =
    {
      PM.product("pm-magneto-orbital-trap", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-francium-forming",
    enabled = false,
    energy_required = 18,
    category = "pm-cyclotroning",
    subgroup = "pm-francium-am",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-gold-plate", 25),
      PM.ingredient("pm-oxygen-gas", 50, "fluid"),
      PM.ingredient("pm-magneto-orbital-trap", 1)
    },
    results =
    {
      PM.product("pm-francium-magneto-orbital-trap", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-magneto-orbital-trap-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/MOT-seperation.png",
    enabled = false,
    energy_required = 12,
    subgroup = "pm-francium-am",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium-magneto-orbital-trap", 2)
    },
    results =
    {
      PM.product_chance("pm-francium-209", 2, 0.5),
      PM.product_chance("pm-francium-210", 2, 0.5),
      PM.product_chance("pm-francium-211", 2, 0.5),
      PM.catalyst("pm-magneto-orbital-trap", 2, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-francium-glass-ampule",
    enabled = false,
    energy_required = 6,
    category = "chemistry",
    subgroup = "pm-francium-am",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium-209", 1),
      PM.ingredient("pm-francium-210", 1),
      PM.ingredient("pm-francium-211", 1),
      PM.ingredient("pm-helium-gas", 20, "fluid"),
      PM.ingredient("pm-empty-glass-ampule", 1)
    },
    results =
    {
      PM.product("pm-francium-glass-ampule", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-francium-PTx86-enrichment",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/francium-ptx86-enrichment.png",
    category = "centrifuging",
    crafting_machine_tint =
    {
      primary = {r = 0.5, g = 0.3, b = 0.3},
      secondary = {r = 0.5, g = 0.3, b = 0.3},
      tertiary = {r = 1, g = 0.3, b = 0.3},
      quaternary = {r = 0.5, g = 0.1, b = 0.3},
    },
    subgroup = "pm-francium-am",
    order = "d",
    enabled = false,
    energy_required = 30,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-francium-209", 10),
      PM.ingredient("pm-francium-210", 10),
      PM.ingredient("pm-francium-211", 10),
      PM.ingredient("pm-trace-astatine-211", 4)
    },
    results =
    {
      PM.catalyst_range("pm-francium-209", 10, 11, 10),
      PM.catalyst_range("pm-francium-210", 10, 11, 10),
      PM.catalyst_range("pm-francium-211", 10, 11, 10),
      PM.catalyst("pm-trace-astatine-211", 1, 1)
    }
  },
})

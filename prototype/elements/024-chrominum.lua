local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-chromite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/chromite.png",
    subgroup = "pm-chrominum-tm",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-ferrochrominum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/ferrochrominum.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/ores/ferrochromium.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/ferrochromium-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/ferrochromium-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-chrominum-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-chrome-green",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/chrome-green.png",
    subgroup = "pm-chrominum-tm",
    order = "c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "pm-chrominum-leeching",
    energy_required = 4,
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-acidic-water", 25, "fluid")
    },
    results =
    {
      PM.product("pm-chromite", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromite-seperation",
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-chrominum-tm",
    order = "c",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-chromite", 2),
      PM.ingredient("pm-carbon", 6),
      PM.ingredient("steam", 20, "fluid")
    },
    results =
    {
      PM.product("pm-ferrochrominum", 4),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ferrochrominum-carbon-seperation",
    category = "pm-coldening",
    main_product = "pm-chrominum-ore",
    subgroup = "pm-chrominum-tm",
    order = "d",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-ferrochrominum", 4),
      PM.ingredient("pm-calcium-ore", 2),
    },
    results =
    {
      PM.product_range("pm-chrominum-ore", 2, 4),
      PM.product_chance("pm-ferrum", 2, 0.8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-acid",
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "e",
    enabled = false,
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-chrominum-ore", 12),
      PM.ingredient("sulfuric-acid", 10, "fluid"),
      PM.ingredient("pm-sodium", 10)
    },
    results =
    {
      PM.product("pm-chromic-acid", 100, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-chromic-chrominum-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/chromite.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    energy_required = 4,
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-chrominum-tm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 12),
      PM.ingredient("pm-chromic-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-chromite", 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chrome-green",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-chrominum-tm",
    order = "c",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-chrominum-ore", 12),
      PM.ingredient("sulfur", 6),
      PM.ingredient("pm-oxygen-gas", 18, "fluid")
    },
    results =
    {
      PM.product("pm-chrome-green", 6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-acid-neutralisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chromic-acid-neutralisation.png",
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-chrominum-tm",
    order = "ea",
    enabled = false,
    ingredients = 
    {
      PM.ingredient("pm-sodium-sulfite", 6),
      PM.ingredient("pm-chromic-acid", 20, "fluid"),
      PM.ingredient("water", 25, "fluid")
    },
    results = 
    {
      PM.product_range("pm-chrominum-ore", 4, 6),
      PM.product_range("pm-sulfur-dioxide", 8, 15, "fluid"),
      PM.product_range_chance("pm-carbon-dioxide-gas", 6, 15, 0.65, "fluid")
    }
  }
})

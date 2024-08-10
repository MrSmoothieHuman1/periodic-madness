local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-sodium-tellurite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-tellurium-mt",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tellurium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tellurium-oxide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-tellurium-mt",
    order = "b",
    stack_size = 600
  },
  {
    type = "recipe",
    name = "pm-copper-tailings-sludging",
    enabled = false,
    energy_required = 1,
    category = "pm-washing",
    subgroup = "pm-tellurium-mt",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-copper-tailings", 5, "fluid"),
      PM.ingredient("pm-lead-powder", 5),
    },
    results =
    {
      PM.product("pm-copper-sludge", 8, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-tellurite",
    enabled = false,
    energy_required = 4,
    category = "pm-moltening",
    subgroup = "pm-tellurium-mt",
    order = "b",
    main_product = "pm-sodium-tellurite",
    ingredients =
    {
      PM.ingredient("pm-copper-sludge", 4, "fluid"),
      PM.ingredient("pm-sodium", 12)
    },
    results =
    {
      PM.product("pm-sodium-tellurite", 4),
      PM.product_range("pm-carbon-trioxide", 4, 8, "fluid"),
      PM.product_range_chance("copper-ore", 2, 5, 0.3),
      PM.product_range_chance("pm-silver-ore", 2, 5, 0.6),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-bicarbonate-tellurite",
    enabled = false,
    energy_required = 2,
    category = "pm-moltening",
    subgroup = "pm-tellurium-mt",
    order = "ba",
    main_product = "pm-sodium-tellurite",
    ingredients =
    {
      PM.ingredient("pm-copper-sludge", 4, "fluid"),
      PM.ingredient("pm-sodium-bicarbonate", 6)
    },
    results =
    {
      PM.product("pm-sodium-tellurite", 6),
      PM.product("pm-carbon-dioxide-gas", 6, "fluid"),
      PM.product_range_chance("copper-ore", 2, 5, 0.7),
      PM.product_range_chance("pm-gold-ore", 2, 5, 0.2),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrotellurites",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-tellurium-mt",
    order = "c",
    main_product = "pm-tellurium-oxide",
    ingredients =
    {
      PM.ingredient("pm-sodium-tellurite", 3),
      PM.ingredient("sulfuric-acid", 15, "fluid"),
    },
    results =
    {
      PM.product("pm-tellurium-oxide", 6),
      PM.product("pm-sulfur-dioxide", 15, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tellurium-oxide-seperation",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-tellurium-mt",
    order = "d",
    main_product = "pm-tellurium-ore",
    ingredients =
    {
      PM.ingredient("pm-tellurium-oxide", 3),
      PM.ingredient("pm-sulfur-dioxide", 7.5, "fluid"),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-tellurium-ore", 6),
      PM.product("sulfuric-acid", 7.5, "fluid")
    }
  } --[[@as data.RecipePrototype]]
})

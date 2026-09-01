data:extend({

  {
    type = "item",
    name = "pm-sodium-tellurite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/sodium-tellurite-3.png", size = 64, scale = 0.5}
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
      {filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tellurium-oxide-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-tellurium-mt",
    order = "b",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-tellurium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/tellurium-ore.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/tellurium-ore.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tellurium-ore-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/tellurium-ore-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-tellurium-mt",
    order = "c",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-copper-sludge",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/copper-sludge.png",
    subgroup = "pm-tellurium-mt",
    order = "a",
    default_temperature = 15,
    auto_barrel = false,
    base_color = {r = 0.56, g = 0.422, b = 0.22},
    flow_color = {r = 0.36, g = 0.222, b = 0.12}
  },

  {
    type = "recipe",
    name = "pm-copper-sludge",
    enabled = false,
    energy_required = 4,
    categories = {"pm-washing"},
    subgroup = "pm-tellurium-mt",
    order = "a",
    allow_productivity = true,
    crafting_machine_tint = 
    {
        primary = {r = 0.56, g = 0.422, b = 0.22}
    },
    ingredients =
    {
      PM.ingredient("pm-copper-tailings", 5, "fluid"),
      PM.ingredient("pm-lead-powder", 5),
    },
    results =
    {
      PM.product("pm-copper-sludge", "fluid"):amount(8):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-tellurite",
    enabled = false,
    energy_required = 4,
    categories = {"pm-moltening"},
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
      PM.product("pm-sodium-tellurite"):amount(4):done(),
      PM.product("pm-carbon-trioxide", "fluid"):amount(4, 8):done(),
      PM.product("copper-ore"):amount(2, 5):chance(0.3):done(),
      PM.product("pm-silver-ore"):amount(2, 5):chance(0.6):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-bicarbonate-tellurite",
    enabled = false,
    energy_required = 2,
    categories = {"pm-moltening"},
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
      PM.product("pm-sodium-tellurite"):amount(6):done(),
      PM.product("pm-carbon-dioxide-gas", "fluid"):amount(6):done(),
      PM.product("copper-ore"):amount(2, 5):chance(0.7):done(),
      PM.product("pm-gold-ore"):amount(2, 5):chance(0.2):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tellurium-oxide",
    enabled = false,
    energy_required = 4,
    categories = {"chemistry"},
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
      PM.product("pm-tellurium-oxide"):amount(6):done(),
      PM.product("pm-sulfur-dioxide", "fluid"):amount(15):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tellurium-oxide-seperation",
    enabled = false,
    energy_required = 8,
    categories = {"chemistry"},
    subgroup = "pm-tellurium-mt",
    order = "d",
    main_product = "pm-tellurium-ore",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-tellurium-oxide", 3),
      PM.ingredient("pm-sulfur-dioxide", 7.5, "fluid"),
      PM.ingredient("water", 20, "fluid")
    },
    results =
    {
      PM.product("pm-tellurium-ore"):amount(6):done(),
      PM.product("sulfuric-acid", "fluid"):amount(7.5):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-tellurium-plate",
    subgroup = "pm-tellurium-mt",
    order = "e",
    categories = {"smelting"},
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-tellurium-ore", 1) },
    results = {
      PM.product("pm-tellurium-plate"):amount(1):done()
    }
  },
})

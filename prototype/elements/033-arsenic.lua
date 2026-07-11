data:extend({

  {
    type = "item",
    name = "pm-arsenopyrite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/arsenopyrite.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/ores/arsenopyrite.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/arsenopyrite-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-arsenic-mt",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-impure-arsenic",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/impure-arsenic.png",
    subgroup = "pm-arsenic-mt",
    order = "b",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-arsenic-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/arsenic-oxide.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/arsenic-oxide.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/arsenic-oxide-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/arsenic-oxide-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-arsenic-mt",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-arsenic-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/arsenic-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/arsenic-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/arsenic-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/arsenic-ore-icon-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-lead-ptm",
    order = "d",
    protons = 33,
    neutrons = 42,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-arsenopyrite",
    enabled = false,
    energy_required = 8,
    categories = {"pm-acids"},
    subgroup = "pm-arsenic-mt",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-metalloid-ore", 16),
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results =
    {
      PM.product("pm-arsenopyrite"):amount(4):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-impure-arsenic",
    enabled = false,
    energy_required = 9,
    categories = {"pm-moltening"},
    subgroup = "pm-arsenic-mt",
    order = "b",
    main_product = "pm-impure-arsenic",
    ingredients =
    {
      PM.ingredient("pm-arsenopyrite", 3),
      PM.ingredient("pm-oxygen-gas", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results =
    {
      PM.product("pm-impure-arsenic"):amount(2, 6):done(),
      PM.product("pm-vanadium-oxide-catalyst"):amount(2):chance(0.8):catalyst(1):done(),
      PM.product("pm-catalyst-container"):amount(2):chance(0.2):catalyst(1):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsenic-oxide",
    enabled = false,
    energy_required = 9,
    categories = {"pm-moltening"},
    subgroup = "pm-arsenic-mt",
    order = "c",
    main_product = "pm-arsenic-oxide",
    ingredients =
    {
      PM.ingredient("pm-impure-arsenic", 4),
      PM.ingredient("pm-molten-lead", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-arsenic-oxide"):amount(6):done(),
      PM.product("pm-ferrum"):amount(1, 4):done(),
      PM.product("pm-impure-lead"):amount(1, 5):done(),

    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsine",
    enabled = false,
    energy_required = 6,
    categories = {"pm-washing"},
    subgroup = "pm-arsenic-mt",
    order = "d",
    main_product = "pm-arsine",
    ingredients =
    {
      PM.ingredient("pm-arsenic-oxide", 3),
      PM.ingredient("pm-zinc-plate", 12), --catalyst for hard mode
      PM.ingredient("pm-hydrochloric-acid", 24, "fluid"),
    },
    results =
    {
      PM.product("pm-arsine", "fluid"):amount(5):done(),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsenic-ore",
    enabled = false,
    energy_required = 16,
    categories = {"chemistry"},
    subgroup = "pm-arsenic-mt",
    order = "e",
    main_product = "pm-arsenic-ore",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-arsine", 5, "fluid"),
      PM.ingredient("pm-oxygen-gas", 10, "fluid")
    },
    results =
    {
      PM.product("pm-arsenic-ore"):amount(6, 10):done(),
      PM.product("water", "fluid"):amount(10):done(),
    }
  } --[[@as data.RecipePrototype]]

})
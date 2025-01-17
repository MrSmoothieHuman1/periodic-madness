local PM = require("library")
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
    type = "recipe",
    name = "pm-arsenopyrite-leeching",
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
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
      PM.product("pm-arsenopyrite", 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-impure-arsenic",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
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
      PM.product_range("pm-impure-arsenic", 2, 6),
      PM.catalyst_range_chance("pm-vanadium-oxide-catalyst", 1, 2, 0.8, 2),
      PM.product_range_chance("pm-catalyst-container", 0, 1, 0.2),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsenic-oxide",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
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
      PM.product("pm-arsenic-oxide", 6),
      PM.product_range("pm-ferrum", 1, 4),
      PM.product_range("pm-impure-lead", 1, 5),

    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsine",
    enabled = false,
    energy_required = 6,
    category = "pm-washing",
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
      PM.product("pm-arsine", 5, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-arsine-seperation",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
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
      PM.product_range("pm-arsenic-ore", 6, 10),
      PM.product("water", 10, "fluid"),
    }
  } --[[@as data.RecipePrototype]]

})
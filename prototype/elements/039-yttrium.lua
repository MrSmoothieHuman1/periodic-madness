data:extend({
  {
    type = "item",
    name = "pm-mixed-bastnasite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/mixed-bastansite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite-2.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite-3.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite-4.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite-5.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/mixed-bastansite-6.png", size = 128, scale = 0.25},
    },
    subgroup = "pm-yttrium-tm",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-bastnasite-Y",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-Y-2.png", size = 128, scale = 0.25},
    },
    subgroup = "pm-yttrium-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bastnasite-C",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bastnasite-C.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-C.png", size = 128, scale = 0.25},
      { filename = "__periodic-madness__/graphics/icons/ores/bastnasite-C-2.png", size = 128, scale = 0.25},
    },
    subgroup = "pm-yttrium-tm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-yttrium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/yttrium-oxide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/yttrium-oxide.png", size = 64, scale = 0.5},
      { filename = "__periodic-madness__/graphics/icons/ores/yttrium-oxide-2.png", size = 64, scale = 0.5},
      { filename = "__periodic-madness__/graphics/icons/ores/yttrium-oxide-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-yttrium-tm",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-yttrium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/yttrium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/yttrium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/yttrium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/yttrium-ore-icon-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-yttrium-tm",
    order = "g",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-mixed-bastnasite",
    enabled = false,
    energy_required = 18,
    category = "pm-acids",
    subgroup = "pm-yttrium-tm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 25),
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-mixed-bastnasite", 2, 6 )
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mixed-bastnasite-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bastnasite-seperation.png",
    enabled = false,
    energy_required = 6,
    category = "pm-crushing",
    subgroup = "pm-yttrium-tm",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-mixed-bastnasite", 6),
      PM.ingredient("pm-ion-exchange-beads", 9)
    },
    results =
    {
      PM.product_range_chance("pm-bastnasite-Y", 2, 4, 0.5),
      PM.product_range_chance("pm-bastnasite-C", 2, 4, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnasite-Y-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bastnasite-Y-seperation.png",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "c",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      PM.ingredient("pm-bastnasite-Y", 6),
      PM.ingredient("sulfuric-acid", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 4)
    },
    results =
    {
      PM.product_range("pm-yttrium-oxide", 1, 3),
      PM.catalyst_chance("pm-vanadium-oxide-catalyst", 4, 0.85, 2),
      PM.catalyst_chance("pm-catalyst-container", 4, 0.15, 2),
      PM.product_chance("pm-flourine", 5, 0.456)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnasite-C-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/bastnasite-C-seperation.png",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "d",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      PM.ingredient("pm-bastnasite-C", 6),
      PM.ingredient("sulfuric-acid", 20, "fluid"),
      PM.ingredient("pm-cobalt-catalyst", 4)
    },
    results =
    {
      PM.product_range("pm-yttrium-oxide", 0, 1),
      PM.catalyst_chance("pm-cobalt-catalyst", 4, 0.75, 2),
      PM.catalyst_chance("pm-catalyst-container", 4, 0.25, 2),
      PM.product_range("pm-carbon-trioxide", 8, 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-yttrium-fluoride",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "f",
    main_product = "pm-aqueous-yttrium-fluoride",
    ingredients =
    {
      PM.ingredient("pm-yttrium-oxide", 2),
      PM.ingredient("pm-hydrogen-flouride", 8, "fluid")
    },
    results =
    {
      PM.product("pm-aqueous-yttrium-fluoride", 5, "fluid"),
      PM.product("water", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-yttrium-ore",
    enabled = false,
    energy_required = 4,
    category = "pm-washing",
    subgroup = "pm-yttrium-tm",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-aqueous-yttrium-fluoride", 5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 2)
    },
    results =
    {
      PM.product("pm-yttrium-ore", 5)
    }
  } --[[@as data.RecipePrototype]]
})

data:extend({
  {
    type = "item",
    name = "pm-mixed-bastnäsite",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-bastnäsite-Y",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bastnäsite-C",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-yttrium-oxide",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 128, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-basic-bastnäsite",
    enabled = false,
    energy_required = 24,
    category = "pm-acids",
    subgroup = "pm-yttrium-tm",
    order = "a",
    ingredients =
    {
      { "pm-transition-metals-ore", 25 },
      { type = "fluid",             name = "pm-chromic-acid", amount = 20 }
    },
    results =
    {
      {
        name = "pm-mixed-bastnäsite",
        amount_min = 2,
        amount_max = 6
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mixed-bastnäsite-seperation",
    enabled = false,
    energy_required = 6,
    category = "pm-crushing",
    subgroup = "pm-yttrium-tm",
    order = "b",
    main_product = "pm-bastnäsite-Y",
    ingredients =
    {
      { "pm-mixed-bastnäsite",   6 },
      { "pm-ion-exchange-beads", 9 }
    },
    results =
    {
      {
        name = "pm-bastnäsite-Y",
        amount = 2,
        probability = 0.5
      },
      {
        name = "pm-bastnäsite-C",
        amount_min = 2,
        amount_max = 4,
        probability = 0.5
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnäsite-Y-seperation",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "c",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      { "pm-bastnäsite-Y",            6 },
      { type = "fluid",               name = "sulfuric-acid", amount = 20 },
      { "pm-vanadium-oxide-catalyst", 4 }
    },
    results =
    {
      {
        name = "pm-yttrium-oxide",
        amount_min = 1,
        amount_max = 3,
      },
      {
        name = "pm-catalyst-container",
        amount_min = 2,
        amount_max = 4,
      },
      {
        name = "pm-flourine",
        amount = 5,
        probability = 0.456
      }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnäsite-C-seperation",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "d",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      { "pm-bastnäsite-C",            6 },
      { type = "fluid",               name = "sulfuric-acid", amount = 20 },
      { "pm-vanadium-oxide-catalyst", 4 }
    },
    results =
    {
      {
        name = "pm-yttrium-oxide",
        amount_min = 0,
        amount_max = 1,
      },
      {
        name = "pm-catalyst-container",
        amount_min = 2,
        amount_max = 4,
      },
      {
        type = "fluid",
        name = "pm-carbon-trioxide",
        amount_min = 8,
        amount_max = 10
      }
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
      { "pm-yttrium-oxide", 2 },
      { type = "fluid",     name = "pm-hydrogen-flouride", amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-aqueous-yttrium-fluoride", amount = 5 },
      { type = "fluid", name = "water",                       amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-yttrium",
    enabled = false,
    energy_required = 8,
    category = "pm-washing",
    subgroup = "pm-yttrium-tm",
    order = "g",
    ingredients =
    {
      { type = "fluid",         name = "pm-aqueous-yttrium-fluoride", amount = 5 },
      { "pm-ammonium-chloride", 2 }
    },
    results =
    {
      { "pm-yttrium-ore", 5 }
    }
  } --[[@as data.RecipePrototype]]
})

data:extend({

  {
    type = "item",
    name = "pm-sassolite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/sassolite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/sassolite-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-boron-mt",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-borax",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/borax.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/borax.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/borax-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/borax-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-boron-mt",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-boric-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/boric-oxide.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/boric-oxide.png",   size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/boric-oxide-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/boric-oxide-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/boric-oxide-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-boron-mt",
    order = "c",
    stack_size = 50
  },

  {
    type = "fluid",
    name = "pm-boron",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/boron.png",
    subgroup = "pm-boron-mt",
    order = "d",
    protons = 5,
    neutrons = 6,
    default_temperature = 15,
    base_color = {0.871, 0.686, 0.349},
    flow_color = {0.871, 0.686, 0.349},
  },
  {
    type = "fluid",
    name = "pm-diluted-boric-acid",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/diluted-boric-acid.png",
    subgroup = "pm-boron-mt",
    order = "c",
    default_temperature = 15,
    base_color = {0.631, 0.576, 0.369},
    flow_color = {0.631, 0.576, 0.369},
    auto_barrel = false
  },

  {
    type = "recipe",
    name = "pm-sassolite",
    enabled = false,
    energy_required = 10,
    category = "pm-evaporation",
    subgroup = "pm-boron-mt",
    order = "a",
    main_product = "pm-sassolite",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-seawater", 50, "fluid"),
      PM.ingredient("pm-metalloid-ore", 6)
    },
    results =
    {
      PM.product_range("pm-sassolite", 2, 5),
      PM.product_range("pm-calcite", 1, 6),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-diluted-boric-acid",
    crafting_machine_tint = 
    {
        primary = {0.349, 0.871, 0.769},
        secondary = {0.871, 0.686, 0.349},
        tertiary = {0.349, 0.871, 0.769, 0.5},
        quaternary = {0.871, 0.686, 0.349}
    },
    enabled = false,
    energy_required = 5,
    category = "chemistry",
    subgroup = "pm-boron-mt",
    order = "b",
    main_product = "pm-diluted-boric-acid",
    ingredients =
    {
      PM.ingredient("pm-sassolite", 6),
      PM.ingredient("water", 50, "fluid"),
      PM.ingredient("pm-hydrochloric-acid", 50, "fluid")
    },
    results =
    {
      PM.product("pm-diluted-boric-acid", 20, "fluid"),
      PM.product("sulfur", 4),
      PM.product_range("pm-patina", 2, 6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-ethylolamine",
    crafting_machine_tint = 
    {
        primary = {0.95, 0.8, 0.8},
        secondary = tints.ammonia,
        tertiary = {0.95, 0.8, 0.8, 0.5},
        quaternary = tints.ammonia,
    },
    enabled = false,
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-boron-mt",
    order = "c",
    main_product = "pm-ethylolamine",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-glycol", 10, "fluid"),
      PM.ingredient("pm-ammonia-gas", 10, "fluid"),
      PM.ingredient("pm-indium-plate", 3),
      PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results =
    {
      PM.product("pm-ethylolamine", 10, "fluid"),
      PM.catalyst_chance("pm-vanadium-oxide-catalyst", 2, 0.75, 2),
      PM.catalyst_chance("pm-catalyst-container", 2, 0.25, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-boron",
    enabled = false,
    energy_required = 15,
    category = "pm-washing",
    subgroup = "pm-boron-mt",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-diluted-boric-acid", 10, "fluid"),
      PM.ingredient("pm-ethylolamine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-boron", 20, "fluid"),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-borax",
    crafting_machine_tint =
    {
        secondary = tints.boron,
        tertiary = tints.boron
    },
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "pm-boron-mt",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-boron", 5, "fluid"),
      PM.ingredient("pm-oxygen-gas", 5, "fluid"),
      PM.ingredient("pm-sodium", 10)
    },
    results =
    {
      PM.product("pm-borax", 5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-boric-oxide",
    crafting_machine_tint = 
    {
        primary = tints.boron,
        secondary = {0.851, 0.82, 0.298},
        tertiary = {0.812, 0.651, 0.651, 0.5},
        quaternary = tints.boron
    },
    enabled = false,
    energy_required = 3,
    category = "pm-acids",
    subgroup = "pm-boron-mt",
    order = "f",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-borax", 2),
      PM.ingredient("sulfuric-acid", 10, "fluid")
    },
    results =
    {
      PM.product("pm-boric-oxide", 5)
    }
  } --[[@as data.RecipePrototype]]
})

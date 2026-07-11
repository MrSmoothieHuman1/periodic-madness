data:extend({

  {
    type = "item",
    name = "pm-anhydrite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/androgynite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/androgynite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/androgynite-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-potassium-am",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-sylvite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/sylvite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/sylvite.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/sylvite-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-potassium-am",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-potash",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/potash.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/potash.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/potash-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-potassium-am",
    order = "c",
    stack_size = 350
  },
  {
    type = "item",
    name = "pm-potassium",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-3.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-potassium-am",
    order = "d",
    protons = 19,
    neutrons = 20,
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-potassium-permanganate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/potassium-permanganate.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/potassium-permanganate.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/potassium-permanganate-2.png", size = 64, scale = 0.5},
      --{filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-3.png", size = 64, scale = 0.5},
      --{filename = "__periodic-madness__/graphics/icons/ores/potassium-ore-icon-4.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-potassium-am",
    order = "f",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "pm-potassium-hydroxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/sodium-hydroxide.png",
    subgroup = "pm-potassium-am",
    order = "e",
    default_temperature = 15,
    base_color = {r = 1, g = 0.842, b = 0.862},
    flow_color = {r = 1, g = 0.842, b = 0.862},
    auto_barrel = false,
  },

  {
    type = "recipe",
    name = "pm-seawater-evaporite",
    enabled = false,
    energy_required = 3,
    categories = {"pm-evaporation"},
    subgroup = "pm-potassium-am",
    order = "a",
    main_product = "pm-sylvite",
    ingredients =
    {
      PM.ingredient("pm-seawater", 50, "fluid"),
      PM.ingredient("pm-alkali-metals-ore", 8)
    },
    results =
    {
      PM.product("pm-calcite"):amount(0, 4):done(),
      PM.product("pm-anhydrite"):amount(3, 6):done(),
      PM.product("pm-sylvite"):amount(4, 8):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sylvite-seperation",
    enabled = false,
    energy_required = 3,
    categories = {"pm-crushing"},
    subgroup = "pm-potassium-am",
    order = "b",
    main_product = "pm-potash",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-sylvite", 5)
    },
    results =
    {
      PM.product("pm-potash"):amount(2, 4):done(),
      PM.product("stone"):amount(5):chance(0.85):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-anhydrite-seperation",
    enabled = false,
    energy_required = 3,
    categories = {"pm-crushing"},
    subgroup = "pm-potassium-am",
    order = "c",
    main_product = "pm-calcium-sulfate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-anhydrite", 10)
    },
    results =
    {
      PM.product("pm-calcium-sulfate"):amount(1, 5):chance(0.75):done(),
      PM.product("pm-potash"):amount(3):done(),
      PM.product("pm-sodium"):amount(0, 3):chance(0.15):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-potash-potassium",
    crafting_machine_tint =
    {
        primary = {0.871, 0.663, 0.863},
        secondary = {0.75, 0.75, 0.75},
        tertiary = {0.871, 0.663, 0.863, 0.5},
        quarternary = {0.871, 0.863, 0.863}
    },
    enabled = false,
    energy_required = 2.5,
    categories = {"chemistry"},
    subgroup = "pm-potassium-am",
    order = "d",
    main_product = "pm-potassium",
    ingredients =
    {
      PM.ingredient("pm-potash", 6),
      PM.ingredient("pm-sodium", 6)
    },
    results =
    {
      PM.product("pm-sea-salt"):amount(6):done(),
      PM.product("pm-potassium"):amount(6):done()
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-potassium-hydroxide",
    enabled = false,
    energy_required = 5,
    categories = {"chemistry"},
    allow_productivity = true,
    main_product = "pm-potassium-hydroxide",
    ingredients =
    {
        PM.ingredient("pm-potassium", 3),
        PM.ingredient("water", 10, "fluid")
    },
    results = 
    {
        PM.product("pm-potassium-hydroxide", "fluid"):amount(5):done(),
        PM.product("pm-hydrogen-gas", "fluid"):amount(0, 7.5):done()
    }
  },
  {
    type = "recipe",
    name = "pm-potassium-permanganate",
    enabled = false,
    energy_required = 2.5,
    categories = {"pm-electrolysis"},
    allow_productivity = true,
    main_product = "pm-potassium-permanganate",
    ingredients =
    {
        PM.ingredient("pm-potassium-hydroxide", 15, "fluid"),
        PM.ingredient("pm-manganese-plate", 4),
        PM.ingredient("water", 20, "fluid"),
    },
    results =
    {
        PM.product("pm-potassium-permanganate"):amount(5):done(),
        PM.product("pm-potassium-hydroxide", "fluid"):amount(5):done()
    }
  }
})

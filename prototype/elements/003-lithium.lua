local item_sounds = require("__base__.prototypes.item_sounds")
data:extend({
  {
    type = "item",
    name = "pm-lithium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lithium-chloride.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lithium-chloride.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/lithium-chloride-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-lithium-am",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-lithium-bromide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lithium-bromide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/lithium-bromide.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/lithium-bromide-2.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-lithium-am",
    order = "x",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lithium-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/lithium-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/lithium-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/lithium-ore-icon-2.png", size = 64, scale = 0.5},
    },
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    subgroup = "pm-lithium-am",
    order = "b",
    protons = 3,
    neutrons = 4,
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-calcium-brine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/calcium-brine.png",
    energy_required = 3,
    category = "pm-washing",
    subgroup = "pm-lithium-am",
    order = "A",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seawater", 20, "fluid"),
      PM.ingredient("pm-calcium-chloride", 5),
      PM.ingredient("pm-sea-salt", 5)
    },
    results =
    {
      PM.product("pm-brine", 25, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-brine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-brine.png",
    energy_required = 4,
    category = "pm-washing",
    subgroup = "pm-lithium-am",
    order = "a",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seawater", 20, "fluid"),
      PM.ingredient("pm-sea-salt", 15)
    },
    results =
    {
      PM.product("pm-brine", 25, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-low-concentration-lithium-leeching",
    category = "pm-leaching",
    subgroup = "pm-lithium-am",
    order = "b",
    enabled = false,
    energy_required = 30,
    main_product = "pm-low-brine",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-brine", 150, "fluid")
    },
    results =
    {
      PM.product("pm-low-brine", 150, "fluid"),
      PM.product_range("pm-lithium-chloride", 2, 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-medium-concentration-lithium-leeching",
    category = "pm-leaching",
    subgroup = "pm-lithium-am",
    order = "c",
    enabled = false,
    energy_required = 30,
    main_product = "pm-med-brine",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-low-brine", 150, "fluid")
    },
    results =
    {
      PM.product("pm-med-brine", 150, "fluid"),
      PM.product_range("pm-lithium-chloride", 4, 8)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-high-concentration-lithium-leeching",
    category = "pm-leaching",
    subgroup = "pm-lithium-am",
    order = "d",
    enabled = false,
    energy_required = 30,
    main_product = "pm-high-brine",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-med-brine", 150, "fluid")
    },
    results =
    {
      PM.product("pm-high-brine", 100, "fluid"),
      PM.product_range("pm-lithium-chloride", 8, 12)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-oversaturated-concentration-lithium-leeching",
    category = "pm-leaching",
    subgroup = "pm-lithium-am",
    order = "e",
    enabled = false,
    energy_required = 15,
    main_product = "pm-lithium-chloride",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-high-brine", 100, "fluid")
    },
    results =
    {
      PM.product("pm-lithium-chloride", 12)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lithium-chloride-electrolysis",
    category = "pm-electrolysis",
    subgroup = "pm-lithium-am",
    order = "f",
    enabled = false,
    energy_required = 5,
    main_product = "pm-lithium-ore",
    ingredients =
    {
      PM.ingredient("pm-lithium-chloride", 5),
      PM.ingredient("steam", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lithium-ore", 5),
      PM.product_range("pm-chlorine", 3, 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lithium-hydroxide",
    category = "pm-electrolysis",
    subgroup = "pm-lithium-am",
    order = "g",
    enabled = false,
    energy_required = 1,
    main_product = "pm-lithium-hydroxide",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-lithium-ore", 5),
      PM.ingredient("sulfur", 6),
      PM.ingredient("pm-calcite", 3)
    },
    results =
    {
      PM.product("pm-lithium-hydroxide", 10, "fluid"),
      PM.product_range_chance("pm-calcium-sulfate", 1, 3, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-lithium-bromide",
    crafting_machine_tint =
    {
        primary = {0.725, 0.925, 0.949},
        secondary = {0.82, 0.698, 0.529},
        tertiary = {0.82, 0.698, 0.529, 0.5},
        quartenary = {0.725, 0.925, 0.949}
    },
    category = "chemistry",
    subgroup = "pm-lithium-am",
    order = "h",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-lithium-hydroxide", 10, "fluid"),
      PM.ingredient("pm-bromine", 10, "fluid")
    },
    results =
    {
      PM.product("pm-lithium-bromide", 5)
    }
  } --[[@as data.RecipePrototype]]
})

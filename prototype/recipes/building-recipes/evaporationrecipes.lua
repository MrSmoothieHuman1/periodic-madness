data:extend({


  {
    type = "recipe",
    name = "pm-seawater-sulfide-evaporation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/seawater-sulfide-evaporation.png",
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = true,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-seawater", 150, "fluid"),
    },
    results =
    {
      PM.product_range("sulfur", 1, 2),
      PM.product("water", 25, "fluid"),
      PM.product("pm-sea-salt", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-seawater-from-sea-salt",
    enabled = false,
    energy_required = 1,
    category = "pm-evaporation",
    ingredients = 
    {
        PM.ingredient("water", 10, "fluid"),
        PM.ingredient("pm-sea-salt", 12)
    },
    results = 
    {
        PM.product("pm-seawater", 15, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-water-voiding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-voiding.png",
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    energy_required = 0.5,
    ingredients =
    {
      PM.ingredient("water", 25, "fluid")
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-oxygen-evaporation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/oxygen-gas.png",
        icon_size = 64,
        scale = 0.4
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      PM.ingredient("pm-oxygen-gas", 10, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-chlorine-evaporation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chlorine.png",
        icon_size = 64,
        scale = 0.4
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      PM.ingredient("pm-chlorine", 10, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-hydrogen-evaporation",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-gas.png",
        icon_size = 64,
        scale = 0.4
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-gas", 10, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-steam-condensation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/steam-condensation.png",
    subgroup = "pm-acid-crafting",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("steam", 10, "fluid"),
    },
    results = 
    {
      PM.product("water", 1, "fluid")
    }
  },
} --[[@as data.RecipePrototype[] ]])

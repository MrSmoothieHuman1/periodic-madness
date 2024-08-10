--for any recipes that relate to byproducts

data:extend({

  {
    type = "recipe",
    name = "pm-ferrum-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ferrum-decomposition.png",
    subgroup = "pm-advanced-ore-decomposition",
    category = "pm-acids",
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    energy_required = 4,
    ingredients =
    {
      { type = "item",  name = "pm-ferrum",       amount = 4 },
      { type = "fluid", name = "pm-acidic-water", amount = 10 }
    },
    crafting_machine_tint =
    {
      primary = { r = 0.36, g = 0, b = 0, a = 1 }, --main visible colour
      secondary = { r = 0.58, g = 0.969, b = 0.86, a = 1 }, --background visible colour
      tertiary = { r = 0, g = 0.9, b = 0.86, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0.36, g = 0, b = 0, a = 1 } --smoke
    },
    results =
    {
      { "iron-ore",     2 },
      { type = "fluid", name = "pm-acidic-water", amount = 15 },
      { "pm-ore-slag",  2 }
    }
  },
  {
    type = "recipe",
    name = "pm-patina-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/patina-decomposition.png",
    subgroup = "pm-advanced-ore-decomposition",
    category = "pm-acids",
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    energy_required = 4,
    ingredients =
    {
      { type = "item",  name = "pm-patina",       amount = 4 },
      { type = "fluid", name = "pm-acidic-water", amount = 10 }
    },
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0, b = .56, a = 1 }, --main visible colour
      secondary = { r = 0.58, g = 0.969, b = 0.86, a = 1 }, --background visible colour
      tertiary = { r = 0, g = 0.9, b = 0.86, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0, g = 0, b = 0.56, a = 1 } --smoke
    },
    results =
    {
      { "copper-ore",   2 },
      { type = "fluid", name = "pm-acidic-water", amount = 15 },
      { "pm-ore-slag",  2 }
    }
  },
  {
    type = "recipe",
    name = "pm-transition-slag-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ore-slag-transition-decomposition.png",
    subgroup = "pm-tm-tm",
    order = "c",
    enabled = false,
    energy_required = 2,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-ore-slag", 16 }
    },
    results =
    {
      { "pm-transition-metals-ore", 10 },
    }
  },
  {
    type = "recipe",
    name = "pm-chunk-slag-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/ore-slag-chunk-decomposition.png",
    subgroup = "pm-tm-tm",
    order = "d",
    enabled = false,
    energy_required = 2,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-ore-slag", 16 }
    },
    results =
    {
      { name = "pm-iron-chunk",   probability = 0.4 + 0.1, amount = 4 },
      { name = "pm-copper-chunk", probability = 0.4 + 0.1, amount = 4 },
      { name = "pm-nickel-chunk", probability = 0.4 + 0.1, amount = 4 },
      { name = "pm-zinc-chunk",   probability = 0.4 + 0.1, amount = 4 },
    }
  },
  {
    type = "recipe",
    name = "pm-glass-resmelting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-resmelting.png",
    energy_required = 2,
    enabled = false,
    hide_from_player_crafting = false,
    allow_decomposition = false,
    subgroup = "pm-glassing",
    category = "smelting",
    order = "da",
    ingredients =
    {
      { "pm-glass-shards", 4 }
    },
    results =
    {
      { "pm-glass-pane", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-hydride-crushing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/palladium-hydride.png",
    energy_required = 4,
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-palladium-tm",
    order = "Aa",
    ingredients =
    {
      { "pm-palladium-hydride", 8 }
    },
    results =
    {
      { "pm-palladium-ore", 4 },
      { type = "fluid",     name = "pm-hydrogen-gas", amount_min = 2, amount_max = 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-mixed-ore-slag-crushing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mixed-ore-slag-crushing.png",
    enabled = false,
    energy_required = 9,
    category = "pm-crushing",
    subgroup = "pm-ptm-ptm",
    ingredients =
    {
      { "pm-mixed-ore-slag", 3 }
    },
    results =
    {
      {
        type = "item",
        name = "pm-ferrum",
        amount_min = 3,
        amount_max = 9,
        probability = 0.5
      },
      {
        type = "item",
        name = "pm-patina",
        amount_min = 3,
        amount_max = 9,
        probability = 0.5
      },
      {
        type = "item",
        name = "pm-post-transition-metals-ore",
        amount_min = 3,
        amount_max = 9,
        probability = 0.5
      },
    }
  },
  {
    type = "recipe",
    name = "pm-mixed-ore-slag-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/mixed-ore-slag-leeching.png",
    enabled = false,
    energy_required = 4.5,
    category = "pm-acids",
    subgroup = "pm-ptm-ptm",
    ingredients =
    {
      { "pm-mixed-ore-slag", 9 },
      { type = "fluid",      name = "pm-chromic-acid", amount = 20 }
    },
    results =
    {
      {
        type = "item",
        name = "pm-arsenic-ore",
        probability = 0.4,
        amount_min = 2,
        amount_max = 8
      },
      {
        type = "item",
        name = "pm-lead-ore",
        probability = 0.5,
        amount_min = 3,
        amount_max = 5
      },
      {
        type = "item",
        name = "pm-bismuth-ore",
        probability = 0.5,
        amount_min = 3,
        amount_max = 5
      },
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-ferrum-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chromic-ferrum-decomposition.png",
    subgroup = "pm-advanced-ore-decomposition",
    order = "d",
    category = "pm-acids",
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "pm-ferrum",       amount = 8 },
      { type = "fluid", name = "pm-chromic-acid", amount = 2 }
    },
    crafting_machine_tint =
    {
      primary = { r = 0.36, g = 0, b = 0, a = 1 }, --main visible colour
      secondary = { r = 0.4, g = 0.4, b = 0.82, a = 1 }, --background visible colour
      tertiary = { r = 0.41, g = 0.4, b = 0.82, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0.36, g = 0, b = 0, a = 1 } --smoke
    },
    results =
    {
      { "iron-ore", 4 },
      {
        name = "pm-ore-slag",
        amount_min = 2,
        amount_max = 3
      }
    }
  },
  {
    type = "recipe",
    name = "pm-chromic-patina-leeching",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chromic-patina-decomposition.png",
    subgroup = "pm-advanced-ore-decomposition",
    order = "e",
    category = "pm-acids",
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "pm-patina",       amount = 8 },
      { type = "fluid", name = "pm-chromic-acid", amount = 2 }
    },
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0, b = .56, a = 1 }, --main visible colour
      secondary = { r = 0.4, g = 0.4, b = 0.82, a = 1 }, --background visible colour
      tertiary = { r = 0.41, g = 0.4, b = 0.82, a = 1 }, -- smoke afteraffects
      quaternary = { r = 0, g = 0, b = 0.56, a = 1 } --smoke
    },
    results =
    {
      { "copper-ore", 4 },
      {
        name = "pm-ore-slag",
        amount_min = 2,
        amount_max = 3,
      }
    }
  },
  {
    type = "recipe",
    name = "pm-cobaltite-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobaltite-seperation.png",
    category = "pm-crushing",
    enabled = false,
    energy_required = 4,
    subgroup = "pm-cobalt-tm",
    order = "cb",
    ingredients =
    {
      { "pm-cobaltite", 12 }
    },
    results =
    {
      {
        name = "pm-cobalt-ore",
        amount_min = 7,
        amount_max = 12,
      },
      {
        name = "pm-arsenic-ore",
        amount_min = 6,
        amount_max = 8,
      },
      {
        name = "sulfur",
        amount_min = 7,
        amount_max = 12
      },
      {
        name = "pm-ferrum",
        probability = 0.12,
        amount_min = 2,
        amount_max = 4
      }
    }
  }

} --[[@as data.RecipePrototype[] ]])

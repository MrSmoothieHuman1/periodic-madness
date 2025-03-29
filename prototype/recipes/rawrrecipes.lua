local PM = require("library")
--for any recipes related to raw ores

data:extend({

  {
    type = "recipe",
    name = "pm-iron-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/iron-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-iron-tm",
    order = "d",
    category = "smelting",
    enabled = true,
    allow_decomposition = false,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-iron-chunk", 2)
    },
    results = {
      PM.product("iron-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/copper-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-copper-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = true,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 2)
    },
    results = {
      PM.product("copper-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/nickel-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-nickel-tm",
    order = "d",
    category = "smelting",
    enabled = true,
    allow_decomposition = false,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-nickel-chunk", 2)
    },
    results = {
      PM.product("pm-nickel-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-chunk-plate",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/plates/zinc-plate.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -4 }
      },
    },
    subgroup = "pm-zinc-tm",
    order = "d",
    category = "smelting",
    enabled = true,
    allow_decomposition = false,
    energy_required = 3.2,
    ingredients =
    {
      PM.ingredient("pm-zinc-chunk", 2)
    },
    results = {
      PM.product("pm-zinc-plate", 1)
    }
  }
} --[[@as data.RecipePrototype[] ]])

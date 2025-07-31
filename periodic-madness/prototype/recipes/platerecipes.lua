local PM = require("library")
--for all smelting recipes, e.g plates, glass, etc

data:extend({
  {
    type = "recipe",
    name = "pm-gravel-glass-pane",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/glass-pane.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/gravel.png",
        icon_size = 64,
        scale = 0.38,
        shift = { 0, -3 }
      },
    },
    category = "smelting",
    subgroup = "pm-glassing",
    order = "b",
    energy_required = 4.8,
    allow_productivity = true,
    enabled = false,
    ingredients = { PM.ingredient("pm-gravel", 4) },
    results = {
      PM.product("pm-glass-pane", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-glass-pane",
    category = "smelting",
    subgroup = "pm-glassing",
    order = "b",
    energy_required = 3.2,
    allow_productivity = true,
    enabled = false,
    ingredients = { PM.ingredient("pm-sand", 4) },
    results = {
      PM.product("pm-glass-pane", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-plate",
    energy_required = 8,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "c",
    enabled = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 1),
      PM.ingredient("pm-zinc-plate", 1),
    },
    results = {
      PM.product("pm-brass-plate", 1)
    },
  },
  {
    type = "recipe",
    name = "pm-better-brass-plate",
    energy_required = 12,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "ca",
    enabled = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 3),
      PM.ingredient("pm-zinc-plate", 3),
      PM.ingredient("pm-lead-plate", 2),
      PM.ingredient("pm-arsenic-ore", 2)
    },
    results = 
    {
      PM.product("pm-brass-plate", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-alloy",
    energy_required = 16,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "d",
    enabled = false,
    ingredients =
    {
      PM.ingredient("steel-plate", 2),
      PM.ingredient("pm-manganese-plate", 2),
      PM.ingredient("pm-molybdenum-ore", 2)
    },
    results =
    {
      PM.product("pm-stainless-steel-alloy", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-better-stainless-steel-alloy",
    energy_required = 16,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "e",
    enabled = false,
    ingredients =
    {
      PM.ingredient("steel-plate", 3),
      PM.ingredient("pm-manganese-plate", 3),
      PM.ingredient("pm-chrominum-ore", 3),
      PM.ingredient("pm-molybdenum-ore", 2)
    },
    results =
    {
      PM.product("pm-stainless-steel-alloy", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-better-steel-plate",
    energy_required = 8,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 4),
      PM.ingredient("pm-manganese-plate", 4),
      PM.ingredient("pm-vanadium-oxide", 2)
    },
    results =
    {
      PM.product("steel-plate", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-kasethal-plate",
    energy_required = 24,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "f",
    enabled = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 4),
      PM.ingredient("pm-chrominum-ore", 3),
      PM.ingredient("pm-aluminium-plate", 2)
    },
    results =
    {
      PM.product("pm-kasethal-plate", 3)
    }
  }
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["copper-plate"].subgroup = "pm-copper-tm"
data.raw["recipe"]["copper-plate"].order = "e"
data.raw["recipe"]["steel-plate"].category = "pm-alloying"
data.raw["recipe"]["steel-plate"].subgroup = "pm-alloys"
data.raw["recipe"]["steel-plate"].order = "a"
data.raw["recipe"]["steel-plate"].energy_required = 8

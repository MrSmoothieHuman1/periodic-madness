local PM = require("__periodic-madness__/library")
--for all smelting recipes, e.g plates, glass, etc

data:extend({
  {
    type = "recipe",
    name = "pm-nickel-plate",
    subgroup = "pm-nickel-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-nickel-ore", 1) },
    results = {
      PM.product("pm-nickel-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-plate",
    subgroup = "pm-zinc-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-zinc-ore", 1) },
    results = {
      PM.product("pm-zinc-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate",
    subgroup = "pm-manganese-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-manganese-ore", 1) },
    results = {
      PM.product("pm-manganese-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-gold-plate",
    subgroup = "pm-gold-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-gold-ore", 1) },
    results = {
      PM.product("pm-gold-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-silver-plate",
    subgroup = "pm-silver-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-silver-ore", 1) },
    results = {
      PM.product("pm-silver-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-plate",
    subgroup = "pm-titanium-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-titanium-ore", 1) },
    results = {
      PM.product("pm-titanium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-plate",
    subgroup = "pm-tungsten-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-tungsten-ore", 1) },
    results = {
      PM.product("pm-tungsten-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-glass-smelting",
    category = "smelting",
    subgroup = "pm-glassing",
    order = "b",
    energy_required = 3.2,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-sand", 4) },
    results = {
      PM.product("pm-glass-pane", 1)
    }
  },

  {
    type = "recipe",
    name = "pm-tin-plate",
    subgroup = "pm-tin-ptm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-tin-ore", 1) },
    results = {
      PM.product("pm-tin-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-plate",
    subgroup = "pm-aluminium-ptm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-aluminium-ore", 1) },
    results = {
      PM.product("pm-aluminium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-plate",
    subgroup = "pm-cadnium-tm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-cadnium-ore", 1) },
    results = {
      PM.product("pm-cadnium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-plate",
    subgroup = "pm-palladium-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-palladium-ore", 1) },
    results = {
      PM.product("pm-palladium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-plate",
    subgroup = "pm-lead-ptm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-lead-ore", 1) },
    results = {
      PM.product("pm-lead-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-thallium-plate",
    subgroup = "pm-thallium-ptm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-thallium-ore", 1) },
    results = {
      PM.product("pm-thallium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-indium-plate",
    subgroup = "pm-indium-ptm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-indium-ore", 1) },
    results = {
      PM.product("pm-indium-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-plate",
    subgroup = "pm-platinum-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-platinum-ore", 1) },
    results = {
      PM.product("pm-platinum-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-plate",
    subgroup = "pm-cobalt-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-cobalt-ore", 1) },
    results = {
      PM.product("pm-cobalt-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-tellurium-plate",
    subgroup = "pm-tellurium-mt",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    --enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-tellurium-ore", 1) },
    results = {
      PM.product("pm-tellurium-plate", 1)
    }
  },

  -- alloys

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
      PM.product("pm-brass-plate", 2)
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
      PM.ingredient("pm-vanadium-oxide", 3)
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
      PM.product("pm-kasethal-plate", 2)
    }
  }
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["iron-plate"].subgroup = "pm-iron-tm"
data.raw["recipe"]["iron-plate"].order = "e"
data.raw["recipe"]["copper-plate"].subgroup = "pm-copper-tm"
data.raw["recipe"]["copper-plate"].order = "e"
data.raw["recipe"]["steel-plate"].category = "pm-alloying"
data.raw["recipe"]["steel-plate"].subgroup = "pm-alloys"
data.raw["recipe"]["steel-plate"].order = "a"
data.raw["recipe"]["steel-plate"].energy_required = 8

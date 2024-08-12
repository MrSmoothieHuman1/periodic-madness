local PM = require("__periodic-madness__/library")
--for all recipes related to batteries

data:extend({

  {
    type = "recipe",
    name = "pm-voltatic-pile",
    energy_required = 4,
    enabled = false,
    subgroup = "pm-batteries",
    order = "f",
    ingredients =
    {
      { "pm-copper-disc", 8 },
      { "pm-zinc-disc",   8 },
    },
    result = "pm-uncharged-voltatic-pile"
  },
  {
    type = "recipe",
    name = "pm-voltatic-pile-charging",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/charged-voltatic-pile.png",
    subgroup = "pm-batteries",
    order = "g",
    category = "pm-voltatic-charging",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      { "pm-uncharged-voltatic-pile", 1 }
    },
    results =
    {
      {
        name = "pm-charged-voltatic-pile",
        probability = 0.8,
        amount = 1
      },
      {
        name = "pm-broken-voltatic-pile",
        probability = 0.25,
        amount = 1
      }
    }
  },
  {
    type = "recipe",
    name = "pm-voltatic-pile-fixing",
    subgroup = "pm-batteries",
    order = "h",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-broken-voltatic-pile", 1 },
      { "pm-copper-disc",          4 },
      { "pm-zinc-disc",            4 },
    },
    result = "pm-uncharged-voltatic-pile"
  },
  {
    type = "recipe",
    name = "pm-copper-disk-anodization",
    enabled = false,
    energy_required = 3.2,
    category = "smelting",
    subgroup = "pm-batteries",
    order = "c",
    ingredients =
    {
      { "pm-copper-disc", 1 }
    },
    results =
    {
      { "pm-copper-anode", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-disc",
    enabled = false,
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-batteries",
    order = "a",
    ingredients =
    {
      { "copper-plate", 1 }
    },
    results =
    {
      { "pm-copper-disc", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-disc",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-batteries",
    order = "b",
    ingredients =
    {
      { "pm-zinc-plate", 1 }
    },
    results =
    {
      { "pm-zinc-disc", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-disk-cathodization",
    enabled = false,
    energy_required = 3.2,
    category = "smelting",
    subgroup = "pm-batteries",
    order = "d",
    ingredients =
    {
      { "pm-zinc-disc", 1 }
    },
    results =
    {
      { "pm-zinc-cathode", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-vanadium-oxide",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    subgroup = "pm-batteries",
    order = "i",
    ingredients =
    {
      { "pm-vanadium-ore", 4 },
      { type = "fluid",    name = "pm-oxygen-gas", amount = 2 }
    },
    results =
    {
      { "pm-vanadium-oxide", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-vanadium-oxide-positive-solution",
    enabled = false,
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "j",
    ingredients =
    {
      { "pm-vanadium-oxide", 2 },
      { type = "fluid",      name = "water", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-vanadium-oxide-positive-solution", amount = 60 }
    }
  },
  {
    type = "recipe",
    name = "pm-vanadium-oxide-negative-solution",
    enabled = false,
    energy_required = 2,
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "k",
    ingredients =
    {
      { "pm-vanadium-oxide", 2 },
      { type = "fluid",      name = "pm-acidic-water", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-vanadium-oxide-negative-solution", amount = 60 }
    }
  },
  {
    type = "recipe",
    name = "pm-battery-casing",
    enabled = false,
    energy_required = 2,
    subgroup = "pm-batteries",
    order = "e",
    ingredients =
    {
      { "pm-aluminium-plate",      2 },
      { "pm-nickel-plate",         2 },
      { "pm-polyethylene-plastic", 4 }
    },
    results =
    {
      { "pm-battery-casing", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-vanadium-redox-battery",
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "l",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-battery-casing", 1 },
      { type = "fluid",      name = "pm-vanadium-oxide-negative-solution", amount = 20 },
      { type = "fluid",      name = "pm-vanadium-oxide-positive-solution", amount = 20 },
      { "pm-copper-anode",   2 },
      { "pm-zinc-cathode",   2 }
    },
    results =
    {
      { "pm-vanadium-redox-battery", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-ethylene-carbonate",
    enabled = false,
    energy_required = 4,
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "m",
    ingredients =
    {
      { type = "fluid", name = "pm-carbon-dioxide-gas", amount = 10 },
      { type = "fluid", name = "pm-ethylene-gas",       amount = 10 },
    },
    results =
    {
      { type = "fluid", name = "pm-ethylene-carbonate", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-ion-battery",
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "n",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-battery-casing", 1 },
      { type = "fluid",      name = "pm-ethylene-carbonate", amount = 20 },
      { "pm-cobalt-plate",   4 },
      { "pm-lithium-ore",    6 }
    },
    results =
    {
      { "pm-lithium-ion-battery", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-sulfur-battery",
    category = "chemistry",
    subgroup = "pm-batteries",
    order = "o",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      { "pm-battery-casing", 2 },
      { type = "fluid",      name = "pm-ethylene-carbonate", amount = 20 },
      { "sulfur",            6 },
      { "pm-lithium-ore",    8 }
    },
    results =
    {
      { "pm-lithium-sulfur-battery", 1 }
    }
  },

  {
    type = "recipe",
    name = "pm-vanadium-battery-charging",
    category = "pm-battery-charging",
    subgroup = "pm-batteries",
    order = "la",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      { "pm-vanadium-redox-battery", 1 }
    },
    results =
    {
      { "pm-charged-vanadium-redox-battery", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-lithium-sulfur-battery-charging",
    category = "pm-battery-charging",
    subgroup = "pm-batteries",
    order = "oa",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      { "pm-lithium-sulfur-battery", 1 }
    },
    results =
    {
      { "pm-charged-lithium-sulfur-battery", 1 }
    }
  },
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["battery"].subgroup = "pm-batteries"
data.raw["recipe"]["battery"].order = "m"

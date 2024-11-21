local PM = require("library")
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
      PM.ingredient("pm-copper-disc", 8),
      PM.ingredient("pm-zinc-disc", 8),
    },
    results = {
      PM.product("pm-uncharged-voltatic-pile", 1)
    }
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
      PM.ingredient("pm-uncharged-voltatic-pile", 1)
    },
    results =
    {
      PM.product_chance("pm-charged-voltatic-pile", 1, 0.8),
      PM.product_chance("pm-broken-voltatic-pile", 1, 0.2)
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
      PM.ingredient("pm-broken-voltatic-pile", 1),
      PM.ingredient("pm-copper-disc", 4),
      PM.ingredient("pm-zinc-disc", 4),
    },
    results = {
      PM.product("pm-uncharged-voltatic-pile", 1)
    }
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
      PM.ingredient("pm-copper-disc", 1)
    },
    results =
    {
      PM.product("pm-copper-anode", 1)
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
      PM.ingredient("copper-plate", 1)
    },
    results =
    {
      PM.product("pm-copper-disc", 4)
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
      PM.ingredient("pm-zinc-plate", 1)
    },
    results =
    {
      PM.product("pm-zinc-disc", 4)
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
      PM.ingredient("pm-zinc-disc", 1)
    },
    results =
    {
      PM.product("pm-zinc-cathode", 1)
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
      PM.ingredient("pm-vanadium-ore", 4),
      PM.ingredient("pm-oxygen-gas", 2, "fluid")
    },
    results =
    {
      PM.product("pm-vanadium-oxide", 1)
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
      PM.ingredient("pm-vanadium-oxide", 2),
      PM.ingredient("water", 50, "fluid")
    },
    results =
    {
      PM.product("pm-vanadium-oxide-positive-solution", 60, "fluid")
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
      PM.ingredient("pm-vanadium-oxide", 2),
      PM.ingredient("pm-acidic-water", 50, "fluid")
    },
    results =
    {
      PM.product("pm-vanadium-oxide-negative-solution", 60, "fluid")
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
      PM.ingredient("pm-aluminium-plate", 2),
      PM.ingredient("pm-nickel-plate", 2),
      PM.ingredient("pm-polyethylene-plastic", 4)
    },
    results =
    {
      PM.product("pm-battery-casing", 1)
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
      PM.ingredient("pm-battery-casing", 1),
      PM.ingredient("pm-vanadium-oxide-negative-solution", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-positive-solution", 20, "fluid"),
      PM.ingredient("pm-copper-anode", 2),
      PM.ingredient("pm-zinc-cathode", 2)
    },
    results =
    {
      PM.product("pm-vanadium-redox-battery", 1)
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
      PM.ingredient("pm-carbon-dioxide-gas", 10, "fluid"),
      PM.ingredient("pm-ethylene-gas", 10, "fluid"),
    },
    results =
    {
      PM.product("pm-ethylene-carbonate", 10, "fluid")
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
      PM.ingredient("pm-battery-casing", 1),
      PM.ingredient("pm-ethylene-carbonate", 20, "fluid"),
      PM.ingredient("pm-cobalt-plate", 4),
      PM.ingredient("pm-lithium-ore", 6)
    },
    results =
    {
      PM.product("pm-lithium-ion-battery", 1)
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
      PM.ingredient("pm-battery-casing", 2),
      PM.ingredient("pm-ethylene-carbonate", 20, "fluid"),
      PM.ingredient("sulfur", 6),
      PM.ingredient("pm-lithium-ore", 8)
    },
    results =
    {
      PM.product("pm-lithium-sulfur-battery", 1)
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
      PM.ingredient("pm-vanadium-redox-battery", 1)
    },
    results =
    {
      PM.product("pm-charged-vanadium-redox-battery", 1)
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
      PM.ingredient("pm-lithium-sulfur-battery", 1)
    },
    results =
    {
      PM.product("pm-charged-lithium-sulfur-battery", 1)
    }
  },
} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["battery"].subgroup = "pm-batteries"
data.raw["recipe"]["battery"].order = "m"

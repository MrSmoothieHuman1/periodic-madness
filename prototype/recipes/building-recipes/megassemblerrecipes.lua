data:extend({

  {
    type = "recipe",
    name = "pm-megassembler-electronic-circuit",
    subgroup = "pm-megassembler-circuitry",
    category = "pm-circuitry",
    enabled = false,
    energy_required = 0.5,
    hide_from_player_crafting = true,
    ingredients =
    {
      { "copper-cable",                 2 },
      { "pm-basic-integrated-circuits", 3 },
      { "pm-basic-breadboard",          1 }
    },
    results =
    {
      { "electronic-circuit", 1 }
    },
  },
  {
    type = "recipe",
    name = "pm-megassembler-fluid-resistant-circuit",
    subgroup = "pm-megassembler-circuitry",
    category = "pm-circuitry",
    enabled = false,
    energy_required = 1.5,
    hide_from_player_crafting = true,
    ingredients =
    {
      { "pm-gold-wire",                 3 },
      { "pm-fluid-breadboard",          1 },
      { "pm-fluid-integrated-circuits", 3 },
      { "pm-transistors",               5 },
    },
    results =
    {
      { "pm-fluid-circuit", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-megassembler-advanced-circuit",
    subgroup = "pm-megassembler-circuitry",
    category = "pm-circuitry",
    enabled = false,
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      { "pm-gold-wire",                    3 },
      { "pm-advanced-circuit-breadboard",  1 },
      { "pm-advanced-integrated-circuits", 3 },
      { "pm-solder",                       1 },
      { "pm-transistors",                  5 }
    },
    results =
    {
      { "advanced-circuit", 1 }
    }
  },
} --[[@as data.RecipePrototype[] ]])

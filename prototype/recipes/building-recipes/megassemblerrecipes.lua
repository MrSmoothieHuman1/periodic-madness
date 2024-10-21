local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "recipe",
    name = "pm-megassembler-electronic-circuit",
    subgroup = "pm-megassembler-circuitry",
    category = "pm-circuitry",
    enabled = false,
    energy_required = 0.5,
    hide_from_player_crafting = true,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("copper-cable", 2),
      PM.ingredient("pm-basic-integrated-circuits", 3),
      PM.ingredient("pm-basic-breadboard", 1)
    },
    results =
    {
      PM.product("electronic-circuit", 1)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("pm-fluid-breadboard", 1),
      PM.ingredient("pm-fluid-integrated-circuits", 3),
      PM.ingredient("pm-transistors", 5),
    },
    results =
    {
      PM.product("pm-fluid-circuit", 1)
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-gold-wire", 3),
      PM.ingredient("pm-advanced-circuit-breadboard", 1),
      PM.ingredient("pm-advanced-integrated-circuits", 3),
      PM.ingredient("pm-solder", 1),
      PM.ingredient("pm-transistors", 5)
    },
    results =
    {
      PM.product("advanced-circuit", 1)
    }
  },
} --[[@as data.RecipePrototype[] ]])

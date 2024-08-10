data:extend({

  {
    type = "recipe",
    name = "pm-seawater-evaporation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/seawater-refining.png",
    subgroup = "pm-chlorine-rnm",
    order = "A",
    category = "pm-evaporation",
    enabled = false,
    energy_required = 0.74 + 0.01,
    ingredients =
    {
      { type = "fluid", name = "pm-seawater", amount = 50 }
    },
    results =
    {
      { "pm-sea-salt",  3 },
      { type = "fluid", name = "water", amount = 25 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-seawater-desaltination",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/water-desaltination.png",
    subgroup = "pm-chlorine-rnm",
    order = "a",
    category = "pm-evaporation",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 0.74 + 0.01,
    ingredients = { { type = "fluid", name = "pm-seawater", amount = 20 * 2 + 30 + 4 + 1 } },
    results =
    {
      { type = "fluid", name = "water",       amount = 50 },
      { type = "item",  name = "pm-sea-salt", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-sodium-looping",
    subgroup = "pm-chlorine-rnm",
    order = "d",
    category = "pm-evaporation",
    main_product = "pm-chlorine",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      { "pm-sodium", 4 }
    },
    results =
    {
      {
        type = "fluid",
        name = "pm-chlorine",
        probability = 0.2,
        amount_min = 2,
        amount_max = 5,
      },
      { name = "pm-sodium", amount_min = 0, amount_max = 2 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrochloric-acid",
    subgroup = "pm-chlorine-rnm",
    order = "c",
    category = "pm-acids",
    enabled = false,
    crafting_machine_tint =
    {
      primary = { r = 0.98, g = 0.87, b = 0.09, a = 1 },   --main visible colour
      secondary = { r = 0, g = 0.4, b = 0, a = 1 },        --background visible colour
      tertiary = { r = 0.76, g = 0.89, b = 0.4, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 0.25,
    ingredients =
    {
      { type = "fluid", name = "pm-hydrogen-gas", amount = 5 },
      { type = "fluid", name = "pm-chlorine",     amount = 5 },
    },
    results =
    {
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 5 }
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-methyl-chloride",
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "pm-chlorine-rnm",
    order = "e",
    ingredients =
    {
      { type = "fluid", name = "pm-methanol",          amount = 5 },
      { type = "fluid", name = "pm-hydrochloric-acid", amount = 15 }
    },
    results =
    {
      { type = "fluid", name = "pm-methyl-chloride", amount = 10 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-carbon-tetrachloride-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/carbon-tetrachloride-seperation.png",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-chlorine-rnm",
    order = "f",
    ingredients =
    {
      { type = "fluid", name = "pm-hydrogen-gas",         amount = 10 },
      { type = "fluid", name = "pm-carbon-tetrachloride", amount = 20 },
      { "iron-plate",   6 } --should be catalyst for hard mode
    },
    results =
    {
      {
        type = "fluid",
        name = "pm-chlorine",
        amount_min = 8,
        amount_max = 12
      },
      {
        type = "fluid",
        name = "pm-chloroform",
        amount_min = 6,
        amount_max = 12
      }
    }
  } --[[@as data.RecipePrototype]]
})

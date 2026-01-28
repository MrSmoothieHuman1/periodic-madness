data:extend({

{
    type = "fluid",
    name = "pm-hydrochloric-acid",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
    subgroup = "pm-chlorine-rnm",
    order = "j",
    default_temperature = 15,
    base_color = {r = 0, g = 0.8, b = 0.34},
    flow_color = {r = 0, g = 0.8, b = 0.34}
  },
  {
    type = "fluid",
    name = "pm-chlorine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/chlorine.png",
    subgroup = "pm-chlorine-rnm",
    order = "c",
    protons = 17,
    neutrons = 18,
    default_temperature = 15,
    gas_temperature = 15,
    base_color = {r = 0, g = 1, b = 0},
    flow_color = {r = 0, g = 0.75, b = 0}
  },
  {
    type = "fluid",
    name = "pm-methyl-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/methyl-chloride.png",
    subgroup = "pm-chlorine-rnm",
    order = "k",
    default_temperature = 15,
    base_color = {r = 0.33, g = 0.66, b = 0.32},
    flow_color = {r = 0.33, g = 0.66, b = 0.32},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-carbon-tetrachloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/carbon-tetrachloride.png",
    subgroup = "fluid",
    default_temperature = 15,
    base_color = {r = 0.33, g = 0.99, b = 0.32},
    flow_color = {r = 0.33, g = 0.99, b = 0.32},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-chloronated-solution",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/chloronated-solution.png",
    subgroup = "pm-plastics",
    order = "j",
    default_temperature = 15,
    base_color = {r = 0.66, g = 0.99, b = 0.66},
    flow_color = {r = 0.66, g = 0.99, b = 0.66},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-chloroform",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/chloroform.png",
    subgroup = "fluid",
    default_temperature = 15,
    base_color = {r = 0.66, g = 0.99, b = 0.66},
    flow_color = {r = 0.66, g = 0.99, b = 0.66},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-liquid-chlorine",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/liquid-chlorine.png",
    subgroup = "pm-chlorine-rnm",
    order = "g",
    default_temperature = 15,
    base_color = {r = 0.25, g = 1, b = 0.25},
    flow_color = {r = 0.25, g = 1, b = 0.25}
  },

  {
    type = "recipe",
    name = "pm-chlorine-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-chlorine-rnm",
    order = "a",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("copper-plate", 4)
    },
    results =
    {
      PM.product("pm-chlorine-air-filter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-chlorine-air-filter",
    category = "advanced-crafting",
    subgroup = "pm-chlorine-rnm",
    order = "b",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-advanced-air-filter", 1),
      PM.ingredient("copper-plate", 3),
      PM.ingredient("pm-iodine", 2),
      PM.ingredient("pm-lightweight-framing", 3)
    },
    results =
    {
      PM.product("pm-advanced-chlorine-air-filter", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-chlorine",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-chlorine-rnm",
    order = "c",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.5,
    ingredients =
    {
      PM.ingredient("pm-atmosphere", 25, "fluid"),
      PM.ingredient("pm-chlorine-air-filter", 1)
    },
    results =
    {
      PM.product("pm-chlorine", 25, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-advanced-chlorine-atmosphere-filtering",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/chlorine-condensation.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-chlorine-rnm",
    order = "d",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 0.75,
    ingredients =
    {
      PM.ingredient("pm-atmosphere", 12.5, "fluid"),
      PM.ingredient("pm-advanced-chlorine-air-filter", 1)
    },
    results =
    {
      PM.product("pm-chlorine", 50, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-chlorine-atmospheric-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/chlorine-voiding.png",
    category = "pm-atmospheric-condensing",
    subgroup = "pm-chlorine-rnm",
    order = "e",
    enabled = false,
    energy_required = 6,
    emissions_multiplier = 2,
    ingredients =
    {
      PM.ingredient("pm-chlorine", 25, "fluid")
    },
    results = {}
  },

  {
    type = "recipe",
    name = "pm-seawater-evaporation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/seawater-refining.png",
    subgroup = "pm-chlorine-rnm",
    order = "fa",
    category = "pm-evaporation",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-seawater", 75, "fluid")
    },
    results =
    {
      PM.product("pm-sea-salt", 4),
      PM.product("water", 25, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-seawater-electrolysis",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/seawater-electrolysis.png",
    subgroup = "pm-chlorine-rnm",
    order = "fb",
    category = "pm-electrolysis",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-seawater", 25, "fluid"),
    },
    results =
    {
      PM.product("pm-chlorine", 5, "fluid"),
      PM.product("pm-hydrogen-gas", 10, "fluid"),
      PM.product_range("pm-solid-sodium-hydroxide", 0, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-solid-sodium-hydroxide-seawater",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-hydroxide-seawater.png",
    enabled = false,
    energy_required = 1,
    category = "pm-acids",
    subgroup = "pm-chlorine-rnm",
    order = "fc",
    main_product = "pm-seawater",
    ingredients =
    {
        PM.ingredient("pm-solid-sodium-hydroxide", 4),
        PM.ingredient("water", 10, "fluid"),
        PM.ingredient("pm-nickel-plate", 1)
    },
    results = 
    {
        PM.product("pm-seawater", 12.5, "fluid"),
        PM.product_range("pm-sodium", 1, 3)
    }
  },
  {
    type = "recipe",
    name = "pm-sodium-to-solid-sodium-hydroxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/sodium-to-solid-sodium-hydroxide.png",
    enabled = false,
    category = "pm-evaporation",
    subgroup = "pm-chlorine-rnm",
    order = "fd",
    main_product = "pm-solid-sodium-hydroxide",
    ingredients =
    {
        PM.ingredient("pm-sodium", 4),
        PM.ingredient("water", 10, "fluid")
    },
    results =
    {
        PM.product("pm-chlorine", 5, "fluid"),
        PM.product("pm-solid-sodium-hydroxide", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-hydrochloric-acid",
    subgroup = "pm-chlorine-rnm",
    order = "j",
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
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-gas", 5, "fluid"),
      PM.ingredient("pm-chlorine", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-hydrochloric-acid", 5, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-hydrochloric-acid-neutralisation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/HCl-neutralisation.png",
    energy_required = 1,
    enabled = false,
    category = "pm-washing",
    subgroup = "pm-chlorine-rnm",
    order = "ja",
    ingredients = 
    {
      PM.ingredient("pm-hydrochloric-acid", 20, "fluid"),
      PM.ingredient("pm-calcium-ore", 6)
    },
    results = 
    {
      PM.product_range_chance("pm-calcium-chloride", 0, 3, 0.5),
      PM.product_range("pm-hydrogen-gas", 14, 20, "fluid"),
      PM.product_range("pm-chlorine", 8, 16, "fluid")
    }
  },
  
  {
    type = "recipe",
    name = "pm-methyl-chloride",
    crafting_machine_tint =
    {
        primary = {0.75, 0.6, 0.5},
        secondary = {0.349, 0.89, 0.345},
        tertiary = {0.349, 0.89, 0.345},
        quarternary = {0.649, 0.89, 0.645}
    },
    enabled = false,
    energy_required = 3,
    category = "chemistry",
    subgroup = "pm-chlorine-rnm",
    order = "k",
    ingredients =
    {
      PM.ingredient("pm-methanol", 5, "fluid"),
      PM.ingredient("pm-hydrochloric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-methyl-chloride", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-carbon-tetrachloride-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/carbon-tetrachloride-seperation.png",
    crafting_machine_tint = 
    {
        primary = {0.4, 0.6, 0.4},
        secondary = {0.3, 0.3, 0.3},
        tertiary = {0.5, 0.7, 0.5},
        quaternary = {0.5, 0.7, 0.5}
    },
    enabled = false,
    category = "chemistry",
    subgroup = "pm-chlorine-rnm",
    order = "l",
    ingredients =
    {
      PM.ingredient("pm-hydrogen-gas", 10, "fluid"),
      PM.ingredient("pm-carbon-tetrachloride", 20, "fluid"),
      PM.ingredient("iron-plate", 6) --should be catalyst for hard mode
    },
    results =
    {
      PM.product_range("pm-chlorine", 8, 12, "fluid"),
      PM.product_range("pm-chloroform", 6, 12, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-liquid-chlorine",
    enabled = false,
    energy_required = 10,
    category = "pm-cryogenics",
    ingredients =
    {
        PM.ingredient("pm-chlorine", 10, "fluid")
    },
    results =
    {
        PM.product("pm-liquid-chlorine", 1, "fluid")
    }
  },
  
})

--the recipe chain for Titanium

data:extend({
  {
    type = "item",
    name = "pm-titanium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/titanium-oxide.png",
    subgroup = "pm-titanium-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-titanium-chloride",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/titanium-chloride.png",
    subgroup = "pm-titanium-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-titanium-chunks",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",   size = 64, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/ores/titanium-chunks-2.png", size = 64, scale = 0.25 }
    },
    subgroup = "pm-titanium-tm",
    order = "a",
    stack_size = 150
  },

  {
    type = "recipe",
    name = "pm-titanium-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/silver-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png",
        icon_size = 64,
      },
    },
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      { "pm-transition-metals-ore", 12 },
      { type = "fluid",             name = "pm-acidic-water", amount = 50 }
    },
    results =
    {
      { "pm-titanium-chunks", 8 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-chunk-oxidising",
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "c",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      { "pm-titanium-chunks", 4 },
      { "pm-coke",            10 }
    },
    results =
    {
      { "pm-titanium-oxide", 6 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-chlorination",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-chlorination.png",
    subgroup = "pm-titanium-tm",
    order = "d",
    category = "pm-acids",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { "pm-titanium-oxide", 3 },
      { type = "fluid",      name = "pm-chlorine", amount = 10 }
    },
    results =
    {
      { "pm-titanium-chloride", 2 },
      { type = "fluid",         name = "pm-oxygen-gas", amount = 4 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-titanium-chloride-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-chloride-seperation.png",
    subgroup = "pm-titanium-tm",
    order = "e",
    category = "pm-acids",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      { "pm-titanium-chloride", 2 }
    },
    results =
    {
      { "pm-titanium-ore", 4 },
      { type = "fluid",    name = "pm-chlorine", amount = 5 },
      { "pm-ferrum",       4 }
    }
  } --[[@as data.RecipePrototype]],
  --titanium plate is order f
  {
    type = "recipe",
    name = "pm-argon-titanium-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/argon-titanium-welding.png",
    subgroup = "pm-titanium-tm",
    order = "h",
    category = "pm-moltening",
    energy_required = 4.4 + 0.1,
    enabled = false,
    ingredients =
    {
      { type = "fluid",      name = "pm-argon-gas", amount = 40 },
      { "pm-titanium-oxide", 14 + 1 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-titanium", amount = 4 + 1 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-chromic-titanium-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/titanium-chunks.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      },
    },
    category = "pm-acids",
    subgroup = "pm-titanium-tm",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      { "pm-transition-metals-ore", 12 },
      { type = "fluid",             name = "pm-chromic-acid", amount = 10 }
    },
    results =
    {
      { "pm-titanium-chunks", 8 }
    }
  } --[[@as data.RecipePrototype]],
})

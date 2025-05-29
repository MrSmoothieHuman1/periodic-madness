local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-zinc-chunk",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-chunks-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-zinc-powder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-powder.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-powder.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-powder-2.png", size = 64, scale = 0.5 }
    },
    subgroup = "pm-zinc-tm",
    order = "a",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-zinc-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/zinc-oxide.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-oxide.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/zinc-oxide-2.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/ores/zinc-oxide-3.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-advanced-zinc-tm",
    order = "a",
    stack_size = 300
  },

  {
    type = "fluid",
    name = "pm-zinc-sulfide-concentrate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/zinc-sulfide-concentrate.png",
    subgroup = "pm-advanced-zinc-tm",
    order = "b",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    auto_barrel = false,
  },
  {
    type = "fluid",
    name = "pm-zinc-froth",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/nickel-froth.png",
    subgroup = "pm-advanced-zinc-tm",
    order = "a",
    default_temperature = 15,
    base_color = {r = 0.32, g = 0.49, b = 0.87},
    flow_color = {r = 0.32, g = 0.49, b = 0.87},
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "pm-zinc-vapour",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/vanadate-solution.png",
    subgroup = "pm-advanced-zinc-tm",
    order = "d",
    default_temperature = 15,
    base_color = {r = 0.529, g = 0.43, b = 0.35},
    flow_color = {r = 0.529, g = 0.43, b = 0.35},
    auto_barrel = false
  },

  {
    type = "recipe",
    name = "pm-zinc-powder",
    enabled = false,
    energy_required = 2,
    category = "pm-crushing",
    subgroup = "pm-zinc-tm",
    order = "a",
    main_product = "pm-zinc-powder",
    ingredients = 
    {
      PM.ingredient("pm-zinc-chunk", 2),
    },
    results = 
    {
      PM.product("pm-zinc-powder", 4),
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-zinc-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },        --main visible colour
      secondary = { r = 0.63, g = 0.64, b = 0.78, a = 1 }, --background visible colour
      tertiary = { r = 0.73, g = 0.7, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }    --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-powder", 4),
      PM.ingredient("pm-hydrochloric-acid", 4, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-zinc-ore", 2),
      PM.product_range_chance("sulfur", 1, 2, 0.75),
    }
  },

  {
    type = "recipe",
    name = "pm-chromic-zinc-powder-leeching",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/ores/zinc-ore-icon.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/chromic-acid.png",
        icon_size = 64,
      }
    },
    subgroup = "pm-zinc-tm",
    order = "b",
    category = "pm-acids",
    crafting_machine_tint =
    {
      primary = { r = 0, g = 0.6, b = 0.1, a = 1 },      --main visible colour
      secondary = { r = 0.63, g = 0, b = 0.78, a = 1 },  --background visible colour
      tertiary = { r = 0.73, g = 0, b = 0.88, a = 0.5 }, -- smoke afteraffects
      quaternary = { r = 0.5, g = 0.8, b = 0.5, a = 1 }  --smoke
    },
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-zinc-powder", 4),
      PM.ingredient("pm-chromic-acid", 2, "fluid"),
    },
    enabled = false,
    results =
    {
      PM.product("pm-zinc-ore", 2),
    }
  },

--MARK: Adv. Zinc
{
  type = "recipe",
  name = "pm-powdered-zinc-frothing",
  icon_size = 64,
  icon = "__periodic-madness__/graphics/icons/recipes/nickel-chunk-frothing.png",
  category = "pm-mixing",
  subgroup = "pm-advanced-zinc-tm",
  order = "a",
  enabled = false,
  energy_required = 2,
  main_product = "pm-zinc-froth",
  ingredients =
  {
    PM.ingredient("pm-zinc-powder", 16),
    PM.ingredient("water", 25, "fluid"),
    PM.ingredient("sulfuric-acid", 2.5, "fluid"),
    PM.ingredient("pm-sodium-hydroxide", 2.5, "fluid"),
  },
  results =
  {
    PM.product("pm-zinc-froth", 20, "fluid"),
    PM.product("pm-zinc-tailings", 10, "fluid")
  }
},
{
  type = "recipe",
  name = "pm-zinc-sulfide-concentrate",
  enabled = false,
  energy_required = 9,
  category = "pm-moltening", --should be in reverbatory furnace
  subgroup = "pm-advanced-zinc-tm",
  order = "b",
  main_product = "pm-zinc-sulfide-concentrate",
  allow_productivity = true,
  ingredients =
  {
    PM.ingredient("pm-zinc-froth", 20, "fluid"),
  },
  results =
  {
    PM.product("pm-zinc-sulfide-concentrate", 15, "fluid"),
    PM.product_range("pm-molten-ore-slag", 0, 2, "fluid")
  }
},
{
  type = "recipe",
  name = "pm-zinc-oxide",
  enabled = false,
  energy_required = 16,
  category = "chemistry", --should be blast furnace
  subgroup = "pm-advanced-zinc-tm",
  order = "c",
  main_product = "pm-zinc-oxide",
  ingredients =
  {
    PM.ingredient("pm-zinc-sulfide-concentrate", 15, "fluid"),
    PM.ingredient("steam",  10, "fluid")
  },
  results =
  {
    PM.product_range("pm-sulfur-dioxide", 0, 0.5, "fluid"),
    PM.product("pm-zinc-oxide", 30)
  }
},
{
  type = "recipe",
  name = "pm-zinc-vapour",
  enabled = false,
  energy_required = 4,
  category = "pm-moltening",
  subgroup = "pm-advanced-zinc-tm",
  order = "d",
  main_product = "pm-zinc-vapour",
  ingredients = 
  {
    PM.ingredient("pm-zinc-oxide", 10),
    PM.ingredient("pm-carbon-monoxide", 10, "fluid")
  },
  results = 
  {
    PM.product("pm-zinc-vapour", 5, "fluid"),
    PM.product_range("pm-carbon-dioxide-gas", 8, 10, "fluid")
  }
},
{
  type = "recipe",
  name = "pm-zinc-vapour-condensing",
  enabled = false,
  energy_required = 2,
  category = "pm-washing",
  subgroup = "pm-advanced-zinc-tm",
  order = "e",
  ingredients =
  {
    PM.ingredient("pm-zinc-vapour", 5, "fluid")
  },
  results =
  {
    PM.product("pm-zinc-ore", 8)
  }
},
{
  type = "recipe",
  name = "pm-zinc-tailings-cleaning",
  icon_size = 64,
  icon = "__periodic-madness__/graphics/icons/recipes/nickel-tailings-looping.png",
  category = "pm-mixing",
  subgroup = "pm-advanced-zinc-tm",
  order = "f",
  enabled = false,
  energy_required = 2,
  main_product = "pm-cupric-waste-water",
  ingredients =
  {
    PM.ingredient("pm-zinc-tailings", 10, "fluid"),
    PM.ingredient("pm-sodium-hydroxide", 2.5, "fluid")
  },
  results =
  {
    PM.product_range("pm-cupric-waste-water", 0, 5, "fluid"),
    PM.product_range("sulfur", 0, 1),
    PM.product_range("pm-ferrum", 0, 3)
  }
},

})

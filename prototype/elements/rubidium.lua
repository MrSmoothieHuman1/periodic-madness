data:extend({

  {
    type = "item",
    name = "pm-caesium-rubidium-alum",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/caesium-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-30-rubidium-alum",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 350
  }, --sounds like a skill issue ngl
  {
    type = "item",
    name = "pm-50-rubidium-alum",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "c",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-70-rubidium-alum",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "d",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-rubidium-alum",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-pollucite-mixing",
    enabled = false,
    category = "pm-moltening",
    subgroup = "pm-rubidium-am",
    order = "a",
    energy_required = 16,
    main_product = "pm-caesium-rubidium-alum",
    ingredients =
    {
      { "pm-pollucite",       5 },
      { type = "fluid",       name = "pm-caesium", amount = 2 },
      { "pm-potassium",       5 },
      { "pm-aluminium-plate", 10 }
    },
    results =
    {
      {
        name = "pm-caesium-rubidium-alum",
        amount_min = 1,
        amount_max = 3
      },
      {
        name = "pm-fine-pollucite-powder",
        amount_min = 2,
        amount_max = 5
      }
    }
  } --[[@as data.RecipePrototype]],
  --fr fr
  --enjoy me bug fixing for hours HAHAH
  --can you hear my music btw tell me if you want to put something on
  --cant use images but thousand yard stare
  -- i think this is the quickest a new recipe chain has been fixed
  --until i check the ratios :sob:
  -- hell geniune hell
  -- i wouldbt be suprrised with the shit i cooked in this file
  -- one item turns into 4, that gotta be turned into a speciffic item that then gies the wanted ore
  -- tbf thats not THAT bad
  {
    type = "recipe",
    name = "pm-caesium-rubidium-alum-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ceasium-rubidium-alum-seperation.png",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-rubidium-am",
    order = "b",
    energy_required = 16,
    ingredients =
    {
      { "pm-caesium-rubidium-alum", 6 }
    },
    results =
    {
      {
        name = "pm-30-rubidium-alum",
        amount_min = 0,
        amount_max = 4,
      },
      {
        name = "pm-50-rubidium-alum",
        amount_min = 0,
        amount_max = 3,
      },
      {
        name = "pm-70-rubidium-alum",
        amount_min = 0,
        amount_max = 2,
      },
      {
        name = "pm-rubidium-alum",
        amount = 1,
        probability = 0.5
      },
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-70-to-100-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "c",
    energy_required = 4,
    ingredients =
    {
      { "pm-70-rubidium-alum", 2 },
      { "pm-rubidium-alum",    1 }
    },
    results =
    {
      { "pm-rubidium-alum", 2 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-50-to-70-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "d",
    energy_required = 4,
    ingredients =
    {
      { "pm-50-rubidium-alum", 2 },
      { "pm-70-rubidium-alum", 1 }
    },
    results =
    {
      { "pm-70-rubidium-alum", 2 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-30-to-50-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "e",
    energy_required = 4,
    ingredients =
    {
      { "pm-30-rubidium-alum", 2 },
      { "pm-50-rubidium-alum", 1 }
    },
    results =
    {
      { "pm-50-rubidium-alum", 2 }
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-rubidium-alum-seperation",
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-rubidium-am",
    order = "f",
    energy_required = 12,
    main_product = "pm-rubidium",
    ingredients =
    {
      { "pm-rubidium-alum", 3 },
      { type = "fluid",     name = "sulfuric-acid", amount = 15 }
    },
    results =
    {
      { "pm-rubidium", 1 },
      {
        type = "fluid",
        name = "pm-sulfur-trioxide",
        amount_min = 2,
        amount_max = 8
      },
      {
        name = "pm-aluminium-plate",
        amount_min = 0,
        amount_max = 5
      },
    }
  } --[[@as data.RecipePrototype]]
})

--oh neat (cueless)
--im also procrasitnating by doing work, idk
--cba to work on my mod, so to pass the time i'll work on my mod
--woooo!! fucking shit uop!!
--i do got a mod idea thats SIMILAR, but its literally just "what if ultrakill in actorio"
-- i got plans, lemme cookkm
-- deciding what to do next out o my million things to do next
--ofc!!! instead of meeting self-imposed deadlines, i'll just do soemthing else

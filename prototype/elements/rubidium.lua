local PM = require("__periodic-madness__/library")
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
      PM.ingredient("pm-pollucite", 5),
      PM.ingredient("pm-caesium", 2, "fluid"),
      PM.ingredient("pm-potassium", 5),
      PM.ingredient("pm-aluminium-plate", 10)
    },
    results =
    {
      PM.product_range("pm-caesium-rubidium-alum", 1, 3),
      PM.product_range("pm-fine-pollucite-powder", 2, 5)
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
      PM.ingredient("pm-caesium-rubidium-alum", 6)
    },
    results =
    {
      PM.product_range("pm-30-rubidium-alum", 0, 4),
      PM.product_range("pm-50-rubidium-alum", 0, 3),
      PM.product_range("pm-70-rubidium-alum", 0, 2),
      PM.product_chance("pm-rubidium-alum", 1, 0.5),
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
      PM.ingredient("pm-70-rubidium-alum", 2),
      PM.ingredient("pm-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-rubidium-alum", 2)
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
      PM.ingredient("pm-50-rubidium-alum", 2),
      PM.ingredient("pm-70-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-70-rubidium-alum", 2)
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
      PM.ingredient("pm-30-rubidium-alum", 2),
      PM.ingredient("pm-50-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-50-rubidium-alum", 2)
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
      PM.ingredient("pm-rubidium-alum", 3),
      PM.ingredient("sulfuric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-rubidium", 1),
      PM.product_range("pm-sulfur-trioxide", 2, 8, "fluid"),
      PM.product_range("pm-aluminium-plate", 0, 5),
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

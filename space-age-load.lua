data:extend({

  {
    type = "item",
    name = "satellite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/iron-fish.png",
    subgroup = "military-equipment",
    order = "x",
    stack_size = 999
  },
  {
    type = "technology",
    name = "mining-productivity-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {
    },
    prerequisites = {"mining-productivity-3"},
    unit =
    {
      count = 850,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
      },
      time = 160
    }
  },
})
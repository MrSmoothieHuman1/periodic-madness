--all science packs

data:extend({

  {
    type = "item",
    name = "pm-plastic-science-bottle",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plastic-science-bottle.png",
    subgroup = "science-pack",
    order = "a",
    stack_size = 200,
  },
  {
    type = "tool",
    name = "pm-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-transition-metal-pack.png",
    subgroup = "science-pack",
    order = "d",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-post-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/post-transition-metal-pack.png",
    subgroup = "science-pack",
    order = "f",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-alkali-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/alkali-metal-pack.png",
    subgroup = "science-pack",
    order = "g",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-metalloid-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/metalloid-pack.png",
    subgroup = "science-pack",
    order = "h",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-alkaline-earth-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/alkaline-earth-metal-pack.png",
    subgroup = "science-pack",
    order = "i",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-advanced-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-advanced-transition-metal-pack.png",
    subgroup = "science-pack",
    order = "j",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "pm-experimental-research-data",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/experimental-research-data.png",
    subgroup = "pm-technectium-science",
    order = "a",
    stack_size = 100,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  }

})

 data.raw["recipe"]["automation-science-pack"].energy_required = 6

data.raw["recipe"]["logistic-science-pack"].energy_required = 6
data.raw["recipe"]["logistic-science-pack"].results =
{
  PM.product("logistic-science-pack", 1)
}

data.raw["recipe"]["chemical-science-pack"].energy_required = 6
data.raw["recipe"]["chemical-science-pack"].results =
{
  PM.product("chemical-science-pack", 1)
}
data.raw["tool"]["chemical-science-pack"].order = "e"
data.raw["tool"]["chemical-science-pack"].icon ="__periodic-madness__/graphics/icons/science/reactive-non-metals-pack.png"

data.raw["tool"]["production-science-pack"].order = "x"
data.raw["tool"]["utility-science-pack"].order = "xa"

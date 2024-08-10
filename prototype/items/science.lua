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
    name = "pm-alternative-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/science/alternative-recipe-pack.png",
    subgroup = "science-pack",
    order = "c",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
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

})

local TMScienceFix = data.raw["recipe"]["automation-science-pack"]

TMScienceFix.energy_required = 6

local ATMScienceFix = data.raw["recipe"]["logistic-science-pack"]

ATMScienceFix.energy_required = 6
ATMScienceFix.results =
{
  { "logistic-science-pack", 1 }
}

local RNMScienceFix = data.raw["recipe"]["chemical-science-pack"]

RNMScienceFix.energy_required = 6
RNMScienceFix.results =
{
  { "chemical-science-pack", 1 }
}

data.raw["tool"]["chemical-science-pack"].order = "e"
data.raw["tool"]["chemical-science-pack"].icon =
"__periodic-madness__/graphics/icons/science/reactive-non-metals-pack.png"

data.raw["tool"]["production-science-pack"].order = "x"
data.raw["tool"]["utility-science-pack"].order = "xa"

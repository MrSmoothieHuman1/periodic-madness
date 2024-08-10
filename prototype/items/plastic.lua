--for all items related to/are plastic

data:extend({

  {
    type = "item",
    name = "pm-plastic-pellets",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plastic-pellets.png",
    subgroup = "pm-plastics",
    order = "a",
    stack_size = 400,
  },
  {
    type = "item",
    name = "pm-polyethylene-plastic",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/polyethylene-plastic.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic.png",   size = 128, scale = 0.126 },
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic-2.png", size = 128, scale = 0.124 },
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic-3.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-plastics",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-polymethyl-methacrylate",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/polymethyl-methacrylate.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/polymethyl-methacrylate.png",   size = 128, scale = 0.126 },
      { filename = "__periodic-madness__/graphics/icons/polymethyl-methacrylate-2.png", size = 128, scale = 0.124 },
    },
    subgroup = "pm-plastics",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-polytetrafluoroethylene",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/polytetrafluoroethylene.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene.png",   size = 128, scale = 0.126 },
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene-2.png", size = 128, scale = 0.124 },
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene-3.png", size = 128, scale = 0.125 },
    },
    subgroup = "pm-plastics",
    order = "c",
    stack_size = 100
  },
})

local PlasticChange = data.raw["recipe"]["plastic-bar"]

PlasticChange.energy_required = 2
PlasticChange.category = "chemistry"
PlasticChange.subgroup = "pm-plastics"
PlasticChange.order = "d"
PlasticChange.ingredients =
{
  { "pm-plastic-pellets", 5 },
  { type = "fluid",       name = "pm-naptha", amount = 20 }
}
PlasticChange.results =
{
  { "pm-polyethylene-plastic", 1 }
}

local PlasticItemChange = data.raw["item"]["plastic-bar"]

PlasticItemChange.icon_size = 64
PlasticItemChange.icon = "__periodic-madness__/graphics/icons/polyethylene-plastic.png"

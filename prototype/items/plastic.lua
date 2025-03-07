local PM = require("library")
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
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic-2.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/polyethylene-plastic-3.png", size = 128, scale = 0.25 },
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
      { filename = "__periodic-madness__/graphics/icons/polymethyl-methacrylate.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/polymethyl-methacrylate-2.png", size = 128, scale = 0.25 },
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
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene.png",   size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene-2.png", size = 128, scale = 0.25 },
      { filename = "__periodic-madness__/graphics/icons/polytetrafluoroethylene-3.png", size = 128, scale = 0.25 },
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
  PM.ingredient("pm-plastic-pellets", 5),
  PM.ingredient("pm-naptha", 20, "fluid")
}
PlasticChange.results =
{
  PM.product("pm-polyethylene-plastic", 1)
}

data.raw["item"]["plastic-bar"] = nil

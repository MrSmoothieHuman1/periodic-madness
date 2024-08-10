if not mods["bzfoundry"] then return end
local PM = require("__periodic-madness__/library.lua")

data.raw["recipe"]["woodcoke"] = nil

data.raw["recipe"]["coke"].ingredients =
{
  PM.ingredient("coal", 3),
  PM.ingredient("wood", 2)
}
data.raw["recipe"]["coke"].main_product = ""
data.raw["recipe"]["coke"].icon_size = 64
data.raw["recipe"]["coke"].icon = "__periodic-madness__/graphics/icons/coke.png"
data.raw["recipe"]["coke"].subgroup = "pm-alloys"
data.raw["recipe"]["coke"].results =
{
  PM.product("pm-coke", 1)
}
data.raw["recipe"]["foundry"].ingredients =
{
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("stone-brick", 10),
  PM.ingredient("pm-basic-framing", 8),
  PM.ingredient("copper-plate", 4)
}
data.raw["recipe"]["electric-foundry"].ingredients =
{
  PM.ingredient("pm-stainless-steel-alloy", 10),
  PM.ingredient("concrete", 6),
  PM.ingredient("foundry", 1),
  PM.ingredient("pm-heating-plating", 20),
  PM.ingredient("pm-heavyweight-panelling", 8),
  PM.ingredient("processing-unit", 3)
}
data.raw["recipe"]["steel-plate"].ingredients =
{
  PM.ingredient("iron-plate", 3),
  PM.ingredient("pm-manganese-plate", 3),
  PM.ingredient("pm-coke", 1)
}

if mods["bzfoundry"] then
  data.raw["recipe"]["electric-foundry"].ingredients =
  {
    PM.ingredient("zirconia", 10),
    PM.ingredient("pm-stainless-steel-alloy", 10),
    PM.ingredient("processing-unit", 4),
    PM.ingredient("concrete", 10),
    PM.ingredient("foundry", 1)
  }
end

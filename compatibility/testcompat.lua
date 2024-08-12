if not mods["filter-long-inserter"] then return end
local PM = require("__periodic-madness__/library")

data.raw["recipe"]["fi-filter-long-handed-inserter"].hidden = true
data.raw["technology"]["fi-filter-long-handed-inserter"].hidden = true
data.raw["recipe"]["fi-stack-filter-long-handed-inserter"].ingredients =
{
  PM.ingredient("pm-filter-long-handed-inserter", 1),
  PM.ingredient("pm-solid-lubricant", 2),
  PM.ingredient("advanced-circuit", 2)
}

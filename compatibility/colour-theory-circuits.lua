if not mods["ColourTheoryCircuits"] then return end
local PM = require("__periodic-madness__/library")

data.raw["item"]["pm-fluid-circuit"].icon_size = 128
data.raw["item"]["pm-fluid-circuit"].icon = "__periodic-madness__/graphics/compat/ctc/orange-circuits.png"
data.raw["item"]["pm-fluid-circuit"].localised_name = { "OR-Aspected chip" }

data.raw["technology"]["electronics"].effects =
{
  PM.unlock_recipe("pm-mini-motor"),
  PM.unlock_recipe("electronic-circuit"),
  PM.unlock_recipe("electronic-parts-1")
}
data.raw["technology"]["advanced-electronics"].effects =
{
  PM.unlock_recipe("pm-advanced-circuit-breadboard"),
  PM.unlock_recipe("pm-advanced-integrated-circuits"),
  PM.unlock_recipe("electronic-parts-2"),
  PM.unlock_recipe("advanced-circuit"),
}
data.raw["technology"]["advanced-electronics-2"].effects =
{
  PM.unlock_recipe("pm-ferrum-ferric-chloride"),
  PM.unlock_recipe("pm-metal-ferric-chloride"),
  PM.unlock_recipe("pm-processing-breadboard"),
  PM.unlock_recipe("pm-processing-integrated-circuits"),
  PM.unlock_recipe("pm-semiconductor"),
  PM.unlock_recipe("pm-better-transistors"),
  PM.unlock_recipe("electronic-parts-3"),
  PM.unlock_recipe("processing-unit"),
}
